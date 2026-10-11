package com.onyx.android.sdk.base.utils;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.BitmapRegionDecoder;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.RectF;
import android.util.Log;
import com.miui.penengine.p015e.C6997f;
import com.onyx.android.sdk.base.data.Size;
import com.onyx.android.sdk.base.extension.AnyKt;
import com.onyx.android.sdk.base.extension.BitmapKt;
import com.onyx.android.sdk.base.extension.MatrixKt;
import com.onyx.android.sdk.base.extension.RectKt;
import com.onyx.android.sdk.base.lite.extension.RectFKt;
import com.sun.org.apache.bcel.internal.Constants;
import java.io.FileInputStream;
import java.io.InputStream;
import kotlin.Metadata;
import kotlin.io.CloseableKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.math.MathKt__MathJVMKt;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000V\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0016\u0018\u00002\u00020\u0001:\u0001$B\u0007¢\u0006\u0004\b\"\u0010#J\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u0018\u0010\b\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\f\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\tH\u0016J\u001e\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\u0006J\u0018\u0010\u0010\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J \u0010\u0012\u001a\u00020\u000e2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0011\u001a\u00020\u0006H\u0002J\u0018\u0010\u0017\u001a\u00020\u00152\u0006\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0016\u001a\u00020\u0015H\u0002J*\u0010\u001c\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0018\u001a\u00020\u000b2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0019\u001a\u00020\u00152\u0006\u0010\u001b\u001a\u00020\u001aH\u0002J\"\u0010!\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0018\u001a\u00020\u000b2\u0006\u0010\u001e\u001a\u00020\u001d2\u0006\u0010 \u001a\u00020\u001fH\u0002¨\u0006%"}, m61528d2 = {"Lcom/onyx/android/sdk/base/utils/ImageRender;", "", "Lcom/onyx/android/sdk/base/utils/ImageRender$RenderArgs;", "renderArgs", "", "drawImage", "Landroid/graphics/Bitmap;", "targetBitmap", "drawFullImageToTargetBitmap", "", "path", "Ljava/io/InputStream;", "pathInputStream", "decodeBitmap", "", "renderToTargetBitmap", "c", "regionBitmap", "e", "", "scale", "Landroid/graphics/RectF;", "visibleRect", "d", "inputStream", "viewport", "", "orientation", "a", "Landroid/graphics/BitmapFactory$Options;", "options", "Landroid/graphics/Rect;", "regionToDecode", "b", Constants.CONSTRUCTOR_NAME, "()V", "RenderArgs", "sdk-base_release"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nImageRender.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ImageRender.kt\ncom/onyx/android/sdk/base/utils/ImageRender\n+ 2 Rect.kt\nandroidx/core/graphics/RectKt\n*L\n1#1,209:1\n344#2,3:210\n*S KotlinDebug\n*F\n+ 1 ImageRender.kt\ncom/onyx/android/sdk/base/utils/ImageRender\n*L\n175#1:210,3\n*E\n"})
/* loaded from: classes7.dex */
public class ImageRender {
    /* renamed from: a */
    public final Bitmap m32089a(InputStream inputStream, RenderArgs renderArgs, RectF viewport, int orientation) {
        float rotation = renderArgs.getRotation();
        float scale = renderArgs.getScale();
        float f = -rotation;
        RectF m32092d = m32092d(scale, RectFKt.rotated$default(renderArgs.getDisplayRect(), f, 0.0f, 0.0f, 6, null));
        RectF rectF = new RectF();
        float f2 = -m32092d.left;
        rectF.left = f2;
        rectF.top = -m32092d.top;
        rectF.right = f2 + (viewport.width() / scale);
        rectF.bottom = rectF.top + (viewport.height() / scale);
        RectFKt.rotate(rectF, f, renderArgs.getImageSize().centerX(), renderArgs.getImageSize().centerY());
        Matrix matrix = new Matrix();
        if (orientation == 3) {
            matrix.setRotate(180.0f);
            matrix.postTranslate(m32092d.width(), m32092d.height());
        } else if (orientation == 6) {
            matrix.setRotate(90.0f);
            matrix.postTranslate(m32092d.width(), 0.0f);
        } else if (orientation == 8) {
            matrix.setRotate(270.0f);
            matrix.postTranslate(0.0f, m32092d.height());
        }
        MatrixKt.invertMatrix(matrix).mapRect(rectF);
        Rect rect = new Rect();
        rectF.roundOut(rect);
        float width = rectF.width() * scale;
        float height = rectF.height() * scale;
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.outHeight = rect.height();
        options.outWidth = rect.width();
        options.inSampleSize = BitmapUtils.INSTANCE.calculateInSampleSize(options, (int) width, (int) height);
        options.inJustDecodeBounds = false;
        options.inPreferredConfig = Bitmap.Config.ARGB_8888;
        options.inMutable = true;
        Debug debug = Debug.INSTANCE;
        debug.m32038d(AnyKt.toSimpleNameString(this), "orientation = " + orientation + " regionInOrigin = " + rectF, new Object[0]);
        Bitmap m32090b = m32090b(inputStream, options, rect);
        String simpleNameString = AnyKt.toSimpleNameString(this);
        StringBuilder sb = new StringBuilder();
        sb.append("bitmap = ");
        sb.append(m32090b != null ? Integer.valueOf(m32090b.getWidth()) : null);
        sb.append(" * ");
        sb.append(m32090b != null ? Integer.valueOf(m32090b.getHeight()) : null);
        debug.m32038d(simpleNameString, sb.toString(), new Object[0]);
        if (m32090b == null) {
            return null;
        }
        return orientation != 3 ? orientation != 6 ? orientation != 8 ? m32090b : BitmapKt.rotate(m32090b, 270) : BitmapKt.rotate(m32090b, 90) : BitmapKt.rotate(m32090b, 180);
    }

    /* renamed from: b */
    public final Bitmap m32090b(InputStream inputStream, final BitmapFactory.Options options, final Rect regionToDecode) {
        return (Bitmap) BitmapKt.use(BitmapRegionDecoder.newInstance(inputStream, false), new Function1<BitmapRegionDecoder, Bitmap>() { // from class: com.onyx.android.sdk.base.utils.ImageRender$decodeSubImageFromStreamImpl$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Bitmap invoke(@NotNull BitmapRegionDecoder decoder) {
                Intrinsics.checkNotNullParameter(decoder, "decoder");
                return decoder.decodeRegion(regionToDecode, options);
            }
        });
    }

    /* renamed from: c */
    public final boolean m32091c(Bitmap targetBitmap, RenderArgs renderArgs) {
        Boolean bool;
        try {
            String path = renderArgs.getPath();
            BitmapUtils bitmapUtils = BitmapUtils.INSTANCE;
            int imageOrientation = bitmapUtils.getImageOrientation(path);
            if (!(renderArgs.getRotation() == 0.0f) && renderArgs.getImageSize().isEmpty()) {
                bitmapUtils.decodeBitmapSizeSupportExif(path, renderArgs.getImageSize());
            }
            InputStream pathInputStream = pathInputStream(path);
            try {
                Bitmap m32089a = m32089a(pathInputStream, renderArgs, BitmapKt.boundingRectF(targetBitmap), imageOrientation);
                if (m32089a != null) {
                    m32093e(renderArgs, targetBitmap, m32089a);
                    bool = Boolean.TRUE;
                } else {
                    bool = null;
                }
                CloseableKt.closeFinally(pathInputStream, null);
                if (bool != null) {
                    return bool.booleanValue();
                }
                return false;
            } finally {
            }
        } catch (Throwable th) {
            Log.w(AnyKt.toSimpleNameString(this), th);
            return false;
        }
    }

    /* renamed from: d */
    public final RectF m32092d(float scale, RectF visibleRect) {
        int roundToInt;
        int roundToInt2;
        int roundToInt3;
        int roundToInt4;
        RectF rectF = new RectF();
        roundToInt = MathKt__MathJVMKt.roundToInt(visibleRect.left / scale);
        rectF.left = roundToInt;
        roundToInt2 = MathKt__MathJVMKt.roundToInt(visibleRect.top / scale);
        rectF.top = roundToInt2;
        float f = rectF.left;
        roundToInt3 = MathKt__MathJVMKt.roundToInt(visibleRect.width() / scale);
        rectF.right = f + roundToInt3;
        float f2 = rectF.top;
        roundToInt4 = MathKt__MathJVMKt.roundToInt(visibleRect.height() / scale);
        rectF.bottom = f2 + roundToInt4;
        return rectF;
    }

    public boolean drawFullImageToTargetBitmap(@NotNull Bitmap targetBitmap, @NotNull RenderArgs renderArgs) {
        Intrinsics.checkNotNullParameter(targetBitmap, "targetBitmap");
        Intrinsics.checkNotNullParameter(renderArgs, "renderArgs");
        try {
            String path = renderArgs.getPath();
            RectF rotatedSize$default = RectFKt.rotatedSize$default(renderArgs.getDisplayRect(), -renderArgs.getRotation(), 0.0f, 0.0f, 6, null);
            Bitmap decodeBitmap = BitmapUtils.INSTANCE.decodeBitmap(path, (int) rotatedSize$default.width(), (int) rotatedSize$default.height());
            if (decodeBitmap == null) {
                return true;
            }
            renderToTargetBitmap(renderArgs, targetBitmap, decodeBitmap);
            return true;
        } catch (Throwable th) {
            Log.w(AnyKt.toSimpleNameString(this), th);
            return false;
        }
    }

    public final boolean drawImage(@NotNull RenderArgs renderArgs) {
        Intrinsics.checkNotNullParameter(renderArgs, "renderArgs");
        Bitmap viewportBitmap = renderArgs.getViewportBitmap();
        return !RectUtils.INSTANCE.contains(BitmapKt.boundingRect(viewportBitmap), RectKt.toRectNonNull(renderArgs.getDisplayRect())) ? m32091c(viewportBitmap, renderArgs) : drawFullImageToTargetBitmap(viewportBitmap, renderArgs);
    }

    /* renamed from: e */
    public final void m32093e(RenderArgs renderArgs, Bitmap targetBitmap, Bitmap regionBitmap) {
        Canvas canvas = new Canvas(targetBitmap);
        BitmapUtils bitmapUtils = BitmapUtils.INSTANCE;
        canvas.drawBitmap(regionBitmap, bitmapUtils.calculateRotationMatrix(regionBitmap, BitmapKt.boundingRectF(targetBitmap), renderArgs.getRotation()), bitmapUtils.createBitmapPaint());
    }

    @NotNull
    public InputStream pathInputStream(@NotNull String path) {
        Intrinsics.checkNotNullParameter(path, "path");
        return new FileInputStream(path);
    }

    public final void renderToTargetBitmap(@NotNull RenderArgs renderArgs, @NotNull Bitmap targetBitmap, @NotNull Bitmap decodeBitmap) {
        Intrinsics.checkNotNullParameter(renderArgs, "renderArgs");
        Intrinsics.checkNotNullParameter(targetBitmap, "targetBitmap");
        Intrinsics.checkNotNullParameter(decodeBitmap, "decodeBitmap");
        Canvas canvas = new Canvas(targetBitmap);
        BitmapUtils bitmapUtils = BitmapUtils.INSTANCE;
        canvas.drawBitmap(decodeBitmap, bitmapUtils.calculateRotationMatrix(decodeBitmap, renderArgs.getDisplayRect(), renderArgs.getRotation()), bitmapUtils.createBitmapPaint());
    }

    @Metadata(m61527d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0007\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u00020\u0001B;\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u0012\u0006\u0010\r\u001a\u00020\b\u0012\u0006\u0010\u0013\u001a\u00020\u000e\u0012\u0006\u0010\u0019\u001a\u00020\u0014\u0012\b\b\u0002\u0010\u001c\u001a\u00020\u0014\u0012\b\b\u0002\u0010\"\u001a\u00020\u001d¢\u0006\u0004\b#\u0010$R\u0017\u0010\u0007\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006R\u0017\u0010\r\u001a\u00020\b8\u0006¢\u0006\f\n\u0004\b\t\u0010\n\u001a\u0004\b\u000b\u0010\fR\u0017\u0010\u0013\u001a\u00020\u000e8\u0006¢\u0006\f\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\u0011\u0010\u0012R\u0017\u0010\u0019\u001a\u00020\u00148\u0006¢\u0006\f\n\u0004\b\u0015\u0010\u0016\u001a\u0004\b\u0017\u0010\u0018R\u0017\u0010\u001c\u001a\u00020\u00148\u0006¢\u0006\f\n\u0004\b\u001a\u0010\u0016\u001a\u0004\b\u001b\u0010\u0018R\u0017\u0010\"\u001a\u00020\u001d8\u0006¢\u0006\f\n\u0004\b\u001e\u0010\u001f\u001a\u0004\b \u0010!¨\u0006%"}, m61528d2 = {"Lcom/onyx/android/sdk/base/utils/ImageRender$RenderArgs;", "", "", "a", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.STRING_SIG, "getPath", "()Ljava/lang/String;", "path", "Landroid/graphics/Bitmap;", "b", "Landroid/graphics/Bitmap;", "getViewportBitmap", "()Landroid/graphics/Bitmap;", "viewportBitmap", "Landroid/graphics/RectF;", "c", "Landroid/graphics/RectF;", "getDisplayRect", "()Landroid/graphics/RectF;", "displayRect", "", "d", "F", "getScale", "()F", "scale", "e", "getRotation", "rotation", "Lcom/onyx/android/sdk/base/data/Size;", C6997f.f39671c, "Lcom/onyx/android/sdk/base/data/Size;", "getImageSize", "()Lcom/onyx/android/sdk/base/data/Size;", "imageSize", Constants.CONSTRUCTOR_NAME, "(Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/RectF;FFLcom/onyx/android/sdk/base/data/Size;)V", "sdk-base_release"}, m61529k = 1, m61530mv = {1, 9, 0})
    /* loaded from: classes7.dex */
    public static final class RenderArgs {

        /* renamed from: a, reason: from kotlin metadata */
        @NotNull
        public final String path;

        /* renamed from: b, reason: from kotlin metadata */
        @NotNull
        public final Bitmap viewportBitmap;

        /* renamed from: c, reason: from kotlin metadata */
        @NotNull
        public final RectF displayRect;

        /* renamed from: d, reason: from kotlin metadata */
        public final float scale;

        /* renamed from: e, reason: from kotlin metadata */
        public final float rotation;

        /* renamed from: f, reason: from kotlin metadata */
        @NotNull
        public final Size imageSize;

        public RenderArgs(@NotNull String path, @NotNull Bitmap viewportBitmap, @NotNull RectF displayRect, float f, float f2, @NotNull Size imageSize) {
            Intrinsics.checkNotNullParameter(path, "path");
            Intrinsics.checkNotNullParameter(viewportBitmap, "viewportBitmap");
            Intrinsics.checkNotNullParameter(displayRect, "displayRect");
            Intrinsics.checkNotNullParameter(imageSize, "imageSize");
            this.path = path;
            this.viewportBitmap = viewportBitmap;
            this.displayRect = displayRect;
            this.scale = f;
            this.rotation = f2;
            this.imageSize = imageSize;
        }

        @NotNull
        public final RectF getDisplayRect() {
            return this.displayRect;
        }

        @NotNull
        public final Size getImageSize() {
            return this.imageSize;
        }

        @NotNull
        public final String getPath() {
            return this.path;
        }

        public final float getRotation() {
            return this.rotation;
        }

        public final float getScale() {
            return this.scale;
        }

        @NotNull
        public final Bitmap getViewportBitmap() {
            return this.viewportBitmap;
        }

        public /* synthetic */ RenderArgs(String str, Bitmap bitmap, RectF rectF, float f, float f2, Size size, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this(str, bitmap, rectF, f, (i & 16) != 0 ? 0.0f : f2, (i & 32) != 0 ? new Size(0, 0) : size);
        }
    }
}
