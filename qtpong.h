#ifndef QTPONG_H
#define QTPONG_H

#include <QObject>
#include <QTime>
#include <QKeyEvent>
#include <QEvent>
#include <QGraphicsScene>
#include <QTimer>
#include <iostream>

#include "ball.h"
#include "paddle.h"
#include "scoreboard.h"
#include "engine.h"

class QtPong : public QGraphicsScene
{
    Q_OBJECT
public:
    QtPong(QObject *parent = 0);

public slots:
    // Call when a player wins
    void win(bool player);

signals:
    void paddleMoved(Paddle *paddle, bool up);

protected:
    void keyPressEvent(QKeyEvent *event);

private:
    // Start a new game
    void startNew();
    
    // Reset the ball, paddles, and timer
    void setGame();

    Paddle *p1Paddle, *p2Paddle;
    Ball *ball;

    QGraphicsRectItem *gameArea;

    Scoreboard *p1Score, *p2Score;

    QTimer *timer;
    QTimer *startTimer;

    static const int widthGame = 560;
    static const int heightGame = 400;

};

#endif // QTPONG_H
