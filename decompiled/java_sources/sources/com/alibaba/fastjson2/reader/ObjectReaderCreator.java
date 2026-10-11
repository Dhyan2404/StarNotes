package com.alibaba.fastjson2.reader;

import com.alibaba.fastjson2.JSONException;
import com.alibaba.fastjson2.JSONFactory;
import com.alibaba.fastjson2.JSONReader;
import com.alibaba.fastjson2.PropertyNamingStrategy;
import com.alibaba.fastjson2.TypeReference;
import com.alibaba.fastjson2.annotation.JSONField;
import com.alibaba.fastjson2.codec.BeanInfo;
import com.alibaba.fastjson2.codec.FieldInfo;
import com.alibaba.fastjson2.reader.ObjectReaderCreator;
import com.alibaba.fastjson2.util.BeanUtils;
import com.alibaba.fastjson2.util.TypeUtils;
import com.alibaba.fastjson2.writer.ObjectWriterAdapter;
import com.sun.org.apache.xalan.internal.extensions.ExtensionNamespaceContext;
import com.sun.org.apache.xalan.internal.templates.Constants;
import com.sunia.HTREnginev2.bbg;
import com.sunia.HTREnginev2.bdg;
import com.sunia.HTREnginev2.ccg;
import com.sunia.HTREnginev2.dbg;
import com.sunia.HTREnginev2.dcg;
import com.sunia.HTREnginev2.ddg;
import com.sunia.HTREnginev2.edg;
import com.sunia.HTREnginev2.fbg;
import com.sunia.HTREnginev2.fcg;
import com.sunia.HTREnginev2.fdg;
import com.sunia.HTREnginev2.gbk;
import com.sunia.HTREnginev2.gcg;
import com.sunia.HTREnginev2.gdg;
import com.sunia.HTREnginev2.hae;
import com.sunia.HTREnginev2.hbg;
import com.sunia.HTREnginev2.hcg;
import com.sunia.HTREnginev2.iag;
import com.sunia.HTREnginev2.idg;
import com.sunia.HTREnginev2.jae;
import com.sunia.HTREnginev2.jag;
import com.sunia.HTREnginev2.jbg;
import com.sunia.HTREnginev2.jdg;
import com.sunia.HTREnginev2.kbg;
import com.sunia.HTREnginev2.kcg;
import com.sunia.HTREnginev2.lcg;
import com.sunia.HTREnginev2.mbg;
import com.sunia.HTREnginev2.ncg;
import com.sunia.HTREnginev2.ocg;
import com.sunia.HTREnginev2.p8g;
import com.sunia.HTREnginev2.pag;
import com.sunia.HTREnginev2.pbg;
import com.sunia.HTREnginev2.pcg;
import com.sunia.HTREnginev2.qbg;
import com.sunia.HTREnginev2.rag;
import com.sunia.HTREnginev2.sag;
import com.sunia.HTREnginev2.sbg;
import com.sunia.HTREnginev2.scg;
import com.sunia.HTREnginev2.tcg;
import com.sunia.HTREnginev2.uag;
import com.sunia.HTREnginev2.vag;
import com.sunia.HTREnginev2.vbg;
import com.sunia.HTREnginev2.vcg;
import com.sunia.HTREnginev2.wbg;
import com.sunia.HTREnginev2.wcg;
import com.sunia.HTREnginev2.xag;
import com.sunia.HTREnginev2.yag;
import com.sunia.HTREnginev2.ybg;
import com.sunia.HTREnginev2.zbg;
import com.sunia.HTREnginev2.zcg;
import java.lang.annotation.Annotation;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Date;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;
import java.util.function.BiConsumer;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Supplier;

/* loaded from: classes3.dex */
public class ObjectReaderCreator {
    public static final ObjectReaderCreator INSTANCE = new ObjectReaderCreator();

    /* renamed from: com.alibaba.fastjson2.reader.ObjectReaderCreator$a */
    /* loaded from: classes3.dex */
    public final class C1743a implements Consumer {

        /* renamed from: e */
        public final Class f12644e;

        /* renamed from: f */
        public final Type f12645f;

        /* renamed from: g */
        public final String f12646g;

        /* renamed from: h */
        public final String[] f12647h;

        /* renamed from: i */
        public final BeanInfo f12648i;

        /* renamed from: j */
        public final FieldInfo f12649j;

        /* renamed from: k */
        public final Map<String, FieldReader> f12650k;

        /* renamed from: l */
        public final ObjectReaderProvider f12651l;

        public C1743a(Class cls, Type type, String str, String[] strArr, BeanInfo beanInfo, FieldInfo fieldInfo, Map<String, FieldReader> map, ObjectReaderProvider objectReaderProvider) {
            this.f12644e = cls;
            this.f12645f = type;
            this.f12646g = str;
            this.f12647h = strArr;
            this.f12648i = beanInfo;
            this.f12649j = fieldInfo;
            this.f12650k = map;
            this.f12651l = objectReaderProvider;
        }

