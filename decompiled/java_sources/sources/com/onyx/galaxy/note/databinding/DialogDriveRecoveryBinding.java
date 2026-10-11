package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.Group;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.p039ui.MediumTextView;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintLinearLayout;
import com.onyx.android.sdk.theme.widgets.TintProgressBar;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.common.view.MaxHeightRecyclerView;

/* loaded from: classes9.dex */
public abstract class DialogDriveRecoveryBinding extends ViewDataBinding {

    @NonNull
    public final Group groupError;

    @NonNull
    public final Group groupFinished;

    @NonNull
    public final Group groupProgress;

    @NonNull
    public final MaxHeightRecyclerView itemErrorList;

    @NonNull
    public final TintLinearLayout itemErrorListLayout;

    @NonNull
    public final TintImageView ivClose;

    @NonNull
    public final TintProgressBar progress;

    @NonNull
    public final TintTextView tvErrorSubTitle;

    @NonNull
    public final TintTextView tvErrorTitle;

    @NonNull
    public final TintTextView tvFinishSubTitle;

    @NonNull
    public final TintTextView tvFinishTitle;

    @NonNull
    public final TintTextView tvProgress;

    @NonNull
    public final MediumTextView tvTitle;

    public DialogDriveRecoveryBinding(Object obj, View view, int i, Group group, Group group2, Group group3, MaxHeightRecyclerView maxHeightRecyclerView, TintLinearLayout tintLinearLayout, TintImageView tintImageView, TintProgressBar tintProgressBar, TintTextView tintTextView, TintTextView tintTextView2, TintTextView tintTextView3, TintTextView tintTextView4, TintTextView tintTextView5, MediumTextView mediumTextView) {
        super(obj, view, i);
        this.groupError = group;
        this.groupFinished = group2;
        this.groupProgress = group3;
        this.itemErrorList = maxHeightRecyclerView;
        this.itemErrorListLayout = tintLinearLayout;
        this.ivClose = tintImageView;
        this.progress = tintProgressBar;
        this.tvErrorSubTitle = tintTextView;
        this.tvErrorTitle = tintTextView2;
        this.tvFinishSubTitle = tintTextView3;
        this.tvFinishTitle = tintTextView4;
        this.tvProgress = tintTextView5;
        this.tvTitle = mediumTextView;
    }

    public static DialogDriveRecoveryBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static DialogDriveRecoveryBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static DialogDriveRecoveryBinding bind(@NonNull View view, @Nullable Object obj) {
        return (DialogDriveRecoveryBinding) ViewDataBinding.bind(obj, view, C10651R.layout.dialog_drive_recovery);
    }

    @NonNull
    @Deprecated
    public static DialogDriveRecoveryBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (DialogDriveRecoveryBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.dialog_drive_recovery, viewGroup, z, obj);
    }

    @NonNull
    public static DialogDriveRecoveryBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static DialogDriveRecoveryBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (DialogDriveRecoveryBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.dialog_drive_recovery, null, false, obj);
    }
}
