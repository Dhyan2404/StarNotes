package com.alibaba.fastjson2.util;

import com.alibaba.fastjson2.JSON;
import java.lang.reflect.Type;

/* loaded from: classes3.dex */
public final class MultiType implements Type {

    /* renamed from: e */
    public final Type[] f12799e;

    public MultiType(Type... typeArr) {
        this.f12799e = typeArr;
    }

    public Type getType(int i) {
        return this.f12799e[i];
    }

    public int size() {
        return this.f12799e.length;
    }

    public String toString() {
        return JSON.toJSONString(this.f12799e);
    }
}
