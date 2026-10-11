package com.sunia.HTREnginev2;

import com.alibaba.fastjson2.JSONException;
import com.alibaba.fastjson2.JSONFactory;
import com.alibaba.fastjson2.JSONPath;
import com.alibaba.fastjson2.JSONReader;
import com.alibaba.fastjson2.codec.FieldInfo;
import com.alibaba.fastjson2.reader.FieldReader;
import com.alibaba.fastjson2.reader.ObjectReader;
import com.alibaba.fastjson2.reader.ObjectReaderAdapter;
import com.alibaba.fastjson2.reader.ObjectReaders;
import com.alibaba.fastjson2.util.BeanUtils;
import com.alibaba.fastjson2.util.Fnv;
import com.alibaba.fastjson2.writer.ObjectWriterAdapter;
import java.lang.annotation.Annotation;
import java.lang.reflect.Constructor;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* loaded from: classes3.dex */
public final class m7k<T> extends ObjectReaderAdapter<T> {

    /* renamed from: s */
    public static final long f77302s = Fnv.hashCode64(ObjectWriterAdapter.f12832t);

    /* renamed from: t */
    public static final long f77303t = Fnv.hashCode64("message");

    /* renamed from: u */
    public static final long f77304u = Fnv.hashCode64("detailMessage");

    /* renamed from: v */
    public static final long f77305v = Fnv.hashCode64("localizedMessage");

    /* renamed from: w */
    public static final long f77306w = Fnv.hashCode64("cause");

    /* renamed from: x */
    public static final long f77307x = Fnv.hashCode64("stackTrace");

    /* renamed from: y */
    public static final long f77308y = Fnv.hashCode64("suppressedExceptions");

    /* renamed from: l */
    public final FieldReader f77309l;

    /* renamed from: m */
    public final List<Constructor> f77310m;

    /* renamed from: n */
    public final Constructor f77311n;

    /* renamed from: o */
    public final Constructor f77312o;

    /* renamed from: p */
    public final Constructor f77313p;

    /* renamed from: q */
    public final Constructor f77314q;

    /* renamed from: r */
    public final List<String[]> f77315r;

    public m7k(Class<T> cls) {
        this(cls, Arrays.asList(BeanUtils.getConstructor(cls)), ObjectReaders.fieldReader("stackTrace", StackTraceElement[].class, new i7k()));
    }

    /* renamed from: c */
    public static /* synthetic */ int m55562c(Constructor constructor, Constructor constructor2) {
        int parameterCount = constructor.getParameterCount();
        int parameterCount2 = constructor2.getParameterCount();
        if (parameterCount < parameterCount2) {
            return 1;
        }
        return parameterCount > parameterCount2 ? -1 : 0;
    }

    /* renamed from: b */
    public final Throwable m55563b(String str, Throwable th) {
        try {
            Constructor constructor = this.f77313p;
            if (constructor != null && th != null && str != null) {
                return (Throwable) constructor.newInstance(str, th);
            }
            Constructor constructor2 = this.f77312o;
            if (constructor2 != null && str != null) {
                return (Throwable) constructor2.newInstance(str);
            }
            Constructor constructor3 = this.f77314q;
            if (constructor3 != null && th != null) {
                return (Throwable) constructor3.newInstance(th);
            }
            if (constructor != null && (th != null || str != null)) {
                return (Throwable) constructor.newInstance(str, th);
            }
            Constructor constructor4 = this.f77311n;
            if (constructor4 != null) {
                return (Throwable) constructor4.newInstance(new Object[0]);
            }
            if (constructor != null) {
                return (Throwable) constructor.newInstance(str, th);
            }
            if (constructor2 != null) {
                return (Throwable) constructor2.newInstance(str);
            }
            if (constructor3 != null) {
                return (Throwable) constructor3.newInstance(th);
            }
            return null;
        } catch (Throwable th2) {
            throw new JSONException("create Exception error, class " + this.objectClass.getName() + ", " + th2.getMessage(), th2);
        }
    }

    @Override // com.alibaba.fastjson2.reader.ObjectReaderAdapter, com.alibaba.fastjson2.reader.ObjectReader
    public T readJSONBObject(JSONReader jSONReader, Type type, Object obj, long j) {
        ObjectReader objectReader;
        if (jSONReader.getType() == -110) {
            JSONReader.Context context = jSONReader.context;
            if (jSONReader.isSupportAutoType(j) || context.getContextAutoTypeBeforeHandler() != null) {
                jSONReader.next();
                ObjectReader objectReaderAutoType = context.getObjectReaderAutoType(jSONReader.readTypeHashCode());
                if (objectReaderAutoType == null) {
                    String string = jSONReader.getString();
                    ObjectReader objectReaderAutoType2 = context.getObjectReaderAutoType(string, null);
                    if (objectReaderAutoType2 == null) {
                        throw new JSONException("auoType not support : " + string + ", offset " + jSONReader.getOffset());
                    }
                    objectReader = objectReaderAutoType2;
                } else {
                    objectReader = objectReaderAutoType;
                }
                return (T) objectReader.readJSONBObject(jSONReader, type, obj, 0L);
            }
        }
        return readObject(jSONReader, type, obj, j);
    }

