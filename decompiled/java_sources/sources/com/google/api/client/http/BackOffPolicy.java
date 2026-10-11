package com.google.api.client.http;

import com.google.api.client.util.Beta;
import java.io.IOException;

@Beta
@Deprecated
/* loaded from: classes6.dex */
public interface BackOffPolicy {
    public static final long STOP = -1;

    long getNextBackOffMillis() throws IOException;

    boolean isBackOffRequired(int i);

    void reset();
}
