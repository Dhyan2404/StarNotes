package com.alibaba.fastjson.serializer;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONException;
import com.alibaba.fastjson.PropertyNamingStrategy;
import com.alibaba.fastjson.annotation.JSONType;
import com.alibaba.fastjson.util.FieldInfo;
import com.alibaba.fastjson.util.TypeUtils;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* loaded from: classes3.dex */
public class JavaBeanSerializer extends SerializeFilterable implements ObjectSerializer {
    protected SerializeBeanInfo beanInfo;
    protected final FieldSerializer[] getters;
    private volatile transient long[] hashArray;
    private volatile transient short[] hashArrayMapping;
    protected final FieldSerializer[] sortedGetters;

    public JavaBeanSerializer(Class<?> cls) {
        this(cls, (Map<String, String>) null);
    }

    public static Map<String, String> createAliasMap(String... strArr) {
        HashMap hashMap = new HashMap();
        for (String str : strArr) {
            hashMap.put(str, str);
        }
        return hashMap;
    }

    public boolean applyLabel(JSONSerializer jSONSerializer, String str) {
        List<LabelFilter> list = jSONSerializer.labelFilters;
        if (list != null) {
            Iterator<LabelFilter> it2 = list.iterator();
            while (it2.hasNext()) {
                if (!it2.next().apply(str)) {
                    return false;
                }
            }
        }
        List<LabelFilter> list2 = this.labelFilters;
        if (list2 == null) {
            return true;
        }
        Iterator<LabelFilter> it3 = list2.iterator();
        while (it3.hasNext()) {
            if (!it3.next().apply(str)) {
                return false;
            }
        }
        return true;
    }

    public BeanContext getBeanContext(int i) {
        return this.sortedGetters[i].fieldContext;
    }

    public Set<String> getFieldNames(Object obj) throws Exception {
        HashSet hashSet = new HashSet();
        for (FieldSerializer fieldSerializer : this.sortedGetters) {
            if (fieldSerializer.getPropertyValueDirect(obj) != null) {
                hashSet.add(fieldSerializer.fieldInfo.name);
            }
        }
        return hashSet;
    }

    public FieldSerializer getFieldSerializer(String str) {
        if (str == null) {
            return null;
        }
        int length = this.sortedGetters.length - 1;
        int i = 0;
        while (i <= length) {
            int i2 = (i + length) >>> 1;
            int compareTo = this.sortedGetters[i2].fieldInfo.name.compareTo(str);
            if (compareTo < 0) {
                i = i2 + 1;
            } else {
                if (compareTo <= 0) {
                    return this.sortedGetters[i2];
                }
                length = i2 - 1;
            }
        }
        return null;
    }

    public Type getFieldType(int i) {
        return this.sortedGetters[i].fieldInfo.fieldType;
    }

    public Object getFieldValue(Object obj, String str) {
        FieldSerializer fieldSerializer = getFieldSerializer(str);
        if (fieldSerializer != null) {
            try {
                return fieldSerializer.getPropertyValue(obj);
            } catch (IllegalAccessException e) {
                throw new JSONException("getFieldValue error." + str, e);
            } catch (InvocationTargetException e2) {
                throw new JSONException("getFieldValue error." + str, e2);
            }
        }
        throw new JSONException("field not found. " + str);
    }

    public List<Object> getFieldValues(Object obj) throws Exception {
        ArrayList arrayList = new ArrayList(this.sortedGetters.length);
        for (FieldSerializer fieldSerializer : this.sortedGetters) {
            arrayList.add(fieldSerializer.getPropertyValue(obj));
        }
        return arrayList;
    }

    public Map<String, Object> getFieldValuesMap(Object obj) throws Exception {
        LinkedHashMap linkedHashMap = new LinkedHashMap(this.sortedGetters.length);
        for (FieldSerializer fieldSerializer : this.sortedGetters) {
            boolean isEnabled = SerializerFeature.isEnabled(fieldSerializer.features, SerializerFeature.SkipTransientField);
            FieldInfo fieldInfo = fieldSerializer.fieldInfo;
            if (!isEnabled || fieldInfo == null || !fieldInfo.fieldTransient) {
                if (fieldInfo.unwrapped) {
                    Object json = JSON.toJSON(fieldSerializer.getPropertyValue(obj));
                    if (json instanceof Map) {
                        linkedHashMap.putAll((Map) json);
                    } else {
                        linkedHashMap.put(fieldSerializer.fieldInfo.name, fieldSerializer.getPropertyValue(obj));
                    }
                } else {
                    linkedHashMap.put(fieldInfo.name, fieldSerializer.getPropertyValue(obj));
                }
            }
        }
        return linkedHashMap;
    }

