package com.alibaba.fastjson2.filter;

import com.alibaba.fastjson2.filter.ValueFilter;
import java.util.Map;
import java.util.function.Function;
import java.util.function.Predicate;

/* loaded from: classes3.dex */
public interface ValueFilter extends Filter {
    static ValueFilter compose(final ValueFilter valueFilter, final ValueFilter valueFilter2) {
        return new ValueFilter() { // from class: com.sunia.HTREnginev2.b0o
            @Override // com.alibaba.fastjson2.filter.ValueFilter
            public final Object apply(Object obj, String str, Object obj2) {
                Object m7368k;
                m7368k = ValueFilter.m7368k(ValueFilter.this, valueFilter, obj, str, obj2);
                return m7368k;
            }
        };
    }

    /* renamed from: d */
    static /* synthetic */ Object m7364d(String str, Function function, Object obj, String str2, Object obj2) {
        return (str == null || str.equals(str2)) ? function.apply(obj2) : obj2;
    }

    /* renamed from: j */
    static /* synthetic */ Object m7367j(String str, Map map, Object obj, String str2, Object obj2) {
        Object obj3;
        return ((str == null || str.equals(str2)) && ((obj3 = map.get(obj2)) != null || map.containsKey(obj2))) ? obj3 : obj2;
    }

    /* renamed from: k */
    static /* synthetic */ Object m7368k(ValueFilter valueFilter, ValueFilter valueFilter2, Object obj, String str, Object obj2) {
        return valueFilter.apply(obj, str, valueFilter2.apply(obj, str, obj2));
    }

    /* renamed from: n */
    static /* synthetic */ Object m7370n(Predicate predicate, Function function, Object obj, String str, Object obj2) {
        return (predicate == null || predicate.test(str)) ? function.apply(obj2) : obj2;
    }

    /* renamed from: of */
    static ValueFilter m7372of(final String str, final Function function) {
        return new ValueFilter() { // from class: com.sunia.HTREnginev2.e0o
            @Override // com.alibaba.fastjson2.filter.ValueFilter
            public final Object apply(Object obj, String str2, Object obj2) {
                Object m7364d;
                m7364d = ValueFilter.m7364d(str, function, obj, str2, obj2);
                return m7364d;
            }
        };
    }

    Object apply(Object obj, String str, Object obj2);

    /* renamed from: of */
    static ValueFilter m7371of(final String str, final Map map) {
        return new ValueFilter() { // from class: com.sunia.HTREnginev2.c0o
            @Override // com.alibaba.fastjson2.filter.ValueFilter
            public final Object apply(Object obj, String str2, Object obj2) {
                Object m7367j;
                m7367j = ValueFilter.m7367j(str, map, obj, str2, obj2);
                return m7367j;
            }
        };
    }

    /* renamed from: of */
    static ValueFilter m7373of(final Predicate<String> predicate, final Function function) {
        return new ValueFilter() { // from class: com.sunia.HTREnginev2.d0o
            @Override // com.alibaba.fastjson2.filter.ValueFilter
            public final Object apply(Object obj, String str, Object obj2) {
                Object m7370n;
                m7370n = ValueFilter.m7370n(predicate, function, obj, str, obj2);
                return m7370n;
            }
        };
    }
}
