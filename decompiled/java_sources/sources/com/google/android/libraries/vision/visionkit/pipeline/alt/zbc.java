package com.google.android.libraries.vision.visionkit.pipeline.alt;

import android.graphics.Bitmap;
import android.util.Log;
import com.google.android.gms.internal.mlkit_vision_text_bundled_common.zbcq;
import com.google.android.gms.internal.mlkit_vision_text_bundled_common.zbki;
import com.google.android.gms.internal.mlkit_vision_text_bundled_common.zbtp;
import com.google.android.gms.internal.mlkit_vision_text_bundled_common.zbuq;
import com.google.android.libraries.vision.visionkit.pipeline.zbbe;
import com.google.android.libraries.vision.visionkit.pipeline.zbbf;
import com.google.android.libraries.vision.visionkit.pipeline.zbbx;
import com.google.android.libraries.vision.visionkit.pipeline.zbca;
import com.google.android.libraries.vision.visionkit.pipeline.zbcb;
import com.google.android.libraries.vision.visionkit.pipeline.zbcc;
import com.google.android.libraries.vision.visionkit.pipeline.zbcz;
import com.sunia.HTREnginev2.dcp;
import com.sunia.HTREnginev2.qcp;
import java.nio.ByteBuffer;

/* loaded from: classes5.dex */
public class zbc implements zbbx, zbcc, zbcb {

    /* renamed from: a */
    public final zbbf f30124a;

    /* renamed from: b */
    public final dcp f30125b;

    /* renamed from: c */
    public long f30126c;

    /* renamed from: d */
    public final long f30127d;

    /* renamed from: e */
    public final long f30128e;

    /* renamed from: f */
    public final long f30129f;

    /* renamed from: g */
    public final long f30130g;
    protected final zbtp zba;

    public zbc(zbca zbcaVar, String str) {
        zbtp zbb = zbtp.zbb();
        zbtp zba = zbb == null ? zbtp.zba() : zbb;
        if (zbcaVar.zbh()) {
            this.f30125b = new qcp(this);
        } else if (zbcaVar.zbg()) {
            this.f30125b = new NativePipelineImpl(this, this, this, zba);
        } else {
            this.f30125b = new NativePipelineImpl("mlkit_google_ocr_pipeline", this, this, this, zba);
        }
        if (zbcaVar.zbi()) {
            this.f30124a = new zbbf(zbcaVar.zba());
        } else {
            this.f30124a = new zbbf(10);
        }
        this.zba = zba;
        long initializeFrameManager = this.f30125b.initializeFrameManager();
        this.f30127d = initializeFrameManager;
        long initializeFrameBufferReleaseCallback = this.f30125b.initializeFrameBufferReleaseCallback(initializeFrameManager);
        this.f30128e = initializeFrameBufferReleaseCallback;
        long initializeResultsCallback = this.f30125b.initializeResultsCallback();
        this.f30129f = initializeResultsCallback;
        long initializeIsolationCallback = this.f30125b.initializeIsolationCallback();
        this.f30130g = initializeIsolationCallback;
        this.f30126c = this.f30125b.initialize(zbcaVar.zbl(), initializeFrameBufferReleaseCallback, initializeResultsCallback, initializeIsolationCallback, 0L, 0L);
    }

    @Override // com.google.android.libraries.vision.visionkit.pipeline.zbbx
    public final void zba(long j) {
        this.f30124a.zba(j);
    }

    @Override // com.google.android.libraries.vision.visionkit.pipeline.zbcb
    public final int zbb(String str) {
        Log.w("VKP", "openFileDescriptor called but is not available for this pipeline. Ignoring call.");
        return -1;
    }

    @Override // com.google.android.libraries.vision.visionkit.pipeline.zbcb
    public final void zbc(int i) {
        Log.w("VKP", "closeFileDescriptor called but is not available for this pipeline. Ignoring call.");
    }

