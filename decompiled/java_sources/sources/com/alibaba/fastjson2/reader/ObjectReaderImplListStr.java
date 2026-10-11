package com.alibaba.fastjson2.reader;

import com.alibaba.fastjson2.JSON;
import com.alibaba.fastjson2.JSONArray;
import com.alibaba.fastjson2.JSONException;
import com.alibaba.fastjson2.JSONReader;
import com.alibaba.fastjson2.reader.ObjectReaderImplListStr;
import com.sunia.HTREnginev2.m8k;
import com.sunia.HTREnginev2.n8k;
import com.sunia.HTREnginev2.o8k;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.LinkedList;
import java.util.SortedSet;
import java.util.function.Function;

/* loaded from: classes3.dex */
public final class ObjectReaderImplListStr implements ObjectReader {

    /* renamed from: a */
    public final Class f12708a;

    /* renamed from: b */
    public final Class f12709b;

    public ObjectReaderImplListStr(Class cls, Class cls2) {
        this.f12708a = cls;
        this.f12709b = cls2;
    }

    /* renamed from: c */
    public static /* synthetic */ Collection m7476c(Collection collection) {
        return Collections.singleton(collection.iterator().next());
    }

    /* renamed from: d */
    public static /* synthetic */ Collection m7477d(Collection collection) {
        return Collections.singletonList(collection.iterator().next());
    }

    @Override // com.alibaba.fastjson2.reader.ObjectReader
    public Object createInstance(long j) {
        Class cls = this.f12709b;
        if (cls == ArrayList.class) {
            return new ArrayList();
        }
        if (cls == LinkedList.class) {
            return new LinkedList();
        }
        try {
            return cls.newInstance();
        } catch (IllegalAccessException | InstantiationException unused) {
            throw new JSONException("create list error, type " + this.f12709b);
        }
    }

    @Override // com.alibaba.fastjson2.reader.ObjectReader
    public Class getObjectClass() {
        return this.f12708a;
    }

    @Override // com.alibaba.fastjson2.reader.ObjectReader
    public Object readJSONBObject(JSONReader jSONReader, Type type, Object obj, long j) {
        Collection collection;
        Class cls = this.f12709b;
        Function function = null;
        if (jSONReader.nextIfNull()) {
            return null;
        }
        ObjectReader checkAutoType = jSONReader.checkAutoType(this.f12708a, 0L, j);
        if (checkAutoType != null) {
            cls = checkAutoType.getObjectClass();
        }
        int i = 0;
        if (cls == ObjectReaderImplList.f12689q) {
            int startArray = jSONReader.startArray();
            String[] strArr = new String[startArray];
            while (i < startArray) {
                strArr[i] = jSONReader.readString();
                i++;
            }
            return Arrays.asList(strArr);
        }
        int startArray2 = jSONReader.startArray();
        if (cls == ArrayList.class) {
            collection = startArray2 > 0 ? new ArrayList(startArray2) : new ArrayList();
        } else if (cls == JSONArray.class) {
            collection = startArray2 > 0 ? new JSONArray(startArray2) : new JSONArray();
        } else if (cls == ObjectReaderImplList.f12690r) {
            collection = new ArrayList();
            function = new m8k();
        } else if (cls == ObjectReaderImplList.f12691s) {
            collection = new ArrayList();
            function = new n8k();
        } else if (cls == ObjectReaderImplList.f12692t) {
            collection = new LinkedHashSet();
            function = new o8k();
        } else if (cls == ObjectReaderImplList.f12687o) {
            collection = new ArrayList();
            function = new Function() { // from class: com.sunia.HTREnginev2.d9k
                @Override // java.util.function.Function
                public final Object apply(Object obj2) {
                    Collection m7476c;
                    m7476c = ObjectReaderImplListStr.m7476c((Collection) obj2);
                    return m7476c;
                }
            };
        } else if (cls == ObjectReaderImplList.f12688p) {
            collection = new ArrayList();
            function = new Function() { // from class: com.sunia.HTREnginev2.e9k
                @Override // java.util.function.Function
                public final Object apply(Object obj2) {
                    Collection m7477d;
                    m7477d = ObjectReaderImplListStr.m7477d((Collection) obj2);
                    return m7477d;
                }
            };
        } else if (cls == null || cls == this.f12708a) {
            collection = (Collection) createInstance(j | jSONReader.context.features);
        } else {
            try {
                collection = (Collection) cls.newInstance();
            } catch (IllegalAccessException | InstantiationException e) {
                throw new JSONException(jSONReader.info("create instance error " + cls), e);
            }
        }
        while (i < startArray2) {
            collection.add(jSONReader.readString());
            i++;
        }
        return function != null ? (Collection) function.apply(collection) : collection;
    }

    @Override // com.alibaba.fastjson2.reader.ObjectReader
    public Object readObject(JSONReader jSONReader, Type type, Object obj, long j) {
        if (jSONReader.jsonb) {
            return readJSONBObject(jSONReader, type, obj, 0L);
        }
        if (jSONReader.readIfNull()) {
            return null;
        }
        Collection hashSet = jSONReader.nextIfSet() ? new HashSet() : (Collection) createInstance(jSONReader.context.features | j);
        char current = jSONReader.current();
        if (current == '[') {
            jSONReader.next();
            while (!jSONReader.nextIfArrayEnd()) {
                String readString = jSONReader.readString();
                if (readString != null || !(hashSet instanceof SortedSet)) {
                    hashSet.add(readString);
                }
            }
        } else {
            if (current != '\"' && current != '\'' && current != '{') {
                throw new JSONException(jSONReader.info());
            }
            String readString2 = jSONReader.readString();
            if (!readString2.isEmpty()) {
                hashSet.add(readString2);
            }
        }
        jSONReader.nextIfComma();
        return hashSet;
    }

    @Override // com.alibaba.fastjson2.reader.ObjectReader
    public Object createInstance(Collection collection) {
        boolean z;
        if (this.f12708a.isInstance(collection)) {
            Iterator it2 = collection.iterator();
            while (true) {
                if (!it2.hasNext()) {
                    z = true;
                    break;
                }
                if (!(it2.next() instanceof String)) {
                    z = false;
                    break;
                }
            }
            if (z) {
                return collection;
            }
        }
        Collection collection2 = (Collection) createInstance(0L);
        for (Object obj : collection) {
            if (obj != null && !(obj instanceof String)) {
                collection2.add(JSON.toJSONString(obj));
            } else {
                collection2.add(obj);
            }
        }
        return collection2;
    }
}
