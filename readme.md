# Social Network Games Incentivizing Engagement

## Project Description
This project implements a blockchain-based smart contract to incentivize engagement in social network games. Players join the game, perform actions to earn points, and face penalties for prolonged inactivity. The system encourages continuous participation by rewarding players for their activity and penalizing them for inactivity, creating a dynamic and engaging environment.

## Contract Address
0x0E3E416D594c7733f29d4Aa7b37d3092DabaB4Cf

## Project Vision
Our vision is to revolutionize social gaming by integrating blockchain technology to create transparent, fair, and engaging experiences. By incentivizing engagement and penalizing inactivity, the project fosters an active and interactive player community.

## Key Features
- **Player Registration:**
  Players can join the game by registering through the `joinGame` function.

- **Action-Based Rewards:**
  Players earn points for performing specific actions using the `performAction` function. Each action rewards a fixed number of points based on the `rewardRate`.

- **Inactivity Penalties:**
  Players who remain inactive for a prolonged period (defined by the `inactivityThreshold`) lose 50% of their points. The `checkInactivity` function enforces this penalty.

- **Owner Controls:**
  The contract owner can update the reward rate and inactivity threshold using the `updateRewardRate` and `updateInactivityThreshold` functions, respectively.

- **Transparency:**
  All player data, including points and activity timestamps, is stored on the blockchain, ensuring fairness and accountability.

- **Leaderboard Integration (Future Enhancement):**
  A potential feature to display top players based on points.

## Future Improvements
- **NFT Integration:**
  Introduce unique NFTs as rewards for achieving specific milestones in the game.

- **Tokenized Economy:**
  Implement a token system to allow players to earn, trade, and spend tokens within the game ecosystem.

- **Social Features:**
  Add social elements such as player messaging, friend lists, and team collaborations to enhance interactivity.

- **Mobile and Web Interface:**
  Develop user-friendly interfaces for easier interaction with the contract.

- **AI-based Engagement Analysis:**
  Use AI to analyze player behavior and personalize rewards or challenges to maintain engagement.



 
