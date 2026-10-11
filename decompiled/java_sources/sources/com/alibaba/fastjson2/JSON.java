package com.alibaba.fastjson2;

import com.alibaba.fastjson2.JSONFactory;
import com.alibaba.fastjson2.JSONReader;
import com.alibaba.fastjson2.JSONWriter;
import com.alibaba.fastjson2.filter.AfterFilter;
import com.alibaba.fastjson2.filter.BeforeFilter;
import com.alibaba.fastjson2.filter.ContextNameFilter;
import com.alibaba.fastjson2.filter.ContextValueFilter;
import com.alibaba.fastjson2.filter.Filter;
import com.alibaba.fastjson2.filter.LabelFilter;
import com.alibaba.fastjson2.filter.NameFilter;
import com.alibaba.fastjson2.filter.PropertyFilter;
import com.alibaba.fastjson2.filter.PropertyPreFilter;
import com.alibaba.fastjson2.filter.ValueFilter;
import com.alibaba.fastjson2.reader.FieldReader;
import com.alibaba.fastjson2.reader.ObjectReader;
import com.alibaba.fastjson2.reader.ObjectReaderBean;
import com.alibaba.fastjson2.reader.ObjectReaderNoneDefaultConstructor;
import com.alibaba.fastjson2.reader.ObjectReaderProvider;
import com.alibaba.fastjson2.util.DateUtils;
import com.alibaba.fastjson2.util.MapMultiValueType;
import com.alibaba.fastjson2.util.MultiType;
import com.alibaba.fastjson2.util.TypeUtils;
import com.alibaba.fastjson2.writer.FieldWriter;
import com.alibaba.fastjson2.writer.ObjectWriter;
import com.alibaba.fastjson2.writer.ObjectWriterAdapter;
import com.alibaba.fastjson2.writer.ObjectWriterProvider;
import com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.Reader;
import java.lang.reflect.Type;
import java.net.URL;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.time.LocalDate;
import java.time.ZoneId;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.function.Consumer;
import java.util.function.Function;

/* loaded from: classes3.dex */
public interface JSON {
    public static final String VERSION = "2.0.48";

    static void config(JSONReader.Feature... featureArr) {
        for (JSONReader.Feature feature : featureArr) {
            if (feature == JSONReader.Feature.SupportAutoType) {
                throw new JSONException("not support config global autotype support");
            }
            JSONFactory.f12225a |= feature.mask;
        }
    }

    static void configReaderDateFormat(String str) {
        JSONFactory.f12226b = str;
    }

    static void configReaderZoneId(ZoneId zoneId) {
        JSONFactory.f12227c = zoneId;
    }

    static void configWriterDateFormat(String str) {
        JSONFactory.f12229e = str;
    }

    static void configWriterZoneId(ZoneId zoneId) {
        JSONFactory.f12230f = zoneId;
    }

    static <T> T copy(T t, JSONWriter.Feature... featureArr) {
        if (t == null) {
            return null;
        }
        Class<?> cls = t.getClass();
        if (ObjectWriterProvider.isPrimitiveOrEnum(cls)) {
            return t;
        }
        long j = 0;
        boolean z = false;
        boolean z2 = false;
        for (JSONWriter.Feature feature : featureArr) {
            j |= feature.mask;
            if (feature == JSONWriter.Feature.FieldBased) {
                z = true;
            } else if (feature == JSONWriter.Feature.BeanToArray) {
                z2 = true;
            }
        }
        ObjectWriter objectWriter = JSONFactory.defaultObjectWriterProvider.getObjectWriter(cls, cls, z);
        ObjectReader objectReader = JSONFactory.defaultObjectReaderProvider.getObjectReader(cls, z);
        if ((objectWriter instanceof ObjectWriterAdapter) && (objectReader instanceof ObjectReaderBean)) {
            List<FieldWriter> fieldWriters = objectWriter.getFieldWriters();
            if (objectReader instanceof ObjectReaderNoneDefaultConstructor) {
                HashMap hashMap = new HashMap(fieldWriters.size());
                for (int i = 0; i < fieldWriters.size(); i++) {
                    FieldWriter fieldWriter = fieldWriters.get(i);
                    hashMap.put(fieldWriter.fieldName, fieldWriter.getFieldValue(t));
                }
                return (T) objectReader.createInstance(hashMap, j);
            }
            T t2 = (T) objectReader.createInstance(j);
            for (int i2 = 0; i2 < fieldWriters.size(); i2++) {
                FieldWriter fieldWriter2 = fieldWriters.get(i2);
                FieldReader fieldReader = objectReader.getFieldReader(fieldWriter2.fieldName);
                if (fieldReader != null) {
                    fieldReader.accept((FieldReader) t2, copy(fieldWriter2.getFieldValue(t), new JSONWriter.Feature[0]));
                }
            }
            return t2;
        }
        JSONWriter ofJSONB = JSONWriter.ofJSONB(featureArr);
        try {
            ofJSONB.config(JSONWriter.Feature.WriteClassName);
            objectWriter.writeJSONB(ofJSONB, t, null, null, 0L);
            byte[] bytes = ofJSONB.getBytes();
            ofJSONB.close();
            JSONReader ofJSONB2 = JSONReader.ofJSONB(bytes, JSONReader.Feature.SupportAutoType, JSONReader.Feature.SupportClassForName);
            if (z2) {
                try {
                    ofJSONB2.context.config(JSONReader.Feature.SupportArrayToBean);
                } finally {
                }
            }
            T t3 = (T) objectReader.readJSONBObject(ofJSONB2, null, null, j);
            if (ofJSONB2 != null) {
                ofJSONB2.close();
            }
            return t3;
        } finally {
        }
    }

    static <T> T copyTo(Object obj, Class<T> cls, JSONWriter.Feature... featureArr) {
        if (obj == null) {
            return null;
        }
        Class<?> cls2 = obj.getClass();
        long j = 0;
        boolean z = false;
        boolean z2 = false;
        for (JSONWriter.Feature feature : featureArr) {
            j |= feature.mask;
            if (feature == JSONWriter.Feature.FieldBased) {
                z = true;
            } else if (feature == JSONWriter.Feature.BeanToArray) {
                z2 = true;
            }
        }
        ObjectWriter objectWriter = JSONFactory.defaultObjectWriterProvider.getObjectWriter(cls2, cls2, z);
        ObjectReader objectReader = JSONFactory.defaultObjectReaderProvider.getObjectReader(cls, z);
        if ((objectWriter instanceof ObjectWriterAdapter) && (objectReader instanceof ObjectReaderBean)) {
            List<FieldWriter> fieldWriters = objectWriter.getFieldWriters();
            if (objectReader instanceof ObjectReaderNoneDefaultConstructor) {
                HashMap hashMap = new HashMap(fieldWriters.size());
                for (int i = 0; i < fieldWriters.size(); i++) {
                    FieldWriter fieldWriter = fieldWriters.get(i);
                    hashMap.put(fieldWriter.fieldName, fieldWriter.getFieldValue(obj));
                }
                return (T) objectReader.createInstance(hashMap, j);
            }
            T t = (T) objectReader.createInstance(j);
            for (int i2 = 0; i2 < fieldWriters.size(); i2++) {
                FieldWriter fieldWriter2 = fieldWriters.get(i2);
                FieldReader fieldReader = objectReader.getFieldReader(fieldWriter2.fieldName);
                if (fieldReader != null) {
                    Object fieldValue = fieldWriter2.getFieldValue(obj);
                    Class cls3 = fieldWriter2.fieldClass;
                    if (cls3 == Date.class && fieldReader.fieldClass == String.class) {
                        fieldValue = DateUtils.format((Date) fieldValue, fieldWriter2.format);
                    } else if (cls3 == LocalDate.class && fieldReader.fieldClass == String.class) {
                        fieldValue = DateUtils.format((LocalDate) fieldValue, fieldWriter2.format);
                    } else if (fieldValue != null && !fieldReader.supportAcceptType(fieldValue.getClass())) {
                        fieldValue = copy(fieldValue, new JSONWriter.Feature[0]);
                    }
                    fieldReader.accept((FieldReader) t, fieldValue);
                }
            }
            return t;
        }
        JSONWriter ofJSONB = JSONWriter.ofJSONB(featureArr);
        try {
            ofJSONB.config(JSONWriter.Feature.WriteClassName);
            objectWriter.writeJSONB(ofJSONB, obj, null, null, 0L);
            byte[] bytes = ofJSONB.getBytes();
            ofJSONB.close();
            JSONReader ofJSONB2 = JSONReader.ofJSONB(bytes, JSONReader.Feature.SupportAutoType, JSONReader.Feature.SupportClassForName);
            if (z2) {
                try {
                    ofJSONB2.context.config(JSONReader.Feature.SupportArrayToBean);
                } finally {
                }
            }
            T t2 = (T) objectReader.readJSONBObject(ofJSONB2, null, null, 0L);
            if (ofJSONB2 != null) {
                ofJSONB2.close();
            }
            return t2;
        } finally {
        }
    }

    static boolean isEnabled(JSONReader.Feature feature) {
        return (JSONFactory.f12225a & feature.mask) != 0;
    }

    static boolean isValid(String str) {
        boolean z;
        if (str != null && !str.isEmpty()) {
            try {
                JSONReader m7296of = JSONReader.m7296of(str);
                try {
                    m7296of.skipValue();
                    if (m7296of.isEnd()) {
                        if (!m7296of.comma) {
                            z = true;
                            m7296of.close();
                            return z;
                        }
                    }
                    z = false;
                    m7296of.close();
                    return z;
                } finally {
                }
            } catch (JSONException unused) {
            }
        }
        return false;
    }

    static boolean isValidArray(String str) {
        boolean z;
        if (str != null && !str.isEmpty()) {
            try {
                JSONReader m7296of = JSONReader.m7296of(str);
                try {
                    if (!m7296of.isArray()) {
                        m7296of.close();
                        return false;
                    }
                    m7296of.skipValue();
                    if (m7296of.isEnd()) {
                        if (!m7296of.comma) {
                            z = true;
                            m7296of.close();
                            return z;
                        }
                    }
                    z = false;
                    m7296of.close();
                    return z;
                } finally {
                }
            } catch (JSONException unused) {
            }
        }
        return false;
    }

    static boolean isValidObject(String str) {
        boolean z;
        if (str != null && !str.isEmpty()) {
            try {
                JSONReader m7296of = JSONReader.m7296of(str);
                try {
                    if (!m7296of.isObject()) {
                        m7296of.close();
                        return false;
                    }
                    m7296of.skipValue();
                    if (m7296of.isEnd()) {
                        if (!m7296of.comma) {
                            z = true;
                            m7296of.close();
                            return z;
                        }
                    }
                    z = false;
                    m7296of.close();
                    return z;
                } finally {
                }
            } catch (JSONException unused) {
            }
        }
        return false;
    }

    static void mixIn(Class<?> cls, Class<?> cls2) {
        JSONFactory.defaultObjectWriterProvider.mixIn(cls, cls2);
        JSONFactory.defaultObjectReaderProvider.mixIn(cls, cls2);
    }

