package com.alibaba.fastjson2.reader;

import com.alibaba.fastjson2.JSONException;
import com.alibaba.fastjson2.JSONFactory;
import com.alibaba.fastjson2.JSONObject;
import com.alibaba.fastjson2.JSONReader;
import com.alibaba.fastjson2.reader.ObjectReaderImplMap;
import com.alibaba.fastjson2.util.Fnv;
import com.alibaba.fastjson2.util.TypeUtils;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Type;
import java.util.Collections;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.function.Function;
import java.util.function.Supplier;

/* loaded from: classes3.dex */
public final class ObjectReaderImplMap implements ObjectReader {
    public static final ObjectReaderImplMap INSTANCE = new ObjectReaderImplMap(null, HashMap.class, 77, HashMap.class, 0, null);
    public static final ObjectReaderImplMap INSTANCE_OBJECT = new ObjectReaderImplMap(null, JSONObject.class, -2622135058008237800L, JSONObject.class, 0, null);

    /* renamed from: a */
    public final Type f12710a;

    /* renamed from: b */
    public final Class f12711b;

    /* renamed from: c */
    public final long f12712c;

    /* renamed from: d */
    public final Class f12713d;

    /* renamed from: e */
    public final long f12714e;

    /* renamed from: f */
    public final Function f12715f;

    /* renamed from: g */
    public final boolean f12716g;

    /* renamed from: h */
    public Object f12717h;

    /* renamed from: i */
    public volatile boolean f12718i;

    /* renamed from: com.alibaba.fastjson2.reader.ObjectReaderImplMap$a */
    /* loaded from: classes3.dex */
    public static final class C1745a implements Function<Map, Map> {
        @Override // java.util.function.Function
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public Map apply(Map map) {
            Map.Entry entry = (Map.Entry) map.entrySet().iterator().next();
            return Collections.singletonMap(entry.getKey(), entry.getValue());
        }
    }

    public ObjectReaderImplMap(Class cls, long j, Object obj) {
        this(cls, cls, cls, j, null);
        this.f12717h = obj;
    }

