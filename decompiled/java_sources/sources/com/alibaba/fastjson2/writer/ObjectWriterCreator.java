package com.alibaba.fastjson2.writer;

import com.alibaba.fastjson2.JSONException;
import com.alibaba.fastjson2.JSONFactory;
import com.alibaba.fastjson2.JSONWriter;
import com.alibaba.fastjson2.codec.BeanInfo;
import com.alibaba.fastjson2.codec.FieldInfo;
import com.alibaba.fastjson2.filter.Filter;
import com.alibaba.fastjson2.function.ToByteFunction;
import com.alibaba.fastjson2.function.ToFloatFunction;
import com.alibaba.fastjson2.function.ToShortFunction;
import com.alibaba.fastjson2.util.BeanUtils;
import com.alibaba.fastjson2.writer.ObjectWriterProvider;
import com.sunia.HTREnginev2.afg;
import com.sunia.HTREnginev2.agg;
import com.sunia.HTREnginev2.bfg;
import com.sunia.HTREnginev2.bgg;
import com.sunia.HTREnginev2.ceg;
import com.sunia.HTREnginev2.deg;
import com.sunia.HTREnginev2.dfg;
import com.sunia.HTREnginev2.dgg;
import com.sunia.HTREnginev2.fck;
import com.sunia.HTREnginev2.feg;
import com.sunia.HTREnginev2.ffg;
import com.sunia.HTREnginev2.gfg;
import com.sunia.HTREnginev2.ick;
import com.sunia.HTREnginev2.ieg;
import com.sunia.HTREnginev2.ifg;
import com.sunia.HTREnginev2.jeg;
import com.sunia.HTREnginev2.keg;
import com.sunia.HTREnginev2.kfg;
import com.sunia.HTREnginev2.leg;
import com.sunia.HTREnginev2.lfg;
import com.sunia.HTREnginev2.mdg;
import com.sunia.HTREnginev2.ndg;
import com.sunia.HTREnginev2.neg;
import com.sunia.HTREnginev2.nfg;
import com.sunia.HTREnginev2.ofg;
import com.sunia.HTREnginev2.pdg;
import com.sunia.HTREnginev2.qdg;
import com.sunia.HTREnginev2.qeg;
import com.sunia.HTREnginev2.qfg;
import com.sunia.HTREnginev2.rck;
import com.sunia.HTREnginev2.reg;
import com.sunia.HTREnginev2.rfg;
import com.sunia.HTREnginev2.tdg;
import com.sunia.HTREnginev2.teg;
import com.sunia.HTREnginev2.udg;
import com.sunia.HTREnginev2.ufg;
import com.sunia.HTREnginev2.vbk;
import com.sunia.HTREnginev2.veg;
import com.sunia.HTREnginev2.weg;
import com.sunia.HTREnginev2.xdg;
import com.sunia.HTREnginev2.xfg;
import com.sunia.HTREnginev2.yeg;
import com.sunia.HTREnginev2.yfg;
import com.sunia.HTREnginev2.zdg;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import java.util.function.Function;
import java.util.function.Predicate;
import java.util.function.ToDoubleFunction;
import java.util.function.ToIntFunction;
import java.util.function.ToLongFunction;

/* loaded from: classes3.dex */
public class ObjectWriterCreator {
    public static final ObjectWriterCreator INSTANCE = new ObjectWriterCreator();

