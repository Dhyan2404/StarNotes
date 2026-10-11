package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public abstract class ItemSelectionMenuBinding extends ViewDataBinding {

    @NonNull
    public final LinearLayout content;

    /* renamed from: rl */
    @NonNull
    public final RelativeLayout f57178rl;

    @NonNull
    public final TextView title;

    public ItemSelectionMenuBinding(Object obj, View view, int i, LinearLayout linearLayout, RelativeLayout relativeLayout, TextView textView) {
        super(obj, view, i);
        this.content = linearLayout;
        this.f57178rl = relativeLayout;
        this.title = textView;
    }

    public static ItemSelectionMenuBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static ItemSelectionMenuBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ItemSelectionMenuBinding bind(@NonNull View view, @Nullable Object obj) {
        return (ItemSelectionMenuBinding) ViewDataBinding.bind(obj, view, C10651R.layout.item_selection_menu);
    }

    @NonNull
    @Deprecated
    public static ItemSelectionMenuBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (ItemSelectionMenuBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.item_selection_menu, viewGroup, z, obj);
    }

    @NonNull
    public static ItemSelectionMenuBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static ItemSelectionMenuBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (ItemSelectionMenuBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.item_selection_menu, null, false, obj);
    }
}
