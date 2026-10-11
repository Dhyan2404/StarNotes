package androidx.room;

import com.liulishuo.okdownload.core.breakpoint.BreakpointSQLiteHelper;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61529k = 3, m61530mv = {1, 7, 1}, m61532xi = 48)
@DebugMetadata(m61542c = "androidx.room.RoomDatabaseKt", m61543f = "RoomDatabaseExt.kt", m61544i = {0, 0}, m61545l = {51, 52}, m61546m = "withTransaction", m61547n = {"$this$withTransaction", BreakpointSQLiteHelper.f39283i}, m61548s = {"L$0", "L$1"})
/* loaded from: classes3.dex */
public final class RoomDatabaseKt$withTransaction$1<R> extends ContinuationImpl {
    Object L$0;
    Object L$1;
    int label;
    /* synthetic */ Object result;

    public RoomDatabaseKt$withTransaction$1(Continuation<? super RoomDatabaseKt$withTransaction$1> continuation) {
        super(continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return RoomDatabaseKt.withTransaction(null, null, this);
    }
}
