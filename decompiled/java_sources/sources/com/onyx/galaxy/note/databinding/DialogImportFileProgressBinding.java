package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.p039ui.MediumTextView;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintProgressBar;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public abstract class DialogImportFileProgressBinding extends ViewDataBinding {

    @NonNull
    public final TintImageView downloadingButton;

    @NonNull
    public final TintTextView importing;

    @NonNull
    public final TintImageView ivClose;

    @NonNull
    public final TintProgressBar progressBar;

    @NonNull
    public final LinearLayout progressContainer;

    @NonNull
    public final TintTextView tvCurrentProgress;

    @NonNull
    public final TintTextView tvName;

    @NonNull
    public final MediumTextView tvTitle;

    @NonNull
    public final TintTextView tvTotalProgress;

    public DialogImportFileProgressBinding(Object obj, View view, int i, TintImageView tintImageView, TintTextView tintTextView, TintImageView tintImageView2, TintProgressBar tintProgressBar, LinearLayout linearLayout, TintTextView tintTextView2, TintTextView tintTextView3, MediumTextView mediumTextView, TintTextView tintTextView4) {
        super(obj, view, i);
        this.downloadingButton = tintImageView;
        this.importing = tintTextView;
        this.ivClose = tintImageView2;
        this.progressBar = tintProgressBar;
        this.progressContainer = linearLayout;
        this.tvCurrentProgress = tintTextView2;
        this.tvName = tintTextView3;
        this.tvTitle = mediumTextView;
        this.tvTotalProgress = tintTextView4;
    }

    public static DialogImportFileProgressBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static DialogImportFileProgressBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static DialogImportFileProgressBinding bind(@NonNull View view, @Nullable Object obj) {
        return (DialogImportFileProgressBinding) ViewDataBinding.bind(obj, view, C10651R.layout.dialog_import_file_progress);
    }

    @NonNull
    @Deprecated
    public static DialogImportFileProgressBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (DialogImportFileProgressBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.dialog_import_file_progress, viewGroup, z, obj);
    }

    @NonNull
    public static DialogImportFileProgressBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static DialogImportFileProgressBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (DialogImportFileProgressBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.dialog_import_file_progress, null, false, obj);
    }
}
