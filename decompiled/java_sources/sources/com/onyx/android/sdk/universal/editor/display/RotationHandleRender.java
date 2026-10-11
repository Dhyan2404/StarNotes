package com.onyx.android.sdk.universal.editor.display;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.base.extension.DrawableKt;
import com.onyx.android.sdk.base.extension.RectKt;
import com.onyx.android.sdk.base.utils.RectUtils;
import com.onyx.android.sdk.universal.C8045R;
import com.onyx.android.sdk.universal.theme.UniversalThemeUtils;
import com.sun.org.apache.bcel.internal.Constants;
import com.sunia.calculatorv2.ink.graphics.IStyleSheet;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\r\u0010\u000eJ\u0016\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004J\n\u0010\t\u001a\u0004\u0018\u00010\bH\u0002R\u0014\u0010\f\u001a\u00020\n8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010\u000b¨\u0006\u000f"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/display/RotationHandleRender;", "", "Landroid/graphics/Canvas;", IStyleSheet.CLASS_CANVAS, "Lcom/onyx/android/sdk/base/data/TouchPoint;", "point", "", "drawRotationHandle", "Landroid/graphics/Bitmap;", "a", "Landroid/graphics/Paint;", "Landroid/graphics/Paint;", "paint", Constants.CONSTRUCTOR_NAME, "()V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class RotationHandleRender {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final Paint paint;

    public RotationHandleRender() {
        Paint paint = new Paint();
        this.paint = paint;
        paint.setStyle(Paint.Style.FILL);
        paint.setColor(-1);
    }

    /* renamed from: a */
    public final Bitmap m40791a() {
        Drawable drawable = UniversalThemeUtils.INSTANCE.getDrawable(C8045R.drawable.ic_selection_rotation);
        if (drawable != null) {
            return DrawableKt.toBitmap(drawable, (int) RotationHandleRenderKt.getRotationPointSize(), (int) RotationHandleRenderKt.getRotationPointSize());
        }
        return null;
    }

    public final void drawRotationHandle(@NotNull Canvas canvas, @NotNull TouchPoint point) {
        Intrinsics.checkNotNullParameter(canvas, "canvas");
        Intrinsics.checkNotNullParameter(point, "point");
        Bitmap m40791a = m40791a();
        if (m40791a == null) {
            return;
        }
        RectF rectF = new RectF();
        RectUtils.INSTANCE.translate(rectF, point.getX(), point.getY());
        RectKt.expand(rectF, RotationHandleRenderKt.getRotationPointSize() / 2.0f);
        canvas.drawBitmap(m40791a, rectF.left, rectF.top, this.paint);
    }
}
