package com.fasterxml.uuid;

import java.io.IOException;

/* loaded from: classes4.dex */
public abstract class TimestampSynchronizer {
    public abstract void deactivate() throws IOException;

    public abstract long initialize() throws IOException;

    public abstract long update(long j) throws IOException;
}
