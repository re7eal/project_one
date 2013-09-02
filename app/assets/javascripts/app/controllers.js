app.controller('ctrl', function($scope) {

	$scope.profile = {
		name : "Name",
		lastname : "Lastname",
		education : "ISE - ICE",
		hobbies : "Sleeping",
		birthday : "xx/xx/xxxx",
		relationship : "Undisclosed"
	};
	
	var statusId = 1;
	$scope.statuses = [];
	
	$scope.postStatus = function(text) {
		var temp_status = {};
		temp_status["id"] = statusId;
		statusId++;
		temp_status["text"] = text;
		temp_status["comments"] = [];
		$scope.statuses.push(temp_status);
	}
	
	$scope.postComment = function(id, comment) {	
		for(status in $scope.statuses) {
			if($scope.statuses[status].id == id) {
				$scope.statuses[status].comments.push(comment);
				$scope.tempComment = "";
				console.log($scope.statuses);
			}
		}
	}

});
