package com.alibaba.fastjson2.reader;

import com.alibaba.fastjson2.JSONArray;
import com.alibaba.fastjson2.JSONException;
import com.alibaba.fastjson2.JSONFactory;
import com.alibaba.fastjson2.JSONObject;
import com.alibaba.fastjson2.JSONPath;
import com.alibaba.fastjson2.JSONReader;
import com.alibaba.fastjson2.reader.ObjectReaderImplList;
import com.alibaba.fastjson2.util.Fnv;
import com.alibaba.fastjson2.util.TypeUtils;
import com.sun.org.apache.xalan.internal.templates.Constants;
import com.sunia.HTREnginev2.m8k;
import com.sunia.HTREnginev2.n8k;
import com.sunia.HTREnginev2.o8k;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.EnumSet;
import java.util.HashSet;
import java.util.LinkedHashSet;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.TreeSet;
import java.util.function.Function;

/* loaded from: classes3.dex */
public final class ObjectReaderImplList implements ObjectReader {

    /* renamed from: a */
    public final Type f12693a;

    /* renamed from: b */
    public final Class f12694b;

    /* renamed from: c */
    public final Class f12695c;

    /* renamed from: d */
    public final long f12696d;

    /* renamed from: e */
    public final Type f12697e;

    /* renamed from: f */
    public final Class f12698f;

    /* renamed from: g */
    public final String f12699g;

    /* renamed from: h */
    public final long f12700h;

    /* renamed from: i */
    public final Function f12701i;

    /* renamed from: j */
    public Object f12702j;

    /* renamed from: k */
    public ObjectReader f12703k;

    /* renamed from: l */
    public volatile boolean f12704l;

    /* renamed from: m */
    public static final Class f12685m = Collections.emptySet().getClass();

    /* renamed from: n */
    public static final Class f12686n = Collections.emptyList().getClass();

    /* renamed from: o */
    public static final Class f12687o = Collections.singleton(0).getClass();

    /* renamed from: p */
    public static final Class f12688p = Collections.singletonList(0).getClass();

    /* renamed from: q */
    public static final Class f12689q = Arrays.asList(0).getClass();

    /* renamed from: r */
    public static final Class f12690r = Collections.unmodifiableCollection(Collections.emptyList()).getClass();

    /* renamed from: s */
    public static final Class f12691s = Collections.unmodifiableList(Collections.emptyList()).getClass();

    /* renamed from: t */
    public static final Class f12692t = Collections.unmodifiableSet(Collections.emptySet()).getClass();
    public static ObjectReaderImplList INSTANCE = new ObjectReaderImplList(ArrayList.class, ArrayList.class, ArrayList.class, 65, Object.class, Object.class, null, "Object", 127970252055119L);
    public static ObjectReaderImplList JSON_ARRAY_READER = new ObjectReaderImplList(JSONArray.class, JSONArray.class, JSONArray.class, 8893561198416334968L, Object.class, Object.class, null, "Object", 127970252055119L);

    public ObjectReaderImplList(Class cls, Object obj) {
        this(cls, cls, cls, Object.class, null);
        this.f12702j = obj;
    }

    /* renamed from: m */
    public static /* synthetic */ Object m7461m(Object obj) {
        return EnumSet.copyOf((Collection) obj);
    }

    /* renamed from: n */
    public static /* synthetic */ Object m7462n(Object obj) {
        return Collections.singleton(((List) obj).get(0));
    }

