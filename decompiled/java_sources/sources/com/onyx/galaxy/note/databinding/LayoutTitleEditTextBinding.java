package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.Bindable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.p039ui.TouchModeMaxLengthInputTextEdit;
import com.onyx.android.sdk.replicator.note.p035db.model.NoteTabData;
import com.onyx.android.sdk.theme.widgets.TintTextInputLayoutView;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public abstract class LayoutTitleEditTextBinding extends ViewDataBinding {

    @NonNull
    public final TouchModeMaxLengthInputTextEdit edittext;

    @Bindable
    protected NoteTabData mModel;

    @NonNull
    public final TintTextInputLayoutView tilName;

    public LayoutTitleEditTextBinding(Object obj, View view, int i, TouchModeMaxLengthInputTextEdit touchModeMaxLengthInputTextEdit, TintTextInputLayoutView tintTextInputLayoutView) {
        super(obj, view, i);
        this.edittext = touchModeMaxLengthInputTextEdit;
        this.tilName = tintTextInputLayoutView;
    }

    public static LayoutTitleEditTextBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static LayoutTitleEditTextBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Nullable
    public NoteTabData getModel() {
        return this.mModel;
    }

    public abstract void setModel(@Nullable NoteTabData noteTabData);

    @Deprecated
    public static LayoutTitleEditTextBinding bind(@NonNull View view, @Nullable Object obj) {
        return (LayoutTitleEditTextBinding) ViewDataBinding.bind(obj, view, C10651R.layout.layout_title_edit_text);
    }

    @NonNull
    @Deprecated
    public static LayoutTitleEditTextBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (LayoutTitleEditTextBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.layout_title_edit_text, viewGroup, z, obj);
    }

    @NonNull
    public static LayoutTitleEditTextBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static LayoutTitleEditTextBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (LayoutTitleEditTextBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.layout_title_edit_text, null, false, obj);
    }
}
