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
public final class ItemTemplateCategoryTitleBinding implements ViewBinding {

    /* renamed from: e */
    @NonNull
    public final LinearLayout f57220e;

    @NonNull
    public final TintTextView tvCategoryTitleName;

    public ItemTemplateCategoryTitleBinding(@NonNull LinearLayout linearLayout, @NonNull TintTextView tintTextView) {
        this.f57220e = linearLayout;
        this.tvCategoryTitleName = tintTextView;
    }

    @NonNull
    public static ItemTemplateCategoryTitleBinding bind(@NonNull View view) {
        int i = C10651R.id.tv_category_title_name;
        TintTextView tintTextView = (TintTextView) ViewBindings.findChildViewById(view, i);
        if (tintTextView != null) {
            return new ItemTemplateCategoryTitleBinding((LinearLayout) view, tintTextView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    @NonNull
    public static ItemTemplateCategoryTitleBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ItemTemplateCategoryTitleBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(C10651R.layout.item_template_category_title, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public LinearLayout getRoot() {
        return this.f57220e;
    }
}
