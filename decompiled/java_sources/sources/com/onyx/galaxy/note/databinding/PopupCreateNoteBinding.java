package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.Bindable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.theme.widgets.TintFrameLayout;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintLinearLayout;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.category.viewmodel.NoteQuotaViewModel;
import com.onyx.galaxy.note.editor.view.PalmCollectionLinearLayout;

/* loaded from: classes9.dex */
public abstract class PopupCreateNoteBinding extends ViewDataBinding {

    /* renamed from: fl */
    @NonNull
    public final TintFrameLayout f57583fl;

    @NonNull
    public final PalmCollectionLinearLayout llCreateCamera;

    @NonNull
    public final PalmCollectionLinearLayout llCreateFileImport;

    @NonNull
    public final PalmCollectionLinearLayout llCreateFolder;

    @NonNull
    public final PalmCollectionLinearLayout llCreateNoBonds;

    @NonNull
    public final PalmCollectionLinearLayout llCreateNote;

    @NonNull
    public final PalmCollectionLinearLayout llCreatePicImport;

    @NonNull
    public final PalmCollectionLinearLayout llQuickly;

    @NonNull
    public final TintLinearLayout llScanner;

    @NonNull
    public final LinearLayout llVipContainer;

    @Bindable
    protected NoteQuotaViewModel mQuotaModel;

    @NonNull
    public final TintImageView quicklySettings;

    @NonNull
    public final TintTextView tvVipHint;

    public PopupCreateNoteBinding(Object obj, View view, int i, TintFrameLayout tintFrameLayout, PalmCollectionLinearLayout palmCollectionLinearLayout, PalmCollectionLinearLayout palmCollectionLinearLayout2, PalmCollectionLinearLayout palmCollectionLinearLayout3, PalmCollectionLinearLayout palmCollectionLinearLayout4, PalmCollectionLinearLayout palmCollectionLinearLayout5, PalmCollectionLinearLayout palmCollectionLinearLayout6, PalmCollectionLinearLayout palmCollectionLinearLayout7, TintLinearLayout tintLinearLayout, LinearLayout linearLayout, TintImageView tintImageView, TintTextView tintTextView) {
        super(obj, view, i);
        this.f57583fl = tintFrameLayout;
        this.llCreateCamera = palmCollectionLinearLayout;
        this.llCreateFileImport = palmCollectionLinearLayout2;
        this.llCreateFolder = palmCollectionLinearLayout3;
        this.llCreateNoBonds = palmCollectionLinearLayout4;
        this.llCreateNote = palmCollectionLinearLayout5;
        this.llCreatePicImport = palmCollectionLinearLayout6;
        this.llQuickly = palmCollectionLinearLayout7;
        this.llScanner = tintLinearLayout;
        this.llVipContainer = linearLayout;
        this.quicklySettings = tintImageView;
        this.tvVipHint = tintTextView;
    }

    public static PopupCreateNoteBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static PopupCreateNoteBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Nullable
    public NoteQuotaViewModel getQuotaModel() {
        return this.mQuotaModel;
    }

    public abstract void setQuotaModel(@Nullable NoteQuotaViewModel noteQuotaViewModel);

    @Deprecated
    public static PopupCreateNoteBinding bind(@NonNull View view, @Nullable Object obj) {
        return (PopupCreateNoteBinding) ViewDataBinding.bind(obj, view, C10651R.layout.popup_create_note);
    }

    @NonNull
    @Deprecated
    public static PopupCreateNoteBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (PopupCreateNoteBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.popup_create_note, viewGroup, z, obj);
    }

    @NonNull
    public static PopupCreateNoteBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static PopupCreateNoteBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (PopupCreateNoteBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.popup_create_note, null, false, obj);
    }
}
