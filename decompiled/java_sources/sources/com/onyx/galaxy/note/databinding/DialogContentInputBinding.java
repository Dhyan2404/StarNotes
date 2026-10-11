package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.p039ui.MaxLengthInputTextEdit;
import com.onyx.android.sdk.theme.widgets.TintTextInputLayoutView;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public abstract class DialogContentInputBinding extends ViewDataBinding {

    @NonNull
    public final TintTextView cancelButton;

    @NonNull
    public final MaxLengthInputTextEdit contentEdit;

    @NonNull
    public final TintTextInputLayoutView contentLayout;

    @NonNull
    public final TintTextView countText;

    @NonNull
    public final TintTextView nextButton;

    @NonNull
    public final TintTextView subTitleText;

    @NonNull
    public final TintTextView titleText;

    public DialogContentInputBinding(Object obj, View view, int i, TintTextView tintTextView, MaxLengthInputTextEdit maxLengthInputTextEdit, TintTextInputLayoutView tintTextInputLayoutView, TintTextView tintTextView2, TintTextView tintTextView3, TintTextView tintTextView4, TintTextView tintTextView5) {
        super(obj, view, i);
        this.cancelButton = tintTextView;
        this.contentEdit = maxLengthInputTextEdit;
        this.contentLayout = tintTextInputLayoutView;
        this.countText = tintTextView2;
        this.nextButton = tintTextView3;
        this.subTitleText = tintTextView4;
        this.titleText = tintTextView5;
    }

    public static DialogContentInputBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static DialogContentInputBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static DialogContentInputBinding bind(@NonNull View view, @Nullable Object obj) {
        return (DialogContentInputBinding) ViewDataBinding.bind(obj, view, C10651R.layout.dialog_content_input);
    }

    @NonNull
    @Deprecated
    public static DialogContentInputBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (DialogContentInputBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.dialog_content_input, viewGroup, z, obj);
    }

    @NonNull
    public static DialogContentInputBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static DialogContentInputBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (DialogContentInputBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.dialog_content_input, null, false, obj);
    }
}
