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
public abstract class ItemNoteTabManagementBinding extends ViewDataBinding {

    @Bindable
    protected NoteTabData mModel;

    @NonNull
    public final TintImageView more;

    @NonNull
    public final TintTextView title;

    public ItemNoteTabManagementBinding(Object obj, View view, int i, TintImageView tintImageView, TintTextView tintTextView) {
        super(obj, view, i);
        this.more = tintImageView;
        this.title = tintTextView;
    }

    public static ItemNoteTabManagementBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static ItemNoteTabManagementBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Nullable
    public NoteTabData getModel() {
        return this.mModel;
    }

    public abstract void setModel(@Nullable NoteTabData noteTabData);

    @Deprecated
    public static ItemNoteTabManagementBinding bind(@NonNull View view, @Nullable Object obj) {
        return (ItemNoteTabManagementBinding) ViewDataBinding.bind(obj, view, C10651R.layout.item_note_tab_management);
    }

    @NonNull
    @Deprecated
    public static ItemNoteTabManagementBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (ItemNoteTabManagementBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.item_note_tab_management, viewGroup, z, obj);
    }

    @NonNull
    public static ItemNoteTabManagementBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static ItemNoteTabManagementBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (ItemNoteTabManagementBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.item_note_tab_management, null, false, obj);
    }
}
