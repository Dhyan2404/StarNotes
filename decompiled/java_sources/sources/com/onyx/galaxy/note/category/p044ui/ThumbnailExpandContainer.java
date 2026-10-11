package com.onyx.galaxy.note.category.p044ui;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.device.C7384R;
import com.onyx.android.sdk.theme.utils.TintManager;
import com.onyx.android.sdk.theme.widgets.AppCompatBackgroundHelper;
import com.onyx.android.sdk.theme.widgets.Tintable;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0007\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003B\u0013\b\u0016\u0012\b\u0010\u001e\u001a\u0004\u0018\u00010\u001d¢\u0006\u0004\b\u001f\u0010 B\u001d\b\u0016\u0012\b\u0010\u001e\u001a\u0004\u0018\u00010\u001d\u0012\b\u0010\"\u001a\u0004\u0018\u00010!¢\u0006\u0004\b\u001f\u0010#B%\b\u0016\u0012\b\u0010\u001e\u001a\u0004\u0018\u00010\u001d\u0012\b\u0010\"\u001a\u0004\u0018\u00010!\u0012\u0006\u0010$\u001a\u00020\u0004¢\u0006\u0004\b\u001f\u0010%J\u0010\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u0018\u0010\n\u001a\u00020\u00062\u0006\u0010\b\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\u0004H\u0014J\b\u0010\u000b\u001a\u00020\u0006H\u0014J\u0010\u0010\f\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0016J\u000e\u0010\u000e\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\u0004J\b\u0010\u000f\u001a\u00020\u0006H\u0016J\n\u0010\u0011\u001a\u0004\u0018\u00010\u0010H\u0002R\u0018\u0010\u0015\u001a\u0004\u0018\u00010\u00128\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0013\u0010\u0014R\u0018\u0010\u0018\u001a\u0004\u0018\u00010\u00108\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0016\u0010\u0017R\u0016\u0010\u001c\u001a\u00020\u00198\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001a\u0010\u001b¨\u0006&"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/ui/ThumbnailExpandContainer;", "Landroid/widget/LinearLayout;", "Lcom/onyx/galaxy/note/category/ui/IOrientationChange;", "Lcom/onyx/android/sdk/theme/widgets/Tintable;", "", "viewOrientation", "", "setTitleMargin", "widthMeasureSpec", "heightMeasureSpec", "onMeasure", "onFinishInflate", "onOrientationChange", "dimens", "setMarginTopBottom", "tint", "Landroid/view/View;", "a", "Lcom/onyx/android/sdk/theme/widgets/AppCompatBackgroundHelper;", "e", "Lcom/onyx/android/sdk/theme/widgets/AppCompatBackgroundHelper;", "backgroundHelper", C6997f.f39671c, "Landroid/view/View;", "titleView", "", C6998g.f39679a, "F", "maxWidth", "Landroid/content/Context;", "context", Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;)V", "Landroid/util/AttributeSet;", "attrs", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "defStyleAttr", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nThumbnailExpandContainer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ThumbnailExpandContainer.kt\ncom/onyx/galaxy/note/category/ui/ThumbnailExpandContainer\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,102:1\n172#2,2:103\n163#2,2:105\n*S KotlinDebug\n*F\n+ 1 ThumbnailExpandContainer.kt\ncom/onyx/galaxy/note/category/ui/ThumbnailExpandContainer\n*L\n54#1:103,2\n60#1:105,2\n*E\n"})
/* loaded from: classes9.dex */
public final class ThumbnailExpandContainer extends LinearLayout implements IOrientationChange, Tintable {

    /* renamed from: e, reason: from kotlin metadata */
    @Nullable
    public AppCompatBackgroundHelper backgroundHelper;

    /* renamed from: f, reason: from kotlin metadata */
    @Nullable
    public View titleView;

    /* renamed from: g, reason: from kotlin metadata */
    public float maxWidth;

