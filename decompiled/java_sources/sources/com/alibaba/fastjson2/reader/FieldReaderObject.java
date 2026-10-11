package com.alibaba.fastjson2.reader;

import com.alibaba.fastjson2.JSONException;
import com.alibaba.fastjson2.JSONReader;
import com.alibaba.fastjson2.util.BeanUtils;
import com.alibaba.fastjson2.util.TypeUtils;
import com.sun.org.apache.xalan.internal.templates.Constants;
import java.lang.reflect.Field;
import java.lang.reflect.Member;
import java.lang.reflect.Method;
import java.lang.reflect.Type;
import java.util.Collection;
import java.util.Locale;
import java.util.Map;
import java.util.Optional;
import java.util.function.BiConsumer;
import java.util.function.Function;

/* loaded from: classes3.dex */
public class FieldReaderObject<T> extends FieldReader<T> {
    protected final BiConsumer function;
    protected ObjectReader initReader;

    public FieldReaderObject(String str, Type type, Class cls, int i, long j, String str2, Locale locale, Object obj, Method method, Field field, BiConsumer biConsumer) {
        super(str, type, cls, i, j, str2, locale, obj, method, field);
        this.function = biConsumer;
    }

    @Override // com.alibaba.fastjson2.reader.FieldReader
    public void accept(T t, boolean z) {
        accept((FieldReaderObject<T>) t, Boolean.valueOf(z));
    }

    @Override // com.alibaba.fastjson2.reader.FieldReader
    public ObjectReader getInitReader() {
        return this.initReader;
    }

