package com.onyx.galaxy.note.common.view;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.util.AttributeSet;
import android.view.View;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.device.C7384R;
import com.onyx.android.sdk.skin.C7996R;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.common.view.RippleAnimView;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import com.sunia.calculatorv2.ink.graphics.IStyleSheet;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__IteratorsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.IndexedValue;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\t\u0018\u0000 .2\u00020\u0001:\u0002/.B\u0013\b\u0016\u0012\b\u0010(\u001a\u0004\u0018\u00010'¢\u0006\u0004\b)\u0010*B\u001d\b\u0016\u0012\b\u0010(\u001a\u0004\u0018\u00010'\u0012\b\u0010\t\u001a\u0004\u0018\u00010\b¢\u0006\u0004\b)\u0010+B%\b\u0016\u0012\b\u0010(\u001a\u0004\u0018\u00010'\u0012\b\u0010\t\u001a\u0004\u0018\u00010\b\u0012\u0006\u0010,\u001a\u00020\u0011¢\u0006\u0004\b)\u0010-J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0015J\b\u0010\u0006\u001a\u00020\u0004H\u0014J\b\u0010\u0007\u001a\u00020\u0004H\u0002J\u0012\u0010\n\u001a\u00020\u00042\b\u0010\t\u001a\u0004\u0018\u00010\bH\u0002R,\u0010\u0010\u001a\u001a\u0012\b\u0012\u00060\fR\u00020\u00000\u000bj\f\u0012\b\u0012\u00060\fR\u00020\u0000`\r8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000e\u0010\u000fR\u0016\u0010\u0014\u001a\u00020\u00118\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0012\u0010\u0013R\u0016\u0010\u0016\u001a\u00020\u00118\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0015\u0010\u0013R\u0016\u0010\u0018\u001a\u00020\u00118\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0017\u0010\u0013R\u0016\u0010\u001c\u001a\u00020\u00198\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001a\u0010\u001bR\u0016\u0010\u001e\u001a\u00020\u00198\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001d\u0010\u001bR\u0016\u0010\"\u001a\u00020\u001f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b \u0010!R\u0014\u0010&\u001a\u00020#8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b$\u0010%¨\u00060"}, m61528d2 = {"Lcom/onyx/galaxy/note/common/view/RippleAnimView;", "Landroid/view/View;", "Landroid/graphics/Canvas;", IStyleSheet.CLASS_CANVAS, "", "onDraw", "onDetachedFromWindow", "c", "Landroid/util/AttributeSet;", "attrs", "d", "Ljava/util/ArrayList;", "Lcom/onyx/galaxy/note/common/view/RippleAnimView$Circle;", "Lkotlin/collections/ArrayList;", "e", "Ljava/util/ArrayList;", "ripples", "", C6997f.f39671c, "I", "rippleColor", C6998g.f39679a, "speed", C6999h.f39688c, "rippleDensity", "", "i", Constants.HASIDCALL_INDEX_SIG, "isFill", "j", "isAlpha", "Landroid/graphics/Paint;", C4921e.f26537n, "Landroid/graphics/Paint;", "paint", "Ljava/lang/Runnable;", "l", "Ljava/lang/Runnable;", "drawRunnable", "Landroid/content/Context;", "context", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;)V", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "defStyleAttr", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "Companion", "Circle", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class RippleAnimView extends View {
    public static final long ANIM_FRAME_DURATION = 80;
    public static final int MAX_ALPHA = 220;

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final ArrayList<Circle> ripples;

    /* renamed from: f, reason: from kotlin metadata */
    public int rippleColor;

    /* renamed from: g, reason: from kotlin metadata */
    public int speed;

    /* renamed from: h, reason: from kotlin metadata */
    public int rippleDensity;

    /* renamed from: i, reason: from kotlin metadata */
    public boolean isFill;

    /* renamed from: j, reason: from kotlin metadata */
    public boolean isAlpha;

    /* renamed from: k, reason: from kotlin metadata */
    @NotNull
    public Paint paint;

    /* renamed from: l, reason: from kotlin metadata */
    @NotNull
    public final Runnable drawRunnable;

    @Metadata(m61527d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u000e\b\u0086\u0004\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\t\u001a\u00020\u0002\u0012\u0006\u0010\r\u001a\u00020\u0002¢\u0006\u0004\b\u000e\u0010\u000fR\"\u0010\t\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\"\u0010\r\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\n\u0010\u0004\u001a\u0004\b\u000b\u0010\u0006\"\u0004\b\f\u0010\b¨\u0006\u0010"}, m61528d2 = {"Lcom/onyx/galaxy/note/common/view/RippleAnimView$Circle;", "", "", "a", "I", "getWidth", "()I", "setWidth", "(I)V", "width", "b", "getAlpha", "setAlpha", "alpha", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/galaxy/note/common/view/RippleAnimView;II)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
    /* loaded from: classes9.dex */
    public final class Circle {

        /* renamed from: a, reason: from kotlin metadata */
        public int width;

        /* renamed from: b, reason: from kotlin metadata */
        public int alpha;

        public Circle(int i, int i2) {
            this.width = i;
            this.alpha = i2;
        }

        public final int getAlpha() {
            return this.alpha;
        }

        public final int getWidth() {
            return this.width;
        }

        public final void setAlpha(int i) {
            this.alpha = i;
        }

        public final void setWidth(int i) {
            this.width = i;
        }
    }

    public RippleAnimView(@Nullable Context context) {
        this(context, null);
    }

    /* renamed from: b */
    public static final void m45184b(RippleAnimView this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.invalidate();
    }

    /* renamed from: c */
    public final void m45185c() {
        this.paint.setColor(this.rippleColor);
        this.paint.setStrokeWidth(ResManager.INSTANCE.getDimens(C7384R.dimen.dp_1_5));
        if (this.isFill) {
            this.paint.setStyle(Paint.Style.FILL);
        } else {
            this.paint.setStyle(Paint.Style.STROKE);
        }
        this.paint.setStrokeCap(Paint.Cap.ROUND);
        this.paint.setAntiAlias(true);
        this.ripples.add(new Circle(0, 220));
    }

    /* renamed from: d */
    public final void m45186d(AttributeSet attrs) {
        TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attrs, C10651R.styleable.RippleAnimView);
        Intrinsics.checkNotNullExpressionValue(obtainStyledAttributes, "obtainStyledAttributes(...)");
        this.rippleColor = obtainStyledAttributes.getColor(C10651R.styleable.RippleAnimView_viewColor, getContext().getColor(C7996R.color.theme_primary_color_01));
        this.speed = obtainStyledAttributes.getInteger(C10651R.styleable.RippleAnimView_speed, 0);
        this.rippleDensity = obtainStyledAttributes.getDimensionPixelSize(C10651R.styleable.RippleAnimView_density, ResManager.INSTANCE.getDimens(C7384R.dimen.dp_4));
        this.isAlpha = obtainStyledAttributes.getBoolean(C10651R.styleable.RippleAnimView_isAlpha, false);
        obtainStyledAttributes.recycle();
    }

    @Override // android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        removeCallbacks(this.drawRunnable);
    }

    @Override // android.view.View
    @SuppressLint({"DrawAllocation"})
    public void onDraw(@NotNull Canvas canvas) {
        Iterator withIndex;
        Object last;
        Intrinsics.checkNotNullParameter(canvas, "canvas");
        canvas.save();
        Iterator<Circle> it2 = this.ripples.iterator();
        Intrinsics.checkNotNullExpressionValue(it2, "iterator(...)");
        withIndex = CollectionsKt__IteratorsKt.withIndex(it2);
        while (withIndex.hasNext()) {
            IndexedValue indexedValue = (IndexedValue) withIndex.next();
            indexedValue.getIndex();
            Circle circle = (Circle) indexedValue.component2();
            this.paint.setAlpha(circle.getAlpha());
            float measuredWidth = getMeasuredWidth();
            ResManager resManager = ResManager.INSTANCE;
            canvas.drawCircle(measuredWidth / resManager.getFloat(C10651R.dimen.twice), getMeasuredHeight() / resManager.getFloat(C10651R.dimen.twice), circle.getWidth() - this.paint.getStrokeWidth(), this.paint);
            if (circle.getWidth() + this.paint.getStrokeWidth() > getMeasuredWidth() / resManager.getFloat(C10651R.dimen.twice)) {
                it2.remove();
            } else {
                if (this.isAlpha) {
                    float f = 220;
                    circle.setAlpha((int) (f - ((circle.getWidth() / (getMeasuredWidth() / resManager.getFloat(C10651R.dimen.twice))) * f)));
                }
                circle.setWidth(circle.getWidth() + this.speed);
            }
            if (this.ripples.size() > 0) {
                last = CollectionsKt___CollectionsKt.last((List<? extends Object>) this.ripples);
                if (((Circle) last).getWidth() > this.rippleDensity) {
                    this.ripples.add(new Circle(0, 220));
                }
            }
        }
        postDelayed(this.drawRunnable, 80L);
        canvas.restore();
    }

    public RippleAnimView(@Nullable Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, -1);
    }

    public RippleAnimView(@Nullable Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.ripples = new ArrayList<>();
        this.rippleColor = getContext().getColor(C7996R.color.theme_primary_color_01);
        this.speed = 2;
        this.rippleDensity = ResManager.INSTANCE.getDimens(C7384R.dimen.dp_2);
        this.isAlpha = true;
        this.paint = new Paint();
        this.drawRunnable = new Runnable() { // from class: com.sunia.HTREnginev2.wrl
            @Override // java.lang.Runnable
            public final void run() {
                RippleAnimView.m45184b(RippleAnimView.this);
            }
        };
        m45186d(attributeSet);
        m45185c();
    }
}
