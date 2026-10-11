package com.onyx.galaxy.note.p048ui.view;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.galaxy.note.C10651R;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u00020\u0001:\u0001%B\u0011\b\u0016\u0012\u0006\u0010\u001f\u001a\u00020\u001e¢\u0006\u0004\b \u0010!B\u001b\b\u0016\u0012\u0006\u0010\u001f\u001a\u00020\u001e\u0012\b\u0010\u0015\u001a\u0004\u0018\u00010\u0014¢\u0006\u0004\b \u0010\"B#\b\u0016\u0012\u0006\u0010\u001f\u001a\u00020\u001e\u0012\b\u0010\u0015\u001a\u0004\u0018\u00010\u0014\u0012\u0006\u0010#\u001a\u00020\u0002¢\u0006\u0004\b \u0010$J\u0018\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0002H\u0014J(\u0010\u000b\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u00022\u0006\u0010\b\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\u0002H\u0014J\"\u0010\u0011\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\f2\b\b\u0002\u0010\u000f\u001a\u00020\u000e2\b\b\u0002\u0010\u0010\u001a\u00020\u000eJ\u000e\u0010\u000b\u001a\u00020\u00052\u0006\u0010\u0013\u001a\u00020\u0012J\u0012\u0010\u0016\u001a\u00020\u00052\b\u0010\u0015\u001a\u0004\u0018\u00010\u0014H\u0002R\u0016\u0010\u000f\u001a\u00020\u000e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0017\u0010\u0018R\u0016\u0010\u0010\u001a\u00020\u000e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\b\u0010\u0018R\u0016\u0010\r\u001a\u00020\f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0019\u0010\u001aR\u0018\u0010\u001d\u001a\u0004\u0018\u00010\u00128\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001b\u0010\u001c¨\u0006&"}, m61528d2 = {"Lcom/onyx/galaxy/note/ui/view/RatioImageView;", "Lcom/onyx/android/sdk/theme/widgets/TintImageView;", "", "widthSpec", "heightSpec", "", "onMeasure", "w", C6999h.f39688c, "ow", "oh", "onSizeChanged", "", "widthHeightRatio", "", "dynamicWidth", "dynamicHeight", "setWidthHeightRatio", "Lcom/onyx/galaxy/note/ui/view/RatioImageView$SizeChangeListener;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "Landroid/util/AttributeSet;", "attrs", "a", C6998g.f39679a, Constants.HASIDCALL_INDEX_SIG, "i", "F", "j", "Lcom/onyx/galaxy/note/ui/view/RatioImageView$SizeChangeListener;", "sizeChangeListener", "Landroid/content/Context;", "context", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;)V", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "defStyleAttr", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "SizeChangeListener", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class RatioImageView extends TintImageView {

    /* renamed from: g, reason: from kotlin metadata */
    public boolean dynamicWidth;

    /* renamed from: h, reason: from kotlin metadata */
    public boolean dynamicHeight;

    /* renamed from: i, reason: from kotlin metadata */
    public float widthHeightRatio;

    /* renamed from: j, reason: from kotlin metadata */
    @Nullable
    public SizeChangeListener sizeChangeListener;

    @Metadata(m61527d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\bæ\u0080\u0001\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0005H&¨\u0006\u0007"}, m61528d2 = {"Lcom/onyx/galaxy/note/ui/view/RatioImageView$SizeChangeListener;", "", "onSizeChanged", "", "w", "", C6999h.f39688c, "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes9.dex */
    public interface SizeChangeListener {
        void onSizeChanged(int w, int h);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public RatioImageView(@NotNull Context context) {
        this(context, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    public static /* synthetic */ void setWidthHeightRatio$default(RatioImageView ratioImageView, float f, boolean z, boolean z2, int i, Object obj) {
        if ((i & 2) != 0) {
            z = false;
        }
        if ((i & 4) != 0) {
            z2 = false;
        }
        ratioImageView.setWidthHeightRatio(f, z, z2);
    }

    /* renamed from: a */
    public final void m51459a(AttributeSet attrs) {
        TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attrs, C10651R.styleable.RatioImageView);
        Intrinsics.checkNotNullExpressionValue(obtainStyledAttributes, "obtainStyledAttributes(...)");
        this.dynamicWidth = obtainStyledAttributes.getBoolean(C10651R.styleable.RatioImageView_dynamicWidth, false);
        this.dynamicHeight = obtainStyledAttributes.getBoolean(C10651R.styleable.RatioImageView_dynamicHeight, false);
        this.widthHeightRatio = obtainStyledAttributes.getFloat(C10651R.styleable.RatioImageView_widthHeightRatio, 1.0f);
        obtainStyledAttributes.recycle();
    }

    @Override // android.widget.ImageView, android.view.View
    public void onMeasure(int widthSpec, int heightSpec) {
        super.onMeasure(widthSpec, heightSpec);
        int measuredWidth = getMeasuredWidth();
        int measuredHeight = getMeasuredHeight();
        if (this.dynamicWidth) {
            measuredWidth = (int) (measuredHeight * this.widthHeightRatio);
        }
        if (this.dynamicHeight) {
            measuredHeight = (int) (measuredWidth / this.widthHeightRatio);
        }
        setMeasuredDimension(measuredWidth, measuredHeight);
    }

    @Override // android.view.View
    public void onSizeChanged(int w, int h, int ow, int oh) {
        super.onSizeChanged(w, h, ow, oh);
        SizeChangeListener sizeChangeListener = this.sizeChangeListener;
        if (sizeChangeListener != null) {
            sizeChangeListener.onSizeChanged(w, h);
        }
    }

    public final void setWidthHeightRatio(float widthHeightRatio, boolean dynamicWidth, boolean dynamicHeight) {
        this.dynamicWidth = dynamicWidth;
        this.dynamicHeight = dynamicHeight;
        this.widthHeightRatio = widthHeightRatio;
        forceLayout();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public RatioImageView(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RatioImageView(@NotNull Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        Intrinsics.checkNotNullParameter(context, "context");
        this.widthHeightRatio = 1.0f;
        m51459a(attributeSet);
    }

    public final void onSizeChanged(@NotNull SizeChangeListener listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        this.sizeChangeListener = listener;
    }
}
