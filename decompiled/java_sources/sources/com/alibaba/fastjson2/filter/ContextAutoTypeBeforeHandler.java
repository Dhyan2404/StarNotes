package com.alibaba.fastjson2.filter;

import com.alibaba.fastjson2.JSON;
import com.alibaba.fastjson2.JSONReader;
import com.alibaba.fastjson2.util.Fnv;
import com.alibaba.fastjson2.util.TypeUtils;
import com.couchbase.lite.internal.BaseTLSIdentity;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.text.SimpleDateFormat;
import java.time.Instant;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.BitSet;
import java.util.Calendar;
import java.util.Collection;
import java.util.Collections;
import java.util.Currency;
import java.util.Date;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Hashtable;
import java.util.IdentityHashMap;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;
import java.util.TreeSet;
import java.util.UUID;
import java.util.WeakHashMap;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.ConcurrentSkipListMap;
import java.util.concurrent.ConcurrentSkipListSet;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicIntegerArray;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicLongArray;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes3.dex */
public class ContextAutoTypeBeforeHandler implements JSONReader.AutoTypeBeforeHandler {

    /* renamed from: d */
    public static final Class f12388d = Collections.unmodifiableSortedSet(new TreeSet()).getClass();

    /* renamed from: e */
    public static final Class f12389e = Collections.unmodifiableSet(Collections.emptySet()).getClass();

    /* renamed from: f */
    public static final Class f12390f = Collections.unmodifiableCollection(Collections.emptyList()).getClass();

    /* renamed from: a */
    public final long[] f12391a;

    /* renamed from: b */
    public final ConcurrentMap<Integer, ConcurrentHashMap<Long, Class>> f12392b;

    /* renamed from: c */
    public final Map<Long, Class> f12393c;

    public ContextAutoTypeBeforeHandler(Class... clsArr) {
        this(false, clsArr);
    }

    /* renamed from: o */
    public static String[] m7353o(Collection<Class> collection) {
        HashSet hashSet = new HashSet();
        for (Class cls : collection) {
            if (cls != null) {
                hashSet.add(TypeUtils.getTypeName(cls));
            }
        }
        return (String[]) hashSet.toArray(new String[hashSet.size()]);
    }

    @Override // com.alibaba.fastjson2.JSONReader.AutoTypeBeforeHandler
    public Class<?> apply(long j, Class<?> cls, long j2) {
        ClassLoader contextClassLoader = Thread.currentThread().getContextClassLoader();
        if (contextClassLoader != null && contextClassLoader != JSON.class.getClassLoader()) {
            ConcurrentHashMap<Long, Class> concurrentHashMap = this.f12392b.get(Integer.valueOf(System.identityHashCode(contextClassLoader)));
            if (concurrentHashMap != null) {
                return concurrentHashMap.get(Long.valueOf(j));
            }
        }
        return this.f12393c.get(Long.valueOf(j));
    }

    /* renamed from: p */
    public final Class m7354p(long j, Class cls) {
        ClassLoader contextClassLoader = Thread.currentThread().getContextClassLoader();
        if (contextClassLoader == null || contextClassLoader == JSON.class.getClassLoader()) {
            return this.f12393c.put(Long.valueOf(j), cls);
        }
        int identityHashCode = System.identityHashCode(contextClassLoader);
        ConcurrentHashMap<Long, Class> concurrentHashMap = this.f12392b.get(Integer.valueOf(identityHashCode));
        if (concurrentHashMap == null) {
            this.f12392b.put(Integer.valueOf(identityHashCode), new ConcurrentHashMap<>());
            concurrentHashMap = this.f12392b.get(Integer.valueOf(identityHashCode));
        }
        return concurrentHashMap.put(Long.valueOf(j), cls);
    }

    public ContextAutoTypeBeforeHandler(boolean z, Class... clsArr) {
        this(z, m7353o(Arrays.asList(clsArr)));
    }

    public ContextAutoTypeBeforeHandler(String... strArr) {
        this(false, strArr);
    }

    public ContextAutoTypeBeforeHandler(boolean z) {
        this(z, new String[0]);
    }

