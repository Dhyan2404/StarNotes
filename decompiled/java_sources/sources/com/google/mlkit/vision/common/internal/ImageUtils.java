package com.google.mlkit.vision.common.internal;

import android.graphics.Bitmap;
import android.graphics.Matrix;
import android.media.Image;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.GmsLogger;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.mlkit.common.MlKitException;
import com.google.mlkit.vision.common.InputImage;
import java.nio.ByteBuffer;

@KeepForSdk
/* loaded from: classes6.dex */
public class ImageUtils {

    /* renamed from: a */
    public static final GmsLogger f36645a = new GmsLogger("MLKitImageUtils", "");

    /* renamed from: b */
    public static final ImageUtils f36646b = new ImageUtils();

    @NonNull
    @KeepForSdk
    public static ImageUtils getInstance() {
        return f36646b;
    }

    @NonNull
    @KeepForSdk
    public IObjectWrapper getImageDataWrapper(@NonNull InputImage inputImage) throws MlKitException {
        int format = inputImage.getFormat();
        if (format == -1) {
            return ObjectWrapper.wrap((Bitmap) Preconditions.checkNotNull(inputImage.getBitmapInternal()));
        }
        if (format != 17) {
            if (format == 35) {
                return ObjectWrapper.wrap(inputImage.getMediaImage());
            }
            if (format != 842094169) {
                throw new MlKitException("Unsupported image format: " + inputImage.getFormat(), 3);
            }
        }
        return ObjectWrapper.wrap((ByteBuffer) Preconditions.checkNotNull(inputImage.getByteBuffer()));
    }

    @KeepForSdk
    public int getMobileVisionImageFormat(@NonNull InputImage inputImage) {
        return inputImage.getFormat();
    }

    @KeepForSdk
    public int getMobileVisionImageSize(@NonNull InputImage inputImage) {
        if (inputImage.getFormat() == -1) {
            return ((Bitmap) Preconditions.checkNotNull(inputImage.getBitmapInternal())).getAllocationByteCount();
        }
        if (inputImage.getFormat() == 17 || inputImage.getFormat() == 842094169) {
            return ((ByteBuffer) Preconditions.checkNotNull(inputImage.getByteBuffer())).limit();
        }
        if (inputImage.getFormat() != 35) {
            return 0;
        }
        return (((Image.Plane[]) Preconditions.checkNotNull(inputImage.getPlanes()))[0].getBuffer().limit() * 3) / 2;
    }

