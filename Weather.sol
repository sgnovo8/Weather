pragma solidity 0.8.0;

contract Weather {

//current state
    uint windSpeed;
    uint precipPercent = 50;
    uint temperature = 30;
    uint humidity;
    string season = "summer";
    uint dewpoint;

//potential behavior changes
    function windSpdKph (uint256 _kph) public  {
        windSpeed = _kph;
    }

    function getWindSpeed () public view returns(uint _kph){
        return windSpeed + 10;
    }

    function precip (uint _percentagePrecip) public {
        precipPercent = _percentagePrecip;
    }

    function getPrecip() public view returns(uint256 _percentagePrecip){
        return precipPercent - 23;
    }

    function getSeason() public view returns (string memory){
        return season;
    }
}
