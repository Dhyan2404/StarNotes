package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.onyx.android.sdk.p039ui.MediumTextView;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.category.p044ui.TemplateRecycleView;

/* loaded from: classes9.dex */
public final class ItemTemplateCategoryVerticalBinding implements ViewBinding {

    /* renamed from: e */
    @NonNull
    public final LinearLayout f57221e;

    @NonNull
    public final FrameLayout listContainer;

    @NonNull
    public final TemplateRecycleView rlTemplateList;

    @NonNull
    public final MediumTextView tvCategoryName;

    public ItemTemplateCategoryVerticalBinding(@NonNull LinearLayout linearLayout, @NonNull FrameLayout frameLayout, @NonNull TemplateRecycleView templateRecycleView, @NonNull MediumTextView mediumTextView) {
        this.f57221e = linearLayout;
        this.listContainer = frameLayout;
        this.rlTemplateList = templateRecycleView;
        this.tvCategoryName = mediumTextView;
    }

    @NonNull
    public static ItemTemplateCategoryVerticalBinding bind(@NonNull View view) {
        int i = C10651R.id.list_container;
        FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, i);
        if (frameLayout != null) {
            i = C10651R.id.rl_template_list;
            TemplateRecycleView templateRecycleView = (TemplateRecycleView) ViewBindings.findChildViewById(view, i);
            if (templateRecycleView != null) {
                i = C10651R.id.tv_category_name;
                MediumTextView mediumTextView = (MediumTextView) ViewBindings.findChildViewById(view, i);
                if (mediumTextView != null) {
                    return new ItemTemplateCategoryVerticalBinding((LinearLayout) view, frameLayout, templateRecycleView, mediumTextView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    @NonNull
    public static ItemTemplateCategoryVerticalBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ItemTemplateCategoryVerticalBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(C10651R.layout.item_template_category_vertical, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public LinearLayout getRoot() {
        return this.f57221e;
    }
}
