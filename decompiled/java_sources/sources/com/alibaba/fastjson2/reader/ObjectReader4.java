package com.alibaba.fastjson2.reader;

import com.alibaba.fastjson2.JSONB;
import com.alibaba.fastjson2.JSONException;
import com.alibaba.fastjson2.JSONReader;
import com.alibaba.fastjson2.util.JDKUtils;
import java.lang.reflect.Type;
import java.util.function.Function;
import java.util.function.Supplier;

/* loaded from: classes3.dex */
public class ObjectReader4<T> extends ObjectReaderAdapter<T> {
    protected final FieldReader fieldReader0;
    protected final FieldReader fieldReader1;
    protected final FieldReader fieldReader2;
    protected final FieldReader fieldReader3;

    /* renamed from: l */
    public final long f12555l;

    /* renamed from: m */
    public final long f12556m;

    /* renamed from: n */
    public final long f12557n;

    /* renamed from: o */
    public final long f12558o;
    protected ObjectReader objectReader0;
    protected ObjectReader objectReader1;
    protected ObjectReader objectReader2;
    protected ObjectReader objectReader3;

    /* renamed from: p */
    public final long f12559p;

    /* renamed from: q */
    public final long f12560q;

    /* renamed from: r */
    public final long f12561r;

    /* renamed from: s */
    public final long f12562s;

    public ObjectReader4(Class cls, String str, String str2, long j, Supplier<T> supplier, Function function, FieldReader... fieldReaderArr) {
        super(cls, str, str2, j, supplier, function, null, null, null, fieldReaderArr);
        FieldReader fieldReader = fieldReaderArr[0];
        this.fieldReader0 = fieldReader;
        FieldReader fieldReader2 = fieldReaderArr[1];
        this.fieldReader1 = fieldReader2;
        FieldReader fieldReader3 = fieldReaderArr[2];
        this.fieldReader2 = fieldReader3;
        FieldReader fieldReader4 = fieldReaderArr[3];
        this.fieldReader3 = fieldReader4;
        this.f12555l = fieldReader.f12469f;
        this.f12556m = fieldReader2.f12469f;
        this.f12557n = fieldReader3.f12469f;
        this.f12558o = fieldReader4.f12469f;
        this.f12559p = fieldReader.f12470g;
        this.f12560q = fieldReader2.f12470g;
        this.f12561r = fieldReader3.f12470g;
        this.f12562s = fieldReader4.f12470g;
        this.hasDefaultValue = (fieldReader.defaultValue == null && fieldReader2.defaultValue == null && fieldReader3.defaultValue == null && fieldReader4.defaultValue == null) ? false : true;
    }

    @Override // com.alibaba.fastjson2.reader.ObjectReaderAdapter, com.alibaba.fastjson2.reader.ObjectReader
    public FieldReader getFieldReader(long j) {
        if (j == this.f12555l) {
            return this.fieldReader0;
        }
        if (j == this.f12556m) {
            return this.fieldReader1;
        }
        if (j == this.f12557n) {
            return this.fieldReader2;
        }
        if (j == this.f12558o) {
            return this.fieldReader3;
        }
        return null;
    }

    @Override // com.alibaba.fastjson2.reader.ObjectReaderAdapter, com.alibaba.fastjson2.reader.ObjectReader
    public FieldReader getFieldReaderLCase(long j) {
        if (j == this.f12559p) {
            return this.fieldReader0;
        }
        if (j == this.f12560q) {
            return this.fieldReader1;
        }
        if (j == this.f12561r) {
            return this.fieldReader2;
        }
        if (j == this.f12562s) {
            return this.fieldReader3;
        }
        return null;
    }

