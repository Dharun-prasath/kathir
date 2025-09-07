const { contextBridge, ipcRenderer } = require('electron');
contextBridge.exposeInMainWorld('dhanuAPI', {
  send: (channel, data) => ipcRenderer.send(channel, data),
  on: (channel, cb) => ipcRenderer.on(channel, (event, ...args) => cb(...args))
});
