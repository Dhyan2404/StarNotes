package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.aitsuki.swipe.SwipeMenuRecyclerView;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public abstract class DialogLoginAccountListBinding extends ViewDataBinding {

    @NonNull
    public final TintImageView ivBack;

    @NonNull
    public final SwipeMenuRecyclerView rvList;

    @NonNull
    public final TintTextView tvSubTitle;

    @NonNull
    public final TintImageView tvTips;

    @NonNull
    public final TintTextView tvTitle;

    public DialogLoginAccountListBinding(Object obj, View view, int i, TintImageView tintImageView, SwipeMenuRecyclerView swipeMenuRecyclerView, TintTextView tintTextView, TintImageView tintImageView2, TintTextView tintTextView2) {
        super(obj, view, i);
        this.ivBack = tintImageView;
        this.rvList = swipeMenuRecyclerView;
        this.tvSubTitle = tintTextView;
        this.tvTips = tintImageView2;
        this.tvTitle = tintTextView2;
    }

    public static DialogLoginAccountListBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static DialogLoginAccountListBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static DialogLoginAccountListBinding bind(@NonNull View view, @Nullable Object obj) {
        return (DialogLoginAccountListBinding) ViewDataBinding.bind(obj, view, C10651R.layout.dialog_login_account_list);
    }

    @NonNull
    @Deprecated
    public static DialogLoginAccountListBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (DialogLoginAccountListBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.dialog_login_account_list, viewGroup, z, obj);
    }

    @NonNull
    public static DialogLoginAccountListBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static DialogLoginAccountListBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (DialogLoginAccountListBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.dialog_login_account_list, null, false, obj);
    }
}
