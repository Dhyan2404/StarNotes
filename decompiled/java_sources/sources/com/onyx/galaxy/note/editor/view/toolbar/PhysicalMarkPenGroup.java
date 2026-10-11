package com.onyx.galaxy.note.editor.view.toolbar;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import com.miui.penengine.p015e.C6997f;
import com.onyx.galaxy.note.C10651R;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u00002\u00020\u0001B\u0013\b\u0016\u0012\b\u0010\u0010\u001a\u0004\u0018\u00010\u000f¢\u0006\u0004\b\u0011\u0010\u0012B\u001d\b\u0016\u0012\b\u0010\u0010\u001a\u0004\u0018\u00010\u000f\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0011\u0010\u0013B%\b\u0016\u0012\b\u0010\u0010\u001a\u0004\u0018\u00010\u000f\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\u0014\u001a\u00020\u0007¢\u0006\u0004\b\u0011\u0010\u0015J\b\u0010\u0003\u001a\u00020\u0002H\u0016J\u0012\u0010\u0006\u001a\u00020\u00022\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016J\b\u0010\b\u001a\u00020\u0007H\u0016J\u0010\u0010\u000b\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\tH\u0016R\u0016\u0010\u000e\u001a\u00020\t8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\f\u0010\r¨\u0006\u0016"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/toolbar/PhysicalMarkPenGroup;", "Lcom/onyx/galaxy/note/editor/view/toolbar/PhysicalShapeIconGroup;", "", "initView", "Landroid/util/AttributeSet;", "attrs", "initParams", "", "getLayoutRes", "", "enable", "enableShapeView", C6997f.f39671c, Constants.HASIDCALL_INDEX_SIG, "isRoundCorner", "Landroid/content/Context;", "context", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;)V", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "defStyleAttr", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class PhysicalMarkPenGroup extends PhysicalShapeIconGroup {

    /* renamed from: f, reason: from kotlin metadata */
    public boolean isRoundCorner;

    public PhysicalMarkPenGroup(@Nullable Context context) {
        super(context);
    }

    @Override // com.onyx.galaxy.note.editor.view.toolbar.PhysicalShapeIconGroup, com.onyx.galaxy.note.editor.view.IShapeViewOpt
    public void enableShapeView(boolean enable) {
    }

    @Override // com.onyx.galaxy.note.editor.view.toolbar.PhysicalShapeIconGroup
    public int getLayoutRes() {
        return C10651R.layout.layout_physical_mark_pen_group;
    }

    @Override // com.onyx.galaxy.note.editor.view.toolbar.PhysicalShapeIconGroup
    public void initParams(@Nullable AttributeSet attrs) {
        if (attrs != null) {
            TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attrs, C10651R.styleable.PhysicalMarkPenGroup);
            Intrinsics.checkNotNullExpressionValue(obtainStyledAttributes, "obtainStyledAttributes(...)");
            this.isRoundCorner = obtainStyledAttributes.getBoolean(C10651R.styleable.PhysicalMarkPenGroup_isRoundCorner, false);
            obtainStyledAttributes.recycle();
        }
    }

    @Override // com.onyx.galaxy.note.editor.view.toolbar.PhysicalShapeIconGroup
    public void initView() {
        super.initView();
        PhysicalShapeIconView shapeToolIconView = getShapeToolIconView();
        Intrinsics.checkNotNull(shapeToolIconView, "null cannot be cast to non-null type com.onyx.galaxy.note.editor.view.toolbar.PhysicalMarkPenView");
        ((PhysicalMarkPenView) shapeToolIconView).setRoundCorner(this.isRoundCorner);
    }

    public PhysicalMarkPenGroup(@Nullable Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public PhysicalMarkPenGroup(@Nullable Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }
}
