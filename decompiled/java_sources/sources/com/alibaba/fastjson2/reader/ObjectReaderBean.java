package com.alibaba.fastjson2.reader;

import com.alibaba.fastjson2.JSONException;
import com.alibaba.fastjson2.JSONReader;
import com.alibaba.fastjson2.filter.ExtraProcessor;
import com.alibaba.fastjson2.util.Fnv;
import com.alibaba.fastjson2.util.TypeUtils;
import java.io.Serializable;
import java.lang.reflect.Type;
import java.util.List;
import java.util.function.Function;
import java.util.function.Supplier;
import org.apache.commons.text.AlphabetConverter;

/* loaded from: classes3.dex */
public abstract class ObjectReaderBean<T> implements ObjectReader<T> {

    /* renamed from: a */
    public long f12643a;
    protected JSONReader.AutoTypeBeforeHandler autoTypeBeforeHandler;
    protected final Function buildFunction;
    protected final Supplier<T> creator;
    protected FieldReader extraFieldReader;
    protected final long features;
    protected boolean hasDefaultValue;
    protected final Class objectClass;
    protected final boolean serializable;
    protected String typeName;

    public ObjectReaderBean(Class cls, Supplier<T> supplier, String str, long j, Function function) {
        this.objectClass = cls;
        this.creator = supplier;
        this.buildFunction = function;
        this.features = j;
        this.typeName = str;
        this.f12643a = str != null ? Fnv.hashCode64(str) : 0L;
        this.serializable = cls != null && Serializable.class.isAssignableFrom(cls);
    }

    @Override // com.alibaba.fastjson2.reader.ObjectReader
    public void acceptExtra(Object obj, String str, Object obj2, long j) {
        FieldReader fieldReader = this.extraFieldReader;
        if (fieldReader != null && obj != null) {
            fieldReader.acceptExtra(obj, str, obj2);
        } else {
            if ((JSONReader.Feature.ErrorOnUnknownProperties.mask & j) == 0) {
                return;
            }
            throw new JSONException("Unknown Property " + str);
        }
    }

    public final ObjectReader checkAutoType(JSONReader jSONReader, Class cls, long j) {
        if (!jSONReader.nextIfMatchTypedAny()) {
            return null;
        }
        long readTypeHashCode = jSONReader.readTypeHashCode();
        JSONReader.Context context = jSONReader.context;
        long features = jSONReader.features(this.features | j);
        JSONReader.AutoTypeBeforeHandler contextAutoTypeBeforeHandler = context.getContextAutoTypeBeforeHandler();
        if (contextAutoTypeBeforeHandler != null) {
            Class<?> apply = contextAutoTypeBeforeHandler.apply(readTypeHashCode, (Class<?>) cls, j);
            if (apply == null) {
                String string = jSONReader.getString();
                Class<?> apply2 = contextAutoTypeBeforeHandler.apply(string, (Class<?>) cls, j);
                if (apply2 == null || cls.isAssignableFrom(apply2)) {
                    apply = apply2;
                } else {
                    if ((jSONReader.features(j) & JSONReader.Feature.IgnoreAutoTypeNotMatch.mask) == 0) {
                        throw new JSONException("type not match. " + string + AlphabetConverter.f109940d + cls.getName());
                    }
                    apply = cls;
                }
            }
            return context.getObjectReader(apply);
        }
        ObjectReader objectReaderAutoType = jSONReader.getObjectReaderAutoType(readTypeHashCode, cls, j);
        if (objectReaderAutoType == null) {
            throw new JSONException(jSONReader.info("auotype not support"));
        }
        Class<T> objectClass = objectReaderAutoType.getObjectClass();
        if (cls == null || objectClass == null || cls.isAssignableFrom(objectClass)) {
            if (readTypeHashCode == getTypeNameHash()) {
                return this;
            }
            if ((JSONReader.Feature.SupportAutoType.mask & features) == 0) {
                return null;
            }
            return objectReaderAutoType;
        }
        if ((JSONReader.Feature.IgnoreAutoTypeNotMatch.mask & features) != 0) {
            return context.getObjectReader(cls);
        }
        throw new JSONException("type not match. " + this.typeName + AlphabetConverter.f109940d + cls.getName());
    }

    public JSONReader.AutoTypeBeforeHandler getAutoTypeBeforeHandler() {
        return this.autoTypeBeforeHandler;
    }

    @Override // com.alibaba.fastjson2.reader.ObjectReader
    public Class<T> getObjectClass() {
        return this.objectClass;
    }

    public String getTypeName() {
        Class cls;
        if (this.typeName == null && (cls = this.objectClass) != null) {
            this.typeName = TypeUtils.getTypeName(cls);
        }
        return this.typeName;
    }