    public static void configSerializeFilters(BeanInfo beanInfo, ObjectWriterAdapter objectWriterAdapter) {
        for (Class<? extends Filter> cls : beanInfo.serializeFilters) {
            if (Filter.class.isAssignableFrom(cls)) {
                try {
                    objectWriterAdapter.setFilter(cls.newInstance());
                } catch (IllegalAccessException | InstantiationException unused) {
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: d */
    public /* synthetic */ void m7612d(FieldInfo fieldInfo, Class cls, long j, ObjectWriterProvider objectWriterProvider, BeanInfo beanInfo, Map map, Field field) {
        fieldInfo.init();
        FieldWriter creteFieldWriter = creteFieldWriter(cls, j, objectWriterProvider, beanInfo, fieldInfo, field);
        if (creteFieldWriter != null) {
            map.put(creteFieldWriter.fieldName, creteFieldWriter);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: e */
    public /* synthetic */ void m7613e(FieldInfo fieldInfo, Class cls, long j, ObjectWriterProvider objectWriterProvider, BeanInfo beanInfo, Map map, Field field) {
        fieldInfo.init();
        fieldInfo.ignore = (field.getModifiers() & 1) == 0;
        FieldWriter creteFieldWriter = creteFieldWriter(cls, j, objectWriterProvider, beanInfo, fieldInfo, field);
        if (creteFieldWriter != null) {
            FieldWriter fieldWriter = (FieldWriter) map.get(creteFieldWriter.fieldName);
            if (fieldWriter == null) {
                map.put(creteFieldWriter.fieldName, creteFieldWriter);
            }
            if (fieldWriter == null || fieldWriter.compareTo(creteFieldWriter) <= 0) {
                return;
            }
            map.put(creteFieldWriter.fieldName, creteFieldWriter);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: f */
    public /* synthetic */ void m7614f(FieldInfo fieldInfo, long j, BeanInfo beanInfo, ObjectWriterProvider objectWriterProvider, Class cls, Map map, Method method) {
        ObjectWriter objectWriter;
        String[] strArr;
        boolean z;
        fieldInfo.init();
        fieldInfo.features = j;
        fieldInfo.format = beanInfo.format;
        objectWriterProvider.getFieldInfo(beanInfo, fieldInfo, cls, method);
        if (fieldInfo.ignore) {
            return;
        }
        String fieldName = getFieldName(cls, beanInfo, fieldInfo, method);
        String[] strArr2 = beanInfo.includes;
        if (strArr2 != null && strArr2.length > 0) {
            int i = 0;
            while (true) {
                if (i >= strArr2.length) {
                    z = false;
                    break;
                } else {
                    if (strArr2[i].equals(fieldName)) {
                        z = true;
                        break;
                    }
                    i++;
                }
            }
            if (!z) {
                return;
            }
        }
        if ((beanInfo.writerFeatures & JSONWriter.Feature.WriteClassName.mask) == 0 || !fieldName.equals(beanInfo.typeKey)) {
            if (beanInfo.orders != null) {
                int i2 = 0;
                boolean z2 = false;
                while (true) {
                    strArr = beanInfo.orders;
                    if (i2 >= strArr.length) {
                        break;
                    }
                    if (fieldName.equals(strArr[i2])) {
                        fieldInfo.ordinal = i2;
                        z2 = true;
                    }
                    i2++;
                }
                if (!z2 && fieldInfo.ordinal == 0) {
                    fieldInfo.ordinal = strArr.length;
                }
            }
            Class<?> cls2 = fieldInfo.writeUsing;
            if (cls2 != null) {
                try {
                    Constructor<?> declaredConstructor = cls2.getDeclaredConstructor(new Class[0]);
                    declaredConstructor.setAccessible(true);
                    objectWriter = (ObjectWriter) declaredConstructor.newInstance(new Object[0]);
                } catch (IllegalAccessException | InstantiationException | NoSuchMethodException | InvocationTargetException e) {
                    throw new JSONException("create writeUsing Writer error", e);
                }
            } else {
                objectWriter = null;
            }
            if (objectWriter == null && fieldInfo.fieldClassMixIn) {
                objectWriter = ObjectWriterProvider.C1752a.f12887a;
            }
            FieldWriter createFieldWriter = createFieldWriter(objectWriterProvider, cls, fieldName, fieldInfo.ordinal, fieldInfo.features, fieldInfo.format, fieldInfo.label, method, objectWriter);
            FieldWriter fieldWriter = (FieldWriter) map.get(createFieldWriter.fieldName);
            if (fieldWriter == null) {
                map.put(createFieldWriter.fieldName, createFieldWriter);
            }
            if (fieldWriter == null || fieldWriter.compareTo(createFieldWriter) <= 0) {
                return;
            }
            map.put(fieldName, createFieldWriter);
        }
    }

    public static String getFieldName(Class cls, BeanInfo beanInfo, FieldInfo fieldInfo, Method method) {
        char charAt;
        String str = fieldInfo.fieldName;
        if (str != null && !str.isEmpty()) {
            return fieldInfo.fieldName;
        }
        String str2 = BeanUtils.getterName(method, beanInfo.f116569kotlin, beanInfo.namingStrategy);
        int length = str2.length();
        char charAt2 = length > 0 ? str2.charAt(0) : (char) 0;
        if ((length == 1 && charAt2 >= 'a' && charAt2 <= 'z') || (length > 2 && charAt2 >= 'A' && charAt2 <= 'Z' && (charAt = str2.charAt(1)) >= 'A' && charAt <= 'Z')) {
            char[] charArray = str2.toCharArray();
            if (charAt2 < 'a' || charAt2 > 'z') {
                charArray[0] = (char) (charArray[0] + ' ');
            } else {
                charArray[0] = (char) (charArray[0] - ' ');
            }
            Field declaredField = BeanUtils.getDeclaredField(cls, new String(charArray));
            if (declaredField != null && (length == 1 || Modifier.isPublic(declaredField.getModifiers()))) {
                return declaredField.getName();
            }
        }
        return str2;
    }

    public <T> FieldWriter<T> createFieldWriter(String str, String str2, Field field) {
        return createFieldWriter(JSONFactory.defaultObjectWriterProvider, str, 0, 0L, str2, null, field, null);
    }

    public ObjectWriter createObjectWriter(List<FieldWriter> list) {
        return new ObjectWriterAdapter(null, null, null, 0L, list);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:70:0x00db A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r5v12, types: [com.alibaba.fastjson2.writer.ObjectWriterImplMap] */
    /* JADX WARN: Type inference failed for: r5v13 */
    /* JADX WARN: Type inference failed for: r5v14, types: [com.alibaba.fastjson2.writer.ObjectWriterProvider$a] */
    /* JADX WARN: Type inference failed for: r5v15 */
    /* JADX WARN: Type inference failed for: r5v24 */
    /* JADX WARN: Type inference failed for: r5v7 */
    /* JADX WARN: Type inference failed for: r5v8 */
    /* JADX WARN: Type inference failed for: r5v9 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.alibaba.fastjson2.writer.FieldWriter creteFieldWriter(java.lang.Class r14, long r15, com.alibaba.fastjson2.writer.ObjectWriterProvider r17, com.alibaba.fastjson2.codec.BeanInfo r18, com.alibaba.fastjson2.codec.FieldInfo r19, java.lang.reflect.Field r20) {
        /*
            Method dump skipped, instructions count: 281
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson2.writer.ObjectWriterCreator.creteFieldWriter(java.lang.Class, long, com.alibaba.fastjson2.writer.ObjectWriterProvider, com.alibaba.fastjson2.codec.BeanInfo, com.alibaba.fastjson2.codec.FieldInfo, java.lang.reflect.Field):com.alibaba.fastjson2.writer.FieldWriter");
    }

    public ObjectWriter getInitWriter(ObjectWriterProvider objectWriterProvider, Class cls) {
        ObjectWriter objectWriter;
        ObjectWriter objectWriter2;
        ObjectWriter objectWriter3;
        if (cls == Date.class) {
            if ((objectWriterProvider.f12886f & 16) == 0 || (objectWriter3 = objectWriterProvider.f12881a.get(cls)) == fck.f69875b) {
                return null;
            }
            return objectWriter3;
        }
        if (cls == Long.TYPE || cls == Long.class) {
            if ((objectWriterProvider.f12886f & 4) == 0 || (objectWriter = objectWriterProvider.f12881a.get(Long.class)) == rck.f82975b) {
                return null;
            }
            return objectWriter;
        }
        if (cls == BigDecimal.class) {
            if ((objectWriterProvider.f12886f & 8) == 0 || (objectWriter2 = objectWriterProvider.f12881a.get(cls)) == vbk.f87339c) {
                return null;
            }
            return objectWriter2;
        }
        if (!Enum.class.isAssignableFrom(cls)) {
            return null;
        }
        ObjectWriter objectWriter4 = objectWriterProvider.f12881a.get(cls);
        if (objectWriter4 instanceof ick) {
            return null;
        }
        return objectWriter4;
    }

    public void handleIgnores(BeanInfo beanInfo, List<FieldWriter> list) {
        String[] strArr = beanInfo.ignores;
        if (strArr == null || strArr.length == 0) {
            return;
        }
        for (int size = list.size() - 1; size >= 0; size--) {
            FieldWriter fieldWriter = list.get(size);
            String[] strArr2 = beanInfo.ignores;
            int length = strArr2.length;
            int i = 0;
            while (true) {
                if (i >= length) {
                    break;
                }
                if (strArr2[i].equals(fieldWriter.fieldName)) {
                    list.remove(size);
                    break;
                }
                i++;
            }
        }
    }

    public <T> FieldWriter<T> createFieldWriter(String str, int i, long j, String str2, Field field) {
        return createFieldWriter(JSONFactory.defaultObjectWriterProvider, str, i, j, str2, null, field, null);
    }

    public ObjectWriter createObjectWriter(FieldWriter... fieldWriterArr) {
        return new ObjectWriterAdapter(null, null, null, 0L, Arrays.asList(fieldWriterArr));
    }

    public <T> FieldWriter<T> createFieldWriter(String str, int i, long j, String str2, String str3, Field field, ObjectWriter objectWriter) {
        return createFieldWriter(JSONFactory.defaultObjectWriterProvider, str, i, j, str2, str3, field, objectWriter);
    }

    public ObjectWriter createObjectWriter(Class cls) {
        return createObjectWriter(cls, 0L, JSONFactory.defaultObjectWriterProvider);
    }

    public <T> FieldWriter<T> createFieldWriter(ObjectWriterProvider objectWriterProvider, String str, int i, long j, String str2, String str3, Field field, ObjectWriter objectWriter) {
        ObjectWriter objectWriter2;
        Method method = (field.getDeclaringClass() == Throwable.class && field.getName().equals("stackTrace")) ? BeanUtils.getMethod(Throwable.class, "getStackTrace") : null;
        if (method != null) {
            return createFieldWriter(objectWriterProvider, Throwable.class, str, i, j, str2, str3, method, objectWriter);
        }
        Class<?> type = field.getType();
        Type genericType = field.getGenericType();
        if (objectWriter != null) {
            FieldWriterObject fieldWriterObject = new FieldWriterObject(str, i, j, str2, str3, genericType, type, field, null);
            fieldWriterObject.f12828r = type;
            if (objectWriter != ObjectWriterProvider.C1752a.f12887a) {
                fieldWriterObject.f12826p = objectWriter;
            }
            return fieldWriterObject;
        }
        if (type == Boolean.TYPE) {
            return new tdg(str, i, j, str2, str3, field, type);
        }
        if (type == Byte.TYPE) {
            return new kfg(str, i, j, str2, str3, field);
        }
        if (type == Short.TYPE) {
            return new veg(str, i, j, str2, str3, field);
        }
        if (type == Integer.TYPE) {
            return new afg(str, i, j, str2, str3, field);
        }
        if (type == Long.TYPE) {
            if (str2 != null && !str2.isEmpty() && !"string".equals(str2)) {
                return new rfg(str, i, j, str2, str3, field);
            }
            return new ffg(str, i, j, str2, str3, field);
        }
        if (type == Float.TYPE) {
            return new qeg(str, i, j, str2, str3, field);
        }
        if (type == Float.class) {
            return new neg(str, i, j, str2, str3, field);
        }
        if (type == Double.TYPE) {
            return new ieg(str, i, str2, str3, field);
        }
        if (type == Double.class) {
            return new feg(str, i, j, str2, str3, field);
        }
        if (type == Character.TYPE) {
            return new zdg(str, i, j, str2, str3, field);
        }
        if (type == BigInteger.class) {
            return new pdg(str, i, j, str2, str3, field);
        }
        if (type == BigDecimal.class) {
            return new mdg(str, i, j, str2, str3, field);
        }
        if (type == Date.class) {
            return new ceg(str, i, j, str2, str3, field);
        }
        if (type == String.class) {
            return new agg(str, i, j, str2, str3, field);
        }
        if (type.isEnum()) {
            BeanInfo beanInfo = new BeanInfo();
            objectWriterProvider.getBeanInfo(beanInfo, type);
            boolean z = beanInfo.writeEnumAsJavaBean;
            if (!z && (objectWriter2 = objectWriterProvider.f12881a.get(type)) != null && !(objectWriter2 instanceof ick)) {
                z = true;
            }
            if (BeanUtils.getEnumValueField(type, objectWriterProvider) == null && !z && BeanUtils.getEnumAnnotationNames(type) == null) {
                return new keg(str, i, j, str2, str3, genericType, type, field, null);
            }
        }
        if (type != List.class && type != ArrayList.class) {
            if (type.isArray() && !type.getComponentType().isPrimitive()) {
                Class<?> componentType = type.getComponentType();
                return new ufg(str, componentType, i, j, str2, str3, componentType, type, field);
            }
            return new FieldWriterObject(str, i, j, str2, str3, field.getGenericType(), type, field, null);
        }
        return new nfg(str, genericType instanceof ParameterizedType ? ((ParameterizedType) genericType).getActualTypeArguments()[0] : null, i, j, str2, str3, genericType, type, field);
    }

    public ObjectWriter createObjectWriter(Class cls, FieldWriter... fieldWriterArr) {
        return createObjectWriter(cls, 0L, fieldWriterArr);
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0026  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0109  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.alibaba.fastjson2.writer.ObjectWriter createObjectWriter(java.lang.Class r9, long r10, com.alibaba.fastjson2.writer.FieldWriter... r12) {
        /*
            Method dump skipped, instructions count: 308
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson2.writer.ObjectWriterCreator.createObjectWriter(java.lang.Class, long, com.alibaba.fastjson2.writer.FieldWriter[]):com.alibaba.fastjson2.writer.ObjectWriter");
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:45:0x01db  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x01ed  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.alibaba.fastjson2.writer.ObjectWriter createObjectWriter(final java.lang.Class r21, long r22, final com.alibaba.fastjson2.writer.ObjectWriterProvider r24) {
        /*
            Method dump skipped, instructions count: 526
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson2.writer.ObjectWriterCreator.createObjectWriter(java.lang.Class, long, com.alibaba.fastjson2.writer.ObjectWriterProvider):com.alibaba.fastjson2.writer.ObjectWriter");
    }

    public <T> FieldWriter<T> createFieldWriter(Class<T> cls, String str, String str2, Method method) {
        return createFieldWriter(cls, str, 0, 0L, str2, method);
    }

    public <T> FieldWriter<T> createFieldWriter(Class<T> cls, String str, int i, long j, String str2, Method method) {
        return createFieldWriter(null, cls, str, i, j, str2, null, method, null);
    }

    /* JADX WARN: Can't wrap try/catch for region: R(10:1|(3:129|130|(2:132|(7:136|4|5|6|7|(1:126)(1:10)|(3:12|(1:14)|15)(4:17|(1:19)(1:125)|20|(2:123|124)(2:24|(2:121|122)(2:28|(2:119|120)(2:32|(2:117|118)(2:36|(1:(2:115|116)(2:113|114))(2:40|(2:106|107)(2:44|(2:104|105)(2:48|(2:102|103)(2:52|(2:54|55)(2:56|(2:66|(3:(2:69|(1:71)(1:74))(1:75)|72|73)(2:76|(2:78|79)(2:80|(4:82|(1:84)(1:87)|85|86)(2:88|(2:90|91)(2:92|(2:94|95)(2:96|(2:98|99)(2:100|101)))))))(2:64|65))))))))))))))|3|4|5|6|7|(0)|126|(0)(0)) */
    /* JADX WARN: Removed duplicated region for block: B:12:0x0056  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0072  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public <T> com.alibaba.fastjson2.writer.FieldWriter<T> createFieldWriter(com.alibaba.fastjson2.writer.ObjectWriterProvider r15, java.lang.Class<T> r16, java.lang.String r17, int r18, long r19, java.lang.String r21, java.lang.String r22, java.lang.reflect.Method r23, com.alibaba.fastjson2.writer.ObjectWriter r24) {
        /*
            Method dump skipped, instructions count: 637
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson2.writer.ObjectWriterCreator.createFieldWriter(com.alibaba.fastjson2.writer.ObjectWriterProvider, java.lang.Class, java.lang.String, int, long, java.lang.String, java.lang.String, java.lang.reflect.Method, com.alibaba.fastjson2.writer.ObjectWriter):com.alibaba.fastjson2.writer.FieldWriter");
    }

    public <T> FieldWriter createFieldWriter(String str, ToLongFunction<T> toLongFunction) {
        return new gfg(str, 0, 0L, null, null, null, toLongFunction);
    }

    public <T> FieldWriter createFieldWriter(String str, ToIntFunction<T> toIntFunction) {
        return new bfg(str, 0, 0L, null, null, null, toIntFunction);
    }

    public <T> FieldWriter createFieldWriter(String str, ToShortFunction<T> toShortFunction) {
        return new weg(str, 0, 0L, null, null, null, toShortFunction);
    }

    public <T> FieldWriter createFieldWriter(String str, ToByteFunction<T> toByteFunction) {
        return new lfg(str, 0, 0L, null, null, null, toByteFunction);
    }

    public <T> FieldWriter createFieldWriter(String str, ToFloatFunction<T> toFloatFunction) {
        return new reg(str, 0, 0L, null, null, null, toFloatFunction);
    }

    public <T> FieldWriter createFieldWriter(String str, ToDoubleFunction<T> toDoubleFunction) {
        return new jeg(str, 0, 0L, null, null, null, toDoubleFunction);
    }

    public <T> FieldWriter createFieldWriter(String str, Predicate<T> predicate) {
        return new udg(str, 0, 0L, null, null, null, predicate);
    }

    public <T, V> FieldWriter createFieldWriter(String str, Class cls, Function<T, V> function) {
        return createFieldWriter(null, null, str, 0, 0L, null, null, cls, cls, null, function);
    }

    public <T, V> FieldWriter createFieldWriter(String str, Type type, Class cls, Function<T, V> function) {
        return createFieldWriter(null, null, str, 0, 0L, null, null, type, cls, null, function);
    }

    public <T, V> FieldWriter createFieldWriter(String str, long j, String str2, Class cls, Function<T, V> function) {
        return createFieldWriter(null, null, str, 0, j, str2, null, cls, cls, null, function);
    }

    public <T, V> FieldWriter<T> createFieldWriter(ObjectWriterProvider objectWriterProvider, Class<T> cls, String str, int i, long j, String str2, String str3, Type type, Class<V> cls2, Method method, Function<T, V> function) {
        ObjectWriter objectWriter;
        if (cls2 == Byte.class) {
            return new ifg(str, i, j, str2, str3, method, function);
        }
        if (cls2 == Short.class) {
            return new teg(str, i, j, str2, str3, method, function);
        }
        if (cls2 == Integer.class) {
            return new yeg(str, i, j, str2, str3, method, function);
        }
        if (cls2 == Long.class) {
            return new dfg(str, i, j, str2, str3, method, function);
        }
        if (cls2 == BigInteger.class) {
            return new qdg(str, i, j, str2, str3, method, function);
        }
        if (cls2 == BigDecimal.class) {
            return new ndg(str, i, j, str2, str3, method, function);
        }
        if (cls2 == String.class) {
            return new bgg(str, i, j, str2, str3, method, function);
        }
        if (cls2 == Date.class) {
            return new deg(str, i, j, str2, str3, method, function);
        }
        if (cls2 == UUID.class) {
            return new dgg(str, i, j, str2, str3, type, cls2, method, function);
        }
        if (Calendar.class.isAssignableFrom(cls2)) {
            return new xdg(str, i, j, str2, str3, method, function);
        }
        if (cls2.isEnum()) {
            BeanInfo beanInfo = new BeanInfo();
            ObjectWriterProvider objectWriterProvider2 = objectWriterProvider == null ? JSONFactory.defaultObjectWriterProvider : objectWriterProvider;
            objectWriterProvider2.getBeanInfo(beanInfo, cls2);
            boolean z = beanInfo.writeEnumAsJavaBean;
            if (!z && (objectWriter = objectWriterProvider2.f12881a.get(cls2)) != null && !(objectWriter instanceof ick)) {
                z = true;
            }
            if (!z && BeanUtils.getEnumValueField(cls2, objectWriterProvider2) == null && BeanUtils.getEnumAnnotationNames(cls2) == null) {
                return new leg(str, i, j, str2, str3, type, cls2, method, function);
            }
        }
        if (type instanceof ParameterizedType) {
            ParameterizedType parameterizedType = (ParameterizedType) type;
            Type rawType = parameterizedType.getRawType();
            Type[] actualTypeArguments = parameterizedType.getActualTypeArguments();
            if ((rawType == List.class || rawType == ArrayList.class) && actualTypeArguments.length == 1) {
                Type type2 = actualTypeArguments[0];
                if (type2 == String.class) {
                    return new qfg(str, i, j, str2, str3, method, function, type, cls2);
                }
                return new ofg(str, i, j, str2, str3, type2, method, function, type, cls2);
            }
        }
        if (Modifier.isFinal(cls2.getModifiers())) {
            return new yfg(str, i, j, str2, str3, type, cls2, method, function);
        }
        return new xfg(str, i, j, str2, str3, type, cls2, method, function);
    }
}
