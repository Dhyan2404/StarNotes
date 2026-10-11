package com.sunia.HTREnginev2;

import com.alibaba.fastjson2.JSONException;
import com.alibaba.fastjson2.JSONFactory;
import com.alibaba.fastjson2.codec.FieldInfo;
import com.alibaba.fastjson2.reader.ObjectReaderProvider;
import com.alibaba.fastjson2.util.BeanUtils;
import com.alibaba.fastjson2.util.Fnv;
import com.alibaba.fastjson2.util.TypeUtils;
import com.sun.org.apache.xalan.internal.templates.Constants;
import java.lang.annotation.Annotation;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Type;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.function.BiFunction;
import java.util.function.Function;

/* loaded from: classes3.dex */
public final class hae<T> implements Function<Map<Long, Object>, T> {

    /* renamed from: e */
    public final Constructor f71994e;

    /* renamed from: f */
    public final int f71995f;

    /* renamed from: g */
    public final Function f71996g;

    /* renamed from: h */
    public final BiFunction f71997h;

    /* renamed from: i */
    public final Class[] f71998i;

    /* renamed from: j */
    public final boolean f71999j;

    /* renamed from: k */
    public final long[] f72000k;

    /* renamed from: l */
    public Map<Set<Long>, Constructor> f72001l;

    /* renamed from: m */
    public Map<Set<Long>, String[]> f72002m;

    /* renamed from: n */
    public Map<Set<Long>, long[]> f72003n;

    /* renamed from: o */
    public Map<Set<Long>, Type[]> f72004o;

