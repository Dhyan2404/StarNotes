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
import com.onyx.android.sdk.replicator.note.p035db.model.NoteTabData;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.editor.view.toolbar.NoteCommonSettingsLayout;
import com.onyx.galaxy.note.editor.view.toolbar.NoteExportSettingsLayout;
import com.onyx.galaxy.note.editor.view.toolbar.NotePageSettingsLayout;
import com.onyx.galaxy.note.editor.view.toolbar.NoteTagLayout;
import com.onyx.galaxy.note.editor.view.toolbar.NoteTitleEditText;

/* loaded from: classes9.dex */
public abstract class PopupNoteDocumentMoreSettingsBinding extends ViewDataBinding {

    @NonNull
    public final NoteTagLayout flTagContainer;

    @NonNull
    public final TintImageView ivClose;

    @Bindable
    protected NoteTabData mModel;

    @NonNull
    public final NoteCommonSettingsLayout noteCommonSetting;

    @NonNull
    public final NoteExportSettingsLayout noteExportSetting;

    @NonNull
    public final NotePageSettingsLayout notePageSetting;

    @NonNull
    public final LinearLayout rootContainer;

    @NonNull
    public final NoteTitleEditText titleEdittext;

    public PopupNoteDocumentMoreSettingsBinding(Object obj, View view, int i, NoteTagLayout noteTagLayout, TintImageView tintImageView, NoteCommonSettingsLayout noteCommonSettingsLayout, NoteExportSettingsLayout noteExportSettingsLayout, NotePageSettingsLayout notePageSettingsLayout, LinearLayout linearLayout, NoteTitleEditText noteTitleEditText) {
        super(obj, view, i);
        this.flTagContainer = noteTagLayout;
        this.ivClose = tintImageView;
        this.noteCommonSetting = noteCommonSettingsLayout;
        this.noteExportSetting = noteExportSettingsLayout;
        this.notePageSetting = notePageSettingsLayout;
        this.rootContainer = linearLayout;
        this.titleEdittext = noteTitleEditText;
    }

    public static PopupNoteDocumentMoreSettingsBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static PopupNoteDocumentMoreSettingsBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Nullable
    public NoteTabData getModel() {
        return this.mModel;
    }

    public abstract void setModel(@Nullable NoteTabData noteTabData);

    @Deprecated
    public static PopupNoteDocumentMoreSettingsBinding bind(@NonNull View view, @Nullable Object obj) {
        return (PopupNoteDocumentMoreSettingsBinding) ViewDataBinding.bind(obj, view, C10651R.layout.popup_note_document_more_settings);
    }

    @NonNull
    @Deprecated
    public static PopupNoteDocumentMoreSettingsBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (PopupNoteDocumentMoreSettingsBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.popup_note_document_more_settings, viewGroup, z, obj);
    }

    @NonNull
    public static PopupNoteDocumentMoreSettingsBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static PopupNoteDocumentMoreSettingsBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (PopupNoteDocumentMoreSettingsBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.popup_note_document_more_settings, null, false, obj);
    }
}
