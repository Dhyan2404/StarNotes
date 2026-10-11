package org.apache.logging.log4j.util;

import java.io.IOException;
import java.io.InputStream;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.ObjectStreamClass;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

/* loaded from: classes12.dex */
public class FilteredObjectInputStream extends ObjectInputStream {

    /* renamed from: f */
    public static final Set<String> f111265f = new HashSet(Arrays.asList("java.math.BigDecimal", "java.math.BigInteger", "java.rmi.MarshalledObject", "[B"));

    /* renamed from: g */
    public static final Set<String> f111266g = new HashSet(Arrays.asList("java.lang.", "java.time.", "java.util.", "org.apache.logging.log4j.", "[Lorg.apache.logging.log4j."));

    /* renamed from: e */
    public final Collection<String> f111267e;

    public FilteredObjectInputStream() throws IOException, SecurityException {
        this.f111267e = Collections.emptySet();
    }

    /* renamed from: f */
    public static boolean m68644f(final String name) {
        return m68645j(name) || f111265f.contains(name);
    }

    /* renamed from: j */
    public static boolean m68645j(final String name) {
        Iterator<String> it2 = f111266g.iterator();
        while (it2.hasNext()) {
            if (name.startsWith(it2.next())) {
                return true;
            }
        }
        return false;
    }

    public Collection<String> getAllowedClasses() {
        return this.f111267e;
    }

    @Override // java.io.ObjectInputStream
    public Class<?> resolveClass(final ObjectStreamClass desc) throws IOException, ClassNotFoundException {
        String name = desc.getName();
        if (m68644f(name) || this.f111267e.contains(name)) {
            return super.resolveClass(desc);
        }
        throw new InvalidObjectException("Class is not allowed for deserialization: " + name);
    }

    public FilteredObjectInputStream(final InputStream inputStream) throws IOException {
        super(inputStream);
        this.f111267e = Collections.emptySet();
    }

    public FilteredObjectInputStream(final Collection<String> allowedExtraClasses) throws IOException, SecurityException {
        this.f111267e = allowedExtraClasses;
    }

    public FilteredObjectInputStream(final InputStream inputStream, final Collection<String> allowedExtraClasses) throws IOException {
        super(inputStream);
        this.f111267e = allowedExtraClasses;
    }
}
