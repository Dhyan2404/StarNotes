package com.onyx.android.sdk.base.extension;

import android.graphics.Bitmap;
import android.graphics.BitmapRegionDecoder;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.media.ThumbnailUtils;
import android.util.Base64;
import android.util.Size;
import com.liulishuo.okdownload.core.breakpoint.BreakpointSQLiteHelper;
import com.onyx.android.sdk.base.data.Orientation;
import com.onyx.android.sdk.base.utils.BitmapUtils;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.base.utils.FileUtils;
import com.onyx.android.sdk.universal.editor.receiver.ApiBroadCastReceiver;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.io.ByteArrayOutputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.io.CloseableKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.IntProgression;
import kotlin.ranges.RangesKt;
import org.apache.poi.ss.util.CellUtil;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000~\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0012\n\u0002\b\u0005\n\u0002\u0010\u0007\n\u0002\b\t\n\u0002\u0010\u0015\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\u001a\u001e\u0010\u0006\u001a\u00020\u0005*\u00020\u00002\b\u0010\u0002\u001a\u0004\u0018\u00010\u00012\b\b\u0002\u0010\u0004\u001a\u00020\u0003\u001a\u001d\u0010\u0007\u001a\u00020\u0005*\u0004\u0018\u00010\u0000\u0082\u0002\u000e\n\f\b\u0000\u0012\u0002\u0018\u0000\u001a\u0004\b\u0003\u0010\u0000\u001a\u001c\u0010\n\u001a\u00020\u0005*\u0004\u0018\u00010\u00002\u0006\u0010\b\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\u0003\u001a\u001d\u0010\u000b\u001a\u00020\u0005*\u0004\u0018\u00010\u0000\u0082\u0002\u000e\n\f\b\u0000\u0012\u0002\u0018\u0001\u001a\u0004\b\u0003\u0010\u0000\u001a\u0016\u0010\u000e\u001a\u00020\r*\u0004\u0018\u00010\u00002\b\b\u0002\u0010\f\u001a\u00020\u0003\u001a\f\u0010\u000f\u001a\u00020\r*\u0004\u0018\u00010\u0000\u001a\u0012\u0010\u0011\u001a\u00020\r*\u00020\u00002\u0006\u0010\u0010\u001a\u00020\u0000\u001a*\u0010\u0015\u001a\u00020\r*\u0004\u0018\u00010\u00002\b\u0010\u0013\u001a\u0004\u0018\u00010\u00122\b\u0010\u0010\u001a\u0004\u0018\u00010\u00002\b\u0010\u0014\u001a\u0004\u0018\u00010\u0012\u001a\u0012\u0010\u0017\u001a\u00020\u0000*\u00020\u00002\u0006\u0010\u0016\u001a\u00020\u0003\u001a\u001a\u0010\u001a\u001a\u00020\u0000*\u00020\u00002\u0006\u0010\u0018\u001a\u00020\u00032\u0006\u0010\u0019\u001a\u00020\u0003\u001a\"\u0010\u001a\u001a\u00020\u0000*\u00020\u00002\u0006\u0010\u0018\u001a\u00020\u00032\u0006\u0010\u0019\u001a\u00020\u00032\u0006\u0010\u001b\u001a\u00020\u0005\u001a \u0010\u001f\u001a\u0004\u0018\u00010\u001e*\u00020\u00002\b\b\u0002\u0010\u001d\u001a\u00020\u001c2\b\b\u0002\u0010\u0004\u001a\u00020\u0003\u001a\f\u0010 \u001a\u0004\u0018\u00010\u0000*\u00020\u0000\u001a\u0012\u0010\"\u001a\u00020\u0000*\u00020\u00002\u0006\u0010!\u001a\u00020\u0003\u001a\f\u0010#\u001a\u0004\u0018\u00010\u0000*\u00020\u0000\u001a\u0012\u0010&\u001a\u00020\u0000*\u00020\u00002\u0006\u0010%\u001a\u00020$\u001a\"\u0010&\u001a\u00020\u0000*\u00020\u00002\u0006\u0010\u0016\u001a\u00020\u00032\u0006\u0010'\u001a\u00020\u00032\u0006\u0010%\u001a\u00020$\u001a$\u0010*\u001a\u0004\u0018\u00010\u0000*\u00020\u00002\u0006\u0010\f\u001a\u00020\u00032\u0006\u0010(\u001a\u00020\u00032\u0006\u0010)\u001a\u00020\u0003\u001a\u0016\u0010+\u001a\u00020\u0005*\u0004\u0018\u00010\u00002\b\u0010\u0010\u001a\u0004\u0018\u00010\u0000\u001a\u000e\u0010,\u001a\u0004\u0018\u00010\u0000*\u0004\u0018\u00010\u0000\u001a\u0016\u0010-\u001a\u0004\u0018\u00010\u0001*\u00020\u00002\b\b\u0002\u0010\u0004\u001a\u00020\u0003\u001a\n\u0010/\u001a\u00020.*\u00020\u0000\u001a\u0012\u00100\u001a\u00020\u0000*\u00020\u00002\u0006\u0010\f\u001a\u00020\u0003\u001a\u001a\u00103\u001a\u00020\u0003*\u00020\u00002\u0006\u00101\u001a\u00020\u00032\u0006\u00102\u001a\u00020\u0003\u001a4\u00109\u001a\u00020\r*\u0004\u0018\u00010\u00002\b\u00105\u001a\u0004\u0018\u0001042\b\b\u0002\u0010\f\u001a\u00020\u00032\b\b\u0002\u00107\u001a\u0002062\b\b\u0002\u00108\u001a\u00020$\u001a/\u0010>\u001a\u0004\u0018\u00018\u0000\"\u0004\b\u0000\u0010:*\u0004\u0018\u00010;2\u0012\u0010=\u001a\u000e\u0012\u0004\u0012\u00020;\u0012\u0004\u0012\u00028\u00000<¢\u0006\u0004\b>\u0010?\u001a\f\u0010@\u001a\u000204*\u0004\u0018\u00010\u0000\u001a\f\u0010A\u001a\u00020\u0012*\u0004\u0018\u00010\u0000\u001a\n\u0010B\u001a\u00020\u0000*\u000204\u001a\f\u0010C\u001a\u00020\u0003*\u0004\u0018\u00010\u0000\u001a\f\u0010D\u001a\u00020\r*\u0004\u0018\u00010\u0000\u001a\n\u0010E\u001a\u00020\u0003*\u00020\u0000\u001a\n\u0010F\u001a\u00020\u0003*\u00020\u0000\u001a\n\u0010G\u001a\u00020\u0005*\u00020\u0000\u001a\n\u0010I\u001a\u00020H*\u00020\u0000\u001a\n\u0010K\u001a\u00020J*\u00020\u0000\u001a\n\u0010L\u001a\u000204*\u00020\u0000\u001a \u0010M\u001a\u00020\r*\u0004\u0018\u00010\u00002\u0012\u0010=\u001a\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\r0<\u001a\u001c\u0010P\u001a\u00020\r*\u0004\u0018\u00010\u00002\u0006\u00105\u001a\u0002042\u0006\u0010O\u001a\u00020N\u001a\u001a\u0010S\u001a\u00020\u0000*\u00020\u00002\u0006\u0010Q\u001a\u00020\u00032\u0006\u0010R\u001a\u00020\u0003\u001a\u0014\u0010U\u001a\u00020\u0005*\u00020\u00002\b\b\u0002\u0010T\u001a\u00020\u0003\u001a\n\u0010W\u001a\u00020V*\u00020\u0000\"\u0017\u0010\\\u001a\u00020J8\u0006¢\u0006\f\n\u0004\bX\u0010Y\u001a\u0004\bZ\u0010[¨\u0006]"}, m61528d2 = {"Landroid/graphics/Bitmap;", "", "path", "", "quality", "", "save", "isValid", "width", "height", "isSizeChanged", "isRecycled", "color", "", Constants.CLEAR_ATTRIBUTES, "recycle", "dst", "scaleToFitCenter", "Landroid/graphics/Rect;", "srcRegion", "dstRegion", "scaleBitmap", "targetWidth", "scaleToWidthRatioBitmap", "newWidth", "newHeight", "createScaledBitmap", "isWhiteBG", "Landroid/graphics/Bitmap$CompressFormat;", com.sun.org.apache.xalan.internal.templates.Constants.ATTRNAME_FORMAT, "", "toBytes", "toBlackWhiteBitmap", "degrees", "rotate", "horizontalFlip", "", "radius", "roundCorner", "targetHeight", "cornerPix", "borderPix", "roundedCorner", "copyTo", "copy", "encodeToBase64", "", "toPixels", CellUtil.FILL_BACKGROUND_COLOR, "defaultValue", "limitValue", "calculateSampleSize", "Landroid/graphics/RectF;", "rect", "Landroid/graphics/Paint$Style;", "paintStyle", ApiBroadCastReceiver.ARGS_STROKE_WIDTH, "drawRect", "R", "Landroid/graphics/BitmapRegionDecoder;", "Lkotlin/Function1;", BreakpointSQLiteHelper.f39283i, "use", "(Landroid/graphics/BitmapRegionDecoder;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;", "boundingRectF", "boundingRect", "createBitmap", "safelyByteCount", "clearBitmap", "getLeftPadding", "getRightPadding", "isPortrait", "Lcom/onyx/android/sdk/base/data/Orientation;", "getOrientation", "Landroid/util/Size;", "getSize", "getRectF", "ifValid", "Landroid/graphics/Paint;", "paint", "eraseRect", "desWidth", "desHeight", "centerCrop", "step", "hasTransparentPixelFast", "Landroid/graphics/Bitmap$Config;", "getBitmapConfigSafely", "a", "Landroid/util/Size;", "getBITMAP_SAFE_SIZE", "()Landroid/util/Size;", "BITMAP_SAFE_SIZE", "sdk-base_release"}, m61529k = 2, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class BitmapKt {

    /* renamed from: a */
    @NotNull
    public static final Size f40727a = new Size(5000, 5000);

    @NotNull
    public static final Rect boundingRect(@Nullable Bitmap bitmap) {
        return isValid(bitmap) ? new Rect(0, 0, bitmap.getWidth(), bitmap.getHeight()) : new Rect();
    }

    @NotNull
    public static final RectF boundingRectF(@Nullable Bitmap bitmap) {
        return isValid(bitmap) ? new RectF(0.0f, 0.0f, bitmap.getWidth(), bitmap.getHeight()) : new RectF();
    }

    public static final int calculateSampleSize(@NotNull Bitmap bitmap, int i, int i2) {
        Intrinsics.checkNotNullParameter(bitmap, "<this>");
        int maxImageSize = BitmapUtils.INSTANCE.getMaxImageSize(i, i2);
        int i3 = 1;
        while (true) {
            if (bitmap.getHeight() / i3 <= maxImageSize && bitmap.getWidth() / i3 <= maxImageSize) {
                return i3;
            }
            i3 <<= 1;
        }
    }

    @NotNull
    public static final Bitmap centerCrop(@NotNull Bitmap bitmap, int i, int i2) {
        int i3;
        Intrinsics.checkNotNullParameter(bitmap, "<this>");
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        float f = width;
        float f2 = height;
        float f3 = f / f2;
        float f4 = i / i2;
        int i4 = 0;
        if (f3 == f4) {
            return bitmap;
        }
        if (f3 > f4) {
            int i5 = (int) (f2 * f4);
            int i6 = (width - i5) / 2;
            width = i5;
            i3 = 0;
            i4 = i6;
        } else {
            int i7 = (int) (f / f4);
            int i8 = (height - i7) / 2;
            height = i7;
            i3 = i8;
        }
        Bitmap createBitmap = Bitmap.createBitmap(bitmap, i4, i3, width, height);
        Intrinsics.checkNotNullExpressionValue(createBitmap, "createBitmap(...)");
        return createBitmap;
    }

    public static final void clear(@Nullable Bitmap bitmap, int i) {
        if (isValid(bitmap)) {
            bitmap.eraseColor(i);
        }
    }

    public static /* synthetic */ void clear$default(Bitmap bitmap, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = -1;
        }
        clear(bitmap, i);
    }

    public static final void clearBitmap(@Nullable Bitmap bitmap) {
        if (isValid(bitmap)) {
            bitmap.eraseColor(-1);
        }
    }

    @Nullable
    public static final Bitmap copy(@Nullable Bitmap bitmap) {
        if (isValid(bitmap)) {
            return Bitmap.createBitmap(bitmap);
        }
        return null;
    }

    public static final boolean copyTo(@Nullable Bitmap bitmap, @Nullable Bitmap bitmap2) {
        if (!isValid(bitmap) || !isValid(bitmap2)) {
            return false;
        }
        bitmap2.eraseColor(0);
        new Canvas(bitmap2).drawBitmap(bitmap, 0.0f, 0.0f, (Paint) null);
        return true;
    }

    @NotNull
    public static final Bitmap createBitmap(@NotNull RectF rectF) {
        Intrinsics.checkNotNullParameter(rectF, "<this>");
        Bitmap createBitmap = Bitmap.createBitmap((int) rectF.width(), (int) rectF.height(), Bitmap.Config.ARGB_8888);
        Intrinsics.checkNotNullExpressionValue(createBitmap, "createBitmap(...)");
        return createBitmap;
    }

    @NotNull
    public static final Bitmap createScaledBitmap(@NotNull Bitmap bitmap, int i, int i2) {
        Intrinsics.checkNotNullParameter(bitmap, "<this>");
        return createScaledBitmap(bitmap, i, i2, false);
    }

    public static final void drawRect(@Nullable Bitmap bitmap, @Nullable RectF rectF, int i, @NotNull Paint.Style paintStyle, float f) {
        Intrinsics.checkNotNullParameter(paintStyle, "paintStyle");
        if (bitmap == null || rectF == null) {
            return;
        }
        Canvas canvas = new Canvas(bitmap);
        Paint paint = new Paint();
        paint.setColor(i);
        paint.setStyle(paintStyle);
        paint.setStrokeWidth(f);
        canvas.drawRect(rectF, paint);
    }

    public static /* synthetic */ void drawRect$default(Bitmap bitmap, RectF rectF, int i, Paint.Style style, float f, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            i = -16777216;
        }
        if ((i2 & 4) != 0) {
            style = Paint.Style.STROKE;
        }
        if ((i2 & 8) != 0) {
            f = 3.0f;
        }
        drawRect(bitmap, rectF, i, style, f);
    }

    @Nullable
    public static final String encodeToBase64(@NotNull Bitmap bitmap, int i) {
        Intrinsics.checkNotNullParameter(bitmap, "<this>");
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            try {
                bitmap.compress(Bitmap.CompressFormat.PNG, i, byteArrayOutputStream);
                byteArrayOutputStream.flush();
                String encodeToString = Base64.encodeToString(byteArrayOutputStream.toByteArray(), 2);
                CloseableKt.closeFinally(byteArrayOutputStream, null);
                return encodeToString;
            } finally {
            }
        } catch (IOException e) {
            e.printStackTrace();
            return null;
        }
    }

    public static /* synthetic */ String encodeToBase64$default(Bitmap bitmap, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = 100;
        }
        return encodeToBase64(bitmap, i);
    }

    public static final void eraseRect(@Nullable Bitmap bitmap, @NotNull final RectF rect, @NotNull final Paint paint) {
        Intrinsics.checkNotNullParameter(rect, "rect");
        Intrinsics.checkNotNullParameter(paint, "paint");
        ifValid(bitmap, new Function1<Bitmap, Unit>() { // from class: com.onyx.android.sdk.base.extension.BitmapKt$eraseRect$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Bitmap bitmap2) {
                invoke2(bitmap2);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull Bitmap it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                new Canvas(it2).drawRect(rect, paint);
            }
        });
    }

    @NotNull
    public static final Bitmap fillBackgroundColor(@NotNull Bitmap bitmap, int i) {
        Intrinsics.checkNotNullParameter(bitmap, "<this>");
        Bitmap createBitmap = Bitmap.createBitmap(bitmap.getWidth(), bitmap.getHeight(), Bitmap.Config.ARGB_8888);
        Intrinsics.checkNotNullExpressionValue(createBitmap, "createBitmap(...)");
        Canvas canvas = new Canvas(createBitmap);
        canvas.drawColor(i);
        canvas.drawBitmap(bitmap, 0.0f, 0.0f, (Paint) null);
        canvas.save();
        return createBitmap;
    }

    @NotNull
    public static final Size getBITMAP_SAFE_SIZE() {
        return f40727a;
    }

    @NotNull
    public static final Bitmap.Config getBitmapConfigSafely(@NotNull Bitmap bitmap) {
        Intrinsics.checkNotNullParameter(bitmap, "<this>");
        Bitmap.Config config = bitmap.getConfig();
        return config == null ? Bitmap.Config.ARGB_8888 : config;
    }

    public static final int getLeftPadding(@NotNull Bitmap bitmap) {
        Intrinsics.checkNotNullParameter(bitmap, "<this>");
        int width = bitmap.getWidth();
        for (int i = 0; i < width; i++) {
            if (bitmap.getPixel(i, bitmap.getHeight() / 2) != 0) {
                return i;
            }
        }
        return bitmap.getWidth();
    }

    @NotNull
    public static final Orientation getOrientation(@NotNull Bitmap bitmap) {
        Intrinsics.checkNotNullParameter(bitmap, "<this>");
        return isPortrait(bitmap) ? Orientation.PORTRAIT : Orientation.LANDSCAPE;
    }

    @NotNull
    public static final RectF getRectF(@NotNull Bitmap bitmap) {
        Intrinsics.checkNotNullParameter(bitmap, "<this>");
        return SizeKt.toRectF(getSize(bitmap));
    }

    public static final int getRightPadding(@NotNull Bitmap bitmap) {
        Intrinsics.checkNotNullParameter(bitmap, "<this>");
        int width = bitmap.getWidth();
        for (int i = 0; i < width; i++) {
            if (bitmap.getPixel((bitmap.getWidth() - 1) - i, bitmap.getHeight() / 2) != 0) {
                return i;
            }
        }
        return bitmap.getWidth();
    }

    @NotNull
    public static final Size getSize(@NotNull Bitmap bitmap) {
        Intrinsics.checkNotNullParameter(bitmap, "<this>");
        return new Size(bitmap.getWidth(), bitmap.getHeight());
    }

    public static final boolean hasTransparentPixelFast(@NotNull Bitmap bitmap, int i) {
        Intrinsics.checkNotNullParameter(bitmap, "<this>");
        int width = bitmap.getWidth();
        IntProgression step = RangesKt.step(RangesKt.until(0, bitmap.getHeight()), i);
        int first = step.getFirst();
        int last = step.getLast();
        int step2 = step.getStep();
        if ((step2 > 0 && first <= last) || (step2 < 0 && last <= first)) {
            while (true) {
                IntProgression step3 = RangesKt.step(RangesKt.until(0, width), i);
                int first2 = step3.getFirst();
                int last2 = step3.getLast();
                int step4 = step3.getStep();
                if ((step4 > 0 && first2 <= last2) || (step4 < 0 && last2 <= first2)) {
                    while (((bitmap.getPixel(first2, first) >>> 24) & 255) >= 255) {
                        if (first2 != last2) {
                            first2 += step4;
                        }
                    }
                    return true;
                }
                if (first == last) {
                    break;
                }
                first += step2;
            }
        }
        return false;
    }

    public static /* synthetic */ boolean hasTransparentPixelFast$default(Bitmap bitmap, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = 10;
        }
        return hasTransparentPixelFast(bitmap, i);
    }

    @Nullable
    public static final Bitmap horizontalFlip(@NotNull Bitmap bitmap) {
        Intrinsics.checkNotNullParameter(bitmap, "<this>");
        Matrix matrix = new Matrix();
        matrix.postScale(-1.0f, 1.0f);
        return Bitmap.createBitmap(bitmap, 0, 0, bitmap.getWidth(), bitmap.getHeight(), matrix, true);
    }

    public static final void ifValid(@Nullable Bitmap bitmap, @NotNull Function1<? super Bitmap, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        if (isValid(bitmap)) {
            block.invoke(bitmap);
        }
    }

    public static final boolean isPortrait(@NotNull Bitmap bitmap) {
        Intrinsics.checkNotNullParameter(bitmap, "<this>");
        return bitmap.getHeight() >= bitmap.getWidth();
    }

    public static final boolean isRecycled(@Nullable Bitmap bitmap) {
        if (bitmap != null) {
            return bitmap.isRecycled();
        }
        return true;
    }

    public static final boolean isSizeChanged(@Nullable Bitmap bitmap, int i, int i2) {
        return ((bitmap != null && bitmap.getWidth() == i) && bitmap.getHeight() == i2) ? false : true;
    }

    public static final boolean isValid(@Nullable Bitmap bitmap) {
        return bitmap != null && !bitmap.isRecycled() && bitmap.getWidth() > 0 && bitmap.getHeight() > 0;
    }

    public static final void recycle(@Nullable Bitmap bitmap) {
        if (isRecycled(bitmap)) {
            return;
        }
        bitmap.recycle();
    }

    @NotNull
    public static final Bitmap rotate(@NotNull Bitmap bitmap, int i) {
        Intrinsics.checkNotNullParameter(bitmap, "<this>");
        Matrix matrix = new Matrix();
        matrix.postRotate(i);
        Bitmap createBitmap = Bitmap.createBitmap(bitmap, 0, 0, bitmap.getWidth(), bitmap.getHeight(), matrix, true);
        Intrinsics.checkNotNullExpressionValue(createBitmap, "let(...)");
        return createBitmap;
    }

    @NotNull
    public static final Bitmap roundCorner(@NotNull Bitmap bitmap, float f) {
        Intrinsics.checkNotNullParameter(bitmap, "<this>");
        return roundCorner(bitmap, bitmap.getWidth(), bitmap.getHeight(), f);
    }

    @Nullable
    public static final Bitmap roundedCorner(@NotNull Bitmap bitmap, int i, int i2, int i3) {
        Intrinsics.checkNotNullParameter(bitmap, "<this>");
        int i4 = i3 * 2;
        Bitmap createBitmap = Bitmap.createBitmap(bitmap.getWidth() + i4, bitmap.getHeight() + i4, Bitmap.Config.ARGB_8888);
        Intrinsics.checkNotNullExpressionValue(createBitmap, "createBitmap(...)");
        Canvas canvas = new Canvas(createBitmap);
        canvas.drawColor(-1);
        float f = i3;
        canvas.drawBitmap(bitmap, f, f, (Paint) null);
        Paint paint = new Paint(1);
        paint.setStrokeWidth(f);
        paint.setColor(i);
        paint.setStyle(Paint.Style.STROKE);
        float f2 = i2;
        canvas.drawRoundRect(boundingRectF(createBitmap), f2, f2, paint);
        return createBitmap;
    }

    public static final int safelyByteCount(@Nullable Bitmap bitmap) {
        if (isValid(bitmap)) {
            return bitmap.getByteCount();
        }
        return 0;
    }

    public static final boolean save(@NotNull Bitmap bitmap, @Nullable String str, int i) {
        Intrinsics.checkNotNullParameter(bitmap, "<this>");
        if (!isValid(bitmap)) {
            return false;
        }
        try {
            FileUtils.INSTANCE.ensureFileExists(str);
            FileOutputStream fileOutputStream = new FileOutputStream(str);
            try {
                bitmap.compress(Bitmap.CompressFormat.PNG, i, fileOutputStream);
                fileOutputStream.flush();
                Unit unit = Unit.INSTANCE;
                CloseableKt.closeFinally(fileOutputStream, null);
                return true;
            } finally {
            }
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    public static /* synthetic */ boolean save$default(Bitmap bitmap, String str, int i, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            i = 100;
        }
        return save(bitmap, str, i);
    }

    public static final void scaleBitmap(@Nullable Bitmap bitmap, @Nullable Rect rect, @Nullable Bitmap bitmap2, @Nullable Rect rect2) {
        if (isRecycled(bitmap) || isRecycled(bitmap2)) {
            return;
        }
        Canvas canvas = new Canvas(bitmap2);
        BitmapUtils bitmapUtils = BitmapUtils.INSTANCE;
        bitmapUtils.getPaint().setFilterBitmap(true);
        Intrinsics.checkNotNull(rect2);
        canvas.drawBitmap(bitmap, rect, rect2, bitmapUtils.getPaint());
    }

    public static final void scaleToFitCenter(@NotNull Bitmap bitmap, @NotNull Bitmap dst) {
        Intrinsics.checkNotNullParameter(bitmap, "<this>");
        Intrinsics.checkNotNullParameter(dst, "dst");
        Rect rect = new Rect(0, 0, bitmap.getWidth(), bitmap.getHeight());
        scaleBitmap(bitmap, rect, dst, BitmapUtils.INSTANCE.getScaleFitCenterRect(rect, new Rect(0, 0, dst.getWidth(), dst.getHeight())));
    }

    @NotNull
    public static final Bitmap scaleToWidthRatioBitmap(@NotNull Bitmap bitmap, int i) {
        Intrinsics.checkNotNullParameter(bitmap, "<this>");
        return (i <= 0 || !BitmapUtils.INSTANCE.isValid(bitmap)) ? bitmap : createScaledBitmap(bitmap, i, (bitmap.getHeight() * i) / bitmap.getWidth());
    }

    @Nullable
    public static final Bitmap toBlackWhiteBitmap(@NotNull Bitmap bitmap) {
        Intrinsics.checkNotNullParameter(bitmap, "<this>");
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        int[] pixels = toPixels(bitmap);
        for (int i = 0; i < height; i++) {
            for (int i2 = 0; i2 < width; i2++) {
                int i3 = (width * i) + i2;
                int i4 = pixels[i3];
                int i5 = (int) ((((16711680 & i4) >> 16) * 0.3d) + (((65280 & i4) >> 8) * 0.59d) + ((i4 & 255) * 0.11d));
                pixels[i3] = i5 | (i5 << 16) | (-16777216) | (i5 << 8);
            }
        }
        Bitmap createBitmap = Bitmap.createBitmap(width, height, Bitmap.Config.RGB_565);
        Intrinsics.checkNotNullExpressionValue(createBitmap, "createBitmap(...)");
        createBitmap.setPixels(pixels, 0, width, 0, 0, width, height);
        return ThumbnailUtils.extractThumbnail(createBitmap, width, height);
    }

    @Nullable
    public static final byte[] toBytes(@NotNull Bitmap bitmap, @NotNull Bitmap.CompressFormat format, int i) {
        Intrinsics.checkNotNullParameter(bitmap, "<this>");
        Intrinsics.checkNotNullParameter(format, "format");
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            bitmap.compress(format, i, byteArrayOutputStream);
            byte[] byteArray = byteArrayOutputStream.toByteArray();
            CloseableKt.closeFinally(byteArrayOutputStream, null);
            return byteArray;
        } finally {
        }
    }

    public static /* synthetic */ byte[] toBytes$default(Bitmap bitmap, Bitmap.CompressFormat compressFormat, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            compressFormat = Bitmap.CompressFormat.PNG;
        }
        if ((i2 & 2) != 0) {
            i = 100;
        }
        return toBytes(bitmap, compressFormat, i);
    }

    @NotNull
    public static final int[] toPixels(@NotNull Bitmap bitmap) {
        Intrinsics.checkNotNullParameter(bitmap, "<this>");
        int[] iArr = new int[bitmap.getWidth() * bitmap.getHeight()];
        bitmap.getPixels(iArr, 0, bitmap.getWidth(), 0, 0, bitmap.getWidth(), bitmap.getHeight());
        return iArr;
    }

    @Nullable
    public static final <R> R use(@Nullable BitmapRegionDecoder bitmapRegionDecoder, @NotNull Function1<? super BitmapRegionDecoder, ? extends R> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        R r = null;
        if (bitmapRegionDecoder == null) {
            return null;
        }
        try {
            r = block.invoke(bitmapRegionDecoder);
        } catch (Throwable unused) {
        }
        bitmapRegionDecoder.recycle();
        return r;
    }

    @NotNull
    public static final Bitmap createScaledBitmap(@NotNull Bitmap bitmap, int i, int i2, boolean z) {
        Intrinsics.checkNotNullParameter(bitmap, "<this>");
        Bitmap createBitmap = Bitmap.createBitmap(i, i2, Bitmap.Config.ARGB_8888);
        Intrinsics.checkNotNullExpressionValue(createBitmap, "createBitmap(...)");
        if (!BitmapUtils.INSTANCE.isValid(bitmap)) {
            Debug.INSTANCE.m32048e(new IllegalArgumentException("invalid bitmap"));
            return createBitmap;
        }
        if (z) {
            createBitmap.eraseColor(-1);
        }
        float f = i;
        float width = f / bitmap.getWidth();
        float f2 = i2;
        float height = f2 / bitmap.getHeight();
        float f3 = f / 2.0f;
        float f4 = f2 / 2.0f;
        Matrix matrix = new Matrix();
        matrix.setScale(width, height, f3, f4);
        Canvas canvas = new Canvas(createBitmap);
        canvas.setMatrix(matrix);
        canvas.drawBitmap(bitmap, f3 - (bitmap.getWidth() / 2), f4 - (bitmap.getHeight() / 2), new Paint(2));
        return createBitmap;
    }

    @NotNull
    public static final Bitmap roundCorner(@NotNull Bitmap bitmap, int i, int i2, float f) {
        Intrinsics.checkNotNullParameter(bitmap, "<this>");
        if (bitmap.getWidth() != i || bitmap.getHeight() != i2) {
            bitmap = createScaledBitmap(bitmap, i, i2);
        }
        Bitmap createBitmap = Bitmap.createBitmap(i, i2, Bitmap.Config.ARGB_8888);
        Intrinsics.checkNotNullExpressionValue(createBitmap, "createBitmap(...)");
        Canvas canvas = new Canvas(createBitmap);
        Paint paint = new Paint();
        Rect rect = new Rect(0, 0, i, i2);
        canvas.drawRoundRect(new RectF(rect), f, f, paint);
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC_IN));
        canvas.drawBitmap(bitmap, rect, rect, paint);
        return createBitmap;
    }
}
