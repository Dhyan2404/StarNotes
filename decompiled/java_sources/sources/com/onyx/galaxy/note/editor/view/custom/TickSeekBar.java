package com.onyx.galaxy.note.editor.view.custom;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.util.AttributeSet;
import com.blankj.utilcode.util.CollectionUtils;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.theme.widgets.TintSeekBar;
import com.onyx.galaxy.note.C10651R;
import com.sun.org.apache.bcel.internal.Constants;
import com.sunia.calculatorv2.ink.graphics.IStyleSheet;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\\\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u0007\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\f\u0018\u00002\u00020\u0001:\u00014B\u0011\b\u0016\u0012\u0006\u0010\u0010\u001a\u00020\u000f¢\u0006\u0004\b/\u00100B\u001b\b\u0016\u0012\u0006\u0010\u0010\u001a\u00020\u000f\u0012\b\u0010\u0012\u001a\u0004\u0018\u00010\u0011¢\u0006\u0004\b/\u00101B#\b\u0016\u0012\u0006\u0010\u0010\u001a\u00020\u000f\u0012\b\u0010\u0012\u001a\u0004\u0018\u00010\u0011\u0012\u0006\u00102\u001a\u00020\u0002¢\u0006\u0004\b/\u00103J\u0018\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0002H\u0014J\u0010\u0010\t\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u0007H\u0014J\u0006\u0010\n\u001a\u00020\u0005J\u0014\u0010\u000e\u001a\u00020\u00052\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\f0\u000bJ\u001a\u0010\u0013\u001a\u00020\u00052\u0006\u0010\u0010\u001a\u00020\u000f2\b\u0010\u0012\u001a\u0004\u0018\u00010\u0011H\u0002J\b\u0010\u0014\u001a\u00020\u0005H\u0002J\u0010\u0010\u0015\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u0007H\u0002J\u0018\u0010\u001b\u001a\u00020\u001a2\u0006\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0019\u001a\u00020\u0018H\u0002J\u0016\u0010\u001d\u001a\u00020\u00052\f\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\f0\u000bH\u0002R\u0016\u0010!\u001a\u00020\u001e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001f\u0010 R\u0016\u0010#\u001a\u00020\u001e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\"\u0010 R\u0016\u0010&\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b$\u0010%R\u0016\u0010(\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b'\u0010%R\u0018\u0010,\u001a\u0004\u0018\u00010)8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b*\u0010+R\u001c\u0010\r\u001a\b\u0012\u0004\u0012\u00020\f0\u000b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b-\u0010.¨\u00065"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/custom/TickSeekBar;", "Lcom/onyx/android/sdk/theme/widgets/TintSeekBar;", "", "widthMeasureSpec", "heightMeasureSpec", "", "onMeasure", "Landroid/graphics/Canvas;", IStyleSheet.CLASS_CANVAS, "onDraw", "initSeekBarInfo", "", "Lcom/onyx/galaxy/note/editor/view/custom/TickSeekBar$TickData;", "tickDataList", "setTicks", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "b", "c", "a", "Landroid/graphics/Rect;", "thumb", "Landroid/graphics/RectF;", "tick", "", "e", "dataList", "d", "", C6998g.f39679a, "F", "seekBlockLength", C6999h.f39688c, "trackY", "i", "I", "tickWidth", "j", "tickHeight", "Landroid/graphics/Paint;", C4921e.f26537n, "Landroid/graphics/Paint;", "stockPaint", "l", "Ljava/util/List;", Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;)V", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "defStyleAttr", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "TickData", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class TickSeekBar extends TintSeekBar {

    /* renamed from: g, reason: from kotlin metadata */
    public float seekBlockLength;

    /* renamed from: h, reason: from kotlin metadata */
    public float trackY;

    /* renamed from: i, reason: from kotlin metadata */
    public int tickWidth;

    /* renamed from: j, reason: from kotlin metadata */
    public int tickHeight;

    /* renamed from: k, reason: from kotlin metadata */
    @Nullable
    public Paint stockPaint;

    /* renamed from: l, reason: from kotlin metadata */
    @NotNull
    public List<TickData> tickDataList;

    @Metadata(m61527d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0007\n\u0002\b\u0007\n\u0002\u0010\b\n\u0002\b\n\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\t\u001a\u00020\u0002\u0012\u0006\u0010\u0011\u001a\u00020\n¢\u0006\u0004\b\u0012\u0010\u0013R\"\u0010\t\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\"\u0010\u0011\u001a\u00020\n8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000b\u0010\f\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010¨\u0006\u0014"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/custom/TickSeekBar$TickData;", "", "", "a", "F", "getLocation", "()F", "setLocation", "(F)V", "location", "", "b", "I", "getColor", "()I", "setColor", "(I)V", "color", Constants.CONSTRUCTOR_NAME, "(FI)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
    /* loaded from: classes9.dex */
    public static final class TickData {

        /* renamed from: a, reason: from kotlin metadata */
        public float location;

        /* renamed from: b, reason: from kotlin metadata */
        public int color;

        public TickData(float f, int i) {
            this.location = f;
            this.color = i;
        }

        public final int getColor() {
            return this.color;
        }

        public final float getLocation() {
            return this.location;
        }

        public final void setColor(int i) {
            this.color = i;
        }

        public final void setLocation(float f) {
            this.location = f;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TickSeekBar(@NotNull Context context) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
        this.tickDataList = new ArrayList();
    }

    /* renamed from: a */
    public final void m47843a(Canvas canvas) {
        if (CollectionUtils.isEmpty(this.tickDataList)) {
            return;
        }
        int size = this.tickDataList.size();
        for (int i = 0; i < size; i++) {
            float location = (this.seekBlockLength * this.tickDataList.get(i).getLocation()) + getThumb().getBounds().width();
            int i2 = this.tickWidth;
            float measuredHeight = (this.trackY + (getMeasuredHeight() / 2.0f)) - (this.tickHeight / 2.0f);
            float f = i2;
            RectF rectF = new RectF(location - f, measuredHeight, location + f, this.tickHeight + measuredHeight);
            Paint paint = this.stockPaint;
            Intrinsics.checkNotNull(paint);
            paint.setColor(this.tickDataList.get(i).getColor());
            Paint paint2 = this.stockPaint;
            Intrinsics.checkNotNull(paint2);
            canvas.drawRoundRect(rectF, 0.0f, 0.0f, paint2);
        }
    }

    /* renamed from: b */
    public final void m47844b(Context context, AttributeSet attrs) {
        if (attrs == null) {
            return;
        }
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attrs, C10651R.styleable.TickSeekBar);
        Intrinsics.checkNotNullExpressionValue(obtainStyledAttributes, "obtainStyledAttributes(...)");
        this.tickWidth = obtainStyledAttributes.getInt(C10651R.styleable.TickSeekBar_tickWidth, 2);
        this.tickHeight = obtainStyledAttributes.getInt(C10651R.styleable.TickSeekBar_tickHeight, getProgressDrawable().getIntrinsicHeight());
        obtainStyledAttributes.recycle();
    }

    /* renamed from: c */
    public final void m47845c() {
        if (this.stockPaint == null) {
            this.stockPaint = new Paint();
        }
        Paint paint = this.stockPaint;
        if (paint == null) {
            return;
        }
        paint.setAntiAlias(true);
    }

    /* renamed from: d */
    public final void m47846d(List<TickData> dataList) {
        this.tickDataList.clear();
        this.tickDataList.addAll(dataList);
    }

    /* renamed from: e */
    public final boolean m47847e(Rect thumb, RectF tick) {
        int i = thumb.left;
        int i2 = thumb.right;
        float f = tick.left;
        float f2 = tick.right;
        float f3 = i;
        if (f3 <= f || f3 >= f2) {
            float f4 = i2;
            if ((f4 >= f2 || f4 <= f) && (f3 >= f || f4 <= f2)) {
                return false;
            }
        }
        return true;
    }

    public final void initSeekBarInfo() {
        this.seekBlockLength = ((getMeasuredWidth() - getPaddingLeft()) - getPaddingRight()) / getMax();
        this.trackY = getPaddingTop();
    }

    @Override // androidx.appcompat.widget.AppCompatSeekBar, android.widget.AbsSeekBar, android.widget.ProgressBar, android.view.View
    public void onDraw(@NotNull Canvas canvas) {
        Intrinsics.checkNotNullParameter(canvas, "canvas");
        super.onDraw(canvas);
        m47843a(canvas);
    }

    @Override // android.widget.AbsSeekBar, android.widget.ProgressBar, android.view.View
    public void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        super.onMeasure(widthMeasureSpec, heightMeasureSpec);
        initSeekBarInfo();
    }

    public final void setTicks(@NotNull List<TickData> tickDataList) {
        Intrinsics.checkNotNullParameter(tickDataList, "tickDataList");
        m47845c();
        m47846d(tickDataList);
        invalidate();
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TickSeekBar(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        Intrinsics.checkNotNullParameter(context, "context");
        this.tickDataList = new ArrayList();
        m47844b(context, attributeSet);
        m47845c();
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TickSeekBar(@NotNull Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        Intrinsics.checkNotNullParameter(context, "context");
        this.tickDataList = new ArrayList();
    }
}
