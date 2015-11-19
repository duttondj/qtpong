#ifndef PADDLE_H
#define PADDLE_H

#include <QGraphicsRectItem>

class Paddle : public QGraphicsRectItem
{
public:
	// Constructors for 
	Paddle(QGraphicsRectItem *parent = 0);
	Paddle(qreal x, qreal y, qreal w, qreal h, QGraphicsItem *parent = 0);

	void paint(QPainter *painter, const QStyleOptionGraphicsItem *option, QWidget *widget);
	int getMaxPaddleSpeed();

private:
	static const MAXPADDLESPEED = 4;
};

#endif // PADDLE_H