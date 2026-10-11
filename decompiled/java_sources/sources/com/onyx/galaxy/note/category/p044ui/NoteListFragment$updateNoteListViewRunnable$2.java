package com.onyx.galaxy.note.category.p044ui;

import androidx.recyclerview.widget.RecyclerView;
import com.onyx.android.sdk.universal.editor.GlobalBundle;
import com.onyx.galaxy.note.category.event.ActiveNoteListAnimateFinishedEvent;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, m61528d2 = {"<anonymous>", "Ljava/lang/Runnable;", "invoke"}, m61529k = 3, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes9.dex */
public final class NoteListFragment$updateNoteListViewRunnable$2 extends Lambda implements Function0<Runnable> {
    final /* synthetic */ NoteListFragment this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NoteListFragment$updateNoteListViewRunnable$2(NoteListFragment noteListFragment) {
        super(0);
        this.this$0 = noteListFragment;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void invoke$lambda$2(final NoteListFragment this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        RecyclerView.ItemAnimator itemAnimator = this$0.m43313I0().f56750rv.getItemAnimator();
        if (itemAnimator != null) {
            itemAnimator.isRunning(new RecyclerView.ItemAnimator.ItemAnimatorFinishedListener() { // from class: com.onyx.galaxy.note.category.ui.q
                @Override // androidx.recyclerview.widget.RecyclerView.ItemAnimator.ItemAnimatorFinishedListener
                public final void onAnimationsFinished() {
                    NoteListFragment$updateNoteListViewRunnable$2.invoke$lambda$2$lambda$1(NoteListFragment.this);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void invoke$lambda$2$lambda$1(NoteListFragment this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m43313I0().f56750rv.postDelayed(new Runnable() { // from class: com.onyx.galaxy.note.category.ui.p
            @Override // java.lang.Runnable
            public final void run() {
                NoteListFragment$updateNoteListViewRunnable$2.invoke$lambda$2$lambda$1$lambda$0();
            }
        }, 750L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void invoke$lambda$2$lambda$1$lambda$0() {
        GlobalBundle.INSTANCE.postEvent(new ActiveNoteListAnimateFinishedEvent());
    }

    @Override // kotlin.jvm.functions.Function0
    @NotNull
    public final Runnable invoke() {
        final NoteListFragment noteListFragment = this.this$0;
        return new Runnable() { // from class: com.onyx.galaxy.note.category.ui.o
            @Override // java.lang.Runnable
            public final void run() {
                NoteListFragment$updateNoteListViewRunnable$2.invoke$lambda$2(NoteListFragment.this);
            }
        };
    }
}
