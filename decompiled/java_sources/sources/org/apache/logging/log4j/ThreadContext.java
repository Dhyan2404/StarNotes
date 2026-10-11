package org.apache.logging.log4j;

import java.io.Serializable;
import java.util.AbstractCollection;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.NoSuchElementException;
import org.apache.logging.log4j.message.ParameterizedMessage;
import org.apache.logging.log4j.spi.CleanableThreadContextMap;
import org.apache.logging.log4j.spi.DefaultThreadContextMap;
import org.apache.logging.log4j.spi.DefaultThreadContextStack;
import org.apache.logging.log4j.spi.NoOpThreadContextMap;
import org.apache.logging.log4j.spi.ReadOnlyThreadContextMap;
import org.apache.logging.log4j.spi.ThreadContextMap;
import org.apache.logging.log4j.spi.ThreadContextMap2;
import org.apache.logging.log4j.spi.ThreadContextMapFactory;
import org.apache.logging.log4j.spi.ThreadContextStack;
import org.apache.logging.log4j.util.PropertiesUtil;

/* loaded from: classes12.dex */
public final class ThreadContext {
    public static final Map<String, String> EMPTY_MAP = Collections.emptyMap();
    public static final ThreadContextStack EMPTY_STACK = new EmptyThreadContextStack();

    /* renamed from: a */
    public static final String f111191a = "disableThreadContextMap";

    /* renamed from: b */
    public static final String f111192b = "disableThreadContextStack";

    /* renamed from: c */
    public static final String f111193c = "disableThreadContext";

    /* renamed from: d */
    public static boolean f111194d;

    /* renamed from: e */
    public static ThreadContextMap f111195e;

    /* renamed from: f */
    public static ThreadContextStack f111196f;

    /* renamed from: g */
    public static ReadOnlyThreadContextMap f111197g;

    /* loaded from: classes12.dex */
    public interface ContextStack extends Serializable, Collection<String> {
        List<String> asList();

        ContextStack copy();

        int getDepth();

        ContextStack getImmutableStackOrNull();

        String peek();

        String pop();

        void push(String message);

        void trim(int depth);
    }

    /* loaded from: classes12.dex */
    public static class EmptyThreadContextStack extends AbstractCollection<String> implements ThreadContextStack {
        private static final Iterator<String> EMPTY_ITERATOR = new C19396b();
        private static final long serialVersionUID = 1;

        private EmptyThreadContextStack() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean addAll(final Collection<? extends String> c) {
            throw new UnsupportedOperationException();
        }

