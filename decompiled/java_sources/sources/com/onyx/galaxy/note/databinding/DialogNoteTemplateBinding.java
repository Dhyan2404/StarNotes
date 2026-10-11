package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.onyx.android.sdk.p039ui.DispatchClickCallbackConstraintLayout;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.category.view.AutoFitRecycleView;

/* loaded from: classes9.dex */
public final class DialogNoteTemplateBinding implements ViewBinding {

    @NonNull
    public final AutoFitRecycleView clCategoryCustomTemplate;

    @NonNull
    public final RecyclerView clCategoryTemplate;

    /* renamed from: e */
    @NonNull
    public final DispatchClickCallbackConstraintLayout f56484e;

    @NonNull
    public final FrameLayout flyContent;

    @NonNull
    public final LinearLayout llCustomSwitchContainer;

    @NonNull
    public final DispatchClickCallbackConstraintLayout noteTemplateRoot;

    @NonNull
    public final CreateNoteTemplateTitleContainerBinding titleContainer;

    @NonNull
    public final TintTextView tvTemplateAdded;

    @NonNull
    public final TintTextView tvTemplateCustom;

    @NonNull
    public final TintTextView tvTemplateRecommend;

    public DialogNoteTemplateBinding(@NonNull DispatchClickCallbackConstraintLayout dispatchClickCallbackConstraintLayout, @NonNull AutoFitRecycleView autoFitRecycleView, @NonNull RecyclerView recyclerView, @NonNull FrameLayout frameLayout, @NonNull LinearLayout linearLayout, @NonNull DispatchClickCallbackConstraintLayout dispatchClickCallbackConstraintLayout2, @NonNull CreateNoteTemplateTitleContainerBinding createNoteTemplateTitleContainerBinding, @NonNull TintTextView tintTextView, @NonNull TintTextView tintTextView2, @NonNull TintTextView tintTextView3) {
        this.f56484e = dispatchClickCallbackConstraintLayout;
        this.clCategoryCustomTemplate = autoFitRecycleView;
        this.clCategoryTemplate = recyclerView;
        this.flyContent = frameLayout;
        this.llCustomSwitchContainer = linearLayout;
        this.noteTemplateRoot = dispatchClickCallbackConstraintLayout2;
        this.titleContainer = createNoteTemplateTitleContainerBinding;
        this.tvTemplateAdded = tintTextView;
        this.tvTemplateCustom = tintTextView2;
        this.tvTemplateRecommend = tintTextView3;
    }

    @NonNull
    public static DialogNoteTemplateBinding bind(@NonNull View view) {
        int i = C10651R.id.cl_category_custom_template;
        AutoFitRecycleView autoFitRecycleView = (AutoFitRecycleView) ViewBindings.findChildViewById(view, i);
        if (autoFitRecycleView != null) {
            i = C10651R.id.cl_category_template;
            RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, i);
            if (recyclerView != null) {
                i = C10651R.id.fly_content;
                FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, i);
                if (frameLayout != null) {
                    i = C10651R.id.ll_custom_switch_container;
                    LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, i);
                    if (linearLayout != null) {
                        DispatchClickCallbackConstraintLayout dispatchClickCallbackConstraintLayout = (DispatchClickCallbackConstraintLayout) view;
                        i = C10651R.id.titleContainer;
                        View findChildViewById = ViewBindings.findChildViewById(view, i);
                        if (findChildViewById != null) {
                            CreateNoteTemplateTitleContainerBinding bind = CreateNoteTemplateTitleContainerBinding.bind(findChildViewById);
                            i = C10651R.id.tv_template_added;
                            TintTextView tintTextView = (TintTextView) ViewBindings.findChildViewById(view, i);
                            if (tintTextView != null) {
                                i = C10651R.id.tv_template_custom;
                                TintTextView tintTextView2 = (TintTextView) ViewBindings.findChildViewById(view, i);
                                if (tintTextView2 != null) {
                                    i = C10651R.id.tv_template_recommend;
                                    TintTextView tintTextView3 = (TintTextView) ViewBindings.findChildViewById(view, i);
                                    if (tintTextView3 != null) {
                                        return new DialogNoteTemplateBinding(dispatchClickCallbackConstraintLayout, autoFitRecycleView, recyclerView, frameLayout, linearLayout, dispatchClickCallbackConstraintLayout, bind, tintTextView, tintTextView2, tintTextView3);
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    @NonNull
    public static DialogNoteTemplateBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static DialogNoteTemplateBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(C10651R.layout.dialog_note_template, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public DispatchClickCallbackConstraintLayout getRoot() {
        return this.f56484e;
    }
}
