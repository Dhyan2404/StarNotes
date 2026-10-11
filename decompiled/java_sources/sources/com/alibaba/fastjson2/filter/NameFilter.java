package com.alibaba.fastjson2.filter;

import com.alibaba.fastjson2.PropertyNamingStrategy;
import com.alibaba.fastjson2.filter.NameFilter;
import com.alibaba.fastjson2.util.BeanUtils;
import java.util.function.Function;

/* loaded from: classes3.dex */
public interface NameFilter extends Filter {
    /* renamed from: a */
    static /* synthetic */ String m7355a(Function function, Object obj, String str, Object obj2) {
        return (String) function.apply(str);
    }

    static NameFilter compose(final NameFilter nameFilter, final NameFilter nameFilter2) {
        return new NameFilter() { // from class: com.sunia.HTREnginev2.lrj
            @Override // com.alibaba.fastjson2.filter.NameFilter
            public final String process(Object obj, String str, Object obj2) {
                String m7357e;
                m7357e = NameFilter.m7357e(NameFilter.this, nameFilter, obj, str, obj2);
                return m7357e;
            }
        };
    }

    /* renamed from: e */
    static /* synthetic */ String m7357e(NameFilter nameFilter, NameFilter nameFilter2, Object obj, String str, Object obj2) {
        return nameFilter.process(obj, nameFilter2.process(obj, str, obj2), obj2);
    }

    /* renamed from: i */
    static /* synthetic */ String m7359i(PropertyNamingStrategy propertyNamingStrategy, Object obj, String str, Object obj2) {
        return BeanUtils.fieldName(str, propertyNamingStrategy.name());
    }

    /* renamed from: of */
    static NameFilter m7361of(final PropertyNamingStrategy propertyNamingStrategy) {
        return new NameFilter() { // from class: com.sunia.HTREnginev2.nrj
            @Override // com.alibaba.fastjson2.filter.NameFilter
            public final String process(Object obj, String str, Object obj2) {
                String m7359i;
                m7359i = NameFilter.m7359i(PropertyNamingStrategy.this, obj, str, obj2);
                return m7359i;
            }
        };
    }

    String process(Object obj, String str, Object obj2);

    /* renamed from: of */
    static NameFilter m7362of(final Function<String, String> function) {
        return new NameFilter() { // from class: com.sunia.HTREnginev2.mrj
            @Override // com.alibaba.fastjson2.filter.NameFilter
            public final String process(Object obj, String str, Object obj2) {
                String m7355a;
                m7355a = NameFilter.m7355a(function, obj, str, obj2);
                return m7355a;
            }
        };
    }
}
