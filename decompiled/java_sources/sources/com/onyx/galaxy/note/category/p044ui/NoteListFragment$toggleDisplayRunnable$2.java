package com.onyx.galaxy.note.category.p044ui;

import com.onyx.galaxy.note.category.data.NoteDisplayType;
import com.onyx.galaxy.note.category.view.adapter.NotePageListAdapter;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, m61528d2 = {"<anonymous>", "Ljava/lang/Runnable;", "invoke"}, m61529k = 3, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes9.dex */
public final class NoteListFragment$toggleDisplayRunnable$2 extends Lambda implements Function0<Runnable> {
    final /* synthetic */ NoteListFragment this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NoteListFragment$toggleDisplayRunnable$2(NoteListFragment noteListFragment) {
        super(0);
        this.this$0 = noteListFragment;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void invoke$lambda$0(NoteListFragment this$0) {
        NotePageListAdapter m43328Q0;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        m43328Q0 = this$0.m43328Q0();
        NoteDisplayType value = this$0.m43337V0().getDisplayType().getValue();
        Intrinsics.checkNotNull(value);
        m43328Q0.setDisplayType(value.getType());
        this$0.m43361w0(true);
        this$0.m43302A0();
        this$0.m43338V1();
    }

    @Override // kotlin.jvm.functions.Function0
    @NotNull
    public final Runnable invoke() {
        final NoteListFragment noteListFragment = this.this$0;
        return new Runnable() { // from class: com.onyx.galaxy.note.category.ui.m
            @Override // java.lang.Runnable
            public final void run() {
                NoteListFragment$toggleDisplayRunnable$2.invoke$lambda$0(NoteListFragment.this);
            }
        };
    }
}
