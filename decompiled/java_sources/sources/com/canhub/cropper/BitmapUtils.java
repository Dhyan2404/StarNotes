package com.canhub.cropper;

import android.content.ContentResolver;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.BitmapRegionDecoder;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.RectF;
import android.net.Uri;
import android.os.Build;
import android.os.Environment;
import android.util.Log;
import android.util.Pair;
import androidx.exifinterface.media.ExifInterface;
import com.canhub.cropper.CropException;
import com.canhub.cropper.CropImageView;
import com.canhub.cropper.utils.GetUriForFileKt;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.exoplayer2.util.FileTypes;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.replicator.note.data.point.PointConstant;
import com.onyx.galaxy.note.message.data.MessageConst;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.lang.ref.WeakReference;
import javax.microedition.khronos.egl.EGL;
import javax.microedition.khronos.egl.EGL10;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.egl.EGLContext;
import javax.microedition.khronos.egl.EGLDisplay;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.io.CloseableKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.math.MathKt__MathJVMKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u0094\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0014\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u0007\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0014\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u000e\bÀ\u0002\u0018\u00002\u00020\u0001:\u0002pqB\t\b\u0002¢\u0006\u0004\bn\u0010oJR\u0010\u0010\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\n\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u000e\u001a\u00020\b2\u0006\u0010\u000f\u001a\u00020\bH\u0002J \u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\n\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\u0006H\u0002J\u0018\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0018\u001a\u00020\u0017H\u0002Jx\u0010\"\u001a\u00020!2\u0006\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u001b\u001a\u00020\u00192\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u001c\u001a\u00020\u00062\u0006\u0010\u001d\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\n\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\u00062\u0006\u0010\u001e\u001a\u00020\u00062\u0006\u0010\u001f\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\b2\u0006\u0010\u000f\u001a\u00020\b2\u0006\u0010 \u001a\u00020\u0006H\u0002Jp\u0010%\u001a\u00020!2\u0006\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u001b\u001a\u00020\u00192\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\n\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\u00062\u0006\u0010 \u001a\u00020\u00062\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010#\u001a\u00020\u00062\u0006\u0010$\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\b2\u0006\u0010\u000f\u001a\u00020\bH\u0002J\u0018\u0010*\u001a\u00020)2\u0006\u0010'\u001a\u00020&2\u0006\u0010(\u001a\u00020\u0019H\u0002J\"\u0010,\u001a\u0004\u0018\u00010\u00022\u0006\u0010'\u001a\u00020&2\u0006\u0010(\u001a\u00020\u00192\u0006\u0010+\u001a\u00020)H\u0002J8\u0010-\u001a\u00020!2\u0006\u0010\u0016\u001a\u00020\u00152\u0006\u0010(\u001a\u00020\u00192\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u001e\u001a\u00020\u00062\u0006\u0010\u001f\u001a\u00020\u00062\u0006\u0010 \u001a\u00020\u0006H\u0002JD\u0010.\u001a\u0004\u0018\u00010\u00022\b\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\n\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\u0006H\u0002J(\u0010/\u001a\u00020\u00062\u0006\u0010#\u001a\u00020\u00062\u0006\u0010$\u001a\u00020\u00062\u0006\u0010\u001e\u001a\u00020\u00062\u0006\u0010\u001f\u001a\u00020\u0006H\u0002J\u0018\u00100\u001a\u00020\u00062\u0006\u0010#\u001a\u00020\u00062\u0006\u0010$\u001a\u00020\u0006H\u0002J(\u00102\u001a\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u00101\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\b2\u0006\u0010\u000f\u001a\u00020\bH\u0002J \u00104\u001a\u0002032\b\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0016\u001a\u00020\u00152\u0006\u0010(\u001a\u00020\u0019J\u0018\u00104\u001a\u0002032\b\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0006\u00106\u001a\u000205J&\u00107\u001a\u00020!2\u0006\u0010\u0016\u001a\u00020\u00152\u0006\u0010(\u001a\u00020\u00192\u0006\u0010\u001e\u001a\u00020\u00062\u0006\u0010\u001f\u001a\u00020\u0006JH\u00108\u001a\u00020!2\b\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\n\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\b2\u0006\u0010\u000f\u001a\u00020\bJp\u00109\u001a\u00020!2\u0006\u0010\u0016\u001a\u00020\u00152\b\u0010\u001b\u001a\u0004\u0018\u00010\u00192\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u001c\u001a\u00020\u00062\u0006\u0010\u001d\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\n\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\u00062\u0006\u0010\u001e\u001a\u00020\u00062\u0006\u0010\u001f\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\b2\u0006\u0010\u000f\u001a\u00020\bJ\u000e\u0010;\u001a\u00020\f2\u0006\u0010:\u001a\u00020\u0004J\u000e\u0010<\u001a\u00020\f2\u0006\u0010:\u001a\u00020\u0004J\u000e\u0010=\u001a\u00020\f2\u0006\u0010:\u001a\u00020\u0004J\u000e\u0010>\u001a\u00020\f2\u0006\u0010:\u001a\u00020\u0004J\u000e\u0010?\u001a\u00020\f2\u0006\u0010:\u001a\u00020\u0004J\u000e\u0010@\u001a\u00020\f2\u0006\u0010:\u001a\u00020\u0004J\u000e\u0010A\u001a\u00020\f2\u0006\u0010:\u001a\u00020\u0004J\u000e\u0010B\u001a\u00020\f2\u0006\u0010:\u001a\u00020\u0004J6\u0010E\u001a\u00020\u00112\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010C\u001a\u00020\u00062\u0006\u0010D\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\n\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\u0006J$\u0010G\u001a\u0004\u0018\u00010\u00192\u0006\u0010\u0016\u001a\u00020\u00152\b\u0010\u0003\u001a\u0004\u0018\u00010\u00022\b\u0010F\u001a\u0004\u0018\u00010\u0019J0\u0010I\u001a\u00020\u00192\u0006\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0018\u001a\u00020\u00172\u0006\u0010H\u001a\u00020\u00062\b\u0010F\u001a\u0004\u0018\u00010\u0019J(\u0010K\u001a\u00020\u00022\b\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u001e\u001a\u00020\u00062\u0006\u0010\u001f\u001a\u00020\u00062\u0006\u0010+\u001a\u00020JR\u0017\u0010O\u001a\u00020\u00118\u0006¢\u0006\f\n\u0004\b\u001a\u0010L\u001a\u0004\bM\u0010NR\u0017\u0010T\u001a\u00020P8\u0006¢\u0006\f\n\u0004\b0\u0010Q\u001a\u0004\bR\u0010SR\u0014\u0010V\u001a\u00020\u00068\u0002X\u0082T¢\u0006\u0006\n\u0004\b/\u0010UR\u0014\u0010Y\u001a\u00020W8\u0002X\u0082T¢\u0006\u0006\n\u0004\b\"\u0010XR\u0017\u0010[\u001a\u00020P8\u0006¢\u0006\f\n\u0004\b%\u0010Q\u001a\u0004\bZ\u0010SR\u0017\u0010_\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b\u0010\u0010\\\u001a\u0004\b]\u0010^R\u0017\u0010a\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b.\u0010\\\u001a\u0004\b`\u0010^R\u0016\u0010b\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b,\u0010UR6\u0010j\u001a\u0016\u0012\u0004\u0012\u00020W\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00020d\u0018\u00010c8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b*\u0010e\u001a\u0004\bf\u0010g\"\u0004\bh\u0010iR\u0014\u0010m\u001a\u00020\u00068BX\u0082\u0004¢\u0006\u0006\u001a\u0004\bk\u0010l¨\u0006r"}, m61528d2 = {"Lcom/canhub/cropper/BitmapUtils;", "", "Landroid/graphics/Bitmap;", "bitmap", "", "cropPoints", "", "degreesRotated", "", "fixAspectRatio", "aspectRatioX", "aspectRatioY", "", "scale", "flipHorizontally", "flipVertically", C6997f.f39671c, "Landroid/graphics/Rect;", "rect", "", C4921e.f26537n, "Landroid/content/Context;", "context", "Landroid/graphics/Bitmap$CompressFormat;", "compressFormat", "Landroid/net/Uri;", "a", "loadedImageUri", "orgWidth", "orgHeight", "reqWidth", "reqHeight", "sampleMulti", "Lcom/canhub/cropper/BitmapUtils$BitmapSampled;", "d", "width", "height", "e", "Landroid/content/ContentResolver;", "resolver", "uri", "Landroid/graphics/BitmapFactory$Options;", "i", "options", C6999h.f39688c, "j", C6998g.f39679a, "c", "b", "degrees", "m", "Lcom/canhub/cropper/BitmapUtils$RotateBitmapResult;", "orientateBitmapByExif", "Landroidx/exifinterface/media/ExifInterface;", "exif", "decodeSampledBitmap", "cropBitmapObjectHandleOOM", "cropBitmap", PointConstant.POINT_FILE_END, "getRectLeft", "getRectTop", "getRectRight", "getRectBottom", "getRectWidth", "getRectHeight", "getRectCenterX", "getRectCenterY", MessageConst.KEY_IMAGE_WIDTH, MessageConst.KEY_IMAGE_HEIGHT, "getRectFromPoints", "customOutputUri", "writeTempStateStoreBitmap", "compressQuality", "writeBitmapToUri", "Lcom/canhub/cropper/CropImageView$RequestSizeOptions;", "resizeBitmap", "Landroid/graphics/Rect;", "getEMPTY_RECT", "()Landroid/graphics/Rect;", "EMPTY_RECT", "Landroid/graphics/RectF;", "Landroid/graphics/RectF;", "getEMPTY_RECT_F", "()Landroid/graphics/RectF;", "EMPTY_RECT_F", "I", "IMAGE_MAX_BITMAP_DIMENSION", "", Constants.STRING_SIG, "WRITE_AND_TRUNCATE", "getRECT", "RECT", "[F", "getPOINTS", "()[F", "POINTS", "getPOINTS2", "POINTS2", "mMaxTextureSize", "Landroid/util/Pair;", "Ljava/lang/ref/WeakReference;", "Landroid/util/Pair;", "getMStateBitmap", "()Landroid/util/Pair;", "setMStateBitmap", "(Landroid/util/Pair;)V", "mStateBitmap", "l", "()I", "maxTextureSize", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "BitmapSampled", "RotateBitmapResult", "cropper_release"}, m61529k = 1, m61530mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class BitmapUtils {

    /* renamed from: c, reason: from kotlin metadata */
    public static final int IMAGE_MAX_BITMAP_DIMENSION = 2048;

    /* renamed from: d, reason: from kotlin metadata */
    @NotNull
    public static final String WRITE_AND_TRUNCATE = "wt";

    /* renamed from: h, reason: from kotlin metadata */
    public static int mMaxTextureSize;

    /* renamed from: i, reason: from kotlin metadata */
    @Nullable
    public static Pair<String, WeakReference<Bitmap>> mStateBitmap;

    @NotNull
    public static final BitmapUtils INSTANCE = new BitmapUtils();

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public static final Rect EMPTY_RECT = new Rect();

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public static final RectF EMPTY_RECT_F = new RectF();

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public static final RectF RECT = new RectF();

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public static final float[] POINTS = new float[6];

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public static final float[] POINTS2 = new float[6];

    @Metadata(m61527d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\b\b\u0000\u0018\u00002\u00020\u0001B\u0019\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\r\u001a\u00020\b¢\u0006\u0004\b\u000e\u0010\u000fR\u0019\u0010\u0007\u001a\u0004\u0018\u00010\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006R\u0017\u0010\r\u001a\u00020\b8\u0006¢\u0006\f\n\u0004\b\t\u0010\n\u001a\u0004\b\u000b\u0010\f¨\u0006\u0010"}, m61528d2 = {"Lcom/canhub/cropper/BitmapUtils$BitmapSampled;", "", "Landroid/graphics/Bitmap;", "a", "Landroid/graphics/Bitmap;", "getBitmap", "()Landroid/graphics/Bitmap;", "bitmap", "", "b", "I", "getSampleSize", "()I", "sampleSize", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Landroid/graphics/Bitmap;I)V", "cropper_release"}, m61529k = 1, m61530mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class BitmapSampled {

        /* renamed from: a, reason: from kotlin metadata */
        @Nullable
        public final Bitmap bitmap;

        /* renamed from: b, reason: from kotlin metadata */
        public final int sampleSize;

        public BitmapSampled(@Nullable Bitmap bitmap, int i) {
            this.bitmap = bitmap;
            this.sampleSize = i;
        }

        @Nullable
        public final Bitmap getBitmap() {
            return this.bitmap;
        }

        public final int getSampleSize() {
            return this.sampleSize;
        }
    }

    @Metadata(m61527d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u000b\b\u0000\u0018\u00002\u00020\u0001B)\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\r\u001a\u00020\b\u0012\u0006\u0010\u0013\u001a\u00020\u000e\u0012\u0006\u0010\u0016\u001a\u00020\u000e¢\u0006\u0004\b\u0017\u0010\u0018R\u0019\u0010\u0007\u001a\u0004\u0018\u00010\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006R\u0017\u0010\r\u001a\u00020\b8\u0006¢\u0006\f\n\u0004\b\t\u0010\n\u001a\u0004\b\u000b\u0010\fR\u0017\u0010\u0013\u001a\u00020\u000e8\u0006¢\u0006\f\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\u0011\u0010\u0012R\u0017\u0010\u0016\u001a\u00020\u000e8\u0006¢\u0006\f\n\u0004\b\u0014\u0010\u0010\u001a\u0004\b\u0015\u0010\u0012¨\u0006\u0019"}, m61528d2 = {"Lcom/canhub/cropper/BitmapUtils$RotateBitmapResult;", "", "Landroid/graphics/Bitmap;", "a", "Landroid/graphics/Bitmap;", "getBitmap", "()Landroid/graphics/Bitmap;", "bitmap", "", "b", "I", "getDegrees", "()I", "degrees", "", "c", Constants.HASIDCALL_INDEX_SIG, "getFlipHorizontally", Constants.BOOLEAN_VALUE_SIG, "flipHorizontally", "d", "getFlipVertically", "flipVertically", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Landroid/graphics/Bitmap;IZZ)V", "cropper_release"}, m61529k = 1, m61530mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class RotateBitmapResult {

        /* renamed from: a, reason: from kotlin metadata */
        @Nullable
        public final Bitmap bitmap;

        /* renamed from: b, reason: from kotlin metadata */
        public final int degrees;

        /* renamed from: c, reason: from kotlin metadata */
        public final boolean flipHorizontally;

        /* renamed from: d, reason: from kotlin metadata */
        public final boolean flipVertically;

        public RotateBitmapResult(@Nullable Bitmap bitmap, int i, boolean z, boolean z2) {
            this.bitmap = bitmap;
            this.degrees = i;
            this.flipHorizontally = z;
            this.flipVertically = z2;
        }

        @Nullable
        public final Bitmap getBitmap() {
            return this.bitmap;
        }

        public final int getDegrees() {
            return this.degrees;
        }

        public final boolean getFlipHorizontally() {
            return this.flipHorizontally;
        }

        public final boolean getFlipVertically() {
            return this.flipVertically;
        }
    }

    @Metadata(m61529k = 3, m61530mv = {1, 7, 1}, m61532xi = 48)
    /* loaded from: classes3.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[Bitmap.CompressFormat.values().length];
            try {
                iArr[Bitmap.CompressFormat.JPEG.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[Bitmap.CompressFormat.PNG.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* renamed from: a */
    public final Uri m9211a(Context context, Bitmap.CompressFormat compressFormat) {
        Uri uriForFile;
        try {
            int i = WhenMappings.$EnumSwitchMapping$0[compressFormat.ordinal()];
            String str = i != 1 ? i != 2 ? ".webp" : ".png" : FileTypes.f28310C;
            try {
                File file = File.createTempFile("cropped", str, context.getExternalFilesDir(Environment.DIRECTORY_PICTURES));
                Intrinsics.checkNotNullExpressionValue(file, "file");
                uriForFile = GetUriForFileKt.getUriForFile(context, file);
            } catch (Exception e) {
                Log.e("AIC", String.valueOf(e.getMessage()));
                File file2 = File.createTempFile("cropped", str, context.getCacheDir());
                Intrinsics.checkNotNullExpressionValue(file2, "file");
                uriForFile = GetUriForFileKt.getUriForFile(context, file2);
            }
            Intrinsics.checkNotNullExpressionValue(uriForFile, "{\n      val ext = when (….cacheDir))\n      }\n    }");
            return uriForFile;
        } catch (IOException e2) {
            throw new RuntimeException("Failed to create temp file for output image", e2);
        }
    }

    /* renamed from: b */
    public final int m9212b(int width, int height) {
        if (mMaxTextureSize == 0) {
            mMaxTextureSize = m9222l();
        }
        int i = 1;
        if (mMaxTextureSize > 0) {
            while (true) {
                int i2 = height / i;
                int i3 = mMaxTextureSize;
                if (i2 <= i3 && width / i <= i3) {
                    break;
                }
                i *= 2;
            }
        }
        return i;
    }

    /* renamed from: c */
    public final int m9213c(int width, int height, int reqWidth, int reqHeight) {
        int i = 1;
        if (height > reqHeight || width > reqWidth) {
            while ((height / 2) / i > reqHeight && (width / 2) / i > reqWidth) {
                i *= 2;
            }
        }
        return i;
    }

    @NotNull
    public final BitmapSampled cropBitmap(@NotNull Context context, @Nullable Uri loadedImageUri, @NotNull float[] cropPoints, int degreesRotated, int orgWidth, int orgHeight, boolean fixAspectRatio, int aspectRatioX, int aspectRatioY, int reqWidth, int reqHeight, boolean flipHorizontally, boolean flipVertically) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(cropPoints, "cropPoints");
        int i = 1;
        while (true) {
            try {
                Intrinsics.checkNotNull(loadedImageUri);
                return m9214d(context, loadedImageUri, cropPoints, degreesRotated, orgWidth, orgHeight, fixAspectRatio, aspectRatioX, aspectRatioY, reqWidth, reqHeight, flipHorizontally, flipVertically, i);
            } catch (OutOfMemoryError e) {
                int i2 = i * 2;
                if (i2 > 16) {
                    throw new RuntimeException("Failed to handle OOM by sampling (" + i2 + "): " + loadedImageUri + "\r\n" + e.getMessage(), e);
                }
                i = i2;
            }
        }
    }

    @NotNull
    public final BitmapSampled cropBitmapObjectHandleOOM(@Nullable Bitmap bitmap, @NotNull float[] cropPoints, int degreesRotated, boolean fixAspectRatio, int aspectRatioX, int aspectRatioY, boolean flipHorizontally, boolean flipVertically) {
        Intrinsics.checkNotNullParameter(cropPoints, "cropPoints");
        int i = 1;
        do {
            try {
                Intrinsics.checkNotNull(bitmap);
                return new BitmapSampled(m9216f(bitmap, cropPoints, degreesRotated, fixAspectRatio, aspectRatioX, aspectRatioY, 1 / i, flipHorizontally, flipVertically), i);
            } catch (OutOfMemoryError e) {
                i *= 2;
            }
        } while (i <= 8);
        throw e;
    }

    /* renamed from: d */
    public final BitmapSampled m9214d(Context context, Uri loadedImageUri, float[] cropPoints, int degreesRotated, int orgWidth, int orgHeight, boolean fixAspectRatio, int aspectRatioX, int aspectRatioY, int reqWidth, int reqHeight, boolean flipHorizontally, boolean flipVertically, int sampleMulti) {
        int i;
        Rect rectFromPoints = getRectFromPoints(cropPoints, orgWidth, orgHeight, fixAspectRatio, aspectRatioX, aspectRatioY);
        int width = reqWidth > 0 ? reqWidth : rectFromPoints.width();
        int height = reqHeight > 0 ? reqHeight : rectFromPoints.height();
        Bitmap bitmap = null;
        try {
            BitmapSampled m9220j = m9220j(context, loadedImageUri, rectFromPoints, width, height, sampleMulti);
            bitmap = m9220j.getBitmap();
            i = m9220j.getSampleSize();
        } catch (Exception unused) {
            i = 1;
        }
        int i2 = i;
        if (bitmap == null) {
            return m9215e(context, loadedImageUri, cropPoints, degreesRotated, fixAspectRatio, aspectRatioX, aspectRatioY, sampleMulti, rectFromPoints, width, height, flipHorizontally, flipVertically);
        }
        try {
            Bitmap m9223m = m9223m(bitmap, degreesRotated, flipHorizontally, flipVertically);
            try {
                if (degreesRotated % 90 != 0) {
                    m9223m = m9217g(m9223m, cropPoints, rectFromPoints, degreesRotated, fixAspectRatio, aspectRatioX, aspectRatioY);
                }
                return new BitmapSampled(m9223m, i2);
            } catch (OutOfMemoryError e) {
                e = e;
                bitmap = m9223m;
                bitmap.recycle();
                throw e;
            }
        } catch (OutOfMemoryError e2) {
            e = e2;
        }
    }

    @NotNull
    public final BitmapSampled decodeSampledBitmap(@NotNull Context context, @NotNull Uri uri, int reqWidth, int reqHeight) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(uri, "uri");
        try {
            ContentResolver resolver = context.getContentResolver();
            Intrinsics.checkNotNullExpressionValue(resolver, "resolver");
            BitmapFactory.Options m9219i = m9219i(resolver, uri);
            int i = m9219i.outWidth;
            if (i == -1 && m9219i.outHeight == -1) {
                throw new RuntimeException("File is not a picture");
            }
            m9219i.inSampleSize = Math.max(m9213c(i, m9219i.outHeight, reqWidth, reqHeight), m9212b(m9219i.outWidth, m9219i.outHeight));
            return new BitmapSampled(m9218h(resolver, uri, m9219i), m9219i.inSampleSize);
        } catch (Exception e) {
            throw new CropException.FailedToLoadBitmap(uri, e.getMessage());
        }
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: e */
    public final BitmapSampled m9215e(Context context, Uri loadedImageUri, float[] cropPoints, int degreesRotated, boolean fixAspectRatio, int aspectRatioX, int aspectRatioY, int sampleMulti, Rect rect, int width, int height, boolean flipHorizontally, boolean flipVertically) {
        Bitmap bitmap = null;
        try {
            BitmapFactory.Options options = new BitmapFactory.Options();
            int m9213c = sampleMulti * m9213c(rect.width(), rect.height(), width, height);
            options.inSampleSize = m9213c;
            ContentResolver contentResolver = context.getContentResolver();
            Intrinsics.checkNotNullExpressionValue(contentResolver, "context.contentResolver");
            Bitmap m9218h = m9218h(contentResolver, loadedImageUri, options);
            if (m9218h != null) {
                try {
                    int length = cropPoints.length;
                    float[] fArr = new float[length];
                    System.arraycopy(cropPoints, 0, fArr, 0, cropPoints.length);
                    for (int i = 0; i < length; i++) {
                        fArr[i] = fArr[i] / options.inSampleSize;
                    }
                    bitmap = m9216f(m9218h, fArr, degreesRotated, fixAspectRatio, aspectRatioX, aspectRatioY, 1.0f, flipHorizontally, flipVertically);
                    if (!Intrinsics.areEqual(bitmap, m9218h)) {
                        m9218h.recycle();
                    }
                } catch (Throwable th) {
                    if (!Intrinsics.areEqual((Object) null, m9218h)) {
                        m9218h.recycle();
                    }
                    throw th;
                }
            }
            return new BitmapSampled(bitmap, m9213c);
        } catch (Exception e) {
            throw new CropException.FailedToLoadBitmap(loadedImageUri, e.getMessage());
        } catch (OutOfMemoryError e2) {
            if (0 != 0) {
                bitmap.recycle();
            }
            throw e2;
        }
    }

    /* renamed from: f */
    public final Bitmap m9216f(Bitmap bitmap, float[] cropPoints, int degreesRotated, boolean fixAspectRatio, int aspectRatioX, int aspectRatioY, float scale, boolean flipHorizontally, boolean flipVertically) {
        float f = scale;
        Rect rectFromPoints = getRectFromPoints(cropPoints, bitmap.getWidth(), bitmap.getHeight(), fixAspectRatio, aspectRatioX, aspectRatioY);
        Matrix matrix = new Matrix();
        matrix.setRotate(degreesRotated, bitmap.getWidth() / 2.0f, bitmap.getHeight() / 2.0f);
        float f2 = flipHorizontally ? -f : f;
        if (flipVertically) {
            f = -f;
        }
        matrix.postScale(f2, f);
        Bitmap createBitmap = Bitmap.createBitmap(bitmap, rectFromPoints.left, rectFromPoints.top, rectFromPoints.width(), rectFromPoints.height(), matrix, true);
        if (Intrinsics.areEqual(createBitmap, bitmap)) {
            createBitmap = bitmap.copy(bitmap.getConfig(), false);
        }
        Bitmap bitmap2 = createBitmap;
        return degreesRotated % 90 != 0 ? m9217g(bitmap2, cropPoints, rectFromPoints, degreesRotated, fixAspectRatio, aspectRatioX, aspectRatioY) : bitmap2;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x002c  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x008f  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0085 A[SYNTHETIC] */
    /* renamed from: g */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.graphics.Bitmap m9217g(android.graphics.Bitmap r14, float[] r15, android.graphics.Rect r16, int r17, boolean r18, int r19, int r20) {
        /*
            r13 = this;
            r0 = r14
            r1 = r15
            r2 = r16
            r3 = r17
            int r4 = r3 % 90
            if (r4 == 0) goto Lb6
            double r4 = (double) r3
            double r4 = java.lang.Math.toRadians(r4)
            r6 = 1
            r7 = 0
            r8 = 90
            if (r3 < r8) goto L26
            r8 = 181(0xb5, float:2.54E-43)
            if (r8 > r3) goto L1f
            r8 = 270(0x10e, float:3.78E-43)
            if (r3 >= r8) goto L1f
            r3 = r6
            goto L20
        L1f:
            r3 = r7
        L20:
            if (r3 == 0) goto L23
            goto L26
        L23:
            int r3 = r2.right
            goto L28
        L26:
            int r3 = r2.left
        L28:
            r8 = r7
        L29:
            int r9 = r1.length
            if (r8 >= r9) goto L85
            r9 = r1[r8]
            int r10 = r3 + (-1)
            float r10 = (float) r10
            int r10 = (r9 > r10 ? 1 : (r9 == r10 ? 0 : -1))
            if (r10 < 0) goto L82
            int r10 = r3 + 1
            float r10 = (float) r10
            int r9 = (r9 > r10 ? 1 : (r9 == r10 ? 0 : -1))
            if (r9 > 0) goto L82
            double r9 = java.lang.Math.sin(r4)
            int r3 = r2.bottom
            float r3 = (float) r3
            int r8 = r8 + r6
            r6 = r1[r8]
            float r3 = r3 - r6
            double r6 = (double) r3
            double r9 = r9 * r6
            double r6 = java.lang.Math.abs(r9)
            int r7 = (int) r6
            double r9 = java.lang.Math.cos(r4)
            r3 = r1[r8]
            int r6 = r2.top
            float r6 = (float) r6
            float r3 = r3 - r6
            double r11 = (double) r3
            double r9 = r9 * r11
            double r9 = java.lang.Math.abs(r9)
            int r3 = (int) r9
            r6 = r1[r8]
            int r9 = r2.top
            float r9 = (float) r9
            float r6 = r6 - r9
            double r9 = (double) r6
            double r11 = java.lang.Math.sin(r4)
            double r9 = r9 / r11
            double r9 = java.lang.Math.abs(r9)
            int r6 = (int) r9
            int r9 = r2.bottom
            float r9 = (float) r9
            r1 = r1[r8]
            float r9 = r9 - r1
            double r8 = (double) r9
            double r4 = java.lang.Math.cos(r4)
            double r8 = r8 / r4
            double r4 = java.lang.Math.abs(r8)
            int r1 = (int) r4
            goto L88
        L82:
            int r8 = r8 + 2
            goto L29
        L85:
            r1 = r7
            r3 = r1
            r6 = r3
        L88:
            int r6 = r6 + r7
            int r1 = r1 + r3
            r2.set(r7, r3, r6, r1)
            if (r18 == 0) goto L97
            r1 = r13
            r3 = r19
            r4 = r20
            r13.m9221k(r2, r3, r4)
        L97:
            kotlin.jvm.internal.Intrinsics.checkNotNull(r14)
            int r1 = r2.left
            int r3 = r2.top
            int r4 = r16.width()
            int r2 = r16.height()
            android.graphics.Bitmap r1 = android.graphics.Bitmap.createBitmap(r14, r1, r3, r4, r2)
            boolean r2 = kotlin.jvm.internal.Intrinsics.areEqual(r14, r1)
            if (r2 != 0) goto Lb5
            if (r0 == 0) goto Lb5
            r14.recycle()
        Lb5:
            r0 = r1
        Lb6:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.canhub.cropper.BitmapUtils.m9217g(android.graphics.Bitmap, float[], android.graphics.Rect, int, boolean, int, int):android.graphics.Bitmap");
    }

    @NotNull
    public final Rect getEMPTY_RECT() {
        return EMPTY_RECT;
    }

    @NotNull
    public final RectF getEMPTY_RECT_F() {
        return EMPTY_RECT_F;
    }

    @Nullable
    public final Pair<String, WeakReference<Bitmap>> getMStateBitmap() {
        return mStateBitmap;
    }

    @NotNull
    public final float[] getPOINTS() {
        return POINTS;
    }

    @NotNull
    public final float[] getPOINTS2() {
        return POINTS2;
    }

    @NotNull
    public final RectF getRECT() {
        return RECT;
    }

    public final float getRectBottom(@NotNull float[] points) {
        Intrinsics.checkNotNullParameter(points, "points");
        return Math.max(Math.max(Math.max(points[1], points[3]), points[5]), points[7]);
    }

    public final float getRectCenterX(@NotNull float[] points) {
        Intrinsics.checkNotNullParameter(points, "points");
        return (getRectRight(points) + getRectLeft(points)) / 2.0f;
    }

    public final float getRectCenterY(@NotNull float[] points) {
        Intrinsics.checkNotNullParameter(points, "points");
        return (getRectBottom(points) + getRectTop(points)) / 2.0f;
    }

    @NotNull
    public final Rect getRectFromPoints(@NotNull float[] cropPoints, int imageWidth, int imageHeight, boolean fixAspectRatio, int aspectRatioX, int aspectRatioY) {
        int roundToInt;
        int roundToInt2;
        int roundToInt3;
        int roundToInt4;
        Intrinsics.checkNotNullParameter(cropPoints, "cropPoints");
        roundToInt = MathKt__MathJVMKt.roundToInt(Math.max(0.0f, getRectLeft(cropPoints)));
        roundToInt2 = MathKt__MathJVMKt.roundToInt(Math.max(0.0f, getRectTop(cropPoints)));
        roundToInt3 = MathKt__MathJVMKt.roundToInt(Math.min(imageWidth, getRectRight(cropPoints)));
        roundToInt4 = MathKt__MathJVMKt.roundToInt(Math.min(imageHeight, getRectBottom(cropPoints)));
        Rect rect = new Rect(roundToInt, roundToInt2, roundToInt3, roundToInt4);
        if (fixAspectRatio) {
            m9221k(rect, aspectRatioX, aspectRatioY);
        }
        return rect;
    }

    public final float getRectHeight(@NotNull float[] points) {
        Intrinsics.checkNotNullParameter(points, "points");
        return getRectBottom(points) - getRectTop(points);
    }

    public final float getRectLeft(@NotNull float[] points) {
        Intrinsics.checkNotNullParameter(points, "points");
        return Math.min(Math.min(Math.min(points[0], points[2]), points[4]), points[6]);
    }

    public final float getRectRight(@NotNull float[] points) {
        Intrinsics.checkNotNullParameter(points, "points");
        return Math.max(Math.max(Math.max(points[0], points[2]), points[4]), points[6]);
    }

    public final float getRectTop(@NotNull float[] points) {
        Intrinsics.checkNotNullParameter(points, "points");
        return Math.min(Math.min(Math.min(points[1], points[3]), points[5]), points[7]);
    }

    public final float getRectWidth(@NotNull float[] points) {
        Intrinsics.checkNotNullParameter(points, "points");
        return getRectRight(points) - getRectLeft(points);
    }

    /* renamed from: h */
    public final Bitmap m9218h(ContentResolver resolver, Uri uri, BitmapFactory.Options options) throws FileNotFoundException {
        do {
            InputStream openInputStream = resolver.openInputStream(uri);
            try {
                try {
                    Bitmap decodeStream = BitmapFactory.decodeStream(openInputStream, EMPTY_RECT, options);
                    CloseableKt.closeFinally(openInputStream, null);
                    return decodeStream;
                } catch (OutOfMemoryError unused) {
                    options.inSampleSize *= 2;
                    Unit unit = Unit.INSTANCE;
                    CloseableKt.closeFinally(openInputStream, null);
                }
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    CloseableKt.closeFinally(openInputStream, th);
                    throw th2;
                }
            }
        } while (options.inSampleSize <= 512);
        throw new CropException.FailedToDecodeImage(uri);
    }

    /* renamed from: i */
    public final BitmapFactory.Options m9219i(ContentResolver resolver, Uri uri) throws FileNotFoundException {
        InputStream openInputStream = resolver.openInputStream(uri);
        try {
            BitmapFactory.Options options = new BitmapFactory.Options();
            options.inJustDecodeBounds = true;
            BitmapFactory.decodeStream(openInputStream, EMPTY_RECT, options);
            options.inJustDecodeBounds = false;
            CloseableKt.closeFinally(openInputStream, null);
            return options;
        } finally {
        }
    }

    /* renamed from: j */
    public final BitmapSampled m9220j(Context context, Uri uri, Rect rect, int reqWidth, int reqHeight, int sampleMulti) {
        BitmapRegionDecoder newInstance;
        int i;
        try {
            BitmapFactory.Options options = new BitmapFactory.Options();
            options.inSampleSize = sampleMulti * m9213c(rect.width(), rect.height(), reqWidth, reqHeight);
            InputStream openInputStream = context.getContentResolver().openInputStream(uri);
            try {
                if (Build.VERSION.SDK_INT >= 31) {
                    Intrinsics.checkNotNull(openInputStream);
                    newInstance = BitmapRegionDecoder.newInstance(openInputStream);
                } else {
                    Intrinsics.checkNotNull(openInputStream);
                    newInstance = BitmapRegionDecoder.newInstance(openInputStream, false);
                }
                do {
                    try {
                        try {
                            Intrinsics.checkNotNull(newInstance);
                            BitmapSampled bitmapSampled = new BitmapSampled(newInstance.decodeRegion(rect, options), options.inSampleSize);
                            newInstance.recycle();
                            CloseableKt.closeFinally(openInputStream, null);
                            return bitmapSampled;
                        } catch (OutOfMemoryError unused) {
                            i = options.inSampleSize * 2;
                            options.inSampleSize = i;
                        }
                    } catch (Throwable th) {
                        if (newInstance != null) {
                            newInstance.recycle();
                        }
                        throw th;
                    }
                } while (i <= 512);
                if (newInstance != null) {
                    newInstance.recycle();
                }
                Unit unit = Unit.INSTANCE;
                CloseableKt.closeFinally(openInputStream, null);
                return new BitmapSampled(null, 1);
            } finally {
            }
        } catch (Exception e) {
            throw new CropException.FailedToLoadBitmap(uri, e.getMessage());
        }
    }

    /* renamed from: k */
    public final void m9221k(Rect rect, int aspectRatioX, int aspectRatioY) {
        if (aspectRatioX != aspectRatioY || rect.width() == rect.height()) {
            return;
        }
        if (rect.height() > rect.width()) {
            rect.bottom -= rect.height() - rect.width();
        } else {
            rect.right -= rect.width() - rect.height();
        }
    }

    /* renamed from: l */
    public final int m9222l() {
        try {
            EGL egl = EGLContext.getEGL();
            Intrinsics.checkNotNull(egl, "null cannot be cast to non-null type javax.microedition.khronos.egl.EGL10");
            EGL10 egl10 = (EGL10) egl;
            EGLDisplay eglGetDisplay = egl10.eglGetDisplay(EGL10.EGL_DEFAULT_DISPLAY);
            egl10.eglInitialize(eglGetDisplay, new int[2]);
            int[] iArr = new int[1];
            egl10.eglGetConfigs(eglGetDisplay, null, 0, iArr);
            int i = iArr[0];
            EGLConfig[] eGLConfigArr = new EGLConfig[i];
            egl10.eglGetConfigs(eglGetDisplay, eGLConfigArr, i, iArr);
            int[] iArr2 = new int[1];
            int i2 = iArr[0];
            int i3 = 0;
            for (int i4 = 0; i4 < i2; i4++) {
                egl10.eglGetConfigAttrib(eglGetDisplay, eGLConfigArr[i4], 12332, iArr2);
                int i5 = iArr2[0];
                if (i3 < i5) {
                    i3 = i5;
                }
            }
            egl10.eglTerminate(eglGetDisplay);
            return Math.max(i3, 2048);
        } catch (Exception unused) {
            return 2048;
        }
    }

    /* renamed from: m */
    public final Bitmap m9223m(Bitmap bitmap, int degrees, boolean flipHorizontally, boolean flipVertically) {
        if (degrees <= 0 && !flipHorizontally && !flipVertically) {
            return bitmap;
        }
        Matrix matrix = new Matrix();
        matrix.setRotate(degrees);
        matrix.postScale(flipHorizontally ? -1 : 1, flipVertically ? -1 : 1);
        Bitmap createBitmap = Bitmap.createBitmap(bitmap, 0, 0, bitmap.getWidth(), bitmap.getHeight(), matrix, false);
        if (!Intrinsics.areEqual(createBitmap, bitmap)) {
            bitmap.recycle();
        }
        Intrinsics.checkNotNullExpressionValue(createBitmap, "{\n      val matrix = Mat…  }\n      newBitmap\n    }");
        return createBitmap;
    }

    @NotNull
    public final RotateBitmapResult orientateBitmapByExif(@Nullable Bitmap bitmap, @NotNull Context context, @NotNull Uri uri) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(uri, "uri");
        ExifInterface exifInterface = null;
        try {
            InputStream openInputStream = context.getContentResolver().openInputStream(uri);
            if (openInputStream != null) {
                try {
                    ExifInterface exifInterface2 = new ExifInterface(openInputStream);
                    CloseableKt.closeFinally(openInputStream, null);
                    exifInterface = exifInterface2;
                } finally {
                }
            }
        } catch (Throwable unused) {
        }
        if (exifInterface != null) {
            return orientateBitmapByExif(bitmap, exifInterface);
        }
        return new RotateBitmapResult(bitmap, 0, false, false);
    }

    @NotNull
    public final Bitmap resizeBitmap(@Nullable Bitmap bitmap, int reqWidth, int reqHeight, @NotNull CropImageView.RequestSizeOptions options) {
        Bitmap createScaledBitmap;
        Intrinsics.checkNotNullParameter(options, "options");
        if (reqWidth > 0 && reqHeight > 0) {
            try {
                CropImageView.RequestSizeOptions requestSizeOptions = CropImageView.RequestSizeOptions.RESIZE_FIT;
                if (options == requestSizeOptions || options == CropImageView.RequestSizeOptions.RESIZE_INSIDE || options == CropImageView.RequestSizeOptions.RESIZE_EXACT) {
                    if (options == CropImageView.RequestSizeOptions.RESIZE_EXACT) {
                        Intrinsics.checkNotNull(bitmap);
                        createScaledBitmap = Bitmap.createScaledBitmap(bitmap, reqWidth, reqHeight, false);
                    } else {
                        Intrinsics.checkNotNull(bitmap);
                        float width = bitmap.getWidth();
                        float height = bitmap.getHeight();
                        float max = Math.max(width / reqWidth, height / reqHeight);
                        if (max <= 1.0f && options != requestSizeOptions) {
                            createScaledBitmap = null;
                        }
                        createScaledBitmap = Bitmap.createScaledBitmap(bitmap, (int) (width / max), (int) (height / max), false);
                    }
                    if (createScaledBitmap != null) {
                        if (!Intrinsics.areEqual(createScaledBitmap, bitmap)) {
                            bitmap.recycle();
                        }
                        return createScaledBitmap;
                    }
                }
            } catch (Exception e) {
                Log.w("AIC", "Failed to resize cropped image, return bitmap before resize", e);
            }
        }
        Intrinsics.checkNotNull(bitmap);
        return bitmap;
    }

    public final void setMStateBitmap(@Nullable Pair<String, WeakReference<Bitmap>> pair) {
        mStateBitmap = pair;
    }

    @NotNull
    public final Uri writeBitmapToUri(@NotNull Context context, @NotNull Bitmap bitmap, @NotNull Bitmap.CompressFormat compressFormat, int compressQuality, @Nullable Uri customOutputUri) throws FileNotFoundException {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(bitmap, "bitmap");
        Intrinsics.checkNotNullParameter(compressFormat, "compressFormat");
        if (customOutputUri == null) {
            customOutputUri = m9211a(context, compressFormat);
        }
        OutputStream openOutputStream = context.getContentResolver().openOutputStream(customOutputUri, WRITE_AND_TRUNCATE);
        try {
            bitmap.compress(compressFormat, compressQuality, openOutputStream);
            CloseableKt.closeFinally(openOutputStream, null);
            return customOutputUri;
        } finally {
        }
    }

    @Nullable
    public final Uri writeTempStateStoreBitmap(@NotNull Context context, @Nullable Bitmap bitmap, @Nullable Uri customOutputUri) {
        Intrinsics.checkNotNullParameter(context, "context");
        try {
            Intrinsics.checkNotNull(bitmap);
            return writeBitmapToUri(context, bitmap, Bitmap.CompressFormat.JPEG, 95, customOutputUri);
        } catch (Exception e) {
            Log.w("AIC", "Failed to write bitmap to temp file for image-cropper save instance state", e);
            return null;
        }
    }

    @NotNull
    public final RotateBitmapResult orientateBitmapByExif(@Nullable Bitmap bitmap, @NotNull ExifInterface exif) {
        Intrinsics.checkNotNullParameter(exif, "exif");
        boolean z = true;
        int attributeInt = exif.getAttributeInt(ExifInterface.TAG_ORIENTATION, 1);
        int i = attributeInt != 3 ? (attributeInt == 5 || attributeInt == 6 || attributeInt == 7) ? 90 : attributeInt != 8 ? 0 : 270 : 180;
        boolean z2 = attributeInt == 2 || attributeInt == 5;
        if (attributeInt != 4 && attributeInt != 7) {
            z = false;
        }
        return new RotateBitmapResult(bitmap, i, z2, z);
    }
}
