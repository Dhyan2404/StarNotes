package com.couchbase.lite;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

/* loaded from: classes4.dex */
class DefaultConflictResolver implements ConflictResolver {
    @Override // com.couchbase.lite.ConflictResolver
    @Nullable
    public Document resolve(@NonNull Conflict conflict) {
        String revisionID;
        Document localDocument = conflict.getLocalDocument();
        Document remoteDocument = conflict.getRemoteDocument();
        if (localDocument == null || remoteDocument == null) {
            return null;
        }
        int compareAge = localDocument.compareAge(remoteDocument);
        if (compareAge > 0) {
            return localDocument;
        }
        if (compareAge < 0 || (revisionID = localDocument.getRevisionID()) == null) {
            return remoteDocument;
        }
        String revisionID2 = remoteDocument.getRevisionID();
        return (revisionID2 == null || revisionID.compareTo(revisionID2) <= 0) ? remoteDocument : localDocument;
    }
}
