package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.theme.widgets.TintFrameLayout;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public abstract class LayoutNoteExportSettingsBinding extends ViewDataBinding {

    @NonNull
    public final TintFrameLayout exportCurPageImage;

    @NonNull
    public final TintFrameLayout exportDocument;

    @NonNull
    public final TintFrameLayout exportDocumentPages;

    public LayoutNoteExportSettingsBinding(Object obj, View view, int i, TintFrameLayout tintFrameLayout, TintFrameLayout tintFrameLayout2, TintFrameLayout tintFrameLayout3) {
        super(obj, view, i);
        this.exportCurPageImage = tintFrameLayout;
        this.exportDocument = tintFrameLayout2;
        this.exportDocumentPages = tintFrameLayout3;
    }

    public static LayoutNoteExportSettingsBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static LayoutNoteExportSettingsBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static LayoutNoteExportSettingsBinding bind(@NonNull View view, @Nullable Object obj) {
        return (LayoutNoteExportSettingsBinding) ViewDataBinding.bind(obj, view, C10651R.layout.layout_note_export_settings);
    }

    @NonNull
    @Deprecated
    public static LayoutNoteExportSettingsBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (LayoutNoteExportSettingsBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.layout_note_export_settings, viewGroup, z, obj);
    }

    @NonNull
    public static LayoutNoteExportSettingsBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static LayoutNoteExportSettingsBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (LayoutNoteExportSettingsBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.layout_note_export_settings, null, false, obj);
    }
}
