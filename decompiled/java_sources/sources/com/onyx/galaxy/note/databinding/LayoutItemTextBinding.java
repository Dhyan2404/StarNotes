package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public abstract class LayoutItemTextBinding extends ViewDataBinding {

    @NonNull
    public final LinearLayout content;

    @NonNull
    public final TextView title;

    public LayoutItemTextBinding(Object obj, View view, int i, LinearLayout linearLayout, TextView textView) {
        super(obj, view, i);
        this.content = linearLayout;
        this.title = textView;
    }

    public static LayoutItemTextBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static LayoutItemTextBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static LayoutItemTextBinding bind(@NonNull View view, @Nullable Object obj) {
        return (LayoutItemTextBinding) ViewDataBinding.bind(obj, view, C10651R.layout.layout_item_text);
    }

    @NonNull
    @Deprecated
    public static LayoutItemTextBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (LayoutItemTextBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.layout_item_text, viewGroup, z, obj);
    }

    @NonNull
    public static LayoutItemTextBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static LayoutItemTextBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (LayoutItemTextBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.layout_item_text, null, false, obj);
    }
}
