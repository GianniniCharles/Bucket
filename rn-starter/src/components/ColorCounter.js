import React from 'react';
import {View, Text, StyleSheet, Button} from 'react-native';

const ColorCounter = ({ color }) => {
    return <View>
        <Text>{color}</Text>
        <Button title={`Increase ${color}`} />
        <Button title={`Descrease ${color}`} />
    </View>
};

const styles = StyleSheet.create({});

export default ColorCounter;