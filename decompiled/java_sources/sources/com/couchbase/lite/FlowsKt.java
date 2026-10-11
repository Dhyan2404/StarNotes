package com.couchbase.lite;

import java.util.concurrent.Executor;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u0016\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a\u001c\u0010\u0000\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005¨\u0006\u0006"}, m61528d2 = {"messageEndpointChangeFlow", "Lkotlinx/coroutines/flow/Flow;", "Lcom/couchbase/lite/MessageEndpointListenerChange;", "Lcom/couchbase/lite/MessageEndpointListener;", "executor", "Ljava/util/concurrent/Executor;", "couchbase-lite-android-ee-ktx-3.2.2-21_release"}, m61529k = 2, m61530mv = {1, 8, 0}, m61532xi = 48)
/* loaded from: classes4.dex */
public final class FlowsKt {
    @NotNull
    public static final Flow<MessageEndpointListenerChange> messageEndpointChangeFlow(@NotNull MessageEndpointListener messageEndpointListener, @Nullable Executor executor) {
        Intrinsics.checkNotNullParameter(messageEndpointListener, "<this>");
        return FlowKt.callbackFlow(new FlowsKt$messageEndpointChangeFlow$1(messageEndpointListener, executor, null));
    }

    public static /* synthetic */ Flow messageEndpointChangeFlow$default(MessageEndpointListener messageEndpointListener, Executor executor, int i, Object obj) {
        if ((i & 1) != 0) {
            executor = null;
        }
        return messageEndpointChangeFlow(messageEndpointListener, executor);
    }
}