    @Nullable
    @KeepForSdk
    public Matrix getUprightRotationMatrix(int i, int i2, int i3) {
        if (i3 == 0) {
            return null;
        }
        Matrix matrix = new Matrix();
        matrix.postTranslate((-i) / 2.0f, (-i2) / 2.0f);
        matrix.postRotate(i3 * 90);
        int i4 = i3 % 2;
        int i5 = i4 != 0 ? i2 : i;
        if (i4 == 0) {
            i = i2;
        }
        matrix.postTranslate(i5 / 2.0f, i / 2.0f);
        return matrix;
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0085  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x00b3 A[Catch: FileNotFoundException -> 0x00ca, TryCatch #5 {FileNotFoundException -> 0x00ca, blocks: (B:3:0x0004, B:5:0x000a, B:7:0x0018, B:9:0x006d, B:10:0x0082, B:13:0x00b3, B:15:0x00bd, B:20:0x0087, B:22:0x008b, B:23:0x0092, B:24:0x0096, B:25:0x009d, B:26:0x00a1, B:27:0x00a8, B:36:0x0067, B:41:0x0055, B:58:0x00c2, B:59:0x00c9), top: B:2:0x0004 }] */
    /* JADX WARN: Removed duplicated region for block: B:19:? A[ADDED_TO_REGION, RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0087 A[Catch: FileNotFoundException -> 0x00ca, TryCatch #5 {FileNotFoundException -> 0x00ca, blocks: (B:3:0x0004, B:5:0x000a, B:7:0x0018, B:9:0x006d, B:10:0x0082, B:13:0x00b3, B:15:0x00bd, B:20:0x0087, B:22:0x008b, B:23:0x0092, B:24:0x0096, B:25:0x009d, B:26:0x00a1, B:27:0x00a8, B:36:0x0067, B:41:0x0055, B:58:0x00c2, B:59:0x00c9), top: B:2:0x0004 }] */
    /* JADX WARN: Removed duplicated region for block: B:22:0x008b A[Catch: FileNotFoundException -> 0x00ca, TryCatch #5 {FileNotFoundException -> 0x00ca, blocks: (B:3:0x0004, B:5:0x000a, B:7:0x0018, B:9:0x006d, B:10:0x0082, B:13:0x00b3, B:15:0x00bd, B:20:0x0087, B:22:0x008b, B:23:0x0092, B:24:0x0096, B:25:0x009d, B:26:0x00a1, B:27:0x00a8, B:36:0x0067, B:41:0x0055, B:58:0x00c2, B:59:0x00c9), top: B:2:0x0004 }] */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0092 A[Catch: FileNotFoundException -> 0x00ca, TryCatch #5 {FileNotFoundException -> 0x00ca, blocks: (B:3:0x0004, B:5:0x000a, B:7:0x0018, B:9:0x006d, B:10:0x0082, B:13:0x00b3, B:15:0x00bd, B:20:0x0087, B:22:0x008b, B:23:0x0092, B:24:0x0096, B:25:0x009d, B:26:0x00a1, B:27:0x00a8, B:36:0x0067, B:41:0x0055, B:58:0x00c2, B:59:0x00c9), top: B:2:0x0004 }] */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0096 A[Catch: FileNotFoundException -> 0x00ca, TryCatch #5 {FileNotFoundException -> 0x00ca, blocks: (B:3:0x0004, B:5:0x000a, B:7:0x0018, B:9:0x006d, B:10:0x0082, B:13:0x00b3, B:15:0x00bd, B:20:0x0087, B:22:0x008b, B:23:0x0092, B:24:0x0096, B:25:0x009d, B:26:0x00a1, B:27:0x00a8, B:36:0x0067, B:41:0x0055, B:58:0x00c2, B:59:0x00c9), top: B:2:0x0004 }] */
    /* JADX WARN: Removed duplicated region for block: B:25:0x009d A[Catch: FileNotFoundException -> 0x00ca, TryCatch #5 {FileNotFoundException -> 0x00ca, blocks: (B:3:0x0004, B:5:0x000a, B:7:0x0018, B:9:0x006d, B:10:0x0082, B:13:0x00b3, B:15:0x00bd, B:20:0x0087, B:22:0x008b, B:23:0x0092, B:24:0x0096, B:25:0x009d, B:26:0x00a1, B:27:0x00a8, B:36:0x0067, B:41:0x0055, B:58:0x00c2, B:59:0x00c9), top: B:2:0x0004 }] */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00a1 A[Catch: FileNotFoundException -> 0x00ca, TryCatch #5 {FileNotFoundException -> 0x00ca, blocks: (B:3:0x0004, B:5:0x000a, B:7:0x0018, B:9:0x006d, B:10:0x0082, B:13:0x00b3, B:15:0x00bd, B:20:0x0087, B:22:0x008b, B:23:0x0092, B:24:0x0096, B:25:0x009d, B:26:0x00a1, B:27:0x00a8, B:36:0x0067, B:41:0x0055, B:58:0x00c2, B:59:0x00c9), top: B:2:0x0004 }] */
    /* JADX WARN: Removed duplicated region for block: B:27:0x00a8 A[Catch: FileNotFoundException -> 0x00ca, TryCatch #5 {FileNotFoundException -> 0x00ca, blocks: (B:3:0x0004, B:5:0x000a, B:7:0x0018, B:9:0x006d, B:10:0x0082, B:13:0x00b3, B:15:0x00bd, B:20:0x0087, B:22:0x008b, B:23:0x0092, B:24:0x0096, B:25:0x009d, B:26:0x00a1, B:27:0x00a8, B:36:0x0067, B:41:0x0055, B:58:0x00c2, B:59:0x00c9), top: B:2:0x0004 }] */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0066  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0067 A[Catch: FileNotFoundException -> 0x00ca, TryCatch #5 {FileNotFoundException -> 0x00ca, blocks: (B:3:0x0004, B:5:0x000a, B:7:0x0018, B:9:0x006d, B:10:0x0082, B:13:0x00b3, B:15:0x00bd, B:20:0x0087, B:22:0x008b, B:23:0x0092, B:24:0x0096, B:25:0x009d, B:26:0x00a1, B:27:0x00a8, B:36:0x0067, B:41:0x0055, B:58:0x00c2, B:59:0x00c9), top: B:2:0x0004 }] */
    @androidx.annotation.NonNull
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.graphics.Bitmap zza(@androidx.annotation.NonNull android.content.ContentResolver r10, @androidx.annotation.NonNull android.net.Uri r11) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 238
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.mlkit.vision.common.internal.ImageUtils.zza(android.content.ContentResolver, android.net.Uri):android.graphics.Bitmap");
    }
}
