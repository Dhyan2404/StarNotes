package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Guideline;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.onyx.android.sdk.theme.widgets.TintConstraintLayout;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintRelativeLayout;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.editor.view.FunctionToolLayout;
import com.onyx.galaxy.note.editor.view.InputTextToolLayout;
import com.onyx.galaxy.note.editor.view.NoteOutlineDragContainer;
import com.onyx.galaxy.note.editor.view.NoteTabLayout;
import com.onyx.galaxy.note.editor.view.toolbar.ShapeAndToolContainer;

/* loaded from: classes9.dex */
public final class FragmentNoteScribbleBinding implements ViewBinding {

    @NonNull
    public final TintConstraintLayout clTitleBarContainer;

    /* renamed from: e */
    @NonNull
    public final ConstraintLayout f56775e;

    @NonNull
    public final LinearLayout editTitleLayout;

    @NonNull
    public final TintRelativeLayout editorContainer;

    @NonNull
    public final FunctionToolLayout funcLayout;

    @NonNull
    public final View guideViewTab;

    @NonNull
    public final Guideline guideline;

    @NonNull
    public final InputTextToolLayout inputTextLayout;

    @NonNull
    public final NoteOutlineDragContainer leftSideBarLayout;

    @NonNull
    public final NoteOutlineDragContainer rightSideBarLayout;

    @NonNull
    public final ShapeAndToolContainer shapeAndTool;

    @NonNull
    public final NoteTabLayout tabLayout;

    @NonNull
    public final TintImageView topBarGradientView;

    public FragmentNoteScribbleBinding(@NonNull ConstraintLayout constraintLayout, @NonNull TintConstraintLayout tintConstraintLayout, @NonNull LinearLayout linearLayout, @NonNull TintRelativeLayout tintRelativeLayout, @NonNull FunctionToolLayout functionToolLayout, @NonNull View view, @NonNull Guideline guideline, @NonNull InputTextToolLayout inputTextToolLayout, @NonNull NoteOutlineDragContainer noteOutlineDragContainer, @NonNull NoteOutlineDragContainer noteOutlineDragContainer2, @NonNull ShapeAndToolContainer shapeAndToolContainer, @NonNull NoteTabLayout noteTabLayout, @NonNull TintImageView tintImageView) {
        this.f56775e = constraintLayout;
        this.clTitleBarContainer = tintConstraintLayout;
        this.editTitleLayout = linearLayout;
        this.editorContainer = tintRelativeLayout;
        this.funcLayout = functionToolLayout;
        this.guideViewTab = view;
        this.guideline = guideline;
        this.inputTextLayout = inputTextToolLayout;
        this.leftSideBarLayout = noteOutlineDragContainer;
        this.rightSideBarLayout = noteOutlineDragContainer2;
        this.shapeAndTool = shapeAndToolContainer;
        this.tabLayout = noteTabLayout;
        this.topBarGradientView = tintImageView;
    }

    @NonNull
    public static FragmentNoteScribbleBinding bind(@NonNull View view) {
        View findChildViewById;
        int i = C10651R.id.cl_title_bar_container;
        TintConstraintLayout tintConstraintLayout = (TintConstraintLayout) ViewBindings.findChildViewById(view, i);
        if (tintConstraintLayout != null) {
            i = C10651R.id.edit_title_layout;
            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, i);
            if (linearLayout != null) {
                i = C10651R.id.editor_container;
                TintRelativeLayout tintRelativeLayout = (TintRelativeLayout) ViewBindings.findChildViewById(view, i);
                if (tintRelativeLayout != null) {
                    i = C10651R.id.func_layout;
                    FunctionToolLayout functionToolLayout = (FunctionToolLayout) ViewBindings.findChildViewById(view, i);
                    if (functionToolLayout != null && (findChildViewById = ViewBindings.findChildViewById(view, (i = C10651R.id.guide_view_tab))) != null) {
                        i = C10651R.id.guideline;
                        Guideline guideline = (Guideline) ViewBindings.findChildViewById(view, i);
                        if (guideline != null) {
                            i = C10651R.id.input_text_layout;
                            InputTextToolLayout inputTextToolLayout = (InputTextToolLayout) ViewBindings.findChildViewById(view, i);
                            if (inputTextToolLayout != null) {
                                i = C10651R.id.left_side_bar_layout;
                                NoteOutlineDragContainer noteOutlineDragContainer = (NoteOutlineDragContainer) ViewBindings.findChildViewById(view, i);
                                if (noteOutlineDragContainer != null) {
                                    i = C10651R.id.right_side_bar_layout;
                                    NoteOutlineDragContainer noteOutlineDragContainer2 = (NoteOutlineDragContainer) ViewBindings.findChildViewById(view, i);
                                    if (noteOutlineDragContainer2 != null) {
                                        i = C10651R.id.shape_and_tool;
                                        ShapeAndToolContainer shapeAndToolContainer = (ShapeAndToolContainer) ViewBindings.findChildViewById(view, i);
                                        if (shapeAndToolContainer != null) {
                                            i = C10651R.id.tab_layout;
                                            NoteTabLayout noteTabLayout = (NoteTabLayout) ViewBindings.findChildViewById(view, i);
                                            if (noteTabLayout != null) {
                                                i = C10651R.id.top_bar_gradient_view;
                                                TintImageView tintImageView = (TintImageView) ViewBindings.findChildViewById(view, i);
                                                if (tintImageView != null) {
                                                    return new FragmentNoteScribbleBinding((ConstraintLayout) view, tintConstraintLayout, linearLayout, tintRelativeLayout, functionToolLayout, findChildViewById, guideline, inputTextToolLayout, noteOutlineDragContainer, noteOutlineDragContainer2, shapeAndToolContainer, noteTabLayout, tintImageView);
                                                }
                                            }
                                        }
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
    public static FragmentNoteScribbleBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static FragmentNoteScribbleBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(C10651R.layout.fragment_note_scribble, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public ConstraintLayout getRoot() {
        return this.f56775e;
    }
}
