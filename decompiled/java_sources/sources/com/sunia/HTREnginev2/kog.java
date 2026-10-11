package com.sunia.HTREnginev2;

import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.channels.BufferOverflow;
import kotlinx.coroutines.flow.CancellableFlow;
import kotlinx.coroutines.flow.CancellableFlowImpl;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.internal.ChannelFlowOperatorImpl;
import kotlinx.coroutines.flow.internal.FusibleFlow;
import org.jetbrains.annotations.NotNull;

/* loaded from: classes11.dex */
public final /* synthetic */ class kog {
    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Since 1.4.0, binary compatibility with earlier versions")
    /* renamed from: a */
    public static final /* synthetic */ Flow m55288a(Flow flow, int i) {
        Flow m55291d;
        m55291d = m55291d(flow, i, null, 2, null);
        return m55291d;
    }

    @NotNull
    /* renamed from: b */
    public static final <T> Flow<T> m55289b(@NotNull Flow<? extends T> flow, int i, @NotNull BufferOverflow bufferOverflow) {
        int i2;
        BufferOverflow bufferOverflow2;
        boolean z = true;
        if (!(i >= 0 || i == -2 || i == -1)) {
            throw new IllegalArgumentException(("Buffer size should be non-negative, BUFFERED, or CONFLATED, but was " + i).toString());
        }
        if (i == -1 && bufferOverflow != BufferOverflow.SUSPEND) {
            z = false;
        }
        if (!z) {
            throw new IllegalArgumentException("CONFLATED capacity cannot be used with non-default onBufferOverflow".toString());
        }
        if (i == -1) {
            bufferOverflow2 = BufferOverflow.DROP_OLDEST;
            i2 = 0;
        } else {
            i2 = i;
            bufferOverflow2 = bufferOverflow;
        }
        return flow instanceof FusibleFlow ? FusibleFlow.DefaultImpls.fuse$default((FusibleFlow) flow, null, i2, bufferOverflow2, 1, null) : new ChannelFlowOperatorImpl(flow, null, i2, bufferOverflow2, 2, null);
    }

    /* renamed from: c */
    public static /* synthetic */ Flow m55290c(Flow flow, int i, int i2, Object obj) {
        Flow m55288a;
        if ((i2 & 1) != 0) {
            i = -2;
        }
        m55288a = m55288a(flow, i);
        return m55288a;
    }

    /* renamed from: d */
    public static /* synthetic */ Flow m55291d(Flow flow, int i, BufferOverflow bufferOverflow, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = -2;
        }
        if ((i2 & 2) != 0) {
            bufferOverflow = BufferOverflow.SUSPEND;
        }
        return FlowKt.buffer(flow, i, bufferOverflow);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @NotNull
    /* renamed from: e */
    public static final <T> Flow<T> m55292e(@NotNull Flow<? extends T> flow) {
        return flow instanceof CancellableFlow ? flow : new CancellableFlowImpl(flow);
    }

    /* renamed from: f */
    public static final void m55293f(CoroutineContext coroutineContext) {
        if (coroutineContext.get(Job.INSTANCE) == null) {
            return;
        }
        throw new IllegalArgumentException(("Flow context cannot contain job in it. Had " + coroutineContext).toString());
    }

    @NotNull
    /* renamed from: g */
    public static final <T> Flow<T> m55294g(@NotNull Flow<? extends T> flow) {
        Flow<T> m55291d;
        m55291d = m55291d(flow, -1, null, 2, null);
        return m55291d;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @NotNull
    /* renamed from: h */
    public static final <T> Flow<T> m55295h(@NotNull Flow<? extends T> flow, @NotNull CoroutineContext coroutineContext) {
        m55293f(coroutineContext);
        return Intrinsics.areEqual(coroutineContext, EmptyCoroutineContext.INSTANCE) ? flow : flow instanceof FusibleFlow ? FusibleFlow.DefaultImpls.fuse$default((FusibleFlow) flow, coroutineContext, 0, null, 6, null) : new ChannelFlowOperatorImpl(flow, coroutineContext, 0, null, 12, null);
    }
}