    /* renamed from: b */
    public static Function m7479b(Class cls) {
        try {
            final Constructor constructor = cls.getConstructor(Map.class);
            return new Function() { // from class: com.sunia.HTREnginev2.m9k
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    Object m7480c;
                    m7480c = ObjectReaderImplMap.m7480c(constructor, obj);
                    return m7480c;
                }
            };
        } catch (NoSuchMethodException unused) {
            throw new JSONException("create JSONObject1 error");
        }
    }

    /* renamed from: c */
    public static /* synthetic */ Object m7480c(Constructor constructor, Object obj) {
        try {
            return constructor.newInstance(obj);
        } catch (IllegalAccessException | InstantiationException | InvocationTargetException unused) {
            throw new JSONException("create JSONObject1 error");
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0084  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00e2  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x00e5  */
    /* renamed from: of */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.alibaba.fastjson2.reader.ObjectReader m7481of(java.lang.reflect.Type r16, java.lang.Class r17, long r18) {
        /*
            Method dump skipped, instructions count: 348
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson2.reader.ObjectReaderImplMap.m7481of(java.lang.reflect.Type, java.lang.Class, long):com.alibaba.fastjson2.reader.ObjectReader");
    }

    @Override // com.alibaba.fastjson2.reader.ObjectReader
    public Object createInstance(long j) {
        Class cls = this.f12713d;
        if (cls == HashMap.class) {
            return new HashMap();
        }
        if (cls == LinkedHashMap.class) {
            return new LinkedHashMap();
        }
        if (cls == JSONObject.class) {
            return new JSONObject();
        }
        Object obj = this.f12717h;
        if (obj != null) {
            return obj;
        }
        String name = cls.getName();
        if (name.equals("java.util.ImmutableCollections$Map1")) {
            return new HashMap();
        }
        if (!name.equals("java.util.ImmutableCollections$MapN")) {
            try {
                return this.f12713d.newInstance();
            } catch (IllegalAccessException | InstantiationException unused) {
                throw new JSONException("create map error : " + this.f12713d);
            }
        }
        return new LinkedHashMap();
    }

    @Override // com.alibaba.fastjson2.reader.ObjectReader
    public Function getBuildFunction() {
        return this.f12715f;
    }

    @Override // com.alibaba.fastjson2.reader.ObjectReader
    public Class getObjectClass() {
        return this.f12711b;
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x010e  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x013f  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x015a  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x00f8 A[EDGE_INSN: B:74:0x00f8->B:75:0x00f8 BREAK  A[LOOP:0: B:16:0x00f0->B:29:0x01f3], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:77:0x00ff  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x0104  */
    @Override // com.alibaba.fastjson2.reader.ObjectReader
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object readJSONBObject(com.alibaba.fastjson2.JSONReader r18, java.lang.reflect.Type r19, java.lang.Object r20, long r21) {
        /*
            Method dump skipped, instructions count: 506
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson2.reader.ObjectReaderImplMap.readJSONBObject(com.alibaba.fastjson2.JSONReader, java.lang.reflect.Type, java.lang.Object, long):java.lang.Object");
    }

    @Override // com.alibaba.fastjson2.reader.ObjectReader
    public Object readObject(JSONReader jSONReader, Type type, Object obj, long j) {
        Class cls;
        if (jSONReader.jsonb) {
            return readJSONBObject(jSONReader, type, obj, j);
        }
        if (jSONReader.nextIfNull()) {
            return null;
        }
        JSONReader.Context context = jSONReader.context;
        Supplier<Map> objectSupplier = context.getObjectSupplier();
        Map map = (objectSupplier == null || !((cls = this.f12711b) == null || cls == JSONObject.class || "com.alibaba.fastjson.JSONObject".equals(cls.getName()))) ? (Map) createInstance(context.features | j) : objectSupplier.get();
        if (!jSONReader.isString() || jSONReader.isTypeRedirect()) {
            jSONReader.read(map, j);
        } else {
            String readString = jSONReader.readString();
            if (!readString.isEmpty()) {
                JSONReader m7299of = JSONReader.m7299of(readString, jSONReader.getContext());
                try {
                    m7299of.read(map, j);
                    m7299of.close();
                } catch (Throwable th) {
                    if (m7299of != null) {
                        try {
                            m7299of.close();
                        } catch (Throwable th2) {
                            th.addSuppressed(th2);
                        }
                    }
                    throw th;
                }
            }
        }
        jSONReader.nextIfComma();
        if (this.f12716g) {
            return JSONFactory.createJSONObject1(map);
        }
        Function function = this.f12715f;
        return function != null ? function.apply(map) : map;
    }

    public ObjectReaderImplMap(Type type, Class cls, Class cls2, long j, Function function) {
        this(type, cls, Fnv.hashCode64(TypeUtils.getTypeName(cls)), cls2, j, function);
    }

    public ObjectReaderImplMap(Type type, Class cls, long j, Class cls2, long j2, Function function) {
        this.f12710a = type;
        this.f12711b = cls;
        this.f12712c = j;
        this.f12713d = cls2;
        this.f12714e = j2;
        this.f12715f = function;
        this.f12716g = cls != null && cls.getName().equals("com.alibaba.fastjson.JSONObject");
    }

    @Override // com.alibaba.fastjson2.reader.ObjectReader
    public Object createInstance(Map map, long j) {
        if (this.f12711b.isInstance(map)) {
            return map;
        }
        if (this.f12711b == JSONObject.class) {
            return new JSONObject(map);
        }
        Map map2 = (Map) createInstance(j);
        map2.putAll(map);
        if (this.f12716g) {
            return JSONFactory.createJSONObject1(map2);
        }
        Function function = this.f12715f;
        return function != null ? function.apply(map2) : map2;
    }
}
