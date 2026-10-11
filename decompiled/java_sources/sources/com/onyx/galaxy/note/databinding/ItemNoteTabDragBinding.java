package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.Bindable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.replicator.note.p035db.model.NoteTabData;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public abstract class ItemNoteTabDragBinding extends ViewDataBinding {

    @NonNull
    public final ImageView close;

    @Bindable
    protected NoteTabData mModel;

    @NonNull
    public final TextView title;

    public ItemNoteTabDragBinding(Object obj, View view, int i, ImageView imageView, TextView textView) {
        super(obj, view, i);
        this.close = imageView;
        this.title = textView;
    }

    public static ItemNoteTabDragBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static ItemNoteTabDragBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Nullable
    public NoteTabData getModel() {
        return this.mModel;
    }

    public abstract void setModel(@Nullable NoteTabData noteTabData);

    @Deprecated
    public static ItemNoteTabDragBinding bind(@NonNull View view, @Nullable Object obj) {
        return (ItemNoteTabDragBinding) ViewDataBinding.bind(obj, view, C10651R.layout.item_note_tab_drag);
    }

    @NonNull
    @Deprecated
    public static ItemNoteTabDragBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (ItemNoteTabDragBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.item_note_tab_drag, viewGroup, z, obj);
    }

    @NonNull
    public static ItemNoteTabDragBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static ItemNoteTabDragBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (ItemNoteTabDragBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.item_note_tab_drag, null, false, obj);
    }
}
