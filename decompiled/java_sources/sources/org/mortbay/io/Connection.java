package org.mortbay.io;

import java.io.IOException;

/* loaded from: classes13.dex */
public interface Connection {
    void handle() throws IOException;

    boolean isIdle();
}
