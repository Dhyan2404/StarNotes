package com.sunia.HTREnginev2;

import java.io.IOException;
import java.util.function.BiFunction;
import java.util.function.Consumer;
import java.util.stream.Stream;
import java.util.stream.StreamSupport;
import onyx.org.apache.commons.io.IOExceptionList;
import onyx.org.apache.commons.io.function.Erase;
import onyx.org.apache.commons.io.function.IOConsumer;
import onyx.org.apache.commons.io.function.IOStream;

/* loaded from: classes11.dex */
public final class ffi {

    /* renamed from: a */
    public static final Object f69964a = new Object();

    /* renamed from: c */
    public static <T> void m54099c(Stream<T> stream, IOConsumer<T> iOConsumer) throws IOExceptionList {
        m54100d(stream, iOConsumer, new BiFunction() { // from class: com.sunia.HTREnginev2.dfi
            @Override // java.util.function.BiFunction
            public final Object apply(Object obj, Object obj2) {
                IOException m54102f;
                m54102f = ffi.m54102f((Integer) obj, (IOException) obj2);
                return m54102f;
            }
        });
    }

    /* renamed from: d */
    public static <T> void m54100d(Stream<T> stream, IOConsumer<T> iOConsumer, BiFunction<Integer, IOException, IOException> biFunction) throws IOExceptionList {
        IOStream.adapt(stream).forAll(iOConsumer, new yci());
    }

    /* renamed from: e */
    public static <T> void m54101e(Stream<T> stream, IOConsumer<T> iOConsumer) throws IOException {
        final IOConsumer m54107k = m54107k(iOConsumer);
        m54105i(stream).forEach(new Consumer() { // from class: com.sunia.HTREnginev2.efi
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                Erase.m65265b(IOConsumer.this, obj);
            }
        });
    }

    /* renamed from: f */
    public static /* synthetic */ IOException m54102f(Integer num, IOException iOException) {
        return iOException;
    }

    /* renamed from: h */
    public static <T> Stream<T> m54104h(Iterable<T> iterable) {
        return iterable == null ? Stream.empty() : StreamSupport.stream(iterable.spliterator(), false);
    }

    /* renamed from: i */
    public static <T> Stream<T> m54105i(Stream<T> stream) {
        return stream == null ? Stream.empty() : stream;
    }

    @SafeVarargs
    /* renamed from: j */
    public static <T> Stream<T> m54106j(T... tArr) {
        return tArr == null ? Stream.empty() : Stream.of((Object[]) tArr);
    }

    /* renamed from: k */
    public static <T> IOConsumer<T> m54107k(IOConsumer<T> iOConsumer) {
        return iOConsumer != null ? iOConsumer : IOConsumer.noop();
    }
}