    @Override // com.alibaba.fastjson2.reader.FieldReader
    public ObjectReader getObjectReader(JSONReader jSONReader) {
        ObjectReader objectReader = this.initReader;
        if (objectReader != null) {
            return objectReader;
        }
        if (this.f12471h != null) {
            return this.f12471h;
        }
        ObjectReader m7434a = FieldReader.m7434a(this.fieldType, this.fieldClass, this.format, this.locale);
        if (m7434a != null) {
            this.f12471h = m7434a;
            return m7434a;
        }
        Class cls = this.fieldClass;
        if (cls != null && Map.class.isAssignableFrom(cls)) {
            ObjectReader m7481of = ObjectReaderImplMap.m7481of(this.fieldType, this.fieldClass, this.features);
            this.f12471h = m7481of;
            return m7481of;
        }
        Class cls2 = this.fieldClass;
        if (cls2 != null && Collection.class.isAssignableFrom(cls2)) {
            ObjectReader m7464of = ObjectReaderImplList.m7464of(this.fieldType, this.fieldClass, this.features);
            this.f12471h = m7464of;
            return m7464of;
        }
        JSONReader.Context context = jSONReader.context;
        ObjectReader objectReader2 = context.provider.getObjectReader(this.fieldType, (context.features & JSONReader.Feature.FieldBased.mask) != 0);
        this.f12471h = objectReader2;
        return objectReader2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.alibaba.fastjson2.reader.FieldReader
    public void processExtra(JSONReader jSONReader, Object obj) {
        if (this.initReader == null) {
            this.initReader = getObjectReader(jSONReader);
        }
        if ((this.initReader instanceof ObjectReaderBean) && this.field != null) {
            FieldReader fieldReader = this.initReader.getFieldReader(jSONReader.getFieldName());
            if (fieldReader != 0) {
                try {
                    Object obj2 = this.field.get(obj);
                    if (obj2 == null) {
                        obj2 = this.initReader.createInstance(this.features);
                        accept((FieldReaderObject<T>) obj, obj2);
                    }
                    fieldReader.readFieldValue(jSONReader, obj2);
                    return;
                } catch (Exception e) {
                    throw new JSONException("read unwrapped field error", e);
                }
            }
        }
        jSONReader.skipValue();
    }

    @Override // com.alibaba.fastjson2.reader.FieldReader
    public void readFieldValue(JSONReader jSONReader, T t) {
        String str;
        Object readObject;
        if (!this.f12468e) {
            long j = jSONReader.context.features;
            if ((JSONReader.Feature.IgnoreNoneSerializable.mask & j) != 0) {
                jSONReader.skipValue();
                return;
            } else if ((j & JSONReader.Feature.ErrorOnNoneSerializable.mask) != 0) {
                throw new JSONException("not support none-Serializable");
            }
        }
        ObjectReader objectReader = this.initReader;
        if (objectReader == null) {
            objectReader = FieldReader.m7434a(this.fieldType, this.fieldClass, this.format, this.locale);
            if (objectReader != null) {
                this.initReader = objectReader;
            } else {
                objectReader = jSONReader.context.getObjectReader(this.fieldType);
                this.initReader = objectReader;
            }
        }
        if (jSONReader.isReference()) {
            String readReference = jSONReader.readReference();
            if (Constants.ATTRVAL_PARENT.equals(readReference)) {
                accept((FieldReaderObject<T>) t, t);
                return;
            } else {
                addResolveTask(jSONReader, t, readReference);
                return;
            }
        }
        try {
            if (jSONReader.nextIfNullOrEmptyString()) {
                if (this.fieldClass == Optional.class) {
                    readObject = Optional.empty();
                } else {
                    readObject = this.defaultValue;
                }
            } else if (jSONReader.jsonb) {
                if (this.fieldClass == Object.class) {
                    ObjectReader checkAutoType = jSONReader.checkAutoType(Object.class, 0L, this.features);
                    if (checkAutoType != null) {
                        readObject = checkAutoType.readJSONBObject(jSONReader, this.fieldType, this.fieldName, this.features);
                    } else {
                        readObject = jSONReader.readAny();
                    }
                } else {
                    readObject = objectReader.readJSONBObject(jSONReader, this.fieldType, this.fieldName, this.features);
                }
            } else {
                readObject = objectReader.readObject(jSONReader, this.fieldType, this.fieldName, this.features);
            }
            accept((FieldReaderObject<T>) t, readObject);
            if (this.f12473j) {
                BeanUtils.setNoneStaticMemberClassParent(readObject, t);
            }
        } catch (Exception | IllegalAccessError e) {
            Member member = this.field;
            if (member == null) {
                member = this.method;
            }
            if (member != null) {
                str = "read field '" + member.getDeclaringClass().getName() + "." + member.getName();
            } else {
                str = "read field " + this.fieldName + " error";
            }
            throw new JSONException(jSONReader.info(str), e);
        }
    }

    @Override // com.alibaba.fastjson2.reader.FieldReader
    public void readFieldValueJSONB(JSONReader jSONReader, T t) {
        JSONReader.Context context = jSONReader.context;
        long j = context.features;
        if (!this.f12468e && jSONReader.getType() != -110) {
            if ((JSONReader.Feature.IgnoreNoneSerializable.mask & j) != 0) {
                jSONReader.skipValue();
                return;
            } else if ((j & JSONReader.Feature.ErrorOnNoneSerializable.mask) != 0) {
                throw new JSONException("not support none-Serializable");
            }
        }
        if (this.initReader == null) {
            this.initReader = context.getObjectReader(this.fieldType);
        }
        if (!jSONReader.isReference()) {
            accept((FieldReaderObject<T>) t, this.initReader.readJSONBObject(jSONReader, this.fieldType, this.fieldName, this.features));
            return;
        }
        String readReference = jSONReader.readReference();
        if (Constants.ATTRVAL_PARENT.equals(readReference)) {
            accept((FieldReaderObject<T>) t, t);
        } else {
            addResolveTask(jSONReader, t, readReference);
        }
    }

    @Override // com.alibaba.fastjson2.reader.FieldReader
    public void accept(T t, byte b) {
        accept((FieldReaderObject<T>) t, Byte.valueOf(b));
    }

    @Override // com.alibaba.fastjson2.reader.FieldReader
    public void accept(T t, short s) {
        accept((FieldReaderObject<T>) t, Short.valueOf(s));
    }

    @Override // com.alibaba.fastjson2.reader.FieldReader
    public void accept(T t, int i) {
        accept((FieldReaderObject<T>) t, Integer.valueOf(i));
    }

    @Override // com.alibaba.fastjson2.reader.FieldReader
    public void accept(T t, long j) {
        accept((FieldReaderObject<T>) t, Long.valueOf(j));
    }

    @Override // com.alibaba.fastjson2.reader.FieldReader
    public void accept(T t, float f) {
        accept((FieldReaderObject<T>) t, Float.valueOf(f));
    }

    @Override // com.alibaba.fastjson2.reader.FieldReader
    public void accept(T t, double d) {
        accept((FieldReaderObject<T>) t, Double.valueOf(d));
    }

    @Override // com.alibaba.fastjson2.reader.FieldReader
    public void accept(T t, char c) {
        accept((FieldReaderObject<T>) t, Character.valueOf(c));
    }

    @Override // com.alibaba.fastjson2.reader.FieldReader
    public void accept(T t, Object obj) {
        if (obj != null || (this.features & JSONReader.Feature.IgnoreSetNullValue.mask) == 0) {
            if (this.fieldClass == Character.TYPE && (obj instanceof String)) {
                String str = (String) obj;
                if (str.length() > 0) {
                    obj = Character.valueOf(str.charAt(0));
                } else {
                    obj = (char) 0;
                }
            }
            if (obj != null && !this.fieldClass.isInstance(obj)) {
                obj = TypeUtils.cast(obj, this.fieldType);
            }
            try {
                BiConsumer biConsumer = this.function;
                if (biConsumer != null) {
                    biConsumer.accept(t, obj);
                    return;
                }
                Method method = this.method;
                if (method != null) {
                    method.invoke(t, obj);
                } else {
                    this.field.set(t, obj);
                }
            } catch (Exception e) {
                StringBuilder sb = new StringBuilder();
                sb.append("set ");
                sb.append(this.function != null ? super.toString() : this.fieldName);
                sb.append(" error");
                throw new JSONException(sb.toString(), e);
            }
        }
    }

    @Override // com.alibaba.fastjson2.reader.FieldReader
    public ObjectReader getObjectReader(JSONReader.Context context) {
        if (this.f12471h != null) {
            return this.f12471h;
        }
        ObjectReader m7434a = FieldReader.m7434a(this.fieldType, this.fieldClass, this.format, this.locale);
        if (m7434a != null) {
            this.f12471h = m7434a;
            return m7434a;
        }
        if (Map.class.isAssignableFrom(this.fieldClass)) {
            ObjectReader m7481of = ObjectReaderImplMap.m7481of(this.fieldType, this.fieldClass, this.features);
            this.f12471h = m7481of;
            return m7481of;
        }
        if (Collection.class.isAssignableFrom(this.fieldClass)) {
            ObjectReader m7464of = ObjectReaderImplList.m7464of(this.fieldType, this.fieldClass, this.features);
            this.f12471h = m7464of;
            return m7464of;
        }
        ObjectReader objectReader = context.provider.getObjectReader(this.fieldType, (context.features & JSONReader.Feature.FieldBased.mask) != 0);
        this.f12471h = objectReader;
        return objectReader;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.alibaba.fastjson2.reader.FieldReader
    public Object readFieldValue(JSONReader jSONReader) {
        Object readObject;
        if (this.initReader == null) {
            this.initReader = getObjectReader(jSONReader);
        }
        if (jSONReader.jsonb) {
            readObject = this.initReader.readJSONBObject(jSONReader, this.fieldType, this.fieldName, this.features);
        } else {
            readObject = this.initReader.readObject(jSONReader, this.fieldType, this.fieldName, this.features);
        }
        Function buildFunction = this.initReader.getBuildFunction();
        return buildFunction != 0 ? buildFunction.apply(readObject) : readObject;
    }
}
