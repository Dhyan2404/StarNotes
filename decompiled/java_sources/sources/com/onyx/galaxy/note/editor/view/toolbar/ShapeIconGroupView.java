package com.onyx.galaxy.note.editor.view.toolbar;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.VectorDrawable;
import android.util.AttributeSet;
import com.onyx.android.sdk.base.extension.AnyKt;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.theme.utils.ThemeUtils;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.editor.data.ShapeDrawableBean;
import com.onyx.galaxy.note.editor.data.ShapeToolType;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0007\u0018\u00002\u00020\u0001B\u0011\b\u0016\u0012\u0006\u0010\u0011\u001a\u00020\u0010¢\u0006\u0004\b\u0012\u0010\u0013B\u001d\b\u0016\u0012\u0006\u0010\u0011\u001a\u00020\u0010\u0012\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u0014¢\u0006\u0004\b\u0012\u0010\u0016B%\b\u0016\u0012\u0006\u0010\u0011\u001a\u00020\u0010\u0012\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u0014\u0012\u0006\u0010\u0017\u001a\u00020\u0002¢\u0006\u0004\b\u0012\u0010\u0018J\u001b\u0010\u0005\u001a\u0004\u0018\u00010\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0002¢\u0006\u0004\b\u0005\u0010\u0006J\u001b\u0010\b\u001a\u0004\u0018\u00010\u00072\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0002¢\u0006\u0004\b\b\u0010\tJ\b\u0010\u000b\u001a\u00020\nH\u0016J\b\u0010\r\u001a\u00020\fH\u0016J\b\u0010\u000f\u001a\u00020\u000eH\u0016¨\u0006\u0019"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeIconGroupView;", "Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeIconView;", "", "drawableId", "Landroid/graphics/drawable/VectorDrawable;", "j", "(Ljava/lang/Integer;)Landroid/graphics/drawable/VectorDrawable;", "Landroid/graphics/drawable/Drawable;", "i", "(Ljava/lang/Integer;)Landroid/graphics/drawable/Drawable;", "", "setDrawableResource", "Lcom/onyx/galaxy/note/editor/data/ShapeToolType;", "getViewShapeType", "", "isVipType", "Landroid/content/Context;", "context", Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;)V", "Landroid/util/AttributeSet;", "attrs", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "defStyle", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SuppressLint({"UseCompatLoadingForDrawables"})
@SourceDebugExtension({"SMAP\nShapeIconGroupView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ShapeIconGroupView.kt\ncom/onyx/galaxy/note/editor/view/toolbar/ShapeIconGroupView\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,63:1\n1#2:64\n*E\n"})
/* loaded from: classes9.dex */
public final class ShapeIconGroupView extends ShapeIconView {
    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ShapeIconGroupView(@NotNull Context context) {
        this(context, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    /* renamed from: i */
    private final Drawable m50164i(Integer drawableId) {
        Object orElse = AnyKt.getOrElse((int) drawableId, 0);
        if (!(((Number) orElse).intValue() > 0)) {
            orElse = null;
        }
        Integer num = (Integer) orElse;
        if (num != null) {
            return getResources().getDrawable(num.intValue(), null);
        }
        return null;
    }

    /* renamed from: j */
    private final VectorDrawable m50165j(Integer drawableId) {
        Drawable m50164i = m50164i(drawableId);
        if (m50164i instanceof VectorDrawable) {
            return (VectorDrawable) m50164i;
        }
        return null;
    }

    @Override // com.onyx.galaxy.note.editor.view.toolbar.ShapeIconView, com.onyx.galaxy.note.editor.view.IShapeViewOpt
    @NotNull
    public ShapeToolType getViewShapeType() {
        return getShapeToolType();
    }

    @Override // com.onyx.galaxy.note.editor.view.toolbar.ShapeIconView, com.onyx.galaxy.note.editor.view.IShapeViewOpt
    public boolean isVipType() {
        return getShapeToolType().getIsVipType();
    }

    @Override // com.onyx.galaxy.note.editor.view.toolbar.ShapeIconView
    public void setDrawableResource() {
        try {
            ShapeToolType shapeToolType$default = ShapeToolType.Companion.getShapeToolType$default(ShapeToolType.INSTANCE, getShapeToolType().getShapeType(), null, 2, null);
            if (shapeToolType$default == null) {
                shapeToolType$default = ShapeToolType.INK_PEN;
            }
            ShapeDrawableBean drawableRes = shapeToolType$default.getDrawableRes();
            setBgDrawable(ThemeUtils.getThemeDrawable(drawableRes.getBgRes()));
            setSelectDrawable(getShapeToolType().getIsThemeIcon() ? ThemeUtils.getThemeDrawable(drawableRes.getSelectRes()) : m50165j(Integer.valueOf(drawableRes.getSelectRes())));
            setSelectArrowDrawable(m50165j(Integer.valueOf(drawableRes.getSelectArrow())));
            setNormalDrawable(m50165j(Integer.valueOf(drawableRes.getNormalRes())));
            setSelectFillDrawable(m50165j(drawableRes.getSelectFillRes()));
            setSelectedStrokeDrawable(ThemeUtils.getThemeDrawable(C10651R.drawable.ic_shape_tool_select_stroke));
            applyIconTheme();
            invalidate();
        } catch (Exception e) {
            Debug.INSTANCE.m32035d(ShapeIconGroupView.class, "error:" + e.getLocalizedMessage(), new Object[0]);
            e.printStackTrace();
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ShapeIconGroupView(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, -1);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    public /* synthetic */ ShapeIconGroupView(Context context, AttributeSet attributeSet, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i & 2) != 0 ? null : attributeSet);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ShapeIconGroupView(@NotNull Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    public /* synthetic */ ShapeIconGroupView(Context context, AttributeSet attributeSet, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i2 & 2) != 0 ? null : attributeSet, i);
    }
}
