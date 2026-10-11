package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.Bindable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.replicator.note.p035db.model.VirtualTocModel;
import com.onyx.android.sdk.theme.widgets.TintCheckBox;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintRelativeLayout;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.android.sdk.theme.widgets.TintView;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public abstract class ItemDocTocBinding extends ViewDataBinding {

    @NonNull
    public final TintCheckBox checkbox;

    @NonNull
    public final TintRelativeLayout contentLayout;

    @NonNull
    public final LinearLayout coverTitleContainer;

    @NonNull
    public final TintView dividerView;

    @NonNull
    public final ImageView image;

    @NonNull
    public final LinearLayout imageContainer;

    @NonNull
    public final TintImageView ivIndicator;

    @Bindable
    protected VirtualTocModel mModel;

    @NonNull
    public final TintImageView moreSettings;

    @NonNull
    public final TintTextView pageIndex;

    @NonNull
    public final TintTextView title;

    @NonNull
    public final TintView vDragBottom;

    @NonNull
    public final TintView vDragIn;

    @NonNull
    public final TintView vDragTop;

    public ItemDocTocBinding(Object obj, View view, int i, TintCheckBox tintCheckBox, TintRelativeLayout tintRelativeLayout, LinearLayout linearLayout, TintView tintView, ImageView imageView, LinearLayout linearLayout2, TintImageView tintImageView, TintImageView tintImageView2, TintTextView tintTextView, TintTextView tintTextView2, TintView tintView2, TintView tintView3, TintView tintView4) {
        super(obj, view, i);
        this.checkbox = tintCheckBox;
        this.contentLayout = tintRelativeLayout;
        this.coverTitleContainer = linearLayout;
        this.dividerView = tintView;
        this.image = imageView;
        this.imageContainer = linearLayout2;
        this.ivIndicator = tintImageView;
        this.moreSettings = tintImageView2;
        this.pageIndex = tintTextView;
        this.title = tintTextView2;
        this.vDragBottom = tintView2;
        this.vDragIn = tintView3;
        this.vDragTop = tintView4;
    }

    public static ItemDocTocBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static ItemDocTocBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Nullable
    public VirtualTocModel getModel() {
        return this.mModel;
    }

    public abstract void setModel(@Nullable VirtualTocModel virtualTocModel);

    @Deprecated
    public static ItemDocTocBinding bind(@NonNull View view, @Nullable Object obj) {
        return (ItemDocTocBinding) ViewDataBinding.bind(obj, view, C10651R.layout.item_doc_toc);
    }

    @NonNull
    @Deprecated
    public static ItemDocTocBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (ItemDocTocBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.item_doc_toc, viewGroup, z, obj);
    }

    @NonNull
    public static ItemDocTocBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static ItemDocTocBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (ItemDocTocBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.item_doc_toc, null, false, obj);
    }
}
