% Design a low-pass Butterworth filter
cutoff_frequency = 10;
[b, a] = butter(4, cutoff_frequency/(fs/2), 'low');

% Apply the filter to the noisy signal
denoised_signal = filter(b, a, noisy_signal);

% Plot the noisy and denoised signals for comparison
t = (0:length(noisy_signal)-1) / fs; 

figure;
subplot(2,1,1);
plot(t, noisy_signal);
title('Noisy Signal');
xlabel('Time [s]');
ylabel('Amplitude');

subplot(2,1,2);
plot(t, denoised_signal);
title('Denoised Signal');
xlabel('Time [s]');
ylabel('Amplitude');
