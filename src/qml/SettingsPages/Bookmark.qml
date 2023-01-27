import QtQuick 2.12
import QtQuick.Layouts 1.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.12
import FishUI 1.0 as FishUI
ItemPage {
    headerTitle: qsTr("Bookmark")
    ScrollView {
        anchors.fill: parent
        anchors.margins: FishUI.Units.largeSpacing
    ColumnLayout {
        id: _mainLayout
        anchors.fill: parent
        anchors.bottomMargin: FishUI.Units.largeSpacing
        RoundedItem {
            Label {
                text: qsTr("Bookmark")
                color: FishUI.Theme.disabledTextColor
            }
            ColumnLayout{
                spacing: FishUI.Units.smallSpacing
                Repeater {
                    model: settings.bookmark
                    delegate: RowLayout{
                        Label {
                            text: settings.bookmark[index]
                        }

                        Item{
                            Layout.fillWidth: true
                        }

                        Button{
                            flat: true
                            width: height
                            implicitWidth: height
                            icon.source: FishUI.Theme.darkMode ? "qrc:/images/light/close.svg" : "qrc:/images/dark/close.svg"
                            onClicked: {
                                var mbm = settings.bookmark;
                                mbm.splice(index, 1)
                                settings.bookmark = mbm
                            }
                        }
                    }
                }
                RowLayout{
                    TextField{
                        id:_dirurl
                        Layout.fillWidth: true
                        placeholderText: qsTr("Directory address")
                    }
                    Item{
                        Layout.fillWidth: true
                    }
                    Button{
                        flat: true
                        width: height
                        implicitWidth: height
                        icon.source: FishUI.Theme.darkMode ? "qrc:/images/light/add.svg" : "qrc:/images/dark/add.svg"
                        onClicked: {
                            var mbm = settings.bookmark;
                            mbm.push(_dirurl.text)
                            settings.bookmark = mbm
                        }
                    }

                }
            }
        }
    }
    }
}
