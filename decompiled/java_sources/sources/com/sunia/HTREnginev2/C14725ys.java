package com.sunia.HTREnginev2;

import com.google.i18n.phonenumbers.MetadataLoader;
import com.google.i18n.phonenumbers.Phonemetadata;
import com.google.i18n.phonenumbers.metadata.init.MetadataParser;
import com.google.i18n.phonenumbers.metadata.source.MetadataBootstrappingGuard;
import com.sunia.HTREnginev2.mnj;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* renamed from: com.sunia.HTREnginev2.ys */
/* loaded from: classes6.dex */
public final class C14725ys<T extends mnj> implements MetadataBootstrappingGuard<T> {

    /* renamed from: a */
    public final MetadataLoader f91020a;

    /* renamed from: b */
    public final MetadataParser f91021b;

    /* renamed from: c */
    public final T f91022c;

    /* renamed from: d */
    public final Map<String, String> f91023d = new ConcurrentHashMap();

    public C14725ys(MetadataLoader metadataLoader, MetadataParser metadataParser, T t) {
        this.f91020a = metadataLoader;
        this.f91021b = metadataParser;
        this.f91022c = t;
    }

    /* renamed from: a */
    public final synchronized void m58482a(String str) {
        if (this.f91023d.containsKey(str)) {
            return;
        }
        Iterator<Phonemetadata.PhoneMetadata> it2 = m58483b(str).iterator();
        while (it2.hasNext()) {
            this.f91022c.mo55400a(it2.next());
        }
        this.f91023d.put(str, str);
    }

    /* renamed from: b */
    public final Collection<Phonemetadata.PhoneMetadata> m58483b(String str) {
        try {
            return this.f91021b.parse(this.f91020a.loadMetadata(str));
        } catch (IllegalArgumentException | IllegalStateException e) {
            throw new IllegalStateException("Failed to read file " + str, e);
        }
    }

    @Override // com.google.i18n.phonenumbers.metadata.source.MetadataBootstrappingGuard
    public T getOrBootstrap(String str) {
        if (!this.f91023d.containsKey(str)) {
            m58482a(str);
        }
        return this.f91022c;
    }
}
