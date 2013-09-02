app.controller "CommentsController", ($scope, $http, $location, $state, $stateParams) ->
 
  # =========================================================================
  # Initialize
  # =========================================================================
 
  $scope.comments = {}
  # if $state.current.name == 'comments'
  # $scope.getComments = ->
  #  $http.get("/api/users/#{$scope.users[0].id}/statuses/#{$scope.statuses[0].id}/comments"
 
    # success
  #  ).then ((response) ->
  #    $scope.comments = response.data
    
    # failure
  #  ), (error) ->
 
  $scope.comment = {}
  if $state.current.name == 'edit'
    $http.get("/api/comments/#{$stateParams['id']}"
 
    # success
    ).then ((response) ->
      $scope.comment = response.data
 
    # failure
    ), (error) ->

  # =========================================================================
  # Create
  # =========================================================================
 
  $scope.createComment = (text, statusId) ->
    $http.post("/api/comments",
      comment:
        content: text
        status_id: statusId
 
    # success
    ).then ((response) ->
      $location.path "/"
 
    # failure
    ), (error) ->
 
  # =========================================================================
  # Update
  # =========================================================================
 
  $scope.updateComment = ->
    $http.put("/api/comments/#{$scope.comment.id}",
      comment:
        content: $scope.comment.content
        status_id: $scope.comment.status_id
 
    # success
    ).then ((response) ->
      $location.path "/"
 
    # failure
    ), (error) ->
 
  # =========================================================================
  # Destroy
  # =========================================================================
 
  $scope.destroyComment = (id) ->
    $http.delete("/api/comments/#{id}"
 
    # success
    ).then ((response) ->
      $http.get("/api/comments").then ((response) ->
        $scope.comments = response.data
      ), (error) ->
 
    # failure
    ), (error) ->
 
  return false