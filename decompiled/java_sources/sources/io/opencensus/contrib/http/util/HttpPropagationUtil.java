package io.opencensus.contrib.http.util;

import com.sunia.HTREnginev2.fwd;
import io.opencensus.trace.propagation.TextFormat;

/* loaded from: classes10.dex */
public class HttpPropagationUtil {
    public static TextFormat getCloudTraceFormat() {
        return new fwd();
    }
}
