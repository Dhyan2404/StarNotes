package com.alibaba.fastjson2;

import com.alibaba.fastjson2.JSONPath;
import com.alibaba.fastjson2.util.IOUtils;
import java.lang.reflect.Array;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.SortedMap;
import java.util.SortedSet;

/* renamed from: com.alibaba.fastjson2.d */
/* loaded from: classes3.dex */
public final class C1734d extends AbstractC1733c {

    /* renamed from: b */
    public static final C1734d f12370b = new C1734d(0);

    /* renamed from: c */
    public static final C1734d f12371c = new C1734d(1);

    /* renamed from: d */
    public static final C1734d f12372d = new C1734d(2);

    /* renamed from: a */
    public final int f12373a;

    public C1734d(int i) {
        if (i < 0) {
            throw new JSONException("not support negative index");
        }
        this.f12373a = i;
    }

    /* renamed from: c */
    public static C1734d m7349c(int i) {
        return i == 0 ? f12370b : i == 1 ? f12371c : i == 2 ? f12372d : new C1734d(i);
    }

    @Override // com.alibaba.fastjson2.AbstractC1733c
    /* renamed from: a */
    public void mo7348a(JSONPath.C1727a c1727a) {
        JSONPath.C1727a c1727a2 = c1727a.f12267b;
        Object obj = c1727a2 == null ? c1727a.f12271f : c1727a2.f12272g;
        if (obj == null) {
            c1727a.f12273h = true;
            return;
        }
        if (obj instanceof List) {
            List list = (List) obj;
            if (this.f12373a < list.size()) {
                c1727a.f12272g = list.get(this.f12373a);
            }
            c1727a.f12273h = true;
            return;
        }
        if ((obj instanceof SortedSet) || (obj instanceof LinkedHashSet) || (this.f12373a == 0 && (obj instanceof Collection) && ((Collection) obj).size() == 1)) {
            Iterator it2 = ((Collection) obj).iterator();
            int i = 0;
            while (true) {
                if (!it2.hasNext()) {
                    break;
                }
                Object next = it2.next();
                if (i == this.f12373a) {
                    c1727a.f12272g = next;
                    break;
                }
                i++;
            }
            c1727a.f12273h = true;
            return;
        }
        if (obj instanceof Object[]) {
            Object[] objArr = (Object[]) obj;
            int i2 = this.f12373a;
            if (i2 < objArr.length) {
                c1727a.f12272g = objArr[i2];
            }
            c1727a.f12273h = true;
            return;
        }
        Class<?> cls = obj.getClass();
        if (cls.isArray()) {
            int length = Array.getLength(obj);
            int i3 = this.f12373a;
            if (i3 < length) {
                c1727a.f12272g = Array.get(obj, i3);
            }
            c1727a.f12273h = true;
            return;
        }
        if (Map.class.isAssignableFrom(cls)) {
            c1727a.f12272g = m7350b((Map) obj);
            c1727a.f12273h = true;
        } else {
            if (this.f12373a == 0) {
                c1727a.f12272g = obj;
                c1727a.f12273h = true;
                return;
            }
            throw new JSONException("jsonpath not support operate : " + c1727a.f12266a + ", objectClass" + cls.getName());
        }
    }

    /* renamed from: b */
    public final Object m7350b(Map map) {
        Object obj = map.get(Integer.valueOf(this.f12373a));
        if (obj == null) {
            obj = map.get(Integer.toString(this.f12373a));
        }
        if (obj != null) {
            return obj;
        }
        int size = map.size();
        Iterator it2 = map.entrySet().iterator();
        int i = 0;
        if (size != 1 && !(map instanceof LinkedHashMap) && !(map instanceof SortedMap)) {
            while (i <= this.f12373a && i < map.size() && it2.hasNext()) {
                Map.Entry entry = (Map.Entry) it2.next();
                Object key = entry.getKey();
                Object value = entry.getValue();
                if ((key instanceof Long) && key.equals(Long.valueOf(this.f12373a))) {
                    return value;
                }
                i++;
            }
            return obj;
        }
        while (i <= this.f12373a && i < size && it2.hasNext()) {
            Map.Entry entry2 = (Map.Entry) it2.next();
            Object key2 = entry2.getKey();
            Object value2 = entry2.getValue();
            if (key2 instanceof Long) {
                if (key2.equals(Long.valueOf(this.f12373a))) {
                    return value2;
                }
            } else if (i == this.f12373a) {
                obj = value2;
            }
            i++;
        }
        return obj;
    }

    public String toString() {
        int stringSize = IOUtils.stringSize(this.f12373a) + 2;
        char[] cArr = new char[stringSize];
        cArr[0] = '[';
        IOUtils.writeInt32(cArr, 1, this.f12373a);
        cArr[stringSize - 1] = ']';
        return new String(cArr);
    }
}
