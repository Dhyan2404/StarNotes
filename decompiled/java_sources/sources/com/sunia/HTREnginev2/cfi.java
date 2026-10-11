package com.sunia.HTREnginev2;

import java.util.stream.Stream;
import onyx.org.apache.commons.io.function.IOStream;

/* loaded from: classes11.dex */
public final class cfi<T> extends jci<T, IOStream<T>, Stream<T>> implements IOStream<T> {
    public cfi(Stream<T> stream) {
        super(stream);
    }

    public static <T> IOStream<T> adapt(Stream<T> stream) {
        return stream != null ? new cfi(stream) : IOStream.empty();
    }

    @Override // onyx.org.apache.commons.io.function.IOBaseStream
    /* renamed from: f, reason: merged with bridge method [inline-methods] */
    public IOStream<T> wrap(Stream<T> stream) {
        return unwrap() == stream ? this : adapt(stream);
    }
}
