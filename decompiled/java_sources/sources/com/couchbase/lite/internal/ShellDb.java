package com.couchbase.lite.internal;

import com.couchbase.lite.BaseDatabase;
import com.couchbase.lite.internal.core.C4Database;
import com.couchbase.lite.internal.utils.Preconditions;

/* loaded from: classes4.dex */
public class ShellDb extends BaseDatabase {
    public ShellDb(long j) {
        Preconditions.assertNotZero(j, "db handle");
        CouchbaseLiteInternal.requireInit("Cannot create database");
        setC4DatabaseLocked(C4Database.getUnmanagedDatabase(j));
    }
}
