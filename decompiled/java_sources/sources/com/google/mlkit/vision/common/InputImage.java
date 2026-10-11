package com.google.mlkit.vision.common;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Matrix;
import android.media.Image;
import android.net.Uri;
import android.os.SystemClock;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.mlkit_vision_common.zzms;
import com.google.android.gms.internal.mlkit_vision_common.zzmu;
import com.google.mlkit.common.sdkinternal.MLTaskInput;
import com.google.mlkit.vision.common.internal.ImageConvertUtils;
import com.google.mlkit.vision.common.internal.ImageUtils;
import com.sunia.HTREnginev2.rhp;
import java.io.IOException;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.nio.ByteBuffer;
import javax.annotation.concurrent.Immutable;

@Immutable
/* loaded from: classes6.dex */
public class InputImage implements MLTaskInput {

    @KeepForSdk
    public static final int IMAGE_FORMAT_BITMAP = -1;
    public static final int IMAGE_FORMAT_NV21 = 17;
    public static final int IMAGE_FORMAT_YUV_420_888 = 35;
    public static final int IMAGE_FORMAT_YV12 = 842094169;

    /* renamed from: a */
    @Nullable
    public volatile Bitmap f36632a;

    /* renamed from: b */
    @Nullable
    public volatile ByteBuffer f36633b;

    /* renamed from: c */
    @Nullable
    public volatile rhp f36634c;

    /* renamed from: d */
    public final int f36635d;

    /* renamed from: e */
    public final int f36636e;

    /* renamed from: f */
    public final int f36637f;

    /* renamed from: g */
    @ImageFormat
    public final int f36638g;

    /* renamed from: h */
    @Nullable
    public final Matrix f36639h;

    @Retention(RetentionPolicy.CLASS)
    /* loaded from: classes6.dex */
    public @interface ImageFormat {
    }

    public InputImage(@NonNull Bitmap bitmap, int i) {
        this.f36632a = (Bitmap) Preconditions.checkNotNull(bitmap);
        this.f36635d = bitmap.getWidth();
        this.f36636e = bitmap.getHeight();
        m28565a(i);
        this.f36637f = i;
        this.f36638g = -1;
        this.f36639h = null;
    }

    /* renamed from: a */
    public static int m28565a(int i) {
        boolean z = true;
        if (i != 0 && i != 90 && i != 180) {
            if (i == 270) {
                i = 270;
            } else {
                z = false;
            }
        }
        Preconditions.checkArgument(z, "Invalid rotation. Only 0, 90, 180, 270 are supported currently.");
        return i;
    }

    /* renamed from: b */
    public static InputImage m28566b(@NonNull Image image, int i, @Nullable Matrix matrix) {
        InputImage inputImage;
        int limit;
        long elapsedRealtime = SystemClock.elapsedRealtime();
        Preconditions.checkNotNull(image, "Please provide a valid image");
        m28565a(i);
        boolean z = true;
        if (image.getFormat() != 256 && image.getFormat() != 35) {
            z = false;
        }
        Preconditions.checkArgument(z, "Only JPEG and YUV_420_888 are supported now");
        Image.Plane[] planes = image.getPlanes();
        if (image.getFormat() == 256) {
            limit = image.getPlanes()[0].getBuffer().limit();
            inputImage = new InputImage(ImageConvertUtils.getInstance().convertJpegToUpRightBitmap(image, i), 0);
        } else {
            for (Image.Plane plane : planes) {
                if (plane.getBuffer() != null) {
                    plane.getBuffer().rewind();
                }
            }
            inputImage = new InputImage(image, image.getWidth(), image.getHeight(), i, matrix);
            limit = (image.getPlanes()[0].getBuffer().limit() * 3) / 2;
        }
        int i2 = limit;
        InputImage inputImage2 = inputImage;
        m28567c(image.getFormat(), 5, elapsedRealtime, image.getHeight(), image.getWidth(), i2, i);
        return inputImage2;
    }

    /* renamed from: c */
    public static void m28567c(int i, int i2, long j, int i3, int i4, int i5, int i6) {
        zzmu.zza(zzms.zzb("vision-common"), i, i2, j, i3, i4, i5, i6);
    }

    @NonNull
    public static InputImage fromBitmap(@NonNull Bitmap bitmap, int i) {
        long elapsedRealtime = SystemClock.elapsedRealtime();
        InputImage inputImage = new InputImage(bitmap, i);
        m28567c(-1, 1, elapsedRealtime, bitmap.getHeight(), bitmap.getWidth(), bitmap.getAllocationByteCount(), i);
        return inputImage;
    }

    @NonNull
    public static InputImage fromByteArray(@NonNull byte[] bArr, int i, int i2, int i3, @ImageFormat int i4) {
        long elapsedRealtime = SystemClock.elapsedRealtime();
        InputImage inputImage = new InputImage(ByteBuffer.wrap((byte[]) Preconditions.checkNotNull(bArr)), i, i2, i3, i4);
        m28567c(i4, 2, elapsedRealtime, i2, i, bArr.length, i3);
        return inputImage;
    }

