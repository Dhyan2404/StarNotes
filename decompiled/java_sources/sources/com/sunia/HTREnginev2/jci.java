package com.sunia.HTREnginev2;

import java.util.Objects;
import java.util.stream.BaseStream;
import onyx.org.apache.commons.io.function.IOBaseStream;

/* loaded from: classes11.dex */
public abstract class jci<T, S extends IOBaseStream<T, S, B>, B extends BaseStream<T, B>> implements IOBaseStream<T, S, B> {

    /* renamed from: e */
    public final B f74178e;

    public jci(B b) {
        Objects.requireNonNull(b, "delegate");
        this.f74178e = b;
    }

    @Override // onyx.org.apache.commons.io.function.IOBaseStream
    public B unwrap() {
        return this.f74178e;
    }
}
