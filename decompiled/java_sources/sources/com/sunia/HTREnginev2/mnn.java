package com.sunia.HTREnginev2;

import com.google.android.datatransport.Encoding;
import com.google.android.datatransport.Transformer;
import com.google.android.datatransport.Transport;
import com.google.android.datatransport.TransportFactory;
import com.google.android.datatransport.runtime.C4634e;
import com.google.android.datatransport.runtime.TransportContext;
import java.util.Set;

/* loaded from: classes4.dex */
public final class mnn implements TransportFactory {

    /* renamed from: a */
    public final Set<Encoding> f77812a;

    /* renamed from: b */
    public final TransportContext f77813b;

    /* renamed from: c */
    public final onn f77814c;

    public mnn(Set<Encoding> set, TransportContext transportContext, onn onnVar) {
        this.f77812a = set;
        this.f77813b = transportContext;
        this.f77814c = onnVar;
    }

    @Override // com.google.android.datatransport.TransportFactory
    public <T> Transport<T> getTransport(String str, Class<T> cls, Transformer<T, byte[]> transformer) {
        return getTransport(str, cls, Encoding.m17394of("proto"), transformer);
    }

    @Override // com.google.android.datatransport.TransportFactory
    public <T> Transport<T> getTransport(String str, Class<T> cls, Encoding encoding, Transformer<T, byte[]> transformer) {
        if (this.f77812a.contains(encoding)) {
            return new C4634e(this.f77813b, str, encoding, transformer, this.f77814c);
        }
        throw new IllegalArgumentException(String.format("%s is not supported byt this factory. Supported encodings are: %s.", encoding, this.f77812a));
    }
}
