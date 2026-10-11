package com.onyx.galaxy.note.category.p044ui;

import com.onyx.android.sdk.replicator.note.p035db.model.SyncNoteModel;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61529k = 3, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes9.dex */
public /* synthetic */ class NoteListFragment$showDustBinOpPopup$2 extends FunctionReferenceImpl implements Function1<SyncNoteModel, Unit> {
    public NoteListFragment$showDustBinOpPopup$2(Object obj) {
        super(1, obj, NoteListFragment.class, "handleDustBinRestore", "handleDustBinRestore(Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)V", 0);
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(SyncNoteModel syncNoteModel) {
        invoke2(syncNoteModel);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2(@NotNull SyncNoteModel p0) {
        Intrinsics.checkNotNullParameter(p0, "p0");
        ((NoteListFragment) this.receiver).m43344c1(p0);
    }
}
