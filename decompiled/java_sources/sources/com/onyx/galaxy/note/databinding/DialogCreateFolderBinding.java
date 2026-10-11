package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.imageview.ShapeableImageView;
import com.onyx.android.sdk.p039ui.MaxLengthInputTextEdit;
import com.onyx.android.sdk.p039ui.MediumTextView;
import com.onyx.android.sdk.theme.widgets.TintTextInputLayoutView;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public abstract class DialogCreateFolderBinding extends ViewDataBinding {

    @NonNull
    public final ShapeableImageView ivFaceBottom;

    @NonNull
    public final ShapeableImageView ivFaceFourthTop;

    @NonNull
    public final ShapeableImageView ivFaceSecTop;

    @NonNull
    public final ShapeableImageView ivFaceThrTop;

    /* renamed from: rv */
    @NonNull
    public final RecyclerView f56354rv;

    @NonNull
    public final MediumTextView textView4;

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

    public DialogCreateFolderBinding(Object obj, View view, int i, ShapeableImageView shapeableImageView, ShapeableImageView shapeableImageView2, ShapeableImageView shapeableImageView3, ShapeableImageView shapeableImageView4, RecyclerView recyclerView, MediumTextView mediumTextView, MaxLengthInputTextEdit maxLengthInputTextEdit, TintTextInputLayoutView tintTextInputLayoutView, TintTextView tintTextView, TintTextView tintTextView2, MediumTextView mediumTextView2) {
        super(obj, view, i);
        this.ivFaceBottom = shapeableImageView;
        this.ivFaceFourthTop = shapeableImageView2;
        this.ivFaceSecTop = shapeableImageView3;
        this.ivFaceThrTop = shapeableImageView4;
        this.f56354rv = recyclerView;
        this.textView4 = mediumTextView;
        this.tieName = maxLengthInputTextEdit;
        this.tilName = tintTextInputLayoutView;
        this.tvCancel = tintTextView;
        this.tvCounter = tintTextView2;
        this.tvOk = mediumTextView2;
    }

    public static DialogCreateFolderBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static DialogCreateFolderBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static DialogCreateFolderBinding bind(@NonNull View view, @Nullable Object obj) {
        return (DialogCreateFolderBinding) ViewDataBinding.bind(obj, view, C10651R.layout.dialog_create_folder);
    }

    @NonNull
    @Deprecated
    public static DialogCreateFolderBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (DialogCreateFolderBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.dialog_create_folder, viewGroup, z, obj);
    }

    @NonNull
    public static DialogCreateFolderBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static DialogCreateFolderBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (DialogCreateFolderBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.dialog_create_folder, null, false, obj);
    }
}
