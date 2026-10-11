package net.p110sf.saxon.lib;

import java.net.URI;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.function.Predicate;
import net.p110sf.saxon.lib.ProtocolRestrictor;
import org.apache.commons.compress.archivers.ArchiveStreamFactory;

/* loaded from: classes11.dex */
public class ProtocolRestrictor {

    /* renamed from: a */
    public final Predicate<URI> f100538a;

    /* renamed from: b */
    public final String f100539b;

    public ProtocolRestrictor(String str) {
        Objects.requireNonNull(str);
        this.f100539b = str;
        String trim = str.trim();
        if (trim.equals("all")) {
            this.f100538a = new Predicate() { // from class: com.sunia.HTREnginev2.h9l
                @Override // java.util.function.Predicate
                public final boolean test(Object obj) {
                    boolean m63265e;
                    m63265e = ProtocolRestrictor.m63265e((URI) obj);
                    return m63265e;
                }
            };
            return;
        }
        final ArrayList arrayList = new ArrayList();
        for (final String str2 : trim.split(",\\s*")) {
            if (!str2.startsWith("jar:") || str2.length() <= 4) {
                arrayList.add(new Predicate() { // from class: com.sunia.HTREnginev2.j9l
                    @Override // java.util.function.Predicate
                    public final boolean test(Object obj) {
                        boolean m63267g;
                        m63267g = ProtocolRestrictor.m63267g(str2, (URI) obj);
                        return m63267g;
                    }
                });
            } else {
                final String lowerCase = str2.substring(4).toLowerCase();
                arrayList.add(new Predicate() { // from class: com.sunia.HTREnginev2.i9l
                    @Override // java.util.function.Predicate
                    public final boolean test(Object obj) {
                        boolean m63266f;
                        m63266f = ProtocolRestrictor.m63266f(lowerCase, (URI) obj);
                        return m63266f;
                    }
                });
            }
        }
        this.f100538a = new Predicate() { // from class: com.sunia.HTREnginev2.k9l
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                boolean m63268h;
                m63268h = ProtocolRestrictor.m63268h(arrayList, (URI) obj);
                return m63268h;
            }
        };
    }

    /* renamed from: e */
    public static /* synthetic */ boolean m63265e(URI uri) {
        return true;
    }

    /* renamed from: f */
    public static /* synthetic */ boolean m63266f(String str, URI uri) {
        return m63269i(uri).equals(ArchiveStreamFactory.JAR) && m63270j(uri).toLowerCase().startsWith(str);
    }

    /* renamed from: g */
    public static /* synthetic */ boolean m63267g(String str, URI uri) {
        return m63269i(uri).equals(str);
    }

    /* renamed from: h */
    public static /* synthetic */ boolean m63268h(List list, URI uri) {
        Iterator it2 = list.iterator();
        while (it2.hasNext()) {
            if (((Predicate) it2.next()).test(uri)) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: i */
    public static String m63269i(URI uri) {
        return uri.getScheme();
    }

    /* renamed from: j */
    public static String m63270j(URI uri) {
        return uri.getSchemeSpecificPart();
    }

    public boolean test(URI uri) {
        return this.f100538a.test(uri);
    }

    public String toString() {
        return this.f100539b;
    }
}
