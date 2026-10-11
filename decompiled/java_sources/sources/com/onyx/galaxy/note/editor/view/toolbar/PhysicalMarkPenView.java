package com.onyx.galaxy.note.editor.view.toolbar;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.theme.utils.ThemeUtils;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.editor.data.PhysicalShapeDrawableBean;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0003\b\u0017\u0018\u00002\u00020\u0001B\u0011\b\u0016\u0012\u0006\u0010\u000f\u001a\u00020\u000e¢\u0006\u0004\b\u0010\u0010\u0011B\u001d\b\u0016\u0012\u0006\u0010\u000f\u001a\u00020\u000e\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0010\u0010\u0012B%\b\u0016\u0012\u0006\u0010\u000f\u001a\u00020\u000e\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0014\u001a\u00020\u0013¢\u0006\u0004\b\u0010\u0010\u0015J\u0012\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016J\u000e\u0010\b\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006J\u0010\u0010\n\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\u0006H\u0016J\b\u0010\u000b\u001a\u00020\u0004H\u0016R\u0016\u0010\u0007\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\f\u0010\r¨\u0006\u0016"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/toolbar/PhysicalMarkPenView;", "Lcom/onyx/galaxy/note/editor/view/toolbar/PhysicalShapeIconView;", "Landroid/util/AttributeSet;", "attrs", "", "initParams", "", "isRoundCorner", "setRoundCorner", "roundedCorner", "setDrawableResource", "tint", "w", Constants.HASIDCALL_INDEX_SIG, "Landroid/content/Context;", "context", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;)V", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "", "defStyle", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SuppressLint({"UseCompatLoadingForDrawables"})
/* loaded from: classes9.dex */
public class PhysicalMarkPenView extends PhysicalShapeIconView {

    /* renamed from: w, reason: from kotlin metadata */
    public boolean isRoundCorner;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public PhysicalMarkPenView(@NotNull Context context) {
        this(context, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    @Override // com.onyx.galaxy.note.editor.view.toolbar.PhysicalShapeIconView
    public void initParams(@Nullable AttributeSet attrs) {
        super.initParams(attrs);
        if (attrs != null) {
            TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attrs, C10651R.styleable.PhysicalMarkPenView);
            Intrinsics.checkNotNullExpressionValue(obtainStyledAttributes, "obtainStyledAttributes(...)");
            this.isRoundCorner = obtainStyledAttributes.getBoolean(C10651R.styleable.PhysicalMarkPenView_isRoundCorner, false);
            obtainStyledAttributes.recycle();
        }
    }

    @Override // com.onyx.galaxy.note.editor.view.toolbar.PhysicalShapeIconView
    public void setDrawableResource(boolean roundedCorner) {
        try {
            PhysicalShapeDrawableBean physicsDrawables = getShapeToolType().getPhysicsDrawables(this.isRoundCorner);
            setStrokeDrawable(ThemeUtils.getThemeDrawable(physicsDrawables.getStrokeRes()));
            setHighlightDrawable(ThemeUtils.getThemeDrawableById(getContext(), physicsDrawables.getHighlightRes()));
            setFillDrawable(getVectorDrawable(Integer.valueOf(physicsDrawables.getFillRes())));
            setFillUnselectDrawable(getVectorDrawable(Integer.valueOf(physicsDrawables.getFillUnselectRes())));
            setUnselectedDrawable(ThemeUtils.getThemeDrawable(physicsDrawables.getUnselectRes()));
        } catch (Exception e) {
            Debug.INSTANCE.m32035d(getClass(), "error:" + e.getLocalizedMessage(), new Object[0]);
            e.printStackTrace();
        }
    }

    public final void setRoundCorner(boolean isRoundCorner) {
        this.isRoundCorner = isRoundCorner;
        setDrawableResource(isRoundCorner);
        invalidate();
    }

    @Override // com.onyx.galaxy.note.editor.view.toolbar.PhysicalShapeIconView, com.onyx.android.sdk.theme.widgets.Tintable
    public void tint() {
        setDrawableResource(this.isRoundCorner);
        invalidate();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public PhysicalMarkPenView(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, -1);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    public /* synthetic */ PhysicalMarkPenView(Context context, AttributeSet attributeSet, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i & 2) != 0 ? null : attributeSet);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PhysicalMarkPenView(@NotNull Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    public /* synthetic */ PhysicalMarkPenView(Context context, AttributeSet attributeSet, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i2 & 2) != 0 ? null : attributeSet, i);
    }
}