        @Override // java.util.function.Consumer
        public void accept(Object obj) {
            int i;
            int i2;
            String[] strArr;
            String str;
            boolean z;
            String str2;
            char charAt;
            C1743a c1743a = this;
            Method method = (Method) obj;
            c1743a.f12649j.init();
            FieldInfo fieldInfo = c1743a.f12649j;
            long j = fieldInfo.features;
            BeanInfo beanInfo = c1743a.f12648i;
            fieldInfo.features = j | beanInfo.readerFeatures;
            fieldInfo.format = beanInfo.format;
            c1743a.f12651l.getFieldInfo(fieldInfo, c1743a.f12644e, method);
            FieldInfo fieldInfo2 = c1743a.f12649j;
            if (fieldInfo2.ignore) {
                return;
            }
            String str3 = fieldInfo2.fieldName;
            if (str3 == null) {
                String name = method.getName();
                if (name.startsWith(ExtensionNamespaceContext.EXSLT_SET_PREFIX, 0)) {
                    str2 = BeanUtils.setterName(name, c1743a.f12646g);
                    if (c1743a.f12649j.alternateNames == null) {
                        String substring = name.substring(3);
                        if (BeanUtils.getDeclaredField(c1743a.f12644e, substring) != null) {
                            c1743a.f12649j.alternateNames = new String[]{substring};
                        }
                    }
                } else {
                    str2 = BeanUtils.getterName(method, false, c1743a.f12646g);
                }
                int length = str2.length();
                char charAt2 = length > 0 ? str2.charAt(0) : (char) 0;
                if ((length == 1 && charAt2 >= 'a' && charAt2 <= 'z') || (length > 2 && charAt2 >= 'A' && charAt2 <= 'Z' && (charAt = str2.charAt(1)) >= 'A' && charAt <= 'Z')) {
                    char[] charArray = str2.toCharArray();
                    if (length == 1) {
                        charArray[0] = (char) (charArray[0] - ' ');
                    } else {
                        charArray[0] = (char) (charArray[0] + ' ');
                    }
                    Field declaredField = BeanUtils.getDeclaredField(c1743a.f12644e, new String(charArray));
                    if (declaredField != null) {
                        if (Modifier.isPublic(declaredField.getModifiers())) {
                            str3 = declaredField.getName();
                        } else if (length == 1) {
                            c1743a.f12649j.alternateNames = new String[]{str2};
                            str3 = declaredField.getName();
                        }
                    }
                }
                str3 = str2;
            }
            String str4 = str3;
            String[] strArr2 = c1743a.f12647h;
            if (strArr2 != null && strArr2.length > 0) {
                int i3 = 0;
                while (true) {
                    String[] strArr3 = c1743a.f12647h;
                    if (i3 >= strArr3.length) {
                        z = false;
                        break;
                    } else {
                        if (str4.equals(strArr3[i3])) {
                            c1743a.f12649j.ordinal = i3;
                            z = true;
                            break;
                        }
                        i3++;
                    }
                }
                if (!z) {
                    FieldInfo fieldInfo3 = c1743a.f12649j;
                    if (fieldInfo3.ordinal == 0) {
                        fieldInfo3.ordinal = c1743a.f12647h.length;
                    }
                }
            }
            Class<?>[] parameterTypes = method.getParameterTypes();
            int length2 = parameterTypes.length;
            if (length2 == 0) {
                ObjectReaderCreator objectReaderCreator = ObjectReaderCreator.this;
                Class cls = c1743a.f12644e;
                Type type = c1743a.f12645f;
                FieldInfo fieldInfo4 = c1743a.f12649j;
                FieldReader createFieldReaderMethod = objectReaderCreator.createFieldReaderMethod(cls, type, str4, fieldInfo4.ordinal, fieldInfo4.features | FieldInfo.READ_ONLY, fieldInfo4.format, fieldInfo4.locale, fieldInfo4.defaultValue, method.getGenericReturnType(), method.getReturnType(), method, c1743a.f12649j.getInitReader());
                FieldReader fieldReader = c1743a.f12650k.get(str4);
                if (fieldReader == null) {
                    c1743a.f12650k.put(str4, createFieldReaderMethod);
                    return;
                } else {
                    if (fieldReader.compareTo(createFieldReaderMethod) > 0) {
                        c1743a.f12650k.put(str4, createFieldReaderMethod);
                        return;
                    }
                    return;
                }
            }
            if (length2 == 2) {
                Class<?> cls2 = parameterTypes[1];
                Type type2 = method.getGenericParameterTypes()[1];
                method.setAccessible(true);
                FieldInfo fieldInfo5 = c1743a.f12649j;
                iag iagVar = new iag(type2, cls2, fieldInfo5.ordinal, fieldInfo5.features, fieldInfo5.format, method);
                c1743a.f12650k.put(iagVar.fieldName, iagVar);
                return;
            }
            Class<?> cls3 = parameterTypes[0];
            Type type3 = (cls3.isPrimitive() || cls3 == String.class || cls3.isEnum()) ? cls3 : method.getGenericParameterTypes()[0];
            if ((type3 instanceof Class) && Collection.class.isAssignableFrom((Class) type3)) {
                for (Class<?> cls4 : c1743a.f12644e.getInterfaces()) {
                    Method method2 = BeanUtils.getMethod(cls4, method);
                    if (method2 != null) {
                        Type[] genericParameterTypes = method2.getGenericParameterTypes();
                        if (genericParameterTypes.length == 1) {
                            Type type4 = genericParameterTypes[0];
                            if (type4 instanceof ParameterizedType) {
                                type3 = type4;
                            }
                        }
                    }
                }
            }
            Type type5 = type3;
            ObjectReader m7439e = ObjectReaderCreator.m7439e(c1743a.f12651l, type5, cls3, c1743a.f12649j);
            ObjectReaderCreator objectReaderCreator2 = ObjectReaderCreator.this;
            Class cls5 = c1743a.f12644e;
            Type type6 = c1743a.f12645f;
            FieldInfo fieldInfo6 = c1743a.f12649j;
            FieldReader createFieldReaderMethod2 = objectReaderCreator2.createFieldReaderMethod(cls5, type6, str4, fieldInfo6.ordinal, fieldInfo6.features, fieldInfo6.format, fieldInfo6.locale, fieldInfo6.defaultValue, type5, cls3, method, m7439e);
            String str5 = str4;
            FieldReader fieldReader2 = c1743a.f12650k.get(str5);
            if (fieldReader2 == null) {
                c1743a.f12650k.put(str5, createFieldReaderMethod2);
            } else if (fieldReader2.compareTo(createFieldReaderMethod2) > 0) {
                c1743a.f12650k.put(str5, createFieldReaderMethod2);
            }
            String[] strArr4 = c1743a.f12649j.alternateNames;
            if (strArr4 != null) {
                int length3 = strArr4.length;
                int i4 = 0;
                while (i4 < length3) {
                    String str6 = strArr4[i4];
                    if (!str5.equals(str6) && c1743a.f12650k.get(str6) == null) {
                        Map<String, FieldReader> map = c1743a.f12650k;
                        ObjectReaderCreator objectReaderCreator3 = ObjectReaderCreator.this;
                        Class cls6 = c1743a.f12644e;
                        Type type7 = c1743a.f12645f;
                        FieldInfo fieldInfo7 = c1743a.f12649j;
                        i = i4;
                        i2 = length3;
                        strArr = strArr4;
                        str = str5;
                        map.put(str6, objectReaderCreator3.createFieldReaderMethod(cls6, type7, str6, fieldInfo7.ordinal, fieldInfo7.features, fieldInfo7.format, fieldInfo7.locale, fieldInfo7.defaultValue, type5, cls3, method, m7439e));
                    } else {
                        i = i4;
                        i2 = length3;
                        strArr = strArr4;
                        str = str5;
                    }
                    i4 = i + 1;
                    c1743a = this;
                    length3 = i2;
                    strArr4 = strArr;
                    str5 = str;
                }
            }
        }
    }

    /* renamed from: com.alibaba.fastjson2.reader.ObjectReaderCreator$b */
    /* loaded from: classes3.dex */
    public final class C1744b implements Consumer {

        /* renamed from: e */
        public final Class f12653e;

        /* renamed from: f */
        public final Type f12654f;

        /* renamed from: g */
        public final String f12655g;

        /* renamed from: h */
        public final FieldInfo f12656h;

        /* renamed from: i */
        public final Map<String, FieldReader> f12657i;

        /* renamed from: j */
        public final ObjectReaderProvider f12658j;

        /* renamed from: k */
        public final BeanInfo f12659k;

        /* renamed from: l */
        public final boolean f12660l;

        public C1744b(Class cls, Type type, String str, FieldInfo fieldInfo, Map<String, FieldReader> map, ObjectReaderProvider objectReaderProvider, BeanInfo beanInfo, boolean z) {
            this.f12653e = cls;
            this.f12654f = type;
            this.f12655g = str;
            this.f12656h = fieldInfo;
            this.f12657i = map;
            this.f12658j = objectReaderProvider;
            this.f12659k = beanInfo;
            this.f12660l = z;
        }

