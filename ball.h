#ifndef BALL_H
#define BALL_H

#include <QGraphicsEllipseItem>

class Ball : public QGraphicsEllipseItem
{
public:
    Ball(QGraphicsItem *parent = 0);
    Ball(qreal x, qreal y, qreal width, qreal height QGraphicsItem *parent = 0);

    void drawBall(QPainter *painter, const QStyleOptionGraphicsItem *, QWidget *);
    void setDirection(int newX, int newY);
    void setSpeed(int newV);
    int getX();
    int getY();
    int getSpeed();
    int getMaxSpeed();

private:
	int x;
	int y;
	int v;

    static const MAXBALLSPEED = 4;

protected:
	void advance(int phase);
};

#endif // BALL_H
