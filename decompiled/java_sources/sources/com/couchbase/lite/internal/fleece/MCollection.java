package com.couchbase.lite.internal.fleece;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.couchbase.lite.CouchbaseLiteError;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes4.dex */
public abstract class MCollection implements Encodable {

    @Nullable
    private final MContext context;
    private final AtomicInteger localMutations;
    private final boolean mutable;
    private final boolean mutableChildren;
    private final AtomicBoolean mutated;

    @Nullable
    private final MCollection parent;

    @Nullable
    private final MValue slot;

    public MCollection(@Nullable MContext mContext, boolean z) {
        this(null, null, mContext, z);
    }

    public void assertOpen() {
        MContext mContext = this.context;
        if (mContext != null && mContext.isClosed()) {
            throw new CouchbaseLiteError("Cannot use a Fleece object after its parent has been closed");
        }
    }

    @Nullable
    public final MContext getContext() {
        return this.context;
    }

    public final long getLocalMutationCount() {
        return this.localMutations.get();
    }

    @NonNull
    public final String getStateString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.mutable ? "+" : ".");
        sb.append(isMutated() ? "!" : ".");
        return sb.toString();
    }

    public final boolean hasMutableChildren() {
        return this.mutableChildren;
    }

    public final boolean isMutable() {
        return this.mutable;
    }

    public boolean isMutated() {
        return this.mutated.get();
    }

    public final void mutate() {
        mutate(true);
    }

    public MCollection(@NonNull MCollection mCollection, boolean z) {
        this(null, null, mCollection.getContext(), z);
    }

    public final void mutate(boolean z) {
        if (z) {
            this.localMutations.incrementAndGet();
        }
        if (this.mutated.getAndSet(true)) {
            return;
        }
        MValue mValue = this.slot;
        if (mValue != null) {
            mValue.mutate();
        }
        MCollection mCollection = this.parent;
        if (mCollection != null) {
            mCollection.mutate(false);
        }
    }

    public MCollection(@NonNull MValue mValue, @Nullable MCollection mCollection, boolean z) {
        this(mValue, mCollection, (mValue.getValue() == null || mCollection == null) ? null : mCollection.getContext(), z);
        if (mValue.isMutated()) {
            this.mutated.set(true);
        }
    }

    private MCollection(@Nullable MValue mValue, @Nullable MCollection mCollection, @Nullable MContext mContext, boolean z) {
        this.mutated = new AtomicBoolean();
        this.localMutations = new AtomicInteger();
        this.slot = mValue;
        this.context = mContext;
        this.parent = mCollection;
        this.mutable = z;
        this.mutableChildren = z;
    }
}
