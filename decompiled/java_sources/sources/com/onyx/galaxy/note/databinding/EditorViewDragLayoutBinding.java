package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
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
public abstract class EditorViewDragLayoutBinding extends ViewDataBinding {

    @NonNull
    public final DragBottomLayoutBinding bottomLayout;

    @NonNull
    public final EditorView editorView;

    @NonNull
    public final RelativeLayout editorViewContainer;

    @NonNull
    public final TintView editorViewFocusRect;

    @NonNull
    public final EditorViewAutoReLocLayout editorViewLockLayout;

    @NonNull
    public final MagnifierEditorLayoutBinding magnifierLayout;

    @NonNull
    public final TintTextView pageNumView;

    @NonNull
    public final PageScroller pageScroller;

    @NonNull
    public final DragRightLayoutBinding rightLayout;

    @NonNull
    public final RulerView rulerView;

    @NonNull
    public final ShapesLocationBar shapesLocationBar;

    @NonNull
    public final DragHelperView viewDragView;

    public EditorViewDragLayoutBinding(Object obj, View view, int i, DragBottomLayoutBinding dragBottomLayoutBinding, EditorView editorView, RelativeLayout relativeLayout, TintView tintView, EditorViewAutoReLocLayout editorViewAutoReLocLayout, MagnifierEditorLayoutBinding magnifierEditorLayoutBinding, TintTextView tintTextView, PageScroller pageScroller, DragRightLayoutBinding dragRightLayoutBinding, RulerView rulerView, ShapesLocationBar shapesLocationBar, DragHelperView dragHelperView) {
        super(obj, view, i);
        this.bottomLayout = dragBottomLayoutBinding;
        this.editorView = editorView;
        this.editorViewContainer = relativeLayout;
        this.editorViewFocusRect = tintView;
        this.editorViewLockLayout = editorViewAutoReLocLayout;
        this.magnifierLayout = magnifierEditorLayoutBinding;
        this.pageNumView = tintTextView;
        this.pageScroller = pageScroller;
        this.rightLayout = dragRightLayoutBinding;
        this.rulerView = rulerView;
        this.shapesLocationBar = shapesLocationBar;
        this.viewDragView = dragHelperView;
    }

    public static EditorViewDragLayoutBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static EditorViewDragLayoutBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static EditorViewDragLayoutBinding bind(@NonNull View view, @Nullable Object obj) {
        return (EditorViewDragLayoutBinding) ViewDataBinding.bind(obj, view, C10651R.layout.editor_view_drag_layout);
    }

    @NonNull
    @Deprecated
    public static EditorViewDragLayoutBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (EditorViewDragLayoutBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.editor_view_drag_layout, viewGroup, z, obj);
    }

    @NonNull
    public static EditorViewDragLayoutBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static EditorViewDragLayoutBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (EditorViewDragLayoutBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.editor_view_drag_layout, null, false, obj);
    }
}
