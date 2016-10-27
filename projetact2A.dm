ude "bienvenue.h"
#include "ui_bienvenue.h"

Bienvenue::Bienvenue(QWidget *parent) :
    QMainWindow(parent),
        ui(new Ui::Bienvenue)
	{
	    ui->setupUi(this);
	    }

	    Bienvenue::~Bienvenue()
	    {
	        delete ui;
		}
