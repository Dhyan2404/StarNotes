package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public final class ActivityNoteScribbleBinding implements ViewBinding {

    @NonNull
    public final FrameLayout contentContainer;

    /* renamed from: e */
    @NonNull
    public final RelativeLayout f56281e;

    public ActivityNoteScribbleBinding(@NonNull RelativeLayout relativeLayout, @NonNull FrameLayout frameLayout) {
        this.f56281e = relativeLayout;
        this.contentContainer = frameLayout;
    }

    @NonNull
    public static ActivityNoteScribbleBinding bind(@NonNull View view) {
        int i = C10651R.id.content_container;
        FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, i);
        if (frameLayout != null) {
            return new ActivityNoteScribbleBinding((RelativeLayout) view, frameLayout);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    @NonNull
    public static ActivityNoteScribbleBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ActivityNoteScribbleBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(C10651R.layout.activity_note_scribble, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public RelativeLayout getRoot() {
        return this.f56281e;
    }
}
