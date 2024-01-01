import GameMap from '#concepts/map';

export default new GameMap({
    name: 'TestMPlayer',
    room_name: 'rmTestMPlayer',
    description: 'A test map, a placeholder if you will',
    
    width: 960,
    height: 540,
    
    // content_string: '',
    
    spawn_type: 'distributed',
    start_pos: [
        { x: 64, y: 256 },
        { x: 896, y: 256 }
    ],
    max_players: 2
});
