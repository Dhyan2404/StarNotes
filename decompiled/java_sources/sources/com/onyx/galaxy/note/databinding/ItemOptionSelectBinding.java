package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public abstract class ItemOptionSelectBinding extends ViewDataBinding {

    @NonNull
    public final RelativeLayout itemView;

    @NonNull
    public final ImageView selectImage;

    @NonNull
    public final TextView titleText;

    public ItemOptionSelectBinding(Object obj, View view, int i, RelativeLayout relativeLayout, ImageView imageView, TextView textView) {
        super(obj, view, i);
        this.itemView = relativeLayout;
        this.selectImage = imageView;
        this.titleText = textView;
    }

    public static ItemOptionSelectBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static ItemOptionSelectBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ItemOptionSelectBinding bind(@NonNull View view, @Nullable Object obj) {
        return (ItemOptionSelectBinding) ViewDataBinding.bind(obj, view, C10651R.layout.item_option_select);
    }

    @NonNull
    @Deprecated
    public static ItemOptionSelectBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (ItemOptionSelectBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.item_option_select, viewGroup, z, obj);
    }

    @NonNull
    public static ItemOptionSelectBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static ItemOptionSelectBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (ItemOptionSelectBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.item_option_select, null, false, obj);
    }
}
