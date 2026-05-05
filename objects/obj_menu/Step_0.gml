/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor


// --- Seleção com mouse ou controle ---
// Espaçamento proporcional
var option_spacing = room_height * 0.15; // 15% da altura da tela
var extra_space_second = room_height * 0.05; // espaço extra para a segunda opção
var option_start_y = (room_height - (array_length(menu_options) * option_spacing + extra_space_second)) / 2;

// Verificando input do controle
var clicked = false;
if (gamepad_button_check_pressed(global.gamepad_id, gp_face1)) {
    clicked = true;
}

// Navegação com o controle (usando eixo vertical)
var axis_y = gamepad_axis_value(global.gamepad_id, gp_axislv);
if (axis_y < -0.25) selected_option = max(selected_option - 1, 0);
else if (axis_y > 0.25) selected_option = min(selected_option + 1, array_length(menu_options) - 1);

// Verifica se o mouse está sobre as opções
for (var i = 0; i < array_length(menu_options); i++) {
    var option_y = option_start_y + i * option_spacing;
    if (i == 1) option_y += extra_space_second;

    var option_x = (room_width - string_width(menu_options[i])) / 2;
    var option_height = option_spacing * 0.8; // altura relativa da "caixa"

    if (mouse_x > option_x && mouse_x < option_x + string_width(menu_options[i]) &&
        mouse_y > option_y && mouse_y < option_y + option_height) {
        selected_option = i;
        if (mouse_check_button_pressed(mb_left)) clicked = true;
    }
}

// Ação ao clicar ou pressionar botão
if (clicked) {
    if (selected_option == 0) {
        global.game_running = true;
        instance_destroy();
        room_goto(Room2);
    } else if (selected_option == 1) {
        game_end();
    }
}