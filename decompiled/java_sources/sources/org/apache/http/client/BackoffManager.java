package org.apache.http.client;

import org.apache.http.conn.routing.HttpRoute;

/* loaded from: classes12.dex */
public interface BackoffManager {
    void backOff(HttpRoute httpRoute);

    void probe(HttpRoute httpRoute);
}
