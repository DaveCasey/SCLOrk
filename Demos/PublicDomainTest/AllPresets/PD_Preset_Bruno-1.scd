// ==================================
// Preset: Bruno-1
// Number of voices: 8
// Most recent year sampled: 1983
// Comments: Olivia Newton John "Physical"
// ==================================

Pbindef(\p1,
	\instrument, "playBuf",
	\bufnum, ~mySamples.at('1982A'),
	\dur, 4,
	\rate, 120/124,
	\startPos, 0,
	\att, 0.01,
	\rel, 10,
	\amp, 1
).play(~clock, quant: 4).quant = 4;


Pbindef(\p2,
	\instrument, "playBuf",
	\bufnum, ~mySamples.at('1982A'),
	\dur, 1/8,
	\rate, 120/124, //Pseq([1, 1.5, 2, 2.5], inf),
	\startPos, Prand([0.69, 0.7, 0.87], inf), //Pseq([0.2, 0.199], inf),
	\att, 0.1,
	\rel, Pwhite(0.3, 0.6),
	\amp, Pseq([
		1, 0, 0, 0,   0, 0, 0, 0, // beat 1
		0, 0, 0, 0,   0, 0, 1, 0, // beat 2
		0, 0, 0, 0,   0, 0, 0, 0, // beat 3
		0, 0, 0, 0,   1, 0, 1, 0, // beat 4
	], inf) * 0.8,
).play(~clock, quant: 4).quant = 4;

Pbindef(\p3,
	\instrument, "playBuf",
	\bufnum, ~mySamples.at('1939A'),
	\dur, 1/8,
	\rate, 1, //Pseq([1, 1.5, 2, 2.5], inf),
	\startPos, 0.8, //Pseq([0.2, 0.199], inf),
	\att, 0.1,
	\rel, 0.1,
	\amp, Pseq([
		0, 0, 0, 0,   0, 1, 0, 0, // beat 1
		0, 0, 0, 0,   0, 0, 0, 1, // beat 2
		0, 0, 1, 0,   0, 0, 0, 0, // beat 3
		0, 0, 0, 0,   1, 0, 1, 0, // beat 4
	], inf),
).play(~clock, quant: 4).quant = 4;

Pbindef(\p4,
	\instrument, "playBuf",
	\bufnum, ~mySamples.at('1976A'),
	\dur, 1/8,
	\rate, 1.18 * Pwrand([1, 6/5], [0.9, 0.1], inf), //Pseq([1, 1.5, 2, 2.5], inf),
	\startPos, 0.4, //Pseq([0.2, 0.199], inf),
	\att, 0.1,
	\rel, Prand([0.1, 1], inf) * 1,
	\amp, Pseq([
		1, 0, 0, 0,   0, 0, 0, 0, // beat 1
		1, 0, 0, 0,   0, 0, 0, 1, // beat 2
		1, 1, 0, 0,   0, 0, 0, 0, // beat 3
		0, 0, 0, 0,   1, 0, 1, 0, // beat 4
	], inf) * 0.7,
).play(~clock, quant: 4).quant = 4;


Pbindef(\p5,
	\instrument, "playBuf",
	\bufnum, ~mySamples.at('1982A'),
	\dur, 1/8,
	\rate, 120/124 * 2, //Pseq([1, 1.5, 2, 2.5], inf),
	\startPos, Pn(Pseries(0, 0.1, 10), inf), //Pseq([0.2, 0.199], inf),
	\att, 0.01,
	\rel, 0.3,
	\amp, Pseq([
		0, 1, 0, 0,   0, 0, 0, 0, // beat 1
		0, 0, 0, 0,   0, 0, 0, 1, // beat 2
		0, 0, 1, 0,   0, 0, 0, 0, // beat 3
		0, 0, 0, 0,   1, 0, 0, 0, // beat 4
	], inf) * 0.5,
).play(~clock, quant: 4).quant = 4;


Pbindef(\p6,
	\instrument, "playBuf",
	\bufnum, ~mySamples.at('1982A'),
	\dur, 4, // ATTN: You are doubling main drum loop with \p1. Keep this pattern...
	\rate, 120/124, // .... mostly intact for a while (no changes), then...
	\startPos, 0.0,  // ... after several loops, change startPos to 0.44 to bring out the vocals
	\att, 0.01,
	\rel, 13,
	\amp, 1
).play(~clock, quant: 4).quant = 4;

Pbindef(\p7,
	\instrument, "playBuf",
	\bufnum, ~mySamples.at('1983B'),
	\dur, 1/8, //Prand([1/4, Rest(1/4)], inf),
	\rate, 1.35, //Pseq([1, 1.5, 2, 2.5], inf),
	\startPos, 0.8, //Pseq([0.2, 0.199], inf),
	\att, 0.01,
	\rel, 0.1,
	\amp, Pseq([
		0, 0, 0, 0,   0, 0, 0, 0, // beat 1
		0, 0, 0, 0,   0, 0, 0, 0, // beat 2
		0, 0, 0, 0,   0, 0, 0, 0, // beat 3
		0, 0, 0, 0,   1, 0, 1, 1, // beat 4
	], inf),
).play(~clock, quant: 4).quant = 4;


Pbindef(\p8,
	\instrument, "playBuf",
	\bufnum, ~mySamples.at('1976A'),
	\dur, 1/8, //Prand([1/4, Rest(1/4)], inf),
	\rate, 2, //Pseq([1, 1.5, 2, 2.5], inf),
	\startPos, 0.2, //Pseq([0.2, 0.199], inf),
	\att, 0.1,
	\rel, Pwhite(0.1, 0.2),
	\amp, Pseq([
		0, 0, 0, 0,   0, 0, 0, 0, // beat 1
		0, 0, 0, 0,   0, 0, 0, 0, // beat 2
		0, 0, 0, 0,   0, 0, 0, 0, // beat 3
		0, 0, 0, 0,   1, 1, 1, 0, // beat 4
	], inf),
).play(~clock, quant: 4).quant = 4;