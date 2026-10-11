package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.p039ui.MediumTextView;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintLinearLayout;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.common.view.MaxHeightRecyclerView;

/* loaded from: classes9.dex */
public abstract class PopupShortcutBarCustomBinding extends ViewDataBinding {

    @NonNull
    public final MaxHeightRecyclerView candidateList;

    @NonNull
    public final TintImageView ivTitleMoreFuncDisableEye;

    @NonNull
    public final MaxHeightRecyclerView list;

    @NonNull
    public final TintLinearLayout llLayout;

    @NonNull
    public final MediumTextView tvApply;

    @NonNull
    public final TintTextView tvCancel;

    @NonNull
    public final TintTextView tvResetConfig;

    @NonNull
    public final MediumTextView tvTitle;

    @NonNull
    public final TintTextView tvTitleMoreFunc;

    @NonNull
    public final TintTextView tvTitleMoreFuncClick;

    public PopupShortcutBarCustomBinding(Object obj, View view, int i, MaxHeightRecyclerView maxHeightRecyclerView, TintImageView tintImageView, MaxHeightRecyclerView maxHeightRecyclerView2, TintLinearLayout tintLinearLayout, MediumTextView mediumTextView, TintTextView tintTextView, TintTextView tintTextView2, MediumTextView mediumTextView2, TintTextView tintTextView3, TintTextView tintTextView4) {
        super(obj, view, i);
        this.candidateList = maxHeightRecyclerView;
        this.ivTitleMoreFuncDisableEye = tintImageView;
        this.list = maxHeightRecyclerView2;
        this.llLayout = tintLinearLayout;
        this.tvApply = mediumTextView;
        this.tvCancel = tintTextView;
        this.tvResetConfig = tintTextView2;
        this.tvTitle = mediumTextView2;
        this.tvTitleMoreFunc = tintTextView3;
        this.tvTitleMoreFuncClick = tintTextView4;
    }

    public static PopupShortcutBarCustomBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static PopupShortcutBarCustomBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static PopupShortcutBarCustomBinding bind(@NonNull View view, @Nullable Object obj) {
        return (PopupShortcutBarCustomBinding) ViewDataBinding.bind(obj, view, C10651R.layout.popup_shortcut_bar_custom);
    }

    @NonNull
    @Deprecated
    public static PopupShortcutBarCustomBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (PopupShortcutBarCustomBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.popup_shortcut_bar_custom, viewGroup, z, obj);
    }

    @NonNull
    public static PopupShortcutBarCustomBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static PopupShortcutBarCustomBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (PopupShortcutBarCustomBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.popup_shortcut_bar_custom, null, false, obj);
    }
}
