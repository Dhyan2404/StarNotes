package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.theme.widgets.TintFrameLayout;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintSwitchCompat;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public abstract class FragmentSettingsDocBinding extends ViewDataBinding {

    @NonNull
    public final LayoutPronunciationSelectBinding includePronunciation;

    @NonNull
    public final TintImageView ivQuicklyTemplateExpand;

    @NonNull
    public final TintFrameLayout quickNoteTemplate;

    @NonNull
    public final TintSwitchCompat switchAppendPage;

    @NonNull
    public final TintSwitchCompat switchPaperMovesFreely;

    @NonNull
    public final TintSwitchCompat switchSlideToAdd;

    @NonNull
    public final TintTextView tvPronunciation;

    public FragmentSettingsDocBinding(Object obj, View view, int i, LayoutPronunciationSelectBinding layoutPronunciationSelectBinding, TintImageView tintImageView, TintFrameLayout tintFrameLayout, TintSwitchCompat tintSwitchCompat, TintSwitchCompat tintSwitchCompat2, TintSwitchCompat tintSwitchCompat3, TintTextView tintTextView) {
        super(obj, view, i);
        this.includePronunciation = layoutPronunciationSelectBinding;
        this.ivQuicklyTemplateExpand = tintImageView;
        this.quickNoteTemplate = tintFrameLayout;
        this.switchAppendPage = tintSwitchCompat;
        this.switchPaperMovesFreely = tintSwitchCompat2;
        this.switchSlideToAdd = tintSwitchCompat3;
        this.tvPronunciation = tintTextView;
    }

    public static FragmentSettingsDocBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static FragmentSettingsDocBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static FragmentSettingsDocBinding bind(@NonNull View view, @Nullable Object obj) {
        return (FragmentSettingsDocBinding) ViewDataBinding.bind(obj, view, C10651R.layout.fragment_settings_doc);
    }

    @NonNull
    @Deprecated
    public static FragmentSettingsDocBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (FragmentSettingsDocBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.fragment_settings_doc, viewGroup, z, obj);
    }

    @NonNull
    public static FragmentSettingsDocBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static FragmentSettingsDocBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (FragmentSettingsDocBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.fragment_settings_doc, null, false, obj);
    }
}
