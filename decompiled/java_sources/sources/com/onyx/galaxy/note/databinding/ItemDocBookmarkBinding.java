package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.Bindable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.google.android.material.textfield.TextInputLayout;
import com.onyx.android.sdk.p039ui.MaxLengthInputTextEdit;
import com.onyx.android.sdk.replicator.note.p035db.model.VirtualBookmarkModel;
import com.onyx.android.sdk.theme.widgets.TintCheckBox;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintLinearLayout;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.android.sdk.theme.widgets.TintView;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public abstract class ItemDocBookmarkBinding extends ViewDataBinding {

    @NonNull
    public final ImageView bookmark;

    @NonNull
    public final TintImageView centerSettingButton;

    @NonNull
    public final TintCheckBox checkbox;

    @NonNull
    public final TintTextView countText;

    @NonNull
    public final TintView dividerView;

    @NonNull
    public final ImageView image;

    @NonNull
    public final TintLinearLayout imageContainer;

    @Bindable
    protected VirtualBookmarkModel mModel;

    @NonNull
    public final TintImageView moreSettings;

    @NonNull
    public final TintTextView page;

    @NonNull
    public final TextView title;

    @NonNull
    public final MaxLengthInputTextEdit titleEdit;

    @NonNull
    public final TextInputLayout titleEditContainer;

    public ItemDocBookmarkBinding(Object obj, View view, int i, ImageView imageView, TintImageView tintImageView, TintCheckBox tintCheckBox, TintTextView tintTextView, TintView tintView, ImageView imageView2, TintLinearLayout tintLinearLayout, TintImageView tintImageView2, TintTextView tintTextView2, TextView textView, MaxLengthInputTextEdit maxLengthInputTextEdit, TextInputLayout textInputLayout) {
        super(obj, view, i);
        this.bookmark = imageView;
        this.centerSettingButton = tintImageView;
        this.checkbox = tintCheckBox;
        this.countText = tintTextView;
        this.dividerView = tintView;
        this.image = imageView2;
        this.imageContainer = tintLinearLayout;
        this.moreSettings = tintImageView2;
        this.page = tintTextView2;
        this.title = textView;
        this.titleEdit = maxLengthInputTextEdit;
        this.titleEditContainer = textInputLayout;
    }

    public static ItemDocBookmarkBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static ItemDocBookmarkBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Nullable
    public VirtualBookmarkModel getModel() {
        return this.mModel;
    }

    public abstract void setModel(@Nullable VirtualBookmarkModel virtualBookmarkModel);

    @Deprecated
    public static ItemDocBookmarkBinding bind(@NonNull View view, @Nullable Object obj) {
        return (ItemDocBookmarkBinding) ViewDataBinding.bind(obj, view, C10651R.layout.item_doc_bookmark);
    }

    @NonNull
    @Deprecated
    public static ItemDocBookmarkBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (ItemDocBookmarkBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.item_doc_bookmark, viewGroup, z, obj);
    }

    @NonNull
    public static ItemDocBookmarkBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static ItemDocBookmarkBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (ItemDocBookmarkBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.item_doc_bookmark, null, false, obj);
    }
}