    @Override // com.google.android.libraries.vision.visionkit.pipeline.zbcc
    public final void zbd(zbcz zbczVar) {
        zbcq.zba.zbb(this, "Pipeline received results: ".concat(String.valueOf(zbczVar)), new Object[0]);
    }

    public final zbki zbe(zbbe zbbeVar) {
        byte[] process;
        if (this.f30126c == 0) {
            throw new IllegalStateException("Pipeline has been closed or was not initialized");
        }
        if (!this.f30124a.zbb(zbbeVar, zbbeVar.zba()) || (process = this.f30125b.process(this.f30126c, this.f30127d, zbbeVar.zba(), zbbeVar.zbc(), zbbeVar.zbb().zbb(), zbbeVar.zbb().zba(), zbbeVar.zbd() - 1, zbbeVar.zbe() - 1)) == null) {
            return zbki.zbd();
        }
        try {
            return zbki.zbe(zbcz.zbd(process, this.zba));
        } catch (zbuq e) {
            throw new IllegalStateException("Could not parse results", e);
        }
    }

    public final synchronized void zbf() {
        long j = this.f30126c;
        if (j != 0) {
            this.f30125b.stop(j);
            this.f30125b.close(this.f30126c, this.f30127d, this.f30128e, this.f30129f, this.f30130g);
            this.f30126c = 0L;
            this.f30125b.zba();
        }
    }

    public final void zbg() throws PipelineException {
        long j = this.f30126c;
        if (j == 0) {
            throw new PipelineException(zbd.FAILED_PRECONDITION.ordinal(), "Pipeline has been closed or was not initialized");
        }
        try {
            this.f30125b.start(j);
            this.f30125b.waitUntilIdle(this.f30126c);
        } catch (PipelineException e) {
            this.f30125b.stop(this.f30126c);
            throw e;
        }
    }

    public final void zbh() {
        long j = this.f30126c;
        if (j == 0) {
            throw new IllegalStateException("Pipeline has been closed or was not initialized");
        }
        if (!this.f30125b.stop(j)) {
            throw new IllegalStateException("Pipeline did not stop successfully.");
        }
    }

    public final zbki zbi(long j, Bitmap bitmap, int i) {
        if (this.f30126c == 0) {
            throw new IllegalStateException("Pipeline has been closed or was not initialized");
        }
        if (bitmap.getConfig() != Bitmap.Config.ARGB_8888) {
            throw new IllegalArgumentException("Unsupported bitmap config ".concat(String.valueOf(bitmap.getConfig())));
        }
        byte[] processBitmap = this.f30125b.processBitmap(this.f30126c, j, bitmap, bitmap.getWidth(), bitmap.getHeight(), 0, i - 1);
        if (processBitmap == null) {
            return zbki.zbd();
        }
        try {
            return zbki.zbe(zbcz.zbd(processBitmap, this.zba));
        } catch (zbuq e) {
            throw new IllegalStateException("Could not parse results", e);
        }
    }

    public final zbki zbj(long j, ByteBuffer byteBuffer, ByteBuffer byteBuffer2, ByteBuffer byteBuffer3, int i, int i2, int i3, int i4, int i5, int i6) {
        if (this.f30126c == 0) {
            throw new IllegalStateException("Pipeline has been closed or was not initialized");
        }
        if (!byteBuffer.isDirect() || !byteBuffer2.isDirect() || !byteBuffer3.isDirect()) {
            throw new IllegalStateException("Byte buffers are not direct.");
        }
        byte[] processYuvFrame = this.f30125b.processYuvFrame(this.f30126c, j, byteBuffer, byteBuffer2, byteBuffer3, i, i2, i3, i4, i5, i6 - 1);
        if (processYuvFrame == null) {
            return zbki.zbd();
        }
        try {
            return zbki.zbe(zbcz.zbd(processYuvFrame, this.zba));
        } catch (zbuq e) {
            throw new IllegalStateException("Could not parse results", e);
        }
    }
}
