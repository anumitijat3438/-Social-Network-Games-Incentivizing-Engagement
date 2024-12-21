// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SocialNetworkGame {
    
    struct Player {
        address playerAddress;
        uint256 points;
        uint256 lastActivity;
    }

    mapping(address => Player) public players;
    mapping(address => bool) public hasJoined;

    uint256 public rewardRate = 10; // Points rewarded per action
    uint256 public inactivityThreshold = 30 days; // Time period of inactivity

    address public owner;

    event PlayerJoined(address indexed player);
    event PointsEarned(address indexed player, uint256 points);
    event InactivityPenalty(address indexed player, uint256 penaltyPoints);

    modifier onlyOwner() {
        require(msg.sender == owner, "Only the owner can call this function");
        _;
    }

    constructor() {
        owner = msg.sender;
    }

    function joinGame() external {
        require(!hasJoined[msg.sender], "Player has already joined the game");

        players[msg.sender] = Player({
            playerAddress: msg.sender,
            points: 0,
            lastActivity: block.timestamp
        });

        hasJoined[msg.sender] = true;
        emit PlayerJoined(msg.sender);
    }

    function performAction() external {
        require(hasJoined[msg.sender], "Player must join the game first");

        Player storage player = players[msg.sender];
        player.points += rewardRate;
        player.lastActivity = block.timestamp;

        emit PointsEarned(msg.sender, rewardRate);
    }

    function checkInactivity() external {
        require(hasJoined[msg.sender], "Player must join the game first");

        Player storage player = players[msg.sender];
        if (block.timestamp - player.lastActivity > inactivityThreshold) {
            uint256 penalty = player.points / 2; // Penalty is 50% of points
            player.points -= penalty;
            player.lastActivity = block.timestamp;

            emit InactivityPenalty(msg.sender, penalty);
        }
    }

    function updateRewardRate(uint256 newRate) external onlyOwner {
        rewardRate = newRate;
    }

    function updateInactivityThreshold(uint256 newThreshold) external onlyOwner {
        inactivityThreshold = newThreshold;
    }

    function getPlayerPoints(address playerAddress) external view returns (uint256) {
        return players[playerAddress].points;
    }
}
