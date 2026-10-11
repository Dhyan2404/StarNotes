package com.sunia.HTREnginev2;

import android.graphics.Bitmap;
import com.google.android.libraries.vision.visionkit.pipeline.alt.PipelineException;
import java.nio.ByteBuffer;

/* loaded from: classes5.dex */
public interface dcp {
    void close(long j, long j2, long j3, long j4, long j5);

    long initialize(byte[] bArr, long j, long j2, long j3, long j4, long j5);

    long initializeFrameBufferReleaseCallback(long j);

    long initializeFrameManager();

    long initializeIsolationCallback();

    long initializeResultsCallback();

    byte[] process(long j, long j2, long j3, byte[] bArr, int i, int i2, int i3, int i4);

    byte[] processBitmap(long j, long j2, Bitmap bitmap, int i, int i2, int i3, int i4);

    byte[] processYuvFrame(long j, long j2, ByteBuffer byteBuffer, ByteBuffer byteBuffer2, ByteBuffer byteBuffer3, int i, int i2, int i3, int i4, int i5, int i6);

    void start(long j) throws PipelineException;

    boolean stop(long j);

    void waitUntilIdle(long j) throws PipelineException;

    void zba();
}
