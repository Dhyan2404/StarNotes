package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.Barrier;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.android.sdk.theme.widgets.TintView;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.category.view.LabelLayout;

/* loaded from: classes9.dex */
public abstract class DialogImportSuccessBinding extends ViewDataBinding {

    @NonNull
    public final Barrier barrier;

    @NonNull
    public final TintTextView btnFinish;

    @NonNull
    public final TintView divider1;

    @NonNull
    public final TintImageView imageView1;

    @NonNull
    public final LabelLayout llAllNote;

    @NonNull
    public final LabelLayout llFolders;

    @NonNull
    public final LabelLayout llTags;

    @NonNull
    public final TintTextView textView1;

    @NonNull
    public final TintTextView tvSuccess;

    @NonNull
    public final TintTextView tvTotalCount;

    public DialogImportSuccessBinding(Object obj, View view, int i, Barrier barrier, TintTextView tintTextView, TintView tintView, TintImageView tintImageView, LabelLayout labelLayout, LabelLayout labelLayout2, LabelLayout labelLayout3, TintTextView tintTextView2, TintTextView tintTextView3, TintTextView tintTextView4) {
        super(obj, view, i);
        this.barrier = barrier;
        this.btnFinish = tintTextView;
        this.divider1 = tintView;
        this.imageView1 = tintImageView;
        this.llAllNote = labelLayout;
        this.llFolders = labelLayout2;
        this.llTags = labelLayout3;
        this.textView1 = tintTextView2;
        this.tvSuccess = tintTextView3;
        this.tvTotalCount = tintTextView4;
    }

    public static DialogImportSuccessBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static DialogImportSuccessBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static DialogImportSuccessBinding bind(@NonNull View view, @Nullable Object obj) {
        return (DialogImportSuccessBinding) ViewDataBinding.bind(obj, view, C10651R.layout.dialog_import_success);
    }

    @NonNull
    @Deprecated
    public static DialogImportSuccessBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (DialogImportSuccessBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.dialog_import_success, viewGroup, z, obj);
    }

    @NonNull
    public static DialogImportSuccessBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static DialogImportSuccessBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (DialogImportSuccessBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.dialog_import_success, null, false, obj);
    }
}