    public ThumbnailExpandContainer(@Nullable Context context) {
        this(context, null);
    }

    private final void setTitleMargin(int viewOrientation) {
        ViewGroup.LayoutParams layoutParams;
        if (viewOrientation == 0) {
            View m43913a = m43913a();
            layoutParams = m43913a != null ? m43913a.getLayoutParams() : null;
            Intrinsics.checkNotNull(layoutParams, "null cannot be cast to non-null type android.widget.LinearLayout.LayoutParams");
            LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) layoutParams;
            layoutParams2.topMargin = 0;
            layoutParams2.leftMargin = ResManager.INSTANCE.getDimens(C7384R.dimen.dp_16);
            layoutParams2.gravity = 16;
            return;
        }
        View m43913a2 = m43913a();
        layoutParams = m43913a2 != null ? m43913a2.getLayoutParams() : null;
        Intrinsics.checkNotNull(layoutParams, "null cannot be cast to non-null type android.widget.LinearLayout.LayoutParams");
        LinearLayout.LayoutParams layoutParams3 = (LinearLayout.LayoutParams) layoutParams;
        layoutParams3.leftMargin = 0;
        layoutParams3.topMargin = ResManager.INSTANCE.getDimens(C7384R.dimen.dp_12);
        layoutParams3.gravity = 1;
    }

    /* renamed from: a */
    public final View m43913a() {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            if (childAt instanceof TextView) {
                return childAt;
            }
        }
        return null;
    }

    @Override // android.view.View
    public void onFinishInflate() {
        super.onFinishInflate();
        this.titleView = m43913a();
    }

    @Override // android.widget.LinearLayout, android.view.View
    public void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        super.onMeasure(widthMeasureSpec, heightMeasureSpec);
        float measuredWidth = getMeasuredWidth();
        float f = this.maxWidth;
        if (measuredWidth > f) {
            setMeasuredDimension((int) f, getMeasuredHeight());
        }
    }

    @Override // com.onyx.galaxy.note.category.p044ui.IOrientationChange
    public void onOrientationChange(int viewOrientation) {
        if (viewOrientation == getOrientation()) {
            return;
        }
        setOrientation(viewOrientation);
        if (getOrientation() == 1) {
            int dimension = (int) getContext().getResources().getDimension(C7384R.dimen.dp_16);
            setPadding(dimension, dimension, dimension, dimension);
            setGravity(17);
            setTitleMargin(viewOrientation);
            return;
        }
        int dimension2 = (int) getContext().getResources().getDimension(C7384R.dimen.dp_8);
        setPadding((int) getContext().getResources().getDimension(C7384R.dimen.dp_16), dimension2, dimension2, dimension2);
        setGravity(17);
        setTitleMargin(viewOrientation);
    }

    public final void setMarginTopBottom(int dimens) {
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        Intrinsics.checkNotNull(layoutParams, "null cannot be cast to non-null type android.widget.LinearLayout.LayoutParams");
        LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) layoutParams;
        layoutParams2.topMargin = dimens;
        layoutParams2.bottomMargin = dimens;
        setLayoutParams(layoutParams2);
    }

    @Override // com.onyx.android.sdk.theme.widgets.Tintable
    public void tint() {
        AppCompatBackgroundHelper appCompatBackgroundHelper = this.backgroundHelper;
        if (appCompatBackgroundHelper != null) {
            appCompatBackgroundHelper.tint();
        }
    }

    public ThumbnailExpandContainer(@Nullable Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, -1);
    }

    public ThumbnailExpandContainer(@Nullable Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        setOrientation(1);
        this.maxWidth = getResources().getDimension(C7384R.dimen.dp_150);
        AppCompatBackgroundHelper appCompatBackgroundHelper = new AppCompatBackgroundHelper(this, TintManager.get(context));
        this.backgroundHelper = appCompatBackgroundHelper;
        appCompatBackgroundHelper.loadFromAttribute(attributeSet, i);
    }
}
