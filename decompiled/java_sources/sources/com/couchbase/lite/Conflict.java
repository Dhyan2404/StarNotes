package com.couchbase.lite;

import androidx.annotation.Nullable;

/* loaded from: classes4.dex */
public class Conflict {

    @Nullable
    private final Document localDoc;

    @Nullable
    private final Document remoteDoc;

    public Conflict(@Nullable Document document, @Nullable Document document2) {
        this.localDoc = document;
        this.remoteDoc = document2;
    }

    @Nullable
    public String getDocumentId() {
        Document document = this.localDoc;
        if (document != null) {
            return document.getId();
        }
        Document document2 = this.remoteDoc;
        if (document2 != null) {
            return document2.getId();
        }
        return null;
    }

    @Nullable
    public Document getLocalDocument() {
        return this.localDoc;
    }

    @Nullable
    public Document getRemoteDocument() {
        return this.remoteDoc;
    }
}
