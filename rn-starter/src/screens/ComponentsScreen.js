import React from 'react';
import { Text, StyleSheet, View } from 'react-native';

const ComponentsScreen = () => {
    let yourName = 'Giannini Charles'
    const greeting = <Text style={styles.subTextStyle}>My name is {yourName}</Text>

    return (
        <View>
            <Text style={styles.textStyle}>Getting Started With React Native!</Text>
             {greeting}
        </View>
    ); 
};

const styles = StyleSheet.create({
    textStyle: {
        fontSize: 45
    },
    subTextStyle: {
        fontSize: 20
    },




});

export default ComponentsScreen