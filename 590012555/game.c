#include <ncurses.h>
#include <unistd.h>
#include <stdlib.h>
#include <time.h>

#define DELAY 30000
#define WIDTH 30
#define HEIGHT 20

typedef struct {
    int x, y;
} Position;

void draw_spaceship(Position pos) {
    mvprintw(pos.y, pos.x, ">");
}

void draw_obstacle(Position pos) {
    mvprintw(pos.y, pos.x, "#");
}

void update_position(Position *pos, int dx, int dy) {
    pos->x += dx;
    pos->y += dy;
}

int main() {
    Position spaceship = {WIDTH / 2, HEIGHT - 1};
    Position obstacle = {rand() % WIDTH, 0};

    initscr();
    noecho();
    curs_set(FALSE);
    timeout(0);
    srand(time(NULL));

    int ch;
    while (1) {
        clear();

        // Draw the spaceship
        draw_spaceship(spaceship);

        // Draw the obstacle
        draw_obstacle(obstacle);

        // Move the obstacle down
        update_position(&obstacle, 0, 1);
        if (obstacle.y >= HEIGHT) {
            obstacle.y = 0;
            obstacle.x = rand() % WIDTH;
        }

        // Handle user input
        ch = getch();
        switch (ch) {
            case 'a':
                if (spaceship.x > 0) {
                    update_position(&spaceship, -1, 0);
                }
                break;
            case 'd':
                if (spaceship.x < WIDTH - 1) {
                    update_position(&spaceship, 1, 0);
                }
                break;
            case 'q':
                endwin();
                return 0;
        }

        // Check for collision
        if (spaceship.x == obstacle.x && spaceship.y == obstacle.y) {
            mvprintw(HEIGHT / 2, WIDTH / 2 - 5, "GAME OVER");
            refresh();
            usleep(2000000);
            break;
        }

        refresh();
        usleep(DELAY);
    }

    endwin();
    return 0;
}
