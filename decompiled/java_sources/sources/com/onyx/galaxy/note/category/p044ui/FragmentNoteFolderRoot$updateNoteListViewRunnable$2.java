package com.onyx.galaxy.note.category.p044ui;

import androidx.recyclerview.widget.RecyclerView;
import com.onyx.android.sdk.universal.editor.GlobalBundle;
import com.onyx.galaxy.note.category.event.ActiveNoteListAnimateFinishedEvent;
import com.onyx.galaxy.note.databinding.FragmentNoteFolderRootBinding;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, m61528d2 = {"<anonymous>", "Ljava/lang/Runnable;", "invoke"}, m61529k = 3, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes9.dex */
public final class FragmentNoteFolderRoot$updateNoteListViewRunnable$2 extends Lambda implements Function0<Runnable> {
    final /* synthetic */ FragmentNoteFolderRoot this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FragmentNoteFolderRoot$updateNoteListViewRunnable$2(FragmentNoteFolderRoot fragmentNoteFolderRoot) {
        super(0);
        this.this$0 = fragmentNoteFolderRoot;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void invoke$lambda$2(final FragmentNoteFolderRoot this$0) {
        FragmentNoteFolderRootBinding m43122z0;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        m43122z0 = this$0.m43122z0();
        RecyclerView.ItemAnimator itemAnimator = m43122z0.f56746rv.getItemAnimator();
        if (itemAnimator != null) {
            itemAnimator.isRunning(new RecyclerView.ItemAnimator.ItemAnimatorFinishedListener() { // from class: com.onyx.galaxy.note.category.ui.d
                @Override // androidx.recyclerview.widget.RecyclerView.ItemAnimator.ItemAnimatorFinishedListener
                public final void onAnimationsFinished() {
                    FragmentNoteFolderRoot$updateNoteListViewRunnable$2.invoke$lambda$2$lambda$1(FragmentNoteFolderRoot.this);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void invoke$lambda$2$lambda$1(FragmentNoteFolderRoot this$0) {
        FragmentNoteFolderRootBinding m43122z0;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        m43122z0 = this$0.m43122z0();
        m43122z0.f56746rv.postDelayed(new Runnable() { // from class: com.onyx.galaxy.note.category.ui.e
            @Override // java.lang.Runnable
            public final void run() {
                FragmentNoteFolderRoot$updateNoteListViewRunnable$2.invoke$lambda$2$lambda$1$lambda$0();
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
        final FragmentNoteFolderRoot fragmentNoteFolderRoot = this.this$0;
        return new Runnable() { // from class: com.onyx.galaxy.note.category.ui.f
            @Override // java.lang.Runnable
            public final void run() {
                FragmentNoteFolderRoot$updateNoteListViewRunnable$2.invoke$lambda$2(FragmentNoteFolderRoot.this);
            }
        };
    }
}
