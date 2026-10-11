package com.google.mlkit.vision.common.internal;

import android.os.SystemClock;
import androidx.annotation.NonNull;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.GmsLogger;
import com.google.android.gms.common.internal.Preconditions;
import com.google.mlkit.vision.common.InputImage;
import java.util.LinkedList;
import java.util.concurrent.TimeUnit;

@KeepForSdk
/* loaded from: classes6.dex */
public class BitmapInStreamingChecker {

    /* renamed from: c */
    public static final GmsLogger f36641c = new GmsLogger("StreamingFormatChecker", "");

    /* renamed from: a */
    public final LinkedList f36642a = new LinkedList();

    /* renamed from: b */
    public long f36643b = -1;

    @KeepForSdk
    public void check(@NonNull InputImage inputImage) {
        if (inputImage.getFormat() != -1) {
            return;
        }
        long elapsedRealtime = SystemClock.elapsedRealtime();
        this.f36642a.add(Long.valueOf(elapsedRealtime));
        if (this.f36642a.size() > 5) {
            this.f36642a.removeFirst();
        }
        if (this.f36642a.size() != 5 || elapsedRealtime - ((Long) Preconditions.checkNotNull((Long) this.f36642a.peekFirst())).longValue() >= 5000) {
            return;
        }
        long j = this.f36643b;
        if (j == -1 || elapsedRealtime - j >= TimeUnit.SECONDS.toMillis(5L)) {
            this.f36643b = elapsedRealtime;
            f36641c.m22165w("StreamingFormatChecker", "ML Kit has detected that you seem to pass camera frames to the detector as a Bitmap object. This is inefficient. Please use YUV_420_888 format for camera2 API or NV21 format for (legacy) camera API and directly pass down the byte array to ML Kit.");
        }
    }
}
