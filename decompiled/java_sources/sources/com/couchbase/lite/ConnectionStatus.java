package com.couchbase.lite;

import androidx.annotation.NonNull;

/* loaded from: classes4.dex */
public class ConnectionStatus {
    private final int activeConnections;
    private final int connections;

    public ConnectionStatus(int i, int i2) {
        this.connections = i;
        this.activeConnections = i2;
    }

    public int getActiveConnectionCount() {
        return this.activeConnections;
    }

    public int getConnectionCount() {
        return this.connections;
    }

    @NonNull
    public String toString() {
        return "ConnectionStatus{" + this.connections + ", " + this.activeConnections + "}";
    }
}
