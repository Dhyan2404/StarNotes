package com.google.mlkit.vision.digitalink;

import androidx.annotation.NonNull;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleObserver;
import androidx.lifecycle.OnLifecycleEvent;
import com.google.android.gms.tasks.Task;
import java.io.Closeable;

/* loaded from: classes6.dex */
public interface DigitalInkRecognizer extends Closeable, LifecycleObserver {
    @Override // java.io.Closeable, java.lang.AutoCloseable
    @OnLifecycleEvent(Lifecycle.Event.ON_DESTROY)
    void close();

    @NonNull
    Task<RecognitionResult> recognize(@NonNull Ink ink);

    @NonNull
    Task<RecognitionResult> recognize(@NonNull Ink ink, @NonNull RecognitionContext recognitionContext);
}
