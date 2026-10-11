package com.onyx.galaxy.note.p048ui.view;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.ColorMatrix;
import android.graphics.ColorMatrixColorFilter;
import android.graphics.Paint;
import android.view.MotionEvent;
import android.view.View;
import androidx.core.app.NotificationCompat;
import com.blankj.utilcode.util.ScreenUtils;
import com.miui.penengine.p015e.C6997f;
import com.sun.org.apache.bcel.internal.Constants;
import com.sunia.calculatorv2.ink.graphics.IStyleSheet;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0013\b\u0016\u0012\b\u0010\u001c\u001a\u0004\u0018\u00010\u001b¢\u0006\u0004\b\u001d\u0010\u001eJ\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\b\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006J\u0012\u0010\f\u001a\u00020\u000b2\b\u0010\n\u001a\u0004\u0018\u00010\tH\u0016J\u0010\u0010\u000f\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\rH\u0014J\u0018\u0010\u0012\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u00022\u0006\u0010\u0011\u001a\u00020\u0002H\u0014R\u0014\u0010\u0016\u001a\u00020\u00138\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0014\u0010\u0015R\u0018\u0010\u001a\u001a\u0004\u0018\u00010\u00178\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0018\u0010\u0019¨\u0006\u001f"}, m61528d2 = {"Lcom/onyx/galaxy/note/ui/view/EyesComfortOverlayView;", "Landroid/view/View;", "", "color", "", "updatePaintColor", "Landroid/graphics/ColorMatrix;", "matrix", "updateColorMatrix", "Landroid/view/MotionEvent;", NotificationCompat.CATEGORY_EVENT, "", "onTouchEvent", "Landroid/graphics/Canvas;", IStyleSheet.CLASS_CANVAS, "onDraw", "widthMeasureSpec", "heightMeasureSpec", "onMeasure", "Landroid/graphics/Paint;", "e", "Landroid/graphics/Paint;", "paint", "Landroid/graphics/ColorMatrixColorFilter;", C6997f.f39671c, "Landroid/graphics/ColorMatrixColorFilter;", "colorFilter", "Landroid/content/Context;", "context", Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class EyesComfortOverlayView extends View {

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final Paint paint;

    /* renamed from: f, reason: from kotlin metadata */
    @Nullable
    public ColorMatrixColorFilter colorFilter;

    public EyesComfortOverlayView(@Nullable Context context) {
        super(context);
        this.paint = new Paint();
    }

    @Override // android.view.View
    public void onDraw(@NotNull Canvas canvas) {
        Intrinsics.checkNotNullParameter(canvas, "canvas");
        super.onDraw(canvas);
        canvas.drawRect(0.0f, 0.0f, getWidth(), getHeight(), this.paint);
    }

    @Override // android.view.View
    public void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        setMeasuredDimension(ScreenUtils.getScreenWidth(), ScreenUtils.getScreenHeight());
    }

    @Override // android.view.View
    public boolean onTouchEvent(@Nullable MotionEvent event) {
        return false;
    }

    public final void updateColorMatrix(@NotNull ColorMatrix matrix) {
        Intrinsics.checkNotNullParameter(matrix, "matrix");
        ColorMatrixColorFilter colorMatrixColorFilter = new ColorMatrixColorFilter(matrix);
        this.colorFilter = colorMatrixColorFilter;
        this.paint.setColorFilter(colorMatrixColorFilter);
        invalidate();
    }

    public final void updatePaintColor(int color) {
        this.paint.setColor(color);
    }
}
