package com.alibaba.fastjson2.reader;

import com.alibaba.fastjson2.JSONB;
import com.alibaba.fastjson2.JSONException;
import com.alibaba.fastjson2.JSONReader;
import com.alibaba.fastjson2.util.JDKUtils;
import java.lang.reflect.Type;
import java.util.function.Function;
import java.util.function.Supplier;

/* loaded from: classes3.dex */
public class ObjectReader1<T> extends ObjectReaderAdapter<T> {
    protected final FieldReader fieldReader0;

    /* renamed from: l */
    public final long f12481l;

    /* renamed from: m */
    public final long f12482m;
    protected ObjectReader objectReader0;

    public ObjectReader1(Class cls, String str, String str2, long j, Supplier<T> supplier, Function function, FieldReader... fieldReaderArr) {
        super(cls, str, str2, j, supplier, function, null, null, null, fieldReaderArr);
        FieldReader fieldReader = fieldReaderArr[0];
        this.fieldReader0 = fieldReader;
        this.f12481l = fieldReader.f12469f;
        this.f12482m = fieldReader.f12470g;
        this.hasDefaultValue = fieldReader.defaultValue != null;
    }

    @Override // com.alibaba.fastjson2.reader.ObjectReaderAdapter, com.alibaba.fastjson2.reader.ObjectReader
    public FieldReader getFieldReader(long j) {
        if (j == this.f12481l) {
            return this.fieldReader0;
        }
        return null;
    }

    @Override // com.alibaba.fastjson2.reader.ObjectReaderAdapter, com.alibaba.fastjson2.reader.ObjectReader
    public FieldReader getFieldReaderLCase(long j) {
        if (j == this.f12482m) {
            return this.fieldReader0;
        }
        return null;
    }

    @Override // com.alibaba.fastjson2.reader.ObjectReaderAdapter, com.alibaba.fastjson2.reader.ObjectReaderBean
    public void initDefaultValue(T t) {
        this.fieldReader0.acceptDefaultValue(t);
    }

    @Override // com.alibaba.fastjson2.reader.ObjectReaderAdapter, com.alibaba.fastjson2.reader.ObjectReader
    public T readArrayMappingJSONBObject(JSONReader jSONReader, Type type, Object obj, long j) {
        if (!this.serializable) {
            jSONReader.errorOnNoneSerializable(this.objectClass);
        }
        ObjectReader checkAutoType = checkAutoType(jSONReader, this.objectClass, this.features | j);
        if (checkAutoType != null && checkAutoType != this && checkAutoType.getObjectClass() != this.objectClass) {
            return (T) checkAutoType.readArrayMappingJSONBObject(jSONReader, type, obj, j);
        }
        T t = this.creator.get();
        int startArray = jSONReader.startArray();
        if (startArray > 0) {
            this.fieldReader0.readFieldValue(jSONReader, t);
            for (int i = 1; i < startArray; i++) {
                jSONReader.skipValue();
            }
        }
        Function function = this.buildFunction;
        return function != null ? (T) function.apply(t) : t;
    }

    @Override // com.alibaba.fastjson2.reader.ObjectReaderAdapter, com.alibaba.fastjson2.reader.ObjectReader
    public T readJSONBObject(JSONReader jSONReader, Type type, Object obj, long j) {
        T t;
        if (!this.serializable) {
            jSONReader.errorOnNoneSerializable(this.objectClass);
        }
        ObjectReader checkAutoType = checkAutoType(jSONReader, this.objectClass, this.features | j);
        if (checkAutoType != null && checkAutoType != this && checkAutoType.getObjectClass() != this.objectClass) {
            return (T) checkAutoType.readJSONBObject(jSONReader, type, obj, j);
        }
        if (jSONReader.isArray()) {
            T t2 = this.creator.get();
            int startArray = jSONReader.startArray();
            if (startArray > 0) {
                this.fieldReader0.readFieldValue(jSONReader, t2);
                for (int i = 1; i < startArray; i++) {
                    jSONReader.skipValue();
                }
            }
            Function function = this.buildFunction;
            return function != null ? (T) function.apply(t2) : t2;
        }
        int i2 = 0;
        if (!jSONReader.nextIfMatch(JSONB.Constants.BC_OBJECT)) {
            if (!jSONReader.isTypeRedirect()) {
                throw new JSONException(jSONReader.info("expect object, but " + JSONB.typeName(jSONReader.getType())));
            }
            jSONReader.setTypeRedirect(false);
        }
        Supplier<T> supplier = this.creator;
        if (supplier != null) {
            t = supplier.get();
        } else if (((jSONReader.context.features | j) & JSONReader.Feature.FieldBased.mask) != 0) {
            try {
                t = (T) JDKUtils.UNSAFE.allocateInstance(this.objectClass);
            } catch (InstantiationException e) {
                throw new JSONException(jSONReader.info("create instance error"), e);
            }
        } else {
            t = null;
        }
        if (t != null && this.hasDefaultValue) {
            initDefaultValue(t);
        }
        while (!jSONReader.nextIfMatch(JSONB.Constants.BC_OBJECT_END)) {
            long readFieldNameHashCode = jSONReader.readFieldNameHashCode();
            if (readFieldNameHashCode == getTypeKeyHash() && i2 == 0) {
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
                if (autoType != this) {
                    return (T) autoType.readJSONBObject(jSONReader, type, obj, j);
                }
            } else if (readFieldNameHashCode != 0) {
                if (readFieldNameHashCode == this.f12481l) {
                    this.fieldReader0.readFieldValueJSONB(jSONReader, t);
                } else if (jSONReader.isSupportSmartMatch(this.features | j) && jSONReader.getNameHashCodeLCase() == this.f12482m) {
                    this.fieldReader0.readFieldValue(jSONReader, t);
                } else {
                    processExtra(jSONReader, t, j);
                }
            }
            i2++;
        }
        Function function2 = this.buildFunction;
        return function2 != null ? (T) function2.apply(t) : t;
    }

