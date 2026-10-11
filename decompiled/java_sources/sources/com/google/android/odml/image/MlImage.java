package com.google.android.odml.image;

import android.graphics.Rect;
import androidx.annotation.NonNull;
import com.sunia.HTREnginev2.pkp;
import com.sunia.HTREnginev2.wmp;
import java.io.Closeable;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.Collections;
import java.util.List;

/* loaded from: classes6.dex */
public class MlImage implements Closeable {
    public static final int IMAGE_FORMAT_ALPHA = 8;
    public static final int IMAGE_FORMAT_JPEG = 9;
    public static final int IMAGE_FORMAT_NV12 = 3;
    public static final int IMAGE_FORMAT_NV21 = 4;
    public static final int IMAGE_FORMAT_RGB = 2;
    public static final int IMAGE_FORMAT_RGBA = 1;
    public static final int IMAGE_FORMAT_UNKNOWN = 0;
    public static final int IMAGE_FORMAT_YUV_420_888 = 7;
    public static final int IMAGE_FORMAT_YV12 = 5;
    public static final int IMAGE_FORMAT_YV21 = 6;
    public static final int STORAGE_TYPE_BITMAP = 1;
    public static final int STORAGE_TYPE_BYTEBUFFER = 2;
    public static final int STORAGE_TYPE_MEDIA_IMAGE = 3;

    /* renamed from: e */
    public final pkp f33356e;

    /* renamed from: f */
    public final int f33357f;

    /* renamed from: g */
    public final Rect f33358g;

    /* renamed from: h */
    public final int f33359h;

    /* renamed from: i */
    public final int f33360i;

    /* renamed from: j */
    public int f33361j;

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes6.dex */
    public @interface ImageFormat {
    }

    /* loaded from: classes6.dex */
    public static final class Internal {

        /* renamed from: a */
        public final MlImage f33362a;

        public /* synthetic */ Internal(MlImage mlImage, wmp wmpVar) {
            this.f33362a = mlImage;
        }

        public void acquire() {
            this.f33362a.m25653H();
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes6.dex */
    public @interface StorageType {
    }

    public MlImage(pkp pkpVar, int i, Rect rect, long j, int i2, int i3) {
        this.f33356e = pkpVar;
        this.f33357f = i;
        Rect rect2 = new Rect();
        this.f33358g = rect2;
        rect2.set(rect);
        this.f33359h = i2;
        this.f33360i = i3;
        this.f33361j = 1;
    }

    /* renamed from: w */
    public static void m25652w(int i) {
        if (i == 0 || i == 90 || i == 180 || i == 270) {
            return;
        }
        StringBuilder sb = new StringBuilder(68);
        sb.append("Rotation value ");
        sb.append(i);
        sb.append(" is not valid. Use only 0, 90, 180 or 270.");
        throw new IllegalArgumentException(sb.toString());
    }

    /* renamed from: H */
    public final synchronized void m25653H() {
        this.f33361j++;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public synchronized void close() {
        int i = this.f33361j - 1;
        this.f33361j = i;
        if (i == 0) {
            this.f33356e.zzc();
        }
    }

    /* renamed from: f */
    public final pkp m25654f() {
        return this.f33356e;
    }

    @NonNull
    public List<ImageProperties> getContainedImageProperties() {
        return Collections.singletonList(this.f33356e.zzb());
    }

    public int getHeight() {
        return this.f33360i;
    }

    @NonNull
    public Internal getInternal() {
        return new Internal(this, null);
    }

    public int getRotation() {
        return this.f33357f;
    }

    public int getWidth() {
        return this.f33359h;
    }
}
