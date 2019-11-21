import React from 'react';
import { View, Text, StyleSheet } from 'react-native';
import ImageCell from '../components/ImageCell'

const ImageScreen = () => {
    return <View>
        <ImageCell title="Forest" imageSource={require('../../assets/forest.jpg')} imageScore ="5"/>
        <ImageCell title="Beach" imageSource={require('../../assets/beach.jpg')} imageScore ="7" />
        <ImageCell title="Mountain" imageSource={require('../../assets/mountain.jpg')} imageScore ="9" />
    </View>
};

const styles = StyleSheet.create({});

export default ImageScreen;