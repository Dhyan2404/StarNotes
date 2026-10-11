package androidx.room;

import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61529k = 3, m61530mv = {1, 7, 1}, m61532xi = 48)
@DebugMetadata(m61542c = "androidx.room.RoomDatabaseKt", m61543f = "RoomDatabaseExt.kt", m61544i = {0, 0}, m61545l = {100}, m61546m = "createTransactionContext", m61547n = {"$this$createTransactionContext", "controlJob"}, m61548s = {"L$0", "L$1"})
/* loaded from: classes3.dex */
public final class RoomDatabaseKt$createTransactionContext$1 extends ContinuationImpl {
    Object L$0;
    Object L$1;
    int label;
    /* synthetic */ Object result;

    public RoomDatabaseKt$createTransactionContext$1(Continuation<? super RoomDatabaseKt$createTransactionContext$1> continuation) {
        super(continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object m6347b;
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        m6347b = RoomDatabaseKt.m6347b(null, this);
        return m6347b;
    }
}
