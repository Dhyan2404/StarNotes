package com.couchbase.lite.internal.core;

import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.couchbase.lite.CouchbaseLiteError;
import com.couchbase.lite.LogDomain;
import com.couchbase.lite.internal.CouchbaseLiteInternal;
import com.couchbase.lite.internal.logging.Log;
import com.couchbase.lite.internal.utils.InterfaceC2217Fn;
import com.couchbase.lite.internal.utils.Preconditions;
import com.onyx.android.sdk.data.account.bean.DevicePushAction;

/* loaded from: classes4.dex */
public abstract class C4NativePeer implements AutoCloseable {
    private volatile Exception history;

    @GuardedBy("getPeerLock()")
    private volatile boolean open;

    @GuardedBy("getPeerLock()")
    private final long peer;

    public C4NativePeer(@Nullable Long l) {
        this(((Long) Preconditions.assertNotNull(l, "peer handle")).longValue());
    }

    private void logBadCall() {
        logCall(LogDomain.DATABASE, "Operation on closed native peer");
    }

    private void logCall(@NonNull LogDomain logDomain, @NonNull String str) {
        if (CouchbaseLiteInternal.debugging()) {
            Log.m9898d(logDomain, "%s@0x%x: " + str, new Exception("At: ", this.history), getClass().getSimpleName(), Long.valueOf(this.peer));
        }
    }

    @GuardedBy(DevicePushAction.LOCK_DEVICE)
    private long releasePeerLocked() {
        boolean z = this.open;
        this.open = false;
        if (z) {
            return this.peer;
        }
        return 0L;
    }

    private void updateHistory(long j, @NonNull String str) {
        if (j == 0 || !CouchbaseLiteInternal.debugging()) {
            return;
        }
        this.history = new Exception(str, this.history);
    }

    public final long getPeer() {
        synchronized (getPeerLock()) {
            if (this.open) {
                return this.peer;
            }
            logBadCall();
            throw new CouchbaseLiteError("Operation on closed peer");
        }
    }

    @NonNull
    public final Object getPeerLock() {
        return this;
    }

    @NonNull
    public final <R> R nonNullWithPeerOrThrow(@NonNull InterfaceC2217Fn.NonNullFunction<Long, R> nonNullFunction) {
        synchronized (getPeerLock()) {
            if (this.open) {
                return nonNullFunction.apply(Long.valueOf(this.peer));
            }
            logBadCall();
            throw new CouchbaseLiteError("Closed peer");
        }
    }

    @Nullable
    public final <R, E extends Exception> R nullableWithPeerOrThrow(@NonNull InterfaceC2217Fn.NullableFunctionThrows<Long, R, E> nullableFunctionThrows) throws Exception {
        synchronized (getPeerLock()) {
            if (this.open) {
                return nullableFunctionThrows.apply(Long.valueOf(this.peer));
            }
            logBadCall();
            throw new CouchbaseLiteError("Closed peer");
        }
    }

    public final <E extends Exception> void releasePeer(@Nullable LogDomain logDomain, @Nullable InterfaceC2217Fn.ConsumerThrows<Long, E> consumerThrows) throws Exception {
        long releasePeer = releasePeer(consumerThrows);
        if (CouchbaseLiteInternal.debugging()) {
            if (logDomain == null) {
                if (releasePeer == 0) {
                    logBadCall();
                }
            } else if (releasePeer != 0) {
                logCall(logDomain, "Expected this peer to have been closed previously");
            }
            updateHistory(releasePeer, "Released at:");
        }
    }

    @NonNull
    public String toString() {
        return "@x" + Long.toHexString(this.peer);
    }

    public final <E extends Exception> void voidWithPeerOrThrow(@NonNull InterfaceC2217Fn.ConsumerThrows<Long, E> consumerThrows) throws Exception {
        synchronized (getPeerLock()) {
            if (this.open) {
                consumerThrows.accept(Long.valueOf(this.peer));
            } else {
                logBadCall();
                throw new CouchbaseLiteError("Closed peer");
            }
        }
    }

    public final <E extends Exception> void withPeer(@NonNull InterfaceC2217Fn.ConsumerThrows<Long, E> consumerThrows) throws Exception {
        synchronized (getPeerLock()) {
            if (this.open) {
                consumerThrows.accept(Long.valueOf(this.peer));
            } else {
                logBadCall();
            }
        }
    }

    @NonNull
    public final <R, E extends Exception> R withPeerOrDefault(@NonNull R r, @NonNull InterfaceC2217Fn.NullableFunctionThrows<Long, R, E> nullableFunctionThrows) throws Exception {
        synchronized (getPeerLock()) {
            if (!this.open) {
                logBadCall();
                return r;
            }
            R apply = nullableFunctionThrows.apply(Long.valueOf(this.peer));
            if (apply != null) {
                r = apply;
            }
            return r;
        }
    }

    @Nullable
    public final <R, E extends Exception> R withPeerOrNull(@NonNull InterfaceC2217Fn.NullableFunctionThrows<Long, R, E> nullableFunctionThrows) throws Exception {
        synchronized (getPeerLock()) {
            if (this.open) {
                return nullableFunctionThrows.apply(Long.valueOf(this.peer));
            }
            logBadCall();
            return null;
        }
    }

    @NonNull
    public final <R, E extends Exception> R withPeerOrThrow(@NonNull InterfaceC2217Fn.NonNullFunctionThrows<Long, R, E> nonNullFunctionThrows) throws Exception {
        synchronized (getPeerLock()) {
            if (this.open) {
                return nonNullFunctionThrows.apply(Long.valueOf(this.peer));
            }
            logBadCall();
            throw new CouchbaseLiteError("Closed peer");
        }
    }

    public C4NativePeer(long j) {
        this.open = true;
        this.peer = Preconditions.assertNotZero(j, "peer handle");
        updateHistory(j, "Created at:");
    }

    private <E extends Exception> long releasePeer(@Nullable InterfaceC2217Fn.ConsumerThrows<Long, E> consumerThrows) throws Exception {
        long releasePeerLocked;
        synchronized (getPeerLock()) {
            releasePeerLocked = releasePeerLocked();
            if (releasePeerLocked != 0 && consumerThrows != null) {
                consumerThrows.accept(Long.valueOf(releasePeerLocked));
            }
        }
        return releasePeerLocked;
    }
}
