package com.alibaba.fastjson2.reader;

import com.alibaba.fastjson2.JSONArray;
import com.alibaba.fastjson2.JSONB;
import com.alibaba.fastjson2.JSONException;
import com.alibaba.fastjson2.JSONFactory;
import com.alibaba.fastjson2.JSONObject;
import com.alibaba.fastjson2.JSONReader;
import com.alibaba.fastjson2.util.BeanUtils;
import com.alibaba.fastjson2.util.Fnv;
import com.alibaba.fastjson2.writer.ObjectWriterAdapter;
import com.sunia.HTREnginev2.gbk;
import com.sunia.HTREnginev2.iag;
import com.sunia.HTREnginev2.jae;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Type;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;
import java.util.function.Function;
import java.util.function.Supplier;

/* loaded from: classes3.dex */
public class ObjectReaderAdapter<T> extends ObjectReaderBean<T> {

    /* renamed from: b */
    public final long[] f12633b;

    /* renamed from: c */
    public final short[] f12634c;

    /* renamed from: d */
    public final long[] f12635d;

    /* renamed from: e */
    public final short[] f12636e;

    /* renamed from: f */
    public final Constructor f12637f;
    protected final FieldReader[] fieldReaders;

    /* renamed from: g */
    public final int f12638g;

    /* renamed from: h */
    public final Class[] f12639h;

    /* renamed from: i */
    public final String[] f12640i;

    /* renamed from: j */
    public final Class f12641j;

    /* renamed from: k */
    public final Map<Long, Class> f12642k;
    protected final String typeKey;
    protected final long typeKeyHashCode;

    public ObjectReaderAdapter(Class cls, Supplier<T> supplier, FieldReader... fieldReaderArr) {
        this(cls, null, null, 0L, supplier, null, fieldReaderArr);
    }

    public Object auoType(JSONReader jSONReader, Class cls, long j) {
        long readTypeHashCode = jSONReader.readTypeHashCode();
        JSONReader.Context context = jSONReader.context;
        ObjectReader objectReaderAutoType = jSONReader.isSupportAutoTypeOrHandler(j) ? context.getObjectReaderAutoType(readTypeHashCode) : null;
        if (objectReaderAutoType == null) {
            String string = jSONReader.getString();
            ObjectReader objectReaderAutoType2 = context.getObjectReaderAutoType(string, cls, this.features | j | context.features);
            if (objectReaderAutoType2 != null) {
                objectReaderAutoType = objectReaderAutoType2;
            } else {
                if (cls != this.objectClass) {
                    throw new JSONException(jSONReader.info("auotype not support : " + string));
                }
                objectReaderAutoType = this;
            }
        }
        return objectReaderAutoType.readObject(jSONReader, null, null, j);
    }

    public T autoType(JSONReader jSONReader) {
        long readTypeHashCode = jSONReader.readTypeHashCode();
        JSONReader.Context context = jSONReader.context;
        ObjectReader autoType = autoType(context, readTypeHashCode);
        if (autoType == null) {
            String string = jSONReader.getString();
            ObjectReader objectReaderAutoType = context.getObjectReaderAutoType(string, null);
            if (objectReaderAutoType == null) {
                throw new JSONException(jSONReader.info("auotype not support : " + string));
            }
            autoType = objectReaderAutoType;
        }
        return (T) autoType.readJSONBObject(jSONReader, null, null, this.features);
    }

