package com.alibaba.fastjson2;

import com.alibaba.fastjson2.JSONPath;
import com.alibaba.fastjson2.JSONWriter;
import com.alibaba.fastjson2.util.IOUtils;
import com.alibaba.fastjson2.writer.FieldWriter;
import com.alibaba.fastjson2.writer.ObjectWriter;
import com.alibaba.fastjson2.writer.ObjectWriterAdapter;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;

/* renamed from: com.alibaba.fastjson2.e */
/* loaded from: classes3.dex */
public final class C1735e extends AbstractC1733c {

    /* renamed from: a */
    public final String f12374a;

    /* renamed from: b */
    public final long f12375b;

    public C1735e(String str, long j) {
        this.f12374a = str;
        this.f12375b = j;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v10, types: [java.util.Collection] */
    @Override // com.alibaba.fastjson2.AbstractC1733c
    /* renamed from: a */
    public void mo7348a(JSONPath.C1727a c1727a) {
        Object obj;
        JSONPath.C1727a c1727a2 = c1727a.f12267b;
        Object obj2 = c1727a2 == null ? c1727a.f12271f : c1727a2.f12272g;
        if (obj2 == null) {
            return;
        }
        JSONArray jSONArray = null;
        Long l = null;
        if (obj2 instanceof Map) {
            Map map = (Map) obj2;
            Object obj3 = map.get(this.f12374a);
            if (obj3 == null) {
                boolean isNumber = IOUtils.isNumber(this.f12374a);
                Iterator it2 = map.entrySet().iterator();
                while (true) {
                    if (!it2.hasNext()) {
                        break;
                    }
                    Map.Entry entry = (Map.Entry) it2.next();
                    Object key = entry.getKey();
                    if ((key instanceof Enum) && ((Enum) key).name().equals(this.f12374a)) {
                        obj3 = entry.getValue();
                        break;
                    } else if (key instanceof Long) {
                        if (l == null && isNumber) {
                            l = Long.valueOf(Long.parseLong(this.f12374a));
                        }
                        if (key.equals(l)) {
                            obj3 = entry.getValue();
                            break;
                        }
                    }
                }
            }
            c1727a.f12272g = obj3;
            return;
        }
        if (!(obj2 instanceof Collection)) {
            Class<?> cls = obj2.getClass();
            JSONWriter.Context context = c1727a.f12266a.f12262b;
            ObjectWriter objectWriter = context != null ? context.getObjectWriter(cls) : JSONFactory.defaultObjectWriterProvider.getObjectWriter((Class) cls);
            if (objectWriter instanceof ObjectWriterAdapter) {
                FieldWriter fieldWriter = objectWriter.getFieldWriter(this.f12375b);
                if (fieldWriter != null) {
                    c1727a.f12272g = fieldWriter.getFieldValue(obj2);
                    return;
                }
                return;
            }
            if ((obj2 instanceof Number) || (obj2 instanceof Boolean)) {
                c1727a.f12272g = null;
                return;
            }
            throw new JSONException("not support : " + cls);
        }
        Collection collection = (Collection) obj2;
        int size = collection.size();
        for (Object obj4 : collection) {
            if ((obj4 instanceof Map) && (obj = ((Map) obj4).get(this.f12374a)) != null) {
                if (!(obj instanceof Collection)) {
                    if (jSONArray == null) {
                        jSONArray = new JSONArray(size);
                    }
                    jSONArray.add(obj);
                } else if (size == 1) {
                    jSONArray = (Collection) obj;
                } else {
                    if (jSONArray == null) {
                        jSONArray = new JSONArray(size);
                    }
                    jSONArray.addAll((Collection) obj);
                }
            }
        }
        c1727a.f12272g = jSONArray;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || C1735e.class != obj.getClass()) {
            return false;
        }
        C1735e c1735e = (C1735e) obj;
        if (this.f12375b == c1735e.f12375b && this.f12374a == c1735e.f12374a) {
            return true;
        }
        String str = this.f12374a;
        return str != null && str.equals(c1735e.f12374a);
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f12374a, Long.valueOf(this.f12375b)});
    }

    public String toString() {
        return this.f12374a;
    }
}
