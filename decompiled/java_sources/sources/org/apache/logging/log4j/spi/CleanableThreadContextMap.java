package org.apache.logging.log4j.spi;

/* loaded from: classes12.dex */
public interface CleanableThreadContextMap extends ThreadContextMap2 {
    void removeAll(final Iterable<String> keys);
}
