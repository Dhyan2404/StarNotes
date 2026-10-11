package com.couchbase.lite;

import java.lang.Exception;

@FunctionalInterface
/* loaded from: classes4.dex */
public interface UnitOfWork<E extends Exception> {
    void run() throws Exception;
}
