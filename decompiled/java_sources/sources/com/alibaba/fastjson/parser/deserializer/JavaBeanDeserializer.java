package com.alibaba.fastjson.parser.deserializer;

import com.alibaba.fastjson.JSONException;
import com.alibaba.fastjson.JSONObject;
import com.alibaba.fastjson.annotation.JSONType;
import com.alibaba.fastjson.parser.DefaultJSONParser;
import com.alibaba.fastjson.parser.Feature;
import com.alibaba.fastjson.parser.JSONLexer;
import com.alibaba.fastjson.parser.JSONLexerBase;
import com.alibaba.fastjson.parser.ParseContext;
import com.alibaba.fastjson.parser.ParserConfig;
import com.alibaba.fastjson.util.FieldInfo;
import com.alibaba.fastjson.util.JavaBeanInfo;
import com.alibaba.fastjson.util.TypeUtils;
import com.alibaba.fastjson2.util.Fnv;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.lang.reflect.Type;
import java.math.BigDecimal;
import java.util.Arrays;
import java.util.Collection;
import java.util.Date;
import java.util.Map;
import java.util.concurrent.ConcurrentMap;

/* loaded from: classes3.dex */
public class JavaBeanDeserializer implements ObjectDeserializer {
    private final Map<String, FieldDeserializer> alterNameFieldDeserializers;
    private final ParserConfig.AutoTypeCheckHandler autoTypeCheckHandler;
    public final JavaBeanInfo beanInfo;
    protected final Class<?> clazz;
    private ConcurrentMap<String, Object> extraFieldDeserializers;
    private Map<String, FieldDeserializer> fieldDeserializerMap;
    private final FieldDeserializer[] fieldDeserializers;
    private transient long[] hashArray;
    private transient short[] hashArrayMapping;
    private transient long[] smartMatchHashArray;
    private transient short[] smartMatchHashArrayMapping;
    protected final FieldDeserializer[] sortedFieldDeserializers;

    public JavaBeanDeserializer(ParserConfig parserConfig, Class<?> cls) {
        this(parserConfig, cls, cls);
    }

    private Object createFactoryInstance(ParserConfig parserConfig, Object obj) throws IllegalArgumentException, IllegalAccessException, InvocationTargetException {
        return this.beanInfo.factoryMethod.invoke(null, obj);
    }

    public static JavaBeanDeserializer getSeeAlso(ParserConfig parserConfig, JavaBeanInfo javaBeanInfo, String str) {
        JSONType jSONType = javaBeanInfo.jsonType;
        if (jSONType == null) {
            return null;
        }
        for (Class<?> cls : jSONType.seeAlso()) {
            ObjectDeserializer deserializer = parserConfig.getDeserializer(cls);
            if (deserializer instanceof JavaBeanDeserializer) {
                JavaBeanDeserializer javaBeanDeserializer = (JavaBeanDeserializer) deserializer;
                JavaBeanInfo javaBeanInfo2 = javaBeanDeserializer.beanInfo;
                if (javaBeanInfo2.typeName.equals(str)) {
                    return javaBeanDeserializer;
                }
                JavaBeanDeserializer seeAlso = getSeeAlso(parserConfig, javaBeanInfo2, str);
                if (seeAlso != null) {
                    return seeAlso;
                }
            }
        }
        return null;
    }

    public static boolean isSetFlag(int i, int[] iArr) {
        if (iArr == null) {
            return false;
        }
        int i2 = i / 32;
        int i3 = i % 32;
        if (i2 < iArr.length) {
            if (((1 << i3) & iArr[i2]) != 0) {
                return true;
            }
        }
        return false;
    }

    public static void parseArray(Collection collection, ObjectDeserializer objectDeserializer, DefaultJSONParser defaultJSONParser, Type type, Object obj) {
        JSONLexerBase jSONLexerBase = (JSONLexerBase) defaultJSONParser.lexer;
        int i = jSONLexerBase.token();
        if (i == 8) {
            jSONLexerBase.nextToken(16);
            jSONLexerBase.token();
            return;
        }
        if (i != 14) {
            defaultJSONParser.throwException(i);
        }
        if (jSONLexerBase.getCurrent() == '[') {
            jSONLexerBase.next();
            jSONLexerBase.setToken(14);
        } else {
            jSONLexerBase.nextToken(14);
        }
        if (jSONLexerBase.token() == 15) {
            jSONLexerBase.nextToken();
            return;
        }
        int i2 = 0;
        while (true) {
            collection.add(objectDeserializer.deserialze(defaultJSONParser, type, Integer.valueOf(i2)));
            i2++;
            if (jSONLexerBase.token() != 16) {
                break;
            }
            if (jSONLexerBase.getCurrent() == '[') {
                jSONLexerBase.next();
                jSONLexerBase.setToken(14);
            } else {
                jSONLexerBase.nextToken(14);
            }
        }
        int i3 = jSONLexerBase.token();
        if (i3 != 15) {
            defaultJSONParser.throwException(i3);
        }
        if (jSONLexerBase.getCurrent() != ',') {
            jSONLexerBase.nextToken(16);
        } else {
            jSONLexerBase.next();
            jSONLexerBase.setToken(16);
        }
    }

    public void check(JSONLexer jSONLexer, int i) {
        if (jSONLexer.token() != i) {
            throw new JSONException("syntax error");
        }
    }

    public Object createInstance(DefaultJSONParser defaultJSONParser, Type type) {
        Object newInstance;
        if ((type instanceof Class) && this.clazz.isInterface()) {
            return Proxy.newProxyInstance(Thread.currentThread().getContextClassLoader(), new Class[]{(Class) type}, new JSONObject());
        }
        JavaBeanInfo javaBeanInfo = this.beanInfo;
        Constructor<?> constructor = javaBeanInfo.defaultConstructor;
        Object obj = null;
        if (constructor == null && javaBeanInfo.factoryMethod == null) {
            return null;
        }
        Method method = javaBeanInfo.factoryMethod;
        if (method != null && javaBeanInfo.defaultConstructorParameterSize > 0) {
            return null;
        }
        try {
            if (javaBeanInfo.defaultConstructorParameterSize != 0) {
                ParseContext context = defaultJSONParser.getContext();
                if (context != null && context.object != null) {
                    if (type instanceof Class) {
                        String name = ((Class) type).getName();
                        String substring = name.substring(0, name.lastIndexOf(36));
                        Object obj2 = context.object;
                        String name2 = obj2.getClass().getName();
                        if (!name2.equals(substring)) {
                            ParseContext parseContext = context.parent;
                            if (parseContext == null || parseContext.object == null || !("java.util.ArrayList".equals(name2) || "java.util.List".equals(name2) || "java.util.Collection".equals(name2) || "java.util.Map".equals(name2) || "java.util.HashMap".equals(name2))) {
                                obj = obj2;
                            } else if (parseContext.object.getClass().getName().equals(substring)) {
                                obj = parseContext.object;
                            }
                            obj2 = obj;
                        }
                        if (obj2 != null && (!(obj2 instanceof Collection) || !((Collection) obj2).isEmpty())) {
                            newInstance = constructor.newInstance(obj2);
                        } else {
                            throw new JSONException("can't create non-static inner class instance.");
                        }
                    } else {
                        throw new JSONException("can't create non-static inner class instance.");
                    }
                } else {
                    throw new JSONException("can't create non-static inner class instance.");
                }
            } else if (constructor != null) {
                newInstance = constructor.newInstance(new Object[0]);
            } else {
                newInstance = method.invoke(null, new Object[0]);
            }
            if (defaultJSONParser != null && defaultJSONParser.lexer.isEnabled(Feature.InitStringFieldAsEmpty)) {
                for (FieldInfo fieldInfo : this.beanInfo.fields) {
                    if (fieldInfo.fieldClass == String.class) {
                        try {
                            fieldInfo.set(newInstance, "");
                        } catch (Exception e) {
                            throw new JSONException("create instance error, class " + this.clazz.getName(), e);
                        }
                    }
                }
            }
            return newInstance;
        } catch (JSONException e2) {
            throw e2;
        } catch (Exception e3) {
            throw new JSONException("create instance error, class " + this.clazz.getName(), e3);
        }
    }

