package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.p039ui.MaxLengthInputTextEdit;
import com.onyx.android.sdk.theme.widgets.TintLinearLayout;
import com.onyx.android.sdk.theme.widgets.TintRecycleView;
import com.onyx.android.sdk.theme.widgets.TintTextInputLayoutView;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public abstract class DialogSelectImportLocationBinding extends ViewDataBinding {

    @NonNull
    public final TintLinearLayout llFolders;

    @NonNull
    public final LinearLayout llMultipleFile;

    @NonNull
    public final LinearLayout llSingleFile;

    @NonNull
    public final TintLinearLayout llTag;

    @NonNull
    public final RelativeLayout rlTop;

    @NonNull
    public final TintRecycleView rvTags;

    @NonNull
    public final MaxLengthInputTextEdit tdFileBaseName;

    @NonNull
    public final TintTextInputLayoutView tilName;

    @NonNull
    public final TintTextView tvAddTag;

    @NonNull
    public final TintTextView tvCancel;

    @NonNull
    public final TintTextView tvFileName;

    @NonNull
    public final TintTextView tvFoldersName;

    @NonNull
    public final TintTextView tvImport;

    @NonNull
    public final TintTextView tvMultipleFileCount;

    @NonNull
    public final TintTextView tvNameTitle;

    @NonNull
    public final TintTextView tvTitle;

    public DialogSelectImportLocationBinding(Object obj, View view, int i, TintLinearLayout tintLinearLayout, LinearLayout linearLayout, LinearLayout linearLayout2, TintLinearLayout tintLinearLayout2, RelativeLayout relativeLayout, TintRecycleView tintRecycleView, MaxLengthInputTextEdit maxLengthInputTextEdit, TintTextInputLayoutView tintTextInputLayoutView, TintTextView tintTextView, TintTextView tintTextView2, TintTextView tintTextView3, TintTextView tintTextView4, TintTextView tintTextView5, TintTextView tintTextView6, TintTextView tintTextView7, TintTextView tintTextView8) {
        super(obj, view, i);
        this.llFolders = tintLinearLayout;
        this.llMultipleFile = linearLayout;
        this.llSingleFile = linearLayout2;
        this.llTag = tintLinearLayout2;
        this.rlTop = relativeLayout;
        this.rvTags = tintRecycleView;
        this.tdFileBaseName = maxLengthInputTextEdit;
        this.tilName = tintTextInputLayoutView;
        this.tvAddTag = tintTextView;
        this.tvCancel = tintTextView2;
        this.tvFileName = tintTextView3;
        this.tvFoldersName = tintTextView4;
        this.tvImport = tintTextView5;
        this.tvMultipleFileCount = tintTextView6;
        this.tvNameTitle = tintTextView7;
        this.tvTitle = tintTextView8;
    }

    public static DialogSelectImportLocationBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static DialogSelectImportLocationBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static DialogSelectImportLocationBinding bind(@NonNull View view, @Nullable Object obj) {
        return (DialogSelectImportLocationBinding) ViewDataBinding.bind(obj, view, C10651R.layout.dialog_select_import_location);
    }

    @NonNull
    @Deprecated
    public static DialogSelectImportLocationBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (DialogSelectImportLocationBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.dialog_select_import_location, viewGroup, z, obj);
    }

    @NonNull
    public static DialogSelectImportLocationBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static DialogSelectImportLocationBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (DialogSelectImportLocationBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.dialog_select_import_location, null, false, obj);
    }
}
