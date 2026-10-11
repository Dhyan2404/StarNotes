package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import androidx.recyclerview.widget.RecyclerView;
import com.onyx.android.sdk.p039ui.MaxLengthInputTextEdit;
import com.onyx.android.sdk.theme.widgets.TintTextInputLayoutView;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public abstract class DialogCreateSubTagBinding extends ViewDataBinding {

    @NonNull
    public final ImageView ivTagFaceBottom;

    @NonNull
    public final ImageView ivTagFaceTop;

    /* renamed from: rv */
    @NonNull
    public final RecyclerView f56364rv;

    @NonNull
    public final TintTextView textView4;

    @NonNull
    public final MaxLengthInputTextEdit tieName;

    @NonNull
    public final TintTextInputLayoutView tilName;

    @NonNull
    public final TintTextView tvCancel;

    @NonNull
    public final TintTextView tvCounter;

    @NonNull
    public final TintTextView tvOk;

    @NonNull
    public final TintTextView tvParent;

    public DialogCreateSubTagBinding(Object obj, View view, int i, ImageView imageView, ImageView imageView2, RecyclerView recyclerView, TintTextView tintTextView, MaxLengthInputTextEdit maxLengthInputTextEdit, TintTextInputLayoutView tintTextInputLayoutView, TintTextView tintTextView2, TintTextView tintTextView3, TintTextView tintTextView4, TintTextView tintTextView5) {
        super(obj, view, i);
        this.ivTagFaceBottom = imageView;
        this.ivTagFaceTop = imageView2;
        this.f56364rv = recyclerView;
        this.textView4 = tintTextView;
        this.tieName = maxLengthInputTextEdit;
        this.tilName = tintTextInputLayoutView;
        this.tvCancel = tintTextView2;
        this.tvCounter = tintTextView3;
        this.tvOk = tintTextView4;
        this.tvParent = tintTextView5;
    }

    public static DialogCreateSubTagBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static DialogCreateSubTagBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static DialogCreateSubTagBinding bind(@NonNull View view, @Nullable Object obj) {
        return (DialogCreateSubTagBinding) ViewDataBinding.bind(obj, view, C10651R.layout.dialog_create_sub_tag);
    }

    @NonNull
    @Deprecated
    public static DialogCreateSubTagBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (DialogCreateSubTagBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.dialog_create_sub_tag, viewGroup, z, obj);
    }

    @NonNull
    public static DialogCreateSubTagBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static DialogCreateSubTagBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (DialogCreateSubTagBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.dialog_create_sub_tag, null, false, obj);
    }
}
