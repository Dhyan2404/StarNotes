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
import com.onyx.android.sdk.p039ui.MediumTextView;
import com.onyx.android.sdk.theme.widgets.TintConstraintLayout;
import com.onyx.android.sdk.theme.widgets.TintTextInputLayoutView;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.android.sdk.theme.widgets.TintView;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.common.view.MaxHeightRecyclerView;

/* loaded from: classes9.dex */
public abstract class DialogCreateTagBinding extends ViewDataBinding {

    @NonNull
    public final TintView bBg;

    @NonNull
    public final TintConstraintLayout clsRoot;

    @NonNull
    public final ImageView ivTagFaceBottom;

    @NonNull
    public final ImageView ivTagFaceIcon;

    /* renamed from: rv */
    @NonNull
    public final RecyclerView f56369rv;

    @NonNull
    public final MaxHeightRecyclerView rvFilter;

    @NonNull
    public final MediumTextView textView4;

    @NonNull
    public final TintTextView textView5;

    @NonNull
    public final MaxLengthInputTextEdit tieName;

    @NonNull
    public final TintTextInputLayoutView tilName;

    @NonNull
    public final TintTextView tvCancel;

    @NonNull
    public final TintTextView tvCounter;

    @NonNull
    public final MediumTextView tvOk;

    public DialogCreateTagBinding(Object obj, View view, int i, TintView tintView, TintConstraintLayout tintConstraintLayout, ImageView imageView, ImageView imageView2, RecyclerView recyclerView, MaxHeightRecyclerView maxHeightRecyclerView, MediumTextView mediumTextView, TintTextView tintTextView, MaxLengthInputTextEdit maxLengthInputTextEdit, TintTextInputLayoutView tintTextInputLayoutView, TintTextView tintTextView2, TintTextView tintTextView3, MediumTextView mediumTextView2) {
        super(obj, view, i);
        this.bBg = tintView;
        this.clsRoot = tintConstraintLayout;
        this.ivTagFaceBottom = imageView;
        this.ivTagFaceIcon = imageView2;
        this.f56369rv = recyclerView;
        this.rvFilter = maxHeightRecyclerView;
        this.textView4 = mediumTextView;
        this.textView5 = tintTextView;
        this.tieName = maxLengthInputTextEdit;
        this.tilName = tintTextInputLayoutView;
        this.tvCancel = tintTextView2;
        this.tvCounter = tintTextView3;
        this.tvOk = mediumTextView2;
    }

    public static DialogCreateTagBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static DialogCreateTagBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static DialogCreateTagBinding bind(@NonNull View view, @Nullable Object obj) {
        return (DialogCreateTagBinding) ViewDataBinding.bind(obj, view, C10651R.layout.dialog_create_tag);
    }

    @NonNull
    @Deprecated
    public static DialogCreateTagBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (DialogCreateTagBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.dialog_create_tag, viewGroup, z, obj);
    }

    @NonNull
    public static DialogCreateTagBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static DialogCreateTagBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (DialogCreateTagBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.dialog_create_tag, null, false, obj);
    }
}
