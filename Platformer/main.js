window.onload = function(){
	var canvas = document.getElementById("myCanvas");
	var ctx = canvas.getContext("2d")
	var keys = [];
	ctx.fillStyle = "white";
	ctx.fillRect(0,0,canvas.width,canvas.height);
	
	function box(){
		this.x = 300;
		this.y = 200;
		this.sides = 100;
		this.color = "blue";
	}
	
	box.prototype.draw = function(){
		ctx.fillStyle = this.color;
		ctx.fillRect(this.x,this.y,this.sides,this.sides);
	}
	
	function player(){
		this.x = canvas.width / 2;
		this.y = 600
		this.vx = 0;
		this.vy = -10;
		this.gravity = .5;
		this.color = "black";
		this.jumping = false;
		
	}
	
	player.prototype.draw = function(){
		this.x += this.vx;
		this.y += this.vy;
		this.vy+= this.gravity;
		if(this.y > canvas.height - 10){
			this.vy *= -.3;
			this.vx *= .5
			this.y = canvas.height - 10;
			this.jumping = false;
			this.maxv = 20;
		}
		
		if (keys[38] && !this.jumping){
			this.vy -= 8;
			this.jumping = true;
		}
		
		if (keys[37]){
			this.vx -= 2;
		}
		
		if (keys[39]){
			this.vx += 2;
		}
		
		if (this.x < 0){
			this.x = 0
			this.vx = 0;
			//this.jumping = false
		}
		if (this.x >canvas.width -10){
			this.x = canvas.width -10;
			this.vx = 0;
			//this.jumping = false
		}
		
		if (this.x > b.x - 10 && this.x < b.x + b.sides && this.y > b.y - 10){
			if ( this.vx > 0 && this.y > b.y){
				this.x = b.x - 10;
				this.vx = 0;
			}
			if (this.vx < 0 && this.y > b.y){
				this.x = b.x + b.sides;
				this.vx = 0
			}
			if (this.vy >= 0 && this.y <= b.y){
				this.y = b.y -10;
				this.vy = 0;
				this.jumping = false;
				this.vx *= .5;
			}
			}
		if (this.vx > this.maxv){
			this.vx = this.maxv;
		}
		if (this.vx < -this.maxv){
			this.vx = -this.maxv;
		}
			
		
		ctx.fillStyle = this.color;
		ctx.fillRect(this.x,this.y,10,10);
	}
	var p = new player()
	var b = new box()
	
	document.body.addEventListener("keydown", function(e){
		keys[e.keyCode] = true;
	});
	
	document.body.addEventListener("keyup", function(e){
		keys[e.keyCode] = false;
	});
	
	
	setInterval(function(){
		ctx.fillStyle = "white";
		ctx.fillRect(0,0,canvas.width,canvas.height);
		b.draw();
		p.draw();
	},30)
}