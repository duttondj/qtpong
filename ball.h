#ifndef BALL_H
#define BALL_H

#include <QGraphicsEllipseItem>
#include <QPainter>

class Ball : public QGraphicsEllipseItem
{
public:
    // Constructors for ball
    Ball(QGraphicsItem *parent = 0);
    Ball(qreal x, qreal y, qreal width, qreal height, QGraphicsItem *parent = 0);

    // Overloaded paint method, Color and shape settings for ball
    void paint(QPainter *painter, const QStyleOptionGraphicsItem *option, QWidget *widget);
    
    // Setters for direction and speed
    void setDirection(int newX, int newY);
    void setSpeed(int newV);
    
    // Getters for direction, speed, and max speed for game engine
    int getX();
    int getY();
    int getSpeed();
    int getMaxBallSpeed();

private:
	// Vector components, x, y, and speed
    int xDir;
	int yDir;
	int v;

    // Max speed for ball, 4 pixels in x and y component per movement
    static const int MAXBALLSPEED = 1;

protected:
	// Overloaded advance movement for ball, sets next position when called
    // This does not keep track of out of bounds or collisions
    void advance(int phase);
};

#endif // BALL_H
