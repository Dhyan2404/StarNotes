package com.alibaba.fastjson2.filter;

import com.alibaba.fastjson2.JSONWriter;
import java.util.HashSet;
import java.util.Set;

/* loaded from: classes3.dex */
public class SimplePropertyPreFilter implements PropertyPreFilter {

    /* renamed from: a */
    public final Class<?> f12396a;

    /* renamed from: b */
    public final Set<String> f12397b;

    /* renamed from: c */
    public final Set<String> f12398c;

    /* renamed from: d */
    public int f12399d;

    public SimplePropertyPreFilter(String... strArr) {
        this(null, strArr);
    }

    public Class<?> getClazz() {
        return this.f12396a;
    }

    public Set<String> getExcludes() {
        return this.f12398c;
    }

    public Set<String> getIncludes() {
        return this.f12397b;
    }

    public int getMaxLevel() {
        return this.f12399d;
    }

    @Override // com.alibaba.fastjson2.filter.PropertyPreFilter
    public boolean process(JSONWriter jSONWriter, Object obj, String str) {
        if (obj == null) {
            return true;
        }
        Class<?> cls = this.f12396a;
        if (cls != null && !cls.isInstance(obj)) {
            return this.f12398c.size() != 0 && this.f12397b.isEmpty() && this.f12399d == 0;
        }
        if (this.f12398c.contains(str)) {
            return false;
        }
        if (this.f12399d <= 0 || jSONWriter.level() <= this.f12399d) {
            return this.f12397b.size() == 0 || this.f12397b.contains(str);
        }
        return false;
    }

    public void setMaxLevel(int i) {
        this.f12399d = i;
    }

    public SimplePropertyPreFilter(Class<?> cls, String... strArr) {
        this.f12397b = new HashSet();
        this.f12398c = new HashSet();
        this.f12396a = cls;
        for (String str : strArr) {
            if (str != null) {
                this.f12397b.add(str);
            }
        }
    }
}
