package com.couchbase.lite;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.couchbase.lite.internal.core.C4Constants;
import java.util.EnumSet;

/* loaded from: classes4.dex */
public final class ReplicatedDocument {

    @NonNull
    private final String docId;

    @Nullable
    private volatile CouchbaseLiteException error;

    @NonNull
    private final EnumSet<DocumentFlag> flags;

    @NonNull
    private final String name;

    @NonNull
    private final String scope;

    public ReplicatedDocument(@NonNull String str, @NonNull String str2, @NonNull String str3, int i, @Nullable CouchbaseLiteException couchbaseLiteException) {
        this.scope = str;
        this.name = str2;
        this.docId = str3;
        this.error = couchbaseLiteException;
        EnumSet<DocumentFlag> noneOf = EnumSet.noneOf(DocumentFlag.class);
        this.flags = noneOf;
        if (C4Constants.hasFlags(i, 1)) {
            noneOf.add(DocumentFlag.DELETED);
        }
        if (C4Constants.hasFlags(i, 128)) {
            noneOf.add(DocumentFlag.ACCESS_REMOVED);
        }
    }

    @NonNull
    public String getCollection() {
        return this.name;
    }

    @NonNull
    @Deprecated
    public String getCollectionName() {
        return this.name;
    }

    @NonNull
    @Deprecated
    public String getCollectionScope() {
        return this.scope;
    }

    @Nullable
    public CouchbaseLiteException getError() {
        return this.error;
    }

    @NonNull
    public EnumSet<DocumentFlag> getFlags() {
        return this.flags;
    }

    @NonNull
    public String getID() {
        return this.docId;
    }

    @NonNull
    public String getScope() {
        return this.scope;
    }

    public void setError(@Nullable CouchbaseLiteException couchbaseLiteException) {
        this.error = couchbaseLiteException;
    }

    @NonNull
    public String toString() {
        return "ReplicatedDocument{@" + this.docId + ", " + this.error + "}";
    }
}
