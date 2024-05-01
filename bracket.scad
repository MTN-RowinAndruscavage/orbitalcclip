$fn = 100;

translate(v = [0, 0, -50]) {
	union() {
		difference() {
			translate(v = [0, 0, 6]) {
				sphere(r = 53.5);
			}
			translate(v = [0, 0, 6]) {
				sphere(r = 51.8);
			}
			translate(v = [-100, -100, -100]) {
				cube(size = [200, 200, 150.2]);
			}
			union() {
				intersection() {
					cylinder(h = 200, r = 11.4);
					translate(v = [-10.5, -10.5, -1]) {
						cube(size = [21, 21, 202]);
					}
				}
				translate(v = [-10.5, -3.5, 0]) {
					cube(size = [21, 100, 100]);
				}
				translate(v = [-13, 19, 0]) {
					cube(size = [26, 100, 100]);
				}
				translate(v = [-50, -104, 58]) {
					cube(size = [100, 100, 100]);
				}
				mirror(v = [0, 1, 0]) {
					translate(v = [-50, -104, 58]) {
						cube(size = [100, 100, 100]);
					}
				}
			}
		}
		intersection() {
			translate(v = [10, -16, 50.5]) {
				cube(size = [16, 2, 10]);
			}
			translate(v = [0, 0, 6]) {
				sphere(r = 53.5);
			}
		}
		mirror(v = [1, 0, 0]) {
			intersection() {
				translate(v = [10, -16, 50.5]) {
					cube(size = [16, 2, 10]);
				}
				translate(v = [0, 0, 6]) {
					sphere(r = 53.5);
				}
			}
		}
		intersection() {
			difference() {
				union() {
					cylinder(h = 200, r = 15);
					translate(v = [-14, 0, 0]) {
						cube(size = [28, 100, 100]);
					}
					translate(v = [-6, -24.4, 0]) {
						cube(size = [12, 14, 58]);
					}
					rotate(a = [0, 0, 90]) {
						translate(v = [-6, -24.4, 0]) {
							cube(size = [12, 14, 58]);
						}
					}
					rotate(a = [0, 0, -90]) {
						translate(v = [-6, -24.4, 0]) {
							cube(size = [12, 14, 58]);
						}
					}
				}
				union() {
					intersection() {
						cylinder(h = 200, r = 11.4);
						translate(v = [-10.5, -10.5, -1]) {
							cube(size = [21, 21, 202]);
						}
					}
					translate(v = [-10.5, -3.5, 0]) {
						cube(size = [21, 100, 100]);
					}
					translate(v = [-13, 19, 0]) {
						cube(size = [26, 100, 100]);
					}
					translate(v = [-50, -104, 58]) {
						cube(size = [100, 100, 100]);
					}
					mirror(v = [0, 1, 0]) {
						translate(v = [-50, -104, 58]) {
							cube(size = [100, 100, 100]);
						}
					}
					translate(v = [-100, -100, -100]) {
						cube(size = [200, 200, 154]);
					}
					translate(v = [-13, 0, 52]) {
						rotate(a = [0, 90, 0]) {
							cylinder(h = 26, r = 4);
						}
					}
					translate(v = [0, -13, 52]) {
						rotate(a = [0, 90, 90]) {
							cylinder(h = 26, r = 4);
						}
					}
					translate(v = [-4, -28, 0]) {
						cube(size = [8, 12, 58]);
					}
					rotate(a = [0, 0, 90]) {
						translate(v = [-4, -28, 0]) {
							cube(size = [8, 12, 58]);
						}
					}
					rotate(a = [0, 0, -90]) {
						translate(v = [-4, -28, 0]) {
							cube(size = [8, 12, 58]);
						}
					}
				}
			}
			translate(v = [0, 0, 6]) {
				sphere(r = 53.5);
			}
		}
	}
}
