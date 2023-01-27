import QtQuick 2.4
import QtQuick.Controls 2.4
import QtQuick.Layouts 1.3
import FishUI 1.0 as FishUI

Page {
    id: page

    property string headerTitle

    background: Rectangle {
        color: control.background.color
    }

    header: Item {
        height: control.header.height
        Rectangle {
            anchors.fill: parent
            color: control.background.color
            Label {
                anchors.left: parent.left
                leftPadding: FishUI.Units.largeSpacing
                rightPadding: Qt.application.layoutDirection === Qt.RightToLeft ? FishUI.Units.largeSpacing * 3 : 0
                topPadding: FishUI.Units.smallSpacing
                bottomPadding: 0
                font.pointSize: 12
                text: page.headerTitle
                color: control.active ? FishUI.Theme.textColor : FishUI.Theme.disabledTextColor
            }
        }
    }
}