    public ContextAutoTypeBeforeHandler(boolean z, String... strArr) {
        this.f12392b = new ConcurrentHashMap();
        this.f12393c = new ConcurrentHashMap(16, 0.75f, 1);
        HashSet<String> hashSet = new HashSet();
        if (z) {
            Class[] clsArr = {Object.class, Byte.TYPE, Byte.class, Short.TYPE, Short.class, Integer.TYPE, Integer.class, Long.TYPE, Long.class, Float.TYPE, Float.class, Double.TYPE, Double.class, Number.class, BigInteger.class, BigDecimal.class, AtomicInteger.class, AtomicLong.class, AtomicBoolean.class, AtomicIntegerArray.class, AtomicLongArray.class, AtomicReference.class, Boolean.TYPE, Boolean.class, Character.TYPE, Character.class, String.class, UUID.class, Currency.class, BitSet.class, EnumSet.class, EnumSet.noneOf(TimeUnit.class).getClass(), Date.class, Calendar.class, LocalDate.class, LocalDateTime.class, Instant.class, SimpleDateFormat.class, DateTimeFormatter.class, TimeUnit.class, Set.class, HashSet.class, LinkedHashSet.class, TreeSet.class, List.class, ArrayList.class, LinkedList.class, ConcurrentLinkedQueue.class, ConcurrentSkipListSet.class, CopyOnWriteArrayList.class, Collections.emptyList().getClass(), Collections.emptyMap().getClass(), TypeUtils.CLASS_SINGLE_SET, TypeUtils.CLASS_SINGLE_LIST, f12390f, TypeUtils.CLASS_UNMODIFIABLE_LIST, f12389e, f12388d, Collections.unmodifiableMap(new HashMap()).getClass(), Collections.unmodifiableSortedMap(new TreeMap()).getClass(), Arrays.asList(new Object[0]).getClass(), Map.class, HashMap.class, Hashtable.class, TreeMap.class, LinkedHashMap.class, WeakHashMap.class, IdentityHashMap.class, ConcurrentMap.class, ConcurrentHashMap.class, ConcurrentSkipListMap.class, Exception.class, IllegalAccessError.class, IllegalAccessException.class, IllegalArgumentException.class, IllegalMonitorStateException.class, IllegalStateException.class, IllegalThreadStateException.class, IndexOutOfBoundsException.class, InstantiationError.class, InstantiationException.class, InternalError.class, InterruptedException.class, LinkageError.class, NegativeArraySizeException.class, NoClassDefFoundError.class, NoSuchFieldError.class, NoSuchFieldException.class, NoSuchMethodError.class, NoSuchMethodException.class, NullPointerException.class, NumberFormatException.class, OutOfMemoryError.class, RuntimeException.class, SecurityException.class, StackOverflowError.class, StringIndexOutOfBoundsException.class, TypeNotPresentException.class, VerifyError.class, StackTraceElement.class};
            for (int i = 0; i < 100; i++) {
                hashSet.add(TypeUtils.getTypeName(clsArr[i]));
            }
            hashSet.add("javax.validation.ValidationException");
            hashSet.add("javax.validation.NoProviderFoundException");
        }
        for (String str : strArr) {
            if (str != null && !str.isEmpty()) {
                Class mapping = TypeUtils.getMapping(str);
                hashSet.add(mapping != null ? TypeUtils.getTypeName(mapping) : str);
            }
        }
        int size = hashSet.size();
        long[] jArr = new long[size];
        int i2 = 0;
        for (String str2 : hashSet) {
            long j = Fnv.MAGIC_HASH_CODE;
            for (int i3 = 0; i3 < str2.length(); i3++) {
                char charAt = str2.charAt(i3);
                if (charAt == '$') {
                    charAt = '.';
                }
                j = (j ^ charAt) * Fnv.MAGIC_PRIME;
            }
            jArr[i2] = j;
            i2++;
        }
        jArr = i2 != size ? Arrays.copyOf(jArr, i2) : jArr;
        Arrays.sort(jArr);
        this.f12391a = jArr;
    }

    @Override // com.alibaba.fastjson2.JSONReader.AutoTypeBeforeHandler
    public Class<?> apply(String str, Class<?> cls, long j) {
        int i;
        Class<?> m7354p;
        String str2 = BaseTLSIdentity.CERT_ATTRIBUTE_ORGANIZATION.equals(str) ? "Object" : str;
        int length = str2.length();
        long j2 = Fnv.MAGIC_HASH_CODE;
        int i2 = 0;
        while (i2 < length) {
            char charAt = str2.charAt(i2);
            if (charAt == '$') {
                charAt = '.';
            }
            long j3 = (j2 ^ charAt) * Fnv.MAGIC_PRIME;
            if (Arrays.binarySearch(this.f12391a, j3) >= 0) {
                long hashCode64 = Fnv.hashCode64(str2);
                i = i2;
                Class<?> apply = apply(hashCode64, cls, j);
                if (apply == null && (apply = TypeUtils.loadClass(str2)) != null && (m7354p = m7354p(hashCode64, apply)) != null) {
                    apply = m7354p;
                }
                if (apply != null) {
                    return apply;
                }
            } else {
                i = i2;
            }
            i2 = i + 1;
            j2 = j3;
        }
        long hashCode642 = Fnv.hashCode64(str2);
        if (str2.length() > 0 && str2.charAt(0) == '[') {
            Class<?> apply2 = apply(hashCode642, cls, j);
            if (apply2 != null) {
                return apply2;
            }
            String substring = str2.substring(1);
            Class<?> componentType = cls != null ? cls.getComponentType() : null;
            Class<?> apply3 = apply(substring, componentType, j);
            if (apply3 != null) {
                Class<?> arrayClass = apply3 == componentType ? cls : TypeUtils.getArrayClass(apply3);
                Class<?> m7354p2 = m7354p(hashCode642, arrayClass);
                return m7354p2 != null ? m7354p2 : arrayClass;
            }
        }
        Class mapping = TypeUtils.getMapping(str2);
        if (mapping != null) {
            String typeName = TypeUtils.getTypeName(mapping);
            if (!str2.equals(typeName)) {
                Class<?> apply4 = apply(typeName, cls, j);
                if (apply4 != null) {
                    m7354p(hashCode642, apply4);
                }
                return apply4;
            }
        }
        return null;
    }
}
