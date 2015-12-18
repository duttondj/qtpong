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


class Engine : public QObject
{
	Q_OBJECT
public:
	Engine(Ball * ball, Paddle * p1Paddle, Paddle * p2Paddle, QObject* parent = 0);

public slots:
	void moveBall();
	void movePaddle(Paddle * paddle, bool up);

signals:
	void sendWin(bool player);
	void finished();

private:
	Ball * b;
	Paddle * p1;
	Paddle * p2;
};

#endif //ENGINE_H