    public List<Object> getObjectFieldValues(Object obj) throws Exception {
        ArrayList arrayList = new ArrayList(this.sortedGetters.length);
        for (FieldSerializer fieldSerializer : this.sortedGetters) {
            Class<?> cls = fieldSerializer.fieldInfo.fieldClass;
            if (!cls.isPrimitive() && !cls.getName().startsWith("java.lang.")) {
                arrayList.add(fieldSerializer.getPropertyValue(obj));
            }
        }
        return arrayList;
    }

    public int getSize(Object obj) throws Exception {
        int i = 0;
        for (FieldSerializer fieldSerializer : this.sortedGetters) {
            if (fieldSerializer.getPropertyValueDirect(obj) != null) {
                i++;
            }
        }
        return i;
    }

    public Class<?> getType() {
        return this.beanInfo.beanType;
    }

    public boolean isWriteAsArray(JSONSerializer jSONSerializer) {
        return isWriteAsArray(jSONSerializer, 0);
    }

    @Override // com.alibaba.fastjson.serializer.ObjectSerializer
    public void write(JSONSerializer jSONSerializer, Object obj, Object obj2, Type type, int i) throws IOException {
        write(jSONSerializer, obj, obj2, type, i, false);
    }

    public char writeAfter(JSONSerializer jSONSerializer, Object obj, char c) {
        List<AfterFilter> list = jSONSerializer.afterFilters;
        if (list != null) {
            Iterator<AfterFilter> it2 = list.iterator();
            while (it2.hasNext()) {
                c = it2.next().writeAfter(jSONSerializer, obj, c);
            }
        }
        List<AfterFilter> list2 = this.afterFilters;
        if (list2 != null) {
            Iterator<AfterFilter> it3 = list2.iterator();
            while (it3.hasNext()) {
                c = it3.next().writeAfter(jSONSerializer, obj, c);
            }
        }
        return c;
    }

    public void writeAsArray(JSONSerializer jSONSerializer, Object obj, Object obj2, Type type, int i) throws IOException {
        write(jSONSerializer, obj, obj2, type, i);
    }

    public void writeAsArrayNonContext(JSONSerializer jSONSerializer, Object obj, Object obj2, Type type, int i) throws IOException {
        write(jSONSerializer, obj, obj2, type, i);
    }

    public char writeBefore(JSONSerializer jSONSerializer, Object obj, char c) {
        List<BeforeFilter> list = jSONSerializer.beforeFilters;
        if (list != null) {
            Iterator<BeforeFilter> it2 = list.iterator();
            while (it2.hasNext()) {
                c = it2.next().writeBefore(jSONSerializer, obj, c);
            }
        }
        List<BeforeFilter> list2 = this.beforeFilters;
        if (list2 != null) {
            Iterator<BeforeFilter> it3 = list2.iterator();
            while (it3.hasNext()) {
                c = it3.next().writeBefore(jSONSerializer, obj, c);
            }
        }
        return c;
    }

    public void writeClassName(JSONSerializer jSONSerializer, String str, Object obj) {
        if (str == null) {
            str = jSONSerializer.config.typeKey;
        }
        jSONSerializer.out.writeFieldName(str, false);
        String str2 = this.beanInfo.typeName;
        if (str2 == null) {
            Class<?> cls = obj.getClass();
            if (TypeUtils.isProxy(cls)) {
                cls = cls.getSuperclass();
            }
            str2 = cls.getName();
        }
        jSONSerializer.write(str2);
    }

    public void writeDirectNonContext(JSONSerializer jSONSerializer, Object obj, Object obj2, Type type, int i) throws IOException {
        write(jSONSerializer, obj, obj2, type, i);
    }

