import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.0

ApplicationWindow {
    visible: true
    width: 480
    height: 120
    title: qsTr("QML Text Field IP Address")

    RowLayout {
        anchors.fill: parent
        anchors.margins: 10

        Label {
            text: "Введите IP-адрес"
        }

        TextField {
            validator: RegExpValidator {
                regExp:  /^((?:[0-1]?[0-9]?[0-9]|2[0-4][0-9]|25[0-5])\.){0,3}(?:[0-1]?[0-9]?[0-9]|2[0-4][0-9]|25[0-5])$/
           }
        }
    }
}
