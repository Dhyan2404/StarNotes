package com.onyx.galaxy.note.category.p044ui;

import androidx.viewpager2.widget.ViewPager2;
import com.onyx.galaxy.note.category.viewmodel.NoteListViewModel;
import com.onyx.galaxy.note.databinding.FragmentNoteListViewPageBinding;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, m61528d2 = {"<anonymous>", "Ljava/lang/Runnable;", "invoke"}, m61529k = 3, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes9.dex */
public final class NoteListViewPageFragment$delayRunnable$2 extends Lambda implements Function0<Runnable> {
    final /* synthetic */ NoteListViewPageFragment this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NoteListViewPageFragment$delayRunnable$2(NoteListViewPageFragment noteListViewPageFragment) {
        super(0);
        this.this$0 = noteListViewPageFragment;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void invoke$lambda$0(NoteListViewPageFragment this$0) {
        FragmentNoteListViewPageBinding m43484n0;
        NoteListViewModel m43488r0;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        m43484n0 = this$0.m43484n0();
        ViewPager2 viewPager2 = m43484n0.viewPager;
        m43488r0 = this$0.m43488r0();
        viewPager2.setUserInputEnabled(Intrinsics.areEqual(m43488r0.isMulSelect().getValue(), Boolean.FALSE));
        this$0.m43483m0(true);
    }

    @Override // kotlin.jvm.functions.Function0
    @NotNull
    public final Runnable invoke() {
        final NoteListViewPageFragment noteListViewPageFragment = this.this$0;
        return new Runnable() { // from class: com.onyx.galaxy.note.category.ui.r
            @Override // java.lang.Runnable
            public final void run() {
                NoteListViewPageFragment$delayRunnable$2.invoke$lambda$0(NoteListViewPageFragment.this);
            }
        };
    }
}
