package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.p039ui.MediumTextView;
import com.onyx.android.sdk.theme.widgets.TintConstraintLayout;
import com.onyx.android.sdk.theme.widgets.TintTextInputEditTextView;
import com.onyx.android.sdk.theme.widgets.TintTextInputLayoutView;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public abstract class DialogAddToTocBinding extends ViewDataBinding {

    @NonNull
    public final TintConstraintLayout contentView;

    @NonNull
    public final TintTextInputEditTextView pageEdit;

    @NonNull
    public final TintTextInputLayoutView pageInputLayout;

    @NonNull
    public final TintTextInputEditTextView titleEdit;

    @NonNull
    public final TintTextInputLayoutView titleInputLayout;

    @NonNull
    public final TintTextView tvCancel;

    @NonNull
    public final MediumTextView tvConfirm;

    @NonNull
    public final TintTextView tvDesc;

    @NonNull
    public final TintTextView tvNameSize;

    @NonNull
    public final TintTextView tvPageNumberTitle;

    @NonNull
    public final MediumTextView tvTitle;

    @NonNull
    public final TintTextView tvTocTitle;

    public DialogAddToTocBinding(Object obj, View view, int i, TintConstraintLayout tintConstraintLayout, TintTextInputEditTextView tintTextInputEditTextView, TintTextInputLayoutView tintTextInputLayoutView, TintTextInputEditTextView tintTextInputEditTextView2, TintTextInputLayoutView tintTextInputLayoutView2, TintTextView tintTextView, MediumTextView mediumTextView, TintTextView tintTextView2, TintTextView tintTextView3, TintTextView tintTextView4, MediumTextView mediumTextView2, TintTextView tintTextView5) {
        super(obj, view, i);
        this.contentView = tintConstraintLayout;
        this.pageEdit = tintTextInputEditTextView;
        this.pageInputLayout = tintTextInputLayoutView;
        this.titleEdit = tintTextInputEditTextView2;
        this.titleInputLayout = tintTextInputLayoutView2;
        this.tvCancel = tintTextView;
        this.tvConfirm = mediumTextView;
        this.tvDesc = tintTextView2;
        this.tvNameSize = tintTextView3;
        this.tvPageNumberTitle = tintTextView4;
        this.tvTitle = mediumTextView2;
        this.tvTocTitle = tintTextView5;
    }

    public static DialogAddToTocBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static DialogAddToTocBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static DialogAddToTocBinding bind(@NonNull View view, @Nullable Object obj) {
        return (DialogAddToTocBinding) ViewDataBinding.bind(obj, view, C10651R.layout.dialog_add_to_toc);
    }

    @NonNull
    @Deprecated
    public static DialogAddToTocBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (DialogAddToTocBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.dialog_add_to_toc, viewGroup, z, obj);
    }

    @NonNull
    public static DialogAddToTocBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static DialogAddToTocBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (DialogAddToTocBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.dialog_add_to_toc, null, false, obj);
    }
}
