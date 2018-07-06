App.global_chat = App.cable.subscriptions.create {
    channel: "RoomsChannel"
    room_id: ''
  },
  connected: ->
    # Called when the subscription is ready for use on the server

  disconnected: ->
    # Called when the subscription has been terminated by the server

  received: (data) ->
    # Data received

  send_message: (message, room_id) ->
    @perform 'send_message', message: message, room_id: room_id
