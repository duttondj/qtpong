#include "mainwindow.h"
#include "ui_mainwindow.h"

MainWindow::MainWindow(QWidget *parent) :
    QMainWindow(parent),
    ui(new Ui::MainWindow)
{
    ui->setupUi(this);

    qtpong = new QtPong(this);

    ui->canvas->setScene(qtpong);
    qtpong->setFocus();
    ui->canvas->adjustSize();
}

MainWindow::~MainWindow()
{
    delete ui;
}
