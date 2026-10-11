package org.apache.commons.io.function;

import java.io.IOException;

@FunctionalInterface
/* loaded from: classes12.dex */
public interface IOSupplier<T> {
    T get() throws IOException;
}
