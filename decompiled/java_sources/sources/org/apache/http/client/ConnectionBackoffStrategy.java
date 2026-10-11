package org.apache.http.client;

import org.apache.http.HttpResponse;

/* loaded from: classes12.dex */
public interface ConnectionBackoffStrategy {
    boolean shouldBackoff(Throwable th);

    boolean shouldBackoff(HttpResponse httpResponse);
}