    @NonNull
    public static InputImage fromByteBuffer(@NonNull ByteBuffer byteBuffer, int i, int i2, int i3, @ImageFormat int i4) {
        long elapsedRealtime = SystemClock.elapsedRealtime();
        InputImage inputImage = new InputImage(byteBuffer, i, i2, i3, i4);
        m28567c(i4, 3, elapsedRealtime, i2, i, byteBuffer.limit(), i3);
        return inputImage;
    }

    @NonNull
    public static InputImage fromFilePath(@NonNull Context context, @NonNull Uri uri) throws IOException {
        Preconditions.checkNotNull(context, "Please provide a valid Context");
        Preconditions.checkNotNull(uri, "Please provide a valid imageUri");
        long elapsedRealtime = SystemClock.elapsedRealtime();
        Bitmap zza = ImageUtils.getInstance().zza(context.getContentResolver(), uri);
        InputImage inputImage = new InputImage(zza, 0);
        m28567c(-1, 4, elapsedRealtime, zza.getHeight(), zza.getWidth(), zza.getAllocationByteCount(), 0);
        return inputImage;
    }

    @NonNull
    public static InputImage fromMediaImage(@NonNull Image image, int i) {
        return m28566b(image, i, null);
    }

    @Nullable
    @KeepForSdk
    public Bitmap getBitmapInternal() {
        return this.f36632a;
    }

    @Nullable
    @KeepForSdk
    public ByteBuffer getByteBuffer() {
        return this.f36633b;
    }

    @Nullable
    @KeepForSdk
    public Matrix getCoordinatesMatrix() {
        return this.f36639h;
    }

    @KeepForSdk
    @ImageFormat
    public int getFormat() {
        return this.f36638g;
    }

    @KeepForSdk
    public int getHeight() {
        return this.f36636e;
    }

    @Nullable
    @KeepForSdk
    public Image getMediaImage() {
        if (this.f36634c == null) {
            return null;
        }
        return this.f36634c.m56954a();
    }

    @Nullable
    @KeepForSdk
    public Image.Plane[] getPlanes() {
        if (this.f36634c == null) {
            return null;
        }
        return this.f36634c.m56955b();
    }

    @KeepForSdk
    public int getRotationDegrees() {
        return this.f36637f;
    }

    @KeepForSdk
    public int getWidth() {
        return this.f36635d;
    }

    @NonNull
    @KeepForSdk
    public static InputImage fromMediaImage(@NonNull Image image, int i, @NonNull Matrix matrix) {
        Preconditions.checkArgument(image.getFormat() == 35, "Only YUV_420_888 is supported now");
        return m28566b(image, i, matrix);
    }

    public InputImage(@NonNull Image image, int i, int i2, int i3, @Nullable Matrix matrix) {
        Preconditions.checkNotNull(image);
        this.f36634c = new rhp(image);
        this.f36635d = i;
        this.f36636e = i2;
        m28565a(i3);
        this.f36637f = i3;
        this.f36638g = 35;
        this.f36639h = matrix;
    }

    /* JADX WARN: Removed duplicated region for block: B:9:0x0026  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public InputImage(@androidx.annotation.NonNull java.nio.ByteBuffer r5, int r6, int r7, int r8, @com.google.mlkit.vision.common.InputImage.ImageFormat int r9) {
        /*
            r4 = this;
            r4.<init>()
            r0 = 842094169(0x32315659, float:1.0322389E-8)
            r1 = 0
            r2 = 1
            if (r9 == r0) goto L12
            r0 = 17
            if (r9 != r0) goto L10
            r9 = r0
            goto L12
        L10:
            r0 = r1
            goto L13
        L12:
            r0 = r2
        L13:
            com.google.android.gms.common.internal.Preconditions.checkArgument(r0)
            java.lang.Object r0 = com.google.android.gms.common.internal.Preconditions.checkNotNull(r5)
            java.nio.ByteBuffer r0 = (java.nio.ByteBuffer) r0
            r4.f36633b = r0
            int r0 = r5.limit()
            int r3 = r6 * r7
            if (r0 <= r3) goto L27
            r1 = r2
        L27:
            java.lang.String r0 = "Image dimension, ByteBuffer size and format don't match. Please check if the ByteBuffer is in the decalred format."
            com.google.android.gms.common.internal.Preconditions.checkArgument(r1, r0)
            r5.rewind()
            r4.f36635d = r6
            r4.f36636e = r7
            m28565a(r8)
            r4.f36637f = r8
            r4.f36638g = r9
            r5 = 0
            r4.f36639h = r5
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.mlkit.vision.common.InputImage.<init>(java.nio.ByteBuffer, int, int, int, int):void");
    }
}
