package com.onyx.galaxy.note.category.p044ui;

import android.view.View;
import android.view.ViewGroup;
import androidx.transition.TransitionManager;
import com.google.android.material.transition.MaterialFade;
import com.onyx.galaxy.note.p048ui.view.ShadowLayout;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, m61528d2 = {"<anonymous>", "Ljava/lang/Runnable;", "invoke"}, m61529k = 3, m61530mv = {1, 9, 0}, m61532xi = 48)
@SourceDebugExtension({"SMAP\nNoteListFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NoteListFragment.kt\ncom/onyx/galaxy/note/category/ui/NoteListFragment$hideGoTopRunnable$2\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,1546:1\n256#2,2:1547\n*S KotlinDebug\n*F\n+ 1 NoteListFragment.kt\ncom/onyx/galaxy/note/category/ui/NoteListFragment$hideGoTopRunnable$2\n*L\n232#1:1547,2\n*E\n"})
/* loaded from: classes9.dex */
public final class NoteListFragment$hideGoTopRunnable$2 extends Lambda implements Function0<Runnable> {
    final /* synthetic */ NoteListFragment this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NoteListFragment$hideGoTopRunnable$2(NoteListFragment noteListFragment) {
        super(0);
        this.this$0 = noteListFragment;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void invoke$lambda$0(NoteListFragment this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        View root = this$0.m43313I0().getRoot();
        Intrinsics.checkNotNull(root, "null cannot be cast to non-null type android.view.ViewGroup");
        TransitionManager.beginDelayedTransition((ViewGroup) root, new MaterialFade());
        ShadowLayout slGoTop = this$0.m43313I0().slGoTop;
        Intrinsics.checkNotNullExpressionValue(slGoTop, "slGoTop");
        slGoTop.setVisibility(8);
    }

    @Override // kotlin.jvm.functions.Function0
    @NotNull
    public final Runnable invoke() {
        final NoteListFragment noteListFragment = this.this$0;
        return new Runnable() { // from class: com.onyx.galaxy.note.category.ui.l
            @Override // java.lang.Runnable
            public final void run() {
                NoteListFragment$hideGoTopRunnable$2.invoke$lambda$0(NoteListFragment.this);
            }
        };
    }
}