    public long getTypeNameHash() {
        String typeName;
        if (this.f12643a == 0 && (typeName = getTypeName()) != null) {
            this.f12643a = Fnv.hashCode64(typeName);
        }
        return this.f12643a;
    }

    public void initDefaultValue(T t) {
    }

    public void initStringFieldAsEmpty(Object obj) {
    }

    public void processExtra(JSONReader jSONReader, Object obj, long j) {
        FieldReader fieldReaderLCase;
        FieldReader fieldReader = this.extraFieldReader;
        if (fieldReader != null && obj != null) {
            fieldReader.processExtra(jSONReader, obj);
            return;
        }
        if ((jSONReader.features(j) & JSONReader.Feature.SupportSmartMatch.mask) != 0) {
            String fieldName = jSONReader.getFieldName();
            if (fieldName.startsWith("is", 0) && (fieldReaderLCase = getFieldReaderLCase(Fnv.hashCode64LCase(fieldName.substring(2)))) != null && fieldReaderLCase.fieldClass == Boolean.class) {
                fieldReaderLCase.readFieldValue(jSONReader, obj);
                return;
            }
        }
        ExtraProcessor extraProcessor = jSONReader.context.extraProcessor;
        if (extraProcessor != null) {
            String fieldName2 = jSONReader.getFieldName();
            extraProcessor.processExtra(obj, fieldName2, jSONReader.read(extraProcessor.getType(fieldName2)));
        } else {
            if ((jSONReader.features(j) & JSONReader.Feature.ErrorOnUnknownProperties.mask) == 0) {
                jSONReader.skipValue();
                return;
            }
            throw new JSONException("Unknown Property " + jSONReader.getFieldName());
        }
    }

    public T processObjectInputSingleItemArray(JSONReader jSONReader, Type type, Object obj, long j) {
        String str = "expect {, but [, class " + this.typeName;
        if (obj != null) {
            str = str + ", parent fieldName " + obj;
        }
        String info = jSONReader.info(str);
        if ((jSONReader.features(j) & JSONReader.Feature.SupportSmartMatch.mask) != 0) {
            if (type == null) {
                type = this.objectClass;
            }
            List readArray = jSONReader.readArray(type);
            if (readArray.size() == 1) {
                return (T) readArray.get(0);
            }
            if (readArray.size() == 0) {
                return null;
            }
            if (readArray.size() == 1) {
                return (T) readArray.get(0);
            }
        }
        throw new JSONException(info);
    }

    public boolean readFieldValueWithLCase(JSONReader jSONReader, Object obj, long j, long j2) {
        FieldReader fieldReaderLCase;
        if (!jSONReader.isSupportSmartMatch(j2)) {
            return false;
        }
        long nameHashCodeLCase = jSONReader.getNameHashCodeLCase();
        if (nameHashCodeLCase == j || (fieldReaderLCase = getFieldReaderLCase(nameHashCodeLCase)) == null) {
            return false;
        }
        fieldReaderLCase.readFieldValue(jSONReader, obj);
        return true;
    }

    public void readObject(JSONReader jSONReader, Object obj, long j) {
        if (jSONReader.nextIfNull()) {
            jSONReader.nextIfComma();
            return;
        }
        if (jSONReader.nextIfObjectStart()) {
            while (!jSONReader.nextIfObjectEnd()) {
                FieldReader fieldReader = getFieldReader(jSONReader.readFieldNameHashCode());
                if (fieldReader == null && jSONReader.isSupportSmartMatch(getFeatures() | j)) {
                    fieldReader = getFieldReaderLCase(jSONReader.getNameHashCodeLCase());
                }
                if (fieldReader == null) {
                    processExtra(jSONReader, obj, j);
                } else {
                    fieldReader.readFieldValue(jSONReader, obj);
                }
            }
            jSONReader.nextIfComma();
            return;
        }
        throw new JSONException(jSONReader.info());
    }

    public void setAutoTypeBeforeHandler(JSONReader.AutoTypeBeforeHandler autoTypeBeforeHandler) {
        this.autoTypeBeforeHandler = autoTypeBeforeHandler;
    }

    /* JADX WARN: Removed duplicated region for block: B:68:0x00ff  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x0105  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x0131  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x0134 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:87:0x012d  */
    @Override // com.alibaba.fastjson2.reader.ObjectReader
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public T readObject(com.alibaba.fastjson2.JSONReader r24, java.lang.reflect.Type r25, java.lang.Object r26, long r27) {
        /*
            Method dump skipped, instructions count: 402
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson2.reader.ObjectReaderBean.readObject(com.alibaba.fastjson2.JSONReader, java.lang.reflect.Type, java.lang.Object, long):java.lang.Object");
    }
}