    static Object parse(String str) {
        Object obj;
        Object obj2;
        if (str == null || str.isEmpty()) {
            return null;
        }
        ObjectReaderProvider defaultObjectReaderProvider = JSONFactory.getDefaultObjectReaderProvider();
        JSONReader.Context context = new JSONReader.Context(defaultObjectReaderProvider);
        C1738h c1738h = new C1738h(context, str, 0, str.length());
        try {
            char current = c1738h.current();
            if (context.f12309r == null && (context.features & JSONReader.Feature.UseNativeObject.mask) == 0 && (current == '{' || current == '[')) {
                if (current == '{') {
                    Map jSONObject = new JSONObject();
                    c1738h.read(jSONObject, 0L);
                    obj2 = jSONObject;
                } else {
                    JSONArray jSONArray = new JSONArray();
                    c1738h.read((List) jSONArray);
                    obj2 = jSONArray;
                }
                obj = obj2;
                if (c1738h.f12291e != null) {
                    c1738h.handleResolveTasks(obj2);
                    obj = obj2;
                }
            } else {
                obj = defaultObjectReaderProvider.getObjectReader(Object.class, false).readObject(c1738h, null, null, 0L);
            }
            if (c1738h.f12290ch != 26 && (context.features & JSONReader.Feature.IgnoreCheckClose.mask) == 0) {
                throw new JSONException(c1738h.info("input not end"));
            }
            c1738h.close();
            return obj;
        } catch (Throwable th) {
            try {
                c1738h.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    static JSONArray parseArray(String str) {
        if (str == null || str.isEmpty()) {
            return null;
        }
        JSONReader.Context context = new JSONReader.Context(JSONFactory.defaultObjectReaderProvider);
        C1738h c1738h = new C1738h(context, str, 0, str.length());
        try {
            if (c1738h.nextIfNull()) {
                c1738h.close();
                return null;
            }
            JSONArray jSONArray = new JSONArray();
            c1738h.read((List) jSONArray);
            if (c1738h.f12291e != null) {
                c1738h.handleResolveTasks(jSONArray);
            }
            if (c1738h.f12290ch != 26 && (context.features & JSONReader.Feature.IgnoreCheckClose.mask) == 0) {
                throw new JSONException(c1738h.info("input not end"));
            }
            c1738h.close();
            return jSONArray;
        } catch (Throwable th) {
            try {
                c1738h.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    static JSONObject parseObject(String str) {
        if (str == null || str.isEmpty()) {
            return null;
        }
        JSONReader.Context context = new JSONReader.Context(JSONFactory.defaultObjectReaderProvider);
        C1738h c1738h = new C1738h(context, str, 0, str.length());
        try {
            if (c1738h.nextIfNull()) {
                c1738h.close();
                return null;
            }
            JSONObject jSONObject = new JSONObject();
            c1738h.read(jSONObject, 0L);
            if (c1738h.f12291e != null) {
                c1738h.handleResolveTasks(jSONObject);
            }
            if (c1738h.f12290ch != 26 && (context.features & JSONReader.Feature.IgnoreCheckClose.mask) == 0) {
                throw new JSONException(c1738h.info("input not end"));
            }
            c1738h.close();
            return jSONObject;
        } catch (Throwable th) {
            try {
                c1738h.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    static ObjectReader<?> register(Type type, ObjectReader<?> objectReader) {
        return JSONFactory.defaultObjectReaderProvider.register(type, objectReader);
    }

    static ObjectReader<?> registerIfAbsent(Type type, ObjectReader<?> objectReader) {
        return JSONFactory.defaultObjectReaderProvider.registerIfAbsent(type, objectReader);
    }

    static void registerSeeAlsoSubType(Class cls) {
        registerSeeAlsoSubType(cls, null);
    }

    /* renamed from: to */
    static <T> T m7264to(Class<T> cls, Object obj) {
        if (obj == null) {
            return null;
        }
        return obj instanceof JSONObject ? (T) ((JSONObject) obj).m7278to((Class) cls, new JSONReader.Feature[0]) : (T) TypeUtils.cast(obj, (Class) cls, JSONFactory.defaultObjectReaderProvider);
    }

    static Object toJSON(Object obj) {
        return toJSON(obj, null);
    }

    static byte[] toJSONBytes(Object obj) {
        ObjectWriterProvider objectWriterProvider = JSONFactory.defaultObjectWriterProvider;
        JSONWriter.Context context = new JSONWriter.Context(objectWriterProvider);
        boolean z = (context.f12331k & JSONWriter.Feature.FieldBased.mask) != 0;
        C1742l c1742l = new C1742l(context);
        try {
            if (obj == null) {
                c1742l.writeNull();
            } else {
                c1742l.rootObject = obj;
                c1742l.path = JSONWriter.Path.ROOT;
                Class<?> cls = obj.getClass();
                if (cls == JSONObject.class && c1742l.context.f12331k == 0) {
                    c1742l.write((JSONObject) obj);
                } else {
                    objectWriterProvider.getObjectWriter(cls, cls, z).write(c1742l, obj, null, null, 0L);
                }
            }
            byte[] bytes = c1742l.getBytes();
            c1742l.close();
            return bytes;
        } catch (Throwable th) {
            try {
                c1742l.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    static String toJSONString(Object obj) {
        ObjectWriterProvider objectWriterProvider = JSONFactory.defaultObjectWriterProvider;
        JSONWriter.Context context = new JSONWriter.Context(objectWriterProvider);
        boolean z = true;
        try {
            JSONWriter c1742l = ((JSONFactory.f12228d & JSONWriter.Feature.OptimizedForAscii.mask) > 0L ? 1 : ((JSONFactory.f12228d & JSONWriter.Feature.OptimizedForAscii.mask) == 0L ? 0 : -1)) != 0 ? new C1742l(context) : new C1741k(context);
            try {
                if (obj == null) {
                    c1742l.writeNull();
                } else {
                    c1742l.rootObject = obj;
                    c1742l.path = JSONWriter.Path.ROOT;
                    Class<?> cls = obj.getClass();
                    if (cls == JSONObject.class && context.f12331k == 0) {
                        c1742l.write((JSONObject) obj);
                    } else {
                        if ((context.f12331k & JSONWriter.Feature.FieldBased.mask) == 0) {
                            z = false;
                        }
                        objectWriterProvider.getObjectWriter(cls, cls, z).write(c1742l, obj, null, null, 0L);
                    }
                }
                String obj2 = c1742l.toString();
                c1742l.close();
                return obj2;
            } catch (Throwable th) {
                try {
                    c1742l.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        } catch (NullPointerException | NumberFormatException e) {
            throw new JSONException("JSON#toJSONString cannot serialize '" + obj + CloudStorageConstants.SINGLE_QUOTES, e);
        }
    }

    static <T> T toJavaObject(Object obj, Class<T> cls) {
        return (T) m7264to(cls, obj);
    }

    static int writeTo(OutputStream outputStream, Object obj) {
        ObjectWriterProvider objectWriterProvider = JSONFactory.defaultObjectWriterProvider;
        JSONWriter.Context context = new JSONWriter.Context(objectWriterProvider);
        boolean z = (context.f12331k & JSONWriter.Feature.FieldBased.mask) != 0;
        try {
            JSONWriter ofUTF8 = JSONWriter.ofUTF8(context);
            try {
                if (obj == null) {
                    ofUTF8.writeNull();
                } else {
                    ofUTF8.rootObject = obj;
                    ofUTF8.path = JSONWriter.Path.ROOT;
                    Class<?> cls = obj.getClass();
                    objectWriterProvider.getObjectWriter(cls, cls, z).write(ofUTF8, obj, null, null, 0L);
                }
                int flushTo = ofUTF8.flushTo(outputStream);
                ofUTF8.close();
                return flushTo;
            } finally {
            }
        } catch (Exception e) {
            throw new JSONException(e.getMessage(), e);
        }
    }

    static boolean isEnabled(JSONWriter.Feature feature) {
        return (JSONFactory.f12228d & feature.mask) != 0;
    }

    static ObjectWriter<?> register(Type type, ObjectWriter<?> objectWriter) {
        return JSONFactory.defaultObjectWriterProvider.register(type, objectWriter);
    }

    static ObjectWriter<?> registerIfAbsent(Type type, ObjectWriter<?> objectWriter) {
        return JSONFactory.defaultObjectWriterProvider.registerIfAbsent(type, objectWriter);
    }

    static void registerSeeAlsoSubType(Class cls, String str) {
        JSONFactory.defaultObjectReaderProvider.registerSeeAlsoSubType(cls, str);
    }

    static Object toJSON(Object obj, JSONWriter.Feature... featureArr) {
        if (obj == null) {
            return null;
        }
        if ((obj instanceof JSONObject) || (obj instanceof JSONArray)) {
            return obj;
        }
        JSONWriter.Context createWriteContext = featureArr == null ? JSONFactory.createWriteContext() : JSONFactory.createWriteContext(featureArr);
        Class<?> cls = obj.getClass();
        ObjectWriter objectWriter = createWriteContext.getObjectWriter(cls, cls);
        if ((objectWriter instanceof ObjectWriterAdapter) && !createWriteContext.isEnabled(JSONWriter.Feature.ReferenceDetection)) {
            return ((ObjectWriterAdapter) objectWriter).toJSONObject(obj, createWriteContext.f12331k);
        }
        try {
            JSONWriter m7325of = JSONWriter.m7325of(createWriteContext);
            try {
                objectWriter.write(m7325of, obj, null, null, createWriteContext.f12331k);
                String obj2 = m7325of.toString();
                m7325of.close();
                return parse(obj2);
            } catch (Throwable th) {
                if (m7325of != null) {
                    try {
                        m7325of.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                }
                throw th;
            }
        } catch (NullPointerException | NumberFormatException e) {
            throw new JSONException("toJSONString error", e);
        }
    }

    static void register(Class cls, Filter filter) {
        if ((filter instanceof AfterFilter) || (filter instanceof BeforeFilter) || (filter instanceof ContextNameFilter) || (filter instanceof ContextValueFilter) || (filter instanceof LabelFilter) || (filter instanceof NameFilter) || (filter instanceof PropertyFilter) || (filter instanceof PropertyPreFilter) || (filter instanceof ValueFilter)) {
            JSONFactory.defaultObjectWriterProvider.getObjectWriter(cls).setFilter(filter);
        }
    }

    static void config(JSONReader.Feature feature, boolean z) {
        if (feature == JSONReader.Feature.SupportAutoType && z) {
            throw new JSONException("not support config global autotype support");
        }
        if (z) {
            JSONFactory.f12225a = feature.mask | JSONFactory.f12225a;
        } else {
            JSONFactory.f12225a = (~feature.mask) & JSONFactory.f12225a;
        }
    }

    static boolean isValid(char[] cArr) {
        boolean z;
        if (cArr != null && cArr.length != 0) {
            try {
                JSONReader m7309of = JSONReader.m7309of(cArr);
                try {
                    m7309of.skipValue();
                    if (m7309of.isEnd()) {
                        if (!m7309of.comma) {
                            z = true;
                            m7309of.close();
                            return z;
                        }
                    }
                    z = false;
                    m7309of.close();
                    return z;
                } finally {
                }
            } catch (JSONException unused) {
            }
        }
        return false;
    }

    static boolean isValidArray(byte[] bArr) {
        boolean z;
        if (bArr != null && bArr.length != 0) {
            try {
                JSONReader m7303of = JSONReader.m7303of(bArr);
                try {
                    if (!m7303of.isArray()) {
                        m7303of.close();
                        return false;
                    }
                    m7303of.skipValue();
                    if (m7303of.isEnd()) {
                        if (!m7303of.comma) {
                            z = true;
                            m7303of.close();
                            return z;
                        }
                    }
                    z = false;
                    m7303of.close();
                    return z;
                } finally {
                }
            } catch (JSONException unused) {
            }
        }
        return false;
    }

    static boolean isValidObject(byte[] bArr) {
        boolean z;
        if (bArr != null && bArr.length != 0) {
            try {
                JSONReader m7303of = JSONReader.m7303of(bArr);
                try {
                    if (!m7303of.isObject()) {
                        m7303of.close();
                        return false;
                    }
                    m7303of.skipValue();
                    if (m7303of.isEnd()) {
                        if (!m7303of.comma) {
                            z = true;
                            m7303of.close();
                            return z;
                        }
                    }
                    z = false;
                    m7303of.close();
                    return z;
                } finally {
                }
            } catch (JSONException unused) {
            }
        }
        return false;
    }

    static void config(JSONWriter.Feature... featureArr) {
        for (JSONWriter.Feature feature : featureArr) {
            JSONFactory.f12228d |= feature.mask;
        }
    }

    static void config(JSONWriter.Feature feature, boolean z) {
        if (z) {
            JSONFactory.f12228d = feature.mask | JSONFactory.f12228d;
        } else {
            JSONFactory.f12228d = (~feature.mask) & JSONFactory.f12228d;
        }
    }

    static boolean isValid(byte[] bArr) {
        boolean z;
        if (bArr != null && bArr.length != 0) {
            try {
                JSONReader m7303of = JSONReader.m7303of(bArr);
                try {
                    m7303of.skipValue();
                    if (m7303of.isEnd()) {
                        if (!m7303of.comma) {
                            z = true;
                            m7303of.close();
                            return z;
                        }
                    }
                    z = false;
                    m7303of.close();
                    return z;
                } finally {
                }
            } catch (JSONException unused) {
            }
        }
        return false;
    }

    static JSONObject parseObject(String str, JSONReader.Feature... featureArr) {
        if (str == null || str.isEmpty()) {
            return null;
        }
        JSONReader.Context createReadContext = JSONFactory.createReadContext(featureArr);
        C1738h c1738h = new C1738h(createReadContext, str, 0, str.length());
        try {
            if (c1738h.nextIfNull()) {
                c1738h.close();
                return null;
            }
            JSONObject jSONObject = new JSONObject();
            c1738h.read(jSONObject, 0L);
            if (c1738h.f12291e != null) {
                c1738h.handleResolveTasks(jSONObject);
            }
            if (c1738h.f12290ch != 26 && (createReadContext.features & JSONReader.Feature.IgnoreCheckClose.mask) == 0) {
                throw new JSONException(c1738h.info("input not end"));
            }
            c1738h.close();
            return jSONObject;
        } catch (Throwable th) {
            try {
                c1738h.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    static JSONArray parseArray(byte[] bArr) {
        if (bArr == null || bArr.length == 0) {
            return null;
        }
        JSONReader.Context context = new JSONReader.Context(JSONFactory.defaultObjectReaderProvider);
        C1739i c1739i = new C1739i(context, null, bArr, 0, bArr.length);
        try {
            if (c1739i.nextIfNull()) {
                c1739i.close();
                return null;
            }
            JSONArray jSONArray = new JSONArray();
            c1739i.read((List) jSONArray);
            if (c1739i.f12291e != null) {
                c1739i.handleResolveTasks(jSONArray);
            }
            if (c1739i.f12290ch != 26 && (context.features & JSONReader.Feature.IgnoreCheckClose.mask) == 0) {
                throw new JSONException(c1739i.info("input not end"));
            }
            c1739i.close();
            return jSONArray;
        } catch (Throwable th) {
            try {
                c1739i.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    static int writeTo(OutputStream outputStream, Object obj, JSONWriter.Feature... featureArr) {
        ObjectWriterProvider objectWriterProvider = JSONFactory.defaultObjectWriterProvider;
        JSONWriter.Context context = new JSONWriter.Context(objectWriterProvider, featureArr);
        boolean z = (context.f12331k & JSONWriter.Feature.FieldBased.mask) != 0;
        try {
            JSONWriter ofUTF8 = JSONWriter.ofUTF8(context);
            try {
                if (obj == null) {
                    ofUTF8.writeNull();
                } else {
                    ofUTF8.rootObject = obj;
                    ofUTF8.path = JSONWriter.Path.ROOT;
                    Class<?> cls = obj.getClass();
                    objectWriterProvider.getObjectWriter(cls, cls, z).write(ofUTF8, obj, null, null, 0L);
                }
                int flushTo = ofUTF8.flushTo(outputStream);
                ofUTF8.close();
                return flushTo;
            } finally {
            }
        } catch (Exception e) {
            throw new JSONException(e.getMessage(), e);
        }
    }

    static byte[] toJSONBytes(Object obj, Charset charset, JSONWriter.Feature... featureArr) {
        ObjectWriterProvider objectWriterProvider = JSONFactory.defaultObjectWriterProvider;
        JSONWriter ofUTF8 = JSONWriter.ofUTF8(new JSONWriter.Context(objectWriterProvider, featureArr));
        try {
            if (obj == null) {
                ofUTF8.writeNull();
            } else {
                ofUTF8.rootObject = obj;
                ofUTF8.path = JSONWriter.Path.ROOT;
                Class<?> cls = obj.getClass();
                if (cls == JSONObject.class && ofUTF8.context.f12331k == 0) {
                    ofUTF8.write((JSONObject) obj);
                } else {
                    objectWriterProvider.getObjectWriter(cls, cls, (JSONFactory.f12228d & JSONWriter.Feature.FieldBased.mask) != 0).write(ofUTF8, obj, null, null, 0L);
                }
            }
            byte[] bytes = ofUTF8.getBytes(charset);
            ofUTF8.close();
            return bytes;
        } catch (Throwable th) {
            if (ofUTF8 != null) {
                try {
                    ofUTF8.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
            }
            throw th;
        }
    }

    static String toJSONString(Object obj, JSONWriter.Context context) {
        try {
            JSONWriter m7325of = JSONWriter.m7325of(context);
            try {
                if (obj == null) {
                    m7325of.writeNull();
                } else {
                    m7325of.rootObject = obj;
                    m7325of.path = JSONWriter.Path.ROOT;
                    Class<?> cls = obj.getClass();
                    m7325of.getObjectWriter(cls, cls).write(m7325of, obj, null, null, 0L);
                }
                String obj2 = m7325of.toString();
                m7325of.close();
                return obj2;
            } catch (Throwable th) {
                if (m7325of != null) {
                    try {
                        m7325of.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                }
                throw th;
            }
        } catch (NullPointerException | NumberFormatException e) {
            throw new JSONException("JSON#toJSONString cannot serialize '" + obj + CloudStorageConstants.SINGLE_QUOTES, e);
        }
    }

    static boolean isValid(byte[] bArr, Charset charset) {
        if (bArr == null || bArr.length == 0) {
            return false;
        }
        return isValid(bArr, 0, bArr.length, charset);
    }

    static Object parse(String str, JSONReader.Feature... featureArr) {
        if (str == null || str.isEmpty()) {
            return null;
        }
        ObjectReaderProvider defaultObjectReaderProvider = JSONFactory.getDefaultObjectReaderProvider();
        JSONReader.Context context = new JSONReader.Context(defaultObjectReaderProvider, featureArr);
        ObjectReader objectReader = defaultObjectReaderProvider.getObjectReader(Object.class, false);
        C1738h c1738h = new C1738h(context, str, 0, str.length());
        try {
            Object readObject = objectReader.readObject(c1738h, null, null, 0L);
            if (c1738h.f12290ch != 26 && (context.features & JSONReader.Feature.IgnoreCheckClose.mask) == 0) {
                throw new JSONException(c1738h.info("input not end"));
            }
            c1738h.close();
            return readObject;
        } catch (Throwable th) {
            try {
                c1738h.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    static boolean isValid(byte[] bArr, int i, int i2, Charset charset) {
        boolean z;
        if (bArr != null && bArr.length != 0 && i2 != 0) {
            try {
                JSONReader m7306of = JSONReader.m7306of(bArr, i, i2, charset);
                try {
                    m7306of.skipValue();
                    if (m7306of.isEnd()) {
                        if (!m7306of.comma) {
                            z = true;
                            m7306of.close();
                            return z;
                        }
                    }
                    z = false;
                    m7306of.close();
                    return z;
                } finally {
                }
            } catch (JSONException unused) {
            }
        }
        return false;
    }

    static JSONObject parseObject(String str, int i, int i2, JSONReader.Feature... featureArr) {
        if (str == null || str.isEmpty() || i2 == 0) {
            return null;
        }
        JSONReader.Context createReadContext = JSONFactory.createReadContext(featureArr);
        JSONReader m7298of = JSONReader.m7298of(str, i, i2, createReadContext);
        try {
            if (m7298of.nextIfNull()) {
                m7298of.close();
                return null;
            }
            JSONObject jSONObject = new JSONObject();
            m7298of.read(jSONObject, 0L);
            if (m7298of.f12291e != null) {
                m7298of.handleResolveTasks(jSONObject);
            }
            if (m7298of.f12290ch != 26 && (createReadContext.features & JSONReader.Feature.IgnoreCheckClose.mask) == 0) {
                throw new JSONException(m7298of.info("input not end"));
            }
            m7298of.close();
            return jSONObject;
        } catch (Throwable th) {
            if (m7298of != null) {
                try {
                    m7298of.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
            }
            throw th;
        }
    }

    static Object parse(String str, int i, int i2, JSONReader.Feature... featureArr) {
        if (str == null || str.isEmpty() || i2 == 0) {
            return null;
        }
        ObjectReaderProvider defaultObjectReaderProvider = JSONFactory.getDefaultObjectReaderProvider();
        JSONReader.Context context = new JSONReader.Context(defaultObjectReaderProvider, featureArr);
        ObjectReader objectReader = defaultObjectReaderProvider.getObjectReader(Object.class, false);
        JSONReader m7298of = JSONReader.m7298of(str, i, i2, context);
        try {
            Object readObject = objectReader.readObject(m7298of, null, null, 0L);
            if (m7298of.f12290ch != 26 && (context.features & JSONReader.Feature.IgnoreCheckClose.mask) == 0) {
                throw new JSONException(m7298of.info("input not end"));
            }
            m7298of.close();
            return readObject;
        } catch (Throwable th) {
            if (m7298of != null) {
                try {
                    m7298of.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
            }
            throw th;
        }
    }

    static JSONArray parseArray(byte[] bArr, int i, int i2, Charset charset) {
        if (bArr == null || bArr.length == 0 || i2 == 0) {
            return null;
        }
        JSONReader.Context context = new JSONReader.Context(JSONFactory.defaultObjectReaderProvider);
        JSONReader m7307of = JSONReader.m7307of(bArr, i, i2, charset, context);
        try {
            if (m7307of.nextIfNull()) {
                m7307of.close();
                return null;
            }
            JSONArray jSONArray = new JSONArray();
            m7307of.read((List) jSONArray);
            if (m7307of.f12291e != null) {
                m7307of.handleResolveTasks(jSONArray);
            }
            if (m7307of.f12290ch != 26 && (context.features & JSONReader.Feature.IgnoreCheckClose.mask) == 0) {
                throw new JSONException(m7307of.info("input not end"));
            }
            m7307of.close();
            return jSONArray;
        } catch (Throwable th) {
            if (m7307of != null) {
                try {
                    m7307of.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
            }
            throw th;
        }
    }

    static String toJSONString(Object obj, JSONWriter.Feature... featureArr) {
        ObjectWriterProvider objectWriterProvider = JSONFactory.defaultObjectWriterProvider;
        JSONWriter.Context context = new JSONWriter.Context(objectWriterProvider, featureArr);
        boolean z = (context.f12331k & JSONWriter.Feature.FieldBased.mask) != 0;
        JSONWriter m7325of = JSONWriter.m7325of(context);
        try {
            if (obj == null) {
                m7325of.writeNull();
            } else {
                m7325of.rootObject = obj;
                m7325of.path = JSONWriter.Path.ROOT;
                Class<?> cls = obj.getClass();
                objectWriterProvider.getObjectWriter(cls, cls, z).write(m7325of, obj, null, null, 0L);
            }
            String obj2 = m7325of.toString();
            m7325of.close();
            return obj2;
        } catch (Throwable th) {
            if (m7325of != null) {
                try {
                    m7325of.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
            }
            throw th;
        }
    }

    static int writeTo(OutputStream outputStream, Object obj, Filter[] filterArr, JSONWriter.Feature... featureArr) {
        ObjectWriterProvider objectWriterProvider = JSONFactory.defaultObjectWriterProvider;
        JSONWriter.Context context = new JSONWriter.Context(objectWriterProvider, featureArr);
        context.configFilter(filterArr);
        boolean z = (context.f12331k & JSONWriter.Feature.FieldBased.mask) != 0;
        try {
            JSONWriter ofUTF8 = JSONWriter.ofUTF8(context);
            try {
                if (obj == null) {
                    ofUTF8.writeNull();
                } else {
                    ofUTF8.rootObject = obj;
                    ofUTF8.path = JSONWriter.Path.ROOT;
                    if (filterArr != null && filterArr.length != 0) {
                        ofUTF8.context.configFilter(filterArr);
                    }
                    Class<?> cls = obj.getClass();
                    objectWriterProvider.getObjectWriter(cls, cls, z).write(ofUTF8, obj, null, null, 0L);
                }
                int flushTo = ofUTF8.flushTo(outputStream);
                ofUTF8.close();
                return flushTo;
            } finally {
            }
        } catch (Exception e) {
            throw new JSONException("JSON#writeTo cannot serialize '" + obj + "' to 'OutputStream'", e);
        }
    }

    static byte[] toJSONBytes(Object obj, Charset charset, JSONWriter.Context context) {
        ObjectWriterProvider objectWriterProvider = context.provider;
        JSONWriter ofUTF8 = JSONWriter.ofUTF8(context);
        try {
            if (obj == null) {
                ofUTF8.writeNull();
            } else {
                ofUTF8.rootObject = obj;
                ofUTF8.path = JSONWriter.Path.ROOT;
                Class<?> cls = obj.getClass();
                if (cls == JSONObject.class && ofUTF8.context.f12331k == 0) {
                    ofUTF8.write((JSONObject) obj);
                } else {
                    objectWriterProvider.getObjectWriter(cls, cls, (JSONFactory.f12228d & JSONWriter.Feature.FieldBased.mask) != 0).write(ofUTF8, obj, null, null, 0L);
                }
            }
            byte[] bytes = ofUTF8.getBytes(charset);
            ofUTF8.close();
            return bytes;
        } catch (Throwable th) {
            if (ofUTF8 != null) {
                try {
                    ofUTF8.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
            }
            throw th;
        }
    }

    static Object parse(String str, JSONReader.Context context) {
        if (str == null || str.isEmpty()) {
            return null;
        }
        ObjectReader objectReader = context.getObjectReader(Object.class);
        C1738h c1738h = new C1738h(context, str, 0, str.length());
        try {
            Object readObject = objectReader.readObject(c1738h, null, null, 0L);
            if (c1738h.f12290ch != 26 && (context.features & JSONReader.Feature.IgnoreCheckClose.mask) == 0) {
                throw new JSONException(c1738h.info("input not end"));
            }
            c1738h.close();
            return readObject;
        } catch (Throwable th) {
            try {
                c1738h.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    static JSONObject parseObject(String str, int i, int i2, JSONReader.Context context) {
        if (str == null || str.isEmpty() || i2 == 0) {
            return null;
        }
        JSONReader m7298of = JSONReader.m7298of(str, i, i2, context);
        try {
            if (m7298of.nextIfNull()) {
                m7298of.close();
                return null;
            }
            JSONObject jSONObject = new JSONObject();
            m7298of.read(jSONObject, 0L);
            if (m7298of.f12291e != null) {
                m7298of.handleResolveTasks(jSONObject);
            }
            if (m7298of.f12290ch != 26 && (context.features & JSONReader.Feature.IgnoreCheckClose.mask) == 0) {
                throw new JSONException(m7298of.info("input not end"));
            }
            m7298of.close();
            return jSONObject;
        } catch (Throwable th) {
            if (m7298of != null) {
                try {
                    m7298of.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
            }
            throw th;
        }
    }

    static String toJSONString(Object obj, Filter filter, JSONWriter.Feature... featureArr) {
        ObjectWriterProvider objectWriterProvider = JSONFactory.defaultObjectWriterProvider;
        JSONWriter.Context context = new JSONWriter.Context(objectWriterProvider, null, filter, featureArr);
        boolean z = (context.f12331k & JSONWriter.Feature.FieldBased.mask) != 0;
        JSONWriter m7325of = JSONWriter.m7325of(context);
        try {
            if (obj == null) {
                m7325of.writeNull();
            } else {
                m7325of.rootObject = obj;
                m7325of.path = JSONWriter.Path.ROOT;
                Class<?> cls = obj.getClass();
                objectWriterProvider.getObjectWriter(cls, cls, z).write(m7325of, obj, null, null, 0L);
            }
            String obj2 = m7325of.toString();
            m7325of.close();
            return obj2;
        } catch (Throwable th) {
            if (m7325of != null) {
                try {
                    m7325of.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
            }
            throw th;
        }
    }

    static JSONArray parseArray(char[] cArr) {
        if (cArr == null || cArr.length == 0) {
            return null;
        }
        JSONReader.Context context = new JSONReader.Context(JSONFactory.defaultObjectReaderProvider);
        C1738h c1738h = new C1738h(context, null, cArr, 0, cArr.length);
        try {
            if (c1738h.nextIfNull()) {
                c1738h.close();
                return null;
            }
            JSONArray jSONArray = new JSONArray();
            c1738h.read((List) jSONArray);
            if (c1738h.f12291e != null) {
                c1738h.handleResolveTasks(jSONArray);
            }
            if (c1738h.f12290ch != 26 && (context.features & JSONReader.Feature.IgnoreCheckClose.mask) == 0) {
                throw new JSONException(c1738h.info("input not end"));
            }
            c1738h.close();
            return jSONArray;
        } catch (Throwable th) {
            try {
                c1738h.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    static byte[] toJSONBytes(Object obj, String str, JSONWriter.Feature... featureArr) {
        ObjectWriterProvider objectWriterProvider = JSONFactory.defaultObjectWriterProvider;
        JSONWriter.Context context = new JSONWriter.Context(objectWriterProvider, featureArr);
        if (str != null && !str.isEmpty()) {
            context.setDateFormat(str);
        }
        boolean z = (context.f12331k & JSONWriter.Feature.FieldBased.mask) != 0;
        C1742l c1742l = new C1742l(context);
        try {
            if (obj == null) {
                c1742l.writeNull();
            } else {
                c1742l.rootObject = obj;
                c1742l.path = JSONWriter.Path.ROOT;
                Class<?> cls = obj.getClass();
                objectWriterProvider.getObjectWriter(cls, cls, z).write(c1742l, obj, null, null, 0L);
            }
            byte[] bytes = c1742l.getBytes();
            c1742l.close();
            return bytes;
        } catch (Throwable th) {
            try {
                c1742l.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    static int writeTo(OutputStream outputStream, Object obj, String str, Filter[] filterArr, JSONWriter.Feature... featureArr) {
        ObjectWriterProvider objectWriterProvider = JSONFactory.defaultObjectWriterProvider;
        JSONWriter.Context context = new JSONWriter.Context(objectWriterProvider, featureArr);
        context.configFilter(filterArr);
        boolean z = (context.f12331k & JSONWriter.Feature.FieldBased.mask) != 0;
        try {
            JSONWriter ofUTF8 = JSONWriter.ofUTF8(context);
            try {
                if (obj == null) {
                    ofUTF8.writeNull();
                } else {
                    ofUTF8.rootObject = obj;
                    ofUTF8.path = JSONWriter.Path.ROOT;
                    if (str != null && !str.isEmpty()) {
                        ofUTF8.context.setDateFormat(str);
                    }
                    if (filterArr != null && filterArr.length != 0) {
                        ofUTF8.context.configFilter(filterArr);
                    }
                    Class<?> cls = obj.getClass();
                    objectWriterProvider.getObjectWriter(cls, cls, z).write(ofUTF8, obj, null, null, 0L);
                }
                int flushTo = ofUTF8.flushTo(outputStream);
                ofUTF8.close();
                return flushTo;
            } finally {
            }
        } catch (Exception e) {
            throw new JSONException("JSON#writeTo cannot serialize '" + obj + "' to 'OutputStream'", e);
        }
    }

    static Object parse(byte[] bArr, JSONReader.Context context) {
        if (bArr == null || bArr.length == 0) {
            return null;
        }
        ObjectReader objectReader = context.getObjectReader(Object.class);
        C1739i c1739i = new C1739i(context, null, bArr, 0, bArr.length);
        try {
            Object readObject = objectReader.readObject(c1739i, null, null, 0L);
            if (c1739i.f12290ch != 26 && (context.features & JSONReader.Feature.IgnoreCheckClose.mask) == 0) {
                throw new JSONException(c1739i.info("input not end"));
            }
            c1739i.close();
            return readObject;
        } catch (Throwable th) {
            try {
                c1739i.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    static JSONObject parseObject(String str, JSONReader.Context context) {
        if (str == null || str.isEmpty()) {
            return null;
        }
        JSONReader m7299of = JSONReader.m7299of(str, context);
        try {
            if (m7299of.nextIfNull()) {
                m7299of.close();
                return null;
            }
            JSONObject jSONObject = new JSONObject();
            m7299of.read(jSONObject, 0L);
            if (m7299of.f12291e != null) {
                m7299of.handleResolveTasks(jSONObject);
            }
            if (m7299of.f12290ch != 26 && (context.features & JSONReader.Feature.IgnoreCheckClose.mask) == 0) {
                throw new JSONException(m7299of.info("input not end"));
            }
            m7299of.close();
            return jSONObject;
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

    static Object parse(byte[] bArr, JSONReader.Feature... featureArr) {
        if (bArr == null || bArr.length == 0) {
            return null;
        }
        ObjectReaderProvider defaultObjectReaderProvider = JSONFactory.getDefaultObjectReaderProvider();
        JSONReader.Context context = new JSONReader.Context(defaultObjectReaderProvider, featureArr);
        ObjectReader objectReader = defaultObjectReaderProvider.getObjectReader(Object.class, false);
        C1739i c1739i = new C1739i(context, null, bArr, 0, bArr.length);
        try {
            Object readObject = objectReader.readObject(c1739i, null, null, 0L);
            if (c1739i.f12290ch != 26 && (context.features & JSONReader.Feature.IgnoreCheckClose.mask) == 0) {
                throw new JSONException(c1739i.info("input not end"));
            }
            c1739i.close();
            return readObject;
        } catch (Throwable th) {
            try {
                c1739i.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    static String toJSONString(Object obj, Filter[] filterArr, JSONWriter.Feature... featureArr) {
        ObjectWriterProvider objectWriterProvider = JSONFactory.defaultObjectWriterProvider;
        JSONWriter.Context context = new JSONWriter.Context(objectWriterProvider, featureArr);
        context.configFilter(filterArr);
        boolean z = (context.f12331k & JSONWriter.Feature.FieldBased.mask) != 0;
        JSONWriter m7325of = JSONWriter.m7325of(context);
        try {
            if (obj == null) {
                m7325of.writeNull();
            } else {
                m7325of.rootObject = obj;
                m7325of.path = JSONWriter.Path.ROOT;
                Class<?> cls = obj.getClass();
                objectWriterProvider.getObjectWriter(cls, cls, z).write(m7325of, obj, null, null, 0L);
            }
            String obj2 = m7325of.toString();
            m7325of.close();
            return obj2;
        } catch (Throwable th) {
            if (m7325of != null) {
                try {
                    m7325of.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
            }
            throw th;
        }
    }

    static JSONArray parseArray(String str, JSONReader.Feature... featureArr) {
        if (str == null || str.isEmpty()) {
            return null;
        }
        JSONReader.Context context = new JSONReader.Context(JSONFactory.defaultObjectReaderProvider, featureArr);
        C1738h c1738h = new C1738h(context, str, 0, str.length());
        try {
            if (c1738h.nextIfNull()) {
                c1738h.close();
                return null;
            }
            JSONArray jSONArray = new JSONArray();
            c1738h.read((List) jSONArray);
            if (c1738h.f12291e != null) {
                c1738h.handleResolveTasks(jSONArray);
            }
            if (c1738h.f12290ch != 26 && (context.features & JSONReader.Feature.IgnoreCheckClose.mask) == 0) {
                throw new JSONException(c1738h.info("input not end"));
            }
            c1738h.close();
            return jSONArray;
        } catch (Throwable th) {
            try {
                c1738h.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    static byte[] toJSONBytes(Object obj, Filter... filterArr) {
        ObjectWriterProvider objectWriterProvider = JSONFactory.defaultObjectWriterProvider;
        JSONWriter.Context context = new JSONWriter.Context(objectWriterProvider);
        context.configFilter(filterArr);
        boolean z = (context.f12331k & JSONWriter.Feature.FieldBased.mask) != 0;
        C1742l c1742l = new C1742l(context);
        if (filterArr != null) {
            try {
                if (filterArr.length != 0) {
                    c1742l.context.configFilter(filterArr);
                }
            } catch (Throwable th) {
                try {
                    c1742l.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        }
        if (obj == null) {
            c1742l.writeNull();
        } else {
            c1742l.rootObject = obj;
            c1742l.path = JSONWriter.Path.ROOT;
            Class<?> cls = obj.getClass();
            objectWriterProvider.getObjectWriter(cls, cls, z).write(c1742l, obj, null, null, 0L);
        }
        byte[] bytes = c1742l.getBytes();
        c1742l.close();
        return bytes;
    }

    static JSONObject parseObject(Reader reader, JSONReader.Feature... featureArr) {
        if (reader == null) {
            return null;
        }
        JSONReader.Context createReadContext = JSONFactory.createReadContext(featureArr);
        JSONReader m7295of = JSONReader.m7295of(reader, createReadContext);
        try {
            if (m7295of.isEnd()) {
                m7295of.close();
                return null;
            }
            JSONObject jSONObject = new JSONObject();
            m7295of.read(jSONObject, 0L);
            if (m7295of.f12291e != null) {
                m7295of.handleResolveTasks(jSONObject);
            }
            if (m7295of.f12290ch != 26 && (createReadContext.features & JSONReader.Feature.IgnoreCheckClose.mask) == 0) {
                throw new JSONException(m7295of.info("input not end"));
            }
            m7295of.close();
            return jSONObject;
        } catch (Throwable th) {
            if (m7295of != null) {
                try {
                    m7295of.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
            }
            throw th;
        }
    }

    static Object parse(char[] cArr, JSONReader.Feature... featureArr) {
        if (cArr == null || cArr.length == 0) {
            return null;
        }
        ObjectReaderProvider defaultObjectReaderProvider = JSONFactory.getDefaultObjectReaderProvider();
        JSONReader.Context context = new JSONReader.Context(defaultObjectReaderProvider, featureArr);
        ObjectReader objectReader = defaultObjectReaderProvider.getObjectReader(Object.class, false);
        C1738h c1738h = new C1738h(context, null, cArr, 0, cArr.length);
        try {
            Object readObject = objectReader.readObject(c1738h, null, null, 0L);
            if (c1738h.f12290ch != 26 && (context.features & JSONReader.Feature.IgnoreCheckClose.mask) == 0) {
                throw new JSONException(c1738h.info("input not end"));
            }
            c1738h.close();
            return readObject;
        } catch (Throwable th) {
            try {
                c1738h.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    static String toJSONString(Object obj, String str, JSONWriter.Feature... featureArr) {
        ObjectWriterProvider objectWriterProvider = JSONFactory.defaultObjectWriterProvider;
        JSONWriter.Context context = new JSONWriter.Context(objectWriterProvider, featureArr);
        if (str != null && !str.isEmpty()) {
            context.setDateFormat(str);
        }
        boolean z = (context.f12331k & JSONWriter.Feature.FieldBased.mask) != 0;
        JSONWriter m7325of = JSONWriter.m7325of(context);
        try {
            if (obj == null) {
                m7325of.writeNull();
            } else {
                m7325of.rootObject = obj;
                m7325of.path = JSONWriter.Path.ROOT;
                Class<?> cls = obj.getClass();
                objectWriterProvider.getObjectWriter(cls, cls, z).write(m7325of, obj, null, null, 0L);
            }
            String obj2 = m7325of.toString();
            m7325of.close();
            return obj2;
        } catch (Throwable th) {
            if (m7325of != null) {
                try {
                    m7325of.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
            }
            throw th;
        }
    }

    static JSONArray parseArray(URL url, JSONReader.Feature... featureArr) {
        if (url == null) {
            return null;
        }
        try {
            InputStream openStream = url.openStream();
            try {
                JSONArray parseArray = parseArray(openStream, featureArr);
                if (openStream != null) {
                    openStream.close();
                }
                return parseArray;
            } finally {
            }
        } catch (IOException e) {
            throw new JSONException("JSON#parseArray cannot parse '" + url + "' to '" + JSONArray.class + CloudStorageConstants.SINGLE_QUOTES, e);
        }
    }

    static byte[] toJSONBytes(Object obj, JSONWriter.Feature... featureArr) {
        ObjectWriterProvider objectWriterProvider = JSONFactory.defaultObjectWriterProvider;
        JSONWriter.Context context = new JSONWriter.Context(objectWriterProvider, featureArr);
        boolean z = (context.f12331k & JSONWriter.Feature.FieldBased.mask) != 0;
        C1742l c1742l = new C1742l(context);
        try {
            if (obj == null) {
                c1742l.writeNull();
            } else {
                c1742l.rootObject = obj;
                c1742l.path = JSONWriter.Path.ROOT;
                Class<?> cls = obj.getClass();
                objectWriterProvider.getObjectWriter(cls, cls, z).write(c1742l, obj, null, null, 0L);
            }
            byte[] bytes = c1742l.getBytes();
            c1742l.close();
            return bytes;
        } catch (Throwable th) {
            try {
                c1742l.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    static Object parse(InputStream inputStream, JSONReader.Context context) {
        if (inputStream == null) {
            return null;
        }
        ObjectReader objectReader = context.getObjectReader(Object.class);
        C1739i c1739i = new C1739i(context, inputStream);
        try {
            Object readObject = objectReader.readObject(c1739i, null, null, 0L);
            if (c1739i.f12290ch != 26 && (context.features & JSONReader.Feature.IgnoreCheckClose.mask) == 0) {
                throw new JSONException(c1739i.info("input not end"));
            }
            c1739i.close();
            return readObject;
        } catch (Throwable th) {
            try {
                c1739i.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    static JSONArray parseArray(InputStream inputStream, JSONReader.Feature... featureArr) {
        if (inputStream == null) {
            return null;
        }
        JSONReader.Context context = new JSONReader.Context(JSONFactory.defaultObjectReaderProvider, featureArr);
        JSONReader m7293of = JSONReader.m7293of(inputStream, StandardCharsets.UTF_8, context);
        try {
            if (m7293of.nextIfNull()) {
                m7293of.close();
                return null;
            }
            JSONArray jSONArray = new JSONArray();
            m7293of.read((List) jSONArray);
            if (m7293of.f12291e != null) {
                m7293of.handleResolveTasks(jSONArray);
            }
            if (m7293of.f12290ch != 26 && (context.features & JSONReader.Feature.IgnoreCheckClose.mask) == 0) {
                throw new JSONException(m7293of.info("input not end"));
            }
            m7293of.close();
            return jSONArray;
        } catch (Throwable th) {
            if (m7293of != null) {
                try {
                    m7293of.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
            }
            throw th;
        }
    }

    static JSONObject parseObject(InputStream inputStream, JSONReader.Feature... featureArr) {
        if (inputStream == null) {
            return null;
        }
        JSONReader.Context createReadContext = JSONFactory.createReadContext(featureArr);
        JSONReader m7293of = JSONReader.m7293of(inputStream, StandardCharsets.UTF_8, createReadContext);
        try {
            if (m7293of.isEnd()) {
                m7293of.close();
                return null;
            }
            JSONObject jSONObject = new JSONObject();
            m7293of.read(jSONObject, 0L);
            if (m7293of.f12291e != null) {
                m7293of.handleResolveTasks(jSONObject);
            }
            if (m7293of.f12290ch != 26 && (createReadContext.features & JSONReader.Feature.IgnoreCheckClose.mask) == 0) {
                throw new JSONException(m7293of.info("input not end"));
            }
            m7293of.close();
            return jSONObject;
        } catch (Throwable th) {
            if (m7293of != null) {
                try {
                    m7293of.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
            }
            throw th;
        }
    }

    static String toJSONString(Object obj, String str, Filter[] filterArr, JSONWriter.Feature... featureArr) {
        ObjectWriterProvider objectWriterProvider = JSONFactory.defaultObjectWriterProvider;
        JSONWriter.Context context = new JSONWriter.Context(objectWriterProvider, featureArr);
        context.configFilter(filterArr);
        if (str != null && !str.isEmpty()) {
            context.setDateFormat(str);
        }
        boolean z = (context.f12331k & JSONWriter.Feature.FieldBased.mask) != 0;
        JSONWriter m7325of = JSONWriter.m7325of(context);
        try {
            if (obj == null) {
                m7325of.writeNull();
            } else {
                m7325of.rootObject = obj;
                m7325of.path = JSONWriter.Path.ROOT;
                Class<?> cls = obj.getClass();
                objectWriterProvider.getObjectWriter(cls, cls, z).write(m7325of, obj, null, null, 0L);
            }
            String obj2 = m7325of.toString();
            m7325of.close();
            return obj2;
        } catch (Throwable th) {
            if (m7325of != null) {
                try {
                    m7325of.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
            }
            throw th;
        }
    }

    static byte[] toJSONBytes(Object obj, Filter[] filterArr, JSONWriter.Feature... featureArr) {
        ObjectWriterProvider objectWriterProvider = JSONFactory.defaultObjectWriterProvider;
        JSONWriter.Context context = new JSONWriter.Context(objectWriterProvider, featureArr);
        context.configFilter(filterArr);
        boolean z = (context.f12331k & JSONWriter.Feature.FieldBased.mask) != 0;
        C1742l c1742l = new C1742l(context);
        try {
            if (obj == null) {
                c1742l.writeNull();
            } else {
                c1742l.rootObject = obj;
                c1742l.path = JSONWriter.Path.ROOT;
                Class<?> cls = obj.getClass();
                objectWriterProvider.getObjectWriter(cls, cls, z).write(c1742l, obj, null, null, 0L);
            }
            byte[] bytes = c1742l.getBytes();
            c1742l.close();
            return bytes;
        } catch (Throwable th) {
            try {
                c1742l.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    static JSONObject parseObject(byte[] bArr) {
        if (bArr == null || bArr.length == 0) {
            return null;
        }
        JSONReader.Context createReadContext = JSONFactory.createReadContext();
        C1739i c1739i = new C1739i(createReadContext, null, bArr, 0, bArr.length);
        try {
            if (c1739i.nextIfNull()) {
                c1739i.close();
                return null;
            }
            JSONObject jSONObject = new JSONObject();
            c1739i.read(jSONObject, 0L);
            if (c1739i.f12291e != null) {
                c1739i.handleResolveTasks(jSONObject);
            }
            if (c1739i.f12290ch != 26 && (createReadContext.features & JSONReader.Feature.IgnoreCheckClose.mask) == 0) {
                throw new JSONException(c1739i.info("input not end"));
            }
            c1739i.close();
            return jSONObject;
        } catch (Throwable th) {
            try {
                c1739i.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    static JSONArray parseArray(InputStream inputStream, Charset charset, JSONReader.Context context) {
        if (inputStream == null) {
            return null;
        }
        JSONReader m7293of = JSONReader.m7293of(inputStream, charset, context);
        try {
            if (m7293of.nextIfNull()) {
                m7293of.close();
                return null;
            }
            JSONArray jSONArray = new JSONArray();
            m7293of.read((List) jSONArray);
            if (m7293of.f12291e != null) {
                m7293of.handleResolveTasks(jSONArray);
            }
            if (m7293of.f12290ch != 26 && (context.features & JSONReader.Feature.IgnoreCheckClose.mask) == 0) {
                throw new JSONException(m7293of.info("input not end"));
            }
            m7293of.close();
            return jSONArray;
        } catch (Throwable th) {
            if (m7293of != null) {
                try {
                    m7293of.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
            }
            throw th;
        }
    }

    static <T> List<T> parseArray(String str, Type type, JSONReader.Feature... featureArr) {
        if (str == null || str.isEmpty()) {
            return null;
        }
        JSONReader.Context context = new JSONReader.Context(JSONFactory.defaultObjectReaderProvider, featureArr);
        C1738h c1738h = new C1738h(context, str, 0, str.length());
        try {
            List<T> readArray = c1738h.readArray(type);
            if (c1738h.f12291e != null) {
                c1738h.handleResolveTasks(readArray);
            }
            if (c1738h.f12290ch != 26 && (context.features & JSONReader.Feature.IgnoreCheckClose.mask) == 0) {
                throw new JSONException(c1738h.info("input not end"));
            }
            c1738h.close();
            return readArray;
        } catch (Throwable th) {
            try {
                c1738h.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    static JSONObject parseObject(char[] cArr) {
        if (cArr == null || cArr.length == 0) {
            return null;
        }
        JSONReader.Context createReadContext = JSONFactory.createReadContext();
        C1738h c1738h = new C1738h(createReadContext, null, cArr, 0, cArr.length);
        try {
            if (c1738h.nextIfNull()) {
                c1738h.close();
                return null;
            }
            JSONObject jSONObject = new JSONObject();
            c1738h.read(jSONObject, 0L);
            if (c1738h.f12291e != null) {
                c1738h.handleResolveTasks(jSONObject);
            }
            if (c1738h.f12290ch != 26 && (createReadContext.features & JSONReader.Feature.IgnoreCheckClose.mask) == 0) {
                throw new JSONException(c1738h.info("input not end"));
            }
            c1738h.close();
            return jSONObject;
        } catch (Throwable th) {
            try {
                c1738h.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    static byte[] toJSONBytes(Object obj, String str, Filter[] filterArr, JSONWriter.Feature... featureArr) {
        ObjectWriterProvider objectWriterProvider = JSONFactory.defaultObjectWriterProvider;
        JSONWriter.Context context = new JSONWriter.Context(objectWriterProvider, featureArr);
        context.configFilter(filterArr);
        boolean z = (context.f12331k & JSONWriter.Feature.FieldBased.mask) != 0;
        C1742l c1742l = new C1742l(context);
        try {
            if (obj == null) {
                c1742l.writeNull();
            } else {
                c1742l.rootObject = obj;
                c1742l.path = JSONWriter.Path.ROOT;
                if (str != null && !str.isEmpty()) {
                    c1742l.context.setDateFormat(str);
                }
                if (filterArr != null && filterArr.length != 0) {
                    c1742l.context.configFilter(filterArr);
                }
                Class<?> cls = obj.getClass();
                objectWriterProvider.getObjectWriter(cls, cls, z).write(c1742l, obj, null, null, 0L);
            }
            byte[] bytes = c1742l.getBytes();
            c1742l.close();
            return bytes;
        } catch (Throwable th) {
            try {
                c1742l.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    static <T> List<T> parseArray(String str, Type type) {
        if (str == null || str.isEmpty()) {
            return null;
        }
        JSONReader.Context context = new JSONReader.Context(JSONFactory.defaultObjectReaderProvider);
        C1738h c1738h = new C1738h(context, str, 0, str.length());
        try {
            List<T> readArray = c1738h.readArray(type);
            if (c1738h.f12291e != null) {
                c1738h.handleResolveTasks(readArray);
            }
            if (c1738h.f12290ch != 26 && (context.features & JSONReader.Feature.IgnoreCheckClose.mask) == 0) {
                throw new JSONException(c1738h.info("input not end"));
            }
            c1738h.close();
            return readArray;
        } catch (Throwable th) {
            try {
                c1738h.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    static JSONObject parseObject(InputStream inputStream, Charset charset) {
        if (inputStream == null) {
            return null;
        }
        JSONReader.Context createReadContext = JSONFactory.createReadContext();
        JSONReader m7293of = JSONReader.m7293of(inputStream, charset, createReadContext);
        try {
            if (m7293of.nextIfNull()) {
                m7293of.close();
                return null;
            }
            JSONObject jSONObject = new JSONObject();
            m7293of.read(jSONObject, 0L);
            if (m7293of.f12291e != null) {
                m7293of.handleResolveTasks(jSONObject);
            }
            if (m7293of.f12290ch != 26 && (createReadContext.features & JSONReader.Feature.IgnoreCheckClose.mask) == 0) {
                throw new JSONException(m7293of.info("input not end"));
            }
            m7293of.close();
            return jSONObject;
        } catch (Throwable th) {
            if (m7293of != null) {
                try {
                    m7293of.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
            }
            throw th;
        }
    }

    static <T> List<T> parseArray(String str, Class<T> cls) {
        if (str == null || str.isEmpty()) {
            return null;
        }
        JSONReader.Context context = new JSONReader.Context(JSONFactory.defaultObjectReaderProvider);
        C1738h c1738h = new C1738h(context, str, 0, str.length());
        try {
            List<T> readArray = c1738h.readArray(cls);
            if (c1738h.f12291e != null) {
                c1738h.handleResolveTasks(readArray);
            }
            if (c1738h.f12290ch != 26 && (context.features & JSONReader.Feature.IgnoreCheckClose.mask) == 0) {
                throw new JSONException(c1738h.info("input not end"));
            }
            c1738h.close();
            return readArray;
        } catch (Throwable th) {
            try {
                c1738h.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    static JSONObject parseObject(InputStream inputStream, Charset charset, JSONReader.Context context) {
        if (inputStream == null) {
            return null;
        }
        JSONReader m7293of = JSONReader.m7293of(inputStream, charset, context);
        try {
            if (m7293of.isEnd()) {
                m7293of.close();
                return null;
            }
            JSONObject jSONObject = new JSONObject();
            m7293of.read(jSONObject, 0L);
            if (m7293of.f12291e != null) {
                m7293of.handleResolveTasks(jSONObject);
            }
            if (m7293of.f12290ch != 26 && (context.features & JSONReader.Feature.IgnoreCheckClose.mask) == 0) {
                throw new JSONException(m7293of.info("input not end"));
            }
            m7293of.close();
            return jSONObject;
        } catch (Throwable th) {
            if (m7293of != null) {
                try {
                    m7293of.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
            }
            throw th;
        }
    }

    static <T> List<T> parseArray(String str, Type... typeArr) {
        if (str == null || str.isEmpty()) {
            return null;
        }
        JSONReader.Context context = new JSONReader.Context(JSONFactory.defaultObjectReaderProvider);
        C1738h c1738h = new C1738h(context, str, 0, str.length());
        try {
            List<T> readList = c1738h.readList(typeArr);
            if (c1738h.f12291e != null) {
                c1738h.handleResolveTasks(readList);
            }
            if (c1738h.f12290ch != 26 && (context.features & JSONReader.Feature.IgnoreCheckClose.mask) == 0) {
                throw new JSONException(c1738h.info("input not end"));
            }
            c1738h.close();
            return readList;
        } catch (Throwable th) {
            try {
                c1738h.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    static JSONObject parseObject(URL url) {
        if (url == null) {
            return null;
        }
        try {
            InputStream openStream = url.openStream();
            try {
                JSONObject parseObject = parseObject(openStream, StandardCharsets.UTF_8);
                if (openStream != null) {
                    openStream.close();
                }
                return parseObject;
            } finally {
            }
        } catch (IOException e) {
            throw new JSONException("JSON#parseObject cannot parse '" + url + CloudStorageConstants.SINGLE_QUOTES, e);
        }
    }

    static JSONObject parseObject(byte[] bArr, JSONReader.Feature... featureArr) {
        if (bArr == null || bArr.length == 0) {
            return null;
        }
        JSONReader.Context createReadContext = JSONFactory.createReadContext(featureArr);
        C1739i c1739i = new C1739i(createReadContext, null, bArr, 0, bArr.length);
        try {
            if (c1739i.nextIfNull()) {
                c1739i.close();
                return null;
            }
            JSONObject jSONObject = new JSONObject();
            c1739i.read(jSONObject, 0L);
            if (c1739i.f12291e != null) {
                c1739i.handleResolveTasks(jSONObject);
            }
            if (c1739i.f12290ch != 26 && (createReadContext.features & JSONReader.Feature.IgnoreCheckClose.mask) == 0) {
                throw new JSONException(c1739i.info("input not end"));
            }
            c1739i.close();
            return jSONObject;
        } catch (Throwable th) {
            try {
                c1739i.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    static <T> List<T> parseArray(String str, Class<T> cls, JSONReader.Feature... featureArr) {
        if (str == null || str.isEmpty()) {
            return null;
        }
        JSONReader.Context context = new JSONReader.Context(JSONFactory.defaultObjectReaderProvider, featureArr);
        C1738h c1738h = new C1738h(context, str, 0, str.length());
        try {
            List<T> readArray = c1738h.readArray(cls);
            if (c1738h.f12291e != null) {
                c1738h.handleResolveTasks(readArray);
            }
            if (c1738h.f12290ch != 26 && (context.features & JSONReader.Feature.IgnoreCheckClose.mask) == 0) {
                throw new JSONException(c1738h.info("input not end"));
            }
            c1738h.close();
            return readArray;
        } catch (Throwable th) {
            try {
                c1738h.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    static <T> List<T> parseArray(char[] cArr, Class<T> cls, JSONReader.Feature... featureArr) {
        if (cArr == null || cArr.length == 0) {
            return null;
        }
        JSONReader.Context context = new JSONReader.Context(JSONFactory.defaultObjectReaderProvider, featureArr);
        C1738h c1738h = new C1738h(context, null, cArr, 0, cArr.length);
        try {
            List<T> readArray = c1738h.readArray(cls);
            if (c1738h.f12291e != null) {
                c1738h.handleResolveTasks(readArray);
            }
            if (c1738h.f12290ch != 26 && (context.features & JSONReader.Feature.IgnoreCheckClose.mask) == 0) {
                throw new JSONException(c1738h.info("input not end"));
            }
            c1738h.close();
            return readArray;
        } catch (Throwable th) {
            try {
                c1738h.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    static JSONObject parseObject(byte[] bArr, int i, int i2, JSONReader.Feature... featureArr) {
        if (bArr == null || bArr.length == 0 || i2 == 0) {
            return null;
        }
        JSONReader.Context createReadContext = JSONFactory.createReadContext(featureArr);
        C1739i c1739i = new C1739i(createReadContext, null, bArr, i, i2);
        try {
            if (c1739i.nextIfNull()) {
                c1739i.close();
                return null;
            }
            JSONObject jSONObject = new JSONObject();
            c1739i.read(jSONObject, 0L);
            if (c1739i.f12291e != null) {
                c1739i.handleResolveTasks(jSONObject);
            }
            if (c1739i.f12290ch != 26 && (createReadContext.features & JSONReader.Feature.IgnoreCheckClose.mask) == 0) {
                throw new JSONException(c1739i.info("input not end"));
            }
            c1739i.close();
            return jSONObject;
        } catch (Throwable th) {
            try {
                c1739i.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    static <T> List<T> parseArray(String str, Type[] typeArr, JSONReader.Feature... featureArr) {
        if (str == null || str.isEmpty()) {
            return null;
        }
        JSONReader.Context context = new JSONReader.Context(JSONFactory.defaultObjectReaderProvider, featureArr);
        C1738h c1738h = new C1738h(context, str, 0, str.length());
        try {
            if (c1738h.nextIfNull()) {
                c1738h.close();
                return null;
            }
            c1738h.startArray();
            ArrayList arrayList = new ArrayList(typeArr.length);
            for (Type type : typeArr) {
                arrayList.add(c1738h.read(type));
            }
            c1738h.endArray();
            if (c1738h.f12291e != null) {
                c1738h.handleResolveTasks(arrayList);
            }
            if (c1738h.f12290ch != 26 && (context.features & JSONReader.Feature.IgnoreCheckClose.mask) == 0) {
                throw new JSONException(c1738h.info("input not end"));
            }
            c1738h.close();
            return arrayList;
        } catch (Throwable th) {
            try {
                c1738h.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    static JSONObject parseObject(char[] cArr, int i, int i2, JSONReader.Feature... featureArr) {
        if (cArr == null || cArr.length == 0 || i2 == 0) {
            return null;
        }
        JSONReader.Context createReadContext = JSONFactory.createReadContext(featureArr);
        C1738h c1738h = new C1738h(createReadContext, null, cArr, i, i2);
        try {
            if (c1738h.nextIfNull()) {
                c1738h.close();
                return null;
            }
            JSONObject jSONObject = new JSONObject();
            c1738h.read(jSONObject, 0L);
            if (c1738h.f12291e != null) {
                c1738h.handleResolveTasks(jSONObject);
            }
            if (c1738h.f12290ch != 26 && (createReadContext.features & JSONReader.Feature.IgnoreCheckClose.mask) == 0) {
                throw new JSONException(c1738h.info("input not end"));
            }
            c1738h.close();
            return jSONObject;
        } catch (Throwable th) {
            try {
                c1738h.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    static JSONObject parseObject(byte[] bArr, int i, int i2, Charset charset, JSONReader.Feature... featureArr) {
        if (bArr == null || bArr.length == 0 || i2 == 0) {
            return null;
        }
        JSONReader.Context createReadContext = JSONFactory.createReadContext();
        JSONReader m7307of = JSONReader.m7307of(bArr, i, i2, charset, createReadContext);
        try {
            if (m7307of.nextIfNull()) {
                m7307of.close();
                return null;
            }
            createReadContext.config(featureArr);
            JSONObject jSONObject = new JSONObject();
            m7307of.read(jSONObject, 0L);
            if (m7307of.f12291e != null) {
                m7307of.handleResolveTasks(jSONObject);
            }
            if (m7307of.f12290ch != 26 && (createReadContext.features & JSONReader.Feature.IgnoreCheckClose.mask) == 0) {
                throw new JSONException(m7307of.info("input not end"));
            }
            m7307of.close();
            return jSONObject;
        } catch (Throwable th) {
            if (m7307of != null) {
                try {
                    m7307of.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
            }
            throw th;
        }
    }

    static <T> List<T> parseArray(byte[] bArr, Type type, JSONReader.Feature... featureArr) {
        if (bArr == null || bArr.length == 0) {
            return null;
        }
        JSONReader.Context context = new JSONReader.Context(JSONFactory.defaultObjectReaderProvider, featureArr);
        C1739i c1739i = new C1739i(context, null, bArr, 0, bArr.length);
        try {
            List<T> readArray = c1739i.readArray(type);
            if (c1739i.f12291e != null) {
                c1739i.handleResolveTasks(readArray);
            }
            if (c1739i.f12290ch != 26 && (context.features & JSONReader.Feature.IgnoreCheckClose.mask) == 0) {
                throw new JSONException(c1739i.info("input not end"));
            }
            c1739i.close();
            return readArray;
        } catch (Throwable th) {
            try {
                c1739i.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    static <T> T parseObject(String str, Class<T> cls) {
        if (str == null || str.isEmpty()) {
            return null;
        }
        ObjectReaderProvider objectReaderProvider = JSONFactory.defaultObjectReaderProvider;
        JSONReader.Context context = new JSONReader.Context(objectReaderProvider);
        ObjectReader objectReader = objectReaderProvider.getObjectReader(cls, (JSONFactory.f12225a & JSONReader.Feature.FieldBased.mask) != 0);
        JSONReader c1738h = new C1738h(context, str, 0, str.length());
        try {
            T t = (T) objectReader.readObject(c1738h, cls, null, 0L);
            if (c1738h.f12291e != null) {
                c1738h.handleResolveTasks(t);
            }
            if (c1738h.f12290ch != 26 && (context.features & JSONReader.Feature.IgnoreCheckClose.mask) == 0) {
                throw new JSONException(c1738h.info("input not end"));
            }
            c1738h.close();
            return t;
        } catch (Throwable th) {
            try {
                c1738h.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    static <T> List<T> parseArray(byte[] bArr, Class<T> cls, JSONReader.Feature... featureArr) {
        if (bArr == null || bArr.length == 0) {
            return null;
        }
        JSONReader.Context context = new JSONReader.Context(JSONFactory.defaultObjectReaderProvider, featureArr);
        C1739i c1739i = new C1739i(context, null, bArr, 0, bArr.length);
        try {
            List<T> readArray = c1739i.readArray(cls);
            if (c1739i.f12291e != null) {
                c1739i.handleResolveTasks(readArray);
            }
            if (c1739i.f12290ch != 26 && (context.features & JSONReader.Feature.IgnoreCheckClose.mask) == 0) {
                throw new JSONException(c1739i.info("input not end"));
            }
            c1739i.close();
            return readArray;
        } catch (Throwable th) {
            try {
                c1739i.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    static <T> List<T> parseArray(byte[] bArr, int i, int i2, Charset charset, Class<T> cls, JSONReader.Feature... featureArr) {
        if (bArr == null || bArr.length == 0 || i2 == 0) {
            return null;
        }
        JSONReader.Context context = new JSONReader.Context(JSONFactory.defaultObjectReaderProvider, featureArr);
        JSONReader m7307of = JSONReader.m7307of(bArr, i, i2, charset, context);
        try {
            List<T> readArray = m7307of.readArray(cls);
            if (m7307of.f12291e != null) {
                m7307of.handleResolveTasks(readArray);
            }
            if (m7307of.f12290ch != 26 && (context.features & JSONReader.Feature.IgnoreCheckClose.mask) == 0) {
                throw new JSONException(m7307of.info("input not end"));
            }
            m7307of.close();
            return readArray;
        } catch (Throwable th) {
            if (m7307of != null) {
                try {
                    m7307of.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
            }
            throw th;
        }
    }

    static <T> T parseObject(String str, Class<T> cls, Filter filter, JSONReader.Feature... featureArr) {
        if (str == null || str.isEmpty()) {
            return null;
        }
        JSONReader.Context createReadContext = JSONFactory.createReadContext(filter, featureArr);
        ObjectReader objectReader = createReadContext.provider.getObjectReader(cls, (createReadContext.features & JSONReader.Feature.FieldBased.mask) != 0);
        JSONReader c1738h = new C1738h(createReadContext, str, 0, str.length());
        try {
            if (c1738h.nextIfNull()) {
                c1738h.close();
                return null;
            }
            T t = (T) objectReader.readObject(c1738h, cls, null, 0L);
            if (c1738h.f12291e != null) {
                c1738h.handleResolveTasks(t);
            }
            if (c1738h.f12290ch != 26 && (createReadContext.features & JSONReader.Feature.IgnoreCheckClose.mask) == 0) {
                throw new JSONException(c1738h.info("input not end"));
            }
            c1738h.close();
            return t;
        } catch (Throwable th) {
            try {
                c1738h.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    static <T> T parseObject(String str, Type type, String str2, Filter[] filterArr, JSONReader.Feature... featureArr) {
        if (str == null || str.isEmpty()) {
            return null;
        }
        JSONReader.Context createReadContext = JSONFactory.createReadContext(filterArr, featureArr);
        createReadContext.setDateFormat(str2);
        ObjectReader objectReader = createReadContext.provider.getObjectReader(type, (createReadContext.features & JSONReader.Feature.FieldBased.mask) != 0);
        JSONReader c1738h = new C1738h(createReadContext, str, 0, str.length());
        try {
            if (c1738h.nextIfNull()) {
                c1738h.close();
                return null;
            }
            T t = (T) objectReader.readObject(c1738h, type, null, 0L);
            if (c1738h.f12291e != null) {
                c1738h.handleResolveTasks(t);
            }
            if (c1738h.f12290ch != 26 && (createReadContext.features & JSONReader.Feature.IgnoreCheckClose.mask) == 0) {
                throw new JSONException(c1738h.info("input not end"));
            }
            c1738h.close();
            return t;
        } catch (Throwable th) {
            try {
                c1738h.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    static <T> T parseObject(String str, Type type) {
        if (str == null || str.isEmpty()) {
            return null;
        }
        ObjectReaderProvider objectReaderProvider = JSONFactory.defaultObjectReaderProvider;
        JSONReader.Context context = new JSONReader.Context(objectReaderProvider);
        C1738h c1738h = new C1738h(context, str, 0, str.length());
        try {
            T t = (T) objectReaderProvider.getObjectReader(type, (JSONFactory.f12225a & JSONReader.Feature.FieldBased.mask) != 0).readObject(c1738h, type, null, 0L);
            if (c1738h.f12291e != null) {
                c1738h.handleResolveTasks(t);
            }
            if (c1738h.f12290ch != 26 && (context.features & JSONReader.Feature.IgnoreCheckClose.mask) == 0) {
                throw new JSONException(c1738h.info("input not end"));
            }
            c1738h.close();
            return t;
        } catch (Throwable th) {
            try {
                c1738h.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    static <T extends Map<String, Object>> T parseObject(String str, MapMultiValueType<T> mapMultiValueType) {
        if (str == null || str.isEmpty()) {
            return null;
        }
        ObjectReaderProvider objectReaderProvider = JSONFactory.defaultObjectReaderProvider;
        JSONReader.Context context = new JSONReader.Context(objectReaderProvider);
        C1738h c1738h = new C1738h(context, str, 0, str.length());
        try {
            T t = (T) objectReaderProvider.getObjectReader(mapMultiValueType, (JSONFactory.f12225a & JSONReader.Feature.FieldBased.mask) != 0).readObject(c1738h, mapMultiValueType, null, 0L);
            if (c1738h.f12291e != null) {
                c1738h.handleResolveTasks(t);
            }
            if (c1738h.f12290ch != 26 && (context.features & JSONReader.Feature.IgnoreCheckClose.mask) == 0) {
                throw new JSONException(c1738h.info("input not end"));
            }
            c1738h.close();
            return t;
        } catch (Throwable th) {
            try {
                c1738h.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    static <T> T parseObject(String str, Type... typeArr) {
        return (T) parseObject(str, new MultiType(typeArr));
    }

    static <T> T parseObject(String str, TypeReference<T> typeReference, JSONReader.Feature... featureArr) {
        if (str == null || str.isEmpty()) {
            return null;
        }
        ObjectReaderProvider objectReaderProvider = JSONFactory.defaultObjectReaderProvider;
        JSONReader.Context context = new JSONReader.Context(objectReaderProvider, featureArr);
        Type type = typeReference.getType();
        ObjectReader objectReader = objectReaderProvider.getObjectReader(type, (JSONFactory.f12225a & JSONReader.Feature.FieldBased.mask) != 0);
        JSONReader c1738h = new C1738h(context, str, 0, str.length());
        try {
            T t = (T) objectReader.readObject(c1738h, type, null, 0L);
            if (c1738h.f12291e != null) {
                c1738h.handleResolveTasks(t);
            }
            if (c1738h.f12290ch != 26 && (context.features & JSONReader.Feature.IgnoreCheckClose.mask) == 0) {
                throw new JSONException(c1738h.info("input not end"));
            }
            c1738h.close();
            return t;
        } catch (Throwable th) {
            try {
                c1738h.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    static <T> T parseObject(String str, TypeReference<T> typeReference, Filter filter, JSONReader.Feature... featureArr) {
        if (str == null || str.isEmpty()) {
            return null;
        }
        ObjectReaderProvider objectReaderProvider = JSONFactory.defaultObjectReaderProvider;
        JSONReader.Context context = new JSONReader.Context(objectReaderProvider, (SymbolTable) null, filter, featureArr);
        Type type = typeReference.getType();
        ObjectReader objectReader = objectReaderProvider.getObjectReader(type, (context.features & JSONReader.Feature.FieldBased.mask) != 0);
        JSONReader c1738h = new C1738h(context, str, 0, str.length());
        try {
            T t = (T) objectReader.readObject(c1738h, type, null, 0L);
            if (c1738h.f12291e != null) {
                c1738h.handleResolveTasks(t);
            }
            if (c1738h.f12290ch != 26 && (context.features & JSONReader.Feature.IgnoreCheckClose.mask) == 0) {
                throw new JSONException(c1738h.info("input not end"));
            }
            c1738h.close();
            return t;
        } catch (Throwable th) {
            try {
                c1738h.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    static <T> T parseObject(String str, Class<T> cls, JSONReader.Feature... featureArr) {
        if (str == null || str.isEmpty()) {
            return null;
        }
        ObjectReaderProvider objectReaderProvider = JSONFactory.defaultObjectReaderProvider;
        JSONReader.Context context = new JSONReader.Context(objectReaderProvider, featureArr);
        ObjectReader objectReader = objectReaderProvider.getObjectReader(cls, (context.features & JSONReader.Feature.FieldBased.mask) != 0);
        JSONReader c1738h = new C1738h(context, str, 0, str.length());
        try {
            T t = (T) objectReader.readObject(c1738h, cls, null, 0L);
            if (c1738h.f12291e != null) {
                c1738h.handleResolveTasks(t);
            }
            if (c1738h.f12290ch != 26 && (context.features & JSONReader.Feature.IgnoreCheckClose.mask) == 0) {
                throw new JSONException(c1738h.info("input not end"));
            }
            c1738h.close();
            return t;
        } catch (Throwable th) {
            try {
                c1738h.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    static <T> T parseObject(String str, int i, int i2, Class<T> cls, JSONReader.Feature... featureArr) {
        if (str == null || str.isEmpty() || i2 == 0) {
            return null;
        }
        ObjectReaderProvider objectReaderProvider = JSONFactory.defaultObjectReaderProvider;
        JSONReader.Context context = new JSONReader.Context(objectReaderProvider, featureArr);
        ObjectReader objectReader = objectReaderProvider.getObjectReader(cls, (context.features & JSONReader.Feature.FieldBased.mask) != 0);
        JSONReader c1738h = new C1738h(context, str, i, i2);
        try {
            T t = (T) objectReader.readObject(c1738h, cls, null, 0L);
            if (c1738h.f12291e != null) {
                c1738h.handleResolveTasks(t);
            }
            if (c1738h.f12290ch != 26 && (context.features & JSONReader.Feature.IgnoreCheckClose.mask) == 0) {
                throw new JSONException(c1738h.info("input not end"));
            }
            c1738h.close();
            return t;
        } finally {
        }
    }

    static <T> T parseObject(String str, Class<T> cls, JSONReader.Context context) {
        if (str == null || str.isEmpty()) {
            return null;
        }
        ObjectReader objectReader = context.provider.getObjectReader(cls, (context.features & JSONReader.Feature.FieldBased.mask) != 0);
        JSONReader c1738h = new C1738h(context, str, 0, str.length());
        try {
            T t = (T) objectReader.readObject(c1738h, cls, null, 0L);
            if (c1738h.f12291e != null) {
                c1738h.handleResolveTasks(t);
            }
            if (c1738h.f12290ch != 26 && (context.features & JSONReader.Feature.IgnoreCheckClose.mask) == 0) {
                throw new JSONException(c1738h.info("input not end"));
            }
            c1738h.close();
            return t;
        } catch (Throwable th) {
            try {
                c1738h.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    static <T> T parseObject(String str, Class<T> cls, String str2, JSONReader.Feature... featureArr) {
        if (str == null || str.isEmpty()) {
            return null;
        }
        ObjectReaderProvider objectReaderProvider = JSONFactory.defaultObjectReaderProvider;
        JSONReader.Context context = new JSONReader.Context(objectReaderProvider, featureArr);
        if (str2 != null && !str2.isEmpty()) {
            context.setDateFormat(str2);
        }
        ObjectReader objectReader = objectReaderProvider.getObjectReader(cls, (context.features & JSONReader.Feature.FieldBased.mask) != 0);
        JSONReader c1738h = new C1738h(context, str, 0, str.length());
        try {
            T t = (T) objectReader.readObject(c1738h, cls, null, 0L);
            if (c1738h.f12291e != null) {
                c1738h.handleResolveTasks(t);
            }
            if (c1738h.f12290ch != 26 && (context.features & JSONReader.Feature.IgnoreCheckClose.mask) == 0) {
                throw new JSONException(c1738h.info("input not end"));
            }
            c1738h.close();
            return t;
        } catch (Throwable th) {
            try {
                c1738h.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    static <T> T parseObject(String str, Type type, JSONReader.Feature... featureArr) {
        if (str == null || str.isEmpty()) {
            return null;
        }
        ObjectReaderProvider objectReaderProvider = JSONFactory.defaultObjectReaderProvider;
        JSONReader.Context context = new JSONReader.Context(objectReaderProvider, featureArr);
        ObjectReader objectReader = objectReaderProvider.getObjectReader(type, (context.features & JSONReader.Feature.FieldBased.mask) != 0);
        JSONReader c1738h = new C1738h(context, str, 0, str.length());
        try {
            T t = (T) objectReader.readObject(c1738h, type, null, 0L);
            if (c1738h.f12291e != null) {
                c1738h.handleResolveTasks(t);
            }
            if (c1738h.f12290ch != 26 && (context.features & JSONReader.Feature.IgnoreCheckClose.mask) == 0) {
                throw new JSONException(c1738h.info("input not end"));
            }
            c1738h.close();
            return t;
        } catch (Throwable th) {
            try {
                c1738h.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    static <T> T parseObject(String str, Type type, Filter filter, JSONReader.Feature... featureArr) {
        if (str == null || str.isEmpty()) {
            return null;
        }
        ObjectReaderProvider objectReaderProvider = JSONFactory.defaultObjectReaderProvider;
        JSONReader.Context context = new JSONReader.Context(objectReaderProvider, (SymbolTable) null, filter, featureArr);
        ObjectReader objectReader = objectReaderProvider.getObjectReader(type, (context.features & JSONReader.Feature.FieldBased.mask) != 0);
        JSONReader c1738h = new C1738h(context, str, 0, str.length());
        try {
            T t = (T) objectReader.readObject(c1738h, type, null, 0L);
            if (c1738h.f12291e != null) {
                c1738h.handleResolveTasks(t);
            }
            if (c1738h.f12290ch != 26 && (context.features & JSONReader.Feature.IgnoreCheckClose.mask) == 0) {
                throw new JSONException(c1738h.info("input not end"));
            }
            c1738h.close();
            return t;
        } catch (Throwable th) {
            try {
                c1738h.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    static <T> T parseObject(String str, Type type, String str2, JSONReader.Feature... featureArr) {
        if (str == null || str.isEmpty()) {
            return null;
        }
        ObjectReaderProvider objectReaderProvider = JSONFactory.defaultObjectReaderProvider;
        JSONReader.Context context = new JSONReader.Context(objectReaderProvider, featureArr);
        if (str2 != null && !str2.isEmpty()) {
            context.setDateFormat(str2);
        }
        ObjectReader objectReader = objectReaderProvider.getObjectReader(type, (context.features & JSONReader.Feature.FieldBased.mask) != 0);
        JSONReader c1738h = new C1738h(context, str, 0, str.length());
        try {
            T t = (T) objectReader.readObject(c1738h, type, null, 0L);
            if (c1738h.f12291e != null) {
                c1738h.handleResolveTasks(t);
            }
            if (c1738h.f12290ch != 26 && (context.features & JSONReader.Feature.IgnoreCheckClose.mask) == 0) {
                throw new JSONException(c1738h.info("input not end"));
            }
            c1738h.close();
            return t;
        } catch (Throwable th) {
            try {
                c1738h.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    static <T> T parseObject(char[] cArr, int i, int i2, Type type, JSONReader.Feature... featureArr) {
        if (cArr == null || cArr.length == 0 || i2 == 0) {
            return null;
        }
        ObjectReaderProvider objectReaderProvider = JSONFactory.defaultObjectReaderProvider;
        JSONReader.Context context = new JSONReader.Context(objectReaderProvider, featureArr);
        ObjectReader objectReader = objectReaderProvider.getObjectReader(type, (context.features & JSONReader.Feature.FieldBased.mask) != 0);
        JSONReader c1738h = new C1738h(context, null, cArr, i, i2);
        try {
            T t = (T) objectReader.readObject(c1738h, type, null, 0L);
            if (c1738h.f12291e != null) {
                c1738h.handleResolveTasks(t);
            }
            if (c1738h.f12290ch != 26 && (context.features & JSONReader.Feature.IgnoreCheckClose.mask) == 0) {
                throw new JSONException(c1738h.info("input not end"));
            }
            c1738h.close();
            return t;
        } catch (Throwable th) {
            try {
                c1738h.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    static <T> T parseObject(char[] cArr, Class<T> cls) {
        if (cArr == null || cArr.length == 0) {
            return null;
        }
        ObjectReaderProvider objectReaderProvider = JSONFactory.defaultObjectReaderProvider;
        JSONReader.Context context = new JSONReader.Context(objectReaderProvider);
        ObjectReader objectReader = objectReaderProvider.getObjectReader(cls, (context.features & JSONReader.Feature.FieldBased.mask) != 0);
        JSONReader c1738h = new C1738h(context, null, cArr, 0, cArr.length);
        try {
            T t = (T) objectReader.readObject(c1738h, cls, null, 0L);
            if (c1738h.f12291e != null) {
                c1738h.handleResolveTasks(t);
            }
            if (c1738h.f12290ch != 26 && (context.features & JSONReader.Feature.IgnoreCheckClose.mask) == 0) {
                throw new JSONException(c1738h.info("input not end"));
            }
            c1738h.close();
            return t;
        } finally {
        }
    }

    static <T> T parseObject(byte[] bArr, int i, int i2, Type type, JSONReader.Feature... featureArr) {
        if (bArr == null || bArr.length == 0 || i2 == 0) {
            return null;
        }
        ObjectReaderProvider objectReaderProvider = JSONFactory.defaultObjectReaderProvider;
        JSONReader.Context context = new JSONReader.Context(objectReaderProvider, featureArr);
        ObjectReader objectReader = objectReaderProvider.getObjectReader(type, (context.features & JSONReader.Feature.FieldBased.mask) != 0);
        JSONReader c1739i = new C1739i(context, null, bArr, i, i2);
        try {
            T t = (T) objectReader.readObject(c1739i, type, null, 0L);
            if (c1739i.f12291e != null) {
                c1739i.handleResolveTasks(t);
            }
            if (c1739i.f12290ch != 26 && (context.features & JSONReader.Feature.IgnoreCheckClose.mask) == 0) {
                throw new JSONException(c1739i.info("input not end"));
            }
            c1739i.close();
            return t;
        } catch (Throwable th) {
            try {
                c1739i.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    static <T> T parseObject(byte[] bArr, Type type) {
        if (bArr == null || bArr.length == 0) {
            return null;
        }
        ObjectReaderProvider objectReaderProvider = JSONFactory.defaultObjectReaderProvider;
        JSONReader.Context context = new JSONReader.Context(objectReaderProvider);
        ObjectReader objectReader = objectReaderProvider.getObjectReader(type, (context.features & JSONReader.Feature.FieldBased.mask) != 0);
        JSONReader c1739i = new C1739i(context, null, bArr, 0, bArr.length);
        try {
            T t = (T) objectReader.readObject(c1739i, type, null, 0L);
            if (c1739i.f12291e != null) {
                c1739i.handleResolveTasks(t);
            }
            if (c1739i.f12290ch != 26 && (context.features & JSONReader.Feature.IgnoreCheckClose.mask) == 0) {
                throw new JSONException(c1739i.info("input not end"));
            }
            c1739i.close();
            return t;
        } finally {
        }
    }

    static <T> T parseObject(byte[] bArr, Class<T> cls) {
        if (bArr == null || bArr.length == 0) {
            return null;
        }
        JSONReader.Context createReadContext = JSONFactory.createReadContext();
        C1739i c1739i = new C1739i(createReadContext, null, bArr, 0, bArr.length);
        try {
            T t = (T) createReadContext.getObjectReader(cls).readObject(c1739i, cls, null, 0L);
            if (c1739i.f12291e != null) {
                c1739i.handleResolveTasks(t);
            }
            if (c1739i.f12290ch != 26 && (createReadContext.features & JSONReader.Feature.IgnoreCheckClose.mask) == 0) {
                throw new JSONException(c1739i.info("input not end"));
            }
            c1739i.close();
            return t;
        } catch (Throwable th) {
            try {
                c1739i.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    static <T> T parseObject(byte[] bArr, Class<T> cls, Filter filter, JSONReader.Feature... featureArr) {
        if (bArr == null || bArr.length == 0) {
            return null;
        }
        JSONReader.Context createReadContext = JSONFactory.createReadContext();
        C1739i c1739i = new C1739i(createReadContext, null, bArr, 0, bArr.length);
        try {
            createReadContext.config(filter, featureArr);
            T t = (T) createReadContext.provider.getObjectReader(cls, (createReadContext.features & JSONReader.Feature.FieldBased.mask) != 0).readObject(c1739i, cls, null, 0L);
            if (c1739i.f12291e != null) {
                c1739i.handleResolveTasks(t);
            }
            if (c1739i.f12290ch != 26 && (createReadContext.features & JSONReader.Feature.IgnoreCheckClose.mask) == 0) {
                throw new JSONException(c1739i.info("input not end"));
            }
            c1739i.close();
            return t;
        } catch (Throwable th) {
            try {
                c1739i.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    static <T> T parseObject(byte[] bArr, Class<T> cls, JSONReader.Context context) {
        if (bArr == null || bArr.length == 0) {
            return null;
        }
        C1739i c1739i = new C1739i(context, null, bArr, 0, bArr.length);
        try {
            T t = (T) context.provider.getObjectReader(cls, (context.features & JSONReader.Feature.FieldBased.mask) != 0).readObject(c1739i, cls, null, 0L);
            if (c1739i.f12291e != null) {
                c1739i.handleResolveTasks(t);
            }
            if (c1739i.f12290ch != 26 && (context.features & JSONReader.Feature.IgnoreCheckClose.mask) == 0) {
                throw new JSONException(c1739i.info("input not end"));
            }
            c1739i.close();
            return t;
        } catch (Throwable th) {
            try {
                c1739i.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    static <T> T parseObject(byte[] bArr, Type type, String str, Filter[] filterArr, JSONReader.Feature... featureArr) {
        if (bArr == null || bArr.length == 0) {
            return null;
        }
        ObjectReaderProvider objectReaderProvider = JSONFactory.defaultObjectReaderProvider;
        JSONReader.Context context = new JSONReader.Context(objectReaderProvider, (SymbolTable) null, filterArr, featureArr);
        context.setDateFormat(str);
        ObjectReader objectReader = objectReaderProvider.getObjectReader(type, (context.features & JSONReader.Feature.FieldBased.mask) != 0);
        JSONReader c1739i = new C1739i(context, null, bArr, 0, bArr.length);
        try {
            T t = (T) objectReader.readObject(c1739i, type, null, 0L);
            if (c1739i.f12291e != null) {
                c1739i.handleResolveTasks(t);
            }
            if (c1739i.f12290ch != 26 && (context.features & JSONReader.Feature.IgnoreCheckClose.mask) == 0) {
                throw new JSONException(c1739i.info("input not end"));
            }
            c1739i.close();
            return t;
        } catch (Throwable th) {
            try {
                c1739i.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    static <T> T parseObject(byte[] bArr, Class<T> cls, JSONReader.Feature... featureArr) {
        if (bArr == null || bArr.length == 0) {
            return null;
        }
        ObjectReaderProvider objectReaderProvider = JSONFactory.defaultObjectReaderProvider;
        JSONReader.Context context = new JSONReader.Context(objectReaderProvider, featureArr);
        ObjectReader objectReader = objectReaderProvider.getObjectReader(cls, (context.features & JSONReader.Feature.FieldBased.mask) != 0);
        JSONReader c1739i = new C1739i(context, null, bArr, 0, bArr.length);
        try {
            T t = (T) objectReader.readObject(c1739i, cls, null, 0L);
            if (c1739i.f12291e != null) {
                c1739i.handleResolveTasks(t);
            }
            if (c1739i.f12290ch != 26 && (context.features & JSONReader.Feature.IgnoreCheckClose.mask) == 0) {
                throw new JSONException(c1739i.info("input not end"));
            }
            c1739i.close();
            return t;
        } catch (Throwable th) {
            try {
                c1739i.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    static <T> T parseObject(byte[] bArr, Type type, JSONReader.Feature... featureArr) {
        if (bArr == null || bArr.length == 0) {
            return null;
        }
        ObjectReaderProvider objectReaderProvider = JSONFactory.defaultObjectReaderProvider;
        JSONReader.Context context = new JSONReader.Context(objectReaderProvider, featureArr);
        ObjectReader objectReader = objectReaderProvider.getObjectReader(type, (context.features & JSONReader.Feature.FieldBased.mask) != 0);
        JSONReader c1739i = new C1739i(context, null, bArr, 0, bArr.length);
        try {
            T t = (T) objectReader.readObject(c1739i, type, null, 0L);
            if (c1739i.f12291e != null) {
                c1739i.handleResolveTasks(t);
            }
            if (c1739i.f12290ch != 26 && (context.features & JSONReader.Feature.IgnoreCheckClose.mask) == 0) {
                throw new JSONException(c1739i.info("input not end"));
            }
            c1739i.close();
            return t;
        } catch (Throwable th) {
            try {
                c1739i.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    static <T> T parseObject(char[] cArr, Class<T> cls, JSONReader.Feature... featureArr) {
        if (cArr == null || cArr.length == 0) {
            return null;
        }
        ObjectReaderProvider objectReaderProvider = JSONFactory.defaultObjectReaderProvider;
        JSONReader.Context context = new JSONReader.Context(objectReaderProvider, featureArr);
        ObjectReader objectReader = objectReaderProvider.getObjectReader(cls, (context.features & JSONReader.Feature.FieldBased.mask) != 0);
        JSONReader c1738h = new C1738h(context, null, cArr, 0, cArr.length);
        try {
            T t = (T) objectReader.readObject(c1738h, cls, null, 0L);
            if (c1738h.f12291e != null) {
                c1738h.handleResolveTasks(t);
            }
            if (c1738h.f12290ch != 26 && (context.features & JSONReader.Feature.IgnoreCheckClose.mask) == 0) {
                throw new JSONException(c1738h.info("input not end"));
            }
            c1738h.close();
            return t;
        } catch (Throwable th) {
            try {
                c1738h.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    static <T> T parseObject(char[] cArr, Type type, JSONReader.Feature... featureArr) {
        if (cArr == null || cArr.length == 0) {
            return null;
        }
        ObjectReaderProvider objectReaderProvider = JSONFactory.defaultObjectReaderProvider;
        JSONReader.Context context = new JSONReader.Context(objectReaderProvider, featureArr);
        ObjectReader objectReader = objectReaderProvider.getObjectReader(type, (context.features & JSONReader.Feature.FieldBased.mask) != 0);
        JSONReader c1738h = new C1738h(context, null, cArr, 0, cArr.length);
        try {
            T t = (T) objectReader.readObject(c1738h, type, null, 0L);
            if (c1738h.f12291e != null) {
                c1738h.handleResolveTasks(t);
            }
            if (c1738h.f12290ch != 26 && (context.features & JSONReader.Feature.IgnoreCheckClose.mask) == 0) {
                throw new JSONException(c1738h.info("input not end"));
            }
            c1738h.close();
            return t;
        } catch (Throwable th) {
            try {
                c1738h.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    static <T> T parseObject(byte[] bArr, Type type, Filter filter, JSONReader.Feature... featureArr) {
        if (bArr == null || bArr.length == 0) {
            return null;
        }
        ObjectReaderProvider objectReaderProvider = JSONFactory.defaultObjectReaderProvider;
        JSONReader.Context context = new JSONReader.Context(objectReaderProvider, (SymbolTable) null, filter, featureArr);
        ObjectReader objectReader = objectReaderProvider.getObjectReader(type, (context.features & JSONReader.Feature.FieldBased.mask) != 0);
        JSONReader c1739i = new C1739i(context, null, bArr, 0, bArr.length);
        try {
            T t = (T) objectReader.readObject(c1739i, type, null, 0L);
            if (c1739i.f12291e != null) {
                c1739i.handleResolveTasks(t);
            }
            if (c1739i.f12290ch != 26 && (context.features & JSONReader.Feature.IgnoreCheckClose.mask) == 0) {
                throw new JSONException(c1739i.info("input not end"));
            }
            c1739i.close();
            return t;
        } catch (Throwable th) {
            try {
                c1739i.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    static <T> T parseObject(byte[] bArr, Type type, String str, JSONReader.Feature... featureArr) {
        if (bArr == null || bArr.length == 0) {
            return null;
        }
        ObjectReaderProvider objectReaderProvider = JSONFactory.defaultObjectReaderProvider;
        JSONReader.Context context = new JSONReader.Context(objectReaderProvider, featureArr);
        if (str != null && !str.isEmpty()) {
            context.setDateFormat(str);
        }
        ObjectReader objectReader = objectReaderProvider.getObjectReader(type, (context.features & JSONReader.Feature.FieldBased.mask) != 0);
        JSONReader c1739i = new C1739i(context, null, bArr, 0, bArr.length);
        try {
            T t = (T) objectReader.readObject(c1739i, type, null, 0L);
            if (c1739i.f12291e != null) {
                c1739i.handleResolveTasks(t);
            }
            if (c1739i.f12290ch != 26 && (context.features & JSONReader.Feature.IgnoreCheckClose.mask) == 0) {
                throw new JSONException(c1739i.info("input not end"));
            }
            c1739i.close();
            return t;
        } catch (Throwable th) {
            try {
                c1739i.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    static <T> T parseObject(ByteBuffer byteBuffer, Class<T> cls) {
        if (byteBuffer == null) {
            return null;
        }
        ObjectReaderProvider objectReaderProvider = JSONFactory.defaultObjectReaderProvider;
        JSONReader.Context context = new JSONReader.Context(objectReaderProvider);
        ObjectReader objectReader = objectReaderProvider.getObjectReader(cls, (context.features & JSONReader.Feature.FieldBased.mask) != 0);
        JSONReader m7301of = JSONReader.m7301of(byteBuffer, context, (Charset) null);
        try {
            T t = (T) objectReader.readObject(m7301of, cls, null, 0L);
            if (m7301of.f12291e != null) {
                m7301of.handleResolveTasks(t);
            }
            if (m7301of.f12290ch != 26 && (context.features & JSONReader.Feature.IgnoreCheckClose.mask) == 0) {
                throw new JSONException(m7301of.info("input not end"));
            }
            m7301of.close();
            return t;
        } catch (Throwable th) {
            if (m7301of != null) {
                try {
                    m7301of.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
            }
            throw th;
        }
    }

    static <T> T parseObject(Reader reader, Type type, JSONReader.Feature... featureArr) {
        if (reader == null) {
            return null;
        }
        ObjectReaderProvider objectReaderProvider = JSONFactory.defaultObjectReaderProvider;
        JSONReader.Context context = new JSONReader.Context(objectReaderProvider, featureArr);
        ObjectReader objectReader = objectReaderProvider.getObjectReader(type, (context.features & JSONReader.Feature.FieldBased.mask) != 0);
        JSONReader c1738h = new C1738h(context, reader);
        try {
            if (c1738h.isEnd()) {
                c1738h.close();
                return null;
            }
            T t = (T) objectReader.readObject(c1738h, type, null, 0L);
            if (c1738h.f12291e != null) {
                c1738h.handleResolveTasks(t);
            }
            if (c1738h.f12290ch != 26 && (context.features & JSONReader.Feature.IgnoreCheckClose.mask) == 0) {
                throw new JSONException(c1738h.info("input not end"));
            }
            c1738h.close();
            return t;
        } catch (Throwable th) {
            try {
                c1738h.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    static <T> T parseObject(InputStream inputStream, Type type, JSONReader.Feature... featureArr) {
        if (inputStream == null) {
            return null;
        }
        ObjectReaderProvider objectReaderProvider = JSONFactory.defaultObjectReaderProvider;
        JSONReader.Context context = new JSONReader.Context(objectReaderProvider, featureArr);
        ObjectReader objectReader = objectReaderProvider.getObjectReader(type, (context.features & JSONReader.Feature.FieldBased.mask) != 0);
        JSONReader m7293of = JSONReader.m7293of(inputStream, StandardCharsets.UTF_8, context);
        try {
            if (m7293of.isEnd()) {
                m7293of.close();
                return null;
            }
            T t = (T) objectReader.readObject(m7293of, type, null, 0L);
            if (m7293of.f12291e != null) {
                m7293of.handleResolveTasks(t);
            }
            if (m7293of.f12290ch != 26 && (context.features & JSONReader.Feature.IgnoreCheckClose.mask) == 0) {
                throw new JSONException(m7293of.info("input not end"));
            }
            m7293of.close();
            return t;
        } catch (Throwable th) {
            if (m7293of != null) {
                try {
                    m7293of.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
            }
            throw th;
        }
    }

    static <T> T parseObject(InputStream inputStream, Charset charset, Type type, JSONReader.Context context) {
        if (inputStream == null) {
            return null;
        }
        ObjectReader objectReader = context.provider.getObjectReader(type, (context.features & JSONReader.Feature.FieldBased.mask) != 0);
        JSONReader m7293of = JSONReader.m7293of(inputStream, charset, context);
        try {
            if (m7293of.isEnd()) {
                m7293of.close();
                return null;
            }
            T t = (T) objectReader.readObject(m7293of, type, null, 0L);
            if (m7293of.f12291e != null) {
                m7293of.handleResolveTasks(t);
            }
            if (m7293of.f12290ch != 26 && (context.features & JSONReader.Feature.IgnoreCheckClose.mask) == 0) {
                throw new JSONException(m7293of.info("input not end"));
            }
            m7293of.close();
            return t;
        } catch (Throwable th) {
            if (m7293of != null) {
                try {
                    m7293of.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
            }
            throw th;
        }
    }

    static <T> T parseObject(InputStream inputStream, Charset charset, Class<T> cls, JSONReader.Context context) {
        if (inputStream == null) {
            return null;
        }
        ObjectReader objectReader = context.provider.getObjectReader(cls, (context.features & JSONReader.Feature.FieldBased.mask) != 0);
        JSONReader m7293of = JSONReader.m7293of(inputStream, charset, context);
        try {
            if (m7293of.isEnd()) {
                m7293of.close();
                return null;
            }
            T t = (T) objectReader.readObject(m7293of, cls, null, 0L);
            if (m7293of.f12291e != null) {
                m7293of.handleResolveTasks(t);
            }
            if (m7293of.f12290ch != 26 && (context.features & JSONReader.Feature.IgnoreCheckClose.mask) == 0) {
                throw new JSONException(m7293of.info("input not end"));
            }
            m7293of.close();
            return t;
        } catch (Throwable th) {
            if (m7293of != null) {
                try {
                    m7293of.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
            }
            throw th;
        }
    }

    static <T> T parseObject(URL url, Type type, JSONReader.Feature... featureArr) {
        if (url == null) {
            return null;
        }
        try {
            InputStream openStream = url.openStream();
            try {
                T t = (T) parseObject(openStream, type, featureArr);
                if (openStream != null) {
                    openStream.close();
                }
                return t;
            } finally {
            }
        } catch (IOException e) {
            throw new JSONException("parseObject error", e);
        }
    }

    static <T> T parseObject(URL url, Class<T> cls, JSONReader.Feature... featureArr) {
        if (url == null) {
            return null;
        }
        try {
            InputStream openStream = url.openStream();
            try {
                T t = (T) parseObject(openStream, cls, featureArr);
                if (openStream != null) {
                    openStream.close();
                }
                return t;
            } finally {
            }
        } catch (IOException e) {
            throw new JSONException("JSON#parseObject cannot parse '" + url + "' to '" + cls + CloudStorageConstants.SINGLE_QUOTES, e);
        }
    }

    static <T> T parseObject(URL url, Function<JSONObject, T> function, JSONReader.Feature... featureArr) {
        if (url == null) {
            return null;
        }
        try {
            InputStream openStream = url.openStream();
            try {
                JSONObject parseObject = parseObject(openStream, featureArr);
                if (parseObject == null) {
                    if (openStream != null) {
                        openStream.close();
                    }
                    return null;
                }
                T apply = function.apply(parseObject);
                if (openStream != null) {
                    openStream.close();
                }
                return apply;
            } finally {
            }
        } catch (IOException e) {
            throw new JSONException("JSON#parseObject cannot parse '" + url + CloudStorageConstants.SINGLE_QUOTES, e);
        }
    }

    static <T> T parseObject(InputStream inputStream, Type type, String str, JSONReader.Feature... featureArr) {
        if (inputStream == null) {
            return null;
        }
        ObjectReaderProvider objectReaderProvider = JSONFactory.defaultObjectReaderProvider;
        JSONReader.Context context = new JSONReader.Context(objectReaderProvider, featureArr);
        if (str != null && !str.isEmpty()) {
            context.setDateFormat(str);
        }
        ObjectReader objectReader = objectReaderProvider.getObjectReader(type, (context.features & JSONReader.Feature.FieldBased.mask) != 0);
        JSONReader m7293of = JSONReader.m7293of(inputStream, StandardCharsets.UTF_8, context);
        try {
            T t = (T) objectReader.readObject(m7293of, type, null, 0L);
            if (m7293of.f12291e != null) {
                m7293of.handleResolveTasks(t);
            }
            if (m7293of.f12290ch != 26 && (context.features & JSONReader.Feature.IgnoreCheckClose.mask) == 0) {
                throw new JSONException(m7293of.info("input not end"));
            }
            m7293of.close();
            return t;
        } catch (Throwable th) {
            if (m7293of != null) {
                try {
                    m7293of.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
            }
            throw th;
        }
    }

    static <T> T parseObject(InputStream inputStream, Charset charset, Type type, JSONReader.Feature... featureArr) {
        if (inputStream == null) {
            return null;
        }
        ObjectReaderProvider objectReaderProvider = JSONFactory.defaultObjectReaderProvider;
        JSONReader.Context context = new JSONReader.Context(objectReaderProvider, featureArr);
        ObjectReader objectReader = objectReaderProvider.getObjectReader(type, (context.features & JSONReader.Feature.FieldBased.mask) != 0);
        JSONReader m7293of = JSONReader.m7293of(inputStream, charset, context);
        try {
            T t = (T) objectReader.readObject(m7293of, type, null, 0L);
            if (m7293of.f12291e != null) {
                m7293of.handleResolveTasks(t);
            }
            if (m7293of.f12290ch != 26 && (context.features & JSONReader.Feature.IgnoreCheckClose.mask) == 0) {
                throw new JSONException(m7293of.info("input not end"));
            }
            m7293of.close();
            return t;
        } catch (Throwable th) {
            if (m7293of != null) {
                try {
                    m7293of.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
            }
            throw th;
        }
    }

    static <T> T parseObject(byte[] bArr, int i, int i2, Charset charset, Type type) {
        if (bArr == null || bArr.length == 0 || i2 == 0) {
            return null;
        }
        ObjectReaderProvider objectReaderProvider = JSONFactory.defaultObjectReaderProvider;
        JSONReader.Context context = new JSONReader.Context(objectReaderProvider);
        ObjectReader objectReader = objectReaderProvider.getObjectReader(type, (context.features & JSONReader.Feature.FieldBased.mask) != 0);
        JSONReader m7307of = JSONReader.m7307of(bArr, i, i2, charset, context);
        try {
            T t = (T) objectReader.readObject(m7307of, type, null, 0L);
            if (m7307of.f12291e != null) {
                m7307of.handleResolveTasks(t);
            }
            if (m7307of.f12290ch != 26 && (context.features & JSONReader.Feature.IgnoreCheckClose.mask) == 0) {
                throw new JSONException(m7307of.info("input not end"));
            }
            m7307of.close();
            return t;
        } finally {
        }
    }

    static <T> T parseObject(byte[] bArr, int i, int i2, Charset charset, Class<T> cls, JSONReader.Feature... featureArr) {
        if (bArr == null || bArr.length == 0 || i2 == 0) {
            return null;
        }
        ObjectReaderProvider objectReaderProvider = JSONFactory.defaultObjectReaderProvider;
        JSONReader.Context context = new JSONReader.Context(objectReaderProvider, featureArr);
        ObjectReader objectReader = objectReaderProvider.getObjectReader(cls, (context.features & JSONReader.Feature.FieldBased.mask) != 0);
        JSONReader m7307of = JSONReader.m7307of(bArr, i, i2, charset, context);
        try {
            T t = (T) objectReader.readObject(m7307of, cls, null, 0L);
            if (m7307of.f12291e != null) {
                m7307of.handleResolveTasks(t);
            }
            if (m7307of.f12290ch != 26 && (context.features & JSONReader.Feature.IgnoreCheckClose.mask) == 0) {
                throw new JSONException(m7307of.info("input not end"));
            }
            m7307of.close();
            return t;
        } finally {
        }
    }

    static <T> void parseObject(InputStream inputStream, Type type, Consumer<T> consumer, JSONReader.Feature... featureArr) {
        parseObject(inputStream, StandardCharsets.UTF_8, '\n', type, (Consumer) consumer, featureArr);
    }

    /* JADX WARN: Code restructure failed: missing block: B:34:0x00a5, code lost:
    
        throw new com.alibaba.fastjson2.JSONException(r3.info("input not end"));
     */
    /* JADX WARN: Multi-variable type inference failed */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    static <T> void parseObject(java.io.InputStream r22, java.nio.charset.Charset r23, char r24, java.lang.reflect.Type r25, java.util.function.Consumer<T> r26, com.alibaba.fastjson2.JSONReader.Feature... r27) {
        /*
            Method dump skipped, instructions count: 293
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson2.JSON.parseObject(java.io.InputStream, java.nio.charset.Charset, char, java.lang.reflect.Type, java.util.function.Consumer, com.alibaba.fastjson2.JSONReader$Feature[]):void");
    }

    /* JADX WARN: Multi-variable type inference failed */
    static <T> void parseObject(Reader reader, char c, Type type, Consumer<T> consumer) {
        char c2;
        int i;
        int identityHashCode = System.identityHashCode(Thread.currentThread());
        JSONFactory.C1722b[] c1722bArr = JSONFactory.f12217A;
        JSONFactory.C1722b c1722b = c1722bArr[identityHashCode & (c1722bArr.length - 1)];
        ObjectReader objectReader = null;
        char[] andSet = JSONFactory.f12219C.getAndSet(c1722b, null);
        if (andSet == null) {
            andSet = new char[8192];
        }
        ObjectReaderProvider objectReaderProvider = JSONFactory.defaultObjectReaderProvider;
        JSONReader.Context context = new JSONReader.Context(objectReaderProvider);
        boolean z = (context.features & JSONReader.Feature.FieldBased.mask) != 0;
        char[] cArr = andSet;
        int i2 = 0;
        int i3 = 0;
        while (true) {
            try {
                try {
                    int read = reader.read(cArr, i2, cArr.length - i2);
                    if (read == -1) {
                        return;
                    }
                    int i4 = i2 + read;
                    boolean z2 = false;
                    while (i2 < i4) {
                        if (cArr[i2] == c) {
                            JSONReader m7311of = JSONReader.m7311of(cArr, i3, i2 - i3, context);
                            if (objectReader == null) {
                                objectReader = objectReaderProvider.getObjectReader(type, z);
                            }
                            ObjectReader objectReader2 = objectReader;
                            i = i4;
                            consumer.accept(objectReader2.readObject(m7311of, type, null, 0L));
                            i3 = i2 + 1;
                            objectReader = objectReader2;
                            z2 = true;
                        } else {
                            i = i4;
                        }
                        i2++;
                        i4 = i;
                    }
                    int i5 = i4;
                    if (i5 != cArr.length) {
                        c2 = 8192;
                    } else if (z2) {
                        i2 = cArr.length - i3;
                        System.arraycopy(cArr, i3, cArr, 0, i2);
                        i3 = 0;
                        c2 = 8192;
                    } else {
                        c2 = 8192;
                        cArr = Arrays.copyOf(cArr, cArr.length + 8192);
                    }
                    i2 = i5;
                } catch (IOException e) {
                    throw new JSONException("JSON#parseObject cannot parse the 'Reader' to '" + type + CloudStorageConstants.SINGLE_QUOTES, e);
                }
            } finally {
                JSONFactory.f12219C.lazySet(c1722b, cArr);
            }
        }
    }
}