    @Override // com.alibaba.fastjson2.reader.ObjectReaderBean, com.alibaba.fastjson2.reader.ObjectReader
    public T readObject(JSONReader jSONReader, Type type, Object obj, long j) {
        String str = null;
        if (!jSONReader.nextIfObjectStart() && jSONReader.nextIfNullOrEmptyString()) {
            return null;
        }
        Throwable th = null;
        HashMap hashMap = null;
        HashMap hashMap2 = null;
        StackTraceElement[] stackTraceElementArr = null;
        String str2 = null;
        int i = 0;
        while (!jSONReader.nextIfObjectEnd()) {
            long readFieldNameHashCode = jSONReader.readFieldNameHashCode();
            if (i == 0 && readFieldNameHashCode == f77302s && jSONReader.isSupportAutoType(j)) {
                long readTypeHashCode = jSONReader.readTypeHashCode();
                JSONReader.Context context = jSONReader.context;
                ObjectReader autoType = autoType(context, readTypeHashCode);
                if (autoType == null) {
                    String string = jSONReader.getString();
                    ObjectReader objectReaderAutoType = context.getObjectReaderAutoType(string, this.objectClass, j);
                    if (objectReaderAutoType == null) {
                        throw new JSONException(jSONReader.info("No suitable ObjectReader found for" + string));
                    }
                    autoType = objectReaderAutoType;
                }
                if (autoType != this) {
                    return (T) autoType.readObject(jSONReader);
                }
            } else if (readFieldNameHashCode == f77303t || readFieldNameHashCode == f77304u) {
                str = jSONReader.readString();
            } else if (readFieldNameHashCode == f77305v) {
                jSONReader.readString();
            } else if (readFieldNameHashCode == f77306w) {
                if (jSONReader.isReference()) {
                    jSONReader.readReference();
                } else {
                    th = (Throwable) jSONReader.read((Class) Throwable.class);
                }
            } else if (readFieldNameHashCode == f77307x) {
                if (jSONReader.isReference()) {
                    str2 = jSONReader.readReference();
                } else {
                    stackTraceElementArr = (StackTraceElement[]) jSONReader.read((Class) StackTraceElement[].class);
                }
            } else if (readFieldNameHashCode != f77308y) {
                FieldReader fieldReader = getFieldReader(readFieldNameHashCode);
                if (hashMap == null) {
                    hashMap = new HashMap();
                }
                String fieldName = fieldReader != null ? fieldReader.fieldName : jSONReader.getFieldName();
                if (jSONReader.isReference()) {
                    String readReference = jSONReader.readReference();
                    if (hashMap2 == null) {
                        hashMap2 = new HashMap();
                    }
                    hashMap2.put(fieldName, readReference);
                } else {
                    hashMap.put(fieldName, fieldReader != null ? fieldReader.readFieldValue(jSONReader) : jSONReader.readAny());
                }
            } else if (jSONReader.isReference()) {
                jSONReader.readReference();
            } else if (jSONReader.getType() == -110) {
            } else {
                jSONReader.readArray(Throwable.class);
            }
            i++;
        }
        Object obj2 = (T) m55563b(str, th);
        if (obj2 == null) {
            int i2 = 0;
            while (true) {
                if (i2 >= this.f77310m.size()) {
                    break;
                }
                String[] strArr = this.f77315r.get(i2);
                if (strArr != null && strArr.length != 0) {
                    boolean z = true;
                    int i3 = 0;
                    while (true) {
                        if (i3 >= strArr.length) {
                            break;
                        }
                        String str3 = strArr[i3];
                        if (str3 == null) {
                            z = false;
                            break;
                        }
                        if (!str3.equals("cause") && !str3.equals("message") && !hashMap.containsKey(str3)) {
                            z = false;
                        }
                        i3++;
                    }
                    if (z) {
                        Object[] objArr = new Object[strArr.length];
                        for (int i4 = 0; i4 < strArr.length; i4++) {
                            String str4 = strArr[i4];
                            str4.hashCode();
                            objArr[i4] = !str4.equals("cause") ? !str4.equals("message") ? hashMap.get(str4) : str : th;
                        }
                        Constructor constructor = this.f77310m.get(i2);
                        try {
                            obj2 = (T) ((Throwable) constructor.newInstance(objArr));
                        } catch (Throwable th2) {
                            throw new JSONException("create error, objectClass " + constructor + ", " + th2.getMessage(), th2);
                        }
                    }
                }
                i2++;
            }
        }
        if (obj2 == null) {
            throw new JSONException(jSONReader.info(jSONReader.info("not support : " + this.objectClass.getName())));
        }
        if (stackTraceElementArr != null) {
            int i5 = 0;
            for (StackTraceElement stackTraceElement : stackTraceElementArr) {
                if (stackTraceElement == null) {
                    i5++;
                }
            }
            if (stackTraceElementArr.length == 0 || i5 != stackTraceElementArr.length) {
                ((Throwable) obj2).setStackTrace(stackTraceElementArr);
            }
        }
        if (str2 != null) {
            jSONReader.addResolveTask(this.f77309l, obj2, JSONPath.m7282of(str2));
        }
        if (hashMap != null) {
            for (Map.Entry entry : hashMap.entrySet()) {
                FieldReader fieldReader2 = getFieldReader((String) entry.getKey());
                if (fieldReader2 != null) {
                    fieldReader2.accept((FieldReader) obj2, entry.getValue());
                }
            }
        }
        if (hashMap2 != null) {
            for (Map.Entry entry2 : hashMap2.entrySet()) {
                FieldReader fieldReader3 = getFieldReader((String) entry2.getKey());
                if (fieldReader3 != null) {
                    fieldReader3.addResolveTask(jSONReader, obj2, (String) entry2.getValue());
                }
            }
        }
        return (T) obj2;
    }

