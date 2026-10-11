package com.onyx.galaxy.note.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import androidx.lifecycle.LifecycleOwner;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.android.sdk.theme.widgets.TintView;
import com.onyx.android.sdk.universal.editor.display.EditorView;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.editor.view.EditorViewAutoReLocLayout;
import com.onyx.galaxy.note.editor.view.custom.PageScroller;
import com.onyx.galaxy.note.editor.view.custom.ShapesLocationBar;
import com.onyx.galaxy.note.editor.view.drag.DragHelperView;
import com.onyx.galaxy.note.editor.view.ruler.RulerView;

/* loaded from: classes9.dex */
public class EditorViewDragLayoutBindingImpl extends EditorViewDragLayoutBinding {

    /* renamed from: u0 */
    @Nullable
    public static final ViewDataBinding.IncludedLayouts f56571u0;

    /* renamed from: v0 */
    @Nullable
    public static final SparseIntArray f56572v0;

    /* renamed from: q0 */
    @NonNull
    public final FrameLayout f56573q0;

    /* renamed from: t0 */
    public long f56574t0;

    static {
        ViewDataBinding.IncludedLayouts includedLayouts = new ViewDataBinding.IncludedLayouts(13);
        f56571u0 = includedLayouts;
        includedLayouts.setIncludes(0, new String[]{"magnifier_editor_layout"}, new int[]{4}, new int[]{C10651R.layout.magnifier_editor_layout});
        includedLayouts.setIncludes(1, new String[]{"drag_bottom_layout", "drag_right_layout"}, new int[]{2, 3}, new int[]{C10651R.layout.drag_bottom_layout, C10651R.layout.drag_right_layout});
        SparseIntArray sparseIntArray = new SparseIntArray();
        f56572v0 = sparseIntArray;
        sparseIntArray.put(C10651R.id.view_drag_view, 5);
        sparseIntArray.put(C10651R.id.editor_view, 6);
        sparseIntArray.put(C10651R.id.ruler_view, 7);
        sparseIntArray.put(C10651R.id.editor_view_focus_rect, 8);
        sparseIntArray.put(C10651R.id.pageScroller, 9);
        sparseIntArray.put(C10651R.id.pageNumView, 10);
        sparseIntArray.put(C10651R.id.shapes_location_bar, 11);
        sparseIntArray.put(C10651R.id.editor_view_lock_layout, 12);
    }

    public EditorViewDragLayoutBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 13, f56571u0, f56572v0));
    }

    @Override // androidx.databinding.ViewDataBinding
    public void executeBindings() {
        synchronized (this) {
            this.f56574t0 = 0L;
        }
        ViewDataBinding.executeBindingsOn(this.bottomLayout);
        ViewDataBinding.executeBindingsOn(this.rightLayout);
        ViewDataBinding.executeBindingsOn(this.magnifierLayout);
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            if (this.f56574t0 != 0) {
                return true;
            }
            return this.bottomLayout.hasPendingBindings() || this.rightLayout.hasPendingBindings() || this.magnifierLayout.hasPendingBindings();
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f56574t0 = 8L;
        }
        this.bottomLayout.invalidateAll();
        this.rightLayout.invalidateAll();
        this.magnifierLayout.invalidateAll();
        requestRebind();
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean onFieldChange(int i, Object obj, int i2) {
        if (i == 0) {
            return m45203s((MagnifierEditorLayoutBinding) obj, i2);
        }
        if (i == 1) {
            return m45204t((DragRightLayoutBinding) obj, i2);
        }
        if (i != 2) {
            return false;
        }
        return m45202r((DragBottomLayoutBinding) obj, i2);
    }

    /* renamed from: r */
    public final boolean m45202r(DragBottomLayoutBinding dragBottomLayoutBinding, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.f56574t0 |= 4;
        }
        return true;
    }

    /* renamed from: s */
    public final boolean m45203s(MagnifierEditorLayoutBinding magnifierEditorLayoutBinding, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.f56574t0 |= 1;
        }
        return true;
    }

    @Override // androidx.databinding.ViewDataBinding
    public void setLifecycleOwner(@Nullable LifecycleOwner lifecycleOwner) {
        super.setLifecycleOwner(lifecycleOwner);
        this.bottomLayout.setLifecycleOwner(lifecycleOwner);
        this.rightLayout.setLifecycleOwner(lifecycleOwner);
        this.magnifierLayout.setLifecycleOwner(lifecycleOwner);
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean setVariable(int i, @Nullable Object obj) {
        return true;
    }

    /* renamed from: t */
    public final boolean m45204t(DragRightLayoutBinding dragRightLayoutBinding, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.f56574t0 |= 2;
        }
        return true;
    }

    public EditorViewDragLayoutBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 3, (DragBottomLayoutBinding) objArr[2], (EditorView) objArr[6], (RelativeLayout) objArr[1], (TintView) objArr[8], (EditorViewAutoReLocLayout) objArr[12], (MagnifierEditorLayoutBinding) objArr[4], (TintTextView) objArr[10], (PageScroller) objArr[9], (DragRightLayoutBinding) objArr[3], (RulerView) objArr[7], (ShapesLocationBar) objArr[11], (DragHelperView) objArr[5]);
        this.f56574t0 = -1L;
        setContainedBinding(this.bottomLayout);
        this.editorViewContainer.setTag(null);
        setContainedBinding(this.magnifierLayout);
        FrameLayout frameLayout = (FrameLayout) objArr[0];
        this.f56573q0 = frameLayout;
        frameLayout.setTag(null);
        setContainedBinding(this.rightLayout);
        setRootTag(view);
        invalidateAll();
    }
}
