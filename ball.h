#ifndef BALL_H
#define BALL_H

#include <QGraphicsEllipseItem>

class Ball : public QGraphicsEllipseItem
{
public:
    Ball(QGraphicsItem *parent = 0);
    Ball(qreal x, qreal y, qreal width, qreal height QGraphicsItem *parent = 0);

    void drawBall(QPainter *painter, const QStyleOptionGraphicsItem *, QWidget *);

protected:
	
};

#endif // BALL_H
