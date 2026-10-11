package com.couchbase.lite;

import androidx.annotation.Nullable;
import com.couchbase.lite.internal.DbContext;
import com.couchbase.lite.internal.core.C4Document;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public class DocContext extends DbContext {

    @Nullable
    private final C4Document c4Document;

    public DocContext(@Nullable Database database, @Nullable C4Document c4Document) {
        super(database);
        this.c4Document = c4Document;
    }

    @Nullable
    public C4Document getDocument() {
        return this.c4Document;
    }
}
