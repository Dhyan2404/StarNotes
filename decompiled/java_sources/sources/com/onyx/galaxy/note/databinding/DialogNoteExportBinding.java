package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.Bindable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.p039ui.MaxLengthInputTextEdit;
import com.onyx.android.sdk.replicator.note.p035db.model.NoteTabData;
import com.onyx.android.sdk.theme.widgets.TintCheckBox;
import com.onyx.android.sdk.theme.widgets.TintLinearLayout;
import com.onyx.android.sdk.theme.widgets.TintTextInputLayoutView;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public abstract class DialogNoteExportBinding extends ViewDataBinding {

    @NonNull
    public final ConstraintLayout bitmapPdf;

    @NonNull
    public final LinearLayout exportTypeContainer;

    @NonNull
    public final TintCheckBox exportWithBackground;

    @NonNull
    public final TintTextView formatDesc;

    @NonNull
    public final TintTextView formatWaringDesc;

    @NonNull
    public final LinearLayout formatWaringDescContainer;

    @NonNull
    public final ConstraintLayout imageFile;

    @NonNull
    public final ImageView ivBitmapPdf;

    @NonNull
    public final ImageView ivImageFile;

    @NonNull
    public final ImageView ivNoteFile;

    @NonNull
    public final ImageView ivVectorPdf;

    @NonNull
    public final TintLinearLayout llExportPages;

    @Bindable
    protected NoteTabData mModel;

    @NonNull
    public final ConstraintLayout noteFile;

    @NonNull
    public final TintTextView savePath;

    @NonNull
    public final MaxLengthInputTextEdit tieName;

    @NonNull
    public final TintTextInputLayoutView tilName;

    @NonNull
    public final TintTextView tvBitmapPdf;

    @NonNull
    public final TintTextView tvCancel;

    @NonNull
    public final TintTextView tvExport;

    @NonNull
    public final TintTextView tvExportPages;

    @NonNull
    public final TintTextView tvImageFile;

    @NonNull
    public final TintTextView tvNoteFile;

    @NonNull
    public final TintTextView tvShare;

    @NonNull
    public final TintTextView tvVectorPdf;

    @NonNull
    public final ConstraintLayout vectorPdf;

    public DialogNoteExportBinding(Object obj, View view, int i, ConstraintLayout constraintLayout, LinearLayout linearLayout, TintCheckBox tintCheckBox, TintTextView tintTextView, TintTextView tintTextView2, LinearLayout linearLayout2, ConstraintLayout constraintLayout2, ImageView imageView, ImageView imageView2, ImageView imageView3, ImageView imageView4, TintLinearLayout tintLinearLayout, ConstraintLayout constraintLayout3, TintTextView tintTextView3, MaxLengthInputTextEdit maxLengthInputTextEdit, TintTextInputLayoutView tintTextInputLayoutView, TintTextView tintTextView4, TintTextView tintTextView5, TintTextView tintTextView6, TintTextView tintTextView7, TintTextView tintTextView8, TintTextView tintTextView9, TintTextView tintTextView10, TintTextView tintTextView11, ConstraintLayout constraintLayout4) {
        super(obj, view, i);
        this.bitmapPdf = constraintLayout;
        this.exportTypeContainer = linearLayout;
        this.exportWithBackground = tintCheckBox;
        this.formatDesc = tintTextView;
        this.formatWaringDesc = tintTextView2;
        this.formatWaringDescContainer = linearLayout2;
        this.imageFile = constraintLayout2;
        this.ivBitmapPdf = imageView;
        this.ivImageFile = imageView2;
        this.ivNoteFile = imageView3;
        this.ivVectorPdf = imageView4;
        this.llExportPages = tintLinearLayout;
        this.noteFile = constraintLayout3;
        this.savePath = tintTextView3;
        this.tieName = maxLengthInputTextEdit;
        this.tilName = tintTextInputLayoutView;
        this.tvBitmapPdf = tintTextView4;
        this.tvCancel = tintTextView5;
        this.tvExport = tintTextView6;
        this.tvExportPages = tintTextView7;
        this.tvImageFile = tintTextView8;
        this.tvNoteFile = tintTextView9;
        this.tvShare = tintTextView10;
        this.tvVectorPdf = tintTextView11;
        this.vectorPdf = constraintLayout4;
    }

    public static DialogNoteExportBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static DialogNoteExportBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Nullable
    public NoteTabData getModel() {
        return this.mModel;
    }

    public abstract void setModel(@Nullable NoteTabData noteTabData);

    @Deprecated
    public static DialogNoteExportBinding bind(@NonNull View view, @Nullable Object obj) {
        return (DialogNoteExportBinding) ViewDataBinding.bind(obj, view, C10651R.layout.dialog_note_export);
    }

    @NonNull
    @Deprecated
    public static DialogNoteExportBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (DialogNoteExportBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.dialog_note_export, viewGroup, z, obj);
    }

    @NonNull
    public static DialogNoteExportBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static DialogNoteExportBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (DialogNoteExportBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.dialog_note_export, null, false, obj);
    }
}
