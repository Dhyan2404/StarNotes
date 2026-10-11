package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import androidx.recyclerview.widget.RecyclerView;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public abstract class DialogBackupProcessBinding extends ViewDataBinding {

    @NonNull
    public final FrameLayout flCenterContainer;

    @NonNull
    public final ImageView ivClose;

    @NonNull
    public final LinearLayout llErrorDetailInfoContainer;

    @NonNull
    public final LinearLayout llResultCompleteContainer;

    @NonNull
    public final LinearLayout llResultContainer;

    @NonNull
    public final LinearLayout llResultErrorContainer;

    @NonNull
    public final LinearLayout progressContainer;

    @NonNull
    public final ProgressBar progressImportBackup;

    @NonNull
    public final RecyclerView rlImportErrorList;

    @NonNull
    public final TextView tvBackupName;

    @NonNull
    public final TextView tvCurrentProgress;

    @NonNull
    public final TextView tvCurrentProgressName;

    @NonNull
    public final TextView tvTitle;

    public DialogBackupProcessBinding(Object obj, View view, int i, FrameLayout frameLayout, ImageView imageView, LinearLayout linearLayout, LinearLayout linearLayout2, LinearLayout linearLayout3, LinearLayout linearLayout4, LinearLayout linearLayout5, ProgressBar progressBar, RecyclerView recyclerView, TextView textView, TextView textView2, TextView textView3, TextView textView4) {
        super(obj, view, i);
        this.flCenterContainer = frameLayout;
        this.ivClose = imageView;
        this.llErrorDetailInfoContainer = linearLayout;
        this.llResultCompleteContainer = linearLayout2;
        this.llResultContainer = linearLayout3;
        this.llResultErrorContainer = linearLayout4;
        this.progressContainer = linearLayout5;
        this.progressImportBackup = progressBar;
        this.rlImportErrorList = recyclerView;
        this.tvBackupName = textView;
        this.tvCurrentProgress = textView2;
        this.tvCurrentProgressName = textView3;
        this.tvTitle = textView4;
    }

    public static DialogBackupProcessBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static DialogBackupProcessBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static DialogBackupProcessBinding bind(@NonNull View view, @Nullable Object obj) {
        return (DialogBackupProcessBinding) ViewDataBinding.bind(obj, view, C10651R.layout.dialog_backup_process);
    }

    @NonNull
    @Deprecated
    public static DialogBackupProcessBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (DialogBackupProcessBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.dialog_backup_process, viewGroup, z, obj);
    }

    @NonNull
    public static DialogBackupProcessBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static DialogBackupProcessBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (DialogBackupProcessBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.dialog_backup_process, null, false, obj);
    }
}