    public void writeNoneASM(JSONSerializer jSONSerializer, Object obj, Object obj2, Type type, int i) throws IOException {
        write(jSONSerializer, obj, obj2, type, i, false);
    }

    public boolean writeReference(JSONSerializer jSONSerializer, Object obj, int i) {
        IdentityHashMap<Object, SerialContext> identityHashMap;
        SerialContext serialContext = jSONSerializer.context;
        int i2 = SerializerFeature.DisableCircularReferenceDetect.mask;
        if (serialContext == null || (serialContext.features & i2) != 0 || (i & i2) != 0 || (identityHashMap = jSONSerializer.references) == null || !identityHashMap.containsKey(obj)) {
            return false;
        }
        jSONSerializer.writeReference(obj);
        return true;
    }

    public JavaBeanSerializer(Class<?> cls, String... strArr) {
        this(cls, createAliasMap(strArr));
    }

    public boolean isWriteAsArray(JSONSerializer jSONSerializer, int i) {
        int i2 = SerializerFeature.BeanToArray.mask;
        return ((this.beanInfo.features & i2) == 0 && !jSONSerializer.out.beanToArray && (i & i2) == 0) ? false : true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:176:0x02b7, code lost:
    
        if ((r32.beanInfo.features & r4) == 0) goto L256;
     */
    /* JADX WARN: Code restructure failed: missing block: B:260:0x046f, code lost:
    
        if (r0 == 0) goto L336;
     */
    /* JADX WARN: Code restructure failed: missing block: B:390:0x00ec, code lost:
    
        if (r11.fieldTransient != false) goto L75;
     */
    /* JADX WARN: Removed duplicated region for block: B:244:0x0442 A[Catch: Exception -> 0x047a, all -> 0x04e9, TryCatch #5 {all -> 0x04e9, blocks: (B:84:0x019b, B:87:0x01a3, B:89:0x01af, B:91:0x01ba, B:93:0x01c4, B:96:0x01ce, B:98:0x01da, B:100:0x01de, B:104:0x01e5, B:106:0x01e9, B:107:0x01ed, B:109:0x01f2, B:111:0x01f5, B:113:0x01fb, B:115:0x0207, B:117:0x020b, B:120:0x0212, B:123:0x0219, B:125:0x021e, B:128:0x0222, B:130:0x022a, B:132:0x0236, B:134:0x023a, B:137:0x0241, B:139:0x0245, B:140:0x024a, B:142:0x024f, B:144:0x0252, B:145:0x0257, B:147:0x025f, B:149:0x026b, B:151:0x026f, B:154:0x0276, B:156:0x027a, B:157:0x027f, B:159:0x0284, B:161:0x0287, B:163:0x028e, B:165:0x0292, B:167:0x029c, B:171:0x02a5, B:173:0x02a9, B:175:0x02b2, B:177:0x02b9, B:179:0x02bf, B:181:0x02c3, B:184:0x02ce, B:186:0x02d2, B:188:0x02d6, B:191:0x02e1, B:193:0x02e5, B:195:0x02e9, B:198:0x02f4, B:200:0x02f8, B:202:0x02fc, B:205:0x030a, B:207:0x030e, B:209:0x0312, B:212:0x031f, B:214:0x0323, B:216:0x0327, B:219:0x0335, B:221:0x0339, B:223:0x033d, B:227:0x0349, B:229:0x034d, B:231:0x0351, B:233:0x0361, B:235:0x036e, B:239:0x037a, B:240:0x0380, B:242:0x043e, B:244:0x0442, B:246:0x0446, B:251:0x0450, B:253:0x0458, B:254:0x0460, B:256:0x0466, B:269:0x038c, B:270:0x038f, B:272:0x0395, B:274:0x03a1, B:278:0x03b7, B:283:0x03c1, B:285:0x03d4, B:288:0x03dc, B:291:0x03e6, B:293:0x03ee, B:294:0x03f7, B:296:0x0400, B:298:0x0407, B:299:0x040b, B:301:0x040e, B:302:0x0412, B:303:0x0416, B:305:0x041b, B:306:0x041f, B:307:0x0423, B:309:0x0427, B:311:0x042b, B:314:0x0437, B:315:0x043b, B:316:0x03ca, B:379:0x0486, B:413:0x04c7, B:415:0x04cf, B:417:0x04d7, B:419:0x04df), top: B:83:0x019b }] */
    /* JADX WARN: Removed duplicated region for block: B:250:0x0475  */
    /* JADX WARN: Removed duplicated region for block: B:251:0x0450 A[Catch: Exception -> 0x047a, all -> 0x04e9, TryCatch #5 {all -> 0x04e9, blocks: (B:84:0x019b, B:87:0x01a3, B:89:0x01af, B:91:0x01ba, B:93:0x01c4, B:96:0x01ce, B:98:0x01da, B:100:0x01de, B:104:0x01e5, B:106:0x01e9, B:107:0x01ed, B:109:0x01f2, B:111:0x01f5, B:113:0x01fb, B:115:0x0207, B:117:0x020b, B:120:0x0212, B:123:0x0219, B:125:0x021e, B:128:0x0222, B:130:0x022a, B:132:0x0236, B:134:0x023a, B:137:0x0241, B:139:0x0245, B:140:0x024a, B:142:0x024f, B:144:0x0252, B:145:0x0257, B:147:0x025f, B:149:0x026b, B:151:0x026f, B:154:0x0276, B:156:0x027a, B:157:0x027f, B:159:0x0284, B:161:0x0287, B:163:0x028e, B:165:0x0292, B:167:0x029c, B:171:0x02a5, B:173:0x02a9, B:175:0x02b2, B:177:0x02b9, B:179:0x02bf, B:181:0x02c3, B:184:0x02ce, B:186:0x02d2, B:188:0x02d6, B:191:0x02e1, B:193:0x02e5, B:195:0x02e9, B:198:0x02f4, B:200:0x02f8, B:202:0x02fc, B:205:0x030a, B:207:0x030e, B:209:0x0312, B:212:0x031f, B:214:0x0323, B:216:0x0327, B:219:0x0335, B:221:0x0339, B:223:0x033d, B:227:0x0349, B:229:0x034d, B:231:0x0351, B:233:0x0361, B:235:0x036e, B:239:0x037a, B:240:0x0380, B:242:0x043e, B:244:0x0442, B:246:0x0446, B:251:0x0450, B:253:0x0458, B:254:0x0460, B:256:0x0466, B:269:0x038c, B:270:0x038f, B:272:0x0395, B:274:0x03a1, B:278:0x03b7, B:283:0x03c1, B:285:0x03d4, B:288:0x03dc, B:291:0x03e6, B:293:0x03ee, B:294:0x03f7, B:296:0x0400, B:298:0x0407, B:299:0x040b, B:301:0x040e, B:302:0x0412, B:303:0x0416, B:305:0x041b, B:306:0x041f, B:307:0x0423, B:309:0x0427, B:311:0x042b, B:314:0x0437, B:315:0x043b, B:316:0x03ca, B:379:0x0486, B:413:0x04c7, B:415:0x04cf, B:417:0x04d7, B:419:0x04df), top: B:83:0x019b }] */
    /* JADX WARN: Removed duplicated region for block: B:285:0x03d4 A[Catch: Exception -> 0x047a, all -> 0x04e9, TryCatch #5 {all -> 0x04e9, blocks: (B:84:0x019b, B:87:0x01a3, B:89:0x01af, B:91:0x01ba, B:93:0x01c4, B:96:0x01ce, B:98:0x01da, B:100:0x01de, B:104:0x01e5, B:106:0x01e9, B:107:0x01ed, B:109:0x01f2, B:111:0x01f5, B:113:0x01fb, B:115:0x0207, B:117:0x020b, B:120:0x0212, B:123:0x0219, B:125:0x021e, B:128:0x0222, B:130:0x022a, B:132:0x0236, B:134:0x023a, B:137:0x0241, B:139:0x0245, B:140:0x024a, B:142:0x024f, B:144:0x0252, B:145:0x0257, B:147:0x025f, B:149:0x026b, B:151:0x026f, B:154:0x0276, B:156:0x027a, B:157:0x027f, B:159:0x0284, B:161:0x0287, B:163:0x028e, B:165:0x0292, B:167:0x029c, B:171:0x02a5, B:173:0x02a9, B:175:0x02b2, B:177:0x02b9, B:179:0x02bf, B:181:0x02c3, B:184:0x02ce, B:186:0x02d2, B:188:0x02d6, B:191:0x02e1, B:193:0x02e5, B:195:0x02e9, B:198:0x02f4, B:200:0x02f8, B:202:0x02fc, B:205:0x030a, B:207:0x030e, B:209:0x0312, B:212:0x031f, B:214:0x0323, B:216:0x0327, B:219:0x0335, B:221:0x0339, B:223:0x033d, B:227:0x0349, B:229:0x034d, B:231:0x0351, B:233:0x0361, B:235:0x036e, B:239:0x037a, B:240:0x0380, B:242:0x043e, B:244:0x0442, B:246:0x0446, B:251:0x0450, B:253:0x0458, B:254:0x0460, B:256:0x0466, B:269:0x038c, B:270:0x038f, B:272:0x0395, B:274:0x03a1, B:278:0x03b7, B:283:0x03c1, B:285:0x03d4, B:288:0x03dc, B:291:0x03e6, B:293:0x03ee, B:294:0x03f7, B:296:0x0400, B:298:0x0407, B:299:0x040b, B:301:0x040e, B:302:0x0412, B:303:0x0416, B:305:0x041b, B:306:0x041f, B:307:0x0423, B:309:0x0427, B:311:0x042b, B:314:0x0437, B:315:0x043b, B:316:0x03ca, B:379:0x0486, B:413:0x04c7, B:415:0x04cf, B:417:0x04d7, B:419:0x04df), top: B:83:0x019b }] */
    /* JADX WARN: Removed duplicated region for block: B:315:0x043b A[Catch: Exception -> 0x047a, all -> 0x04e9, TryCatch #5 {all -> 0x04e9, blocks: (B:84:0x019b, B:87:0x01a3, B:89:0x01af, B:91:0x01ba, B:93:0x01c4, B:96:0x01ce, B:98:0x01da, B:100:0x01de, B:104:0x01e5, B:106:0x01e9, B:107:0x01ed, B:109:0x01f2, B:111:0x01f5, B:113:0x01fb, B:115:0x0207, B:117:0x020b, B:120:0x0212, B:123:0x0219, B:125:0x021e, B:128:0x0222, B:130:0x022a, B:132:0x0236, B:134:0x023a, B:137:0x0241, B:139:0x0245, B:140:0x024a, B:142:0x024f, B:144:0x0252, B:145:0x0257, B:147:0x025f, B:149:0x026b, B:151:0x026f, B:154:0x0276, B:156:0x027a, B:157:0x027f, B:159:0x0284, B:161:0x0287, B:163:0x028e, B:165:0x0292, B:167:0x029c, B:171:0x02a5, B:173:0x02a9, B:175:0x02b2, B:177:0x02b9, B:179:0x02bf, B:181:0x02c3, B:184:0x02ce, B:186:0x02d2, B:188:0x02d6, B:191:0x02e1, B:193:0x02e5, B:195:0x02e9, B:198:0x02f4, B:200:0x02f8, B:202:0x02fc, B:205:0x030a, B:207:0x030e, B:209:0x0312, B:212:0x031f, B:214:0x0323, B:216:0x0327, B:219:0x0335, B:221:0x0339, B:223:0x033d, B:227:0x0349, B:229:0x034d, B:231:0x0351, B:233:0x0361, B:235:0x036e, B:239:0x037a, B:240:0x0380, B:242:0x043e, B:244:0x0442, B:246:0x0446, B:251:0x0450, B:253:0x0458, B:254:0x0460, B:256:0x0466, B:269:0x038c, B:270:0x038f, B:272:0x0395, B:274:0x03a1, B:278:0x03b7, B:283:0x03c1, B:285:0x03d4, B:288:0x03dc, B:291:0x03e6, B:293:0x03ee, B:294:0x03f7, B:296:0x0400, B:298:0x0407, B:299:0x040b, B:301:0x040e, B:302:0x0412, B:303:0x0416, B:305:0x041b, B:306:0x041f, B:307:0x0423, B:309:0x0427, B:311:0x042b, B:314:0x0437, B:315:0x043b, B:316:0x03ca, B:379:0x0486, B:413:0x04c7, B:415:0x04cf, B:417:0x04d7, B:419:0x04df), top: B:83:0x019b }] */
    /* JADX WARN: Removed duplicated region for block: B:334:0x051e A[Catch: all -> 0x059d, TRY_ENTER, TryCatch #17 {all -> 0x059d, blocks: (B:331:0x04fa, B:334:0x051e, B:335:0x056c, B:337:0x0572, B:338:0x058a, B:340:0x058e, B:343:0x0597, B:344:0x059c, B:348:0x0533, B:350:0x0537, B:352:0x053b, B:353:0x0556), top: B:330:0x04fa }] */
    /* JADX WARN: Removed duplicated region for block: B:337:0x0572 A[Catch: all -> 0x059d, TryCatch #17 {all -> 0x059d, blocks: (B:331:0x04fa, B:334:0x051e, B:335:0x056c, B:337:0x0572, B:338:0x058a, B:340:0x058e, B:343:0x0597, B:344:0x059c, B:348:0x0533, B:350:0x0537, B:352:0x053b, B:353:0x0556), top: B:330:0x04fa }] */
    /* JADX WARN: Removed duplicated region for block: B:340:0x058e A[Catch: all -> 0x059d, TryCatch #17 {all -> 0x059d, blocks: (B:331:0x04fa, B:334:0x051e, B:335:0x056c, B:337:0x0572, B:338:0x058a, B:340:0x058e, B:343:0x0597, B:344:0x059c, B:348:0x0533, B:350:0x0537, B:352:0x053b, B:353:0x0556), top: B:330:0x04fa }] */
    /* JADX WARN: Removed duplicated region for block: B:342:0x0594  */
    /* JADX WARN: Removed duplicated region for block: B:346:0x0595  */
    /* JADX WARN: Removed duplicated region for block: B:347:0x0531  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00a1  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00ae  */
    /* JADX WARN: Removed duplicated region for block: B:411:0x04c4  */
    /* JADX WARN: Removed duplicated region for block: B:419:0x04df A[Catch: all -> 0x04e9, Exception -> 0x04eb, TRY_LEAVE, TryCatch #3 {Exception -> 0x04eb, blocks: (B:413:0x04c7, B:415:0x04cf, B:417:0x04d7, B:419:0x04df), top: B:412:0x04c7 }] */
    /* JADX WARN: Removed duplicated region for block: B:424:0x04c6  */
    /* JADX WARN: Removed duplicated region for block: B:433:0x00b0  */
    /* JADX WARN: Removed duplicated region for block: B:434:0x00a3  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00c5 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:76:0x0152  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x015e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void write(com.alibaba.fastjson.serializer.JSONSerializer r33, java.lang.Object r34, java.lang.Object r35, java.lang.reflect.Type r36, int r37, boolean r38) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 1441
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.serializer.JavaBeanSerializer.write(com.alibaba.fastjson.serializer.JSONSerializer, java.lang.Object, java.lang.Object, java.lang.reflect.Type, int, boolean):void");
    }

    public JavaBeanSerializer(Class<?> cls, Map<String, String> map) {
        this(TypeUtils.buildBeanInfo(cls, map, null));
    }

    public JavaBeanSerializer(SerializeBeanInfo serializeBeanInfo) {
        FieldSerializer[] fieldSerializerArr;
        boolean z;
        this.beanInfo = serializeBeanInfo;
        this.sortedGetters = new FieldSerializer[serializeBeanInfo.sortedFields.length];
        int i = 0;
        while (true) {
            fieldSerializerArr = this.sortedGetters;
            if (i >= fieldSerializerArr.length) {
                break;
            }
            fieldSerializerArr[i] = new FieldSerializer(serializeBeanInfo.beanType, serializeBeanInfo.sortedFields[i]);
            i++;
        }
        FieldInfo[] fieldInfoArr = serializeBeanInfo.fields;
        if (fieldInfoArr == serializeBeanInfo.sortedFields) {
            this.getters = fieldSerializerArr;
        } else {
            this.getters = new FieldSerializer[fieldInfoArr.length];
            int i2 = 0;
            while (true) {
                if (i2 >= this.getters.length) {
                    z = false;
                    break;
                }
                FieldSerializer fieldSerializer = getFieldSerializer(serializeBeanInfo.fields[i2].name);
                if (fieldSerializer == null) {
                    z = true;
                    break;
                } else {
                    this.getters[i2] = fieldSerializer;
                    i2++;
                }
            }
            if (z) {
                FieldSerializer[] fieldSerializerArr2 = this.sortedGetters;
                System.arraycopy(fieldSerializerArr2, 0, this.getters, 0, fieldSerializerArr2.length);
            }
        }
        JSONType jSONType = serializeBeanInfo.jsonType;
        if (jSONType != null) {
            for (Class<? extends SerializeFilter> cls : jSONType.serialzeFilters()) {
                try {
                    addFilter(cls.getConstructor(new Class[0]).newInstance(new Object[0]));
                } catch (Exception unused) {
                }
            }
        }
    }

    public FieldSerializer getFieldSerializer(long j) {
        PropertyNamingStrategy[] propertyNamingStrategyArr;
        int binarySearch;
        if (this.hashArray == null) {
            propertyNamingStrategyArr = PropertyNamingStrategy.values();
            long[] jArr = new long[this.sortedGetters.length * propertyNamingStrategyArr.length];
            int i = 0;
            int i2 = 0;
            while (true) {
                FieldSerializer[] fieldSerializerArr = this.sortedGetters;
                if (i >= fieldSerializerArr.length) {
                    break;
                }
                String str = fieldSerializerArr[i].fieldInfo.name;
                jArr[i2] = TypeUtils.fnv1a_64(str);
                i2++;
                for (PropertyNamingStrategy propertyNamingStrategy : propertyNamingStrategyArr) {
                    String translate = propertyNamingStrategy.translate(str);
                    if (!str.equals(translate)) {
                        jArr[i2] = TypeUtils.fnv1a_64(translate);
                        i2++;
                    }
                }
                i++;
            }
            Arrays.sort(jArr, 0, i2);
            this.hashArray = new long[i2];
            System.arraycopy(jArr, 0, this.hashArray, 0, i2);
        } else {
            propertyNamingStrategyArr = null;
        }
        int binarySearch2 = Arrays.binarySearch(this.hashArray, j);
        if (binarySearch2 < 0) {
            return null;
        }
        if (this.hashArrayMapping == null) {
            if (propertyNamingStrategyArr == null) {
                propertyNamingStrategyArr = PropertyNamingStrategy.values();
            }
            short[] sArr = new short[this.hashArray.length];
            Arrays.fill(sArr, (short) -1);
            int i3 = 0;
            while (true) {
                FieldSerializer[] fieldSerializerArr2 = this.sortedGetters;
                if (i3 >= fieldSerializerArr2.length) {
                    break;
                }
                String str2 = fieldSerializerArr2[i3].fieldInfo.name;
                int binarySearch3 = Arrays.binarySearch(this.hashArray, TypeUtils.fnv1a_64(str2));
                if (binarySearch3 >= 0) {
                    sArr[binarySearch3] = (short) i3;
                }
                for (PropertyNamingStrategy propertyNamingStrategy2 : propertyNamingStrategyArr) {
                    String translate2 = propertyNamingStrategy2.translate(str2);
                    if (!str2.equals(translate2) && (binarySearch = Arrays.binarySearch(this.hashArray, TypeUtils.fnv1a_64(translate2))) >= 0) {
                        sArr[binarySearch] = (short) i3;
                    }
                }
                i3++;
            }
            this.hashArrayMapping = sArr;
        }
        short s = this.hashArrayMapping[binarySearch2];
        if (s != -1) {
            return this.sortedGetters[s];
        }
        return null;
    }

    public Object getFieldValue(Object obj, String str, long j, boolean z) {
        FieldSerializer fieldSerializer = getFieldSerializer(j);
        if (fieldSerializer == null) {
            if (!z) {
                return null;
            }
            throw new JSONException("field not found. " + str);
        }
        try {
            return fieldSerializer.getPropertyValue(obj);
        } catch (IllegalAccessException e) {
            throw new JSONException("getFieldValue error." + str, e);
        } catch (InvocationTargetException e2) {
            throw new JSONException("getFieldValue error." + str, e2);
        }
    }
}
