package com.onyx.android.sdk.p039ui;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Point;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.RectF;
import android.view.View;
import androidx.core.graphics.MatrixKt;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.RectKt;
import com.onyx.android.sdk.base.lite.extension.RectFKt;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.device.C7384R;
import com.onyx.android.sdk.skin.C7996R;
import com.onyx.android.sdk.theme.utils.ThemeUtils;
import com.onyx.android.sdk.universal.editor.receiver.ApiBroadCastReceiver;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u000b\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u00020\u0001BM\u0012\b\b\u0002\u0010\t\u001a\u00020\u0006\u0012\b\b\u0002\u0010\u000b\u001a\u00020\u0006\u0012\b\b\u0002\u0010\r\u001a\u00020\u0006\u0012\b\b\u0002\u0010\u000f\u001a\u00020\u0006\u0012\b\b\u0002\u0010\u0011\u001a\u00020\u0006\u0012\b\b\u0002\u0010\u0015\u001a\u00020\u0012\u0012\b\b\u0002\u0010\u0017\u001a\u00020\u0006¢\u0006\u0004\b\u001e\u0010\u001fJ\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002R\u0014\u0010\t\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010\bR\u0014\u0010\u000b\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\n\u0010\bR\u0014\u0010\r\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\f\u0010\bR\u0014\u0010\u000f\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000e\u0010\bR\u0014\u0010\u0011\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0010\u0010\bR\u0014\u0010\u0015\u001a\u00020\u00128\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0013\u0010\u0014R\u0014\u0010\u0017\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0016\u0010\bR\u0014\u0010\u001b\u001a\u00020\u00188\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0019\u0010\u001aR\u0014\u0010\u001d\u001a\u00020\u00188\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001c\u0010\u001a¨\u0006 "}, m61528d2 = {"Lcom/onyx/android/sdk/ui/ShadowCreateArgs;", "", "Landroid/view/View;", "sourceView", "Landroid/view/View$DragShadowBuilder;", "createDragDropShadow", "", "a", "F", "outerRectPadding", "b", "roundRectRadius", "c", "shadowBlurRadius", "d", "shadowDx", "e", "shadowDy", "", C6997f.f39671c, "I", "shadowColor", C6998g.f39679a, ApiBroadCastReceiver.ARGS_STROKE_WIDTH, "Landroid/graphics/Paint;", C6999h.f39688c, "Landroid/graphics/Paint;", "fillPaint", "i", "clearPaint", Constants.CONSTRUCTOR_NAME, "(FFFFFIF)V", "sdk-ui_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class ShadowCreateArgs {

    /* renamed from: a, reason: from kotlin metadata */
    public final float outerRectPadding;

    /* renamed from: b, reason: from kotlin metadata */
    public final float roundRectRadius;

    /* renamed from: c, reason: from kotlin metadata */
    public final float shadowBlurRadius;

    /* renamed from: d, reason: from kotlin metadata */
    public final float shadowDx;

    /* renamed from: e, reason: from kotlin metadata */
    public final float shadowDy;

    /* renamed from: f, reason: from kotlin metadata */
    public final int shadowColor;

    /* renamed from: g, reason: from kotlin metadata */
    public final float strokeWidth;

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final Paint fillPaint;

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public final Paint clearPaint;

    public ShadowCreateArgs() {
        this(0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0, 0.0f, 127, null);
    }

    @NotNull
    public final View.DragShadowBuilder createDragDropShadow(@NotNull final View sourceView) {
        Intrinsics.checkNotNullParameter(sourceView, "sourceView");
        return new View.DragShadowBuilder(sourceView, this) { // from class: com.onyx.android.sdk.ui.ShadowCreateArgs$createDragDropShadow$1

            /* renamed from: a */
            public final /* synthetic */ View f47180a;

            /* renamed from: b */
            public final /* synthetic */ ShadowCreateArgs f47181b;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(sourceView);
                this.f47180a = sourceView;
                this.f47181b = this;
            }

            @Override // android.view.View.DragShadowBuilder
            public void onDrawShadow(@NotNull Canvas canvas) {
                float f;
                float f2;
                float f3;
                float f4;
                float f5;
                Paint paint;
                float f6;
                float f7;
                Paint paint2;
                float f8;
                float f9;
                Intrinsics.checkNotNullParameter(canvas, "canvas");
                RectF rectF = new RectF(0.0f, 0.0f, this.f47180a.getMeasuredWidth(), this.f47180a.getMeasuredHeight());
                f = this.f47181b.outerRectPadding;
                f2 = this.f47181b.outerRectPadding;
                rectF.offset(f, f2);
                RectF copy = RectFKt.copy(rectF);
                f3 = this.f47181b.outerRectPadding;
                RectF expand = RectKt.expand(copy, f3);
                ShadowCreateArgs shadowCreateArgs = this.f47181b;
                int saveLayer = canvas.saveLayer(expand, null);
                try {
                    f4 = shadowCreateArgs.roundRectRadius;
                    f5 = shadowCreateArgs.roundRectRadius;
                    paint = shadowCreateArgs.fillPaint;
                    canvas.drawRoundRect(rectF, f4, f5, paint);
                    f6 = shadowCreateArgs.roundRectRadius;
                    f7 = shadowCreateArgs.roundRectRadius;
                    paint2 = shadowCreateArgs.clearPaint;
                    canvas.drawRoundRect(rectF, f6, f7, paint2);
                    canvas.restoreToCount(saveLayer);
                    ShadowCreateArgs shadowCreateArgs2 = this.f47181b;
                    saveLayer = canvas.saveLayer(expand, null);
                    try {
                        canvas.saveLayerAlpha(expand, 200);
                        f8 = shadowCreateArgs2.outerRectPadding;
                        f9 = shadowCreateArgs2.outerRectPadding;
                        Matrix translationMatrix = MatrixKt.translationMatrix(f8, f9);
                        int save = canvas.save();
                        canvas.concat(translationMatrix);
                        try {
                            super.onDrawShadow(canvas);
                            canvas.restoreToCount(save);
                            canvas.saveLayerAlpha(expand, 255);
                        } catch (Throwable th) {
                            canvas.restoreToCount(save);
                            throw th;
                        }
                    } finally {
                    }
                } finally {
                }
            }

            @Override // android.view.View.DragShadowBuilder
            public void onProvideShadowMetrics(@NotNull Point outShadowSize, @NotNull Point outShadowTouchPoint) {
                float f;
                Intrinsics.checkNotNullParameter(outShadowSize, "outShadowSize");
                Intrinsics.checkNotNullParameter(outShadowTouchPoint, "outShadowTouchPoint");
                f = this.f47181b.outerRectPadding;
                int i = ((int) f) * 2;
                outShadowSize.set(this.f47180a.getMeasuredWidth() + i, this.f47180a.getMeasuredHeight() + i);
                outShadowTouchPoint.set(outShadowSize.x / 2, outShadowSize.y / 2);
            }
        };
    }

    public ShadowCreateArgs(float f, float f2, float f3, float f4, float f5, int i, float f6) {
        this.outerRectPadding = f;
        this.roundRectRadius = f2;
        this.shadowBlurRadius = f3;
        this.shadowDx = f4;
        this.shadowDy = f5;
        this.shadowColor = i;
        this.strokeWidth = f6;
        Paint paint = new Paint();
        paint.setColor(-16777216);
        paint.setStyle(Paint.Style.FILL);
        paint.setShadowLayer(f3, f4, f5, i);
        this.fillPaint = paint;
        Paint paint2 = new Paint();
        paint2.setColor(-16777216);
        paint2.setStyle(Paint.Style.FILL);
        paint2.setStrokeWidth(f6);
        paint2.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.CLEAR));
        this.clearPaint = paint2;
    }

    public /* synthetic */ ShadowCreateArgs(float f, float f2, float f3, float f4, float f5, int i, float f6, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? ResManager.INSTANCE.getDimension(C7384R.dimen.dp_12) : f, (i2 & 2) != 0 ? ResManager.INSTANCE.getDimension(C7384R.dimen.dp_12) : f2, (i2 & 4) != 0 ? ResManager.INSTANCE.getDimension(C7384R.dimen.dp_4) : f3, (i2 & 8) != 0 ? ResManager.INSTANCE.getDimension(C7384R.dimen.dp_0) : f4, (i2 & 16) != 0 ? ResManager.INSTANCE.getDimension(C7384R.dimen.dp_1) : f5, (i2 & 32) != 0 ? ThemeUtils.getColorById(C7996R.color.theme_background_color_05) : i, (i2 & 64) != 0 ? ResManager.INSTANCE.getDimension(C7384R.dimen.dp_1) : f6);
    }
}
