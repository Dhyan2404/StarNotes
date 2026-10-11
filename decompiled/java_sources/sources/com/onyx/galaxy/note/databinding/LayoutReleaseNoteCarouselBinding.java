package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import androidx.viewpager2.widget.ViewPager2;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.p048ui.view.PageIndicatorView;

/* loaded from: classes9.dex */
public final class LayoutReleaseNoteCarouselBinding implements ViewBinding {

    /* renamed from: e */
    @NonNull
    public final ConstraintLayout f57435e;

    @NonNull
    public final ViewPager2 imagePager;

    @NonNull
    public final PageIndicatorView pageIndicator;

    @NonNull
    public final TextView pageText;

    public LayoutReleaseNoteCarouselBinding(@NonNull ConstraintLayout constraintLayout, @NonNull ViewPager2 viewPager2, @NonNull PageIndicatorView pageIndicatorView, @NonNull TextView textView) {
        this.f57435e = constraintLayout;
        this.imagePager = viewPager2;
        this.pageIndicator = pageIndicatorView;
        this.pageText = textView;
    }

    @NonNull
    public static LayoutReleaseNoteCarouselBinding bind(@NonNull View view) {
        int i = C10651R.id.imagePager;
        ViewPager2 viewPager2 = (ViewPager2) ViewBindings.findChildViewById(view, i);
        if (viewPager2 != null) {
            i = C10651R.id.pageIndicator;
            PageIndicatorView pageIndicatorView = (PageIndicatorView) ViewBindings.findChildViewById(view, i);
            if (pageIndicatorView != null) {
                i = C10651R.id.pageText;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, i);
                if (textView != null) {
                    return new LayoutReleaseNoteCarouselBinding((ConstraintLayout) view, viewPager2, pageIndicatorView, textView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    @NonNull
    public static LayoutReleaseNoteCarouselBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static LayoutReleaseNoteCarouselBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(C10651R.layout.layout_release_note_carousel, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public ConstraintLayout getRoot() {
        return this.f57435e;
    }
}