    public m7k(Class<T> cls, List<Constructor> list, FieldReader... fieldReaderArr) {
        super(cls, null, cls.getName(), 0L, null, null, fieldReaderArr);
        int i;
        String[] strArr;
        this.f77310m = list;
        Iterator<Constructor> it2 = list.iterator();
        Constructor constructor = null;
        Constructor constructor2 = null;
        Constructor constructor3 = null;
        Constructor constructor4 = null;
        while (true) {
            if (!it2.hasNext()) {
                break;
            }
            Constructor next = it2.next();
            if (next != null && constructor3 == null) {
                int parameterCount = next.getParameterCount();
                if (parameterCount == 0) {
                    constructor = next;
                } else {
                    Class<?>[] parameterTypes = next.getParameterTypes();
                    Class<?> cls2 = parameterTypes[0];
                    if (parameterCount == 1) {
                        if (cls2 == String.class) {
                            constructor2 = next;
                        } else if (Throwable.class.isAssignableFrom(cls2)) {
                            constructor4 = next;
                        }
                    }
                    if (parameterCount == 2 && cls2 == String.class && Throwable.class.isAssignableFrom(parameterTypes[1])) {
                        constructor3 = next;
                    }
                }
            }
        }
        this.f77311n = constructor;
        this.f77312o = constructor2;
        this.f77313p = constructor3;
        this.f77314q = constructor4;
        Collections.sort(list, new Comparator() { // from class: com.sunia.HTREnginev2.l7k
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                int m55562c;
                m55562c = m7k.m55562c((Constructor) obj, (Constructor) obj2);
                return m55562c;
            }
        });
        this.f77315r = new ArrayList(list.size());
        for (Constructor constructor5 : list) {
            Class<?>[] parameterTypes2 = constructor5.getParameterTypes();
            if (parameterTypes2.length > 0) {
                strArr = BeanUtils.lookupParameterNames(constructor5);
                FieldInfo fieldInfo = new FieldInfo();
                Annotation[][] parameterAnnotations = constructor5.getParameterAnnotations();
                for (int i2 = 0; i2 < parameterTypes2.length && i2 < strArr.length; i2++) {
                    fieldInfo.init();
                    JSONFactory.defaultObjectReaderProvider.getFieldInfo(fieldInfo, cls, constructor5, i2, parameterAnnotations);
                    String str = fieldInfo.fieldName;
                    if (str != null) {
                        strArr[i2] = str;
                    }
                }
            } else {
                strArr = null;
            }
            this.f77315r.add(strArr);
        }
        FieldReader fieldReader = null;
        for (FieldReader fieldReader2 : fieldReaderArr) {
            if ("stackTrace".equals(fieldReader2.fieldName) && fieldReader2.fieldClass == StackTraceElement[].class) {
                fieldReader = fieldReader2;
            }
        }
        this.f77309l = fieldReader;
    }
}
