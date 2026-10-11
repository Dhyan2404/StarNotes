package com.onyx.galaxy.note.editor.view.drag;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.sun.org.apache.xalan.internal.templates.Constants;
import com.sunia.calculatorv2.ink.graphics.IStyleSheet;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0011\u001a\u00020\u0010\u0012\b\u0010\u0013\u001a\u0004\u0018\u00010\u0012¢\u0006\u0004\b\u0014\u0010\u0015J\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u0010\u0010\b\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0014R\u0016\u0010\u000b\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\t\u0010\nR\u0016\u0010\u000f\u001a\u00020\f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\r\u0010\u000e¨\u0006\u0016"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/drag/DragProgressView;", "Lcom/onyx/android/sdk/theme/widgets/TintImageView;", "", Constants.ATTRNAME_PERCENT, "", "setProgress", "Landroid/graphics/Canvas;", IStyleSheet.CLASS_CANVAS, "onDraw", C6998g.f39679a, "F", "progress", "Landroid/graphics/RectF;", C6999h.f39688c, "Landroid/graphics/RectF;", "tempRect", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attributeSet", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class DragProgressView extends TintImageView {

    /* renamed from: g, reason: from kotlin metadata */
    public float progress;

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public RectF tempRect;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DragProgressView(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        Intrinsics.checkNotNullParameter(context, "context");
        this.progress = 1.0f;
        this.tempRect = new RectF();
    }

    @Override // android.widget.ImageView, android.view.View
    public void onDraw(@NotNull Canvas canvas) {
        Intrinsics.checkNotNullParameter(canvas, "canvas");
        Drawable background = getBackground();
        if (background != null) {
            background.draw(canvas);
        }
        this.tempRect.set(0.0f, getMeasuredHeight() * (1.0f - this.progress), getMeasuredWidth(), getMeasuredHeight());
        canvas.clipRect(this.tempRect);
        Drawable drawable = getDrawable();
        if (drawable != null) {
            drawable.draw(canvas);
        }
    }

    public final void setProgress(float percent) {
        this.progress = percent;
        invalidate();
    }
}
