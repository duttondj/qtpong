#ifndef ENGINE_H
#define ENGINE_H


#include <QObject>
#include <QTime>
#include <QKeyEvent>
#include <QGraphicsScene>
#include <QTimer>
#include <iostream>
#include <QThread>

#include "ball.h"
#include "paddle.h"
#include "scoreboard.h"


class Engine : public QThread {
	Q_OBJECT

public slots:
	void moveBall(Ball* ball, Paddle* p1, Paddle* p2);
	void movePaddle(Paddle* paddle, bool up);

signals:
	void sendWin(bool player);
};

#endif //ENGINE_H