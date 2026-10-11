package com.google.android.libraries.vision.visionkit.pipeline.alt;

import android.graphics.Bitmap;
import androidx.annotation.Keep;
import com.google.android.apps.common.proguard.UsedByNative;
import com.google.android.gms.internal.mlkit_vision_text_bundled_common.zbcq;
import com.google.android.gms.internal.mlkit_vision_text_bundled_common.zbtp;
import com.google.android.gms.internal.mlkit_vision_text_bundled_common.zbuq;
import com.google.android.libraries.vision.visionkit.pipeline.zbbx;
import com.google.android.libraries.vision.visionkit.pipeline.zbcb;
import com.google.android.libraries.vision.visionkit.pipeline.zbcc;
import com.google.android.libraries.vision.visionkit.pipeline.zbcz;
import com.sunia.HTREnginev2.dcp;
import java.nio.ByteBuffer;

/* loaded from: classes5.dex */
class NativePipelineImpl implements dcp {

    /* renamed from: a */
    public zbtp f30120a;

    /* renamed from: b */
    public zbbx f30121b;

    /* renamed from: c */
    public zbcc f30122c;

    /* renamed from: d */
    public zbcb f30123d;

    public NativePipelineImpl(zbbx zbbxVar, zbcc zbccVar, zbcb zbcbVar, zbtp zbtpVar) {
        this.f30121b = zbbxVar;
        this.f30122c = zbccVar;
        this.f30123d = zbcbVar;
        this.f30120a = zbtpVar;
    }

    @Override // com.sunia.HTREnginev2.dcp
    public native void close(long j, long j2, long j3, long j4, long j5);

    @Keep
    @UsedByNative("pipeline_jni.cc")
    public void closeFileDescriptor(int i) {
        this.f30123d.zbc(i);
    }

    @Override // com.sunia.HTREnginev2.dcp
    public native long initialize(byte[] bArr, long j, long j2, long j3, long j4, long j5);

    @Override // com.sunia.HTREnginev2.dcp
    public native long initializeFrameBufferReleaseCallback(long j);

    @Override // com.sunia.HTREnginev2.dcp
    public native long initializeFrameManager();

    @Override // com.sunia.HTREnginev2.dcp
    public native long initializeIsolationCallback();

    @Override // com.sunia.HTREnginev2.dcp
    public native long initializeResultsCallback();

    @Keep
    @UsedByNative("pipeline_jni.cc")
    public void onReleaseAtTimestampUs(long j) {
        this.f30121b.zba(j);
    }

    @Keep
    @UsedByNative("pipeline_jni.cc")
    public void onResult(byte[] bArr) {
        try {
            this.f30122c.zbd(zbcz.zbd(bArr, this.f30120a));
        } catch (zbuq e) {
            zbcq.zba.zba(e, "Error in result from JNI layer", new Object[0]);
        }
    }

    @Keep
    @UsedByNative("pipeline_jni.cc")
    public int openFileDescriptor(String str) {
        this.f30123d.zbb(str);
        return -1;
    }

    @Override // com.sunia.HTREnginev2.dcp
    public native byte[] process(long j, long j2, long j3, byte[] bArr, int i, int i2, int i3, int i4);

    @Override // com.sunia.HTREnginev2.dcp
    public native byte[] processBitmap(long j, long j2, Bitmap bitmap, int i, int i2, int i3, int i4);

    @Override // com.sunia.HTREnginev2.dcp
    public native byte[] processYuvFrame(long j, long j2, ByteBuffer byteBuffer, ByteBuffer byteBuffer2, ByteBuffer byteBuffer3, int i, int i2, int i3, int i4, int i5, int i6);

    @Override // com.sunia.HTREnginev2.dcp
    public native void start(long j) throws PipelineException;

    @Override // com.sunia.HTREnginev2.dcp
    public native boolean stop(long j);

    @Override // com.sunia.HTREnginev2.dcp
    public native void waitUntilIdle(long j) throws PipelineException;

    @Override // com.sunia.HTREnginev2.dcp
    public final void zba() {
        this.f30120a = null;
        this.f30121b = null;
        this.f30122c = null;
        this.f30123d = null;
    }

    public NativePipelineImpl(String str, zbbx zbbxVar, zbcc zbccVar, zbcb zbcbVar, zbtp zbtpVar) {
        this(zbbxVar, zbccVar, zbcbVar, zbtpVar);
        System.loadLibrary("mlkit_google_ocr_pipeline");
    }
}
