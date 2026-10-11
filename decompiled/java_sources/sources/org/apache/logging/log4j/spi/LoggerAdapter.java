package org.apache.logging.log4j.spi;

import java.io.Closeable;

/* loaded from: classes12.dex */
public interface LoggerAdapter<L> extends Closeable {
    L getLogger(String name);
}
