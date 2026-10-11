package com.onyx.galaxy.note.category.action;

import com.onyx.android.sdk.replicator.note.p035db.model.SyncTagModel;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61529k = 3, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes9.dex */
public /* synthetic */ class EditTagForNoteAction$showDialog$editTagForNoteDialog$1 extends FunctionReferenceImpl implements Function1<List<? extends SyncTagModel>, Unit> {
    public EditTagForNoteAction$showDialog$editTagForNoteDialog$1(Object obj) {
        super(1, obj, EditTagForNoteAction.class, "onCreateTag", "onCreateTag(Ljava/util/List;)V", 0);
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(List<? extends SyncTagModel> list) {
        invoke2(list);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2(@NotNull List<? extends SyncTagModel> p0) {
        Intrinsics.checkNotNullParameter(p0, "p0");
        ((EditTagForNoteAction) this.receiver).m42288n(p0);
    }
}
