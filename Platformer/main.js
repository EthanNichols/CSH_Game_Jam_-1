window.onload = function(){
	var canvas = document.getElementById("myCanvas");
	var ctx = canvas.getContext("2d")
	var keys = [];
	var cat = document.getElementById("cat")
	ctx.fillStyle = "white";
	ctx.fillRect(0,0,canvas.width,canvas.height);
	
	var boxes = {};
	var boxIndex = 0;
	var boxnum = 6;
	
	function box(){
		this.x = Math.random()*1000;
		this.y = Math.random()*300;		
		this.sidex = Math.random() * 200;
		this.sidey = Math.random() * 200;
		this.color = "blue";
		boxIndex ++;
		boxes[boxIndex] = this;
		this.id = boxIndex;
		
	}
	
	box.prototype.draw = function(){
		ctx.fillStyle = this.color;
		ctx.fillRect(this.x,this.y,this.sidex,this.sidey);
		
		if (p.x > this.x - 10 && p.x < this.x + this.sidex && p.y > this.y - 10 && p.y < this.y + this.sidey){
			if ( p.vx > 0 && p.y > this.y && p.y <= this.y + this.sidey - 10){
				p.x = this.x - 10;
				p.vx = 0;
			}
			if (p.vx < 0 && p.y > this.y && p.y <= this.y + this.sidey - 10){
				p.x = this.x + this.sidex;
				p.vx = 0
			}
			if (p.vy >= 0 && p.y <= this.y){
				p.y = this.y -10;
				p.vy *= -.3;
				p.jumping = false;
				p.vx *= .5;
				if (p.vy < .1 && p.vy > 0 && !keys[38]){
					p.vy = 0;
				}
			}
			if (p.vy < 0 && p.y >= this.y + this.sidey - 5){
				p.vy *= -.2;
			}
			
			}
	}
	
	function player(){
		this.x = canvas.width / 2;
		this.y = 600
		this.vx = 0;
		this.vy = 0;
		this.gravity = .5;
		this.color = "black";
		this.jumping = false;
		this.maxv = 10;
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
			
		}
		
		if (keys[38] && !this.jumping){
			this.vy -= 10;
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
		
		if (this.vx > this.maxv){
			this.vx = this.maxv;
		}
		if (this.vx < -this.maxv){
			this.vx = -this.maxv;
		}
			
		if (this.vy < .2 && this.vy > 0 && !keys[38]){
			this.vy = 0
		}
		
		//ctx.fillStyle = this.color;
		//ctx.fillRect(this.x,this.y,10,10);
		ctx.drawImage(cat,this.x,this.y,10,10)
	}
	var p = new player()
	
	for (var i = 0; i < boxnum; i++){
		new box()
	}
	
	
	document.body.addEventListener("keydown", function(e){
		keys[e.keyCode] = true;
	});
	
	document.body.addEventListener("keyup", function(e){
		keys[e.keyCode] = false;
	});
	
	
	setInterval(function(){
		ctx.fillStyle = "white";
		ctx.fillRect(0,0,canvas.width,canvas.height);
		
		for (var i in boxes){
			boxes[i].draw()
		}
		
		p.draw();
	},30)
}