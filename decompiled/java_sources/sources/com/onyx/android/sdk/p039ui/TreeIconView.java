package com.onyx.android.sdk.p039ui;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.PaintFlagsDrawFilter;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import androidx.core.graphics.drawable.DrawableKt;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.utils.ResManager;
import com.sun.org.apache.bcel.internal.Constants;
import com.sunia.calculatorv2.ink.graphics.IStyleSheet;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u00002\u00020\u0001B\u0013\b\u0016\u0012\b\u0010 \u001a\u0004\u0018\u00010\u001f¢\u0006\u0004\b!\u0010\"B\u001d\b\u0016\u0012\b\u0010 \u001a\u0004\u0018\u00010\u001f\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\n¢\u0006\u0004\b!\u0010#B%\b\u0016\u0012\b\u0010 \u001a\u0004\u0018\u00010\u001f\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\n\u0012\u0006\u0010$\u001a\u00020\u0007¢\u0006\u0004\b!\u0010%J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0015J\b\u0010\u0006\u001a\u00020\u0004H\u0002J\u0010\u0010\t\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u0007H\u0002J\u0012\u0010\f\u001a\u00020\u00042\b\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0002R\u0018\u0010\u0010\u001a\u0004\u0018\u00010\r8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000e\u0010\u000fR\u0018\u0010\u0012\u001a\u0004\u0018\u00010\r8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0011\u0010\u000fR\u0014\u0010\u0016\u001a\u00020\u00138\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0014\u0010\u0015R*\u0010\u001e\u001a\u00020\u00072\u0006\u0010\u0017\u001a\u00020\u00078\u0006@FX\u0086\u000e¢\u0006\u0012\n\u0004\b\u0018\u0010\u0019\u001a\u0004\b\u001a\u0010\u001b\"\u0004\b\u001c\u0010\u001d¨\u0006&"}, m61528d2 = {"Lcom/onyx/android/sdk/ui/TreeIconView;", "Landroid/view/View;", "Landroid/graphics/Canvas;", IStyleSheet.CLASS_CANVAS, "", "onDraw", "b", "", "field", "c", "Landroid/util/AttributeSet;", "attrs", "a", "Landroid/graphics/drawable/Drawable;", "e", "Landroid/graphics/drawable/Drawable;", "fillDrawable", C6997f.f39671c, "strokeDrawable", "Landroid/graphics/Paint;", C6998g.f39679a, "Landroid/graphics/Paint;", "bitmapPaint", "value", C6999h.f39688c, "I", "getColor", "()I", "setColor", "(I)V", "color", "Landroid/content/Context;", "context", Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;)V", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "defStyleAttr", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "sdk-ui_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class TreeIconView extends View {

    /* renamed from: e, reason: from kotlin metadata */
    @Nullable
    public Drawable fillDrawable;

    /* renamed from: f, reason: from kotlin metadata */
    @Nullable
    public Drawable strokeDrawable;

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public final Paint bitmapPaint;

    /* renamed from: h, reason: from kotlin metadata */
    public int color;

    public TreeIconView(@Nullable Context context) {
        this(context, null);
    }

    /* renamed from: a */
    public final void m36426a(AttributeSet attrs) {
        TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attrs, C8037R.styleable.TreeIconView);
        Intrinsics.checkNotNullExpressionValue(obtainStyledAttributes, "obtainStyledAttributes(...)");
        this.fillDrawable = obtainStyledAttributes.getDrawable(C8037R.styleable.TreeIconView_fillSrc);
        this.strokeDrawable = obtainStyledAttributes.getDrawable(C8037R.styleable.TreeIconView_strokeSrc);
        obtainStyledAttributes.recycle();
    }

    /* renamed from: b */
    public final void m36427b() {
        this.bitmapPaint.setAntiAlias(true);
    }

    /* renamed from: c */
    public final void m36428c(int field) {
        int red = Color.red(field);
        int green = Color.green(field);
        int blue = Color.blue(field);
        ResManager resManager = ResManager.INSTANCE;
        int argb = Color.argb((int) (resManager.getFloat(C8037R.dimen.alpha_255) * resManager.getFloat(C8037R.dimen.ratio_0_3)), red, green, blue);
        Drawable drawable = this.fillDrawable;
        if (drawable != null) {
            drawable.setTint(argb);
        }
    }

    public final int getColor() {
        return this.color;
    }

    @Override // android.view.View
    @SuppressLint({"DrawAllocation"})
    public void onDraw(@NotNull Canvas canvas) {
        Intrinsics.checkNotNullParameter(canvas, "canvas");
        super.onDraw(canvas);
        canvas.setDrawFilter(new PaintFlagsDrawFilter(0, 0));
        Drawable drawable = this.fillDrawable;
        if (drawable != null) {
            canvas.drawBitmap(DrawableKt.toBitmap$default(drawable, 0, 0, null, 7, null), (Rect) null, new Rect(0, 0, getMeasuredWidth(), getMeasuredHeight()), this.bitmapPaint);
        }
        Drawable drawable2 = this.strokeDrawable;
        if (drawable2 != null) {
            canvas.drawBitmap(DrawableKt.toBitmap$default(drawable2, 0, 0, null, 7, null), (Rect) null, new Rect(0, 0, getMeasuredWidth(), getMeasuredHeight()), this.bitmapPaint);
        }
    }

    public final void setColor(int i) {
        this.color = i;
        m36428c(i);
    }

    public TreeIconView(@Nullable Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, -1);
    }

    public TreeIconView(@Nullable Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.bitmapPaint = new Paint();
        this.color = -16777216;
        m36426a(attributeSet);
        m36427b();
    }
}
