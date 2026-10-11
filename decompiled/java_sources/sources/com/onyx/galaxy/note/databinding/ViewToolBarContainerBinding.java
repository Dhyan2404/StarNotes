package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.Guideline;
import androidx.databinding.Bindable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.theme.widgets.TintConstraintLayout;
import com.onyx.android.sdk.theme.widgets.TintFrameLayout;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintView;
import com.onyx.android.sdk.universal.editor.data.CommandDataInfo;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.editor.view.toolbar.EraserTypeParamsContainer;
import com.onyx.galaxy.note.editor.view.toolbar.ExcerptTypeParamsContainer;
import com.onyx.galaxy.note.editor.view.toolbar.ImageShapeParamsContainer;
import com.onyx.galaxy.note.editor.view.toolbar.LassoTypeParamsContainer;
import com.onyx.galaxy.note.editor.view.toolbar.ShapeParamsContainer;
import com.onyx.galaxy.note.editor.view.toolbar.ShapeToolViewAuto;
import com.onyx.galaxy.note.editor.view.toolbar.StickersParamsContainer;

/* loaded from: classes9.dex */
public abstract class ViewToolBarContainerBinding extends ViewDataBinding {

    @NonNull
    public final TintFrameLayout clDragContainer;

    @NonNull
    public final EraserTypeParamsContainer eraserTypeParamsContainer;

    @NonNull
    public final ExcerptTypeParamsContainer excerptTypeParamsContainer;

    @NonNull
    public final View guideDivider;

    @NonNull
    public final Guideline guideLine;

    @NonNull
    public final View guideView;

    @NonNull
    public final ImageShapeParamsContainer imageShapeParamsContainer;

    @NonNull
    public final TintImageView ivDragHolderIcon;

    @NonNull
    public final TintImageView ivFullScreen;

    @NonNull
    public final LassoTypeParamsContainer lassoTypeParamsContainer;

    @NonNull
    public final LinearLayout llToolContainer;

    @NonNull
    public final LinearLayout llUndoRedoContainer;

    @Bindable
    protected CommandDataInfo mCommandDataInfo;

    @NonNull
    public final FrameLayout paramsContainer;

    @NonNull
    public final TintImageView redo;

    @NonNull
    public final ShapeToolViewAuto rlShapeToolViewAuto;

    @NonNull
    public final ShapeParamsContainer scrollParamsContainer;

    @NonNull
    public final StickersParamsContainer stickerParamsContainer;

    @NonNull
    public final TintConstraintLayout tlDragToolMask;

    @NonNull
    public final TintView toolContainerDividerBottom;

    @NonNull
    public final TintView toolContainerDividerTop;

    @NonNull
    public final TintImageView undo;

    @NonNull
    public final TintView undoRedoDivider;

    public ViewToolBarContainerBinding(Object obj, View view, int i, TintFrameLayout tintFrameLayout, EraserTypeParamsContainer eraserTypeParamsContainer, ExcerptTypeParamsContainer excerptTypeParamsContainer, View view2, Guideline guideline, View view3, ImageShapeParamsContainer imageShapeParamsContainer, TintImageView tintImageView, TintImageView tintImageView2, LassoTypeParamsContainer lassoTypeParamsContainer, LinearLayout linearLayout, LinearLayout linearLayout2, FrameLayout frameLayout, TintImageView tintImageView3, ShapeToolViewAuto shapeToolViewAuto, ShapeParamsContainer shapeParamsContainer, StickersParamsContainer stickersParamsContainer, TintConstraintLayout tintConstraintLayout, TintView tintView, TintView tintView2, TintImageView tintImageView4, TintView tintView3) {
        super(obj, view, i);
        this.clDragContainer = tintFrameLayout;
        this.eraserTypeParamsContainer = eraserTypeParamsContainer;
        this.excerptTypeParamsContainer = excerptTypeParamsContainer;
        this.guideDivider = view2;
        this.guideLine = guideline;
        this.guideView = view3;
        this.imageShapeParamsContainer = imageShapeParamsContainer;
        this.ivDragHolderIcon = tintImageView;
        this.ivFullScreen = tintImageView2;
        this.lassoTypeParamsContainer = lassoTypeParamsContainer;
        this.llToolContainer = linearLayout;
        this.llUndoRedoContainer = linearLayout2;
        this.paramsContainer = frameLayout;
        this.redo = tintImageView3;
        this.rlShapeToolViewAuto = shapeToolViewAuto;
        this.scrollParamsContainer = shapeParamsContainer;
        this.stickerParamsContainer = stickersParamsContainer;
        this.tlDragToolMask = tintConstraintLayout;
        this.toolContainerDividerBottom = tintView;
        this.toolContainerDividerTop = tintView2;
        this.undo = tintImageView4;
        this.undoRedoDivider = tintView3;
    }

    public static ViewToolBarContainerBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static ViewToolBarContainerBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Nullable
    public CommandDataInfo getCommandDataInfo() {
        return this.mCommandDataInfo;
    }

    public abstract void setCommandDataInfo(@Nullable CommandDataInfo commandDataInfo);

    @Deprecated
    public static ViewToolBarContainerBinding bind(@NonNull View view, @Nullable Object obj) {
        return (ViewToolBarContainerBinding) ViewDataBinding.bind(obj, view, C10651R.layout.view_tool_bar_container);
    }

    @NonNull
    @Deprecated
    public static ViewToolBarContainerBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (ViewToolBarContainerBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.view_tool_bar_container, viewGroup, z, obj);
    }

    @NonNull
    public static ViewToolBarContainerBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static ViewToolBarContainerBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (ViewToolBarContainerBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.view_tool_bar_container, null, false, obj);
    }
}