        @Override // java.util.function.Consumer
        public void accept(Object obj) {
            String name;
            int i;
            int i2;
            String[] strArr;
            Field field = (Field) obj;
            this.f12656h.init();
            boolean z = true;
            if (this.f12660l) {
                this.f12656h.features |= JSONReader.Feature.FieldBased.mask;
            } else {
                this.f12656h.ignore = (field.getModifiers() & 1) == 0;
            }
            FieldInfo fieldInfo = this.f12656h;
            long j = fieldInfo.features;
            BeanInfo beanInfo = this.f12659k;
            fieldInfo.features = j | beanInfo.readerFeatures;
            fieldInfo.format = beanInfo.format;
            this.f12658j.getFieldInfo(fieldInfo, this.f12653e, field);
            FieldInfo fieldInfo2 = this.f12656h;
            if (fieldInfo2.ignore) {
                if (!((fieldInfo2.features & FieldInfo.UNWRAPPED_MASK) != 0 && Map.class.isAssignableFrom(field.getType()))) {
                    return;
                }
            }
            String str = this.f12656h.fieldName;
            if (str == null || str.isEmpty()) {
                name = field.getName();
                String str2 = this.f12655g;
                if (str2 != null) {
                    name = BeanUtils.fieldName(name, str2);
                }
            } else {
                name = this.f12656h.fieldName;
            }
            String str3 = name;
            String[] strArr2 = this.f12659k.orders;
            if (strArr2 != null && strArr2.length > 0) {
                int i3 = 0;
                while (true) {
                    if (i3 >= strArr2.length) {
                        z = false;
                        break;
                    } else {
                        if (str3.equals(strArr2[i3])) {
                            this.f12656h.ordinal = i3;
                            break;
                        }
                        i3++;
                    }
                }
                if (!z) {
                    FieldInfo fieldInfo3 = this.f12656h;
                    if (fieldInfo3.ordinal == 0) {
                        fieldInfo3.ordinal = strArr2.length;
                    }
                }
            }
            Type genericType = field.getGenericType();
            Class<?> type = field.getType();
            ObjectReader m7439e = ObjectReaderCreator.m7439e(this.f12658j, genericType, type, this.f12656h);
            ObjectReaderCreator objectReaderCreator = ObjectReaderCreator.this;
            Class cls = this.f12653e;
            Type type2 = this.f12654f;
            FieldInfo fieldInfo4 = this.f12656h;
            FieldReader createFieldReader = objectReaderCreator.createFieldReader(cls, type2, str3, fieldInfo4.ordinal, fieldInfo4.features, fieldInfo4.format, fieldInfo4.locale, fieldInfo4.defaultValue, genericType, type, field, m7439e);
            FieldReader fieldReader = this.f12657i.get(str3);
            if (fieldReader == null) {
                this.f12657i.put(str3, createFieldReader);
            } else if (createFieldReader.compareTo(fieldReader) > 0) {
                this.f12657i.put(str3, createFieldReader);
            }
            String[] strArr3 = this.f12656h.alternateNames;
            if (strArr3 != null) {
                int length = strArr3.length;
                int i4 = 0;
                while (i4 < length) {
                    String str4 = strArr3[i4];
                    if (str3.equals(str4)) {
                        i = i4;
                        i2 = length;
                        strArr = strArr3;
                    } else {
                        ObjectReaderCreator objectReaderCreator2 = ObjectReaderCreator.this;
                        Class cls2 = this.f12653e;
                        Type type3 = this.f12654f;
                        FieldInfo fieldInfo5 = this.f12656h;
                        i = i4;
                        i2 = length;
                        strArr = strArr3;
                        FieldReader createFieldReader2 = objectReaderCreator2.createFieldReader(cls2, type3, str4, fieldInfo5.ordinal, fieldInfo5.features, null, fieldInfo5.locale, fieldInfo5.defaultValue, genericType, type, field, null);
                        if (this.f12657i.get(str4) == null) {
                            this.f12657i.put(str4, createFieldReader2);
                        }
                    }
                    i4 = i + 1;
                    length = i2;
                    strArr3 = strArr;
                }
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0054  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0034 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* renamed from: e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.alibaba.fastjson2.reader.ObjectReader m7439e(com.alibaba.fastjson2.reader.ObjectReaderProvider r7, java.lang.reflect.Type r8, java.lang.Class r9, com.alibaba.fastjson2.codec.FieldInfo r10) {
        /*
            com.alibaba.fastjson2.reader.ObjectReader r0 = r10.getInitReader()
            r1 = 0
            if (r0 != 0) goto L5f
            java.lang.Class<?> r2 = r10.keyUsing
            if (r2 != 0) goto Lf
            java.lang.Class<?> r2 = r10.valueUsing
            if (r2 == 0) goto L5f
        Lf:
            java.lang.Class<java.util.Map> r2 = java.util.Map.class
            boolean r2 = r2.isAssignableFrom(r9)
            if (r2 == 0) goto L5f
            java.lang.Class<?> r2 = r10.keyUsing
            r3 = 1
            r4 = 0
            if (r2 == 0) goto L2f
            java.lang.Class[] r5 = new java.lang.Class[r1]     // Catch: java.lang.Exception -> L2f
            java.lang.reflect.Constructor r2 = r2.getDeclaredConstructor(r5)     // Catch: java.lang.Exception -> L2f
            r2.setAccessible(r3)     // Catch: java.lang.Exception -> L2f
            java.lang.Object[] r5 = new java.lang.Object[r1]     // Catch: java.lang.Exception -> L2f
            java.lang.Object r2 = r2.newInstance(r5)     // Catch: java.lang.Exception -> L2f
            com.alibaba.fastjson2.reader.ObjectReader r2 = (com.alibaba.fastjson2.reader.ObjectReader) r2     // Catch: java.lang.Exception -> L2f
            goto L30
        L2f:
            r2 = r4
        L30:
            java.lang.Class<?> r5 = r10.valueUsing
            if (r5 == 0) goto L46
            java.lang.Class[] r6 = new java.lang.Class[r1]     // Catch: java.lang.Exception -> L46
            java.lang.reflect.Constructor r5 = r5.getDeclaredConstructor(r6)     // Catch: java.lang.Exception -> L46
            r5.setAccessible(r3)     // Catch: java.lang.Exception -> L46
            java.lang.Object[] r3 = new java.lang.Object[r1]     // Catch: java.lang.Exception -> L46
            java.lang.Object r3 = r5.newInstance(r3)     // Catch: java.lang.Exception -> L46
            com.alibaba.fastjson2.reader.ObjectReader r3 = (com.alibaba.fastjson2.reader.ObjectReader) r3     // Catch: java.lang.Exception -> L46
            r4 = r3
        L46:
            if (r2 != 0) goto L4a
            if (r4 == 0) goto L5f
        L4a:
            long r5 = r10.features
            com.alibaba.fastjson2.reader.ObjectReader r8 = com.alibaba.fastjson2.reader.ObjectReaderImplMap.m7481of(r8, r9, r5)
            boolean r10 = r8 instanceof com.sunia.HTREnginev2.p9k
            if (r10 == 0) goto L5f
            com.sunia.HTREnginev2.p9k r8 = (com.sunia.HTREnginev2.p9k) r8
            if (r2 == 0) goto L5a
            r8.f80591j = r2
        L5a:
            if (r4 == 0) goto L5e
            r8.f80590i = r4
        L5e:
            return r8
        L5f:
            if (r0 != 0) goto L88
            java.lang.Class<java.math.BigDecimal> r8 = java.math.BigDecimal.class
            if (r9 != r8) goto L6e
            com.alibaba.fastjson2.reader.ObjectReader r7 = r7.getObjectReader(r8, r1)
            com.sunia.HTREnginev2.o7k r8 = com.sunia.HTREnginev2.o7k.f79437c
            if (r7 == r8) goto L88
            goto L87
        L6e:
            java.lang.Class<java.math.BigInteger> r8 = java.math.BigInteger.class
            if (r9 != r8) goto L7b
            com.alibaba.fastjson2.reader.ObjectReader r7 = r7.getObjectReader(r8, r1)
            com.sunia.HTREnginev2.p7k r8 = com.sunia.HTREnginev2.p7k.f80531a
            if (r7 == r8) goto L88
            goto L87
        L7b:
            java.lang.Class<java.util.Date> r8 = java.util.Date.class
            if (r9 != r8) goto L88
            com.alibaba.fastjson2.reader.ObjectReader r7 = r7.getObjectReader(r8, r1)
            com.alibaba.fastjson2.reader.ObjectReaderImplDate r8 = com.alibaba.fastjson2.reader.ObjectReaderImplDate.INSTANCE
            if (r7 == r8) goto L88
        L87:
            r0 = r7
        L88:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson2.reader.ObjectReaderCreator.m7439e(com.alibaba.fastjson2.reader.ObjectReaderProvider, java.lang.reflect.Type, java.lang.Class, com.alibaba.fastjson2.codec.FieldInfo):com.alibaba.fastjson2.reader.ObjectReader");
    }

    /* renamed from: f */
    public static /* synthetic */ Object m7440f(Method method, Object obj) {
        try {
            return method.invoke(obj, new Object[0]);
        } catch (Throwable th) {
            throw new JSONException("create instance error", th);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: h */
    public /* synthetic */ void m7442h(FieldInfo fieldInfo, ObjectReaderProvider objectReaderProvider, Class cls, String str, Class cls2, BeanInfo beanInfo, int i, Map map, Type type, Method method) {
        int i2;
        String[] strArr;
        String str2;
        fieldInfo.init();
        objectReaderProvider.getFieldInfo(fieldInfo, cls, method);
        if (fieldInfo.ignore) {
            return;
        }
        String name = method.getName();
        String str3 = fieldInfo.fieldName;
        if (str3 == null || str3.isEmpty()) {
            if (!(name.length() <= str.length() || !name.startsWith(str, 0))) {
                name = BeanUtils.setterName(name, i);
            } else {
                if (method.getDeclaringClass() == Object.class || method.getReturnType() != cls2) {
                    return;
                }
                if (method.getAnnotation(JSONField.class) == null && (beanInfo.readerFeatures & JSONReader.Feature.SupportSmartMatch.mask) == 0) {
                    return;
                }
            }
        } else {
            name = fieldInfo.fieldName;
        }
        String str4 = name;
        if (method.getParameterCount() == 0) {
            FieldReader createFieldReaderMethod = createFieldReaderMethod(cls2, cls2, str4, fieldInfo.ordinal, fieldInfo.features, fieldInfo.format, fieldInfo.locale, fieldInfo.defaultValue, method.getGenericReturnType(), method.getReturnType(), method, null);
            FieldReader fieldReader = (FieldReader) map.get(str4);
            if (fieldReader == null) {
                map.put(str4, createFieldReaderMethod);
                return;
            } else {
                if (fieldReader.compareTo(createFieldReaderMethod) > 0) {
                    map.put(str4, createFieldReaderMethod);
                    return;
                }
                return;
            }
        }
        Type type2 = method.getGenericParameterTypes()[0];
        Class<?> cls3 = method.getParameterTypes()[0];
        method.setAccessible(true);
        FieldReader createFieldReaderMethod2 = createFieldReaderMethod(cls2, type, str4, fieldInfo.ordinal, fieldInfo.features, fieldInfo.format, fieldInfo.locale, fieldInfo.defaultValue, type2, cls3, method, null);
        String str5 = str4;
        FieldReader fieldReader2 = (FieldReader) map.get(str5);
        if (fieldReader2 == null) {
            map.put(str5, createFieldReaderMethod2);
        } else if (fieldReader2.compareTo(createFieldReaderMethod2) > 0) {
            map.put(str5, createFieldReaderMethod2);
        }
        String[] strArr2 = fieldInfo.alternateNames;
        if (strArr2 != null) {
            int i3 = 0;
            while (i3 < strArr2.length) {
                String str6 = strArr2[i3];
                if (!str5.equals(str6) && ((FieldReader) map.get(str6)) == null) {
                    i2 = i3;
                    strArr = strArr2;
                    str2 = str5;
                    map.put(str6, createFieldReaderMethod(cls2, type, str6, fieldInfo.ordinal, fieldInfo.features, fieldInfo.format, fieldInfo.locale, fieldInfo.defaultValue, type2, cls3, method, null));
                } else {
                    i2 = i3;
                    strArr = strArr2;
                    str2 = str5;
                }
                i3 = i2 + 1;
                strArr2 = strArr;
                str5 = str2;
            }
        }
    }

    /* renamed from: i */
    public static /* synthetic */ void m7443i(Class cls, ObjectReaderProvider objectReaderProvider, Class cls2, BeanInfo beanInfo, String str, FieldInfo fieldInfo, Method method) {
        if (method.getReturnType() != cls) {
            return;
        }
        FieldInfo fieldInfo2 = new FieldInfo();
        objectReaderProvider.getFieldInfo(fieldInfo2, cls2, method);
        String str2 = fieldInfo2.fieldName;
        if (str2 == null) {
            str2 = BeanUtils.getterName(method, beanInfo.f116569kotlin, PropertyNamingStrategy.CamelCase.name());
        }
        if (fieldInfo2.readUsing == null || !str.equals(str2)) {
            return;
        }
        fieldInfo.readUsing = fieldInfo2.readUsing;
    }

    public <T, R> Function<T, R> createBuildFunction(final Method method) {
        method.setAccessible(true);
        return new Function() { // from class: com.sunia.HTREnginev2.g7k
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Object m7440f;
                m7440f = ObjectReaderCreator.m7440f(method, obj);
                return m7440f;
            }
        };
    }

    /* JADX WARN: Removed duplicated region for block: B:58:0x00ed A[LOOP:4: B:57:0x00eb->B:58:0x00ed, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:67:0x010d  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x0118  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.alibaba.fastjson2.reader.ObjectReader createEnumReader(java.lang.Class r11, java.lang.reflect.Method r12, com.alibaba.fastjson2.reader.ObjectReaderProvider r13) {
        /*
            Method dump skipped, instructions count: 295
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson2.reader.ObjectReaderCreator.createEnumReader(java.lang.Class, java.lang.reflect.Method, com.alibaba.fastjson2.reader.ObjectReaderProvider):com.alibaba.fastjson2.reader.ObjectReader");
    }

    public <T> Function<Map<Long, Object>, T> createFactoryFunction(Method method, String... strArr) {
        method.setAccessible(true);
        return new p8g(method, strArr);
    }

    public <T> FieldReader createFieldReader(Class<T> cls, String str, Type type, Class cls2, Method method) {
        return createFieldReaderMethod(cls, cls, str, 0, 0L, null, null, null, type, cls2, method, null);
    }

    public <T> FieldReader createFieldReaderMethod(Class<T> cls, String str, String str2, Type type, Class cls2, Method method) {
        return createFieldReaderMethod(cls, cls, str, 0, 0L, str2, null, null, type, cls2, method, null);
    }

    public <T> FieldReader createFieldReaderParam(Class<T> cls, Type type, String str, int i, long j, String str2, Type type2, Class cls2, String str3, Class cls3) {
        return createFieldReaderParam(cls, type, str, i, j, str2, null, null, type2, cls2, str3, cls3, null);
    }

    /* JADX WARN: Removed duplicated region for block: B:8:0x0041  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.alibaba.fastjson2.reader.FieldReader[] createFieldReaders(com.alibaba.fastjson2.reader.ObjectReaderProvider r30, java.lang.Class r31, java.lang.reflect.Type r32, java.lang.reflect.AccessibleObject r33, java.lang.Class[] r34, java.lang.String... r35) {
        /*
            Method dump skipped, instructions count: 241
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson2.reader.ObjectReaderCreator.createFieldReaders(com.alibaba.fastjson2.reader.ObjectReaderProvider, java.lang.Class, java.lang.reflect.Type, java.lang.reflect.AccessibleObject, java.lang.Class[], java.lang.String[]):com.alibaba.fastjson2.reader.FieldReader[]");
    }

    public <T> Function<Map<Long, Object>, T> createFunction(Constructor constructor, String... strArr) {
        constructor.setAccessible(true);
        return new hae(null, constructor, null, null, null, strArr);
    }

    public <T> ObjectReader<T> createObjectReader(Class<T> cls, FieldReader... fieldReaderArr) {
        return createObjectReader(cls, null, 0L, createSupplier(cls), null, fieldReaderArr);
    }

    public <T> ObjectReader<T> createObjectReaderFactoryMethod(Method method, String... strArr) {
        return new ObjectReaderNoneDefaultConstructor(null, null, null, 0L, createFactoryFunction(method, strArr), strArr, createFieldReaders(JSONFactory.defaultObjectReaderProvider, null, null, method, method.getParameterTypes(), strArr), null, null, null);
    }

    public <T> ObjectReader<T> createObjectReaderNoneDefaultConstructor(Constructor constructor, String... strArr) {
        Function<Map<Long, Object>, T> createFunction = createFunction(constructor, strArr);
        Class<T> declaringClass = constructor.getDeclaringClass();
        return createObjectReaderNoneDefaultConstructor(declaringClass, createFunction, createFieldReaders(JSONFactory.defaultObjectReaderProvider, declaringClass, declaringClass, constructor, constructor.getParameterTypes(), strArr));
    }

    public <T> ObjectReader<T> createObjectReaderSeeAlso(Class<T> cls, Class[] clsArr, FieldReader... fieldReaderArr) {
        return new gbk(cls, createSupplier(cls), ObjectWriterAdapter.f12832t, clsArr, null, null, fieldReaderArr);
    }

    public <T> ObjectReader<T> createObjectReaderWithBuilder(final Class<T> cls, final Type type, final ObjectReaderProvider objectReaderProvider, final BeanInfo beanInfo) {
        Method method = beanInfo.buildMethod;
        Function createBuildFunction = method != null ? createBuildFunction(method) : null;
        final Class<T> cls2 = beanInfo.builder;
        String str = beanInfo.builderWithPrefix;
        if (str == null || str.isEmpty()) {
            str = "with";
        }
        final String str2 = str;
        final int length = str2.length();
        final LinkedHashMap linkedHashMap = new LinkedHashMap();
        final FieldInfo fieldInfo = new FieldInfo();
        BeanUtils.setters(cls2, false, new Consumer() { // from class: com.sunia.HTREnginev2.j7k
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                ObjectReaderCreator.this.m7442h(fieldInfo, objectReaderProvider, cls, str2, cls2, beanInfo, length, linkedHashMap, type, (Method) obj);
            }
        });
        FieldReader[] fieldReaderArr = new FieldReader[linkedHashMap.size()];
        linkedHashMap.values().toArray(fieldReaderArr);
        Arrays.sort(fieldReaderArr);
        return createObjectReader(cls2, 0L, createSupplier(cls2), createBuildFunction, fieldReaderArr);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <T> ObjectReader<T> createObjectReaderWithCreator(final Class<T> cls, Type type, final ObjectReaderProvider objectReaderProvider, final BeanInfo beanInfo) {
        Class<?>[] parameterTypes;
        Class<?> declaringClass;
        String[] strArr;
        Type[] genericParameterTypes;
        Annotation[][] parameterAnnotations;
        boolean z;
        String[] strArr2;
        LinkedHashMap linkedHashMap;
        FieldInfo fieldInfo;
        int i;
        Class<?>[] clsArr;
        String[] strArr3;
        Function<Map<Long, Object>, T> createFactoryFunction;
        FieldReader[] fieldReaderArr;
        int i2;
        String[] strArr4;
        String str;
        FieldInfo fieldInfo2;
        Class cls2 = cls;
        ObjectReaderProvider objectReaderProvider2 = objectReaderProvider;
        BeanInfo beanInfo2 = beanInfo;
        FieldInfo fieldInfo3 = new FieldInfo();
        LinkedHashMap linkedHashMap2 = new LinkedHashMap();
        Constructor constructor = beanInfo2.creatorConstructor;
        if (constructor != null) {
            parameterTypes = constructor.getParameterTypes();
            declaringClass = beanInfo2.creatorConstructor.getDeclaringClass();
            strArr = BeanUtils.lookupParameterNames(beanInfo2.creatorConstructor);
            genericParameterTypes = beanInfo2.creatorConstructor.getGenericParameterTypes();
            parameterAnnotations = beanInfo2.creatorConstructor.getParameterAnnotations();
        } else {
            parameterTypes = beanInfo2.createMethod.getParameterTypes();
            declaringClass = beanInfo2.createMethod.getDeclaringClass();
            strArr = new String[parameterTypes.length];
            genericParameterTypes = beanInfo2.createMethod.getGenericParameterTypes();
            parameterAnnotations = beanInfo2.createMethod.getParameterAnnotations();
        }
        Class<?>[] clsArr2 = parameterTypes;
        Class<?> cls3 = declaringClass;
        String[] strArr5 = strArr;
        Type[] typeArr = genericParameterTypes;
        Annotation[][] annotationArr = parameterAnnotations;
        int i3 = 0;
        while (true) {
            if (i3 >= clsArr2.length) {
                z = true;
                strArr2 = strArr5;
                linkedHashMap = linkedHashMap2;
                fieldInfo = fieldInfo3;
                i = 0;
                clsArr = clsArr2;
                break;
            }
            fieldInfo3.init();
            Constructor constructor2 = beanInfo2.creatorConstructor;
            if (constructor2 != null) {
                z = true;
                objectReaderProvider.getFieldInfo(fieldInfo3, cls, constructor2, i3, annotationArr);
            } else {
                z = true;
                objectReaderProvider2.getFieldInfo(fieldInfo3, cls2, beanInfo2.createMethod, i3);
            }
            if (clsArr2.length == z && (fieldInfo3.features & FieldInfo.VALUE_MASK) != 0) {
                strArr2 = strArr5;
                clsArr = clsArr2;
                linkedHashMap = linkedHashMap2;
                fieldInfo = fieldInfo3;
                i = 0;
                break;
            }
            String str2 = fieldInfo3.fieldName;
            if (str2 == null || str2.isEmpty()) {
                String[] strArr6 = beanInfo2.createParameterNames;
                if (strArr6 != null && i3 < strArr6.length) {
                    str2 = strArr6[i3];
                }
                if (str2 == null || str2.isEmpty()) {
                    str2 = Constants.ELEMNAME_ARG_STRING + i3;
                }
            }
            if (!str2.startsWith(Constants.ELEMNAME_ARG_STRING, 0)) {
                strArr5[i3] = str2;
            } else if (strArr5.length > i3) {
                str2 = strArr5[i3];
            }
            final String str3 = str2;
            final Class<?> cls4 = clsArr2[i3];
            String[] strArr7 = strArr5;
            int i4 = i3;
            final FieldInfo fieldInfo4 = fieldInfo3;
            BeanUtils.getters(cls2, new Consumer() { // from class: com.sunia.HTREnginev2.h7k
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    ObjectReaderCreator.m7443i(cls4, objectReaderProvider, cls, beanInfo, str3, fieldInfo4, (Method) obj);
                }
            });
            if (str3 == null || str3.isEmpty()) {
                str3 = Constants.ELEMNAME_ARG_STRING + i4;
            }
            String str4 = str3;
            Type type2 = typeArr[i4];
            ObjectReader m7439e = m7439e(objectReaderProvider2, type2, cls4, fieldInfo3);
            Class<?>[] clsArr3 = clsArr2;
            LinkedHashMap linkedHashMap3 = linkedHashMap2;
            FieldInfo fieldInfo5 = fieldInfo3;
            FieldReader createFieldReaderParam = createFieldReaderParam(cls, type, str4, i4, fieldInfo3.features, fieldInfo3.format, type2, cls4, str4, cls3, m7439e);
            String str5 = str4;
            linkedHashMap3.put(str5, createFieldReaderParam);
            String[] strArr8 = fieldInfo5.alternateNames;
            if (strArr8 != null) {
                int i5 = 0;
                while (i5 < strArr8.length) {
                    String str6 = strArr8[i5];
                    if (!str5.equals(str6) && ((FieldReader) linkedHashMap3.get(str6)) == null) {
                        fieldInfo2 = fieldInfo5;
                        i2 = i5;
                        strArr4 = strArr8;
                        str = str5;
                        linkedHashMap3.put(str6, createFieldReaderParam(cls, type, str6, i4, fieldInfo5.features, fieldInfo5.format, type2, cls4, str5, cls3, null));
                    } else {
                        i2 = i5;
                        strArr4 = strArr8;
                        str = str5;
                        fieldInfo2 = fieldInfo5;
                    }
                    i5 = i2 + 1;
                    fieldInfo5 = fieldInfo2;
                    strArr8 = strArr4;
                    str5 = str;
                }
            }
            FieldInfo fieldInfo6 = fieldInfo5;
            i3 = i4 + 1;
            objectReaderProvider2 = objectReaderProvider;
            beanInfo2 = beanInfo;
            linkedHashMap2 = linkedHashMap3;
            strArr5 = strArr7;
            clsArr2 = clsArr3;
            fieldInfo3 = fieldInfo6;
            cls2 = cls;
        }
        if (clsArr.length == z) {
            FieldInfo fieldInfo7 = fieldInfo;
            if ((fieldInfo7.features & FieldInfo.VALUE_MASK) != 0) {
                Type type3 = beanInfo.creatorConstructor == null ? beanInfo.createMethod.getGenericParameterTypes()[i] : typeArr[i];
                Constructor constructor3 = beanInfo.creatorConstructor;
                Class<?> cls5 = constructor3 == null ? beanInfo.createMethod.getParameterTypes()[i] : constructor3.getParameterTypes()[i];
                Object obj = fieldInfo7.defaultValue;
                if (obj != null && obj.getClass() != cls5) {
                    Function typeConvert = JSONFactory.getDefaultObjectReaderProvider().getTypeConvert(obj.getClass(), type3);
                    if (typeConvert == 0) {
                        throw new JSONException("illegal defaultValue : " + obj + ", class " + cls5.getName());
                    }
                    obj = typeConvert.apply(obj);
                }
                return new ObjectReaderImplValue(cls, type3, cls5, fieldInfo7.features, fieldInfo7.format, obj, beanInfo.creatorConstructor, beanInfo.createMethod, null);
            }
        }
        Constructor constructor4 = beanInfo.creatorConstructor;
        if (constructor4 != null) {
            strArr3 = strArr2;
            createFactoryFunction = createFunction(constructor4, beanInfo.markerConstructor, strArr3);
        } else {
            strArr3 = strArr2;
            createFactoryFunction = createFactoryFunction(beanInfo.createMethod, strArr3);
        }
        Function<Map<Long, Object>, T> function = createFactoryFunction;
        FieldReader[] fieldReaderArr2 = new FieldReader[linkedHashMap.size()];
        linkedHashMap.values().toArray(fieldReaderArr2);
        Arrays.sort(fieldReaderArr2);
        FieldReader[] createFieldReaders = createFieldReaders(cls, type, null, false, objectReaderProvider);
        Arrays.sort(createFieldReaders);
        boolean[] zArr = null;
        int i6 = i;
        int i7 = i6;
        while (i6 < createFieldReaders.length) {
            if (linkedHashMap.containsKey(createFieldReaders[i6].fieldName)) {
                if (zArr == null) {
                    zArr = new boolean[createFieldReaders.length];
                }
                zArr[i6] = z;
                i7++;
            }
            i6++;
        }
        if (i7 > 0) {
            FieldReader[] fieldReaderArr3 = new FieldReader[createFieldReaders.length - i7];
            for (int i8 = i; i8 < createFieldReaders.length; i8++) {
                if (!zArr[i8]) {
                    fieldReaderArr3[i] = createFieldReaders[i8];
                    i++;
                }
            }
            fieldReaderArr = fieldReaderArr3;
        } else {
            fieldReaderArr = createFieldReaders;
        }
        return new ObjectReaderNoneDefaultConstructor(cls, beanInfo.typeKey, beanInfo.typeName, beanInfo.readerFeatures, function, strArr3, fieldReaderArr2, fieldReaderArr, beanInfo.seeAlso, beanInfo.seeAlsoNames);
    }

    public <T> Supplier<T> createSupplier(Class<T> cls) {
        if (!cls.isInterface() && !Modifier.isAbstract(cls.getModifiers())) {
            try {
                Constructor<T> declaredConstructor = cls.getDeclaredConstructor(new Class[0]);
                declaredConstructor.setAccessible(true);
                return new jae(declaredConstructor);
            } catch (NoSuchMethodException unused) {
            } catch (Throwable th) {
                throw new JSONException("get constructor error, class " + cls.getName(), th);
            }
        }
        return null;
    }

    public <T> FieldReader createFieldReader(Class<T> cls, String str, String str2, Type type, Class cls2, Method method) {
        return createFieldReaderMethod(cls, str, str2, type, cls2, method);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:173:0x0405  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public <T> com.alibaba.fastjson2.reader.FieldReader createFieldReaderMethod(java.lang.Class<T> r17, java.lang.reflect.Type r18, java.lang.String r19, int r20, long r21, java.lang.String r23, java.util.Locale r24, java.lang.Object r25, java.lang.reflect.Type r26, java.lang.Class r27, java.lang.reflect.Method r28, com.alibaba.fastjson2.reader.ObjectReader r29) {
        /*
            Method dump skipped, instructions count: 1158
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson2.reader.ObjectReaderCreator.createFieldReaderMethod(java.lang.Class, java.lang.reflect.Type, java.lang.String, int, long, java.lang.String, java.util.Locale, java.lang.Object, java.lang.reflect.Type, java.lang.Class, java.lang.reflect.Method, com.alibaba.fastjson2.reader.ObjectReader):com.alibaba.fastjson2.reader.FieldReader");
    }

    public <T> FieldReader createFieldReaderParam(Class<T> cls, Type type, String str, int i, long j, String str2, Type type2, Class cls2, String str3, Class cls3, ObjectReader objectReader) {
        return createFieldReaderParam(cls, type, str, i, j, str2, null, null, type2, cls2, str3, cls3, objectReader);
    }

    public <T> FieldReader<T> createFieldReader(String str, Type type, Field field) {
        return createFieldReader(str, null, type, field);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <T> FieldReader createFieldReaderParam(Class<T> cls, Type type, String str, int i, long j, String str2, Locale locale, Object obj, Type type2, Class cls2, String str3, Class cls3, ObjectReader objectReader) {
        Type type3;
        if (objectReader != null) {
            gdg gdgVar = new gdg(str, type2, cls2, str3, i, j, str2, locale, obj);
            gdgVar.initReader = objectReader;
            return gdgVar;
        }
        if (type2 != Byte.TYPE && type2 != Byte.class) {
            if (type2 != Short.TYPE && type2 != Short.class) {
                if (type2 != Integer.TYPE && type2 != Integer.class) {
                    if (type2 != Long.TYPE && type2 != Long.class) {
                        if ((type2 instanceof Class) || type == null) {
                            type3 = null;
                        } else {
                            Type paramType = BeanUtils.getParamType(TypeReference.get(type), cls, cls3, type2);
                            r1 = paramType;
                            type3 = paramType != null ? TypeUtils.getMapping(paramType) : null;
                        }
                        return new gdg(str, r1 == null ? type2 : r1, type3 == null ? cls2 : type3, str3, i, j, str2, locale, obj);
                    }
                    return new ncg(str, cls2, str3, i, j, str2, locale, obj);
                }
                return new fcg(str, cls2, str3, i, j, str2, locale, obj);
            }
            return new ybg(str, cls2, str3, i, j, str2, locale, obj);
        }
        return new vcg(str, cls2, str3, i, j, str2, locale, obj);
    }

    public <T> Function<Map<Long, Object>, T> createFunction(Constructor constructor, Constructor constructor2, String... strArr) {
        if (constructor2 == null) {
            constructor.setAccessible(true);
        } else {
            constructor2.setAccessible(true);
        }
        return new hae(null, constructor, null, null, constructor2, strArr);
    }

    public <T> ObjectReader<T> createObjectReader(Class<T> cls, Supplier<T> supplier, FieldReader... fieldReaderArr) {
        return createObjectReader(cls, null, 0L, supplier, null, fieldReaderArr);
    }

    public <T> ObjectReader<T> createObjectReaderSeeAlso(Class<T> cls, String str, Class[] clsArr, String[] strArr, FieldReader... fieldReaderArr) {
        return new gbk(cls, createSupplier(cls), str, clsArr, strArr, null, fieldReaderArr);
    }

    public <T> FieldReader<T> createFieldReader(String str, String str2, Type type, Field field) {
        Class<?> declaringClass = field.getDeclaringClass();
        return createFieldReader(declaringClass, declaringClass, str, 0L, str2, type, field.getType(), field);
    }

    public <T> ObjectReader<T> createObjectReader(Class<T> cls, long j, Supplier<T> supplier, Function function, FieldReader... fieldReaderArr) {
        return createObjectReader(cls, null, j, supplier, function, fieldReaderArr);
    }

    public <T> ObjectReader<T> createObjectReader(Class<T> cls, String str, long j, Supplier<T> supplier, Function function, FieldReader... fieldReaderArr) {
        if (cls != null) {
            int modifiers = cls.getModifiers();
            if (Modifier.isAbstract(modifiers) || Modifier.isInterface(modifiers)) {
                return new ObjectReaderAdapter(cls, str, null, j, supplier, function, fieldReaderArr);
            }
        }
        switch (fieldReaderArr.length) {
            case 1:
                return new ObjectReader1(cls, null, null, j, supplier, function, fieldReaderArr);
            case 2:
                return new ObjectReader2(cls, null, null, j, supplier, function, fieldReaderArr);
            case 3:
                return new ObjectReader3(cls, null, null, j, supplier, function, fieldReaderArr);
            case 4:
                return new ObjectReader4(cls, null, null, j, supplier, function, fieldReaderArr);
            case 5:
                return new ObjectReader5(cls, null, null, j, supplier, function, fieldReaderArr);
            case 6:
                return new ObjectReader6(cls, null, null, j, supplier, function, fieldReaderArr);
            default:
                return new ObjectReaderAdapter(cls, str, null, j, supplier, function, fieldReaderArr);
        }
    }

    public <T> ObjectReader<T> createObjectReaderSeeAlso(Class<T> cls, String str, Class[] clsArr, String[] strArr, Class cls2, FieldReader... fieldReaderArr) {
        return new gbk(cls, createSupplier(cls), str, clsArr, strArr, cls2, fieldReaderArr);
    }

    public <T> FieldReader<T> createFieldReader(Class cls, Type type, String str, long j, String str2, Type type2, Class cls2, Field field) {
        return createFieldReader(cls, type, str, 0, j, str2, null, null, type2, field.getType(), field, null);
    }

    public <T> ObjectReader<T> createObjectReaderNoneDefaultConstructor(Class cls, Function<Map<Long, Object>, T> function, FieldReader... fieldReaderArr) {
        return new ObjectReaderNoneDefaultConstructor(cls, null, null, 0L, function, null, fieldReaderArr, null, null, null);
    }

    public <T> ObjectReader<T> createObjectReaderSeeAlso(Class<T> cls, Supplier<T> supplier, String str, Class[] clsArr, String[] strArr, FieldReader... fieldReaderArr) {
        return new gbk(cls, supplier, str, clsArr, strArr, null, fieldReaderArr);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <T> FieldReader<T> createFieldReader(Class cls, Type type, String str, int i, long j, String str2, Locale locale, Object obj, Type type2, Class cls2, Field field, ObjectReader objectReader) {
        Type type3;
        Class<?> cls3;
        Object obj2 = obj;
        if ((obj2 instanceof String) && cls2.isEnum()) {
            obj2 = Enum.valueOf(cls2, (String) obj2);
        }
        if (obj2 != null && obj2.getClass() != cls2) {
            Function typeConvert = JSONFactory.getDefaultObjectReaderProvider().getTypeConvert(obj2.getClass(), type2);
            if (typeConvert != 0) {
                obj2 = typeConvert.apply(obj2);
            } else {
                throw new JSONException("illegal defaultValue : " + obj2 + ", class " + cls2.getName());
            }
        }
        Object obj3 = obj2;
        if (field != null && !cls.getName().startsWith("java.lang", 0)) {
            field.setAccessible(true);
        }
        if (objectReader != null) {
            edg edgVar = new edg(str, type2, cls2, i, j | FieldInfo.READ_USING_MASK, str2, obj3, field);
            edgVar.initReader = objectReader;
            return edgVar;
        }
        if (cls2 == Integer.TYPE) {
            return new hcg(str, cls2, i, str2, (Integer) obj3, field);
        }
        if (cls2 == Integer.class) {
            return new ccg(str, cls2, i, j, str2, (Integer) obj3, field);
        }
        if (cls2 == Long.TYPE) {
            return new pcg(str, cls2, i, j, str2, (Long) obj3, field);
        }
        if (cls2 == Long.class) {
            return new kcg(str, cls2, i, j, str2, (Long) obj3, field);
        }
        if (cls2 == Short.TYPE) {
            return new zbg(str, cls2, i, j, str2, (Short) obj3, field);
        }
        if (cls2 == Short.class) {
            return new vbg(str, cls2, i, j, str2, (Short) obj3, field);
        }
        if (cls2 == Boolean.TYPE) {
            return new bbg(str, i, j, str2, (Boolean) obj3, field);
        }
        if (cls2 == Boolean.class) {
            return new xag(str, cls2, i, j, str2, (Boolean) obj3, field);
        }
        if (cls2 == Byte.TYPE) {
            return new wcg(str, cls2, i, j, str2, (Byte) obj3, field);
        }
        if (cls2 == Byte.class) {
            return new scg(str, cls2, i, j, str2, (Byte) obj3, field);
        }
        if (cls2 == Float.TYPE) {
            return new sbg(str, cls2, i, j, str2, (Float) obj3, field);
        }
        if (cls2 == Float.class) {
            return new pbg(str, cls2, i, j, str2, (Float) obj3, field);
        }
        if (cls2 == Double.TYPE) {
            return new mbg(str, cls2, i, j, str2, (Double) obj3, field);
        }
        if (cls2 == Double.class) {
            return new jbg(str, cls2, i, j, str2, (Double) obj3, field);
        }
        if (cls2 == Character.TYPE) {
            return new dbg(str, i, j, str2, (Character) obj3, field);
        }
        if (cls2 == BigDecimal.class) {
            return new rag(str, cls2, i, j, str2, (BigDecimal) obj3, field);
        }
        if (cls2 == BigInteger.class) {
            return new uag(str, cls2, i, j, str2, (BigInteger) obj3, field);
        }
        if (cls2 == String.class) {
            return new idg(str, cls2, i, j, str2, (String) obj3, field);
        }
        if (cls2 == Date.class) {
            return new hbg(str, type2, cls2, i, j, str2, locale, obj3, field, null, null);
        }
        if (cls2 == AtomicBoolean.class) {
            return new jag(str, cls2, i, str2, (AtomicBoolean) obj3, field);
        }
        if (cls2 == AtomicReference.class) {
            return new pag(str, type2, cls2, i, str2, field);
        }
        Type type4 = null;
        if (type2 instanceof Class) {
            type3 = null;
            cls3 = null;
        } else {
            type3 = BeanUtils.getFieldType(TypeReference.get(type), cls, field, type2);
            cls3 = TypeUtils.getMapping(type3);
        }
        boolean isFinal = Modifier.isFinal(field.getModifiers());
        if (Collection.class.isAssignableFrom(cls2)) {
            if (type3 instanceof ParameterizedType) {
                Type[] actualTypeArguments = ((ParameterizedType) type3).getActualTypeArguments();
                if (actualTypeArguments.length == 1) {
                    Type type5 = actualTypeArguments[0];
                    Class<?> mapping = TypeUtils.getMapping(type5);
                    if (mapping != String.class) {
                        return new zcg(str, type3, cls3, type5, mapping, i, j, str2, locale, (Collection) obj3, field);
                    }
                    if (!isFinal) {
                        return new zcg(str, type3, cls3, String.class, String.class, i, j, str2, locale, null, field);
                    }
                    if ((j & JSONReader.Feature.FieldBased.mask) != 0) {
                        return new zcg(str, type3, cls3, String.class, String.class, i, j, str2, locale, null, field);
                    }
                    return new fbg(str, type3, cls3, i, j, str2, field);
                }
            }
            if (type2 instanceof ParameterizedType) {
                Type[] actualTypeArguments2 = ((ParameterizedType) type2).getActualTypeArguments();
                if (actualTypeArguments2.length > 0) {
                    type4 = actualTypeArguments2[0];
                }
            }
            Type type6 = type4 == null ? Object.class : type4;
            return new zcg(str, type2, cls2, type6, TypeUtils.getClass(type6), i, j, str2, locale, (Collection) obj3, field);
        }
        if (Map.class.isAssignableFrom(cls2) && (type3 instanceof ParameterizedType) && ((ParameterizedType) type3).getActualTypeArguments().length == 2 && isFinal && (j & JSONReader.Feature.FieldBased.mask) == 0) {
            return new bdg(str, type3, cls3, i, j, str2, field);
        }
        if (isFinal) {
            if (cls2 == int[].class) {
                return new gcg(str, cls2, i, j, str2, (int[]) obj3, field);
            }
            if (cls2 == long[].class) {
                return new ocg(str, cls2, i, j, str2, (long[]) obj3, field);
            }
        }
        if (cls3 != null) {
            if ((j & FieldInfo.UNWRAPPED_MASK) != 0 && Map.class.isAssignableFrom(cls3)) {
                return new bdg(str, type3, cls2, i, j, str2, field);
            }
            return new edg(str, type3, cls2, i, j, str2, obj3, field);
        }
        return new edg(str, type2, cls2, i, j, str2, obj3, field);
    }

    public <T> ObjectReader<T> createObjectReader(Type type) {
        if (type instanceof Class) {
            return createObjectReader((Class) type);
        }
        Class<?> mapping = TypeUtils.getMapping(type);
        return createObjectReader(mapping, createSupplier(mapping), createFieldReaders(mapping, type));
    }

    public <T> ObjectReader<T> createObjectReader(Class<T> cls) {
        return createObjectReader(cls, cls, false, JSONFactory.defaultObjectReaderProvider);
    }

    public <T> ObjectReader<T> createObjectReader(Class<T> cls, boolean z) {
        return createObjectReader(cls, cls, z, JSONFactory.defaultObjectReaderProvider);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:187:0x031c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public <T> com.alibaba.fastjson2.reader.ObjectReader<T> createObjectReader(java.lang.Class<T> r27, java.lang.reflect.Type r28, boolean r29, com.alibaba.fastjson2.reader.ObjectReaderProvider r30) {
        /*
            Method dump skipped, instructions count: 810
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson2.reader.ObjectReaderCreator.createObjectReader(java.lang.Class, java.lang.reflect.Type, boolean, com.alibaba.fastjson2.reader.ObjectReaderProvider):com.alibaba.fastjson2.reader.ObjectReader");
    }

    public <T> FieldReader[] createFieldReaders(Class<T> cls) {
        return createFieldReaders(cls, cls, null, false, JSONFactory.defaultObjectReaderProvider);
    }

    public <T> FieldReader[] createFieldReaders(Class<T> cls, Type type) {
        return createFieldReaders(cls, type, null, false, JSONFactory.defaultObjectReaderProvider);
    }

    public <T> FieldReader[] createFieldReaders(Class<T> cls, Type type, BeanInfo beanInfo, boolean z, ObjectReaderProvider objectReaderProvider) {
        BeanInfo beanInfo2;
        if (beanInfo == null) {
            BeanInfo beanInfo3 = new BeanInfo();
            objectReaderProvider.getBeanInfo(beanInfo3, cls);
            beanInfo2 = beanInfo3;
        } else {
            beanInfo2 = beanInfo;
        }
        String str = beanInfo2.namingStrategy;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        FieldInfo fieldInfo = new FieldInfo();
        String[] strArr = beanInfo2.orders;
        C1744b c1744b = new C1744b(cls, type, str, fieldInfo, linkedHashMap, objectReaderProvider, beanInfo2, z);
        if (z) {
            BeanUtils.declaredFields(cls, c1744b);
        } else {
            BeanUtils.declaredFields(cls, c1744b);
            Class cls2 = objectReaderProvider.f12750d.get(cls);
            C1743a c1743a = new C1743a(cls, type, str, strArr, beanInfo2, fieldInfo, linkedHashMap, objectReaderProvider);
            BeanUtils.setters(cls, beanInfo2, cls2, c1743a);
            if (cls.isInterface()) {
                BeanUtils.getters(cls, c1743a);
            }
        }
        FieldReader[] fieldReaderArr = new FieldReader[linkedHashMap.size()];
        linkedHashMap.values().toArray(fieldReaderArr);
        Arrays.sort(fieldReaderArr);
        return fieldReaderArr;
    }

    public <T, V> FieldReader createFieldReader(String str, Type type, Class<V> cls, Method method, BiConsumer<T, V> biConsumer) {
        return createFieldReader(null, null, str, type, cls, 0, 0L, null, null, null, method, biConsumer, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v22, types: [java.lang.reflect.Type] */
    /* JADX WARN: Type inference failed for: r2v1, types: [java.lang.reflect.Type] */
    /* JADX WARN: Type inference failed for: r2v5, types: [java.lang.reflect.Type] */
    /* JADX WARN: Type inference failed for: r2v7, types: [java.lang.reflect.Type] */
    /* JADX WARN: Type inference failed for: r5v2, types: [java.lang.Class] */
    public <T, V> FieldReader createFieldReader(Class cls, Type type, String str, Type type2, Class<V> cls2, int i, long j, String str2, Locale locale, Object obj, Method method, BiConsumer<T, V> biConsumer, ObjectReader objectReader) {
        Class<?> cls3;
        Type type3;
        Type type4;
        if (objectReader != null) {
            FieldReaderObject fieldReaderObject = new FieldReaderObject(str, type2, cls2, i, j | FieldInfo.READ_USING_MASK, str2, locale, obj, method, null, biConsumer);
            fieldReaderObject.initReader = objectReader;
            return fieldReaderObject;
        }
        if (cls2 == Integer.class) {
            return new dcg(str, cls2, i, j, str2, locale, obj, method, biConsumer);
        }
        if (cls2 == Long.class) {
            return new lcg(str, cls2, i, j, str2, locale, obj, method, biConsumer);
        }
        if (cls2 == String.class) {
            return new jdg(str, cls2, i, j, str2, locale, obj, method, biConsumer);
        }
        if (cls2 == Boolean.class) {
            return new yag(str, cls2, i, j, str2, locale, obj, method, biConsumer);
        }
        if (cls2 == Short.class) {
            return new wbg(str, cls2, i, j, str2, locale, obj, method, biConsumer);
        }
        if (cls2 == Byte.class) {
            return new tcg(str, cls2, i, j, str2, locale, obj, method, biConsumer);
        }
        if (cls2 == BigDecimal.class) {
            return new sag(str, cls2, i, j, str2, locale, obj, method, biConsumer);
        }
        if (cls2 == BigInteger.class) {
            return new vag(str, cls2, i, j, str2, locale, obj, method, biConsumer);
        }
        if (cls2 == Float.class) {
            return new qbg(str, cls2, i, j, str2, locale, (Float) obj, method, biConsumer);
        }
        if (cls2 == Double.class) {
            return new kbg(str, cls2, i, j, str2, locale, (Double) obj, method, biConsumer);
        }
        if (cls2 == Number.class) {
            return new ddg(str, cls2, i, j, str2, locale, (Number) obj, method, biConsumer);
        }
        if (cls2 == Date.class) {
            return new hbg(str, type2, cls2, i, j, str2, locale, obj, null, method, biConsumer);
        }
        if (type2 instanceof Class) {
            cls3 = null;
        } else {
            ?? fieldType = BeanUtils.getFieldType(type != null ? TypeReference.get(type) : null, cls, method, type2);
            cls3 = TypeUtils.getMapping((Type) fieldType);
            r4 = fieldType;
        }
        if (cls2 != List.class && cls2 != ArrayList.class) {
            if (r4 != null) {
                return new fdg(str, r4, cls2, i, j, str2, locale, obj, method, biConsumer, null);
            }
            return new fdg(str, type2, cls2, i, j, str2, locale, obj, method, biConsumer, null);
        }
        if (r4 instanceof ParameterizedType) {
            Type[] actualTypeArguments = ((ParameterizedType) r4).getActualTypeArguments();
            if (actualTypeArguments.length == 1) {
                Type type5 = actualTypeArguments[0];
                Class<?> mapping = TypeUtils.getMapping(type5);
                if (mapping == String.class) {
                    return new FieldReaderList(str, r4, cls3, String.class, String.class, i, j, str2, locale, obj, method, null, biConsumer);
                }
                type3 = type5;
                type4 = mapping;
                return new FieldReaderList(str, r4, cls3, type3, type4, i, j, str2, locale, obj, method, null, biConsumer);
            }
        }
        type3 = Object.class;
        type4 = type3;
        return new FieldReaderList(str, r4, cls3, type3, type4, i, j, str2, locale, obj, method, null, biConsumer);
    }

    public <T> FieldReader<T> createFieldReader(String str, Field field) {
        return createFieldReader(str, null, field.getGenericType(), field);
    }

    public <T> FieldReader createFieldReader(String str, Method method) {
        Class<?> cls;
        Type type;
        Class<?> declaringClass = method.getDeclaringClass();
        Class<?>[] parameterTypes = method.getParameterTypes();
        if (parameterTypes.length == 0) {
            cls = method.getReturnType();
            type = method.getGenericReturnType();
        } else if (parameterTypes.length == 1) {
            cls = parameterTypes[0];
            type = method.getGenericParameterTypes()[0];
        } else {
            throw new JSONException("illegal setter method " + method);
        }
        return createFieldReaderMethod(declaringClass, declaringClass, str, 0, 0L, null, null, null, type, cls, method, null);
    }
}