        @Override // org.apache.logging.log4j.ThreadContext.ContextStack
        public List<String> asList() {
            return Collections.emptyList();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean containsAll(final Collection<?> c) {
            return false;
        }

        @Override // org.apache.logging.log4j.ThreadContext.ContextStack
        public ContextStack copy() {
            return this;
        }

        @Override // java.util.Collection
        public boolean equals(final Object o) {
            return (o instanceof Collection) && ((Collection) o).isEmpty();
        }

        @Override // org.apache.logging.log4j.ThreadContext.ContextStack
        public int getDepth() {
            return 0;
        }

        @Override // org.apache.logging.log4j.ThreadContext.ContextStack
        public ContextStack getImmutableStackOrNull() {
            return this;
        }

        @Override // java.util.Collection
        public int hashCode() {
            return 1;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public Iterator<String> iterator() {
            return EMPTY_ITERATOR;
        }

        @Override // org.apache.logging.log4j.ThreadContext.ContextStack
        public String peek() {
            return null;
        }

        @Override // org.apache.logging.log4j.ThreadContext.ContextStack
        public String pop() {
            return null;
        }

        @Override // org.apache.logging.log4j.ThreadContext.ContextStack
        public void push(final String message) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean removeAll(final Collection<?> c) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean retainAll(final Collection<?> c) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public int size() {
            return 0;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public <T> T[] toArray(final T[] a) {
            throw new UnsupportedOperationException();
        }

        @Override // org.apache.logging.log4j.ThreadContext.ContextStack
        public void trim(final int depth) {
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean add(final String e) {
            throw new UnsupportedOperationException();
        }
    }

    /* renamed from: org.apache.logging.log4j.ThreadContext$b */
    /* loaded from: classes12.dex */
    public static class C19396b<E> implements Iterator<E> {
        public C19396b() {
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return false;
        }

        @Override // java.util.Iterator
        public E next() {
            throw new NoSuchElementException("This is an empty iterator!");
        }

        @Override // java.util.Iterator
        public void remove() {
        }
    }

    static {
        m68619a();
    }

    /* renamed from: a */
    public static void m68619a() {
        ThreadContextMapFactory.init();
        f111195e = null;
        PropertiesUtil properties = PropertiesUtil.getProperties();
        boolean booleanProperty = properties.getBooleanProperty(f111193c);
        f111194d = (properties.getBooleanProperty(f111192b) || booleanProperty) ? false : true;
        boolean z = (properties.getBooleanProperty(f111191a) || booleanProperty) ? false : true;
        f111196f = new DefaultThreadContextStack(f111194d);
        if (z) {
            f111195e = ThreadContextMapFactory.createThreadContextMap();
        } else {
            f111195e = new NoOpThreadContextMap();
        }
        ThreadContextMap threadContextMap = f111195e;
        if (threadContextMap instanceof ReadOnlyThreadContextMap) {
            f111197g = (ReadOnlyThreadContextMap) threadContextMap;
        } else {
            f111197g = null;
        }
    }

    public static void clearAll() {
        clearMap();
        clearStack();
    }

    public static void clearMap() {
        f111195e.clear();
    }

    public static void clearStack() {
        f111196f.clear();
    }

    public static ContextStack cloneStack() {
        return f111196f.copy();
    }

    public static boolean containsKey(final String key) {
        return f111195e.containsKey(key);
    }

    public static String get(final String key) {
        return f111195e.get(key);
    }

    public static Map<String, String> getContext() {
        return f111195e.getCopy();
    }

    public static int getDepth() {
        return f111196f.getDepth();
    }

    public static Map<String, String> getImmutableContext() {
        Map<String, String> immutableMapOrNull = f111195e.getImmutableMapOrNull();
        return immutableMapOrNull == null ? EMPTY_MAP : immutableMapOrNull;
    }

    public static ContextStack getImmutableStack() {
        ContextStack immutableStackOrNull = f111196f.getImmutableStackOrNull();
        return immutableStackOrNull == null ? EMPTY_STACK : immutableStackOrNull;
    }

    public static ReadOnlyThreadContextMap getThreadContextMap() {
        return f111197g;
    }

    public static boolean isEmpty() {
        return f111195e.isEmpty();
    }

    public static String peek() {
        return f111196f.peek();
    }

    public static String pop() {
        return f111196f.pop();
    }

    public static void push(final String message) {
        f111196f.push(message);
    }

    public static void put(final String key, final String value) {
        f111195e.put(key, value);
    }

    public static void putAll(final Map<String, String> m) {
        ThreadContextMap threadContextMap = f111195e;
        if (threadContextMap instanceof ThreadContextMap2) {
            ((ThreadContextMap2) threadContextMap).putAll(m);
            return;
        }
        if (threadContextMap instanceof DefaultThreadContextMap) {
            ((DefaultThreadContextMap) threadContextMap).putAll(m);
            return;
        }
        for (Map.Entry<String, String> entry : m.entrySet()) {
            f111195e.put(entry.getKey(), entry.getValue());
        }
    }

    public static void putIfNull(final String key, final String value) {
        if (f111195e.containsKey(key)) {
            return;
        }
        f111195e.put(key, value);
    }

    public static void remove(final String key) {
        f111195e.remove(key);
    }

    public static void removeAll(final Iterable<String> keys) {
        ThreadContextMap threadContextMap = f111195e;
        if (threadContextMap instanceof CleanableThreadContextMap) {
            ((CleanableThreadContextMap) threadContextMap).removeAll(keys);
            return;
        }
        if (threadContextMap instanceof DefaultThreadContextMap) {
            ((DefaultThreadContextMap) threadContextMap).removeAll(keys);
            return;
        }
        Iterator<String> it2 = keys.iterator();
        while (it2.hasNext()) {
            f111195e.remove(it2.next());
        }
    }

    public static void removeStack() {
        f111196f.clear();
    }

    public static void setStack(final Collection<String> stack) {
        if (stack.isEmpty() || !f111194d) {
            return;
        }
        f111196f.clear();
        f111196f.addAll(stack);
    }

    public static void trim(final int depth) {
        f111196f.trim(depth);
    }

    public static void push(final String message, final Object... args) {
        f111196f.push(ParameterizedMessage.format(message, args));
    }
}
