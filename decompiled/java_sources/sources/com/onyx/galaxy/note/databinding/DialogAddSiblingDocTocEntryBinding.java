package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.theme.widgets.TintTextInputEditTextView;
import com.onyx.android.sdk.theme.widgets.TintTextInputLayoutView;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public abstract class DialogAddSiblingDocTocEntryBinding extends ViewDataBinding {

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
    public final TintTextView tvConfirm;

    @NonNull
    public final TintTextView tvDesc;

    @NonNull
    public final TintTextView tvNameSize;

    @NonNull
    public final TintTextView tvPageNumberTitle;

    @NonNull
    public final TintTextView tvTitle;

    @NonNull
    public final TintTextView tvTocTitle;

    public DialogAddSiblingDocTocEntryBinding(Object obj, View view, int i, TintTextInputEditTextView tintTextInputEditTextView, TintTextInputLayoutView tintTextInputLayoutView, TintTextInputEditTextView tintTextInputEditTextView2, TintTextInputLayoutView tintTextInputLayoutView2, TintTextView tintTextView, TintTextView tintTextView2, TintTextView tintTextView3, TintTextView tintTextView4, TintTextView tintTextView5, TintTextView tintTextView6, TintTextView tintTextView7) {
        super(obj, view, i);
        this.pageEdit = tintTextInputEditTextView;
        this.pageInputLayout = tintTextInputLayoutView;
        this.titleEdit = tintTextInputEditTextView2;
        this.titleInputLayout = tintTextInputLayoutView2;
        this.tvCancel = tintTextView;
        this.tvConfirm = tintTextView2;
        this.tvDesc = tintTextView3;
        this.tvNameSize = tintTextView4;
        this.tvPageNumberTitle = tintTextView5;
        this.tvTitle = tintTextView6;
        this.tvTocTitle = tintTextView7;
    }

    public static DialogAddSiblingDocTocEntryBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static DialogAddSiblingDocTocEntryBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static DialogAddSiblingDocTocEntryBinding bind(@NonNull View view, @Nullable Object obj) {
        return (DialogAddSiblingDocTocEntryBinding) ViewDataBinding.bind(obj, view, C10651R.layout.dialog_add_sibling_doc_toc_entry);
    }

    @NonNull
    @Deprecated
    public static DialogAddSiblingDocTocEntryBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (DialogAddSiblingDocTocEntryBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.dialog_add_sibling_doc_toc_entry, viewGroup, z, obj);
    }

    @NonNull
    public static DialogAddSiblingDocTocEntryBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static DialogAddSiblingDocTocEntryBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (DialogAddSiblingDocTocEntryBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.dialog_add_sibling_doc_toc_entry, null, false, obj);
    }
}
