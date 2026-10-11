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
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintTextInputLayoutView;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public abstract class DialogNoteAuthPasswordBinding extends ViewDataBinding {

    @NonNull
    public final TintImageView btnTogglePwdVisible;

    @NonNull
    public final MaxLengthInputTextEdit tieName;

    @NonNull
    public final TintTextInputLayoutView tilName;

    @NonNull
    public final TintTextView tvCancel;

    @NonNull
    public final TintTextView tvForget;

    @NonNull
    public final TintTextView tvOk;

    @NonNull
    public final TintTextView tvSubTitle;

    @NonNull
    public final MediumTextView tvTitle;

    public DialogNoteAuthPasswordBinding(Object obj, View view, int i, TintImageView tintImageView, MaxLengthInputTextEdit maxLengthInputTextEdit, TintTextInputLayoutView tintTextInputLayoutView, TintTextView tintTextView, TintTextView tintTextView2, TintTextView tintTextView3, TintTextView tintTextView4, MediumTextView mediumTextView) {
        super(obj, view, i);
        this.btnTogglePwdVisible = tintImageView;
        this.tieName = maxLengthInputTextEdit;
        this.tilName = tintTextInputLayoutView;
        this.tvCancel = tintTextView;
        this.tvForget = tintTextView2;
        this.tvOk = tintTextView3;
        this.tvSubTitle = tintTextView4;
        this.tvTitle = mediumTextView;
    }

    public static DialogNoteAuthPasswordBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static DialogNoteAuthPasswordBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static DialogNoteAuthPasswordBinding bind(@NonNull View view, @Nullable Object obj) {
        return (DialogNoteAuthPasswordBinding) ViewDataBinding.bind(obj, view, C10651R.layout.dialog_note_auth_password);
    }

    @NonNull
    @Deprecated
    public static DialogNoteAuthPasswordBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (DialogNoteAuthPasswordBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.dialog_note_auth_password, viewGroup, z, obj);
    }

    @NonNull
    public static DialogNoteAuthPasswordBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static DialogNoteAuthPasswordBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (DialogNoteAuthPasswordBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.dialog_note_auth_password, null, false, obj);
    }
}