    @Override // com.alibaba.fastjson.parser.deserializer.ObjectDeserializer
    public <T> T deserialze(DefaultJSONParser defaultJSONParser, Type type, Object obj) {
        return (T) deserialze(defaultJSONParser, type, obj, 0);
    }

    public <T> T deserialzeArrayMapping(DefaultJSONParser defaultJSONParser, Type type, Object obj, Object obj2) {
        JSONLexer jSONLexer = defaultJSONParser.lexer;
        if (jSONLexer.token() != 14) {
            throw new JSONException("error");
        }
        String scanTypeName = jSONLexer.scanTypeName(defaultJSONParser.symbolTable);
        if (scanTypeName != null) {
            ObjectDeserializer seeAlso = getSeeAlso(defaultJSONParser.getConfig(), this.beanInfo, scanTypeName);
            if (seeAlso == null) {
                seeAlso = defaultJSONParser.getConfig().getDeserializer(defaultJSONParser.getConfig().checkAutoType(scanTypeName, TypeUtils.getClass(type), jSONLexer.getFeatures()));
            }
            if (seeAlso instanceof JavaBeanDeserializer) {
                return (T) ((JavaBeanDeserializer) seeAlso).deserialzeArrayMapping(defaultJSONParser, type, obj, obj2);
            }
        }
        T t = (T) createInstance(defaultJSONParser, type);
        int length = this.sortedFieldDeserializers.length;
        int i = 0;
        while (true) {
            if (i >= length) {
                break;
            }
            char c = i == length + (-1) ? ']' : ',';
            FieldDeserializer fieldDeserializer = this.sortedFieldDeserializers[i];
            Class<?> cls = fieldDeserializer.fieldInfo.fieldClass;
            if (cls == Integer.TYPE) {
                fieldDeserializer.setValue((Object) t, jSONLexer.scanInt(c));
            } else if (cls == String.class) {
                fieldDeserializer.setValue((Object) t, jSONLexer.scanString(c));
            } else if (cls == Long.TYPE) {
                fieldDeserializer.setValue(t, jSONLexer.scanLong(c));
            } else if (cls.isEnum()) {
                char current = jSONLexer.getCurrent();
                fieldDeserializer.setValue(t, (current == '\"' || current == 'n') ? jSONLexer.scanEnum(cls, defaultJSONParser.getSymbolTable(), c) : (current < '0' || current > '9') ? scanEnum(jSONLexer, c) : ((EnumDeserializer) ((DefaultFieldDeserializer) fieldDeserializer).getFieldValueDeserilizer(defaultJSONParser.getConfig())).valueOf(jSONLexer.scanInt(c)));
            } else if (cls == Boolean.TYPE) {
                fieldDeserializer.setValue(t, jSONLexer.scanBoolean(c));
            } else if (cls == Float.TYPE) {
                fieldDeserializer.setValue(t, Float.valueOf(jSONLexer.scanFloat(c)));
            } else if (cls == Double.TYPE) {
                fieldDeserializer.setValue(t, Double.valueOf(jSONLexer.scanDouble(c)));
            } else if (cls == Date.class && jSONLexer.getCurrent() == '1') {
                fieldDeserializer.setValue(t, new Date(jSONLexer.scanLong(c)));
            } else if (cls == BigDecimal.class) {
                fieldDeserializer.setValue(t, jSONLexer.scanDecimal(c));
            } else {
                jSONLexer.nextToken(14);
                FieldInfo fieldInfo = fieldDeserializer.fieldInfo;
                fieldDeserializer.setValue(t, defaultJSONParser.parseObject(fieldInfo.fieldType, fieldInfo.name));
                if (jSONLexer.token() == 15) {
                    break;
                }
                check(jSONLexer, c == ']' ? 15 : 16);
            }
            i++;
        }
        jSONLexer.nextToken(16);
        return t;
    }

    @Override // com.alibaba.fastjson.parser.deserializer.ObjectDeserializer
    public int getFastMatchToken() {
        return 12;
    }

    public FieldDeserializer getFieldDeserializer(String str) {
        return getFieldDeserializer(str, null);
    }

    public Type getFieldType(int i) {
        return this.sortedFieldDeserializers[i].fieldInfo.fieldType;
    }

    public boolean parseField(DefaultJSONParser defaultJSONParser, String str, Object obj, Type type, Map<String, Object> map) {
        return parseField(defaultJSONParser, str, obj, type, map, null);
    }

    public Object parseRest(DefaultJSONParser defaultJSONParser, Type type, Object obj, Object obj2, int i) {
        return parseRest(defaultJSONParser, type, obj, obj2, i, new int[0]);
    }

    public Enum<?> scanEnum(JSONLexer jSONLexer, char c) {
        throw new JSONException("illegal enum. " + jSONLexer.info());
    }

    public FieldDeserializer smartMatch(String str) {
        return smartMatch(str, null);
    }

    public JavaBeanDeserializer(ParserConfig parserConfig, Class<?> cls, Type type) {
        this(parserConfig, JavaBeanInfo.build(cls, type, parserConfig.propertyNamingStrategy, parserConfig.fieldBased, parserConfig.compatibleWithJavaBean, parserConfig.isJacksonCompatible()));
    }

    public <T> T deserialze(DefaultJSONParser defaultJSONParser, Type type, Object obj, int i) {
        return (T) deserialze(defaultJSONParser, type, obj, null, i, null);
    }

