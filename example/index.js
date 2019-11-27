/**
 * @format
 */

import BatchedBridge from "react-native/Libraries/BatchedBridge/BatchedBridge";
import someapi from './someapi.js';

export const someapiModule = new someapi();
BatchedBridge.registerCallableModule('someapiModule', someapiModule);
