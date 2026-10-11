package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.Bindable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.replicator.note.p035db.model.NoteTabData;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public abstract class ItemNoteTabBinding extends ViewDataBinding {

    @NonNull
    public final TintImageView close;

    @NonNull
    public final View guideDivider;

    @NonNull
    public final TintImageView ivEncryption;

    @Bindable
    protected NoteTabData mModel;

    @NonNull
    public final TintTextView title;

    public ItemNoteTabBinding(Object obj, View view, int i, TintImageView tintImageView, View view2, TintImageView tintImageView2, TintTextView tintTextView) {
        super(obj, view, i);
        this.close = tintImageView;
        this.guideDivider = view2;
        this.ivEncryption = tintImageView2;
        this.title = tintTextView;
    }

    public static ItemNoteTabBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static ItemNoteTabBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Nullable
    public NoteTabData getModel() {
        return this.mModel;
    }

    public abstract void setModel(@Nullable NoteTabData noteTabData);

    @Deprecated
    public static ItemNoteTabBinding bind(@NonNull View view, @Nullable Object obj) {
        return (ItemNoteTabBinding) ViewDataBinding.bind(obj, view, C10651R.layout.item_note_tab);
    }

    @NonNull
    @Deprecated
    public static ItemNoteTabBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (ItemNoteTabBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.item_note_tab, viewGroup, z, obj);
    }

    @NonNull
    public static ItemNoteTabBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static ItemNoteTabBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (ItemNoteTabBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.item_note_tab, null, false, obj);
    }
}