    @Override // com.alibaba.fastjson2.reader.ObjectReaderAdapter, com.alibaba.fastjson2.reader.ObjectReaderBean
    public void initDefaultValue(T t) {
        this.fieldReader0.acceptDefaultValue(t);
        this.fieldReader1.acceptDefaultValue(t);
        this.fieldReader2.acceptDefaultValue(t);
        this.fieldReader3.acceptDefaultValue(t);
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
        int startArray = jSONReader.startArray();
        T t = this.creator.get();
        if (startArray > 0) {
            this.fieldReader0.readFieldValue(jSONReader, t);
            if (startArray > 1) {
                this.fieldReader1.readFieldValue(jSONReader, t);
                if (startArray > 2) {
                    this.fieldReader2.readFieldValue(jSONReader, t);
                    if (startArray > 3) {
                        this.fieldReader3.readFieldValue(jSONReader, t);
                        for (int i = 4; i < startArray; i++) {
                            jSONReader.skipValue();
                        }
                    }
                }
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
        if (jSONReader.isArray()) {
            T t2 = this.creator.get();
            int startArray = jSONReader.startArray();
            if (startArray > 0) {
                this.fieldReader0.readFieldValue(jSONReader, t2);
                if (startArray > 1) {
                    this.fieldReader1.readFieldValue(jSONReader, t2);
                    if (startArray > 2) {
                        this.fieldReader2.readFieldValue(jSONReader, t2);
                        if (startArray > 3) {
                            this.fieldReader3.readFieldValue(jSONReader, t2);
                            for (int i = 4; i < startArray; i++) {
                                jSONReader.skipValue();
                            }
                        }
                    }
                }
            }
            Function function = this.buildFunction;
            return function != null ? (T) function.apply(t2) : t2;
        }
        ObjectReader checkAutoType = jSONReader.checkAutoType(this.objectClass, getTypeNameHash(), this.features | j);
        if (checkAutoType != null && checkAutoType.getObjectClass() != this.objectClass) {
            return (T) checkAutoType.readJSONBObject(jSONReader, type, obj, j);
        }
        if (!jSONReader.nextIfMatch(JSONB.Constants.BC_OBJECT)) {
            throw new JSONException(jSONReader.info("expect object, but " + JSONB.typeName(jSONReader.getType())));
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
            if (readFieldNameHashCode != 0) {
                if (readFieldNameHashCode == this.f12555l) {
                    this.fieldReader0.readFieldValue(jSONReader, t);
                } else if (readFieldNameHashCode == this.f12556m) {
                    this.fieldReader1.readFieldValue(jSONReader, t);
                } else if (readFieldNameHashCode == this.f12557n) {
                    this.fieldReader2.readFieldValue(jSONReader, t);
                } else if (readFieldNameHashCode == this.f12558o) {
                    this.fieldReader3.readFieldValue(jSONReader, t);
                } else if (jSONReader.isSupportSmartMatch(this.features | j)) {
                    long nameHashCodeLCase = jSONReader.getNameHashCodeLCase();
                    if (nameHashCodeLCase == this.f12559p) {
                        this.fieldReader0.readFieldValue(jSONReader, t);
                    } else if (nameHashCodeLCase == this.f12560q) {
                        this.fieldReader1.readFieldValue(jSONReader, t);
                    } else if (nameHashCodeLCase == this.f12561r) {
                        this.fieldReader2.readFieldValue(jSONReader, t);
                    } else if (nameHashCodeLCase == this.f12562s) {
                        this.fieldReader3.readFieldValue(jSONReader, t);
                    } else {
                        processExtra(jSONReader, t, j);
                    }
                } else {
                    processExtra(jSONReader, t, j);
                }
            }
        }
        Function function2 = this.buildFunction;
        return function2 != null ? (T) function2.apply(t) : t;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v17, types: [com.alibaba.fastjson2.reader.ObjectReader] */
    /* JADX WARN: Type inference failed for: r2v20, types: [com.alibaba.fastjson2.reader.ObjectReader] */
    @Override // com.alibaba.fastjson2.reader.ObjectReaderBean, com.alibaba.fastjson2.reader.ObjectReader
    public T readObject(JSONReader jSONReader, Type type, Object obj, long j) {
        if (!this.serializable) {
            jSONReader.errorOnNoneSerializable(this.objectClass);
        }
        if (jSONReader.jsonb) {
            return readJSONBObject(jSONReader, type, obj, j);
        }
        if (jSONReader.nextIfNull()) {
            jSONReader.nextIfComma();
            return null;
        }
        long features = jSONReader.features(this.features | j);
        if (jSONReader.isArray()) {
            return (JSONReader.Feature.SupportArrayToBean.mask & features) != 0 ? readArrayMappingObject(jSONReader, type, obj, j) : processObjectInputSingleItemArray(jSONReader, type, obj, features);
        }
        jSONReader.nextIfObjectStart();
        T t = this.creator.get();
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
                ObjectReader4<T> objectReader4 = objectReaderAutoType;
                if (objectReaderAutoType == null) {
                    ?? objectReaderAutoType2 = context.getObjectReaderAutoType(jSONReader.getString(), this.objectClass);
                    objectReader4 = objectReaderAutoType2;
                    if (objectReaderAutoType2 == null) {
                        continue;
                    }
                }
                ObjectReader4<T> objectReader42 = objectReader4;
                if (objectReader42 != this) {
                    t = objectReader42.readObject(jSONReader, type, obj, j);
                    break;
                }
            } else if (readFieldNameHashCode == this.f12555l) {
                this.fieldReader0.readFieldValue(jSONReader, t);
            } else if (readFieldNameHashCode == this.f12556m) {
                this.fieldReader1.readFieldValue(jSONReader, t);
            } else if (readFieldNameHashCode == this.f12557n) {
                this.fieldReader2.readFieldValue(jSONReader, t);
            } else if (readFieldNameHashCode == this.f12558o) {
                this.fieldReader3.readFieldValue(jSONReader, t);
            } else if (jSONReader.isSupportSmartMatch(this.features | j)) {
                long nameHashCodeLCase = jSONReader.getNameHashCodeLCase();
                if (nameHashCodeLCase == this.f12559p) {
                    this.fieldReader0.readFieldValue(jSONReader, t);
                } else if (nameHashCodeLCase == this.f12560q) {
                    this.fieldReader1.readFieldValue(jSONReader, t);
                } else if (nameHashCodeLCase == this.f12561r) {
                    this.fieldReader2.readFieldValue(jSONReader, t);
                } else if (nameHashCodeLCase == this.f12562s) {
                    this.fieldReader3.readFieldValue(jSONReader, t);
                } else {
                    processExtra(jSONReader, t, j);
                }
            } else {
                processExtra(jSONReader, t, j);
            }
            i++;
        }
        jSONReader.nextIfComma();
        Function function = this.buildFunction;
        return function != null ? (T) function.apply(t) : t;
    }
}