    public FieldDeserializer getFieldDeserializer(String str, int[] iArr) {
        FieldDeserializer fieldDeserializer;
        if (str == null) {
            return null;
        }
        Map<String, FieldDeserializer> map = this.fieldDeserializerMap;
        if (map != null && (fieldDeserializer = map.get(str)) != null) {
            return fieldDeserializer;
        }
        int length = this.sortedFieldDeserializers.length - 1;
        int i = 0;
        while (i <= length) {
            int i2 = (i + length) >>> 1;
            int compareTo = this.sortedFieldDeserializers[i2].fieldInfo.name.compareTo(str);
            if (compareTo < 0) {
                i = i2 + 1;
            } else {
                if (compareTo <= 0) {
                    if (isSetFlag(i2, iArr)) {
                        return null;
                    }
                    return this.sortedFieldDeserializers[i2];
                }
                length = i2 - 1;
            }
        }
        Map<String, FieldDeserializer> map2 = this.alterNameFieldDeserializers;
        if (map2 != null) {
            return map2.get(str);
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:116:0x0216  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x012a  */
    /* JADX WARN: Type inference failed for: r17v2, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r17v5 */
    /* JADX WARN: Type inference failed for: r17v6 */
    /* JADX WARN: Type inference failed for: r17v7 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean parseField(com.alibaba.fastjson.parser.DefaultJSONParser r22, java.lang.String r23, java.lang.Object r24, java.lang.reflect.Type r25, java.util.Map<java.lang.String, java.lang.Object> r26, int[] r27) {
        /*
            Method dump skipped, instructions count: 599
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.parser.deserializer.JavaBeanDeserializer.parseField(com.alibaba.fastjson.parser.DefaultJSONParser, java.lang.String, java.lang.Object, java.lang.reflect.Type, java.util.Map, int[]):boolean");
    }

    public Object parseRest(DefaultJSONParser defaultJSONParser, Type type, Object obj, Object obj2, int i, int[] iArr) {
        return deserialze(defaultJSONParser, type, obj, obj2, i, iArr);
    }

    public Enum scanEnum(JSONLexerBase jSONLexerBase, char[] cArr, ObjectDeserializer objectDeserializer) {
        EnumDeserializer enumDeserializer = objectDeserializer instanceof EnumDeserializer ? (EnumDeserializer) objectDeserializer : null;
        if (enumDeserializer == null) {
            jSONLexerBase.matchStat = -1;
            return null;
        }
        long scanEnumSymbol = jSONLexerBase.scanEnumSymbol(cArr);
        if (jSONLexerBase.matchStat <= 0) {
            return null;
        }
        Enum enumByHashCode = enumDeserializer.getEnumByHashCode(scanEnumSymbol);
        if (enumByHashCode == null) {
            if (scanEnumSymbol == Fnv.MAGIC_HASH_CODE) {
                return null;
            }
            if (jSONLexerBase.isEnabled(Feature.ErrorOnEnumNotMatch)) {
                throw new JSONException("not match enum value, " + enumDeserializer.enumClass);
            }
        }
        return enumByHashCode;
    }

    public FieldDeserializer smartMatch(String str, int[] iArr) {
        boolean z;
        if (str == null) {
            return null;
        }
        FieldDeserializer fieldDeserializer = getFieldDeserializer(str, iArr);
        if (fieldDeserializer == null) {
            int i = 0;
            if (this.smartMatchHashArray == null) {
                long[] jArr = new long[this.sortedFieldDeserializers.length];
                int i2 = 0;
                while (true) {
                    FieldDeserializer[] fieldDeserializerArr = this.sortedFieldDeserializers;
                    if (i2 >= fieldDeserializerArr.length) {
                        break;
                    }
                    jArr[i2] = fieldDeserializerArr[i2].fieldInfo.nameHashCode;
                    i2++;
                }
                Arrays.sort(jArr);
                this.smartMatchHashArray = jArr;
            }
            int binarySearch = Arrays.binarySearch(this.smartMatchHashArray, TypeUtils.fnv1a_64_lower(str));
            if (binarySearch < 0) {
                binarySearch = Arrays.binarySearch(this.smartMatchHashArray, TypeUtils.fnv1a_64_extract(str));
            }
            if (binarySearch < 0) {
                z = str.startsWith("is");
                if (z) {
                    binarySearch = Arrays.binarySearch(this.smartMatchHashArray, TypeUtils.fnv1a_64_extract(str.substring(2)));
                }
            } else {
                z = false;
            }
            if (binarySearch >= 0) {
                if (this.smartMatchHashArrayMapping == null) {
                    short[] sArr = new short[this.smartMatchHashArray.length];
                    Arrays.fill(sArr, (short) -1);
                    while (true) {
                        FieldDeserializer[] fieldDeserializerArr2 = this.sortedFieldDeserializers;
                        if (i >= fieldDeserializerArr2.length) {
                            break;
                        }
                        int binarySearch2 = Arrays.binarySearch(this.smartMatchHashArray, fieldDeserializerArr2[i].fieldInfo.nameHashCode);
                        if (binarySearch2 >= 0) {
                            sArr[binarySearch2] = (short) i;
                        }
                        i++;
                    }
                    this.smartMatchHashArrayMapping = sArr;
                }
                short s = this.smartMatchHashArrayMapping[binarySearch];
                if (s != -1 && !isSetFlag(s, iArr)) {
                    fieldDeserializer = this.sortedFieldDeserializers[s];
                }
            }
            if (fieldDeserializer != null) {
                FieldInfo fieldInfo = fieldDeserializer.fieldInfo;
                if ((fieldInfo.parserFeatures & Feature.DisableFieldSmartMatch.mask) != 0) {
                    return null;
                }
                Class<?> cls = fieldInfo.fieldClass;
                if (z && cls != Boolean.TYPE && cls != Boolean.class) {
                    return null;
                }
            }
        }
        return fieldDeserializer;
    }

    /* JADX WARN: Code restructure failed: missing block: B:145:0x03ab, code lost:
    
        if (r11.isEnabled(com.alibaba.fastjson.parser.Feature.AllowArbitraryCommas) != false) goto L309;
     */
    /* JADX WARN: Code restructure failed: missing block: B:226:0x04c5, code lost:
    
        r7 = r28;
        r1 = getSeeAlso(r7, r33.beanInfo, r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:227:0x04cd, code lost:
    
        if (r1 != null) goto L386;
     */
    /* JADX WARN: Code restructure failed: missing block: B:228:0x04cf, code lost:
    
        r1 = com.alibaba.fastjson.util.TypeUtils.getClass(r35);
        r2 = r33.autoTypeCheckHandler;
     */
    /* JADX WARN: Code restructure failed: missing block: B:229:0x04d5, code lost:
    
        if (r2 == null) goto L380;
     */
    /* JADX WARN: Code restructure failed: missing block: B:230:0x04d7, code lost:
    
        r2 = r2.handler(r0, r1, r11.getFeatures());
     */
    /* JADX WARN: Code restructure failed: missing block: B:231:0x04e1, code lost:
    
        if (r2 != null) goto L383;
     */
    /* JADX WARN: Code restructure failed: missing block: B:232:0x04e3, code lost:
    
        r1 = r7.checkAutoType(r0, r1, r11.getFeatures());
     */
    /* JADX WARN: Code restructure failed: missing block: B:234:0x04f5, code lost:
    
        r2 = r1;
        r1 = r34.getConfig().getDeserializer(r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:235:0x04fc, code lost:
    
        r2 = (T) r1.deserialze(r34, r2, r36);
     */
    /* JADX WARN: Code restructure failed: missing block: B:236:0x0502, code lost:
    
        if ((r1 instanceof com.alibaba.fastjson.parser.deserializer.JavaBeanDeserializer) == false) goto L394;
     */
    /* JADX WARN: Code restructure failed: missing block: B:237:0x0504, code lost:
    
        r1 = r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:238:0x0506, code lost:
    
        if (r14 == null) goto L394;
     */
    /* JADX WARN: Code restructure failed: missing block: B:239:0x0508, code lost:
    
        r1 = r1.getFieldDeserializer(r14);
     */
    /* JADX WARN: Code restructure failed: missing block: B:240:0x050c, code lost:
    
        if (r1 == null) goto L394;
     */
    /* JADX WARN: Code restructure failed: missing block: B:241:0x050e, code lost:
    
        r1.setValue((java.lang.Object) r2, r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:242:0x0511, code lost:
    
        if (r3 == null) goto L396;
     */
    /* JADX WARN: Code restructure failed: missing block: B:243:0x0513, code lost:
    
        r3.object = r21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:244:0x0517, code lost:
    
        r34.setContext(r15);
     */
    /* JADX WARN: Code restructure failed: missing block: B:245:0x051a, code lost:
    
        return r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:247:0x04ec, code lost:
    
        r1 = r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:248:0x04e0, code lost:
    
        r2 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:249:0x04fb, code lost:
    
        r2 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:256:0x052a, code lost:
    
        r16 = r4;
        r5 = r27;
        r13 = r30;
        r37 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:257:0x06c6, code lost:
    
        if (r16 != null) goto L647;
     */
    /* JADX WARN: Code restructure failed: missing block: B:258:0x08d7, code lost:
    
        r2 = (T) r16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:259:0x08d9, code lost:
    
        r0 = r33.beanInfo.buildMethod;
     */
    /* JADX WARN: Code restructure failed: missing block: B:260:0x08dd, code lost:
    
        if (r0 != null) goto L654;
     */
    /* JADX WARN: Code restructure failed: missing block: B:261:0x08df, code lost:
    
        if (r3 == null) goto L652;
     */
    /* JADX WARN: Code restructure failed: missing block: B:262:0x08e1, code lost:
    
        r3.object = r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:263:0x08e3, code lost:
    
        r34.setContext(r15);
     */
    /* JADX WARN: Code restructure failed: missing block: B:264:0x08e6, code lost:
    
        return (T) r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:267:0x08e8, code lost:
    
        r0 = (T) r0.invoke(r2, new java.lang.Object[0]);
     */
    /* JADX WARN: Code restructure failed: missing block: B:268:0x08ee, code lost:
    
        if (r3 == null) goto L658;
     */
    /* JADX WARN: Code restructure failed: missing block: B:269:0x08f0, code lost:
    
        r3.object = r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:270:0x08f2, code lost:
    
        r34.setContext(r15);
     */
    /* JADX WARN: Code restructure failed: missing block: B:271:0x08f5, code lost:
    
        return r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:273:0x08f6, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:275:0x08fe, code lost:
    
        throw new com.alibaba.fastjson.JSONException("build object error", r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:277:0x08ff, code lost:
    
        r0 = th;
     */
    /* JADX WARN: Code restructure failed: missing block: B:278:0x0900, code lost:
    
        r4 = r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:281:0x06c8, code lost:
    
        if (r5 != null) goto L504;
     */
    /* JADX WARN: Code restructure failed: missing block: B:282:0x06ca, code lost:
    
        r1 = (T) createInstance((com.alibaba.fastjson.parser.DefaultJSONParser) r34, r35);
     */
    /* JADX WARN: Code restructure failed: missing block: B:283:0x06ce, code lost:
    
        if (r3 != null) goto L500;
     */
    /* JADX WARN: Code restructure failed: missing block: B:284:0x06d0, code lost:
    
        r3 = r34.setContext(r15, r1, r36);
     */
    /* JADX WARN: Code restructure failed: missing block: B:285:0x06d4, code lost:
    
        if (r3 == null) goto L502;
     */
    /* JADX WARN: Code restructure failed: missing block: B:286:0x06d6, code lost:
    
        r3.object = r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:287:0x06d8, code lost:
    
        r34.setContext(r15);
     */
    /* JADX WARN: Code restructure failed: missing block: B:288:0x06db, code lost:
    
        return r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:289:0x06dc, code lost:
    
        r0 = r33.beanInfo;
        r1 = r0.creatorConstructorParameters;
     */
    /* JADX WARN: Code restructure failed: missing block: B:291:0x06e2, code lost:
    
        if (r1 == null) goto L554;
     */
    /* JADX WARN: Code restructure failed: missing block: B:292:0x06e4, code lost:
    
        r0 = new java.lang.Object[r1.length];
        r6 = r37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:294:0x06ea, code lost:
    
        if (r6 >= r1.length) goto L742;
     */
    /* JADX WARN: Code restructure failed: missing block: B:295:0x06ec, code lost:
    
        r4 = r5.remove(r1[r6]);
     */
    /* JADX WARN: Code restructure failed: missing block: B:296:0x06f2, code lost:
    
        if (r4 != null) goto L538;
     */
    /* JADX WARN: Code restructure failed: missing block: B:297:0x06f4, code lost:
    
        r7 = r33.beanInfo;
        r10 = r7.creatorConstructorParameterTypes[r6];
        r7 = r7.fields[r6];
     */
    /* JADX WARN: Code restructure failed: missing block: B:298:0x0700, code lost:
    
        if (r10 != java.lang.Byte.TYPE) goto L515;
     */
    /* JADX WARN: Code restructure failed: missing block: B:299:0x0702, code lost:
    
        r4 = java.lang.Byte.valueOf(r37);
     */
    /* JADX WARN: Code restructure failed: missing block: B:300:0x0747, code lost:
    
        r11 = r37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:302:0x077f, code lost:
    
        r0[r6] = r4;
        r6 = r6 + 1;
        r37 = r11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:304:0x0709, code lost:
    
        if (r10 != java.lang.Short.TYPE) goto L518;
     */
    /* JADX WARN: Code restructure failed: missing block: B:305:0x070b, code lost:
    
        r4 = java.lang.Short.valueOf(r37);
     */
    /* JADX WARN: Code restructure failed: missing block: B:307:0x0712, code lost:
    
        if (r10 != java.lang.Integer.TYPE) goto L521;
     */
    /* JADX WARN: Code restructure failed: missing block: B:308:0x0714, code lost:
    
        r4 = java.lang.Integer.valueOf(r37);
     */
    /* JADX WARN: Code restructure failed: missing block: B:310:0x071b, code lost:
    
        if (r10 != java.lang.Long.TYPE) goto L524;
     */
    /* JADX WARN: Code restructure failed: missing block: B:311:0x071d, code lost:
    
        r4 = 0L;
     */
    /* JADX WARN: Code restructure failed: missing block: B:313:0x0724, code lost:
    
        if (r10 != java.lang.Float.TYPE) goto L527;
     */
    /* JADX WARN: Code restructure failed: missing block: B:314:0x0726, code lost:
    
        r4 = java.lang.Float.valueOf(0.0f);
     */
    /* JADX WARN: Code restructure failed: missing block: B:316:0x072d, code lost:
    
        if (r10 != java.lang.Double.TYPE) goto L530;
     */
    /* JADX WARN: Code restructure failed: missing block: B:317:0x072f, code lost:
    
        r4 = java.lang.Double.valueOf(0.0d);
     */
    /* JADX WARN: Code restructure failed: missing block: B:319:0x0736, code lost:
    
        if (r10 != java.lang.Boolean.TYPE) goto L533;
     */
    /* JADX WARN: Code restructure failed: missing block: B:320:0x0738, code lost:
    
        r4 = java.lang.Boolean.FALSE;
     */
    /* JADX WARN: Code restructure failed: missing block: B:321:0x073b, code lost:
    
        if (r10 != r13) goto L537;
     */
    /* JADX WARN: Code restructure failed: missing block: B:323:0x0744, code lost:
    
        if ((r7.parserFeatures & com.alibaba.fastjson.parser.Feature.InitStringFieldAsEmpty.mask) == 0) goto L537;
     */
    /* JADX WARN: Code restructure failed: missing block: B:324:0x0746, code lost:
    
        r4 = "";
     */
    /* JADX WARN: Code restructure failed: missing block: B:325:0x074a, code lost:
    
        r7 = r33.beanInfo.creatorConstructorParameterTypes;
     */
    /* JADX WARN: Code restructure failed: missing block: B:326:0x074e, code lost:
    
        if (r7 == null) goto L537;
     */
    /* JADX WARN: Code restructure failed: missing block: B:328:0x0751, code lost:
    
        if (r6 >= r7.length) goto L537;
     */
    /* JADX WARN: Code restructure failed: missing block: B:329:0x0753, code lost:
    
        r7 = r7[r6];
     */
    /* JADX WARN: Code restructure failed: missing block: B:330:0x0757, code lost:
    
        if ((r7 instanceof java.lang.Class) == false) goto L537;
     */
    /* JADX WARN: Code restructure failed: missing block: B:331:0x0759, code lost:
    
        r7 = (java.lang.Class) r7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:332:0x075f, code lost:
    
        if (r7.isInstance(r4) != false) goto L537;
     */
    /* JADX WARN: Code restructure failed: missing block: B:334:0x0763, code lost:
    
        if ((r4 instanceof java.util.List) == false) goto L537;
     */
    /* JADX WARN: Code restructure failed: missing block: B:335:0x0765, code lost:
    
        r10 = (java.util.List) r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:336:0x076d, code lost:
    
        if (r10.size() != 1) goto L537;
     */
    /* JADX WARN: Code restructure failed: missing block: B:337:0x076f, code lost:
    
        r11 = r37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:338:0x0779, code lost:
    
        if (r7.isInstance(r10.get(r11)) == false) goto L745;
     */
    /* JADX WARN: Code restructure failed: missing block: B:339:0x077b, code lost:
    
        r4 = r10.get(r11);
     */
    /* JADX WARN: Code restructure failed: missing block: B:343:0x07f0, code lost:
    
        r2 = r33.beanInfo;
     */
    /* JADX WARN: Code restructure failed: missing block: B:344:0x07f4, code lost:
    
        if (r2.creatorConstructor == null) goto L633;
     */
    /* JADX WARN: Code restructure failed: missing block: B:346:0x07f8, code lost:
    
        if (r2.f116568kotlin == false) goto L602;
     */
    /* JADX WARN: Code restructure failed: missing block: B:347:0x07fa, code lost:
    
        r6 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:349:0x07fc, code lost:
    
        if (r6 >= r0.length) goto L747;
     */
    /* JADX WARN: Code restructure failed: missing block: B:351:0x0800, code lost:
    
        if (r0[r6] != null) goto L748;
     */
    /* JADX WARN: Code restructure failed: missing block: B:352:0x0802, code lost:
    
        r2 = r33.beanInfo.fields;
     */
    /* JADX WARN: Code restructure failed: missing block: B:353:0x0806, code lost:
    
        if (r2 == null) goto L749;
     */
    /* JADX WARN: Code restructure failed: missing block: B:355:0x0809, code lost:
    
        if (r6 >= r2.length) goto L750;
     */
    /* JADX WARN: Code restructure failed: missing block: B:358:0x080f, code lost:
    
        if (r2[r6].fieldClass != r13) goto L602;
     */
    /* JADX WARN: Code restructure failed: missing block: B:359:0x0811, code lost:
    
        r6 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:360:0x0817, code lost:
    
        if (r6 == false) goto L620;
     */
    /* JADX WARN: Code restructure failed: missing block: B:362:0x084b, code lost:
    
        r2 = (T) r33.beanInfo.creatorConstructor.newInstance(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:363:0x084c, code lost:
    
        if (r1 == null) goto L643;
     */
    /* JADX WARN: Code restructure failed: missing block: B:364:0x084e, code lost:
    
        r0 = r5.entrySet().iterator();
     */
    /* JADX WARN: Code restructure failed: missing block: B:366:0x085a, code lost:
    
        if (r0.hasNext() == false) goto L751;
     */
    /* JADX WARN: Code restructure failed: missing block: B:367:0x085c, code lost:
    
        r1 = r0.next();
        r4 = getFieldDeserializer(r1.getKey());
     */
    /* JADX WARN: Code restructure failed: missing block: B:368:0x086c, code lost:
    
        if (r4 == null) goto L754;
     */
    /* JADX WARN: Code restructure failed: missing block: B:370:0x086e, code lost:
    
        r4.setValue(r2, r1.getValue());
     */
    /* JADX WARN: Code restructure failed: missing block: B:375:0x08cc, code lost:
    
        if (r3 == null) goto L648;
     */
    /* JADX WARN: Code restructure failed: missing block: B:376:0x08ce, code lost:
    
        r3.object = r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:378:0x0876, code lost:
    
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:380:0x089d, code lost:
    
        throw new com.alibaba.fastjson.JSONException("create instance error, " + r1 + ", " + r33.beanInfo.creatorConstructor.toGenericString(), r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:382:0x0819, code lost:
    
        r2 = r33.beanInfo.kotlinDefaultConstructor;
     */
    /* JADX WARN: Code restructure failed: missing block: B:383:0x081d, code lost:
    
        if (r2 == null) goto L620;
     */
    /* JADX WARN: Code restructure failed: missing block: B:384:0x081f, code lost:
    
        r2 = (T) r2.newInstance(new java.lang.Object[0]);
     */
    /* JADX WARN: Code restructure failed: missing block: B:385:0x0826, code lost:
    
        r6 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:388:0x0828, code lost:
    
        if (r6 >= r0.length) goto L756;
     */
    /* JADX WARN: Code restructure failed: missing block: B:389:0x082a, code lost:
    
        r4 = r0[r6];
     */
    /* JADX WARN: Code restructure failed: missing block: B:390:0x082c, code lost:
    
        if (r4 == null) goto L758;
     */
    /* JADX WARN: Code restructure failed: missing block: B:391:0x082e, code lost:
    
        r7 = r33.beanInfo.fields;
     */
    /* JADX WARN: Code restructure failed: missing block: B:392:0x0832, code lost:
    
        if (r7 == null) goto L759;
     */
    /* JADX WARN: Code restructure failed: missing block: B:394:0x0835, code lost:
    
        if (r6 >= r7.length) goto L760;
     */
    /* JADX WARN: Code restructure failed: missing block: B:395:0x0837, code lost:
    
        r7[r6].set(r2, r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:397:0x083c, code lost:
    
        r6 = r6 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:403:0x083f, code lost:
    
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:406:0x0813, code lost:
    
        r6 = r6 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:410:0x0816, code lost:
    
        r6 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:411:0x089e, code lost:
    
        r1 = r2.factoryMethod;
     */
    /* JADX WARN: Code restructure failed: missing block: B:412:0x08a0, code lost:
    
        if (r1 == null) goto L642;
     */
    /* JADX WARN: Code restructure failed: missing block: B:416:0x08a7, code lost:
    
        r2 = r1.invoke(null, r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:418:0x08a9, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:421:0x08c9, code lost:
    
        throw new com.alibaba.fastjson.JSONException("create factory method error, " + r33.beanInfo.factoryMethod.toString(), r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:422:0x08ca, code lost:
    
        r2 = r16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:423:0x0787, code lost:
    
        r0 = r0.fields;
        r4 = r0.length;
        r6 = new java.lang.Object[r4];
        r7 = r37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:424:0x078f, code lost:
    
        if (r7 >= r4) goto L761;
     */
    /* JADX WARN: Code restructure failed: missing block: B:425:0x0791, code lost:
    
        r10 = r0[r7];
        r12 = r5.get(r10.name);
     */
    /* JADX WARN: Code restructure failed: missing block: B:426:0x0799, code lost:
    
        if (r12 != null) goto L763;
     */
    /* JADX WARN: Code restructure failed: missing block: B:427:0x079b, code lost:
    
        r14 = r10.fieldType;
     */
    /* JADX WARN: Code restructure failed: missing block: B:428:0x079f, code lost:
    
        if (r14 != java.lang.Byte.TYPE) goto L561;
     */
    /* JADX WARN: Code restructure failed: missing block: B:429:0x07a1, code lost:
    
        r12 = (byte) 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:431:0x07e9, code lost:
    
        r6[r7] = r12;
        r7 = r7 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:433:0x07a9, code lost:
    
        if (r14 != java.lang.Short.TYPE) goto L564;
     */
    /* JADX WARN: Code restructure failed: missing block: B:434:0x07ab, code lost:
    
        r12 = (short) 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:437:0x07b3, code lost:
    
        if (r14 != java.lang.Integer.TYPE) goto L567;
     */
    /* JADX WARN: Code restructure failed: missing block: B:438:0x07b5, code lost:
    
        r12 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:441:0x07bd, code lost:
    
        if (r14 != java.lang.Long.TYPE) goto L570;
     */
    /* JADX WARN: Code restructure failed: missing block: B:442:0x07bf, code lost:
    
        r12 = 0L;
     */
    /* JADX WARN: Code restructure failed: missing block: B:445:0x07c6, code lost:
    
        if (r14 != java.lang.Float.TYPE) goto L573;
     */
    /* JADX WARN: Code restructure failed: missing block: B:446:0x07c8, code lost:
    
        r12 = java.lang.Float.valueOf(0.0f);
     */
    /* JADX WARN: Code restructure failed: missing block: B:449:0x07cf, code lost:
    
        if (r14 != java.lang.Double.TYPE) goto L576;
     */
    /* JADX WARN: Code restructure failed: missing block: B:450:0x07d1, code lost:
    
        r12 = java.lang.Double.valueOf(0.0d);
     */
    /* JADX WARN: Code restructure failed: missing block: B:453:0x07d8, code lost:
    
        if (r14 != java.lang.Boolean.TYPE) goto L579;
     */
    /* JADX WARN: Code restructure failed: missing block: B:454:0x07da, code lost:
    
        r12 = java.lang.Boolean.FALSE;
     */
    /* JADX WARN: Code restructure failed: missing block: B:456:0x07dd, code lost:
    
        if (r14 != r13) goto L771;
     */
    /* JADX WARN: Code restructure failed: missing block: B:458:0x07e6, code lost:
    
        if ((r10.parserFeatures & com.alibaba.fastjson.parser.Feature.InitStringFieldAsEmpty.mask) == 0) goto L772;
     */
    /* JADX WARN: Code restructure failed: missing block: B:459:0x07e8, code lost:
    
        r12 = "";
     */
    /* JADX WARN: Code restructure failed: missing block: B:465:0x07ef, code lost:
    
        r0 = r6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:466:0x08d1, code lost:
    
        r0 = th;
     */
    /* JADX WARN: Code restructure failed: missing block: B:467:0x08d2, code lost:
    
        r14 = r3;
        r4 = r16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:508:0x094a, code lost:
    
        throw new com.alibaba.fastjson.JSONException("syntax error, unexpect token " + com.alibaba.fastjson.parser.JSONToken.name(r11.token()));
     */
    /* JADX WARN: Code restructure failed: missing block: B:512:0x06c2, code lost:
    
        r5 = r18;
        r3 = r27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:738:0x0353, code lost:
    
        if (r5 == (-2)) goto L287;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:124:0x01bb  */
    /* JADX WARN: Removed duplicated region for block: B:134:0x0382  */
    /* JADX WARN: Removed duplicated region for block: B:155:0x0966  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x006d A[Catch: all -> 0x0049, TRY_LEAVE, TryCatch #5 {all -> 0x0049, blocks: (B:17:0x0039, B:19:0x003e, B:25:0x0052, B:27:0x005d, B:29:0x0063, B:34:0x006d, B:49:0x0096), top: B:15:0x0037 }] */
    /* JADX WARN: Removed duplicated region for block: B:476:0x0578 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:489:0x05c4  */
    /* JADX WARN: Removed duplicated region for block: B:496:0x06b6  */
    /* JADX WARN: Removed duplicated region for block: B:499:0x06b9 A[Catch: all -> 0x0953, TryCatch #15 {all -> 0x0953, blocks: (B:150:0x091b, B:494:0x06ae, B:499:0x06b9, B:511:0x06bf, B:502:0x0906, B:504:0x090e, B:507:0x092c, B:508:0x094a, B:554:0x068e, B:556:0x0694, B:560:0x069a, B:561:0x06a6, B:564:0x094b, B:565:0x0952), top: B:149:0x091b }] */
    /* JADX WARN: Removed duplicated region for block: B:521:0x062a A[Catch: all -> 0x0666, TryCatch #1 {all -> 0x0666, blocks: (B:492:0x05c8, B:518:0x05e5, B:521:0x062a, B:522:0x063a, B:529:0x05ed, B:531:0x05f1, B:533:0x05f5, B:535:0x05f9, B:537:0x05fd, B:539:0x0601, B:542:0x060b, B:544:0x0613, B:546:0x061a, B:548:0x061f, B:549:0x0625, B:552:0x065d), top: B:491:0x05c8 }] */
    /* JADX WARN: Removed duplicated region for block: B:524:0x0648  */
    /* JADX WARN: Removed duplicated region for block: B:525:0x0641 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:527:0x0638  */
    /* JADX WARN: Removed duplicated region for block: B:550:0x0654  */
    /* JADX WARN: Removed duplicated region for block: B:583:0x0569  */
    /* JADX WARN: Removed duplicated region for block: B:743:0x0377  */
    /* JADX WARN: Type inference failed for: r2v59, types: [com.alibaba.fastjson.parser.deserializer.ObjectDeserializer] */
    /* JADX WARN: Type inference failed for: r34v0, types: [com.alibaba.fastjson.parser.DefaultJSONParser] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public <T> T deserialze(com.alibaba.fastjson.parser.DefaultJSONParser r34, java.lang.reflect.Type r35, java.lang.Object r36, java.lang.Object r37, int r38, int[] r39) {
        /*
            Method dump skipped, instructions count: 2417
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.parser.deserializer.JavaBeanDeserializer.deserialze(com.alibaba.fastjson.parser.DefaultJSONParser, java.lang.reflect.Type, java.lang.Object, java.lang.Object, int, int[]):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x0078 A[LOOP:2: B:27:0x0076->B:28:0x0078, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0032  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public JavaBeanDeserializer(com.alibaba.fastjson.parser.ParserConfig r10, com.alibaba.fastjson.util.JavaBeanInfo r11) {
        /*
            r9 = this;
            r9.<init>()
            java.lang.Class<?> r0 = r11.clazz
            r9.clazz = r0
            r9.beanInfo = r11
            com.alibaba.fastjson.annotation.JSONType r0 = r11.jsonType
            r1 = 0
            if (r0 == 0) goto L23
            java.lang.Class r0 = r0.autoTypeCheckHandler()
            java.lang.Class<com.alibaba.fastjson.parser.ParserConfig$AutoTypeCheckHandler> r2 = com.alibaba.fastjson.parser.ParserConfig.AutoTypeCheckHandler.class
            if (r0 == r2) goto L23
            com.alibaba.fastjson.annotation.JSONType r0 = r11.jsonType     // Catch: java.lang.Exception -> L23
            java.lang.Class r0 = r0.autoTypeCheckHandler()     // Catch: java.lang.Exception -> L23
            java.lang.Object r0 = r0.newInstance()     // Catch: java.lang.Exception -> L23
            com.alibaba.fastjson.parser.ParserConfig$AutoTypeCheckHandler r0 = (com.alibaba.fastjson.parser.ParserConfig.AutoTypeCheckHandler) r0     // Catch: java.lang.Exception -> L23
            goto L24
        L23:
            r0 = r1
        L24:
            r9.autoTypeCheckHandler = r0
            com.alibaba.fastjson.util.FieldInfo[] r0 = r11.sortedFields
            int r2 = r0.length
            com.alibaba.fastjson.parser.deserializer.FieldDeserializer[] r2 = new com.alibaba.fastjson.parser.deserializer.FieldDeserializer[r2]
            r9.sortedFieldDeserializers = r2
            int r0 = r0.length
            r2 = 0
            r3 = r2
        L30:
            if (r3 >= r0) goto L6c
            com.alibaba.fastjson.util.FieldInfo[] r4 = r11.sortedFields
            r4 = r4[r3]
            com.alibaba.fastjson.parser.deserializer.FieldDeserializer r5 = r10.createFieldDeserializer(r10, r11, r4)
            com.alibaba.fastjson.parser.deserializer.FieldDeserializer[] r6 = r9.sortedFieldDeserializers
            r6[r3] = r5
            r6 = 128(0x80, float:1.794E-43)
            if (r0 <= r6) goto L54
            java.util.Map<java.lang.String, com.alibaba.fastjson.parser.deserializer.FieldDeserializer> r6 = r9.fieldDeserializerMap
            if (r6 != 0) goto L4d
            java.util.HashMap r6 = new java.util.HashMap
            r6.<init>()
            r9.fieldDeserializerMap = r6
        L4d:
            java.util.Map<java.lang.String, com.alibaba.fastjson.parser.deserializer.FieldDeserializer> r6 = r9.fieldDeserializerMap
            java.lang.String r7 = r4.name
            r6.put(r7, r5)
        L54:
            java.lang.String[] r4 = r4.alternateNames
            int r6 = r4.length
            r7 = r2
        L58:
            if (r7 >= r6) goto L69
            r8 = r4[r7]
            if (r1 != 0) goto L63
            java.util.HashMap r1 = new java.util.HashMap
            r1.<init>()
        L63:
            r1.put(r8, r5)
            int r7 = r7 + 1
            goto L58
        L69:
            int r3 = r3 + 1
            goto L30
        L6c:
            r9.alterNameFieldDeserializers = r1
            com.alibaba.fastjson.util.FieldInfo[] r10 = r11.fields
            int r0 = r10.length
            com.alibaba.fastjson.parser.deserializer.FieldDeserializer[] r0 = new com.alibaba.fastjson.parser.deserializer.FieldDeserializer[r0]
            r9.fieldDeserializers = r0
            int r10 = r10.length
        L76:
            if (r2 >= r10) goto L89
            com.alibaba.fastjson.util.FieldInfo[] r0 = r11.fields
            r0 = r0[r2]
            java.lang.String r0 = r0.name
            com.alibaba.fastjson.parser.deserializer.FieldDeserializer r0 = r9.getFieldDeserializer(r0)
            com.alibaba.fastjson.parser.deserializer.FieldDeserializer[] r1 = r9.fieldDeserializers
            r1[r2] = r0
            int r2 = r2 + 1
            goto L76
        L89:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.parser.deserializer.JavaBeanDeserializer.<init>(com.alibaba.fastjson.parser.ParserConfig, com.alibaba.fastjson.util.JavaBeanInfo):void");
    }

    public FieldDeserializer getFieldDeserializer(long j) {
        int i = 0;
        if (this.hashArray == null) {
            long[] jArr = new long[this.sortedFieldDeserializers.length];
            int i2 = 0;
            while (true) {
                FieldDeserializer[] fieldDeserializerArr = this.sortedFieldDeserializers;
                if (i2 >= fieldDeserializerArr.length) {
                    break;
                }
                jArr[i2] = TypeUtils.fnv1a_64(fieldDeserializerArr[i2].fieldInfo.name);
                i2++;
            }
            Arrays.sort(jArr);
            this.hashArray = jArr;
        }
        int binarySearch = Arrays.binarySearch(this.hashArray, j);
        if (binarySearch < 0) {
            return null;
        }
        if (this.hashArrayMapping == null) {
            short[] sArr = new short[this.hashArray.length];
            Arrays.fill(sArr, (short) -1);
            while (true) {
                FieldDeserializer[] fieldDeserializerArr2 = this.sortedFieldDeserializers;
                if (i >= fieldDeserializerArr2.length) {
                    break;
                }
                int binarySearch2 = Arrays.binarySearch(this.hashArray, TypeUtils.fnv1a_64(fieldDeserializerArr2[i].fieldInfo.name));
                if (binarySearch2 >= 0) {
                    sArr[binarySearch2] = (short) i;
                }
                i++;
            }
            this.hashArrayMapping = sArr;
        }
        short s = this.hashArrayMapping[binarySearch];
        if (s != -1) {
            return this.sortedFieldDeserializers[s];
        }
        return null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:101:0x009d, code lost:
    
        r7.setLong(r0, ((java.lang.Number) r1).longValue());
     */
    /* JADX WARN: Code restructure failed: missing block: B:106:0x0089, code lost:
    
        if ((r1 instanceof java.lang.Number) == false) goto L215;
     */
    /* JADX WARN: Code restructure failed: missing block: B:108:0x008b, code lost:
    
        r7.setInt(r0, ((java.lang.Number) r1).intValue());
     */
    /* JADX WARN: Code restructure failed: missing block: B:113:0x0075, code lost:
    
        if (r1 != java.lang.Boolean.FALSE) goto L202;
     */
    /* JADX WARN: Code restructure failed: missing block: B:116:0x007d, code lost:
    
        if (r1 != java.lang.Boolean.TRUE) goto L205;
     */
    /* JADX WARN: Code restructure failed: missing block: B:119:0x007f, code lost:
    
        r7.setBoolean(r0, true);
     */
    /* JADX WARN: Code restructure failed: missing block: B:122:0x0077, code lost:
    
        r7.setBoolean(r0, false);
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0069, code lost:
    
        if (r6.method != null) goto L199;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x006b, code lost:
    
        r9 = r7.getType();
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0071, code lost:
    
        if (r9 != java.lang.Boolean.TYPE) goto L201;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0085, code lost:
    
        if (r9 != java.lang.Integer.TYPE) goto L214;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0097, code lost:
    
        if (r9 != java.lang.Long.TYPE) goto L218;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x00ac, code lost:
    
        if (r9 != java.lang.Float.TYPE) goto L221;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x00d9, code lost:
    
        if (r9 != java.lang.Double.TYPE) goto L224;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x0104, code lost:
    
        if (r1 == null) goto L228;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x010a, code lost:
    
        if (r8 != r1.getClass()) goto L229;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x010c, code lost:
    
        r7.set(r0, r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x00dd, code lost:
    
        if ((r1 instanceof java.lang.Number) == false) goto L227;
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x00df, code lost:
    
        r7.setDouble(r0, ((java.lang.Number) r1).doubleValue());
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x00ec, code lost:
    
        if ((r1 instanceof java.lang.String) == false) goto L225;
     */
    /* JADX WARN: Code restructure failed: missing block: B:73:0x00ee, code lost:
    
        r1 = (java.lang.String) r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x00f4, code lost:
    
        if (r1.length() > 10) goto L63;
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x00f6, code lost:
    
        r5 = com.alibaba.fastjson.util.TypeUtils.parseDouble(r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x00ff, code lost:
    
        r7.setDouble(r0, r5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:78:0x00fb, code lost:
    
        r5 = java.lang.Double.parseDouble(r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:82:0x00b0, code lost:
    
        if ((r1 instanceof java.lang.Number) == false) goto L223;
     */
    /* JADX WARN: Code restructure failed: missing block: B:84:0x00b2, code lost:
    
        r7.setFloat(r0, ((java.lang.Number) r1).floatValue());
     */
    /* JADX WARN: Code restructure failed: missing block: B:88:0x00bf, code lost:
    
        if ((r1 instanceof java.lang.String) == false) goto L222;
     */
    /* JADX WARN: Code restructure failed: missing block: B:90:0x00c1, code lost:
    
        r1 = (java.lang.String) r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:91:0x00c7, code lost:
    
        if (r1.length() > 10) goto L51;
     */
    /* JADX WARN: Code restructure failed: missing block: B:92:0x00c9, code lost:
    
        r1 = com.alibaba.fastjson.util.TypeUtils.parseFloat(r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:93:0x00d2, code lost:
    
        r7.setFloat(r0, r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:95:0x00ce, code lost:
    
        r1 = java.lang.Float.parseFloat(r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:99:0x009b, code lost:
    
        if ((r1 instanceof java.lang.Number) == false) goto L219;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object createInstance(java.util.Map<java.lang.String, java.lang.Object> r13, com.alibaba.fastjson.parser.ParserConfig r14) throws java.lang.IllegalArgumentException, java.lang.IllegalAccessException, java.lang.reflect.InvocationTargetException {
        /*
            Method dump skipped, instructions count: 744
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.parser.deserializer.JavaBeanDeserializer.createInstance(java.util.Map, com.alibaba.fastjson.parser.ParserConfig):java.lang.Object");
    }
}
