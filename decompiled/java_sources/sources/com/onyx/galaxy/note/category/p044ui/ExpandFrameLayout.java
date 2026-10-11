package com.onyx.galaxy.note.category.p044ui;

import android.content.Context;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.cloudstorage.provider.onedrive.OneDriverConstants;
import com.onyx.galaxy.note.C10651R;
import com.sun.org.apache.xalan.internal.templates.Constants;
import com.sunia.HTREnginev2.gon;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0012\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u0001:\u00014B\u0011\b\u0016\u0012\u0006\u0010,\u001a\u00020+¢\u0006\u0004\b-\u0010.B\u001b\b\u0016\u0012\u0006\u0010,\u001a\u00020+\u0012\b\u00100\u001a\u0004\u0018\u00010/¢\u0006\u0004\b-\u00101B#\b\u0016\u0012\u0006\u0010,\u001a\u00020+\u0012\b\u00100\u001a\u0004\u0018\u00010/\u0012\u0006\u00102\u001a\u00020\u000b¢\u0006\u0004\b-\u00103J\b\u0010\u0003\u001a\u00020\u0002H\u0014J\u000e\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004J\u0016\u0010\n\u001a\u00020\u00022\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u0007J\u0018\u0010\u000e\u001a\u00020\u00022\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010\r\u001a\u00020\u000bH\u0014J0\u0010\u0015\u001a\u00020\u00022\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00020\u000b2\u0006\u0010\u0012\u001a\u00020\u000b2\u0006\u0010\u0013\u001a\u00020\u000b2\u0006\u0010\u0014\u001a\u00020\u000bH\u0014J\u0018\u0010\u0017\u001a\u00020\u00022\u0006\u0010\u0016\u001a\u00020\u000f2\u0006\u0010\t\u001a\u00020\u0007H\u0002J\u0010\u0010\u0019\u001a\u00020\u00022\u0006\u0010\u0018\u001a\u00020\u000bH\u0002R\u001b\u0010\u001e\u001a\u00020\u00078FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u001a\u0010\u001b\u001a\u0004\b\u001c\u0010\u001dR\u001b\u0010!\u001a\u00020\u00078FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u001f\u0010\u001b\u001a\u0004\b \u0010\u001dR\u0018\u0010%\u001a\u0004\u0018\u00010\"8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b#\u0010$R\u0018\u0010\u0005\u001a\u0004\u0018\u00010\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b&\u0010'R\u0016\u0010*\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b(\u0010)¨\u00065"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/ui/ExpandFrameLayout;", "Landroid/widget/FrameLayout;", "", "onFinishInflate", "Lcom/onyx/galaxy/note/category/ui/ExpandFrameLayout$OnLayoutExpandListener;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "setLayoutExpandListener", "", "yOffset", Constants.ATTRNAME_PERCENT, "setViewTranslationY", "", "widthMeasureSpec", "heightMeasureSpec", "onMeasure", "", "changed", "left", OneDriverConstants.TOP, gon.f71288n0, "bottom", "onLayout", "isExpand", "b", "orientation", "a", "e", "Lkotlin/Lazy;", "getExpandPercent", "()F", "expandPercent", C6997f.f39671c, "getFolderPercent", "folderPercent", "Landroid/view/ViewGroup;", C6998g.f39679a, "Landroid/view/ViewGroup;", "orientationContainer", C6999h.f39688c, "Lcom/onyx/galaxy/note/category/ui/ExpandFrameLayout$OnLayoutExpandListener;", "i", "F", "lastPercent", "Landroid/content/Context;", "context", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;)V", "Landroid/util/AttributeSet;", "attrs", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "defStyleAttr", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "OnLayoutExpandListener", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class ExpandFrameLayout extends FrameLayout {

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final Lazy expandPercent;

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final Lazy folderPercent;

    /* renamed from: g, reason: from kotlin metadata */
    @Nullable
    public ViewGroup orientationContainer;

    /* renamed from: h, reason: from kotlin metadata */
    @Nullable
    public OnLayoutExpandListener listener;

    /* renamed from: i, reason: from kotlin metadata */
    public float lastPercent;

    @Metadata(m61527d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0002\bf\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&¨\u0006\u0007"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/ui/ExpandFrameLayout$OnLayoutExpandListener;", "", "onLayoutExpand", "", Constants.ATTRNAME_PERCENT, "", "onLayoutFolder", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes9.dex */
    public interface OnLayoutExpandListener {
        void onLayoutExpand(float percent);

        void onLayoutFolder(float percent);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ExpandFrameLayout(@NotNull Context context) {
        super(context);
        Lazy lazy;
        Lazy lazy2;
        Intrinsics.checkNotNullParameter(context, "context");
        lazy = LazyKt__LazyJVMKt.lazy(ExpandFrameLayout$expandPercent$2.INSTANCE);
        this.expandPercent = lazy;
        lazy2 = LazyKt__LazyJVMKt.lazy(ExpandFrameLayout$folderPercent$2.INSTANCE);
        this.folderPercent = lazy2;
        this.lastPercent = 1.0f;
    }

    /* renamed from: a */
    public final void m43063a(int orientation) {
        ViewGroup viewGroup = this.orientationContainer;
        if (viewGroup == null) {
            return;
        }
        Intrinsics.checkNotNull(viewGroup);
        int childCount = viewGroup.getChildCount();
        for (int i = 0; i < childCount; i++) {
            ViewGroup viewGroup2 = this.orientationContainer;
            KeyEvent.Callback childAt = viewGroup2 != null ? viewGroup2.getChildAt(i) : null;
            if (childAt instanceof IOrientationChange) {
                ((IOrientationChange) childAt).onOrientationChange(orientation);
            }
        }
    }

    /* renamed from: b */
    public final void m43064b(boolean isExpand, float percent) {
        if (isExpand) {
            if (percent > getExpandPercent()) {
                m43063a(1);
            }
        } else if (percent < getFolderPercent()) {
            m43063a(0);
        }
    }

    public final float getExpandPercent() {
        return ((Number) this.expandPercent.getValue()).floatValue();
    }

    public final float getFolderPercent() {
        return ((Number) this.folderPercent.getValue()).floatValue();
    }

    @Override // android.view.View
    public void onFinishInflate() {
        super.onFinishInflate();
        this.orientationContainer = (ViewGroup) ((ConstraintLayout) findViewById(C10651R.id.titleContainer)).findViewById(C10651R.id.template_title_orientation_container);
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean changed, int left, int top, int right, int bottom) {
        super.onLayout(changed, left, top, right, bottom);
    }

    @Override // android.widget.FrameLayout, android.view.View
    public void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        super.onMeasure(widthMeasureSpec, heightMeasureSpec);
    }

    public final void setLayoutExpandListener(@NotNull OnLayoutExpandListener listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        this.listener = listener;
    }

    public final void setViewTranslationY(float yOffset, float percent) {
        setTranslationY(Math.abs(yOffset));
        float measuredHeight = getMeasuredHeight() - getTranslationY();
        View childAt = getChildAt(0);
        int i = (int) measuredHeight;
        measureChild(childAt, View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 1073741824), View.MeasureSpec.makeMeasureSpec(i, 1073741824));
        childAt.layout(0, 0, getMeasuredWidth(), i);
        float f = this.lastPercent;
        if (f == percent) {
            return;
        }
        boolean z = f < percent;
        if (z) {
            OnLayoutExpandListener onLayoutExpandListener = this.listener;
            if (onLayoutExpandListener != null) {
                onLayoutExpandListener.onLayoutExpand(percent);
            }
        } else {
            OnLayoutExpandListener onLayoutExpandListener2 = this.listener;
            if (onLayoutExpandListener2 != null) {
                onLayoutExpandListener2.onLayoutFolder(percent);
            }
        }
        m43064b(z, percent);
        this.lastPercent = percent;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ExpandFrameLayout(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        Lazy lazy;
        Lazy lazy2;
        Intrinsics.checkNotNullParameter(context, "context");
        lazy = LazyKt__LazyJVMKt.lazy(ExpandFrameLayout$expandPercent$2.INSTANCE);
        this.expandPercent = lazy;
        lazy2 = LazyKt__LazyJVMKt.lazy(ExpandFrameLayout$folderPercent$2.INSTANCE);
        this.folderPercent = lazy2;
        this.lastPercent = 1.0f;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ExpandFrameLayout(@NotNull Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        Lazy lazy;
        Lazy lazy2;
        Intrinsics.checkNotNullParameter(context, "context");
        lazy = LazyKt__LazyJVMKt.lazy(ExpandFrameLayout$expandPercent$2.INSTANCE);
        this.expandPercent = lazy;
        lazy2 = LazyKt__LazyJVMKt.lazy(ExpandFrameLayout$folderPercent$2.INSTANCE);
        this.folderPercent = lazy2;
        this.lastPercent = 1.0f;
    }
}
