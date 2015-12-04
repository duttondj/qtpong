#ifndef QTPONG_H
#define QTPONG_H

#include <QObject>
#include <QTime>
#include <QKeyEvent>
#include <QGraphicsScene>
#include <QTimer>

#include "ball.h"
#include "paddle.h"
#include "scoreboard.h"

class QtPong : public QGraphicsScene
{
    Q_OBJECT
public:
    QtPong(QObject *parent = 0);
    QtPong(qreal x, qreal y, qreal width, qreal height, QObject *parent = 0);

private slots:
    void moveBall();

//public slots:
//     void resetBall();

protected:
    void keyPressEvent(QKeyEvent *event);

private:
    // Start a new game
    void startNew();
    
    // Reset the ball, paddles, and timer
    void setGame();
    
    // Call when a player wins
    void win(bool player);

    Paddle *p1Paddle, *p2Paddle;
    Ball *ball;

    QGraphicsRectItem *gameArea;
    QGraphics *divider;

    Scoreboard *p1Score, *p2Score;

    QTimer *timer;

    void movePaddle(Paddle *paddle, bool up);

    // void incScore(bool player);

    static const int widthGame = 560;
    static const int heightGame = 400;

};

#endif // QTPONG_H
