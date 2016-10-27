#include "login.h"
#include "ui_login.h"
#include <QMessageBox>
#include <windows.h>
Login::Login(QWidget *parent) :
    QMainWindow(parent),
        ui(new Ui::Login)
	{
	    ui->setupUi(this);
	         mydatabase= QSqlDatabase::addDatabase("QSQLITE");
		        mydatabase.setDatabaseName("C:/Users/mahdi/Desktop/MyApplication/My_Application/LOGIN.sqlite");
			       if(!mydatabase.open())
			                  mydatabase.open();

					  }

					  Login::~Login()
					  {
					      delete ui;
					      }

					      void Login::on_Annuler_clicked()
					      {
					          this->hide();
						  }

						  void Login::on_Connexion_clicked()
						  {
						      QString username,password;
						          username=ui->lineEdit_username->text();
							      password=ui->lineEdit_password->text();

							          QSqlQuery quer;


								      if(quer.exec(" select * from login where Username='"+username+"' and Password='"+password+"'"))
								          {
									          int count=0;
										          while(quer.next())
											          {count++;}
												           if(count==1)
													            {
														               this->hide();
															                  F=new FirstPage;
																	             F->show();
																		              }


																			               else
																				                    QMessageBox::warning(this,tr("Warning"),tr("Nom d'utilisateur ou Mot de pass est incorrect!!"));

																						        }
																						}
