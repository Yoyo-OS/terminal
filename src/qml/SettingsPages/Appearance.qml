import QtQuick 2.12
import QtQuick.Layouts 1.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.12
import FishUI 1.0 as FishUI
ItemPage {
    headerTitle: qsTr("Appearance")
    ScrollView {
        anchors.fill: parent
        anchors.margins: FishUI.Units.largeSpacing
    ColumnLayout {
        id: _mainLayout
        anchors.fill: parent
        anchors.bottomMargin: FishUI.Units.largeSpacing
        RoundedItem {
            Label {
                text: qsTr("Font")
                color: FishUI.Theme.disabledTextColor
            }
            GridLayout{
                columns: 2
                columnSpacing: FishUI.Units.smallSpacing
                rowSpacing: FishUI.Units.smallSpacing
        Label {
            text: qsTr("Font")
        }

        ComboBox {
            id: fontsCombobox
            model: Fonts.families
            // Layout.fillHeight: true
            Layout.fillWidth: true

            onCurrentTextChanged: {
                settings.fontName = currentText
            }

            Component.onCompleted: {
                for (var i = 0; i <= fontsCombobox.model.length; ++i) {
                    if (fontsCombobox.model[i] === settings.fontName) {
                        fontsCombobox.currentIndex = i
                        break
                    }
                }
            }
        }

        Label {
            text: qsTr("Font Size")
        }

        Slider {
            id: fontSizeSlider
            Layout.fillHeight: true
            Layout.fillWidth: true
            from: 5
            to: 30
            stepSize: 1

            Component.onCompleted: {
                fontSizeSlider.value = settings.fontPointSize
            }

            onMoved: settings.fontPointSize = fontSizeSlider.value
        }
            }
        }

        RoundedItem {
            Label {
                text: qsTr("Color Scheme")
                color: FishUI.Theme.disabledTextColor
            }
            GridLayout{
                columns: 2
                columnSpacing: FishUI.Units.smallSpacing
                rowSpacing: FishUI.Units.smallSpacing
        Label {
            text: qsTr("Light Color Scheme")
        }

        ComboBox {
            id: lightthemeCombobox
            //model: Fonts.families
            model: settings.colorschemes
            // Layout.fillHeight: true
            Layout.fillWidth: true
            displayText: settings.lightcolorScheme
            onCurrentTextChanged: {
                settings.lightcolorScheme = currentText
            }
        }

        Label {
            text: qsTr("Dark Color Scheme")
        }

        ComboBox {
            id: darkthemeCombobox
            //model: Fonts.families
            model: settings.colorschemes
            // Layout.fillHeight: true
            Layout.fillWidth: true
            displayText: settings.darkcolorScheme
            onCurrentTextChanged: {
                settings.darkcolorScheme = currentText
            }
        }
            }
        }

        RoundedItem {
            Label {
                text: qsTr("Keyboard Cursor")
                color: FishUI.Theme.disabledTextColor
            }
            ColumnLayout{

            }
            RowLayout{
            Label {
                text: qsTr("Shape")
            }
            TabBar {
                Layout.fillWidth: true
                currentIndex: settings.keyboardCursorShape
                onCurrentIndexChanged: settings.keyboardCursorShape = currentIndex

                TabButton {
                    text: "▐"
                }

                TabButton {
                    text: "▂"
                }

                TabButton {
                    text: "|"
                }
            }
            }
            RowLayout{
            Label {
                text: qsTr("Blinking")
            }
            Item {
                Layout.fillWidth: true
            }
            Switch {
                Layout.fillHeight: true
                Layout.alignment: Qt.AlignRight
                checked: settings.blinkingCursor
                onCheckedChanged: settings.blinkingCursor = checked
            }
            }
        }

        RoundedItem {
            Label {
                text: qsTr("Window effects")
                color: FishUI.Theme.disabledTextColor
            }
            GridLayout{
                columns: 2
                columnSpacing: FishUI.Units.smallSpacing *2
                rowSpacing: FishUI.Units.smallSpacing *2
        Label {
            text: qsTr("Transparency")
        }

        Slider {
            id: transparencySlider
            Layout.fillHeight: true
            Layout.fillWidth: true
            from: 0.1
            to: 1.0
            stepSize: 0.05

            Component.onCompleted: {
                transparencySlider.value = settings.opacity
            }

            onMoved: settings.opacity = transparencySlider.value
        }

        Label {
            text: qsTr("Window Blur")
        }

        Switch {
            Layout.alignment: Qt.AlignRight
            Layout.fillHeight: true
            checked: settings.blur
            onCheckedChanged: settings.blur = checked
        }
    }
        }
    }
    }
}
