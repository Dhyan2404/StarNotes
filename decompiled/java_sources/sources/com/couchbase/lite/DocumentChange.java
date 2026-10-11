package com.couchbase.lite;

import androidx.annotation.NonNull;

/* loaded from: classes4.dex */
public final class DocumentChange {

    @NonNull
    private final Collection collection;

    @NonNull
    private final String documentID;

    public DocumentChange(@NonNull Collection collection, @NonNull String str) {
        this.collection = collection;
        this.documentID = str;
    }

    @NonNull
    public Collection getCollection() {
        return this.collection;
    }

    @NonNull
    @Deprecated
    public Database getDatabase() {
        return this.collection.getDatabase();
    }

    @NonNull
    public String getDocumentID() {
        return this.documentID;
    }

    @NonNull
    public String toString() {
        return "DocumentChange{" + this.collection + ", " + this.documentID + "}";
    }
}
