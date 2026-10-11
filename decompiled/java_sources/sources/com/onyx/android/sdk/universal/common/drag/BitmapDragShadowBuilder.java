package com.onyx.android.sdk.universal.common.drag;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Point;
import android.view.View;
import com.sun.org.apache.bcel.internal.Constants;
import com.sunia.calculatorv2.ink.graphics.IStyleSheet;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u000f\u001a\u00020\n¢\u0006\u0004\b\u0010\u0010\u0011J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0018\u0010\t\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\b\u001a\u00020\u0006H\u0016R\u0017\u0010\u000f\u001a\u00020\n8\u0006¢\u0006\f\n\u0004\b\u000b\u0010\f\u001a\u0004\b\r\u0010\u000e¨\u0006\u0012"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/common/drag/BitmapDragShadowBuilder;", "Landroid/view/View$DragShadowBuilder;", "Landroid/graphics/Canvas;", IStyleSheet.CLASS_CANVAS, "", "onDrawShadow", "Landroid/graphics/Point;", "outShadowSize", "outShadowTouchPoint", "onProvideShadowMetrics", "Landroid/graphics/Bitmap;", "a", "Landroid/graphics/Bitmap;", "getBitmap", "()Landroid/graphics/Bitmap;", "bitmap", Constants.CONSTRUCTOR_NAME, "(Landroid/graphics/Bitmap;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class BitmapDragShadowBuilder extends View.DragShadowBuilder {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final Bitmap bitmap;

    public BitmapDragShadowBuilder(@NotNull Bitmap bitmap) {
        Intrinsics.checkNotNullParameter(bitmap, "bitmap");
        this.bitmap = bitmap;
    }

    @NotNull
    public final Bitmap getBitmap() {
        return this.bitmap;
    }

    @Override // android.view.View.DragShadowBuilder
    public void onDrawShadow(@NotNull Canvas canvas) {
        Intrinsics.checkNotNullParameter(canvas, "canvas");
        canvas.drawBitmap(this.bitmap, 0.0f, 0.0f, (Paint) null);
    }

    @Override // android.view.View.DragShadowBuilder
    public void onProvideShadowMetrics(@NotNull Point outShadowSize, @NotNull Point outShadowTouchPoint) {
        Intrinsics.checkNotNullParameter(outShadowSize, "outShadowSize");
        Intrinsics.checkNotNullParameter(outShadowTouchPoint, "outShadowTouchPoint");
        outShadowSize.set(this.bitmap.getWidth(), this.bitmap.getHeight());
        outShadowTouchPoint.set(outShadowSize.x / 2, outShadowSize.y / 2);
    }
}
