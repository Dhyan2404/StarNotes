package com.alibaba.fastjson2.reader;

import com.alibaba.fastjson2.JSONB;
import com.alibaba.fastjson2.JSONException;
import com.alibaba.fastjson2.JSONReader;
import com.alibaba.fastjson2.util.JDKUtils;
import java.lang.reflect.Type;
import java.util.function.Function;
import java.util.function.Supplier;

/* loaded from: classes3.dex */
public class ObjectReader5<T> extends ObjectReaderAdapter<T> {
    protected final FieldReader fieldReader0;
    protected final FieldReader fieldReader1;
    protected final FieldReader fieldReader2;
    protected final FieldReader fieldReader3;
    protected final FieldReader fieldReader4;

    /* renamed from: l */
    public final long f12563l;

    /* renamed from: m */
    public final long f12564m;

    /* renamed from: n */
    public final long f12565n;

    /* renamed from: o */
    public final long f12566o;
    protected ObjectReader objectReader0;
    protected ObjectReader objectReader1;
    protected ObjectReader objectReader2;
    protected ObjectReader objectReader3;
    protected ObjectReader objectReader4;

    /* renamed from: p */
    public final long f12567p;

    /* renamed from: q */
    public final long f12568q;

    /* renamed from: r */
    public final long f12569r;

    /* renamed from: s */
    public final long f12570s;

    /* renamed from: t */
    public final long f12571t;

    /* renamed from: u */
    public final long f12572u;

    public ObjectReader5(Class cls, String str, String str2, long j, Supplier<T> supplier, Function function, FieldReader... fieldReaderArr) {
        super(cls, str, str2, j, supplier, function, null, null, null, fieldReaderArr);
        FieldReader fieldReader = fieldReaderArr[0];
        this.fieldReader0 = fieldReader;
        FieldReader fieldReader2 = fieldReaderArr[1];
        this.fieldReader1 = fieldReader2;
        FieldReader fieldReader3 = fieldReaderArr[2];
        this.fieldReader2 = fieldReader3;
        FieldReader fieldReader4 = fieldReaderArr[3];
        this.fieldReader3 = fieldReader4;
        FieldReader fieldReader5 = fieldReaderArr[4];
        this.fieldReader4 = fieldReader5;
        this.f12563l = fieldReader.f12469f;
        this.f12564m = fieldReader2.f12469f;
        this.f12565n = fieldReader3.f12469f;
        this.f12566o = fieldReader4.f12469f;
        this.f12567p = fieldReader5.f12469f;
        this.f12568q = fieldReader.f12470g;
        this.f12569r = fieldReader2.f12470g;
        this.f12570s = fieldReader3.f12470g;
        this.f12571t = fieldReader4.f12470g;
        this.f12572u = fieldReader5.f12470g;
        this.hasDefaultValue = (fieldReader.defaultValue == null && fieldReader2.defaultValue == null && fieldReader3.defaultValue == null && fieldReader4.defaultValue == null && fieldReader5.defaultValue == null) ? false : true;
    }

    @Override // com.alibaba.fastjson2.reader.ObjectReaderAdapter, com.alibaba.fastjson2.reader.ObjectReader
    public FieldReader getFieldReader(long j) {
        if (j == this.f12563l) {
            return this.fieldReader0;
        }
        if (j == this.f12564m) {
            return this.fieldReader1;
        }
        if (j == this.f12565n) {
            return this.fieldReader2;
        }
        if (j == this.f12566o) {
            return this.fieldReader3;
        }
        if (j == this.f12567p) {
            return this.fieldReader4;
        }
        return null;
    }

    @Override // com.alibaba.fastjson2.reader.ObjectReaderAdapter, com.alibaba.fastjson2.reader.ObjectReader
    public FieldReader getFieldReaderLCase(long j) {
        if (j == this.f12568q) {
            return this.fieldReader0;
        }
        if (j == this.f12569r) {
            return this.fieldReader1;
        }
        if (j == this.f12570s) {
            return this.fieldReader2;
        }
        if (j == this.f12571t) {
            return this.fieldReader3;
        }
        if (j == this.f12572u) {
            return this.fieldReader4;
        }
        return null;
    }

