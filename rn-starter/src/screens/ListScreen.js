import React from 'react';
import { View, Text, StyleSheet, FlatList } from 'react-native';

const ListScreen = () => {
    const friends = [
        { name: 'Blah'},
        { name: 'Blah'},
        { name: 'Blah'},
        { name: 'Blah'},
        { name: 'Blah'},
        { name: 'Blah'},
        { name: 'Blah'},
        { name: 'Blah'},
        { name: 'Blah'},
    ];

    for(let i = 0; i < friends.length; i++) {
        friends[i].name = `Friend #${i + 1}`
        friends[i].age = `Age ${20 + i}`
        // friends[i].key =  `${i}`
    }

    console.log(friends)
    
    return (<FlatList 
        // horizontal
        // showsHorizontalScrollIndicator = {false}
           // renderItem={(element) => {
        //     //element === {item: {name: 'friend #1'}, index: 0}
        // }} 
        keyExtractor={friend => friend.name}
        data ={friends}
        renderItem={({item}) => {
        return <Text style={styles.textStyle}>{item.name} - {item.age}</Text>;
        }}
     />) 
};

const styles = StyleSheet.create({
    textStyle: {
        marginVertical:50
    }


});

export default ListScreen;