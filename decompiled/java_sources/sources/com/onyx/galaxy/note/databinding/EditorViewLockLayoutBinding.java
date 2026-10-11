package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.p039ui.MaxLengthInputTextEdit;
import com.onyx.android.sdk.p039ui.MediumTextView;
import com.onyx.android.sdk.theme.widgets.TintConstraintLayout;
import com.onyx.android.sdk.theme.widgets.TintFrameLayout;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintTextInputLayoutView;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public abstract class EditorViewLockLayoutBinding extends ViewDataBinding {

    @NonNull
    public final TintTextView btnOk;

    @NonNull
    public final TintImageView btnTogglePwdVisible;

    @NonNull
    public final TintConstraintLayout clsLockRoot;

    @NonNull
    public final MaxLengthInputTextEdit tieName;

    @NonNull
    public final TintTextInputLayoutView tilName;

    @NonNull
    public final TintImageView tintImageView;

    @NonNull
    public final TintTextView tvFinger;

    @NonNull
    public final TintTextView tvForget;

    @NonNull
    public final MediumTextView tvTitle;

    @NonNull
    public final TintFrameLayout vBg;

    public EditorViewLockLayoutBinding(Object obj, View view, int i, TintTextView tintTextView, TintImageView tintImageView, TintConstraintLayout tintConstraintLayout, MaxLengthInputTextEdit maxLengthInputTextEdit, TintTextInputLayoutView tintTextInputLayoutView, TintImageView tintImageView2, TintTextView tintTextView2, TintTextView tintTextView3, MediumTextView mediumTextView, TintFrameLayout tintFrameLayout) {
        super(obj, view, i);
        this.btnOk = tintTextView;
        this.btnTogglePwdVisible = tintImageView;
        this.clsLockRoot = tintConstraintLayout;
        this.tieName = maxLengthInputTextEdit;
        this.tilName = tintTextInputLayoutView;
        this.tintImageView = tintImageView2;
        this.tvFinger = tintTextView2;
        this.tvForget = tintTextView3;
        this.tvTitle = mediumTextView;
        this.vBg = tintFrameLayout;
    }

    public static EditorViewLockLayoutBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static EditorViewLockLayoutBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static EditorViewLockLayoutBinding bind(@NonNull View view, @Nullable Object obj) {
        return (EditorViewLockLayoutBinding) ViewDataBinding.bind(obj, view, C10651R.layout.editor_view_lock_layout);
    }

    @NonNull
    @Deprecated
    public static EditorViewLockLayoutBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (EditorViewLockLayoutBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.editor_view_lock_layout, viewGroup, z, obj);
    }

    @NonNull
    public static EditorViewLockLayoutBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static EditorViewLockLayoutBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (EditorViewLockLayoutBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.editor_view_lock_layout, null, false, obj);
    }
}
