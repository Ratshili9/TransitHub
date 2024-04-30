import { StatusBar } from 'expo-status-bar';
import { StyleSheet, Text, View } from 'react-native';

import React from 'react';
import { NavigationContainer } from '@react-navigation/native';
import { createStackNavigator } from '@react-navigation/stack';


import OnboardingScreen from './screens/authentication/OnboardingScreen';
import LoginScreen from './screens/authentication/LoginScreen';
import RegisterScreen from './screens/authentication/RegisterScreen';
import ForgotPasswordScreen from './screens/authentication/ForgotPasswordScreen';
import ResetPasswordScreen from './screens/authentication/ResetPasswordScreen';

const Stack = createStackNavigator();

function App() {
  return (
    <NavigationContainer>
      <Stack.Navigator>
        <Stack.Screen name="Onboarding" component={OnboardingScreen} />
        <Stack.Screen name="Login" component={LoginScreen} />
        <Stack.Screen name="Register" component={RegisterScreen} />
        <Stack.Screen name="ForgotPassword" component={ForgotPasswordScreen} />
        <Stack.Screen name="ResetPassword" component={ResetPasswordScreen} />
      </Stack.Navigator>
    </NavigationContainer>
  );
}

export default App;