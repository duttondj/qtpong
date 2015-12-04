#include <engine.h>

void Engine::movePaddle(Paddle *paddle, bool up)
{
	int max = paddle->getMaxPaddleSpeed();
	int y = paddle->y();

	// Move up
	if(((y - max) > 1) && up) 
	{
		paddle->setY(y-max);
	}
	else if(up)
	{
		paddle->setY(1);
	}
	
	// Move down
	else if(((y + 50 + max) < 399) && !up) 
	{
		paddle->setY(y+max);
	}
	else
	{
		paddle->setY(349);
	}
}

void Engine::moveBall(Ball *ball, Paddle *p1Paddle, Paddle *p2Paddle)
{
	int xDir = ball->getX();
	int yDir = ball->getY();
	int x = ball->x();
	int y = ball->y();

	// Check if ball got past a paddle
	if(x < 2 || x > 547)
	{
		if(x <= 20)
			emit sendWin(1);
		else if(x >= 540)
			emit sendWin(0);
	}
	// Check if ball hit top or bottom walls
	if(y < 2 || y > 387)
	{
		ball->setDirection(xDir, (-1)*yDir);
	}
	// Check if ball hit paddles
	if(ball->collidesWithItem(p1Paddle) || ball->collidesWithItem(p2Paddle))
	{
		ball->setDirection(-1*xDir, yDir);
	}
}