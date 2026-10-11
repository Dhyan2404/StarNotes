package com.onyx.android.sdk.reader.impl;

import android.graphics.Bitmap;
import android.graphics.RectF;
import com.onyx.android.sdk.base.extension.BitmapKt;
import com.onyx.android.sdk.data.common.cloud.Constant;
import com.onyx.android.sdk.note.common.data.shape.UniversalShapeTypeConst;
import com.onyx.android.sdk.reader.api.ReaderImage;
import com.onyx.android.sdk.reader.api.ReaderPosition;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.xmlresolver.logging.AbstractLogger;

@Metadata(m61527d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0013\n\u0002\u0010\u0007\n\u0002\b\n\u0018\u00002\u00020\u0001B1\u0012\b\b\u0002\u0010\u0012\u001a\u00020\u0011\u0012\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u000b\u0012\b\b\u0002\u0010\u0014\u001a\u00020\u0013\u0012\b\b\u0002\u0010.\u001a\u00020'¢\u0006\u0004\b/\u00100J\u0006\u0010\u0003\u001a\u00020\u0002J\u0006\u0010\u0004\u001a\u00020\u0002J \u0010\n\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u00052\b\b\u0002\u0010\t\u001a\u00020\bJ\u000e\u0010\u000e\u001a\u00020\r2\u0006\u0010\f\u001a\u00020\u000bJ\u000e\u0010\u000f\u001a\u00020\u00022\u0006\u0010\f\u001a\u00020\u000bJ\n\u0010\u0010\u001a\u0004\u0018\u00010\u000bH\u0016J\b\u0010\u0012\u001a\u00020\u0011H\u0016J\b\u0010\u0014\u001a\u00020\u0013H\u0016R\"\u0010\u0012\u001a\u00020\u00118\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0015\u0010\u0016\u001a\u0004\b\u0017\u0010\u0018\"\u0004\b\u0019\u0010\u001aR$\u0010\u0010\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001b\u0010\u001c\u001a\u0004\b\u001d\u0010\u001e\"\u0004\b\u001f\u0010 R\"\u0010\u0014\u001a\u00020\u00138\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b!\u0010\"\u001a\u0004\b#\u0010$\"\u0004\b%\u0010&R\"\u0010.\u001a\u00020'8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b(\u0010)\u001a\u0004\b*\u0010+\"\u0004\b,\u0010-¨\u00061"}, m61528d2 = {"Lcom/onyx/android/sdk/reader/impl/ReaderImageImpl;", "Lcom/onyx/android/sdk/reader/api/ReaderImage;", "", Constants.CLEAR_ATTRIBUTES, "recycleBitmap", "", "width", "height", "Landroid/graphics/Bitmap$Config;", AbstractLogger.CONFIG, "update", "Landroid/graphics/Bitmap;", Constant.SRC_TAG, "", "copyFrom", "attach", "bitmap", "Landroid/graphics/RectF;", UniversalShapeTypeConst.RECTANGLE, "Lcom/onyx/android/sdk/reader/api/ReaderPosition;", "position", "a", "Landroid/graphics/RectF;", "getRectangle", "()Landroid/graphics/RectF;", "setRectangle", "(Landroid/graphics/RectF;)V", "b", "Landroid/graphics/Bitmap;", "getBitmap", "()Landroid/graphics/Bitmap;", "setBitmap", "(Landroid/graphics/Bitmap;)V", "c", "Lcom/onyx/android/sdk/reader/api/ReaderPosition;", "getPosition", "()Lcom/onyx/android/sdk/reader/api/ReaderPosition;", "setPosition", "(Lcom/onyx/android/sdk/reader/api/ReaderPosition;)V", "", "d", "F", "getGammaCorrection", "()F", "setGammaCorrection", "(F)V", "gammaCorrection", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Landroid/graphics/RectF;Landroid/graphics/Bitmap;Lcom/onyx/android/sdk/reader/api/ReaderPosition;F)V", "sdk-readercore_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class ReaderImageImpl implements ReaderImage {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public RectF rectangle;

    /* renamed from: b, reason: from kotlin metadata */
    @Nullable
    public Bitmap bitmap;

    /* renamed from: c, reason: from kotlin metadata */
    @NotNull
    public ReaderPosition position;

    /* renamed from: d, reason: from kotlin metadata */
    public float gammaCorrection;

    public ReaderImageImpl() {
        this(null, null, null, 0.0f, 15, null);
    }

    public static /* synthetic */ void update$default(ReaderImageImpl readerImageImpl, int i, int i2, Bitmap.Config config, int i3, Object obj) {
        if ((i3 & 4) != 0) {
            config = Bitmap.Config.ARGB_8888;
        }
        readerImageImpl.update(i, i2, config);
    }

    public final void attach(@NotNull Bitmap src) {
        Intrinsics.checkNotNullParameter(src, "src");
        recycleBitmap();
        this.bitmap = src;
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderImage
    @Nullable
    /* renamed from: bitmap, reason: from getter */
    public Bitmap getBitmap() {
        return this.bitmap;
    }

    public final void clear() {
        Bitmap bitmap = this.bitmap;
        if (bitmap != null) {
            bitmap.eraseColor(-1);
        }
    }

    public final boolean copyFrom(@NotNull Bitmap src) {
        Intrinsics.checkNotNullParameter(src, "src");
        recycleBitmap();
        Bitmap copy = src.copy(BitmapKt.getBitmapConfigSafely(src), true);
        this.bitmap = copy;
        return BitmapKt.isValid(copy);
    }

    @Nullable
    public final Bitmap getBitmap() {
        return this.bitmap;
    }

    public final float getGammaCorrection() {
        return this.gammaCorrection;
    }

    @NotNull
    public final ReaderPosition getPosition() {
        return this.position;
    }

    @NotNull
    public final RectF getRectangle() {
        return this.rectangle;
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderImage
    @NotNull
    public ReaderPosition position() {
        return this.position;
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderImage
    @NotNull
    public RectF rectangle() {
        return this.rectangle;
    }

    public final void recycleBitmap() {
        Bitmap bitmap = this.bitmap;
        if (bitmap != null) {
            bitmap.recycle();
        }
        this.bitmap = null;
    }

    public final void setBitmap(@Nullable Bitmap bitmap) {
        this.bitmap = bitmap;
    }

    public final void setGammaCorrection(float f) {
        this.gammaCorrection = f;
    }

    public final void setPosition(@NotNull ReaderPosition readerPosition) {
        Intrinsics.checkNotNullParameter(readerPosition, "<set-?>");
        this.position = readerPosition;
    }

    public final void setRectangle(@NotNull RectF rectF) {
        Intrinsics.checkNotNullParameter(rectF, "<set-?>");
        this.rectangle = rectF;
    }

    public final void update(int width, int height, @NotNull Bitmap.Config config) {
        Intrinsics.checkNotNullParameter(config, "config");
        Bitmap bitmap = this.bitmap;
        if (bitmap != null && bitmap.getWidth() == width) {
            Bitmap bitmap2 = this.bitmap;
            if (bitmap2 != null && bitmap2.getHeight() == height) {
                return;
            }
        }
        recycleBitmap();
        this.bitmap = Bitmap.createBitmap(width, height, config);
    }

    public ReaderImageImpl(@NotNull RectF rectangle, @Nullable Bitmap bitmap, @NotNull ReaderPosition position, float f) {
        Intrinsics.checkNotNullParameter(rectangle, "rectangle");
        Intrinsics.checkNotNullParameter(position, "position");
        this.rectangle = rectangle;
        this.bitmap = bitmap;
        this.position = position;
        this.gammaCorrection = f;
    }

    public /* synthetic */ ReaderImageImpl(RectF rectF, Bitmap bitmap, ReaderPosition readerPosition, float f, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? new RectF() : rectF, (i & 2) != 0 ? null : bitmap, (i & 4) != 0 ? ReaderPositionImpl.INSTANCE.getDummy() : readerPosition, (i & 8) != 0 ? 0.0f : f);
    }
}
