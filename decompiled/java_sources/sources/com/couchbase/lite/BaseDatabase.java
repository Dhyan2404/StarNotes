package com.couchbase.lite;

import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.couchbase.lite.CBLError;
import com.couchbase.lite.internal.core.C4BlobStore;
import com.couchbase.lite.internal.core.C4Database;
import com.couchbase.lite.internal.utils.Preconditions;
import edu.umd.cs.findbugs.annotations.SuppressFBWarnings;

/* loaded from: classes4.dex */
public abstract class BaseDatabase {

    @Nullable
    @GuardedBy("dbLock")
    private C4Database c4Database;

    @NonNull
    private final Object dbLock = new Object();

    @Nullable
    @GuardedBy("dbLock")
    private String path;

    @GuardedBy("dbLock")
    public void assertOpenChecked() throws CouchbaseLiteException {
        if (!isOpenLocked()) {
            throw new CouchbaseLiteException(com.couchbase.lite.internal.logging.Log.lookupStandardMessage("DBClosedOrCollectionDeleted"), CBLError.Domain.CBLITE, 6);
        }
    }

    @GuardedBy("dbLock")
    public void assertOpenUnchecked() {
        if (!isOpenLocked()) {
            throw new CouchbaseLiteError(com.couchbase.lite.internal.logging.Log.lookupStandardMessage("DBClosedOrCollectionDeleted"));
        }
    }

    @NonNull
    public C4BlobStore getBlobStore() throws LiteCoreException {
        C4BlobStore blobStore;
        synchronized (getDbLock()) {
            blobStore = getOpenC4DbLocked().getBlobStore();
        }
        return blobStore;
    }

    @NonNull
    @GuardedBy("dbLock")
    public C4Database getC4DbOrThrowLocked() throws CouchbaseLiteException {
        assertOpenChecked();
        return (C4Database) Preconditions.assertNotNull(this.c4Database, "c4db");
    }

    @NonNull
    public Object getDbLock() {
        return this.dbLock;
    }

    @Nullable
    public String getDbPath() {
        String str;
        synchronized (getDbLock()) {
            str = this.path;
        }
        return str;
    }

    @NonNull
    @SuppressFBWarnings({"NP_NONNULL_RETURN_VIOLATION"})
    @VisibleForTesting
    public C4Database getOpenC4Database() {
        C4Database openC4DbLocked;
        synchronized (getDbLock()) {
            openC4DbLocked = getOpenC4DbLocked();
        }
        return openC4DbLocked;
    }

    @NonNull
    @GuardedBy("dbLock")
    public C4Database getOpenC4DbLocked() {
        assertOpenUnchecked();
        return (C4Database) Preconditions.assertNotNull(this.c4Database, "c4db");
    }

    public boolean isOpen() {
        boolean isOpenLocked;
        synchronized (this.dbLock) {
            isOpenLocked = isOpenLocked();
        }
        return isOpenLocked;
    }

    @GuardedBy("dbLock")
    public boolean isOpenLocked() {
        return this.c4Database != null;
    }

    @GuardedBy("dbLock")
    public void setC4DatabaseLocked(@Nullable C4Database c4Database) {
        this.c4Database = c4Database;
        if (c4Database != null) {
            this.path = c4Database.getDbPath();
        }
    }
}
