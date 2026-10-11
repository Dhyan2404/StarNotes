package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.Bindable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.replicator.note.data.page.LayerInfo;
import com.onyx.android.sdk.theme.widgets.TintCheckBox;
import com.onyx.android.sdk.theme.widgets.TintFrameLayout;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintLinearLayout;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public abstract class ItemLayerBinding extends ViewDataBinding {

    @NonNull
    public final TintCheckBox checkbox;

    @NonNull
    public final TintLinearLayout contentContainer;

    @NonNull
    public final TintFrameLayout contentLayout;

    @NonNull
    public final FrameLayout flyImage;

    @NonNull
    public final ImageView image;

    @NonNull
    public final TintImageView lock;

    @Bindable
    protected LayerInfo mModel;

    @NonNull
    public final TintImageView more;

    @NonNull
    public final TintImageView show;

    @NonNull
    public final TintTextView title;

    public ItemLayerBinding(Object obj, View view, int i, TintCheckBox tintCheckBox, TintLinearLayout tintLinearLayout, TintFrameLayout tintFrameLayout, FrameLayout frameLayout, ImageView imageView, TintImageView tintImageView, TintImageView tintImageView2, TintImageView tintImageView3, TintTextView tintTextView) {
        super(obj, view, i);
        this.checkbox = tintCheckBox;
        this.contentContainer = tintLinearLayout;
        this.contentLayout = tintFrameLayout;
        this.flyImage = frameLayout;
        this.image = imageView;
        this.lock = tintImageView;
        this.more = tintImageView2;
        this.show = tintImageView3;
        this.title = tintTextView;
    }

    public static ItemLayerBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static ItemLayerBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Nullable
    public LayerInfo getModel() {
        return this.mModel;
    }

    public abstract void setModel(@Nullable LayerInfo layerInfo);

    @Deprecated
    public static ItemLayerBinding bind(@NonNull View view, @Nullable Object obj) {
        return (ItemLayerBinding) ViewDataBinding.bind(obj, view, C10651R.layout.item_layer);
    }

    @NonNull
    @Deprecated
    public static ItemLayerBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (ItemLayerBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.item_layer, viewGroup, z, obj);
    }

    @NonNull
    public static ItemLayerBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static ItemLayerBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (ItemLayerBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.item_layer, null, false, obj);
    }
}