    /* renamed from: o */
    public static /* synthetic */ Object m7463o(Object obj) {
        return Collections.singletonList(((List) obj).get(0));
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:86:0x0184, code lost:
    
        if (r7.equals("kotlin.collections.EmptyList") == false) goto L104;
     */
    /* JADX WARN: Removed duplicated region for block: B:12:0x0050  */
    /* JADX WARN: Removed duplicated region for block: B:135:0x0056  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0061  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x015b  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x018a  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x01c2  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x01ce  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x01da  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x015d  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x0168  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x0173  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x017e  */
    /* renamed from: of */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.alibaba.fastjson2.reader.ObjectReader m7464of(java.lang.reflect.Type r11, java.lang.Class r12, long r13) {
        /*
            Method dump skipped, instructions count: 586
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson2.reader.ObjectReaderImplList.m7464of(java.lang.reflect.Type, java.lang.Class, long):com.alibaba.fastjson2.reader.ObjectReader");
    }

    /* renamed from: p */
    public static /* synthetic */ Object m7465p(Object obj) {
        return Arrays.asList(((List) obj).toArray());
    }

    /* renamed from: q */
    public static /* synthetic */ Object m7466q(Object obj) {
        return Collections.unmodifiableCollection((Collection) obj);
    }

    /* renamed from: r */
    public static /* synthetic */ Object m7467r(Object obj) {
        return Collections.unmodifiableList((List) obj);
    }

    /* renamed from: s */
    public static /* synthetic */ Object m7468s(Object obj) {
        return Collections.unmodifiableSet((Set) obj);
    }

    /* renamed from: u */
    public static /* synthetic */ Object m7470u(Object obj) {
        return EnumSet.copyOf((Collection) obj);
    }

    /* renamed from: v */
    public static /* synthetic */ Collection m7471v(Collection collection) {
        return Collections.singleton(collection.iterator().next());
    }

    /* renamed from: w */
    public static /* synthetic */ List m7472w(List list) {
        return Collections.singletonList(list.get(0));
    }

    /* renamed from: x */
    public static /* synthetic */ Collection m7473x(Collection collection) {
        return Collections.singletonList(collection.iterator().next());
    }

    @Override // com.alibaba.fastjson2.reader.ObjectReader
    public Object createInstance(Collection collection) {
        Collection collection2;
        if (collection.size() == 0 && this.f12694b == List.class) {
            ArrayList arrayList = new ArrayList();
            Function function = this.f12701i;
            return function != null ? function.apply(arrayList) : arrayList;
        }
        ObjectReaderProvider objectReaderProvider = JSONFactory.defaultObjectReaderProvider;
        if (this.f12695c == ArrayList.class) {
            collection2 = new ArrayList(collection.size());
        } else {
            collection2 = (Collection) createInstance(0L);
        }
        for (Object obj : collection) {
            if (obj == null) {
                collection2.add(null);
            } else {
                Class<?> cls = obj.getClass();
                if ((cls == JSONObject.class || cls == JSONFactory.getClassJSONObject1x()) && this.f12698f != cls) {
                    if (this.f12703k == null) {
                        this.f12703k = objectReaderProvider.getObjectReader(this.f12697e);
                    }
                    obj = this.f12703k.createInstance((JSONObject) obj, 0L);
                } else {
                    Type type = this.f12697e;
                    if (cls != type) {
                        Function typeConvert = objectReaderProvider.getTypeConvert(cls, type);
                        if (typeConvert != null) {
                            obj = typeConvert.apply(obj);
                        } else if (obj instanceof Map) {
                            Map map = (Map) obj;
                            if (this.f12703k == null) {
                                this.f12703k = objectReaderProvider.getObjectReader(this.f12697e);
                            }
                            obj = this.f12703k.createInstance(map, 0L);
                        } else if (obj instanceof Collection) {
                            if (this.f12703k == null) {
                                this.f12703k = objectReaderProvider.getObjectReader(this.f12697e);
                            }
                            obj = this.f12703k.createInstance((Collection) obj);
                        } else if (!this.f12698f.isInstance(obj)) {
                            if (Enum.class.isAssignableFrom(this.f12698f)) {
                                if (this.f12703k == null) {
                                    this.f12703k = objectReaderProvider.getObjectReader(this.f12697e);
                                }
                                ObjectReader objectReader = this.f12703k;
                                if (objectReader instanceof ObjectReaderImplEnum) {
                                    obj = ((ObjectReaderImplEnum) objectReader).getEnum((String) obj);
                                } else if (objectReader instanceof ObjectReaderImplEnum2X4) {
                                    obj = ((ObjectReaderImplEnum2X4) objectReader).getEnum((String) obj);
                                } else {
                                    throw new JSONException("can not convert from " + cls + " to " + this.f12697e);
                                }
                            } else {
                                throw new JSONException("can not convert from " + cls + " to " + this.f12697e);
                            }
                        }
                    }
                }
                collection2.add(obj);
            }
        }
        Function function2 = this.f12701i;
        return function2 != null ? function2.apply(collection2) : collection2;
    }

    @Override // com.alibaba.fastjson2.reader.ObjectReader
    public Function getBuildFunction() {
        return this.f12701i;
    }

    @Override // com.alibaba.fastjson2.reader.ObjectReader
    public Class getObjectClass() {
        return this.f12694b;
    }

    @Override // com.alibaba.fastjson2.reader.ObjectReader
    public Object readJSONBObject(JSONReader jSONReader, Type type, Object obj, long j) {
        Collection collection;
        Object readJSONBObject;
        Object readJSONBObject2;
        if (jSONReader.nextIfNull()) {
            return null;
        }
        ObjectReader checkAutoType = jSONReader.checkAutoType(this.f12694b, 0L, j);
        Function function = this.f12701i;
        Class cls = this.f12695c;
        if (checkAutoType != null) {
            if (checkAutoType instanceof ObjectReaderImplList) {
                ObjectReaderImplList objectReaderImplList = (ObjectReaderImplList) checkAutoType;
                cls = objectReaderImplList.f12695c;
                function = objectReaderImplList.f12701i;
            } else {
                cls = checkAutoType.getObjectClass();
            }
            if (cls == f12690r) {
                function = new m8k();
            } else if (cls == f12691s) {
                function = new n8k();
            } else if (cls == f12692t) {
                function = new o8k();
                cls = LinkedHashSet.class;
            } else if (cls == f12687o) {
                function = new Function() { // from class: com.sunia.HTREnginev2.p8k
                    @Override // java.util.function.Function
                    public final Object apply(Object obj2) {
                        Collection m7471v;
                        m7471v = ObjectReaderImplList.m7471v((Collection) obj2);
                        return m7471v;
                    }
                };
            } else if (cls == f12688p) {
                function = new Function() { // from class: com.sunia.HTREnginev2.q8k
                    @Override // java.util.function.Function
                    public final Object apply(Object obj2) {
                        List m7472w;
                        m7472w = ObjectReaderImplList.m7472w((List) obj2);
                        return m7472w;
                    }
                };
            }
            cls = ArrayList.class;
        }
        int startArray = jSONReader.startArray();
        if (startArray > 0 && this.f12703k == null) {
            this.f12703k = jSONReader.context.getObjectReader(this.f12697e);
        }
        if (cls == f12689q) {
            Object[] objArr = new Object[startArray];
            List asList = Arrays.asList(objArr);
            for (int i = 0; i < startArray; i++) {
                if (jSONReader.isReference()) {
                    String readReference = jSONReader.readReference();
                    if (Constants.ATTRVAL_PARENT.equals(readReference)) {
                        readJSONBObject2 = asList;
                    } else {
                        jSONReader.addResolveTask(asList, i, JSONPath.m7282of(readReference));
                        readJSONBObject2 = null;
                    }
                } else {
                    readJSONBObject2 = this.f12703k.readJSONBObject(jSONReader, this.f12697e, Integer.valueOf(i), j);
                }
                objArr[i] = readJSONBObject2;
            }
            return asList;
        }
        if (cls == ArrayList.class) {
            collection = startArray > 0 ? new ArrayList(startArray) : new ArrayList();
        } else if (cls == JSONArray.class) {
            collection = startArray > 0 ? new JSONArray(startArray) : new JSONArray();
        } else if (cls == HashSet.class) {
            collection = new HashSet();
        } else if (cls == LinkedHashSet.class) {
            collection = new LinkedHashSet();
        } else if (cls == TreeSet.class) {
            collection = new TreeSet();
        } else if (cls == f12685m) {
            collection = Collections.emptySet();
        } else if (cls == f12686n) {
            collection = Collections.emptyList();
        } else if (cls == f12688p) {
            collection = new ArrayList();
            function = new Function() { // from class: com.sunia.HTREnginev2.r8k
                @Override // java.util.function.Function
                public final Object apply(Object obj2) {
                    Collection m7473x;
                    m7473x = ObjectReaderImplList.m7473x((Collection) obj2);
                    return m7473x;
                }
            };
        } else if (cls == f12691s) {
            collection = new ArrayList();
            function = new Function() { // from class: com.sunia.HTREnginev2.s8k
                @Override // java.util.function.Function
                public final Object apply(Object obj2) {
                    List unmodifiableList;
                    unmodifiableList = Collections.unmodifiableList((List) obj2);
                    return unmodifiableList;
                }
            };
        } else if (cls != null && EnumSet.class.isAssignableFrom(cls)) {
            collection = new HashSet();
            function = new Function() { // from class: com.sunia.HTREnginev2.t8k
                @Override // java.util.function.Function
                public final Object apply(Object obj2) {
                    Object m7470u;
                    m7470u = ObjectReaderImplList.m7470u(obj2);
                    return m7470u;
                }
            };
        } else if (cls == null || cls == this.f12693a) {
            collection = (Collection) createInstance(jSONReader.context.features | j);
        } else {
            try {
                collection = (Collection) cls.newInstance();
            } catch (IllegalAccessException | InstantiationException e) {
                throw new JSONException(jSONReader.info("create instance error " + cls), e);
            }
        }
        Collection collection2 = collection;
        Function function2 = function;
        ObjectReader objectReader = this.f12703k;
        Type type2 = this.f12697e;
        if (type != null && type != cls && (type instanceof ParameterizedType)) {
            Type[] actualTypeArguments = ((ParameterizedType) type).getActualTypeArguments();
            if (actualTypeArguments.length == 1 && (type2 = actualTypeArguments[0]) != this.f12697e) {
                objectReader = jSONReader.getObjectReader(type2);
            }
        }
        ObjectReader objectReader2 = objectReader;
        Type type3 = type2;
        for (int i2 = 0; i2 < startArray; i2++) {
            if (jSONReader.isReference()) {
                String readReference2 = jSONReader.readReference();
                if (Constants.ATTRVAL_PARENT.equals(readReference2)) {
                    readJSONBObject = collection2;
                } else {
                    jSONReader.addResolveTask(collection2, i2, JSONPath.m7282of(readReference2));
                    if (collection2 instanceof List) {
                        readJSONBObject = null;
                    }
                }
            } else {
                ObjectReader checkAutoType2 = jSONReader.checkAutoType(this.f12698f, this.f12700h, j);
                readJSONBObject = checkAutoType2 != null ? checkAutoType2.readJSONBObject(jSONReader, type3, Integer.valueOf(i2), j) : objectReader2.readJSONBObject(jSONReader, type3, Integer.valueOf(i2), j);
            }
            collection2.add(readJSONBObject);
        }
        return function2 != null ? function2.apply(collection2) : collection2;
    }

    @Override // com.alibaba.fastjson2.reader.ObjectReader
    public Object readObject(JSONReader jSONReader, Type type, Object obj, long j) {
        Object readObject;
        JSONReader.Context context = jSONReader.context;
        if (this.f12703k == null) {
            this.f12703k = context.getObjectReader(this.f12697e);
        }
        if (jSONReader.jsonb) {
            return readJSONBObject(jSONReader, type, obj, 0L);
        }
        if (jSONReader.readIfNull()) {
            return null;
        }
        Collection hashSet = jSONReader.nextIfSet() ? new HashSet() : (Collection) createInstance(context.features | j);
        char current = jSONReader.current();
        if (current == '\"') {
            String readString = jSONReader.readString();
            if (this.f12698f == String.class) {
                jSONReader.nextIfComma();
                hashSet.add(readString);
                return hashSet;
            }
            if (readString.isEmpty()) {
                jSONReader.nextIfComma();
                return null;
            }
            Function typeConvert = context.provider.getTypeConvert(String.class, this.f12697e);
            if (typeConvert == null) {
                throw new JSONException(jSONReader.info());
            }
            Object apply = typeConvert.apply(readString);
            jSONReader.nextIfComma();
            hashSet.add(apply);
            return hashSet;
        }
        int i = 0;
        if (current != '[') {
            Class cls = this.f12698f;
            if ((cls == Object.class || this.f12703k == null) && !(cls == Object.class && jSONReader.isObject())) {
                throw new JSONException(jSONReader.info());
            }
            hashSet.add(this.f12703k.readObject(jSONReader, this.f12697e, 0, 0L));
            Function function = this.f12701i;
            return function != null ? (Collection) function.apply(hashSet) : hashSet;
        }
        jSONReader.next();
        ObjectReader objectReader = this.f12703k;
        Type type2 = this.f12697e;
        if (type != null && type != this.f12693a && (type instanceof ParameterizedType)) {
            Type[] actualTypeArguments = ((ParameterizedType) type).getActualTypeArguments();
            if (actualTypeArguments.length == 1 && (type2 = actualTypeArguments[0]) != this.f12697e) {
                objectReader = jSONReader.getObjectReader(type2);
            }
        }
        while (!jSONReader.nextIfArrayEnd()) {
            if (jSONReader.current() == ',') {
                throw new JSONException(jSONReader.info("illegal input error"));
            }
            if (type2 == String.class) {
                readObject = jSONReader.readString();
            } else {
                if (objectReader == null) {
                    throw new JSONException(jSONReader.info("TODO : " + type2));
                }
                if (jSONReader.isReference()) {
                    String readReference = jSONReader.readReference();
                    if (Constants.ATTRVAL_PARENT.equals(readReference)) {
                        readObject = this;
                    } else {
                        jSONReader.addResolveTask(hashSet, i, JSONPath.m7282of(readReference));
                        i++;
                    }
                } else {
                    readObject = objectReader.readObject(jSONReader, type2, Integer.valueOf(i), 0L);
                }
            }
            hashSet.add(readObject);
            i++;
        }
        jSONReader.nextIfComma();
        Function function2 = this.f12701i;
        return function2 != null ? function2.apply(hashSet) : hashSet;
    }

    public ObjectReaderImplList(Type type, Class cls, Class cls2, Type type2, Function function) {
        this.f12693a = type;
        this.f12694b = cls;
        this.f12695c = cls2;
        this.f12696d = Fnv.hashCode64(TypeUtils.getTypeName(cls2));
        this.f12697e = type2;
        Class<?> cls3 = TypeUtils.getClass(type2);
        this.f12698f = cls3;
        this.f12701i = function;
        String typeName = cls3 != null ? TypeUtils.getTypeName((Class) cls3) : null;
        this.f12699g = typeName;
        this.f12700h = typeName != null ? Fnv.hashCode64(typeName) : 0L;
    }

    public ObjectReaderImplList(Type type, Class cls, Class cls2, long j, Type type2, Class cls3, Function function, String str, long j2) {
        this.f12693a = type;
        this.f12694b = cls;
        this.f12695c = cls2;
        this.f12696d = j;
        this.f12697e = type2;
        this.f12698f = cls3;
        this.f12701i = function;
        this.f12699g = str;
        this.f12700h = j2;
    }

    @Override // com.alibaba.fastjson2.reader.ObjectReader
    public Object createInstance(long j) {
        JSONException jSONException;
        Class cls = this.f12695c;
        if (cls == ArrayList.class) {
            return new ArrayList();
        }
        if (cls == LinkedList.class) {
            return new LinkedList();
        }
        if (cls == HashSet.class) {
            return new HashSet();
        }
        if (cls == LinkedHashSet.class) {
            return new LinkedHashSet();
        }
        if (cls == TreeSet.class) {
            return new TreeSet();
        }
        Object obj = this.f12702j;
        if (obj != null) {
            return obj;
        }
        if (cls != null) {
            if (this.f12704l) {
                jSONException = null;
            } else {
                try {
                    return this.f12695c.newInstance();
                } catch (IllegalAccessException | InstantiationException unused) {
                    this.f12704l = true;
                    jSONException = new JSONException("create list error, type " + this.f12695c);
                }
            }
            if (this.f12704l && List.class.isAssignableFrom(this.f12695c.getSuperclass())) {
                try {
                    return this.f12695c.getSuperclass().newInstance();
                } catch (IllegalAccessException | InstantiationException unused2) {
                    this.f12704l = true;
                    jSONException = new JSONException("create list error, type " + this.f12695c);
                }
            }
            if (jSONException != null) {
                throw jSONException;
            }
        }
        return new ArrayList();
    }
}