    public hae(List<Constructor> list, Constructor constructor, Function function, BiFunction biFunction, Constructor constructor2, String... strArr) {
        boolean z = constructor2 != null;
        this.f71999j = z;
        this.f71996g = function;
        this.f71997h = biFunction;
        Constructor constructor3 = z ? constructor2 : constructor;
        this.f71994e = constructor3;
        this.f71995f = constructor3.getParameterCount();
        Class<?>[] parameterTypes = constructor.getParameterTypes();
        this.f71998i = parameterTypes;
        this.f72000k = new long[parameterTypes.length];
        int i = 0;
        while (i < this.f71998i.length) {
            String str = i < strArr.length ? strArr[i] : null;
            if (str == null) {
                str = Constants.ELEMNAME_ARG_STRING + i;
            }
            this.f72000k[i] = Fnv.hashCode64(str);
            i++;
        }
        if (list != null) {
            this.f72001l = new HashMap(list.size());
            this.f72002m = new HashMap(list.size());
            this.f72004o = new HashMap(list.size());
            this.f72003n = new HashMap(list.size());
            for (int i2 = 0; i2 < list.size(); i2++) {
                Constructor constructor4 = list.get(i2);
                constructor4.setAccessible(true);
                String[] lookupParameterNames = BeanUtils.lookupParameterNames(constructor4);
                Class<?>[] parameterTypes2 = constructor4.getParameterTypes();
                FieldInfo fieldInfo = new FieldInfo();
                ObjectReaderProvider objectReaderProvider = JSONFactory.defaultObjectReaderProvider;
                Annotation[][] parameterAnnotations = constructor4.getParameterAnnotations();
                int i3 = 0;
                while (i2 < parameterTypes2.length && i3 < lookupParameterNames.length) {
                    fieldInfo.init();
                    int i4 = i3;
                    objectReaderProvider.getFieldInfo(fieldInfo, constructor4.getDeclaringClass(), constructor4, i3, parameterAnnotations);
                    String str2 = fieldInfo.fieldName;
                    if (str2 != null) {
                        lookupParameterNames[i4] = str2;
                    }
                    i3 = i4 + 1;
                }
                long[] jArr = new long[lookupParameterNames.length];
                Type[] genericParameterTypes = constructor4.getGenericParameterTypes();
                HashSet hashSet = new HashSet(lookupParameterNames.length);
                for (int i5 = 0; i5 < lookupParameterNames.length; i5++) {
                    String str3 = lookupParameterNames[i5];
                    long hashCode64 = str3 == null ? 0L : Fnv.hashCode64(str3);
                    jArr[i5] = hashCode64;
                    hashSet.add(Long.valueOf(hashCode64));
                }
                this.f72001l.put(hashSet, constructor4);
                this.f72002m.put(hashSet, lookupParameterNames);
                this.f72003n.put(hashSet, jArr);
                this.f72004o.put(hashSet, genericParameterTypes);
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.function.Function
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public T apply(Map<Long, Object> map) {
        boolean z;
        Set<Long> keySet;
        Constructor constructor;
        int i = 0;
        int i2 = 0;
        while (true) {
            long[] jArr = this.f72000k;
            if (i2 >= jArr.length) {
                z = true;
                break;
            }
            if (!map.containsKey(Long.valueOf(jArr[i2]))) {
                z = false;
                break;
            }
            i2++;
        }
        if (!z && this.f72001l != null && (constructor = this.f72001l.get((keySet = map.keySet()))) != null) {
            long[] jArr2 = this.f72003n.get(keySet);
            Type[] typeArr = this.f72004o.get(keySet);
            Object[] objArr = new Object[jArr2.length];
            while (i < jArr2.length) {
                Object obj = map.get(Long.valueOf(jArr2[i]));
                Type type = typeArr[i];
                if (obj == null) {
                    obj = TypeUtils.getDefaultValue(type);
                }
                objArr[i] = obj;
                i++;
            }
            try {
                return (T) constructor.newInstance(objArr);
            } catch (IllegalAccessException | IllegalArgumentException | InstantiationException | InvocationTargetException e) {
                throw new JSONException("invoke constructor error, " + constructor, e);
            }
        }
        if (this.f71996g != null && this.f71998i.length == 1) {
            Object obj2 = map.get(Long.valueOf(this.f72000k[0]));
            Class cls = this.f71998i[0];
            if (obj2 == null) {
                obj2 = TypeUtils.getDefaultValue(cls);
            } else if (!cls.isInstance(obj2)) {
                obj2 = TypeUtils.cast(obj2, (Class<Object>) cls, JSONFactory.defaultObjectReaderProvider);
            }
            return (T) this.f71996g.apply(obj2);
        }
        if (this.f71997h != null && this.f71998i.length == 2) {
            Object obj3 = map.get(Long.valueOf(this.f72000k[0]));
            Class cls2 = this.f71998i[0];
            if (obj3 == null) {
                obj3 = TypeUtils.getDefaultValue(cls2);
            } else if (!cls2.isInstance(obj3)) {
                obj3 = TypeUtils.cast(obj3, (Class<Object>) cls2, JSONFactory.defaultObjectReaderProvider);
            }
            Object obj4 = map.get(Long.valueOf(this.f72000k[1]));
            Class cls3 = this.f71998i[1];
            if (obj4 == null) {
                obj4 = TypeUtils.getDefaultValue(cls3);
            } else if (!cls3.isInstance(obj4)) {
                obj4 = TypeUtils.cast(obj4, (Class<Object>) cls3, JSONFactory.defaultObjectReaderProvider);
            }
            return (T) this.f71997h.apply(obj3, obj4);
        }
        int length = this.f71998i.length;
        Object[] objArr2 = new Object[this.f71995f];
        if (this.f71999j) {
            int i3 = 0;
            int i4 = 0;
            while (i3 < length) {
                Object obj5 = map.get(Long.valueOf(this.f72000k[i3]));
                if (obj5 != null) {
                    objArr2[i3] = obj5;
                } else {
                    i4 |= 1 << i3;
                    Class cls4 = this.f71998i[i3];
                    if (cls4.isPrimitive()) {
                        objArr2[i3] = TypeUtils.getDefaultValue(cls4);
                    }
                }
                int i5 = i3 + 1;
                if (i5 % 32 == 0 || i5 == length) {
                    objArr2[(i3 / 32) + length] = Integer.valueOf(i4);
                    i4 = 0;
                }
                i3 = i5;
            }
        } else {
            while (i < length) {
                Class cls5 = this.f71998i[i];
                Object obj6 = map.get(Long.valueOf(this.f72000k[i]));
                if (obj6 == null) {
                    obj6 = TypeUtils.getDefaultValue(cls5);
                } else if (!cls5.isInstance(obj6)) {
                    obj6 = TypeUtils.cast(obj6, (Class<Object>) cls5, JSONFactory.defaultObjectReaderProvider);
                } else if (Collection.class.isAssignableFrom(cls5) || Map.class.isAssignableFrom(cls5)) {
                    Type[] genericParameterTypes = this.f71994e.getGenericParameterTypes();
                    if (genericParameterTypes.length == this.f71998i.length) {
                        obj6 = TypeUtils.cast(obj6, genericParameterTypes[i]);
                    }
                }
                objArr2[i] = obj6;
                i++;
            }
        }
        try {
            return (T) this.f71994e.newInstance(objArr2);
        } catch (IllegalAccessException | IllegalArgumentException | InstantiationException | InvocationTargetException e2) {
            throw new JSONException("invoke constructor error, " + this.f71994e, e2);
        }
    }
}
