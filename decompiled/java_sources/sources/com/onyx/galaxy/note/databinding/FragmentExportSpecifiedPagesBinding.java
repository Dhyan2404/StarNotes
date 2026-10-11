package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.p039ui.MediumTextView;
import com.onyx.android.sdk.theme.widgets.TintFrameLayout;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintRadioButton;
import com.onyx.android.sdk.theme.widgets.TintRelativeLayout;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.android.sdk.theme.widgets.TintView;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public abstract class FragmentExportSpecifiedPagesBinding extends ViewDataBinding {

    @NonNull
    public final TintTextView closeText;

    @NonNull
    public final TintFrameLayout container;

    @NonNull
    public final MediumTextView finish;

    @NonNull
    public final TintImageView ivThumbSize;

    @NonNull
    public final TintRadioButton selectAll;

    @NonNull
    public final TintRelativeLayout selectionLayout;

    @NonNull
    public final MediumTextView title;

    @NonNull
    public final TintView topDivider;

    @NonNull
    public final TintTextView tvLabelSelectedPages;

    @NonNull
    public final TintTextView tvSelectedPages;

    public FragmentExportSpecifiedPagesBinding(Object obj, View view, int i, TintTextView tintTextView, TintFrameLayout tintFrameLayout, MediumTextView mediumTextView, TintImageView tintImageView, TintRadioButton tintRadioButton, TintRelativeLayout tintRelativeLayout, MediumTextView mediumTextView2, TintView tintView, TintTextView tintTextView2, TintTextView tintTextView3) {
        super(obj, view, i);
        this.closeText = tintTextView;
        this.container = tintFrameLayout;
        this.finish = mediumTextView;
        this.ivThumbSize = tintImageView;
        this.selectAll = tintRadioButton;
        this.selectionLayout = tintRelativeLayout;
        this.title = mediumTextView2;
        this.topDivider = tintView;
        this.tvLabelSelectedPages = tintTextView2;
        this.tvSelectedPages = tintTextView3;
    }

    public static FragmentExportSpecifiedPagesBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static FragmentExportSpecifiedPagesBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static FragmentExportSpecifiedPagesBinding bind(@NonNull View view, @Nullable Object obj) {
        return (FragmentExportSpecifiedPagesBinding) ViewDataBinding.bind(obj, view, C10651R.layout.fragment_export_specified_pages);
    }

    @NonNull
    @Deprecated
    public static FragmentExportSpecifiedPagesBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (FragmentExportSpecifiedPagesBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.fragment_export_specified_pages, viewGroup, z, obj);
    }

    @NonNull
    public static FragmentExportSpecifiedPagesBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static FragmentExportSpecifiedPagesBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (FragmentExportSpecifiedPagesBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.fragment_export_specified_pages, null, false, obj);
    }
}
