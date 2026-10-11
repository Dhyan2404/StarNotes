package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.theme.widgets.TintConstraintLayout;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintLinearLayout;
import com.onyx.android.sdk.theme.widgets.TintRecycleView;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.p048ui.view.ShadowLayout;

/* loaded from: classes9.dex */
public abstract class LayoutSelectionMenuPagedBinding extends ViewDataBinding {

    @NonNull
    public final TintImageView arrowView;

    @NonNull
    public final TintConstraintLayout clAnnotationMenu;

    @NonNull
    public final ShadowLayout flPrimaryMenu;

    @NonNull
    public final ShadowLayout flSubMenu;

    @NonNull
    public final com.onyx.android.sdk.textbox.widget.TintImageView ivHighlight;

    @NonNull
    public final com.onyx.android.sdk.textbox.widget.TintImageView ivUnderline;

    @NonNull
    public final com.onyx.android.sdk.textbox.widget.TintImageView ivWavyLine;

    @NonNull
    public final TintLinearLayout menuContainer;

    @NonNull
    public final TintRecycleView rvAnnotationColor;

    @NonNull
    public final ShadowLayout slAnnotationMenu;

    @NonNull
    public final TintLinearLayout subMenuContainer;

    @NonNull
    public final TintConstraintLayout wrapper;

    public LayoutSelectionMenuPagedBinding(Object obj, View view, int i, TintImageView tintImageView, TintConstraintLayout tintConstraintLayout, ShadowLayout shadowLayout, ShadowLayout shadowLayout2, com.onyx.android.sdk.textbox.widget.TintImageView tintImageView2, com.onyx.android.sdk.textbox.widget.TintImageView tintImageView3, com.onyx.android.sdk.textbox.widget.TintImageView tintImageView4, TintLinearLayout tintLinearLayout, TintRecycleView tintRecycleView, ShadowLayout shadowLayout3, TintLinearLayout tintLinearLayout2, TintConstraintLayout tintConstraintLayout2) {
        super(obj, view, i);
        this.arrowView = tintImageView;
        this.clAnnotationMenu = tintConstraintLayout;
        this.flPrimaryMenu = shadowLayout;
        this.flSubMenu = shadowLayout2;
        this.ivHighlight = tintImageView2;
        this.ivUnderline = tintImageView3;
        this.ivWavyLine = tintImageView4;
        this.menuContainer = tintLinearLayout;
        this.rvAnnotationColor = tintRecycleView;
        this.slAnnotationMenu = shadowLayout3;
        this.subMenuContainer = tintLinearLayout2;
        this.wrapper = tintConstraintLayout2;
    }

    public static LayoutSelectionMenuPagedBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static LayoutSelectionMenuPagedBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static LayoutSelectionMenuPagedBinding bind(@NonNull View view, @Nullable Object obj) {
        return (LayoutSelectionMenuPagedBinding) ViewDataBinding.bind(obj, view, C10651R.layout.layout_selection_menu_paged);
    }

    @NonNull
    @Deprecated
    public static LayoutSelectionMenuPagedBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (LayoutSelectionMenuPagedBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.layout_selection_menu_paged, viewGroup, z, obj);
    }

    @NonNull
    public static LayoutSelectionMenuPagedBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static LayoutSelectionMenuPagedBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (LayoutSelectionMenuPagedBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.layout_selection_menu_paged, null, false, obj);
    }
}
