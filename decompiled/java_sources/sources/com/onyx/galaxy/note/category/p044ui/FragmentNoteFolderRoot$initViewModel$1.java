package com.onyx.galaxy.note.category.p044ui;

import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import com.onyx.galaxy.note.category.data.NoteDisplayType;
import com.onyx.galaxy.note.category.view.adapter.NoteListAdapter;
import com.onyx.galaxy.note.databinding.FragmentNoteFolderRootBinding;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

@Metadata(m61527d1 = {"\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n¢\u0006\u0002\b\u0005"}, m61528d2 = {"<anonymous>", "", "noteDisplayType", "Lcom/onyx/galaxy/note/category/data/NoteDisplayType;", "kotlin.jvm.PlatformType", "invoke"}, m61529k = 3, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes9.dex */
public final class FragmentNoteFolderRoot$initViewModel$1 extends Lambda implements Function1<NoteDisplayType, Unit> {
    final /* synthetic */ FragmentNoteFolderRoot this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FragmentNoteFolderRoot$initViewModel$1(FragmentNoteFolderRoot fragmentNoteFolderRoot) {
        super(1);
        this.this$0 = fragmentNoteFolderRoot;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void invoke$lambda$1(final FragmentNoteFolderRoot this$0, final NoteDisplayType noteDisplayType) {
        FragmentNoteFolderRootBinding m43122z0;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        m43122z0 = this$0.m43122z0();
        RecyclerView.ItemAnimator itemAnimator = m43122z0.f56746rv.getItemAnimator();
        if (itemAnimator != null) {
            itemAnimator.isRunning(new RecyclerView.ItemAnimator.ItemAnimatorFinishedListener() { // from class: com.onyx.galaxy.note.category.ui.b
                @Override // androidx.recyclerview.widget.RecyclerView.ItemAnimator.ItemAnimatorFinishedListener
                public final void onAnimationsFinished() {
                    FragmentNoteFolderRoot$initViewModel$1.invoke$lambda$1$lambda$0(FragmentNoteFolderRoot.this, noteDisplayType);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void invoke$lambda$1$lambda$0(FragmentNoteFolderRoot this$0, NoteDisplayType noteDisplayType) {
        NoteListAdapter m43091A0;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        m43091A0 = this$0.m43091A0();
        m43091A0.setDisplayType(noteDisplayType.getType());
        this$0.m43117q0(true);
        this$0.m43118t0();
        this$0.m43116b1();
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(NoteDisplayType noteDisplayType) {
        invoke2(noteDisplayType);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2(final NoteDisplayType noteDisplayType) {
        FragmentNoteFolderRootBinding m43122z0;
        this.this$0.showGoTopRowCount = 0;
        m43122z0 = this.this$0.m43122z0();
        View root = m43122z0.getRoot();
        final FragmentNoteFolderRoot fragmentNoteFolderRoot = this.this$0;
        root.post(new Runnable() { // from class: com.onyx.galaxy.note.category.ui.c
            @Override // java.lang.Runnable
            public final void run() {
                FragmentNoteFolderRoot$initViewModel$1.invoke$lambda$1(FragmentNoteFolderRoot.this, noteDisplayType);
            }
        });
    }
}
