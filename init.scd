(
s.waitForBoot {
	MIDIClient.init;

	~dirt = SuperDirt(2, s);


	// Setting up MIDI destination devices.
	~dirt.soundLibrary.addMIDI(
		\mididevice, // On Estuary's MiniTidal this means we will be using something that should include this: s "mididevice". You can use any name you want, and of course add as many devices as necessary (make sure to add them at the top of the file)
		MIDIOut.newByName("VirMIDI", "Bus 1") // substitute your own device here. To figure out the name of your devices run the "MIDIClient.destinations" line below, you will see the names in the post window, and will look something like this: [MIDIEndPoint("VirMIDI", "Bus 1"), ...]
	);

	~dirt.start(57120, [0]);
};
);

MIDIClient.destinations;


