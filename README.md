# Blockhain Explorer

A proof of concept Flutter web app for navigating different levels of the [Topl blockchain](https://github.com/Topl). This block explorer is designed to visualize the main levels of the Tetra version of the Topl PoS (Proof-of-Stake) protocol: epochs, blocks and transactions. 


https://user-images.githubusercontent.com/13727615/221472996-f30295f2-9dcd-4db8-b87b-81fe125621ba.mp4


## What does the app do?
This app uses mock block and transaction data from Topl to visualize the layers of the blockchain in a simple, user-friendly UI. Most block explorers in the industry are cumbersome and ugly. They tend to be very dense on data and are not accessible to beginners. The vision of this app is to provide the most minimalistic, easy-to-use gateway to the Topl blockchain. 

Through this block explorer, users can:
- View epochs as grids of blocks (with a breakdown of each block with a block # and other metrics)
- Scroll through epochs horizontally back and forwards in cronological order
- Click on a block to be taken to a level below, which is the view block stacks screen
- Scroll through block stacks horizontally in cronological order
- Click to expand/contract block stack to view lower level transactions
- Click on a transaction to see UTXO (unspent transaction output) info

## Prerequisites
This app requires you to have the Flutter SDK installed on your machine. You can follow the instructions for that [here](https://block-explorer.herokuapp.com/).

## Starting the app

1. Clone down the repo locally
2. Change into the `blockchain_explorer` directory
3. Run the `flutter run -d chrome` to start the app in a Chrome window


## Interacting with the deployed app
Installing the Flutter SDK locally can be a pain. Instead, the full Blockchain Explorer app has been deployed through Heroku [here](https://block-explorer.herokuapp.com/).

## Figma Designs
You can explore the full Figma UI designs for this project [here](https://www.figma.com/file/BwXbnu4GsDDSXODR6sXj1i/Block-Explorer?node-id=6%3A8&t=Sy3NcREBeprg0AI6-1)
