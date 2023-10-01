/// @description Insert description here
// You can write your code in this editor

if (self.large){
	draw_set_font(blobby_large);
	draw_text_ext(self.x,self.y, self.title, 70, 600);
} else {
	draw_set_font(blobby);
	draw_text_ext(self.x,self.y, self.title, 35, 100);
}


