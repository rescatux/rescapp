# -*- coding: utf-8 -*-
# April Fools Day Script
# Copyright (C) 2012,2013,2014,2015,2016,2017,2018,2019,2020 Adrian Gibanel Lopez

class CloseOnClickQWidget(QtWidgets.QWidget):
	def mousePressEvent(self,event):
		self.close()


afd_gobierno_espana_image_path = rescapp_images_path + "/" + "policia-iberoamericana-logo.png"
afd_app = QtWidgets.QApplication(sys.argv)


afd_grid = QtWidgets.QGridLayout()
afd_grid.setSpacing(10)

afd_top_grid = QtWidgets.QGridLayout()
afd_top_grid.setSpacing(10)

# afd_title
afd_title = QtWidgets.QLabel(u"¡Atención!")
afd_title_font = QtGui.QFont()
afd_title_font.setPointSize(20)
afd_title.setFont(afd_title_font)

afd_subtitle = QtWidgets.QLabel(u"Fue detectado un caso de actividad ilegal.\nEl sistema operativo fue bloqueado por violación de las leyes de España.\nFue detectada la siguiente infracción:")
afd_subtitle_font = QtGui.QFont()
afd_subtitle_font.setPointSize(14)
afd_subtitle.setFont(afd_subtitle_font)

afd_brigada = QtWidgets.QLabel(u"BRIGADA DE INVESTIGACIÓN\nTECNOLÓGICA IBEROAMERICANA")
afd_brigada_font = QtGui.QFont()
afd_brigada_font.setPointSize(20)
afd_brigada.setFont(afd_brigada_font)

afd_title_palette = afd_title.palette()
afd_title_palette.setColor(afd_title.backgroundRole(),QtCore.Qt.red)
afd_title_palette.setColor(afd_title.foregroundRole(),QtCore.Qt.red)
afd_title.setPalette(afd_title_palette)

afd_subtitle_palette = afd_subtitle.palette()
afd_subtitle_palette.setColor(afd_subtitle.backgroundRole(),QtCore.Qt.red)
afd_subtitle_palette.setColor(afd_subtitle.foregroundRole(),QtCore.Qt.red)
afd_subtitle.setPalette(afd_subtitle_palette)

afd_brigada_palette = afd_brigada.palette()
afd_brigada_palette.setColor(afd_brigada.backgroundRole(),QtCore.Qt.blue)
afd_brigada_palette.setColor(afd_brigada.foregroundRole(),QtCore.Qt.blue)
afd_brigada.setPalette(afd_brigada_palette)


# afd_message

next_year = str(datetime.datetime.now().year + 1)

afd_message = QtWidgets.QLabel(u"Desde su dirección IP bajo el número \"127.0.0.1\" fue efectuado un acceso a páginas de internet<br>que contienen <b>software libre</b>, open source y materiales para cambiar la contraseña de su equipo.<br>En su ordenador, así mismo, fue encontrado un artefacto binario de rescate denominado<br><b>Rescatux bajo la licencia GNU GPL 3.</b><br>El uso de esta licencia en territorio español así como en los países que han subscrito<br>el acuerdo de colaboración internacional<br>(Méjico, Argentina, Bolivia, Brasil, Chile, Colombia, Ecuador, Guyana, Paraguay,<br>Perú, Surinam, Uruguay y Venezuela) de acuerdo con la Ley 21/"+next_year+u", de 4 de noviembre<br>está penado con <b>cuatro meses de carcel.</b>")


afd_message_font = QtGui.QFont()
afd_message_font.setPointSize(14)
afd_message.setFont(afd_message_font)
afd_message.setTextFormat(1); # Qt.RichText did not want to work here

afd_message_palette = afd_message.palette()
afd_message_palette.setColor(afd_message.backgroundRole(),QtCore.Qt.black)
afd_message_palette.setColor(afd_message.foregroundRole(),QtCore.Qt.black)
afd_message.setPalette(afd_message_palette)

# afd_fine

next_year = str(datetime.datetime.now().year + 1)

