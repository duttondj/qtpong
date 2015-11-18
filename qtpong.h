#ifndef QTPONG_H
#define QTPONG_H

#include <QObject>

class QtPong : public QGraphicsScene
{
    Q_OBJECT
public:
    explicit QtPong(QObject *parent = 0);

signals:
    void win(QtPong::Player w);

private slots:
    void moveBall();

protected:
    void keyPressEvent(QKeyEvent *event);

private:
    Paddle *p1Paddle, *p2Paddle;
    Ball *b;

    QGraphicsRectItem *playArea;


    QGraphicsSimpleTextItem *p1Score, *p2Score;

    Scoreboard *p1Scoreboard, *p2Scoreboard;

    qreal oob;

    void resetBall();

    void movePaddleUp(Paddle paddle, bool up);

    void incScore();




};

#endif // QTPONG_H
