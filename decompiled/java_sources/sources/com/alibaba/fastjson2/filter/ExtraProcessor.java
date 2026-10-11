package com.alibaba.fastjson2.filter;

import java.lang.reflect.Type;

/* loaded from: classes3.dex */
public interface ExtraProcessor extends Filter {
    default Type getType(String str) {
        return Object.class;
    }

    void processExtra(Object obj, String str, Object obj2);
}