    @Override // com.alibaba.fastjson2.reader.ObjectReader
    public T createInstance(Collection collection) {
        T createInstance = createInstance(0L);
        int i = 0;
        for (Object obj : collection) {
            FieldReader[] fieldReaderArr = this.fieldReaders;
            if (i >= fieldReaderArr.length) {
                break;
            }
            fieldReaderArr[i].accept((FieldReader) createInstance, obj);
            i++;
        }
        return createInstance;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public Object createInstance0(long j) throws InstantiationException {
        Constructor constructor;
        if ((j & JSONReader.Feature.UseDefaultConstructorAsPossible.mask) == 0 || (constructor = this.f12637f) == null || constructor.getParameterCount() != 0) {
            Supplier<T> supplier = this.creator;
            if (supplier != null) {
                return supplier.get();
            }
            throw new JSONException("create instance error, " + this.objectClass);
        }
        try {
            Object newInstance = this.f12637f.newInstance(new Object[0]);
            if (this.hasDefaultValue) {
                initDefaultValue(newInstance);
            }
            return newInstance;
        } catch (IllegalAccessException | InstantiationException | InvocationTargetException e) {
            throw new JSONException("create instance error, " + this.objectClass, e);
        }
    }

    @Override // com.alibaba.fastjson2.reader.ObjectReader
    public final Function getBuildFunction() {
        return this.buildFunction;
    }

    @Override // com.alibaba.fastjson2.reader.ObjectReader
    public final long getFeatures() {
        return this.features;
    }

    @Override // com.alibaba.fastjson2.reader.ObjectReader
    public FieldReader getFieldReader(long j) {
        int binarySearch = Arrays.binarySearch(this.f12633b, j);
        if (binarySearch < 0) {
            return null;
        }
        return this.fieldReaders[this.f12634c[binarySearch]];
    }

    @Override // com.alibaba.fastjson2.reader.ObjectReader
    public FieldReader getFieldReaderLCase(long j) {
        int binarySearch = Arrays.binarySearch(this.f12635d, j);
        if (binarySearch < 0) {
            return null;
        }
        return this.fieldReaders[this.f12636e[binarySearch]];
    }

    public FieldReader[] getFieldReaders() {
        FieldReader[] fieldReaderArr = this.fieldReaders;
        return (FieldReader[]) Arrays.copyOf(fieldReaderArr, fieldReaderArr.length);
    }

    @Override // com.alibaba.fastjson2.reader.ObjectReader
    public final String getTypeKey() {
        return this.typeKey;
    }

    @Override // com.alibaba.fastjson2.reader.ObjectReader
    public final long getTypeKeyHash() {
        return this.typeKeyHashCode;
    }

    @Override // com.alibaba.fastjson2.reader.ObjectReaderBean
    public void initDefaultValue(T t) {
        for (FieldReader fieldReader : this.fieldReaders) {
            Object obj = fieldReader.defaultValue;
            if (obj != null) {
                fieldReader.accept((FieldReader) t, obj);
            }
        }
    }

    @Override // com.alibaba.fastjson2.reader.ObjectReaderBean
    public void initStringFieldAsEmpty(Object obj) {
        int i = 0;
        while (true) {
            FieldReader[] fieldReaderArr = this.fieldReaders;
            if (i >= fieldReaderArr.length) {
                return;
            }
            FieldReader fieldReader = fieldReaderArr[i];
            if (fieldReader.fieldClass == String.class) {
                fieldReader.accept((FieldReader) obj, (Object) "");
            }
            i++;
        }
    }

    @Override // com.alibaba.fastjson2.reader.ObjectReader
    public T readArrayMappingJSONBObject(JSONReader jSONReader, Type type, Object obj, long j) {
        FieldReader[] fieldReaderArr;
        if (!this.serializable) {
            jSONReader.errorOnNoneSerializable(this.objectClass);
        }
        ObjectReader checkAutoType = checkAutoType(jSONReader, this.objectClass, this.features | j);
        if (checkAutoType != null && checkAutoType != this && checkAutoType.getObjectClass() != this.objectClass) {
            return (T) checkAutoType.readArrayMappingJSONBObject(jSONReader, type, obj, j);
        }
        int startArray = jSONReader.startArray();
        T createInstance = createInstance(0L);
        int i = 0;
        while (true) {
            fieldReaderArr = this.fieldReaders;
            if (i >= fieldReaderArr.length) {
                break;
            }
            if (i < startArray) {
                fieldReaderArr[i].readFieldValue(jSONReader, createInstance);
            }
            i++;
        }
        for (int length = fieldReaderArr.length; length < startArray; length++) {
            jSONReader.skipValue();
        }
        Function function = this.buildFunction;
        return function != null ? (T) function.apply(createInstance) : createInstance;
    }

    @Override // com.alibaba.fastjson2.reader.ObjectReader
    public T readArrayMappingObject(JSONReader jSONReader, Type type, Object obj, long j) {
        if (!this.serializable) {
            jSONReader.errorOnNoneSerializable(this.objectClass);
        }
        jSONReader.nextIfArrayStart();
        T t = this.creator.get();
        int i = 0;
        while (true) {
            FieldReader[] fieldReaderArr = this.fieldReaders;
            if (i >= fieldReaderArr.length) {
                break;
            }
            fieldReaderArr[i].readFieldValue(jSONReader, t);
            i++;
        }
        if (!jSONReader.nextIfArrayEnd()) {
            throw new JSONException(jSONReader.info("array to bean end error"));
        }
        jSONReader.nextIfComma();
        Function function = this.buildFunction;
        return function != null ? (T) function.apply(t) : t;
    }

    @Override // com.alibaba.fastjson2.reader.ObjectReader
    public T readJSONBObject(JSONReader jSONReader, Type type, Object obj, long j) {
        if (jSONReader.nextIfNull()) {
            return null;
        }
        ObjectReader checkAutoType = jSONReader.checkAutoType(this.objectClass, getTypeNameHash(), this.features | j);
        if (checkAutoType != null && checkAutoType.getObjectClass() != this.objectClass) {
            return (T) checkAutoType.readJSONBObject(jSONReader, type, obj, j);
        }
        if (!this.serializable) {
            jSONReader.errorOnNoneSerializable(this.objectClass);
        }
        if (jSONReader.isArray()) {
            if (jSONReader.isSupportBeanArray()) {
                return readArrayMappingJSONBObject(jSONReader, type, obj, j);
            }
            throw new JSONException(jSONReader.info("expect object, but " + JSONB.typeName(jSONReader.getType())));
        }
        jSONReader.nextIfObjectStart();
        int i = 0;
        T t = null;
        while (!jSONReader.nextIfObjectEnd()) {
            long readFieldNameHashCode = jSONReader.readFieldNameHashCode();
            if (readFieldNameHashCode == this.typeKeyHashCode && i == 0) {
                long readValueHashCode = jSONReader.readValueHashCode();
                JSONReader.Context context = jSONReader.context;
                ObjectReader autoType = autoType(context, readValueHashCode);
                if (autoType == null) {
                    String string = jSONReader.getString();
                    ObjectReader objectReaderAutoType = context.getObjectReaderAutoType(string, null);
                    if (objectReaderAutoType == null) {
                        throw new JSONException(jSONReader.info("auotype not support : " + string));
                    }
                    autoType = objectReaderAutoType;
                }
                if (autoType != this) {
                    jSONReader.setTypeRedirect(true);
                    return (T) autoType.readJSONBObject(jSONReader, type, obj, j);
                }
            } else if (readFieldNameHashCode != 0) {
                FieldReader fieldReader = getFieldReader(readFieldNameHashCode);
                if (fieldReader == null && jSONReader.isSupportSmartMatch(this.features | j)) {
                    fieldReader = getFieldReaderLCase(jSONReader.getNameHashCodeLCase());
                }
                if (fieldReader == null) {
                    processExtra(jSONReader, t, j);
                } else {
                    if (t == null) {
                        t = createInstance(jSONReader.context.features | j);
                    }
                    fieldReader.readFieldValue(jSONReader, t);
                }
            }
            i++;
        }
        return t == null ? createInstance(jSONReader.context.features | j) : t;
    }

    public ObjectReaderAdapter(Class cls, String str, String str2, long j, Supplier<T> supplier, Function function, FieldReader... fieldReaderArr) {
        this(cls, str, str2, j, supplier, function, null, null, null, fieldReaderArr);
    }

    public ObjectReaderAdapter(Class cls, String str, String str2, long j, Supplier<T> supplier, Function function, Class[] clsArr, String[] strArr, FieldReader... fieldReaderArr) {
        this(cls, str, str2, j, supplier, function, clsArr, strArr, null, fieldReaderArr);
    }

    public ObjectReaderAdapter(Class cls, String str, String str2, long j, Supplier<T> supplier, Function function, Class[] clsArr, String[] strArr, Class cls2, FieldReader... fieldReaderArr) {
        super(cls, supplier, str2, j, function);
        Constructor defaultConstructor;
        FieldReader fieldReader;
        if (supplier instanceof jae) {
            defaultConstructor = ((jae) supplier).f74102e;
        } else {
            defaultConstructor = cls == null ? null : BeanUtils.getDefaultConstructor(cls, true);
            if (defaultConstructor != null) {
                defaultConstructor.setAccessible(true);
            }
        }
        if (defaultConstructor != null) {
            this.f12638g = defaultConstructor.getParameterCount();
        } else {
            this.f12638g = -1;
        }
        this.f12637f = defaultConstructor;
        if (str != null && !str.isEmpty()) {
            this.typeKey = str;
            this.typeKeyHashCode = Fnv.hashCode64(str);
        } else {
            this.typeKey = ObjectWriterAdapter.f12832t;
            this.typeKeyHashCode = ObjectReader.HASH_TYPE;
        }
        this.fieldReaders = fieldReaderArr;
        int length = fieldReaderArr.length;
        long[] jArr = new long[length];
        int length2 = fieldReaderArr.length;
        long[] jArr2 = new long[length2];
        for (int i = 0; i < fieldReaderArr.length; i++) {
            FieldReader fieldReader2 = fieldReaderArr[i];
            jArr[i] = fieldReader2.f12469f;
            jArr2[i] = fieldReader2.f12470g;
            if (fieldReader2.isUnwrapped() && ((fieldReader = this.extraFieldReader) == null || !(fieldReader instanceof iag))) {
                this.extraFieldReader = fieldReader2;
            }
            if (fieldReader2.defaultValue != null) {
                this.hasDefaultValue = true;
            }
        }
        long[] copyOf = Arrays.copyOf(jArr, length);
        this.f12633b = copyOf;
        Arrays.sort(copyOf);
        this.f12634c = new short[copyOf.length];
        for (int i2 = 0; i2 < length; i2++) {
            this.f12634c[Arrays.binarySearch(this.f12633b, jArr[i2])] = (short) i2;
        }
        long[] copyOf2 = Arrays.copyOf(jArr2, length2);
        this.f12635d = copyOf2;
        Arrays.sort(copyOf2);
        this.f12636e = new short[copyOf2.length];
        for (int i3 = 0; i3 < length2; i3++) {
            this.f12636e[Arrays.binarySearch(this.f12635d, jArr2[i3])] = (short) i3;
        }
        this.f12639h = clsArr;
        if (clsArr != null) {
            this.f12642k = new HashMap(clsArr.length);
            this.f12640i = new String[clsArr.length];
            for (int i4 = 0; i4 < clsArr.length; i4++) {
                Class cls3 = clsArr[i4];
                String str3 = (strArr == null || strArr.length < i4 + 1) ? null : strArr[i4];
                if (str3 == null || str3.isEmpty()) {
                    str3 = cls3.getSimpleName();
                }
                this.f12642k.put(Long.valueOf(Fnv.hashCode64(str3)), cls3);
                this.f12640i[i4] = str3;
            }
        } else {
            this.f12642k = null;
            this.f12640i = null;
        }
        this.f12641j = cls2;
    }

    @Override // com.alibaba.fastjson2.reader.ObjectReader
    public T createInstance(long j) {
        T t;
        Constructor constructor = this.f12637f;
        if (constructor != null && this.f12638g == 0) {
            try {
                t = (T) constructor.newInstance(new Object[0]);
            } catch (IllegalAccessException | InstantiationException | InvocationTargetException e) {
                throw new JSONException("create instance error, " + this.objectClass, e);
            }
        } else {
            Supplier<T> supplier = this.creator;
            if (supplier != null) {
                t = supplier.get();
            } else {
                throw new JSONException("create instance error, " + this.objectClass);
            }
        }
        if (this.hasDefaultValue) {
            initDefaultValue(t);
        }
        return t;
    }

    @Override // com.alibaba.fastjson2.reader.ObjectReader
    public ObjectReader autoType(ObjectReaderProvider objectReaderProvider, long j) {
        Map<Long, Class> map = this.f12642k;
        if (map != null && map.size() > 0) {
            Class cls = this.f12642k.get(Long.valueOf(j));
            if (cls == null) {
                return null;
            }
            return objectReaderProvider.getObjectReader(cls);
        }
        return objectReaderProvider.getObjectReader(j);
    }

    @Override // com.alibaba.fastjson2.reader.ObjectReader
    public ObjectReader autoType(JSONReader.Context context, long j) {
        Map<Long, Class> map = this.f12642k;
        if (map != null && map.size() > 0) {
            Class cls = this.f12642k.get(Long.valueOf(j));
            if (cls == null) {
                return null;
            }
            return context.getObjectReader(cls);
        }
        return context.getObjectReaderAutoType(j);
    }

    @Override // com.alibaba.fastjson2.reader.ObjectReader
    public T createInstance(Map map, long j) {
        ObjectReaderProvider defaultObjectReaderProvider = JSONFactory.getDefaultObjectReaderProvider();
        Object obj = map.get(this.typeKey);
        long j2 = this.features | j;
        if (obj instanceof String) {
            String str = (String) obj;
            ObjectReader autoType = ((JSONReader.Feature.SupportAutoType.mask & j) != 0 || (this instanceof gbk)) ? autoType(defaultObjectReaderProvider, Fnv.hashCode64(str)) : null;
            if (autoType == null) {
                autoType = defaultObjectReaderProvider.getObjectReader(str, getObjectClass(), j2);
            }
            if (autoType != this && autoType != null) {
                return (T) autoType.createInstance(map, j);
            }
        }
        T createInstance = createInstance(0L);
        if (this.extraFieldReader == null && ((JSONReader.Feature.SupportSmartMatch.mask | JSONReader.Feature.ErrorOnUnknownProperties.mask) & j2) == 0) {
            long j3 = j2 & JSONReader.Feature.FieldBased.mask;
            int i = 0;
            boolean z = j3 != 0;
            while (true) {
                FieldReader[] fieldReaderArr = this.fieldReaders;
                if (i >= fieldReaderArr.length) {
                    break;
                }
                FieldReader fieldReader = fieldReaderArr[i];
                Object obj2 = map.get(fieldReader.fieldName);
                if (obj2 != null) {
                    Class<?> cls = obj2.getClass();
                    Type type = fieldReader.fieldType;
                    if (cls == type) {
                        fieldReader.accept((FieldReader) createInstance, obj2);
                    } else if ((fieldReader instanceof FieldReaderList) && (obj2 instanceof JSONArray)) {
                        fieldReader.accept((FieldReader) createInstance, fieldReader.getObjectReader(defaultObjectReaderProvider).createInstance((JSONArray) obj2));
                    } else if ((obj2 instanceof JSONObject) && type != JSONObject.class) {
                        fieldReader.accept((FieldReader) createInstance, defaultObjectReaderProvider.getObjectReader(type, z).createInstance((JSONObject) obj2, j));
                    } else {
                        fieldReader.acceptAny(createInstance, obj2, j);
                    }
                }
                i++;
            }
        } else {
            for (Map.Entry entry : map.entrySet()) {
                String obj3 = entry.getKey().toString();
                Object value = entry.getValue();
                FieldReader fieldReader2 = getFieldReader(obj3);
                if (fieldReader2 == null) {
                    acceptExtra(createInstance, obj3, entry.getValue(), j);
                } else if (value != null && value.getClass() == fieldReader2.fieldType) {
                    fieldReader2.accept((FieldReader) createInstance, value);
                } else {
                    fieldReader2.acceptAny(createInstance, value, j);
                }
            }
        }
        Function function = this.buildFunction;
        return function != null ? (T) function.apply(createInstance) : createInstance;
    }
}