    @Override // com.alibaba.fastjson2.reader.ObjectReaderAdapter, com.alibaba.fastjson2.reader.ObjectReaderBean
    public void initDefaultValue(T t) {
        this.fieldReader0.acceptDefaultValue(t);
        this.fieldReader1.acceptDefaultValue(t);
        this.fieldReader2.acceptDefaultValue(t);
        this.fieldReader3.acceptDefaultValue(t);
        this.fieldReader4.acceptDefaultValue(t);
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
            if (startArray > 1) {
                this.fieldReader1.readFieldValue(jSONReader, t);
                if (startArray > 2) {
                    this.fieldReader2.readFieldValue(jSONReader, t);
                    if (startArray > 3) {
                        this.fieldReader3.readFieldValue(jSONReader, t);
                        if (startArray > 4) {
                            this.fieldReader4.readFieldValue(jSONReader, t);
                            for (int i = 5; i < startArray; i++) {
                                jSONReader.skipValue();
                            }
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
                            if (startArray > 4) {
                                this.fieldReader4.readFieldValue(jSONReader, t2);
                                for (int i = 5; i < startArray; i++) {
                                    jSONReader.skipValue();
                                }
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
            throw new JSONException("expect object, but " + JSONB.typeName(jSONReader.getType()));
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
                if (readFieldNameHashCode == this.f12563l) {
                    this.fieldReader0.readFieldValue(jSONReader, t);
                } else if (readFieldNameHashCode == this.f12564m) {
                    this.fieldReader1.readFieldValue(jSONReader, t);
                } else if (readFieldNameHashCode == this.f12565n) {
                    this.fieldReader2.readFieldValue(jSONReader, t);
                } else if (readFieldNameHashCode == this.f12566o) {
                    this.fieldReader3.readFieldValue(jSONReader, t);
                } else if (readFieldNameHashCode == this.f12567p) {
                    this.fieldReader4.readFieldValue(jSONReader, t);
                } else if (jSONReader.isSupportSmartMatch(this.features | j)) {
                    long nameHashCodeLCase = jSONReader.getNameHashCodeLCase();
                    if (nameHashCodeLCase == this.f12568q) {
                        this.fieldReader0.readFieldValue(jSONReader, t);
                    } else if (nameHashCodeLCase == this.f12569r) {
                        this.fieldReader1.readFieldValue(jSONReader, t);
                    } else if (nameHashCodeLCase == this.f12570s) {
                        this.fieldReader2.readFieldValue(jSONReader, t);
                    } else if (nameHashCodeLCase == this.f12571t) {
                        this.fieldReader3.readFieldValue(jSONReader, t);
                    } else if (nameHashCodeLCase == this.f12572u) {
                        this.fieldReader4.readFieldValue(jSONReader, t);
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

    @Override // com.alibaba.fastjson2.reader.ObjectReaderBean, com.alibaba.fastjson2.reader.ObjectReader
    public T readObject(JSONReader jSONReader, Type type, Object obj, long j) {
        ObjectReader objectReader;
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
            if ((JSONReader.Feature.SupportArrayToBean.mask & features) == 0) {
                return processObjectInputSingleItemArray(jSONReader, type, obj, features);
            }
            jSONReader.nextIfArrayStart();
            T t = this.creator.get();
            if (this.hasDefaultValue) {
                initDefaultValue(t);
            }
            this.fieldReader0.readFieldValue(jSONReader, t);
            this.fieldReader1.readFieldValue(jSONReader, t);
            this.fieldReader2.readFieldValue(jSONReader, t);
            this.fieldReader3.readFieldValue(jSONReader, t);
            this.fieldReader4.readFieldValue(jSONReader, t);
            if (!jSONReader.nextIfArrayEnd()) {
                throw new JSONException(jSONReader.info("array to bean end error"));
            }
            jSONReader.nextIfComma();
            Function function = this.buildFunction;
            return function != null ? (T) function.apply(t) : t;
        }
        jSONReader.nextIfObjectStart();
        T t2 = this.creator.get();
        if (this.hasDefaultValue) {
            initDefaultValue(t2);
        }
        if (t2 != null && (JSONReader.Feature.InitStringFieldAsEmpty.mask & features) != 0) {
            initStringFieldAsEmpty(t2);
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
                ObjectReader objectReaderAutoType = context.getObjectReaderAutoType(readTypeHashCode);
                if ((objectReaderAutoType != null || (objectReaderAutoType = context.getObjectReaderAutoType(jSONReader.getString(), this.objectClass)) != null) && (objectReader = objectReaderAutoType) != this) {
                    t2 = (T) objectReader.readObject(jSONReader, type, obj, j);
                    break;
                }
                i++;
            } else {
                if (readFieldNameHashCode == -1) {
                    break;
                }
                if (readFieldNameHashCode == this.f12563l) {
                    this.fieldReader0.readFieldValue(jSONReader, t2);
                } else if (readFieldNameHashCode == this.f12564m) {
                    this.fieldReader1.readFieldValue(jSONReader, t2);
                } else if (readFieldNameHashCode == this.f12565n) {
                    this.fieldReader2.readFieldValue(jSONReader, t2);
                } else if (readFieldNameHashCode == this.f12566o) {
                    this.fieldReader3.readFieldValue(jSONReader, t2);
                } else if (readFieldNameHashCode == this.f12567p) {
                    this.fieldReader4.readFieldValue(jSONReader, t2);
                } else if (jSONReader.isSupportSmartMatch(this.features | j)) {
                    long nameHashCodeLCase = jSONReader.getNameHashCodeLCase();
                    if (nameHashCodeLCase == this.f12568q) {
                        this.fieldReader0.readFieldValue(jSONReader, t2);
                    } else if (nameHashCodeLCase == this.f12569r) {
                        this.fieldReader1.readFieldValue(jSONReader, t2);
                    } else if (nameHashCodeLCase == this.f12570s) {
                        this.fieldReader2.readFieldValue(jSONReader, t2);
                    } else if (nameHashCodeLCase == this.f12571t) {
                        this.fieldReader3.readFieldValue(jSONReader, t2);
                    } else if (nameHashCodeLCase == this.f12572u) {
                        this.fieldReader4.readFieldValue(jSONReader, t2);
                    } else {
                        processExtra(jSONReader, t2, j);
                    }
                } else {
                    processExtra(jSONReader, t2, j);
                }
                i++;
            }
        }
        jSONReader.nextIfComma();
        Function function2 = this.buildFunction;
        return function2 != null ? (T) function2.apply(t2) : t2;
    }
}
