package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.onyx.android.sdk.textbox.widget.TextBoxView;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.editor.menu.PagedSelectionMenu;
import com.onyx.galaxy.note.editor.view.custom.DragToolEffectView;
import com.onyx.galaxy.note.editor.view.custom.SplitScreenLayout;
import com.onyx.galaxy.note.editor.view.toolbar.DriveTokenExpiredTipContainer;
import com.onyx.galaxy.note.editor.view.toolbar.ToolDragView;

/* loaded from: classes9.dex */
public final class LayoutShpaeAndToolContainerBinding implements ViewBinding {

    @NonNull
    public final DragToolEffectView dragEffectView;

    @NonNull
    public final ToolDragView dragTool;

    @NonNull
    public final DriveTokenExpiredTipContainer driveTokenExpiredTipContainer;

    /* renamed from: e */
    @NonNull
    public final ConstraintLayout f57471e;

    @NonNull
    public final AppCompatImageView eraseCircle;

    @NonNull
    public final FrameLayout flShapeContent;

    @NonNull
    public final TintImageView ivFullScreen;

    @NonNull
    public final PagedSelectionMenu selectionMenus;

    @NonNull
    public final SplitScreenLayout splitScreen;

    @NonNull
    public final TextBoxView textBoxView;

    public LayoutShpaeAndToolContainerBinding(@NonNull ConstraintLayout constraintLayout, @NonNull DragToolEffectView dragToolEffectView, @NonNull ToolDragView toolDragView, @NonNull DriveTokenExpiredTipContainer driveTokenExpiredTipContainer, @NonNull AppCompatImageView appCompatImageView, @NonNull FrameLayout frameLayout, @NonNull TintImageView tintImageView, @NonNull PagedSelectionMenu pagedSelectionMenu, @NonNull SplitScreenLayout splitScreenLayout, @NonNull TextBoxView textBoxView) {
        this.f57471e = constraintLayout;
        this.dragEffectView = dragToolEffectView;
        this.dragTool = toolDragView;
        this.driveTokenExpiredTipContainer = driveTokenExpiredTipContainer;
        this.eraseCircle = appCompatImageView;
        this.flShapeContent = frameLayout;
        this.ivFullScreen = tintImageView;
        this.selectionMenus = pagedSelectionMenu;
        this.splitScreen = splitScreenLayout;
        this.textBoxView = textBoxView;
    }

    @NonNull
    public static LayoutShpaeAndToolContainerBinding bind(@NonNull View view) {
        int i = C10651R.id.drag_effect_view;
        DragToolEffectView dragToolEffectView = (DragToolEffectView) ViewBindings.findChildViewById(view, i);
        if (dragToolEffectView != null) {
            i = C10651R.id.drag_tool;
            ToolDragView toolDragView = (ToolDragView) ViewBindings.findChildViewById(view, i);
            if (toolDragView != null) {
                i = C10651R.id.drive_token_expired_tip_container;
                DriveTokenExpiredTipContainer driveTokenExpiredTipContainer = (DriveTokenExpiredTipContainer) ViewBindings.findChildViewById(view, i);
                if (driveTokenExpiredTipContainer != null) {
                    i = C10651R.id.eraseCircle;
                    AppCompatImageView appCompatImageView = (AppCompatImageView) ViewBindings.findChildViewById(view, i);
                    if (appCompatImageView != null) {
                        i = C10651R.id.fl_shape_content;
                        FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, i);
                        if (frameLayout != null) {
                            i = C10651R.id.iv_full_screen;
                            TintImageView tintImageView = (TintImageView) ViewBindings.findChildViewById(view, i);
                            if (tintImageView != null) {
                                i = C10651R.id.selectionMenus;
                                PagedSelectionMenu pagedSelectionMenu = (PagedSelectionMenu) ViewBindings.findChildViewById(view, i);
                                if (pagedSelectionMenu != null) {
                                    i = C10651R.id.split_screen;
                                    SplitScreenLayout splitScreenLayout = (SplitScreenLayout) ViewBindings.findChildViewById(view, i);
                                    if (splitScreenLayout != null) {
                                        i = C10651R.id.textBoxView;
                                        TextBoxView textBoxView = (TextBoxView) ViewBindings.findChildViewById(view, i);
                                        if (textBoxView != null) {
                                            return new LayoutShpaeAndToolContainerBinding((ConstraintLayout) view, dragToolEffectView, toolDragView, driveTokenExpiredTipContainer, appCompatImageView, frameLayout, tintImageView, pagedSelectionMenu, splitScreenLayout, textBoxView);
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    @NonNull
    public static LayoutShpaeAndToolContainerBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static LayoutShpaeAndToolContainerBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(C10651R.layout.layout_shpae_and_tool_container, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public ConstraintLayout getRoot() {
        return this.f57471e;
    }
}