    @Override // com.alibaba.fastjson2.reader.ObjectReader
    public T readObject(JSONReader jSONReader) {
        return readObject(jSONReader, null, null, this.features);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v14, types: [com.alibaba.fastjson2.reader.ObjectReader] */
    /* JADX WARN: Type inference failed for: r2v17, types: [com.alibaba.fastjson2.reader.ObjectReader] */
    @Override // com.alibaba.fastjson2.reader.ObjectReaderBean, com.alibaba.fastjson2.reader.ObjectReader
    public T readObject(JSONReader jSONReader, Type type, Object obj, long j) {
        if (!this.serializable) {
            jSONReader.errorOnNoneSerializable(this.objectClass);
        }
        if (jSONReader.jsonb) {
            return readJSONBObject(jSONReader, type, obj, 0L);
        }
        T t = null;
        if (jSONReader.nextIfNullOrEmptyString()) {
            return null;
        }
        long features = jSONReader.features(this.features | j);
        if (jSONReader.isArray()) {
            if ((JSONReader.Feature.SupportArrayToBean.mask & features) != 0) {
                jSONReader.next();
                T t2 = this.creator.get();
                this.fieldReader0.readFieldValue(jSONReader, t2);
                if (jSONReader.nextIfArrayEnd()) {
                    jSONReader.nextIfComma();
                    Function function = this.buildFunction;
                    return function != null ? (T) function.apply(t2) : t2;
                }
                throw new JSONException(jSONReader.info("array to bean end error, " + jSONReader.current()));
            }
            return processObjectInputSingleItemArray(jSONReader, type, obj, features);
        }
        jSONReader.nextIfObjectStart();
        Supplier<T> supplier = this.creator;
        if (supplier != null) {
            t = supplier.get();
        }
        if (this.hasDefaultValue) {
            initDefaultValue(t);
        }
        if (t != null && (JSONReader.Feature.InitStringFieldAsEmpty.mask & features) != 0) {
            initStringFieldAsEmpty(t);
        }
        int i = 0;
        while (true) {
            if (jSONReader.nextIfObjectEnd()) {
                break;
            }
            long readFieldNameHashCode = jSONReader.readFieldNameHashCode();
            if (i == 0 && readFieldNameHashCode == ObjectReader.HASH_TYPE) {
                long readTypeHashCode = jSONReader.readTypeHashCode();
                JSONReader.Context context = jSONReader.context;
                ?? objectReaderAutoType = context.getObjectReaderAutoType(readTypeHashCode);
                ObjectReader1<T> objectReader1 = objectReaderAutoType;
                if (objectReaderAutoType == null) {
                    ?? objectReaderAutoType2 = context.getObjectReaderAutoType(jSONReader.getString(), this.objectClass);
                    objectReader1 = objectReaderAutoType2;
                    if (objectReaderAutoType2 == null) {
                        continue;
                    }
                }
                ObjectReader1<T> objectReader12 = objectReader1;
                if (objectReader12 != this) {
                    t = objectReader12.readObject(jSONReader, type, obj, j);
                    break;
                }
            } else if (readFieldNameHashCode == this.f12481l) {
                this.fieldReader0.readFieldValue(jSONReader, t);
            } else if (jSONReader.isSupportSmartMatch(this.features | j) && jSONReader.getNameHashCodeLCase() == this.f12482m) {
                this.fieldReader0.readFieldValue(jSONReader, t);
            } else {
                processExtra(jSONReader, t, j);
            }
            i++;
        }
        jSONReader.nextIfComma();
        Function function2 = this.buildFunction;
        return function2 != null ? (T) function2.apply(t) : t;
    }
}
