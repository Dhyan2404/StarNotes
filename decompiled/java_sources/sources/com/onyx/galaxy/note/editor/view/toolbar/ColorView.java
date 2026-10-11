package com.onyx.galaxy.note.editor.view.toolbar;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.ColorKt;
import com.onyx.android.sdk.base.extension.DrawableKt;
import com.onyx.android.sdk.base.utils.ColorUtils;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.skin.C7996R;
import com.onyx.android.sdk.theme.utils.ThemeUtils;
import com.onyx.android.sdk.theme.widgets.Tintable;
import com.onyx.galaxy.note.C10651R;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import com.sunia.calculatorv2.ink.graphics.IStyleSheet;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.IntProgression;
import kotlin.ranges.IntRange;
import kotlin.ranges.RangesKt___RangesKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000Z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0010\u0007\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b!\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u00002\u00020\u00012\u00020\u0002B\u0011\b\u0016\u0012\u0006\u0010T\u001a\u00020S¢\u0006\u0004\bU\u0010VB\u001d\b\u0016\u0012\u0006\u0010T\u001a\u00020S\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\f¢\u0006\u0004\bU\u0010WB%\b\u0016\u0012\u0006\u0010T\u001a\u00020S\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\f\u0012\u0006\u0010X\u001a\u00020\u0003¢\u0006\u0004\bU\u0010YJ\u0018\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0003H\u0014J\u0010\u0010\n\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\bH\u0015J\b\u0010\u000b\u001a\u00020\u0006H\u0016J\u0012\u0010\u000e\u001a\u00020\u00062\b\u0010\r\u001a\u0004\u0018\u00010\fH\u0003J\b\u0010\u000f\u001a\u00020\u0006H\u0002J\u0010\u0010\u0010\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\bH\u0002J\u0010\u0010\u0011\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\bH\u0002J\b\u0010\u0012\u001a\u00020\u0006H\u0002R\u0018\u0010\u0015\u001a\u0004\u0018\u00010\u00138\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0012\u0010\u0014R\u0016\u0010\u0019\u001a\u00020\u00168\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0017\u0010\u0018R\u0016\u0010\u001c\u001a\u00020\u00038\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001a\u0010\u001bR\u0016\u0010 \u001a\u00020\u001d8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001e\u0010\u001fR\u0016\u0010\"\u001a\u00020\u001d8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b!\u0010\u001fR\u0016\u0010$\u001a\u00020\u001d8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b#\u0010\u001fR\u0018\u0010(\u001a\u0004\u0018\u00010%8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b&\u0010'R\u0018\u0010*\u001a\u0004\u0018\u00010%8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b)\u0010'R\u0018\u0010,\u001a\u0004\u0018\u00010%8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b+\u0010'R\u0016\u0010.\u001a\u00020\u001d8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b-\u0010\u001fR\u0016\u00100\u001a\u00020\u001d8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b/\u0010\u001fR\u0014\u00104\u001a\u0002018\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b2\u00103R\u0014\u00106\u001a\u0002018\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b5\u00103R\u0018\u00108\u001a\u0004\u0018\u0001018\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b7\u00103R\u0018\u0010:\u001a\u0004\u0018\u00010%8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b9\u0010'R\u0014\u0010<\u001a\u0002018\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b;\u00103R\u0016\u0010>\u001a\u00020\u00168\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b=\u0010\u0018R\"\u0010D\u001a\u00020\u00038\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b?\u0010\u001b\u001a\u0004\b@\u0010A\"\u0004\bB\u0010CR*\u0010G\u001a\u00020\u00162\u0006\u0010E\u001a\u00020\u00168\u0006@FX\u0086\u000e¢\u0006\u0012\n\u0004\bF\u0010\u0018\u001a\u0004\bG\u0010H\"\u0004\bI\u0010JR*\u0010N\u001a\u00020\u00032\u0006\u0010E\u001a\u00020\u00038\u0006@FX\u0086\u000e¢\u0006\u0012\n\u0004\bK\u0010\u001b\u001a\u0004\bL\u0010A\"\u0004\bM\u0010CR\"\u0010R\u001a\u00020\u00038\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bO\u0010\u001b\u001a\u0004\bP\u0010A\"\u0004\bQ\u0010C¨\u0006Z"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/toolbar/ColorView;", "Landroid/view/View;", "Lcom/onyx/android/sdk/theme/widgets/Tintable;", "", "widthMeasureSpec", "heightMeasureSpec", "", "onMeasure", "Landroid/graphics/Canvas;", IStyleSheet.CLASS_CANVAS, "onDraw", "tint", "Landroid/util/AttributeSet;", "attrs", "d", "c", "a", "b", "e", "Landroid/graphics/drawable/Drawable;", "Landroid/graphics/drawable/Drawable;", "arrowDrawable", "", C6997f.f39671c, Constants.HASIDCALL_INDEX_SIG, "isExpandEnable", C6998g.f39679a, "I", "selectTintResId", "", C6999h.f39688c, "F", "fillSize", "i", "fillRadius", "j", "selectRadius", "Landroid/graphics/Path;", C4921e.f26537n, "Landroid/graphics/Path;", "fillPath", "l", "outlinePath", "m", "selectPath", GoogleApiAvailabilityLight.f29016b, "selectStrokeWidth", C4921e.f26528e, "outlineStrokeWidth", "Landroid/graphics/Paint;", "p", "Landroid/graphics/Paint;", "paint", "q", "bitmapPaint", "r", "alphaFillPaint", "s", "alphaFillPath", "t", "bgFill", "u", "showAlphaBackground", "v", "getIndex", "()I", "setIndex", "(I)V", FirebaseAnalytics.Param.INDEX, "value", "w", "isSelect", Constants.BOOLEAN_VALUE_SIG, "setSelect", "(Z)V", "x", "getColor", "setColor", "color", "y", "getFillDrawableRes", "setFillDrawableRes", "fillDrawableRes", "Landroid/content/Context;", "context", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;)V", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "defStyle", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class ColorView extends View implements Tintable {

    /* renamed from: e, reason: from kotlin metadata */
    @Nullable
    public Drawable arrowDrawable;

    /* renamed from: f, reason: from kotlin metadata */
    public boolean isExpandEnable;

    /* renamed from: g, reason: from kotlin metadata */
    public int selectTintResId;

    /* renamed from: h, reason: from kotlin metadata */
    public float fillSize;

    /* renamed from: i, reason: from kotlin metadata */
    public float fillRadius;

    /* renamed from: j, reason: from kotlin metadata */
    public float selectRadius;

    /* renamed from: k, reason: from kotlin metadata */
    @Nullable
    public Path fillPath;

    /* renamed from: l, reason: from kotlin metadata */
    @Nullable
    public Path outlinePath;

    /* renamed from: m, reason: from kotlin metadata */
    @Nullable
    public Path selectPath;

    /* renamed from: n, reason: from kotlin metadata */
    public float selectStrokeWidth;

    /* renamed from: o, reason: from kotlin metadata */
    public float outlineStrokeWidth;

    /* renamed from: p, reason: from kotlin metadata */
    @NotNull
    public final Paint paint;

    /* renamed from: q, reason: from kotlin metadata */
    @NotNull
    public final Paint bitmapPaint;

    /* renamed from: r, reason: from kotlin metadata */
    @Nullable
    public Paint alphaFillPaint;

    /* renamed from: s, reason: from kotlin metadata */
    @Nullable
    public Path alphaFillPath;

    /* renamed from: t, reason: from kotlin metadata */
    @NotNull
    public final Paint bgFill;

    /* renamed from: u, reason: from kotlin metadata */
    public boolean showAlphaBackground;

    /* renamed from: v, reason: from kotlin metadata */
    public int index;

    /* renamed from: w, reason: from kotlin metadata */
    public boolean isSelect;

    /* renamed from: x, reason: from kotlin metadata */
    public int color;

    /* renamed from: y, reason: from kotlin metadata */
    public int fillDrawableRes;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ColorView(@NotNull Context context) {
        this(context, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    /* renamed from: a */
    public final void m49876a(Canvas canvas) {
        IntRange until;
        IntProgression step;
        if (this.alphaFillPath == null || this.fillSize <= 0.0f) {
            return;
        }
        canvas.save();
        Path path = this.alphaFillPath;
        Intrinsics.checkNotNull(path);
        canvas.clipPath(path);
        Path path2 = this.alphaFillPath;
        Intrinsics.checkNotNull(path2);
        canvas.drawPath(path2, this.bgFill);
        float f = this.fillSize / 5;
        for (int i = 0; i < 5; i++) {
            until = RangesKt___RangesKt.until(i % 2 == 0 ? 0 : 1, 5);
            step = RangesKt___RangesKt.step(until, 2);
            int first = step.getFirst();
            int last = step.getLast();
            int step2 = step.getStep();
            if ((step2 > 0 && first <= last) || (step2 < 0 && last <= first)) {
                while (true) {
                    RectF rectF = new RectF();
                    float measuredWidth = getMeasuredWidth() - this.fillSize;
                    ResManager resManager = ResManager.INSTANCE;
                    float f2 = measuredWidth / resManager.getFloat(C10651R.dimen.twice);
                    float measuredHeight = (getMeasuredHeight() - this.fillSize) / resManager.getFloat(C10651R.dimen.twice);
                    float f3 = f2 + (first * f);
                    rectF.left = f3;
                    float f4 = measuredHeight + (i * f);
                    rectF.top = f4;
                    rectF.right = f3 + f;
                    rectF.bottom = f4 + f;
                    Paint paint = this.alphaFillPaint;
                    Intrinsics.checkNotNull(paint);
                    canvas.drawRect(rectF, paint);
                    if (first != last) {
                        first += step2;
                    }
                }
            }
        }
        canvas.restore();
    }

    /* renamed from: b */
    public final void m49877b(Canvas canvas) {
        if (this.fillPath == null || this.fillSize <= 0.0f) {
            return;
        }
        canvas.save();
        int removeAlpha = ColorKt.removeAlpha(this.color);
        Path path = new Path();
        float f = this.fillSize;
        RectF rectF = new RectF(0.0f, 0.0f, f, f);
        float measuredWidth = getMeasuredWidth() - this.fillSize;
        ResManager resManager = ResManager.INSTANCE;
        float f2 = measuredWidth / resManager.getFloat(C10651R.dimen.twice);
        float measuredHeight = (getMeasuredHeight() - this.fillSize) / resManager.getFloat(C10651R.dimen.twice);
        float f3 = this.fillSize;
        RectF rectF2 = new RectF(0.0f, 0.0f, f3 / 2, f3);
        float f4 = this.fillRadius;
        path.addRoundRect(rectF, f4, f4, Path.Direction.CW);
        path.offset(f2, measuredHeight);
        Path path2 = new Path();
        path2.addRect(rectF2, Path.Direction.CW);
        path2.offset(f2, measuredHeight);
        path2.op(path, Path.Op.INTERSECT);
        canvas.save();
        canvas.clipPath(path2);
        this.paint.setStyle(Paint.Style.FILL_AND_STROKE);
        this.paint.setColor(removeAlpha);
        canvas.drawPath(path, this.paint);
        canvas.restore();
    }

    /* renamed from: c */
    public final void m49878c() {
        if (getMeasuredHeight() == 0 || getMeasuredWidth() == 0) {
            return;
        }
        if (this.fillRadius > 0.0f && this.fillSize > 0.0f) {
            float f = this.fillSize;
            RectF rectF = new RectF(0.0f, 0.0f, f, f);
            float measuredWidth = getMeasuredWidth() - this.fillSize;
            ResManager resManager = ResManager.INSTANCE;
            float f2 = measuredWidth / resManager.getFloat(C10651R.dimen.twice);
            float measuredHeight = (getMeasuredHeight() - this.fillSize) / resManager.getFloat(C10651R.dimen.twice);
            Path path = new Path();
            this.alphaFillPath = path;
            Intrinsics.checkNotNull(path);
            float f3 = this.fillRadius;
            path.addRoundRect(rectF, f3, f3, Path.Direction.CW);
            Path path2 = this.alphaFillPath;
            Intrinsics.checkNotNull(path2);
            path2.offset(f2, measuredHeight);
            Path path3 = new Path();
            this.fillPath = path3;
            Intrinsics.checkNotNull(path3);
            float f4 = this.fillRadius;
            path3.addRoundRect(rectF, f4, f4, Path.Direction.CW);
            Path path4 = this.fillPath;
            Intrinsics.checkNotNull(path4);
            path4.offset(f2, measuredHeight);
            if (this.outlineStrokeWidth > 0.0f) {
                this.outlinePath = new Path();
                float f5 = this.fillSize;
                RectF rectF2 = new RectF(0.0f, 0.0f, f5, f5);
                float measuredWidth2 = (getMeasuredWidth() - rectF2.width()) / resManager.getFloat(C10651R.dimen.twice);
                float measuredHeight2 = (getMeasuredHeight() - rectF2.height()) / resManager.getFloat(C10651R.dimen.twice);
                Path path5 = this.outlinePath;
                Intrinsics.checkNotNull(path5);
                float f6 = this.fillRadius;
                path5.addRoundRect(rectF2, f6, f6, Path.Direction.CW);
                Path path6 = this.outlinePath;
                Intrinsics.checkNotNull(path6);
                path6.offset(measuredWidth2, measuredHeight2);
            }
        }
        if (this.selectStrokeWidth > 0.0f) {
            RectF rectF3 = new RectF(0.0f, 0.0f, getMeasuredWidth() - this.selectStrokeWidth, getMeasuredHeight() - this.selectStrokeWidth);
            float f7 = this.selectStrokeWidth;
            ResManager resManager2 = ResManager.INSTANCE;
            float f8 = f7 / resManager2.getFloat(C10651R.dimen.twice);
            float f9 = this.selectStrokeWidth / resManager2.getFloat(C10651R.dimen.twice);
            Path path7 = new Path();
            this.selectPath = path7;
            Intrinsics.checkNotNull(path7);
            float f10 = this.selectRadius;
            path7.addRoundRect(rectF3, f10, f10, Path.Direction.CW);
            Path path8 = this.selectPath;
            Intrinsics.checkNotNull(path8);
            path8.offset(f8, f9);
        }
    }

    @SuppressLint({"CustomViewStyleable"})
    /* renamed from: d */
    public final void m49879d(AttributeSet attrs) {
        this.paint.setAntiAlias(true);
        this.bitmapPaint.setAntiAlias(true);
        this.bitmapPaint.setFilterBitmap(true);
        Paint paint = new Paint();
        paint.setColor(ResManager.INSTANCE.getColor(C10651R.color.black_10));
        paint.setStyle(Paint.Style.FILL);
        paint.setAntiAlias(true);
        this.alphaFillPaint = paint;
        TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attrs, C10651R.styleable.ColorView);
        Intrinsics.checkNotNullExpressionValue(obtainStyledAttributes, "obtainStyledAttributes(...)");
        this.fillSize = obtainStyledAttributes.getDimension(C10651R.styleable.ColorView_fillSize, 0.0f);
        this.fillRadius = obtainStyledAttributes.getDimension(C10651R.styleable.ColorView_fillRadius, 0.0f);
        this.selectRadius = obtainStyledAttributes.getDimension(C10651R.styleable.ColorView_selectRadius, 0.0f);
        this.selectStrokeWidth = obtainStyledAttributes.getDimension(C10651R.styleable.ColorView_selectStrokeWidth, 0.0f);
        this.outlineStrokeWidth = obtainStyledAttributes.getDimension(C10651R.styleable.ColorView_outlineStrokeWidth, 0.0f);
        this.arrowDrawable = obtainStyledAttributes.getDrawable(C10651R.styleable.ColorView_arrow);
        this.isExpandEnable = obtainStyledAttributes.getBoolean(C10651R.styleable.ColorView_isExpandEnable, true);
        this.selectTintResId = obtainStyledAttributes.getResourceId(C10651R.styleable.ColorView_selectTint, C7996R.color.theme_primary_color_01);
        m49880e();
        setColor(obtainStyledAttributes.getColor(C10651R.styleable.ColorView_defaultColor, -1));
        setSelect(obtainStyledAttributes.getBoolean(C10651R.styleable.ColorView_isSelected, false));
        this.index = obtainStyledAttributes.getInt(C10651R.styleable.ColorView_index, 0);
        obtainStyledAttributes.recycle();
    }

    /* renamed from: e */
    public final void m49880e() {
    }

    public final int getColor() {
        return this.color;
    }

    public final int getFillDrawableRes() {
        return this.fillDrawableRes;
    }

    public final int getIndex() {
        return this.index;
    }

    /* renamed from: isSelect, reason: from getter */
    public final boolean getIsSelect() {
        return this.isSelect;
    }

    @Override // android.view.View
    @SuppressLint({"DrawAllocation"})
    public void onDraw(@NotNull Canvas canvas) {
        Drawable drawable;
        Intrinsics.checkNotNullParameter(canvas, "canvas");
        super.onDraw(canvas);
        if (this.showAlphaBackground && this.alphaFillPath != null && this.fillSize > 0.0f) {
            m49876a(canvas);
        }
        int i = this.fillDrawableRes;
        if (i > 0) {
            ResManager resManager = ResManager.INSTANCE;
            Drawable drawable2 = resManager.getDrawable(i);
            int i2 = (int) this.fillSize;
            float measuredWidth = (getMeasuredWidth() - this.fillSize) / resManager.getFloat(C10651R.dimen.twice);
            float measuredHeight = (getMeasuredHeight() - this.fillSize) / resManager.getFloat(C10651R.dimen.twice);
            if (drawable2 != null) {
                drawable2.setBounds(0, 0, i2, i2);
            }
            canvas.save();
            canvas.translate(measuredWidth, measuredHeight);
            if (drawable2 != null) {
                drawable2.draw(canvas);
            }
            canvas.restore();
        } else {
            Path path = this.fillPath;
            if (path != null) {
                this.paint.setStyle(Paint.Style.FILL_AND_STROKE);
                this.paint.setColor(this.color);
                canvas.drawPath(path, this.paint);
            }
            Path path2 = this.outlinePath;
            if (path2 != null) {
                this.paint.setStyle(Paint.Style.STROKE);
                this.paint.setStrokeWidth(this.outlineStrokeWidth);
                this.paint.setColor(ColorUtils.INSTANCE.isColorLight(this.color) ? ResManager.INSTANCE.getColor(C10651R.color.overlay_13) : ResManager.INSTANCE.getColor(C10651R.color.overlay_12));
                canvas.drawPath(path2, this.paint);
            }
            if (Color.alpha(this.color) < 255 && this.fillPath != null) {
                m49877b(canvas);
            }
        }
        if (this.isSelect) {
            if (this.isExpandEnable && (drawable = this.arrowDrawable) != null) {
                Bitmap bitmap = DrawableKt.toBitmap(drawable);
                if (bitmap == null) {
                    return;
                }
                float measuredWidth2 = getMeasuredWidth() - drawable.getIntrinsicHeight();
                ResManager resManager2 = ResManager.INSTANCE;
                canvas.drawBitmap(bitmap, (getMeasuredHeight() - drawable.getIntrinsicWidth()) / resManager2.getFloat(C10651R.dimen.twice), measuredWidth2 / resManager2.getFloat(C10651R.dimen.twice), this.bitmapPaint);
            }
            Path path3 = this.selectPath;
            if (path3 != null) {
                this.paint.setStyle(Paint.Style.STROKE);
                this.paint.setColor(ThemeUtils.getColorById(this.selectTintResId));
                this.paint.setStrokeWidth(this.selectStrokeWidth);
                canvas.drawPath(path3, this.paint);
            }
        }
    }

    @Override // android.view.View
    public void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        super.onMeasure(widthMeasureSpec, heightMeasureSpec);
        m49878c();
    }

    public final void setColor(int i) {
        this.color = i;
        this.showAlphaBackground = Color.alpha(i) < 255;
        invalidate();
    }

    public final void setFillDrawableRes(int i) {
        this.fillDrawableRes = i;
    }

    public final void setIndex(int i) {
        this.index = i;
    }

    public final void setSelect(boolean z) {
        this.isSelect = z;
        invalidate();
    }

    @Override // com.onyx.android.sdk.theme.widgets.Tintable
    public void tint() {
        m49880e();
        invalidate();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ColorView(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, -1);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    public /* synthetic */ ColorView(Context context, AttributeSet attributeSet, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i & 2) != 0 ? null : attributeSet);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ColorView(@NotNull Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        Intrinsics.checkNotNullParameter(context, "context");
        this.isExpandEnable = true;
        this.selectTintResId = C7996R.color.theme_primary_color_01;
        this.paint = new Paint();
        this.bitmapPaint = new Paint();
        Paint paint = new Paint();
        paint.setColor(-1);
        paint.setStyle(Paint.Style.FILL);
        this.bgFill = paint;
        m49879d(attributeSet);
    }

    public /* synthetic */ ColorView(Context context, AttributeSet attributeSet, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i2 & 2) != 0 ? null : attributeSet, i);
    }
}
