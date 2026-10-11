package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintRelativeLayout;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.editor.view.drag.EditorViewDragLayout;

/* loaded from: classes9.dex */
public abstract class SplitScreenLayoutBinding extends ViewDataBinding {

    @NonNull
    public final FrameLayout container;

    @NonNull
    public final EditorViewDragLayout editorViewDragLayout;

    @NonNull
    public final EditorViewDragLayout editorViewDragLayout2;

    @NonNull
    public final TintImageView ivHorizontalSwitchLayout;

    @NonNull
    public final TintImageView ivHorizontalSwitchScreenType;

    @NonNull
    public final TintImageView ivVerticalSwitchLayout;

    @NonNull
    public final TintImageView ivVerticalSwitchScreenType;

    @NonNull
    public final FrameLayout layoutHorizontalDragIndicator;

    @NonNull
    public final FrameLayout layoutHorizontalSwitchLayout;

    @NonNull
    public final FrameLayout layoutHorizontalSwitchScreenType;

    @NonNull
    public final FrameLayout layoutVerticalDragIndicator;

    @NonNull
    public final FrameLayout layoutVerticalSwitchLayout;

    @NonNull
    public final FrameLayout layoutVerticalSwitchScreenType;

    @NonNull
    public final TintRelativeLayout splitScreenDivider;

    public SplitScreenLayoutBinding(Object obj, View view, int i, FrameLayout frameLayout, EditorViewDragLayout editorViewDragLayout, EditorViewDragLayout editorViewDragLayout2, TintImageView tintImageView, TintImageView tintImageView2, TintImageView tintImageView3, TintImageView tintImageView4, FrameLayout frameLayout2, FrameLayout frameLayout3, FrameLayout frameLayout4, FrameLayout frameLayout5, FrameLayout frameLayout6, FrameLayout frameLayout7, TintRelativeLayout tintRelativeLayout) {
        super(obj, view, i);
        this.container = frameLayout;
        this.editorViewDragLayout = editorViewDragLayout;
        this.editorViewDragLayout2 = editorViewDragLayout2;
        this.ivHorizontalSwitchLayout = tintImageView;
        this.ivHorizontalSwitchScreenType = tintImageView2;
        this.ivVerticalSwitchLayout = tintImageView3;
        this.ivVerticalSwitchScreenType = tintImageView4;
        this.layoutHorizontalDragIndicator = frameLayout2;
        this.layoutHorizontalSwitchLayout = frameLayout3;
        this.layoutHorizontalSwitchScreenType = frameLayout4;
        this.layoutVerticalDragIndicator = frameLayout5;
        this.layoutVerticalSwitchLayout = frameLayout6;
        this.layoutVerticalSwitchScreenType = frameLayout7;
        this.splitScreenDivider = tintRelativeLayout;
    }

    public static SplitScreenLayoutBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static SplitScreenLayoutBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static SplitScreenLayoutBinding bind(@NonNull View view, @Nullable Object obj) {
        return (SplitScreenLayoutBinding) ViewDataBinding.bind(obj, view, C10651R.layout.split_screen_layout);
    }

    @NonNull
    @Deprecated
    public static SplitScreenLayoutBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (SplitScreenLayoutBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.split_screen_layout, viewGroup, z, obj);
    }

    @NonNull
    public static SplitScreenLayoutBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static SplitScreenLayoutBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (SplitScreenLayoutBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.split_screen_layout, null, false, obj);
    }
}