afd_fine = QtWidgets.QLabel(u"Según la disposición adicional de la Ley 21 del año "+next_year+u" <br>usted puede conmutar la pena de carcel por <b>100 euros (150 sucres)</b>.")
afd_fine_font = QtGui.QFont()
afd_fine_font.setPointSize(14)
afd_fine.setFont(afd_fine_font)

afd_fine_palette = afd_fine.palette()
afd_fine_palette.setColor(afd_fine.backgroundRole(),QtCore.Qt.darkGreen)
afd_fine_palette.setColor(afd_fine.foregroundRole(),QtCore.Qt.darkGreen)
afd_fine.setPalette(afd_fine_palette)

# afd_pay

next_year = str(datetime.datetime.now().year + 1)

afd_pay = QtWidgets.QLabel(u"Se abre un periodo de dos días hábiles a contar desde hoy para que usted<br>pueda realizar el pago de la multa. Si no se procediese al abono de la misma se le arrestará.<br>Por favor haga clic en cualquier parte del texto<br> para tener acceso a los diferentes métodos de pago disponibles.")
afd_pay_font = QtGui.QFont()
afd_pay_font.setPointSize(14)
afd_pay.setFont(afd_pay_font)

afd_pay_palette = afd_pay.palette()
afd_pay_palette.setColor(afd_pay.backgroundRole(),QtCore.Qt.black)
afd_pay_palette.setColor(afd_pay.foregroundRole(),QtCore.Qt.black)
afd_pay.setPalette(afd_pay_palette)

# gobierno_espana_image

afd_gobierno_espana = QtWidgets.QLabel()
afd_gobierno_espana_pixmap = QtGui.QPixmap(afd_gobierno_espana_image_path)
afd_gobierno_espana.resize(384,288)
afd_gobierno_espana_scaled_pixmap = afd_gobierno_espana_pixmap.scaled(afd_gobierno_espana.size(),QtCore.Qt.KeepAspectRatio)
afd_gobierno_espana.setPixmap(afd_gobierno_espana_scaled_pixmap)

#afd_fbi.setPixmap(afd_pixmap)


afd_top_grid.addWidget(afd_gobierno_espana,0,0,3,3)
afd_top_grid.addWidget(afd_brigada,0,3,2,2)

afd_grid.addWidget(afd_title,0,2,1,0)
afd_grid.addWidget(afd_subtitle,1,0,1,0)
afd_grid.addWidget(afd_message,2,0,5,2)
afd_grid.addWidget(afd_fine,7,0,1,1)
afd_grid.addWidget(afd_pay,8,0,1,1)



afd_scrollArea = VerticalScrollArea()

afd_top_scrollArea = VerticalScrollArea()

afd_gridQWidget =  QtWidgets.QWidget()
afd_gridQWidget.setLayout(afd_grid)

afd_top_gridQWidget =  QtWidgets.QWidget()
afd_top_gridQWidget.setLayout(afd_top_grid)

afd_scrollArea.setWidgetResizable(False)
afd_scrollArea.setWidget(afd_gridQWidget)
afd_scrollArea.setMinimumWidth(afd_gridQWidget.minimumSizeHint().width())

afd_top_scrollArea.setWidgetResizable(False)
afd_top_scrollArea.setWidget(afd_top_gridQWidget)
afd_top_scrollArea.setMinimumWidth(afd_top_gridQWidget.minimumSizeHint().width())
afd_top_scrollArea.setMaximumHeight(200)

afd_qVboxLayout = QtWidgets.QVBoxLayout()
afd_qVboxLayout.addWidget(afd_top_scrollArea)
afd_qVboxLayout.addWidget(afd_scrollArea)

afd_window = CloseOnClickQWidget()

# Clear Layout - Begin
if afd_window.layout() is not None:
	old_layout = afd_window.layout()
	for i in reversed(range(old_layout.count())):
		old_layout.itemAt(i).widget().setParent(None)
	sip.delete(old_layout)
# Clear Layout - End

QtWidgets.QWidget.setLayout(afd_window,afd_qVboxLayout)
afd_window.showFullScreen()
afd_app.exec_()
