package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.p039ui.MediumTextView;
import com.onyx.android.sdk.p039ui.TouchModeMaxLengthInputTextEdit;
import com.onyx.android.sdk.theme.widgets.TintCardView;
import com.onyx.android.sdk.theme.widgets.TintFrameLayout;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintRecycleView;
import com.onyx.android.sdk.theme.widgets.TintTextInputLayoutView;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public abstract class DialogSelectImportTagBinding extends ViewDataBinding {

    @NonNull
    public final TintCardView cardList;

    @NonNull
    public final TintFrameLayout flList;

    @NonNull
    public final EmptyViewManageTagBinding includeEmptyView;

    @NonNull
    public final TintImageView ivSearch;

    @NonNull
    public final TintRecycleView rvSearch;

    @NonNull
    public final TintRecycleView rvSelect;

    @NonNull
    public final MediumTextView textView4;

    @NonNull
    public final TintTextView textView6;

    @NonNull
    public final TouchModeMaxLengthInputTextEdit tieName;

    @NonNull
    public final TintTextInputLayoutView tilName;

    @NonNull
    public final TintTextView tvCancel;

    @NonNull
    public final TintTextView tvOk;

    public DialogSelectImportTagBinding(Object obj, View view, int i, TintCardView tintCardView, TintFrameLayout tintFrameLayout, EmptyViewManageTagBinding emptyViewManageTagBinding, TintImageView tintImageView, TintRecycleView tintRecycleView, TintRecycleView tintRecycleView2, MediumTextView mediumTextView, TintTextView tintTextView, TouchModeMaxLengthInputTextEdit touchModeMaxLengthInputTextEdit, TintTextInputLayoutView tintTextInputLayoutView, TintTextView tintTextView2, TintTextView tintTextView3) {
        super(obj, view, i);
        this.cardList = tintCardView;
        this.flList = tintFrameLayout;
        this.includeEmptyView = emptyViewManageTagBinding;
        this.ivSearch = tintImageView;
        this.rvSearch = tintRecycleView;
        this.rvSelect = tintRecycleView2;
        this.textView4 = mediumTextView;
        this.textView6 = tintTextView;
        this.tieName = touchModeMaxLengthInputTextEdit;
        this.tilName = tintTextInputLayoutView;
        this.tvCancel = tintTextView2;
        this.tvOk = tintTextView3;
    }

    public static DialogSelectImportTagBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static DialogSelectImportTagBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static DialogSelectImportTagBinding bind(@NonNull View view, @Nullable Object obj) {
        return (DialogSelectImportTagBinding) ViewDataBinding.bind(obj, view, C10651R.layout.dialog_select_import_tag);
    }

    @NonNull
    @Deprecated
    public static DialogSelectImportTagBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (DialogSelectImportTagBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.dialog_select_import_tag, viewGroup, z, obj);
    }

    @NonNull
    public static DialogSelectImportTagBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static DialogSelectImportTagBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (DialogSelectImportTagBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.dialog_select_import_tag, null, false, obj);
    }
}
