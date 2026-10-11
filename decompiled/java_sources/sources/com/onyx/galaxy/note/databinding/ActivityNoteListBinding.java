package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.drawerlayout.widget.DrawerLayout;
import androidx.fragment.app.FragmentContainerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.category.view.SlideLayout;

/* loaded from: classes9.dex */
public final class ActivityNoteListBinding implements ViewBinding {

    @NonNull
    public final FragmentContainerView containerLeft;

    @NonNull
    public final FragmentContainerView containerRight;

    @NonNull
    public final DrawerLayout drawerLayout;

    @NonNull
    public final FragmentContainerView drawerMenu;

    /* renamed from: e */
    @NonNull
    public final DrawerLayout f56280e;

    @NonNull
    public final LayoutNoteQuotaWarningBinding noteQuotaBinding;

    @NonNull
    public final SlideLayout slideLayout;

    public ActivityNoteListBinding(@NonNull DrawerLayout drawerLayout, @NonNull FragmentContainerView fragmentContainerView, @NonNull FragmentContainerView fragmentContainerView2, @NonNull DrawerLayout drawerLayout2, @NonNull FragmentContainerView fragmentContainerView3, @NonNull LayoutNoteQuotaWarningBinding layoutNoteQuotaWarningBinding, @NonNull SlideLayout slideLayout) {
        this.f56280e = drawerLayout;
        this.containerLeft = fragmentContainerView;
        this.containerRight = fragmentContainerView2;
        this.drawerLayout = drawerLayout2;
        this.drawerMenu = fragmentContainerView3;
        this.noteQuotaBinding = layoutNoteQuotaWarningBinding;
        this.slideLayout = slideLayout;
    }

    @NonNull
    public static ActivityNoteListBinding bind(@NonNull View view) {
        View findChildViewById;
        int i = C10651R.id.container_left;
        FragmentContainerView fragmentContainerView = (FragmentContainerView) ViewBindings.findChildViewById(view, i);
        if (fragmentContainerView != null) {
            i = C10651R.id.container_right;
            FragmentContainerView fragmentContainerView2 = (FragmentContainerView) ViewBindings.findChildViewById(view, i);
            if (fragmentContainerView2 != null) {
                DrawerLayout drawerLayout = (DrawerLayout) view;
                i = C10651R.id.drawer_menu;
                FragmentContainerView fragmentContainerView3 = (FragmentContainerView) ViewBindings.findChildViewById(view, i);
                if (fragmentContainerView3 != null && (findChildViewById = ViewBindings.findChildViewById(view, (i = C10651R.id.noteQuotaBinding))) != null) {
                    LayoutNoteQuotaWarningBinding bind = LayoutNoteQuotaWarningBinding.bind(findChildViewById);
                    i = C10651R.id.slide_layout;
                    SlideLayout slideLayout = (SlideLayout) ViewBindings.findChildViewById(view, i);
                    if (slideLayout != null) {
                        return new ActivityNoteListBinding(drawerLayout, fragmentContainerView, fragmentContainerView2, drawerLayout, fragmentContainerView3, bind, slideLayout);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    @NonNull
    public static ActivityNoteListBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ActivityNoteListBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(C10651R.layout.activity_note_list, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public DrawerLayout getRoot() {
        return this.f56280e;
    }
}
