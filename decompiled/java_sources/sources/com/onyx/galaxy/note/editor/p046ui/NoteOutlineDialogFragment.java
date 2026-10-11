package com.onyx.galaxy.note.editor.p046ui;

import android.app.Dialog;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import androidx.fragment.app.C1126e;
import androidx.fragment.app.DialogFragment;
import androidx.fragment.app.FragmentManager;
import com.blankj.utilcode.util.FragmentUtils;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.databinding.FragmentContainerBinding;
import com.onyx.galaxy.note.editor.p046ui.NoteOutlineDialogFragment;
import com.sagittarius.p050v6.C13086AB;
import com.sun.org.apache.bcel.internal.Constants;
import com.sunia.HTREnginev2.gon;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\b\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b \u0010!B!\b\u0016\u0012\u0006\u0010\u0019\u001a\u00020\u0016\u0012\u0006\u0010\"\u001a\u00020\u0016\u0012\u0006\u0010\u001f\u001a\u00020\u001c¢\u0006\u0004\b \u0010#J\u0012\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016J$\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\u00062\b\u0010\t\u001a\u0004\u0018\u00010\b2\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016J\b\u0010\f\u001a\u00020\u0004H\u0016J\b\u0010\r\u001a\u00020\u0004H\u0002R\u0016\u0010\u0011\u001a\u00020\u000e8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u000f\u0010\u0010R\u0016\u0010\u0015\u001a\u00020\u00128\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u0013\u0010\u0014R\u0018\u0010\u0019\u001a\u0004\u0018\u00010\u00168\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0017\u0010\u0018R\u0018\u0010\u001b\u001a\u0004\u0018\u00010\u00168\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001a\u0010\u0018R\u0016\u0010\u001f\u001a\u00020\u001c8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001d\u0010\u001e¨\u0006$"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/ui/NoteOutlineDialogFragment;", "Landroidx/fragment/app/DialogFragment;", "Landroid/os/Bundle;", C1126e.f7693h, "", "onCreate", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", gon.f71270W, "Landroid/view/View;", "onCreateView", "onStart", "s0", "Lcom/onyx/galaxy/note/databinding/FragmentContainerBinding;", "z1", "Lcom/onyx/galaxy/note/databinding/FragmentContainerBinding;", "binding", "Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;", "A1", "Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;", "fragment", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "B1", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", "C1", "docManagerBundle", "", "D1", "I", "switchPageIndex", Constants.CONSTRUCTOR_NAME, "()V", "docManagerHandler", "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/EditorBundle;I)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes17.dex */
public final class NoteOutlineDialogFragment extends DialogFragment {

    /* renamed from: A1, reason: from kotlin metadata */
    public NoteOutlineFragment fragment;

    /* renamed from: B1, reason: from kotlin metadata */
    @Nullable
    public EditorBundle editorBundle;

    /* renamed from: C1, reason: from kotlin metadata */
    @Nullable
    public EditorBundle docManagerBundle;

    /* renamed from: D1, reason: from kotlin metadata */
    public int switchPageIndex;

    /* renamed from: z1, reason: from kotlin metadata */
    public FragmentContainerBinding binding;

    public NoteOutlineDialogFragment() {
    }

    /* renamed from: t0 */
    public static final void m46821t0(NoteOutlineDialogFragment this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.dismissAllowingStateLoss();
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle savedInstanceState) {
        C13086AB.m52315v(-1426063284, this, savedInstanceState);
    }

    @Override // androidx.fragment.app.Fragment
    @NotNull
    public View onCreateView(@NotNull LayoutInflater inflater, @Nullable ViewGroup container, @Nullable Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        FragmentContainerBinding inflate = FragmentContainerBinding.inflate(getLayoutInflater(), container, false);
        Intrinsics.checkNotNullExpressionValue(inflate, "inflate(...)");
        this.binding = inflate;
        m46822s0();
        FragmentContainerBinding fragmentContainerBinding = this.binding;
        if (fragmentContainerBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentContainerBinding = null;
        }
        View root = fragmentContainerBinding.getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        return root;
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onStart() {
        Window window;
        super.onStart();
        Dialog dialog = getDialog();
        if (dialog == null || (window = dialog.getWindow()) == null) {
            return;
        }
        window.setLayout(-1, -1);
    }

    /* renamed from: s0 */
    public final void m46822s0() {
        FragmentContainerBinding fragmentContainerBinding = null;
        NoteOutlineFragment noteOutlineFragment = null;
        if (this.editorBundle == null || this.docManagerBundle == null) {
            FragmentContainerBinding fragmentContainerBinding2 = this.binding;
            if (fragmentContainerBinding2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
            } else {
                fragmentContainerBinding = fragmentContainerBinding2;
            }
            fragmentContainerBinding.getRoot().post(new Runnable() { // from class: com.sunia.HTREnginev2.zyj
                @Override // java.lang.Runnable
                public final void run() {
                    NoteOutlineDialogFragment.m46821t0(NoteOutlineDialogFragment.this);
                }
            });
            return;
        }
        NoteOutlineFragment noteOutlineFragment2 = new NoteOutlineFragment();
        noteOutlineFragment2.setFullScreen(true);
        EditorBundle editorBundle = this.editorBundle;
        Intrinsics.checkNotNull(editorBundle);
        noteOutlineFragment2.setEditBundle(editorBundle);
        EditorBundle editorBundle2 = this.docManagerBundle;
        Intrinsics.checkNotNull(editorBundle2);
        noteOutlineFragment2.setDocManagerBundle(editorBundle2);
        noteOutlineFragment2.setSwitchPageIndex(this.switchPageIndex);
        noteOutlineFragment2.setCloseAction(new Function0<Unit>() { // from class: com.onyx.galaxy.note.editor.ui.NoteOutlineDialogFragment$initView$2$1
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
                NoteOutlineFragment noteOutlineFragment3;
                noteOutlineFragment3 = NoteOutlineDialogFragment.this.fragment;
                if (noteOutlineFragment3 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("fragment");
                    noteOutlineFragment3 = null;
                }
                FragmentUtils.remove(noteOutlineFragment3);
                NoteOutlineDialogFragment.this.dismiss();
            }
        });
        this.fragment = noteOutlineFragment2;
        FragmentManager childFragmentManager = getChildFragmentManager();
        NoteOutlineFragment noteOutlineFragment3 = this.fragment;
        if (noteOutlineFragment3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("fragment");
        } else {
            noteOutlineFragment = noteOutlineFragment3;
        }
        FragmentUtils.replace(childFragmentManager, noteOutlineFragment, C10651R.id.container);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public NoteOutlineDialogFragment(@NotNull EditorBundle editorBundle, @NotNull EditorBundle docManagerHandler, int i) {
        this();
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(docManagerHandler, "docManagerHandler");
        this.editorBundle = editorBundle;
        this.docManagerBundle = docManagerHandler;
        this.switchPageIndex = i;
    }
}
