package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.Bindable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.theme.widgets.TintEditText;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintRecycleView;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.settings.viewmodel.SettingsHelpAndFeedbackViewModel;

/* loaded from: classes9.dex */
public abstract class FragmentSettingsHelpAndFeedbackBinding extends ViewDataBinding {

    @NonNull
    public final TintEditText edtEmail;

    @NonNull
    public final TintEditText edtMemo;

    @NonNull
    public final TintImageView ivBack;

    @Bindable
    protected SettingsHelpAndFeedbackViewModel mViewModel;

    @NonNull
    public final TintRecycleView rvPicture;

    @NonNull
    public final TintRecycleView rvType;

    @NonNull
    public final TintTextView tvEmail;

    @NonNull
    public final TintTextView tvEmailDesc;

    @NonNull
    public final TintTextView tvMemo;

    @NonNull
    public final TintTextView tvSubmit;

    @NonNull
    public final TintTextView tvType;

    @NonNull
    public final TintTextView tvUploadPic;

    public FragmentSettingsHelpAndFeedbackBinding(Object obj, View view, int i, TintEditText tintEditText, TintEditText tintEditText2, TintImageView tintImageView, TintRecycleView tintRecycleView, TintRecycleView tintRecycleView2, TintTextView tintTextView, TintTextView tintTextView2, TintTextView tintTextView3, TintTextView tintTextView4, TintTextView tintTextView5, TintTextView tintTextView6) {
        super(obj, view, i);
        this.edtEmail = tintEditText;
        this.edtMemo = tintEditText2;
        this.ivBack = tintImageView;
        this.rvPicture = tintRecycleView;
        this.rvType = tintRecycleView2;
        this.tvEmail = tintTextView;
        this.tvEmailDesc = tintTextView2;
        this.tvMemo = tintTextView3;
        this.tvSubmit = tintTextView4;
        this.tvType = tintTextView5;
        this.tvUploadPic = tintTextView6;
    }

    public static FragmentSettingsHelpAndFeedbackBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static FragmentSettingsHelpAndFeedbackBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Nullable
    public SettingsHelpAndFeedbackViewModel getViewModel() {
        return this.mViewModel;
    }

    public abstract void setViewModel(@Nullable SettingsHelpAndFeedbackViewModel settingsHelpAndFeedbackViewModel);

    @Deprecated
    public static FragmentSettingsHelpAndFeedbackBinding bind(@NonNull View view, @Nullable Object obj) {
        return (FragmentSettingsHelpAndFeedbackBinding) ViewDataBinding.bind(obj, view, C10651R.layout.fragment_settings_help_and_feedback);
    }

    @NonNull
    @Deprecated
    public static FragmentSettingsHelpAndFeedbackBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (FragmentSettingsHelpAndFeedbackBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.fragment_settings_help_and_feedback, viewGroup, z, obj);
    }

    @NonNull
    public static FragmentSettingsHelpAndFeedbackBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static FragmentSettingsHelpAndFeedbackBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (FragmentSettingsHelpAndFeedbackBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.fragment_settings_help_and_feedback, null, false, obj);
    }
}
