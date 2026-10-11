package com.alibaba.fastjson2.reader;

import com.alibaba.fastjson2.JSONB;
import com.alibaba.fastjson2.JSONException;
import com.alibaba.fastjson2.JSONObject;
import com.alibaba.fastjson2.JSONReader;
import com.alibaba.fastjson2.util.TypeUtils;
import java.lang.reflect.Type;
import java.util.Map;
import java.util.function.Function;
import java.util.function.Supplier;

/* loaded from: classes3.dex */
public final class ObjectReaderInterface<T> extends ObjectReaderAdapter<T> {
    public ObjectReaderInterface(Class cls, String str, String str2, long j, Supplier supplier, Function function, FieldReader[] fieldReaderArr) {
        super(cls, str, str2, j, supplier, function, fieldReaderArr);
    }

    @Override // com.alibaba.fastjson2.reader.ObjectReaderAdapter, com.alibaba.fastjson2.reader.ObjectReader
    public T createInstance(long j) {
        return (T) TypeUtils.newProxyInstance(this.objectClass, new JSONObject());
    }

    @Override // com.alibaba.fastjson2.reader.ObjectReaderAdapter, com.alibaba.fastjson2.reader.ObjectReader
    public T readJSONBObject(JSONReader jSONReader, Type type, Object obj, long j) {
        if (jSONReader.nextIfNull()) {
            return null;
        }
        ObjectReader checkAutoType = jSONReader.checkAutoType(this.objectClass, getTypeNameHash(), this.features | j);
        if (checkAutoType != null && checkAutoType.getObjectClass() != this.objectClass) {
            return (T) checkAutoType.readJSONBObject(jSONReader, type, obj, j);
        }
        if (jSONReader.isArray()) {
            if (jSONReader.isSupportBeanArray()) {
                return readArrayMappingJSONBObject(jSONReader, type, obj, j);
            }
            throw new JSONException(jSONReader.info("expect object, but " + JSONB.typeName(jSONReader.getType())));
        }
        jSONReader.nextIfObjectStart();
        JSONObject jSONObject = new JSONObject();
        int i = 0;
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
                    jSONObject.put(jSONReader.getFieldName(), jSONReader.readAny());
                } else {
                    jSONObject.put(fieldReader.fieldName, fieldReader.readFieldValue(jSONReader));
                }
            }
            i++;
        }
        return (T) TypeUtils.newProxyInstance(this.objectClass, jSONObject);
    }

    /* JADX WARN: Removed duplicated region for block: B:50:0x00d4  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x00dc  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0109 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:64:0x015c A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:69:0x0104  */
    @Override // com.alibaba.fastjson2.reader.ObjectReaderBean, com.alibaba.fastjson2.reader.ObjectReader
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public T readObject(com.alibaba.fastjson2.JSONReader r18, java.lang.reflect.Type r19, java.lang.Object r20, long r21) {
        /*
            Method dump skipped, instructions count: 352
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson2.reader.ObjectReaderInterface.readObject(com.alibaba.fastjson2.JSONReader, java.lang.reflect.Type, java.lang.Object, long):java.lang.Object");
    }

    @Override // com.alibaba.fastjson2.reader.ObjectReaderAdapter, com.alibaba.fastjson2.reader.ObjectReader
    public T createInstance(Map map, long j) {
        JSONObject jSONObject;
        if (map instanceof JSONObject) {
            jSONObject = (JSONObject) map;
        } else {
            jSONObject = new JSONObject(map);
        }
        return (T) TypeUtils.newProxyInstance(this.objectClass, jSONObject);
    }
}
