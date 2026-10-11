package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.theme.widgets.TintFrameLayout;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintLinearLayout;
import com.onyx.android.sdk.theme.widgets.TintRecycleView;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public abstract class FragmentShareResourceBinding extends ViewDataBinding {

    @NonNull
    public final TintFrameLayout flyLoading;

    @NonNull
    public final TintImageView ivLoading;

    @NonNull
    public final TintLinearLayout llyContent;

    @NonNull
    public final TintLinearLayout llyDownloadTips;

    @NonNull
    public final TintFrameLayout llyImport;

    @NonNull
    public final TintRecycleView rvContent;

    @NonNull
    public final TintTextView tvCancel;

    @NonNull
    public final TintTextView tvContentTips;

    @NonNull
    public final TintTextView tvDownloadTips;

    @NonNull
    public final TintTextView tvFileCount;

    @NonNull
    public final TintTextView tvImport;

    public FragmentShareResourceBinding(Object obj, View view, int i, TintFrameLayout tintFrameLayout, TintImageView tintImageView, TintLinearLayout tintLinearLayout, TintLinearLayout tintLinearLayout2, TintFrameLayout tintFrameLayout2, TintRecycleView tintRecycleView, TintTextView tintTextView, TintTextView tintTextView2, TintTextView tintTextView3, TintTextView tintTextView4, TintTextView tintTextView5) {
        super(obj, view, i);
        this.flyLoading = tintFrameLayout;
        this.ivLoading = tintImageView;
        this.llyContent = tintLinearLayout;
        this.llyDownloadTips = tintLinearLayout2;
        this.llyImport = tintFrameLayout2;
        this.rvContent = tintRecycleView;
        this.tvCancel = tintTextView;
        this.tvContentTips = tintTextView2;
        this.tvDownloadTips = tintTextView3;
        this.tvFileCount = tintTextView4;
        this.tvImport = tintTextView5;
    }

    public static FragmentShareResourceBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static FragmentShareResourceBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static FragmentShareResourceBinding bind(@NonNull View view, @Nullable Object obj) {
        return (FragmentShareResourceBinding) ViewDataBinding.bind(obj, view, C10651R.layout.fragment_share_resource);
    }

    @NonNull
    @Deprecated
    public static FragmentShareResourceBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (FragmentShareResourceBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.fragment_share_resource, viewGroup, z, obj);
    }

    @NonNull
    public static FragmentShareResourceBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static FragmentShareResourceBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (FragmentShareResourceBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.fragment_share_resource, null, false, obj);
    }
}
