#ifndef PADDLE_H
#define PADDLE_H

#include <QGraphicsRectItem>
#include <QPainter>

class Paddle : public QGraphicsRectItem
{
public:
	// Constructors for Paddles
	Paddle(QGraphicsItem *parent = 0);
	Paddle(qreal x, qreal y, qreal width, qreal height, QGraphicsItem *parent = 0);

	// Color and shape settings for paddles
	void paint(QPainter *painter, const QStyleOptionGraphicsItem *option, QWidget *widget);
	
	// Return max paddle speed for engine
	int getMaxPaddleSpeed();

private:
	// Max speed of paddle, pixels per movement
	static const int MAXPADDLESPEED = 4;
};

#endif // PADDLE_H