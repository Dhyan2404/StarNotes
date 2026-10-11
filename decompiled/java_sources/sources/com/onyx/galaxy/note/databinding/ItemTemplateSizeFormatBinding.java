package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public final class ItemTemplateSizeFormatBinding implements ViewBinding {

    /* renamed from: e */
    @NonNull
    public final LinearLayout f57229e;

    @NonNull
    public final TintTextView tvSizeFormatName;

    public ItemTemplateSizeFormatBinding(@NonNull LinearLayout linearLayout, @NonNull TintTextView tintTextView) {
        this.f57229e = linearLayout;
        this.tvSizeFormatName = tintTextView;
    }

    @NonNull
    public static ItemTemplateSizeFormatBinding bind(@NonNull View view) {
        int i = C10651R.id.tv_size_format_name;
        TintTextView tintTextView = (TintTextView) ViewBindings.findChildViewById(view, i);
        if (tintTextView != null) {
            return new ItemTemplateSizeFormatBinding((LinearLayout) view, tintTextView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    @NonNull
    public static ItemTemplateSizeFormatBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ItemTemplateSizeFormatBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(C10651R.layout.item_template_size_format, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public LinearLayout getRoot() {
        return this.f57229e;
    }
}
