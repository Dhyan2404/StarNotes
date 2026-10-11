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
import com.onyx.android.sdk.theme.widgets.TintTextInputLayoutView;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public abstract class DialogEditListNoteBinding extends ViewDataBinding {

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
    public final TintTextView tvOk;

    public DialogEditListNoteBinding(Object obj, View view, int i, MediumTextView mediumTextView, TintTextView tintTextView, MaxLengthInputTextEdit maxLengthInputTextEdit, TintTextInputLayoutView tintTextInputLayoutView, TintTextView tintTextView2, TintTextView tintTextView3, TintTextView tintTextView4) {
        super(obj, view, i);
        this.textView4 = mediumTextView;
        this.textView5 = tintTextView;
        this.tieName = maxLengthInputTextEdit;
        this.tilName = tintTextInputLayoutView;
        this.tvCancel = tintTextView2;
        this.tvCounter = tintTextView3;
        this.tvOk = tintTextView4;
    }

    public static DialogEditListNoteBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static DialogEditListNoteBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static DialogEditListNoteBinding bind(@NonNull View view, @Nullable Object obj) {
        return (DialogEditListNoteBinding) ViewDataBinding.bind(obj, view, C10651R.layout.dialog_edit_list_note);
    }

    @NonNull
    @Deprecated
    public static DialogEditListNoteBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (DialogEditListNoteBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.dialog_edit_list_note, viewGroup, z, obj);
    }

    @NonNull
    public static DialogEditListNoteBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static DialogEditListNoteBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (DialogEditListNoteBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.dialog_edit_list_note, null, false, obj);
    }
}
