package com.sunia.HTREnginev2;

import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Strings;
import com.google.common.collect.MapMaker;
import com.google.common.collect.Maps;
import com.google.common.collect.Sets;
import java.lang.reflect.Array;
import java.util.Arrays;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.logging.Level;
import java.util.logging.Logger;

@snf
@GwtCompatible(emulated = true)
/* loaded from: classes6.dex */
public final class k4l {

    /* renamed from: a */
    public static final Logger f75072a = Logger.getLogger(k4l.class.getName());

    /* renamed from: a */
    public static void m55162a() {
        if (!Boolean.parseBoolean(System.getProperty("guava.gwt.emergency_reenable_rpc", "false"))) {
            throw new UnsupportedOperationException(Strings.lenientFormat("We are removing GWT-RPC support for Guava types. You can temporarily reenable support by setting the system property %s to true. For more about system properties, see %s. For more about Guava's GWT-RPC support, see %s.", "guava.gwt.emergency_reenable_rpc", "https://stackoverflow.com/q/5189914/28465", "https://groups.google.com/d/msg/guava-announce/zHZTFg7YF3o/rQNnwdHeEwAJ"));
        }
        f75072a.log(Level.WARNING, "Later in 2020, we will remove GWT-RPC support for Guava types. You are seeing this warning because you are sending a Guava type over GWT-RPC, which will break. You can identify which type by looking at the class name in the attached stack trace.", new Throwable());
    }

    /* renamed from: b */
    public static <T> T[] m55163b(Object[] objArr, int i, int i2, T[] tArr) {
        return (T[]) Arrays.copyOfRange(objArr, i, i2, tArr.getClass());
    }

    /* renamed from: c */
    public static <T> T[] m55164c(T[] tArr, int i) {
        return (T[]) ((Object[]) Array.newInstance(tArr.getClass().getComponentType(), i));
    }

    /* renamed from: d */
    public static <E> Set<E> m55165d() {
        return ConcurrentHashMap.newKeySet();
    }

    /* renamed from: e */
    public static <K, V> Map<K, V> m55166e(int i) {
        return Maps.newHashMapWithExpectedSize(i);
    }

    /* renamed from: f */
    public static <E> Set<E> m55167f(int i) {
        return Sets.newHashSetWithExpectedSize(i);
    }

    /* renamed from: g */
    public static <K, V> Map<K, V> m55168g(int i) {
        return Maps.newLinkedHashMapWithExpectedSize(i);
    }

    /* renamed from: h */
    public static <E> Set<E> m55169h(int i) {
        return Sets.newLinkedHashSetWithExpectedSize(i);
    }

    /* renamed from: i */
    public static <E> Set<E> m55170i() {
        return Sets.newLinkedHashSet();
    }

    /* renamed from: j */
    public static <K, V> Map<K, V> m55171j() {
        return Maps.newLinkedHashMap();
    }

    /* renamed from: k */
    public static int m55172k(int i) {
        return i;
    }

    /* renamed from: l */
    public static int m55173l(int i) {
        return i;
    }

    /* renamed from: m */
    public static MapMaker m55174m(MapMaker mapMaker) {
        return mapMaker.weakKeys();
    }
}
