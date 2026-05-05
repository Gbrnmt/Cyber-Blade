/// @description Desenha o Menu (Sem Fundo Preto)

draw_set_font(fnt_menu);

// 1. REMOVIDO: draw_set_color(c_black) e draw_rectangle(...) 
// Assim o seu background de espaço aparece!

// Título
var title = "LOGIC-MON";
var title_x = (room_width - string_width(title)) / 2;
var title_y = room_height * 0.1;

// Sombra do título (essencial para fundo de espaço)
draw_set_color(c_black);
draw_text(title_x + 2, title_y + 2, title);

draw_set_color(c_white);
draw_text(title_x, title_y, title);

// Opções
var option_spacing = room_height * 0.15;
var extra_space_second = room_height * 0.05;
var option_start_y = (room_height - (array_length(menu_options) * option_spacing + extra_space_second)) / 2;

for (var i = 0; i < array_length(menu_options); i++) {
    var option_y = option_start_y + i * option_spacing;
    if (i == 1) option_y += extra_space_second;

    var option_x = (room_width - string_width(menu_options[i])) / 2;

    // Sombra das opções
    draw_set_color(c_black);
    draw_text(option_x + 1, option_y + 1, menu_options[i]);

    // Cor da seleção original
    if (i == selected_option) {
        draw_set_color(c_white);
    } else {
        draw_set_color(c_grey);
    }

    draw_text(option_x, option_y, menu_options[i]);
}