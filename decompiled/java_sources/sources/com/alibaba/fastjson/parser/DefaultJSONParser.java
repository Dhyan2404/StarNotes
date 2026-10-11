package com.alibaba.fastjson.parser;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONException;
import com.alibaba.fastjson.JSONObject;
import com.alibaba.fastjson.JSONPath;
import com.alibaba.fastjson.JSONPathException;
import com.alibaba.fastjson.parser.deserializer.ExtraProcessable;
import com.alibaba.fastjson.parser.deserializer.ExtraProcessor;
import com.alibaba.fastjson.parser.deserializer.ExtraTypeProvider;
import com.alibaba.fastjson.parser.deserializer.FieldDeserializer;
import com.alibaba.fastjson.parser.deserializer.FieldTypeResolver;
import com.alibaba.fastjson.parser.deserializer.JavaBeanDeserializer;
import com.alibaba.fastjson.parser.deserializer.ObjectDeserializer;
import com.alibaba.fastjson.parser.deserializer.ResolveFieldDeserializer;
import com.alibaba.fastjson.serializer.BeanContext;
import com.alibaba.fastjson.serializer.IntegerCodec;
import com.alibaba.fastjson.serializer.LongCodec;
import com.alibaba.fastjson.serializer.StringCodec;
import com.alibaba.fastjson.util.FieldInfo;
import com.alibaba.fastjson.util.TypeUtils;
import java.io.Closeable;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.lang.reflect.WildcardType;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.TreeSet;

/* loaded from: classes3.dex */
public class DefaultJSONParser implements Closeable {
    public static final int NONE = 0;
    public static final int NeedToResolve = 1;
    public static final int TypeNameRedirect = 2;
    private static final Set<Class<?>> primitiveClasses = new HashSet();
    private String[] autoTypeAccept;
    private boolean autoTypeEnable;
    protected ParserConfig config;
    protected ParseContext context;
    private ParseContext[] contextArray;
    private int contextArrayIndex;
    private DateFormat dateFormat;
    private String dateFormatPattern;
    private List<ExtraProcessor> extraProcessors;
    private List<ExtraTypeProvider> extraTypeProviders;
    protected FieldTypeResolver fieldTypeResolver;
    public final Object input;
    protected transient BeanContext lastBeanContext;
    public final JSONLexer lexer;
    private int objectKeyLevel;
    public int resolveStatus;
    private List<ResolveTask> resolveTaskList;
    public final SymbolTable symbolTable;

    /* loaded from: classes3.dex */
    public static class ResolveTask {
        public final ParseContext context;
        public FieldDeserializer fieldDeserializer;
        public ParseContext ownerContext;
        public final String referenceValue;

        public ResolveTask(ParseContext parseContext, String str) {
            this.context = parseContext;
            this.referenceValue = str;
        }
    }

    static {
        Class<?>[] clsArr = {Boolean.TYPE, Byte.TYPE, Short.TYPE, Integer.TYPE, Long.TYPE, Float.TYPE, Double.TYPE, Boolean.class, Byte.class, Short.class, Integer.class, Long.class, Float.class, Double.class, BigInteger.class, BigDecimal.class, String.class};
        for (int i = 0; i < 17; i++) {
            primitiveClasses.add(clsArr[i]);
        }
    }

    public DefaultJSONParser(String str) {
        this(str, ParserConfig.getGlobalInstance(), JSON.DEFAULT_PARSER_FEATURE);
    }

    private void addContext(ParseContext parseContext) {
        int i = this.contextArrayIndex;
        this.contextArrayIndex = i + 1;
        ParseContext[] parseContextArr = this.contextArray;
        if (parseContextArr == null) {
            this.contextArray = new ParseContext[8];
        } else if (i >= parseContextArr.length) {
            ParseContext[] parseContextArr2 = new ParseContext[(parseContextArr.length * 3) / 2];
            System.arraycopy(parseContextArr, 0, parseContextArr2, 0, parseContextArr.length);
            this.contextArray = parseContextArr2;
        }
        this.contextArray[i] = parseContext;
    }

    public final void accept(int i) {
        JSONLexer jSONLexer = this.lexer;
        if (jSONLexer.token() == i) {
            jSONLexer.nextToken();
            return;
        }
        throw new JSONException("syntax error, expect " + JSONToken.name(i) + ", actual " + JSONToken.name(jSONLexer.token()));
    }

    public void acceptType(String str) {
        JSONLexer jSONLexer = this.lexer;
        jSONLexer.nextTokenWithColon();
        if (jSONLexer.token() != 4) {
            throw new JSONException("type not match error");
        }
        if (!str.equals(jSONLexer.stringVal())) {
            throw new JSONException("type not match error");
        }
        jSONLexer.nextToken();
        if (jSONLexer.token() == 16) {
            jSONLexer.nextToken();
        }
    }

    public void addResolveTask(ResolveTask resolveTask) {
        if (this.resolveTaskList == null) {
            this.resolveTaskList = new ArrayList(2);
        }
        this.resolveTaskList.add(resolveTask);
    }

    public void checkListResolve(Collection collection) {
        if (this.resolveStatus == 1) {
            if (!(collection instanceof List)) {
                ResolveTask lastResolveTask = getLastResolveTask();
                lastResolveTask.fieldDeserializer = new ResolveFieldDeserializer(collection);
                lastResolveTask.ownerContext = this.context;
                setResolveStatus(0);
                return;
            }
            int size = collection.size() - 1;
            ResolveTask lastResolveTask2 = getLastResolveTask();
            lastResolveTask2.fieldDeserializer = new ResolveFieldDeserializer(this, (List) collection, size);
            lastResolveTask2.ownerContext = this.context;
            setResolveStatus(0);
        }
    }

    public void checkMapResolve(Map map, Object obj) {
        if (this.resolveStatus == 1) {
            ResolveFieldDeserializer resolveFieldDeserializer = new ResolveFieldDeserializer(map, obj);
            ResolveTask lastResolveTask = getLastResolveTask();
            lastResolveTask.fieldDeserializer = resolveFieldDeserializer;
            lastResolveTask.ownerContext = this.context;
            setResolveStatus(0);
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        JSONLexer jSONLexer = this.lexer;
        try {
            if (jSONLexer.isEnabled(Feature.AutoCloseSource) && jSONLexer.token() != 20) {
                throw new JSONException("not close json text, token : " + JSONToken.name(jSONLexer.token()));
            }
        } finally {
            jSONLexer.close();
        }
    }

    public void config(Feature feature, boolean z) {
        this.lexer.config(feature, z);
    }

    public ParserConfig getConfig() {
        return this.config;
    }

    public ParseContext getContext() {
        return this.context;
    }

    public String getDateFomartPattern() {
        return this.dateFormatPattern;
    }

    public DateFormat getDateFormat() {
        if (this.dateFormat == null) {
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat(this.dateFormatPattern, this.lexer.getLocale());
            this.dateFormat = simpleDateFormat;
            simpleDateFormat.setTimeZone(this.lexer.getTimeZone());
        }
        return this.dateFormat;
    }

    public List<ExtraProcessor> getExtraProcessors() {
        if (this.extraProcessors == null) {
            this.extraProcessors = new ArrayList(2);
        }
        return this.extraProcessors;
    }

    public List<ExtraTypeProvider> getExtraTypeProviders() {
        if (this.extraTypeProviders == null) {
            this.extraTypeProviders = new ArrayList(2);
        }
        return this.extraTypeProviders;
    }

    public FieldTypeResolver getFieldTypeResolver() {
        return this.fieldTypeResolver;
    }

    public String getInput() {
        Object obj = this.input;
        return obj instanceof char[] ? new String((char[]) obj) : obj.toString();
    }

    public ResolveTask getLastResolveTask() {
        return this.resolveTaskList.get(r1.size() - 1);
    }

    public JSONLexer getLexer() {
        return this.lexer;
    }

    public Object getObject(String str) {
        for (int i = 0; i < this.contextArrayIndex; i++) {
            if (str.equals(this.contextArray[i].toString())) {
                return this.contextArray[i].object;
            }
        }
        return null;
    }

    public int getResolveStatus() {
        return this.resolveStatus;
    }

    public List<ResolveTask> getResolveTaskList() {
        if (this.resolveTaskList == null) {
            this.resolveTaskList = new ArrayList(2);
        }
        return this.resolveTaskList;
    }

    public SymbolTable getSymbolTable() {
        return this.symbolTable;
    }

    public void handleResovleTask(Object obj) {
        Object obj2;
        FieldInfo fieldInfo;
        List<ResolveTask> list = this.resolveTaskList;
        if (list == null) {
            return;
        }
        int size = list.size();
        for (int i = 0; i < size; i++) {
            ResolveTask resolveTask = this.resolveTaskList.get(i);
            String str = resolveTask.referenceValue;
            ParseContext parseContext = resolveTask.ownerContext;
            Object obj3 = parseContext != null ? parseContext.object : null;
            if (str.startsWith("$")) {
                obj2 = getObject(str);
                if (obj2 == null) {
                    try {
                        JSONPath compile = JSONPath.compile(str);
                        if (compile.isRef()) {
                            obj2 = compile.eval(obj);
                        }
                    } catch (JSONPathException unused) {
                    }
                }
            } else {
                obj2 = resolveTask.context.object;
            }
            FieldDeserializer fieldDeserializer = resolveTask.fieldDeserializer;
            if (fieldDeserializer != null) {
                if (obj2 != null && obj2.getClass() == JSONObject.class && (fieldInfo = fieldDeserializer.fieldInfo) != null && !Map.class.isAssignableFrom(fieldInfo.fieldClass)) {
                    Object obj4 = this.contextArray[0].object;
                    JSONPath compile2 = JSONPath.compile(str);
                    if (compile2.isRef()) {
                        obj2 = compile2.eval(obj4);
                    }
                }
                fieldDeserializer.setValue(obj3, obj2);
            }
        }
    }

    public boolean isEnabled(Feature feature) {
        return this.lexer.isEnabled(feature);
    }

    public Object parse() {
        return parse(null);
    }

    public <T> List<T> parseArray(Class<T> cls) {
        ArrayList arrayList = new ArrayList();
        parseArray((Class<?>) cls, (Collection) arrayList);
        return arrayList;
    }

    public Object parseArrayWithType(Type type) {
        if (this.lexer.token() == 8) {
            this.lexer.nextToken();
            return null;
        }
        Type[] actualTypeArguments = ((ParameterizedType) type).getActualTypeArguments();
        if (actualTypeArguments.length != 1) {
            throw new JSONException("not support type " + type);
        }
        Type type2 = actualTypeArguments[0];
        if (type2 instanceof Class) {
            ArrayList arrayList = new ArrayList();
            parseArray((Class<?>) type2, (Collection) arrayList);
            return arrayList;
        }
        if (type2 instanceof WildcardType) {
            WildcardType wildcardType = (WildcardType) type2;
            Type type3 = wildcardType.getUpperBounds()[0];
            if (!Object.class.equals(type3)) {
                ArrayList arrayList2 = new ArrayList();
                parseArray((Class<?>) type3, (Collection) arrayList2);
                return arrayList2;
            }
            if (wildcardType.getLowerBounds().length == 0) {
                return parse();
            }
            throw new JSONException("not support type : " + type);
        }
        if (type2 instanceof TypeVariable) {
            TypeVariable typeVariable = (TypeVariable) type2;
            Type[] bounds = typeVariable.getBounds();
            if (bounds.length != 1) {
                throw new JSONException("not support : " + typeVariable);
            }
            Type type4 = bounds[0];
            if (type4 instanceof Class) {
                ArrayList arrayList3 = new ArrayList();
                parseArray((Class<?>) type4, (Collection) arrayList3);
                return arrayList3;
            }
        }
        if (type2 instanceof ParameterizedType) {
            ArrayList arrayList4 = new ArrayList();
            parseArray((ParameterizedType) type2, arrayList4);
            return arrayList4;
        }
        throw new JSONException("TODO : " + type);
    }

    public void parseExtra(Object obj, String str) {
        this.lexer.nextTokenWithColon();
        List<ExtraTypeProvider> list = this.extraTypeProviders;
        Type type = null;
        if (list != null) {
            Iterator<ExtraTypeProvider> it2 = list.iterator();
            while (it2.hasNext()) {
                type = it2.next().getExtraType(obj, str);
            }
        }
        Object parse = type == null ? parse() : parseObject(type);
        if (obj instanceof ExtraProcessable) {
            ((ExtraProcessable) obj).processExtra(str, parse);
            return;
        }
        List<ExtraProcessor> list2 = this.extraProcessors;
        if (list2 != null) {
            Iterator<ExtraProcessor> it3 = list2.iterator();
            while (it3.hasNext()) {
                it3.next().processExtra(obj, str, parse);
            }
        }
        if (this.resolveStatus == 1) {
            this.resolveStatus = 0;
        }
    }

    public Object parseKey() {
        if (this.lexer.token() != 18) {
            return parse(null);
        }
        String stringVal = this.lexer.stringVal();
        this.lexer.nextToken(16);
        return stringVal;
    }

    /* JADX WARN: Code restructure failed: missing block: B:100:0x032c, code lost:
    
        if (r3 == com.alibaba.fastjson.parser.deserializer.ThrowableDeserializer.class) goto L185;
     */
    /* JADX WARN: Code restructure failed: missing block: B:101:0x032e, code lost:
    
        setResolveStatus(0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:104:0x0342, code lost:
    
        return r0.deserialze(r17, r7, r19);
     */
    /* JADX WARN: Code restructure failed: missing block: B:106:0x0335, code lost:
    
        if ((r0 instanceof com.alibaba.fastjson.parser.deserializer.MapDeserializer) == false) goto L188;
     */
    /* JADX WARN: Code restructure failed: missing block: B:107:0x0337, code lost:
    
        setResolveStatus(0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x0288, code lost:
    
        r4.nextToken(16);
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x0293, code lost:
    
        if (r4.token() != 13) goto L165;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x0295, code lost:
    
        r4.nextToken(16);
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x02a0, code lost:
    
        if ((r17.config.getDeserializer(r7) instanceof com.alibaba.fastjson.parser.deserializer.JavaBeanDeserializer) == false) goto L148;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x02a2, code lost:
    
        r0 = com.alibaba.fastjson.util.TypeUtils.cast((java.lang.Object) r18, (java.lang.Class<java.lang.Object>) r7, r17.config);
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x02aa, code lost:
    
        if (r0 != null) goto L160;
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x02ae, code lost:
    
        if (r7 != java.lang.Cloneable.class) goto L153;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x02b0, code lost:
    
        r0 = new java.util.HashMap();
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x02bc, code lost:
    
        if ("java.util.Collections$EmptyMap".equals(r6) == false) goto L156;
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x02be, code lost:
    
        r0 = java.util.Collections.emptyMap();
     */
    /* JADX WARN: Code restructure failed: missing block: B:73:0x02c9, code lost:
    
        if ("java.util.Collections$UnmodifiableMap".equals(r6) == false) goto L159;
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x02cb, code lost:
    
        r0 = java.util.Collections.unmodifiableMap(new java.util.HashMap());
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x02d5, code lost:
    
        r0 = r7.newInstance();
     */
    /* JADX WARN: Code restructure failed: missing block: B:77:0x02dc, code lost:
    
        return r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:78:0x02a9, code lost:
    
        r0 = r12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x02dd, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:81:0x02e5, code lost:
    
        throw new com.alibaba.fastjson.JSONException("create instance error", r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:82:0x02e6, code lost:
    
        setResolveStatus(2);
        r3 = r17.context;
     */
    /* JADX WARN: Code restructure failed: missing block: B:83:0x02ec, code lost:
    
        if (r3 == null) goto L173;
     */
    /* JADX WARN: Code restructure failed: missing block: B:84:0x02ee, code lost:
    
        if (r19 == null) goto L173;
     */
    /* JADX WARN: Code restructure failed: missing block: B:86:0x02f2, code lost:
    
        if ((r19 instanceof java.lang.Integer) != false) goto L173;
     */
    /* JADX WARN: Code restructure failed: missing block: B:88:0x02f8, code lost:
    
        if ((r3.fieldName instanceof java.lang.Integer) != false) goto L173;
     */
    /* JADX WARN: Code restructure failed: missing block: B:89:0x02fa, code lost:
    
        popContext();
     */
    /* JADX WARN: Code restructure failed: missing block: B:91:0x0301, code lost:
    
        if (r18.size() <= 0) goto L178;
     */
    /* JADX WARN: Code restructure failed: missing block: B:92:0x0303, code lost:
    
        r0 = com.alibaba.fastjson.util.TypeUtils.cast((java.lang.Object) r18, (java.lang.Class<java.lang.Object>) r7, r17.config);
        setResolveStatus(0);
        parseObject(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:94:0x0313, code lost:
    
        return r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:95:0x0314, code lost:
    
        r0 = r17.config.getDeserializer(r7);
        r3 = r0.getClass();
     */
    /* JADX WARN: Code restructure failed: missing block: B:96:0x0324, code lost:
    
        if (com.alibaba.fastjson.parser.deserializer.JavaBeanDeserializer.class.isAssignableFrom(r3) == false) goto L185;
     */
    /* JADX WARN: Code restructure failed: missing block: B:98:0x0328, code lost:
    
        if (r3 == com.alibaba.fastjson.parser.deserializer.JavaBeanDeserializer.class) goto L185;
     */
    /* JADX WARN: Removed duplicated region for block: B:133:0x0449 A[Catch: all -> 0x0682, TryCatch #0 {all -> 0x0682, blocks: (B:24:0x0072, B:26:0x0076, B:28:0x0080, B:31:0x0093, B:35:0x00ab, B:39:0x0216, B:40:0x021c, B:42:0x0227, B:45:0x022f, B:52:0x0244, B:54:0x0252, B:56:0x0282, B:58:0x0288, B:60:0x0295, B:62:0x0298, B:64:0x02a2, B:68:0x02b0, B:69:0x02b6, B:71:0x02be, B:72:0x02c3, B:74:0x02cb, B:75:0x02d5, B:80:0x02de, B:81:0x02e5, B:82:0x02e6, B:85:0x02f0, B:87:0x02f4, B:89:0x02fa, B:90:0x02fd, B:92:0x0303, B:95:0x0314, B:101:0x032e, B:102:0x033b, B:105:0x0333, B:107:0x0337, B:109:0x0259, B:111:0x025f, B:115:0x026c, B:120:0x0272, B:128:0x034d, B:266:0x0353, B:270:0x035b, B:272:0x0365, B:274:0x0376, B:276:0x0381, B:278:0x0389, B:280:0x038d, B:282:0x0393, B:285:0x0398, B:287:0x039c, B:288:0x03fb, B:290:0x0403, B:293:0x040c, B:294:0x0426, B:297:0x03a1, B:299:0x03a9, B:302:0x03af, B:303:0x03bb, B:306:0x03c4, B:310:0x03ca, B:313:0x03cf, B:314:0x03db, B:316:0x03e5, B:317:0x03f2, B:319:0x0427, B:320:0x0445, B:133:0x0449, B:135:0x044d, B:137:0x0451, B:140:0x0457, B:144:0x045f, B:150:0x046f, B:152:0x047e, B:154:0x0489, B:155:0x0491, B:156:0x0494, B:157:0x04c0, B:159:0x04cb, B:166:0x04d8, B:169:0x04e8, B:170:0x0508, B:175:0x04a4, B:177:0x04ae, B:178:0x04bd, B:179:0x04b3, B:184:0x050d, B:186:0x0517, B:188:0x051f, B:189:0x0522, B:191:0x052d, B:192:0x0531, B:201:0x053c, B:194:0x0543, B:198:0x0550, B:199:0x0555, B:206:0x055a, B:208:0x055f, B:211:0x056a, B:213:0x0572, B:215:0x0585, B:217:0x05a0, B:218:0x05a6, B:221:0x05ac, B:222:0x05b2, B:224:0x05ba, B:226:0x05cb, B:229:0x05d3, B:231:0x05d7, B:232:0x05de, B:234:0x05e3, B:235:0x05e6, B:246:0x05ee, B:237:0x05f8, B:240:0x0602, B:241:0x0607, B:243:0x060c, B:244:0x0626, B:252:0x058e, B:253:0x0593, B:255:0x0627, B:263:0x0639, B:257:0x0640, B:260:0x064d, B:261:0x066d, B:324:0x00bd, B:325:0x00db, B:401:0x00e0, B:403:0x00eb, B:405:0x00ef, B:407:0x00f3, B:410:0x00f9, B:330:0x0108, B:332:0x0110, B:336:0x0120, B:337:0x0138, B:339:0x0139, B:340:0x013e, B:349:0x0153, B:351:0x0159, B:353:0x0160, B:354:0x0169, B:359:0x017b, B:363:0x0183, B:364:0x019d, B:365:0x0176, B:366:0x0165, B:368:0x019e, B:369:0x01b8, B:377:0x01c2, B:379:0x01ca, B:383:0x01db, B:384:0x01fb, B:386:0x01fc, B:387:0x0201, B:388:0x0202, B:390:0x020c, B:392:0x066e, B:393:0x0675, B:395:0x0676, B:396:0x067b, B:398:0x067c, B:399:0x0681), top: B:23:0x0072, inners: #1, #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:150:0x046f A[Catch: all -> 0x0682, TryCatch #0 {all -> 0x0682, blocks: (B:24:0x0072, B:26:0x0076, B:28:0x0080, B:31:0x0093, B:35:0x00ab, B:39:0x0216, B:40:0x021c, B:42:0x0227, B:45:0x022f, B:52:0x0244, B:54:0x0252, B:56:0x0282, B:58:0x0288, B:60:0x0295, B:62:0x0298, B:64:0x02a2, B:68:0x02b0, B:69:0x02b6, B:71:0x02be, B:72:0x02c3, B:74:0x02cb, B:75:0x02d5, B:80:0x02de, B:81:0x02e5, B:82:0x02e6, B:85:0x02f0, B:87:0x02f4, B:89:0x02fa, B:90:0x02fd, B:92:0x0303, B:95:0x0314, B:101:0x032e, B:102:0x033b, B:105:0x0333, B:107:0x0337, B:109:0x0259, B:111:0x025f, B:115:0x026c, B:120:0x0272, B:128:0x034d, B:266:0x0353, B:270:0x035b, B:272:0x0365, B:274:0x0376, B:276:0x0381, B:278:0x0389, B:280:0x038d, B:282:0x0393, B:285:0x0398, B:287:0x039c, B:288:0x03fb, B:290:0x0403, B:293:0x040c, B:294:0x0426, B:297:0x03a1, B:299:0x03a9, B:302:0x03af, B:303:0x03bb, B:306:0x03c4, B:310:0x03ca, B:313:0x03cf, B:314:0x03db, B:316:0x03e5, B:317:0x03f2, B:319:0x0427, B:320:0x0445, B:133:0x0449, B:135:0x044d, B:137:0x0451, B:140:0x0457, B:144:0x045f, B:150:0x046f, B:152:0x047e, B:154:0x0489, B:155:0x0491, B:156:0x0494, B:157:0x04c0, B:159:0x04cb, B:166:0x04d8, B:169:0x04e8, B:170:0x0508, B:175:0x04a4, B:177:0x04ae, B:178:0x04bd, B:179:0x04b3, B:184:0x050d, B:186:0x0517, B:188:0x051f, B:189:0x0522, B:191:0x052d, B:192:0x0531, B:201:0x053c, B:194:0x0543, B:198:0x0550, B:199:0x0555, B:206:0x055a, B:208:0x055f, B:211:0x056a, B:213:0x0572, B:215:0x0585, B:217:0x05a0, B:218:0x05a6, B:221:0x05ac, B:222:0x05b2, B:224:0x05ba, B:226:0x05cb, B:229:0x05d3, B:231:0x05d7, B:232:0x05de, B:234:0x05e3, B:235:0x05e6, B:246:0x05ee, B:237:0x05f8, B:240:0x0602, B:241:0x0607, B:243:0x060c, B:244:0x0626, B:252:0x058e, B:253:0x0593, B:255:0x0627, B:263:0x0639, B:257:0x0640, B:260:0x064d, B:261:0x066d, B:324:0x00bd, B:325:0x00db, B:401:0x00e0, B:403:0x00eb, B:405:0x00ef, B:407:0x00f3, B:410:0x00f9, B:330:0x0108, B:332:0x0110, B:336:0x0120, B:337:0x0138, B:339:0x0139, B:340:0x013e, B:349:0x0153, B:351:0x0159, B:353:0x0160, B:354:0x0169, B:359:0x017b, B:363:0x0183, B:364:0x019d, B:365:0x0176, B:366:0x0165, B:368:0x019e, B:369:0x01b8, B:377:0x01c2, B:379:0x01ca, B:383:0x01db, B:384:0x01fb, B:386:0x01fc, B:387:0x0201, B:388:0x0202, B:390:0x020c, B:392:0x066e, B:393:0x0675, B:395:0x0676, B:396:0x067b, B:398:0x067c, B:399:0x0681), top: B:23:0x0072, inners: #1, #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:159:0x04cb A[Catch: all -> 0x0682, TryCatch #0 {all -> 0x0682, blocks: (B:24:0x0072, B:26:0x0076, B:28:0x0080, B:31:0x0093, B:35:0x00ab, B:39:0x0216, B:40:0x021c, B:42:0x0227, B:45:0x022f, B:52:0x0244, B:54:0x0252, B:56:0x0282, B:58:0x0288, B:60:0x0295, B:62:0x0298, B:64:0x02a2, B:68:0x02b0, B:69:0x02b6, B:71:0x02be, B:72:0x02c3, B:74:0x02cb, B:75:0x02d5, B:80:0x02de, B:81:0x02e5, B:82:0x02e6, B:85:0x02f0, B:87:0x02f4, B:89:0x02fa, B:90:0x02fd, B:92:0x0303, B:95:0x0314, B:101:0x032e, B:102:0x033b, B:105:0x0333, B:107:0x0337, B:109:0x0259, B:111:0x025f, B:115:0x026c, B:120:0x0272, B:128:0x034d, B:266:0x0353, B:270:0x035b, B:272:0x0365, B:274:0x0376, B:276:0x0381, B:278:0x0389, B:280:0x038d, B:282:0x0393, B:285:0x0398, B:287:0x039c, B:288:0x03fb, B:290:0x0403, B:293:0x040c, B:294:0x0426, B:297:0x03a1, B:299:0x03a9, B:302:0x03af, B:303:0x03bb, B:306:0x03c4, B:310:0x03ca, B:313:0x03cf, B:314:0x03db, B:316:0x03e5, B:317:0x03f2, B:319:0x0427, B:320:0x0445, B:133:0x0449, B:135:0x044d, B:137:0x0451, B:140:0x0457, B:144:0x045f, B:150:0x046f, B:152:0x047e, B:154:0x0489, B:155:0x0491, B:156:0x0494, B:157:0x04c0, B:159:0x04cb, B:166:0x04d8, B:169:0x04e8, B:170:0x0508, B:175:0x04a4, B:177:0x04ae, B:178:0x04bd, B:179:0x04b3, B:184:0x050d, B:186:0x0517, B:188:0x051f, B:189:0x0522, B:191:0x052d, B:192:0x0531, B:201:0x053c, B:194:0x0543, B:198:0x0550, B:199:0x0555, B:206:0x055a, B:208:0x055f, B:211:0x056a, B:213:0x0572, B:215:0x0585, B:217:0x05a0, B:218:0x05a6, B:221:0x05ac, B:222:0x05b2, B:224:0x05ba, B:226:0x05cb, B:229:0x05d3, B:231:0x05d7, B:232:0x05de, B:234:0x05e3, B:235:0x05e6, B:246:0x05ee, B:237:0x05f8, B:240:0x0602, B:241:0x0607, B:243:0x060c, B:244:0x0626, B:252:0x058e, B:253:0x0593, B:255:0x0627, B:263:0x0639, B:257:0x0640, B:260:0x064d, B:261:0x066d, B:324:0x00bd, B:325:0x00db, B:401:0x00e0, B:403:0x00eb, B:405:0x00ef, B:407:0x00f3, B:410:0x00f9, B:330:0x0108, B:332:0x0110, B:336:0x0120, B:337:0x0138, B:339:0x0139, B:340:0x013e, B:349:0x0153, B:351:0x0159, B:353:0x0160, B:354:0x0169, B:359:0x017b, B:363:0x0183, B:364:0x019d, B:365:0x0176, B:366:0x0165, B:368:0x019e, B:369:0x01b8, B:377:0x01c2, B:379:0x01ca, B:383:0x01db, B:384:0x01fb, B:386:0x01fc, B:387:0x0201, B:388:0x0202, B:390:0x020c, B:392:0x066e, B:393:0x0675, B:395:0x0676, B:396:0x067b, B:398:0x067c, B:399:0x0681), top: B:23:0x0072, inners: #1, #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:163:0x04d4 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:171:0x0498  */
    /* JADX WARN: Removed duplicated region for block: B:226:0x05cb A[Catch: all -> 0x0682, TryCatch #0 {all -> 0x0682, blocks: (B:24:0x0072, B:26:0x0076, B:28:0x0080, B:31:0x0093, B:35:0x00ab, B:39:0x0216, B:40:0x021c, B:42:0x0227, B:45:0x022f, B:52:0x0244, B:54:0x0252, B:56:0x0282, B:58:0x0288, B:60:0x0295, B:62:0x0298, B:64:0x02a2, B:68:0x02b0, B:69:0x02b6, B:71:0x02be, B:72:0x02c3, B:74:0x02cb, B:75:0x02d5, B:80:0x02de, B:81:0x02e5, B:82:0x02e6, B:85:0x02f0, B:87:0x02f4, B:89:0x02fa, B:90:0x02fd, B:92:0x0303, B:95:0x0314, B:101:0x032e, B:102:0x033b, B:105:0x0333, B:107:0x0337, B:109:0x0259, B:111:0x025f, B:115:0x026c, B:120:0x0272, B:128:0x034d, B:266:0x0353, B:270:0x035b, B:272:0x0365, B:274:0x0376, B:276:0x0381, B:278:0x0389, B:280:0x038d, B:282:0x0393, B:285:0x0398, B:287:0x039c, B:288:0x03fb, B:290:0x0403, B:293:0x040c, B:294:0x0426, B:297:0x03a1, B:299:0x03a9, B:302:0x03af, B:303:0x03bb, B:306:0x03c4, B:310:0x03ca, B:313:0x03cf, B:314:0x03db, B:316:0x03e5, B:317:0x03f2, B:319:0x0427, B:320:0x0445, B:133:0x0449, B:135:0x044d, B:137:0x0451, B:140:0x0457, B:144:0x045f, B:150:0x046f, B:152:0x047e, B:154:0x0489, B:155:0x0491, B:156:0x0494, B:157:0x04c0, B:159:0x04cb, B:166:0x04d8, B:169:0x04e8, B:170:0x0508, B:175:0x04a4, B:177:0x04ae, B:178:0x04bd, B:179:0x04b3, B:184:0x050d, B:186:0x0517, B:188:0x051f, B:189:0x0522, B:191:0x052d, B:192:0x0531, B:201:0x053c, B:194:0x0543, B:198:0x0550, B:199:0x0555, B:206:0x055a, B:208:0x055f, B:211:0x056a, B:213:0x0572, B:215:0x0585, B:217:0x05a0, B:218:0x05a6, B:221:0x05ac, B:222:0x05b2, B:224:0x05ba, B:226:0x05cb, B:229:0x05d3, B:231:0x05d7, B:232:0x05de, B:234:0x05e3, B:235:0x05e6, B:246:0x05ee, B:237:0x05f8, B:240:0x0602, B:241:0x0607, B:243:0x060c, B:244:0x0626, B:252:0x058e, B:253:0x0593, B:255:0x0627, B:263:0x0639, B:257:0x0640, B:260:0x064d, B:261:0x066d, B:324:0x00bd, B:325:0x00db, B:401:0x00e0, B:403:0x00eb, B:405:0x00ef, B:407:0x00f3, B:410:0x00f9, B:330:0x0108, B:332:0x0110, B:336:0x0120, B:337:0x0138, B:339:0x0139, B:340:0x013e, B:349:0x0153, B:351:0x0159, B:353:0x0160, B:354:0x0169, B:359:0x017b, B:363:0x0183, B:364:0x019d, B:365:0x0176, B:366:0x0165, B:368:0x019e, B:369:0x01b8, B:377:0x01c2, B:379:0x01ca, B:383:0x01db, B:384:0x01fb, B:386:0x01fc, B:387:0x0201, B:388:0x0202, B:390:0x020c, B:392:0x066e, B:393:0x0675, B:395:0x0676, B:396:0x067b, B:398:0x067c, B:399:0x0681), top: B:23:0x0072, inners: #1, #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:231:0x05d7 A[Catch: all -> 0x0682, TryCatch #0 {all -> 0x0682, blocks: (B:24:0x0072, B:26:0x0076, B:28:0x0080, B:31:0x0093, B:35:0x00ab, B:39:0x0216, B:40:0x021c, B:42:0x0227, B:45:0x022f, B:52:0x0244, B:54:0x0252, B:56:0x0282, B:58:0x0288, B:60:0x0295, B:62:0x0298, B:64:0x02a2, B:68:0x02b0, B:69:0x02b6, B:71:0x02be, B:72:0x02c3, B:74:0x02cb, B:75:0x02d5, B:80:0x02de, B:81:0x02e5, B:82:0x02e6, B:85:0x02f0, B:87:0x02f4, B:89:0x02fa, B:90:0x02fd, B:92:0x0303, B:95:0x0314, B:101:0x032e, B:102:0x033b, B:105:0x0333, B:107:0x0337, B:109:0x0259, B:111:0x025f, B:115:0x026c, B:120:0x0272, B:128:0x034d, B:266:0x0353, B:270:0x035b, B:272:0x0365, B:274:0x0376, B:276:0x0381, B:278:0x0389, B:280:0x038d, B:282:0x0393, B:285:0x0398, B:287:0x039c, B:288:0x03fb, B:290:0x0403, B:293:0x040c, B:294:0x0426, B:297:0x03a1, B:299:0x03a9, B:302:0x03af, B:303:0x03bb, B:306:0x03c4, B:310:0x03ca, B:313:0x03cf, B:314:0x03db, B:316:0x03e5, B:317:0x03f2, B:319:0x0427, B:320:0x0445, B:133:0x0449, B:135:0x044d, B:137:0x0451, B:140:0x0457, B:144:0x045f, B:150:0x046f, B:152:0x047e, B:154:0x0489, B:155:0x0491, B:156:0x0494, B:157:0x04c0, B:159:0x04cb, B:166:0x04d8, B:169:0x04e8, B:170:0x0508, B:175:0x04a4, B:177:0x04ae, B:178:0x04bd, B:179:0x04b3, B:184:0x050d, B:186:0x0517, B:188:0x051f, B:189:0x0522, B:191:0x052d, B:192:0x0531, B:201:0x053c, B:194:0x0543, B:198:0x0550, B:199:0x0555, B:206:0x055a, B:208:0x055f, B:211:0x056a, B:213:0x0572, B:215:0x0585, B:217:0x05a0, B:218:0x05a6, B:221:0x05ac, B:222:0x05b2, B:224:0x05ba, B:226:0x05cb, B:229:0x05d3, B:231:0x05d7, B:232:0x05de, B:234:0x05e3, B:235:0x05e6, B:246:0x05ee, B:237:0x05f8, B:240:0x0602, B:241:0x0607, B:243:0x060c, B:244:0x0626, B:252:0x058e, B:253:0x0593, B:255:0x0627, B:263:0x0639, B:257:0x0640, B:260:0x064d, B:261:0x066d, B:324:0x00bd, B:325:0x00db, B:401:0x00e0, B:403:0x00eb, B:405:0x00ef, B:407:0x00f3, B:410:0x00f9, B:330:0x0108, B:332:0x0110, B:336:0x0120, B:337:0x0138, B:339:0x0139, B:340:0x013e, B:349:0x0153, B:351:0x0159, B:353:0x0160, B:354:0x0169, B:359:0x017b, B:363:0x0183, B:364:0x019d, B:365:0x0176, B:366:0x0165, B:368:0x019e, B:369:0x01b8, B:377:0x01c2, B:379:0x01ca, B:383:0x01db, B:384:0x01fb, B:386:0x01fc, B:387:0x0201, B:388:0x0202, B:390:0x020c, B:392:0x066e, B:393:0x0675, B:395:0x0676, B:396:0x067b, B:398:0x067c, B:399:0x0681), top: B:23:0x0072, inners: #1, #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:234:0x05e3 A[Catch: all -> 0x0682, TryCatch #0 {all -> 0x0682, blocks: (B:24:0x0072, B:26:0x0076, B:28:0x0080, B:31:0x0093, B:35:0x00ab, B:39:0x0216, B:40:0x021c, B:42:0x0227, B:45:0x022f, B:52:0x0244, B:54:0x0252, B:56:0x0282, B:58:0x0288, B:60:0x0295, B:62:0x0298, B:64:0x02a2, B:68:0x02b0, B:69:0x02b6, B:71:0x02be, B:72:0x02c3, B:74:0x02cb, B:75:0x02d5, B:80:0x02de, B:81:0x02e5, B:82:0x02e6, B:85:0x02f0, B:87:0x02f4, B:89:0x02fa, B:90:0x02fd, B:92:0x0303, B:95:0x0314, B:101:0x032e, B:102:0x033b, B:105:0x0333, B:107:0x0337, B:109:0x0259, B:111:0x025f, B:115:0x026c, B:120:0x0272, B:128:0x034d, B:266:0x0353, B:270:0x035b, B:272:0x0365, B:274:0x0376, B:276:0x0381, B:278:0x0389, B:280:0x038d, B:282:0x0393, B:285:0x0398, B:287:0x039c, B:288:0x03fb, B:290:0x0403, B:293:0x040c, B:294:0x0426, B:297:0x03a1, B:299:0x03a9, B:302:0x03af, B:303:0x03bb, B:306:0x03c4, B:310:0x03ca, B:313:0x03cf, B:314:0x03db, B:316:0x03e5, B:317:0x03f2, B:319:0x0427, B:320:0x0445, B:133:0x0449, B:135:0x044d, B:137:0x0451, B:140:0x0457, B:144:0x045f, B:150:0x046f, B:152:0x047e, B:154:0x0489, B:155:0x0491, B:156:0x0494, B:157:0x04c0, B:159:0x04cb, B:166:0x04d8, B:169:0x04e8, B:170:0x0508, B:175:0x04a4, B:177:0x04ae, B:178:0x04bd, B:179:0x04b3, B:184:0x050d, B:186:0x0517, B:188:0x051f, B:189:0x0522, B:191:0x052d, B:192:0x0531, B:201:0x053c, B:194:0x0543, B:198:0x0550, B:199:0x0555, B:206:0x055a, B:208:0x055f, B:211:0x056a, B:213:0x0572, B:215:0x0585, B:217:0x05a0, B:218:0x05a6, B:221:0x05ac, B:222:0x05b2, B:224:0x05ba, B:226:0x05cb, B:229:0x05d3, B:231:0x05d7, B:232:0x05de, B:234:0x05e3, B:235:0x05e6, B:246:0x05ee, B:237:0x05f8, B:240:0x0602, B:241:0x0607, B:243:0x060c, B:244:0x0626, B:252:0x058e, B:253:0x0593, B:255:0x0627, B:263:0x0639, B:257:0x0640, B:260:0x064d, B:261:0x066d, B:324:0x00bd, B:325:0x00db, B:401:0x00e0, B:403:0x00eb, B:405:0x00ef, B:407:0x00f3, B:410:0x00f9, B:330:0x0108, B:332:0x0110, B:336:0x0120, B:337:0x0138, B:339:0x0139, B:340:0x013e, B:349:0x0153, B:351:0x0159, B:353:0x0160, B:354:0x0169, B:359:0x017b, B:363:0x0183, B:364:0x019d, B:365:0x0176, B:366:0x0165, B:368:0x019e, B:369:0x01b8, B:377:0x01c2, B:379:0x01ca, B:383:0x01db, B:384:0x01fb, B:386:0x01fc, B:387:0x0201, B:388:0x0202, B:390:0x020c, B:392:0x066e, B:393:0x0675, B:395:0x0676, B:396:0x067b, B:398:0x067c, B:399:0x0681), top: B:23:0x0072, inners: #1, #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:237:0x05f8 A[Catch: all -> 0x0682, TRY_ENTER, TryCatch #0 {all -> 0x0682, blocks: (B:24:0x0072, B:26:0x0076, B:28:0x0080, B:31:0x0093, B:35:0x00ab, B:39:0x0216, B:40:0x021c, B:42:0x0227, B:45:0x022f, B:52:0x0244, B:54:0x0252, B:56:0x0282, B:58:0x0288, B:60:0x0295, B:62:0x0298, B:64:0x02a2, B:68:0x02b0, B:69:0x02b6, B:71:0x02be, B:72:0x02c3, B:74:0x02cb, B:75:0x02d5, B:80:0x02de, B:81:0x02e5, B:82:0x02e6, B:85:0x02f0, B:87:0x02f4, B:89:0x02fa, B:90:0x02fd, B:92:0x0303, B:95:0x0314, B:101:0x032e, B:102:0x033b, B:105:0x0333, B:107:0x0337, B:109:0x0259, B:111:0x025f, B:115:0x026c, B:120:0x0272, B:128:0x034d, B:266:0x0353, B:270:0x035b, B:272:0x0365, B:274:0x0376, B:276:0x0381, B:278:0x0389, B:280:0x038d, B:282:0x0393, B:285:0x0398, B:287:0x039c, B:288:0x03fb, B:290:0x0403, B:293:0x040c, B:294:0x0426, B:297:0x03a1, B:299:0x03a9, B:302:0x03af, B:303:0x03bb, B:306:0x03c4, B:310:0x03ca, B:313:0x03cf, B:314:0x03db, B:316:0x03e5, B:317:0x03f2, B:319:0x0427, B:320:0x0445, B:133:0x0449, B:135:0x044d, B:137:0x0451, B:140:0x0457, B:144:0x045f, B:150:0x046f, B:152:0x047e, B:154:0x0489, B:155:0x0491, B:156:0x0494, B:157:0x04c0, B:159:0x04cb, B:166:0x04d8, B:169:0x04e8, B:170:0x0508, B:175:0x04a4, B:177:0x04ae, B:178:0x04bd, B:179:0x04b3, B:184:0x050d, B:186:0x0517, B:188:0x051f, B:189:0x0522, B:191:0x052d, B:192:0x0531, B:201:0x053c, B:194:0x0543, B:198:0x0550, B:199:0x0555, B:206:0x055a, B:208:0x055f, B:211:0x056a, B:213:0x0572, B:215:0x0585, B:217:0x05a0, B:218:0x05a6, B:221:0x05ac, B:222:0x05b2, B:224:0x05ba, B:226:0x05cb, B:229:0x05d3, B:231:0x05d7, B:232:0x05de, B:234:0x05e3, B:235:0x05e6, B:246:0x05ee, B:237:0x05f8, B:240:0x0602, B:241:0x0607, B:243:0x060c, B:244:0x0626, B:252:0x058e, B:253:0x0593, B:255:0x0627, B:263:0x0639, B:257:0x0640, B:260:0x064d, B:261:0x066d, B:324:0x00bd, B:325:0x00db, B:401:0x00e0, B:403:0x00eb, B:405:0x00ef, B:407:0x00f3, B:410:0x00f9, B:330:0x0108, B:332:0x0110, B:336:0x0120, B:337:0x0138, B:339:0x0139, B:340:0x013e, B:349:0x0153, B:351:0x0159, B:353:0x0160, B:354:0x0169, B:359:0x017b, B:363:0x0183, B:364:0x019d, B:365:0x0176, B:366:0x0165, B:368:0x019e, B:369:0x01b8, B:377:0x01c2, B:379:0x01ca, B:383:0x01db, B:384:0x01fb, B:386:0x01fc, B:387:0x0201, B:388:0x0202, B:390:0x020c, B:392:0x066e, B:393:0x0675, B:395:0x0676, B:396:0x067b, B:398:0x067c, B:399:0x0681), top: B:23:0x0072, inners: #1, #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:245:0x05ee A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:361:0x0181  */
    /* JADX WARN: Removed duplicated region for block: B:362:0x0183 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0216 A[Catch: all -> 0x0682, TryCatch #0 {all -> 0x0682, blocks: (B:24:0x0072, B:26:0x0076, B:28:0x0080, B:31:0x0093, B:35:0x00ab, B:39:0x0216, B:40:0x021c, B:42:0x0227, B:45:0x022f, B:52:0x0244, B:54:0x0252, B:56:0x0282, B:58:0x0288, B:60:0x0295, B:62:0x0298, B:64:0x02a2, B:68:0x02b0, B:69:0x02b6, B:71:0x02be, B:72:0x02c3, B:74:0x02cb, B:75:0x02d5, B:80:0x02de, B:81:0x02e5, B:82:0x02e6, B:85:0x02f0, B:87:0x02f4, B:89:0x02fa, B:90:0x02fd, B:92:0x0303, B:95:0x0314, B:101:0x032e, B:102:0x033b, B:105:0x0333, B:107:0x0337, B:109:0x0259, B:111:0x025f, B:115:0x026c, B:120:0x0272, B:128:0x034d, B:266:0x0353, B:270:0x035b, B:272:0x0365, B:274:0x0376, B:276:0x0381, B:278:0x0389, B:280:0x038d, B:282:0x0393, B:285:0x0398, B:287:0x039c, B:288:0x03fb, B:290:0x0403, B:293:0x040c, B:294:0x0426, B:297:0x03a1, B:299:0x03a9, B:302:0x03af, B:303:0x03bb, B:306:0x03c4, B:310:0x03ca, B:313:0x03cf, B:314:0x03db, B:316:0x03e5, B:317:0x03f2, B:319:0x0427, B:320:0x0445, B:133:0x0449, B:135:0x044d, B:137:0x0451, B:140:0x0457, B:144:0x045f, B:150:0x046f, B:152:0x047e, B:154:0x0489, B:155:0x0491, B:156:0x0494, B:157:0x04c0, B:159:0x04cb, B:166:0x04d8, B:169:0x04e8, B:170:0x0508, B:175:0x04a4, B:177:0x04ae, B:178:0x04bd, B:179:0x04b3, B:184:0x050d, B:186:0x0517, B:188:0x051f, B:189:0x0522, B:191:0x052d, B:192:0x0531, B:201:0x053c, B:194:0x0543, B:198:0x0550, B:199:0x0555, B:206:0x055a, B:208:0x055f, B:211:0x056a, B:213:0x0572, B:215:0x0585, B:217:0x05a0, B:218:0x05a6, B:221:0x05ac, B:222:0x05b2, B:224:0x05ba, B:226:0x05cb, B:229:0x05d3, B:231:0x05d7, B:232:0x05de, B:234:0x05e3, B:235:0x05e6, B:246:0x05ee, B:237:0x05f8, B:240:0x0602, B:241:0x0607, B:243:0x060c, B:244:0x0626, B:252:0x058e, B:253:0x0593, B:255:0x0627, B:263:0x0639, B:257:0x0640, B:260:0x064d, B:261:0x066d, B:324:0x00bd, B:325:0x00db, B:401:0x00e0, B:403:0x00eb, B:405:0x00ef, B:407:0x00f3, B:410:0x00f9, B:330:0x0108, B:332:0x0110, B:336:0x0120, B:337:0x0138, B:339:0x0139, B:340:0x013e, B:349:0x0153, B:351:0x0159, B:353:0x0160, B:354:0x0169, B:359:0x017b, B:363:0x0183, B:364:0x019d, B:365:0x0176, B:366:0x0165, B:368:0x019e, B:369:0x01b8, B:377:0x01c2, B:379:0x01ca, B:383:0x01db, B:384:0x01fb, B:386:0x01fc, B:387:0x0201, B:388:0x0202, B:390:0x020c, B:392:0x066e, B:393:0x0675, B:395:0x0676, B:396:0x067b, B:398:0x067c, B:399:0x0681), top: B:23:0x0072, inners: #1, #2 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object parseObject(java.util.Map r18, java.lang.Object r19) {
        /*
            Method dump skipped, instructions count: 1671
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.parser.DefaultJSONParser.parseObject(java.util.Map, java.lang.Object):java.lang.Object");
    }

    public void popContext() {
        if (this.lexer.isEnabled(Feature.DisableCircularReferenceDetect)) {
            return;
        }
        this.context = this.context.parent;
        int i = this.contextArrayIndex;
        if (i <= 0) {
            return;
        }
        int i2 = i - 1;
        this.contextArrayIndex = i2;
        this.contextArray[i2] = null;
    }

    public Object resolveReference(String str) {
        if (this.contextArray == null) {
            return null;
        }
        int i = 0;
        while (true) {
            ParseContext[] parseContextArr = this.contextArray;
            if (i >= parseContextArr.length || i >= this.contextArrayIndex) {
                break;
            }
            ParseContext parseContext = parseContextArr[i];
            if (parseContext.toString().equals(str)) {
                return parseContext.object;
            }
            i++;
        }
        return null;
    }

    public void setConfig(ParserConfig parserConfig) {
        this.config = parserConfig;
    }

    public void setContext(ParseContext parseContext) {
        if (this.lexer.isEnabled(Feature.DisableCircularReferenceDetect)) {
            return;
        }
        this.context = parseContext;
    }

    public void setDateFomrat(DateFormat dateFormat) {
        this.dateFormat = dateFormat;
    }

    public void setDateFormat(String str) {
        this.dateFormatPattern = str;
        this.dateFormat = null;
    }

    public void setFieldTypeResolver(FieldTypeResolver fieldTypeResolver) {
        this.fieldTypeResolver = fieldTypeResolver;
    }

    public void setResolveStatus(int i) {
        this.resolveStatus = i;
    }

    public void throwException(int i) {
        throw new JSONException("syntax error, expect " + JSONToken.name(i) + ", actual " + JSONToken.name(this.lexer.token()));
    }

    public DefaultJSONParser(String str, ParserConfig parserConfig) {
        this(str, new JSONScanner(str, JSON.DEFAULT_PARSER_FEATURE), parserConfig);
    }

    public Object parse(Object obj) {
        JSONLexer jSONLexer = this.lexer;
        int i = jSONLexer.token();
        if (i == 2) {
            Number integerValue = jSONLexer.integerValue();
            jSONLexer.nextToken();
            return integerValue;
        }
        if (i == 3) {
            Number decimalValue = jSONLexer.decimalValue(jSONLexer.isEnabled(Feature.UseBigDecimal));
            jSONLexer.nextToken();
            return decimalValue;
        }
        if (i == 4) {
            String stringVal = jSONLexer.stringVal();
            jSONLexer.nextToken(16);
            if (jSONLexer.isEnabled(Feature.AllowISO8601DateFormat)) {
                JSONScanner jSONScanner = new JSONScanner(stringVal);
                try {
                    if (jSONScanner.scanISO8601DateIfMatch()) {
                        return jSONScanner.getCalendar().getTime();
                    }
                } finally {
                    jSONScanner.close();
                }
            }
            return stringVal;
        }
        if (i == 12) {
            return parseObject(new JSONObject(jSONLexer.isEnabled(Feature.OrderedField)), obj);
        }
        if (i == 14) {
            JSONArray jSONArray = new JSONArray();
            parseArray(jSONArray, obj);
            return jSONLexer.isEnabled(Feature.UseObjectArray) ? jSONArray.toArray() : jSONArray;
        }
        if (i == 18) {
            if ("NaN".equals(jSONLexer.stringVal())) {
                jSONLexer.nextToken();
                return null;
            }
            throw new JSONException("syntax error, " + jSONLexer.info());
        }
        if (i != 26) {
            switch (i) {
                case 6:
                    jSONLexer.nextToken();
                    return Boolean.TRUE;
                case 7:
                    jSONLexer.nextToken();
                    return Boolean.FALSE;
                case 8:
                    jSONLexer.nextToken();
                    return null;
                case 9:
                    jSONLexer.nextToken(18);
                    if (jSONLexer.token() == 18) {
                        jSONLexer.nextToken(10);
                        accept(10);
                        long longValue = jSONLexer.integerValue().longValue();
                        accept(2);
                        accept(11);
                        return new Date(longValue);
                    }
                    throw new JSONException("syntax error");
                default:
                    switch (i) {
                        case 20:
                            if (jSONLexer.isBlankInput()) {
                                return null;
                            }
                            throw new JSONException("unterminated json string, " + jSONLexer.info());
                        case 21:
                            jSONLexer.nextToken();
                            HashSet hashSet = new HashSet();
                            parseArray(hashSet, obj);
                            return hashSet;
                        case 22:
                            jSONLexer.nextToken();
                            TreeSet treeSet = new TreeSet();
                            parseArray(treeSet, obj);
                            return treeSet;
                        case 23:
                            jSONLexer.nextToken();
                            return null;
                        default:
                            throw new JSONException("syntax error, " + jSONLexer.info());
                    }
            }
        }
        byte[] bytesValue = jSONLexer.bytesValue();
        jSONLexer.nextToken();
        return bytesValue;
    }

    public DefaultJSONParser(String str, ParserConfig parserConfig, int i) {
        this(str, new JSONScanner(str, i), parserConfig);
    }

    public void parseArray(Class<?> cls, Collection collection) {
        parseArray((Type) cls, collection);
    }

    public ParseContext setContext(Object obj, Object obj2) {
        if (this.lexer.isEnabled(Feature.DisableCircularReferenceDetect)) {
            return null;
        }
        return setContext(this.context, obj, obj2);
    }

    public DefaultJSONParser(char[] cArr, int i, ParserConfig parserConfig, int i2) {
        this(cArr, new JSONScanner(cArr, i, i2), parserConfig);
    }

    public void parseArray(Type type, Collection collection) {
        parseArray(type, collection, null);
    }

    public DefaultJSONParser(JSONLexer jSONLexer) {
        this(jSONLexer, ParserConfig.getGlobalInstance());
    }

    public void parseArray(Type type, Collection collection, Object obj) {
        ObjectDeserializer deserializer;
        int i = this.lexer.token();
        if (i == 21 || i == 22) {
            this.lexer.nextToken();
            i = this.lexer.token();
        }
        if (i == 14) {
            if (Integer.TYPE == type) {
                deserializer = IntegerCodec.instance;
                this.lexer.nextToken(2);
            } else if (String.class == type) {
                deserializer = StringCodec.instance;
                this.lexer.nextToken(4);
            } else {
                deserializer = this.config.getDeserializer(type);
                this.lexer.nextToken(deserializer.getFastMatchToken());
            }
            ParseContext parseContext = this.context;
            setContext(collection, obj);
            int i2 = 0;
            while (true) {
                try {
                    if (this.lexer.isEnabled(Feature.AllowArbitraryCommas)) {
                        while (this.lexer.token() == 16) {
                            this.lexer.nextToken();
                        }
                    }
                    if (this.lexer.token() == 15) {
                        setContext(parseContext);
                        this.lexer.nextToken(16);
                        return;
                    }
                    Object obj2 = null;
                    if (Integer.TYPE == type) {
                        collection.add(IntegerCodec.instance.deserialze(this, null, null));
                    } else if (String.class == type) {
                        if (this.lexer.token() == 4) {
                            obj2 = this.lexer.stringVal();
                            this.lexer.nextToken(16);
                        } else {
                            Object parse = parse();
                            if (parse != null) {
                                obj2 = parse.toString();
                            }
                        }
                        collection.add(obj2);
                    } else {
                        if (this.lexer.token() == 8) {
                            this.lexer.nextToken();
                        } else {
                            obj2 = deserializer.deserialze(this, type, Integer.valueOf(i2));
                        }
                        collection.add(obj2);
                        checkListResolve(collection);
                    }
                    if (this.lexer.token() == 16) {
                        this.lexer.nextToken(deserializer.getFastMatchToken());
                    }
                    i2++;
                } catch (Throwable th) {
                    setContext(parseContext);
                    throw th;
                }
            }
        } else {
            throw new JSONException("expect '[', but " + JSONToken.name(i) + ", " + this.lexer.info());
        }
    }

    public ParseContext setContext(ParseContext parseContext, Object obj, Object obj2) {
        if (this.lexer.isEnabled(Feature.DisableCircularReferenceDetect)) {
            return null;
        }
        ParseContext parseContext2 = new ParseContext(parseContext, obj, obj2);
        this.context = parseContext2;
        addContext(parseContext2);
        return this.context;
    }

    public DefaultJSONParser(JSONLexer jSONLexer, ParserConfig parserConfig) {
        this((Object) null, jSONLexer, parserConfig);
    }

    public final void accept(int i, int i2) {
        JSONLexer jSONLexer = this.lexer;
        if (jSONLexer.token() == i) {
            jSONLexer.nextToken(i2);
        } else {
            throwException(i);
        }
    }

    public DefaultJSONParser(Object obj, JSONLexer jSONLexer, ParserConfig parserConfig) {
        this.dateFormatPattern = JSON.DEFFAULT_DATE_FORMAT;
        this.contextArrayIndex = 0;
        this.resolveStatus = 0;
        this.extraTypeProviders = null;
        this.extraProcessors = null;
        this.fieldTypeResolver = null;
        this.objectKeyLevel = 0;
        this.autoTypeAccept = null;
        this.lexer = jSONLexer;
        this.input = obj;
        this.config = parserConfig;
        this.symbolTable = parserConfig.symbolTable;
        char current = jSONLexer.getCurrent();
        if (current == '{') {
            jSONLexer.next();
            ((JSONLexerBase) jSONLexer).token = 12;
        } else if (current == '[') {
            jSONLexer.next();
            ((JSONLexerBase) jSONLexer).token = 14;
        } else {
            jSONLexer.nextToken();
        }
    }

    public Object[] parseArray(Type[] typeArr) {
        Object cast;
        Class<?> cls;
        boolean z;
        Class cls2;
        int i = 8;
        if (this.lexer.token() == 8) {
            this.lexer.nextToken(16);
            return null;
        }
        int i2 = 14;
        if (this.lexer.token() == 14) {
            Object[] objArr = new Object[typeArr.length];
            if (typeArr.length == 0) {
                this.lexer.nextToken(15);
                if (this.lexer.token() == 15) {
                    this.lexer.nextToken(16);
                    return new Object[0];
                }
                throw new JSONException("syntax error");
            }
            this.lexer.nextToken(2);
            int i3 = 0;
            while (i3 < typeArr.length) {
                if (this.lexer.token() == i) {
                    this.lexer.nextToken(16);
                    cast = null;
                } else {
                    Type type = typeArr[i3];
                    if (type != Integer.TYPE && type != Integer.class) {
                        if (type == String.class) {
                            if (this.lexer.token() == 4) {
                                cast = this.lexer.stringVal();
                                this.lexer.nextToken(16);
                            } else {
                                cast = TypeUtils.cast(parse(), type, this.config);
                            }
                        } else {
                            if (i3 == typeArr.length - 1 && (type instanceof Class) && (((cls2 = (Class) type) != byte[].class && cls2 != char[].class) || this.lexer.token() != 4)) {
                                z = cls2.isArray();
                                cls = cls2.getComponentType();
                            } else {
                                cls = null;
                                z = false;
                            }
                            if (z && this.lexer.token() != i2) {
                                ArrayList arrayList = new ArrayList();
                                ObjectDeserializer deserializer = this.config.getDeserializer(cls);
                                int fastMatchToken = deserializer.getFastMatchToken();
                                if (this.lexer.token() != 15) {
                                    while (true) {
                                        arrayList.add(deserializer.deserialze(this, type, null));
                                        if (this.lexer.token() != 16) {
                                            break;
                                        }
                                        this.lexer.nextToken(fastMatchToken);
                                    }
                                    if (this.lexer.token() != 15) {
                                        throw new JSONException("syntax error :" + JSONToken.name(this.lexer.token()));
                                    }
                                }
                                cast = TypeUtils.cast(arrayList, type, this.config);
                            } else {
                                cast = this.config.getDeserializer(type).deserialze(this, type, Integer.valueOf(i3));
                            }
                        }
                    } else if (this.lexer.token() == 2) {
                        cast = Integer.valueOf(this.lexer.intValue());
                        this.lexer.nextToken(16);
                    } else {
                        cast = TypeUtils.cast(parse(), type, this.config);
                    }
                }
                objArr[i3] = cast;
                if (this.lexer.token() == 15) {
                    break;
                }
                if (this.lexer.token() == 16) {
                    if (i3 == typeArr.length - 1) {
                        this.lexer.nextToken(15);
                    } else {
                        this.lexer.nextToken(2);
                    }
                    i3++;
                    i = 8;
                    i2 = 14;
                } else {
                    throw new JSONException("syntax error :" + JSONToken.name(this.lexer.token()));
                }
            }
            if (this.lexer.token() == 15) {
                this.lexer.nextToken(16);
                return objArr;
            }
            throw new JSONException("syntax error");
        }
        throw new JSONException("syntax error : " + this.lexer.tokenName());
    }

    /* JADX WARN: Code restructure failed: missing block: B:70:0x0236, code lost:
    
        return r11;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object parse(com.alibaba.fastjson.parser.deserializer.PropertyProcessable r11, java.lang.Object r12) {
        /*
            Method dump skipped, instructions count: 613
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.parser.DefaultJSONParser.parse(com.alibaba.fastjson.parser.deserializer.PropertyProcessable, java.lang.Object):java.lang.Object");
    }

    public final void parseArray(Collection collection) {
        parseArray(collection, (Object) null);
    }

    public final void parseArray(Collection collection, Object obj) {
        Object obj2;
        Number decimalValue;
        JSONLexer jSONLexer = this.lexer;
        if (jSONLexer.token() == 21 || jSONLexer.token() == 22) {
            jSONLexer.nextToken();
        }
        if (jSONLexer.token() == 14) {
            jSONLexer.nextToken(4);
            ParseContext parseContext = this.context;
            if (parseContext != null && parseContext.level > 512) {
                throw new JSONException("array level > 512");
            }
            setContext(collection, obj);
            int i = 0;
            while (true) {
                try {
                    if (jSONLexer.isEnabled(Feature.AllowArbitraryCommas)) {
                        while (jSONLexer.token() == 16) {
                            jSONLexer.nextToken();
                        }
                    }
                    int i2 = jSONLexer.token();
                    if (i2 == 2) {
                        Number integerValue = jSONLexer.integerValue();
                        jSONLexer.nextToken(16);
                        obj2 = integerValue;
                    } else if (i2 == 3) {
                        if (jSONLexer.isEnabled(Feature.UseBigDecimal)) {
                            decimalValue = jSONLexer.decimalValue(true);
                        } else {
                            decimalValue = jSONLexer.decimalValue(false);
                        }
                        obj2 = decimalValue;
                        jSONLexer.nextToken(16);
                    } else if (i2 == 4) {
                        String stringVal = jSONLexer.stringVal();
                        jSONLexer.nextToken(16);
                        obj2 = stringVal;
                        if (jSONLexer.isEnabled(Feature.AllowISO8601DateFormat)) {
                            JSONScanner jSONScanner = new JSONScanner(stringVal);
                            Object obj3 = stringVal;
                            if (jSONScanner.scanISO8601DateIfMatch()) {
                                obj3 = jSONScanner.getCalendar().getTime();
                            }
                            jSONScanner.close();
                            obj2 = obj3;
                        }
                    } else if (i2 == 6) {
                        Boolean bool = Boolean.TRUE;
                        jSONLexer.nextToken(16);
                        obj2 = bool;
                    } else if (i2 != 7) {
                        obj2 = null;
                        obj2 = null;
                        if (i2 == 8) {
                            jSONLexer.nextToken(4);
                        } else if (i2 == 12) {
                            obj2 = parseObject(new JSONObject(jSONLexer.isEnabled(Feature.OrderedField)), Integer.valueOf(i));
                        } else {
                            if (i2 == 20) {
                                throw new JSONException("unclosed jsonArray");
                            }
                            if (i2 == 23) {
                                jSONLexer.nextToken(4);
                            } else if (i2 == 14) {
                                JSONArray jSONArray = new JSONArray();
                                parseArray(jSONArray, Integer.valueOf(i));
                                obj2 = jSONArray;
                                if (jSONLexer.isEnabled(Feature.UseObjectArray)) {
                                    obj2 = jSONArray.toArray();
                                }
                            } else if (i2 != 15) {
                                obj2 = parse();
                            } else {
                                jSONLexer.nextToken(16);
                                return;
                            }
                        }
                    } else {
                        Boolean bool2 = Boolean.FALSE;
                        jSONLexer.nextToken(16);
                        obj2 = bool2;
                    }
                    collection.add(obj2);
                    checkListResolve(collection);
                    if (jSONLexer.token() == 16) {
                        jSONLexer.nextToken(4);
                    }
                    i++;
                } finally {
                    setContext(parseContext);
                }
            }
        } else {
            throw new JSONException("syntax error, expect [, actual " + JSONToken.name(jSONLexer.token()) + ", pos " + jSONLexer.pos() + ", fieldName " + obj);
        }
    }

    public <T> T parseObject(Class<T> cls) {
        return (T) parseObject(cls, (Object) null);
    }

    public <T> T parseObject(Type type) {
        return (T) parseObject(type, (Object) null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <T> T parseObject(Type type, Object obj) {
        int i = this.lexer.token();
        if (i == 8) {
            this.lexer.nextToken();
            return null;
        }
        if (i == 4) {
            if (type == byte[].class) {
                T t = (T) this.lexer.bytesValue();
                this.lexer.nextToken();
                return t;
            }
            if (type == char[].class) {
                String stringVal = this.lexer.stringVal();
                this.lexer.nextToken();
                return (T) stringVal.toCharArray();
            }
        }
        ObjectDeserializer deserializer = this.config.getDeserializer(type);
        try {
            if (deserializer.getClass() == JavaBeanDeserializer.class) {
                if (this.lexer.token() != 12 && this.lexer.token() != 14) {
                    throw new JSONException("syntax error,except start with { or [,but actually start with " + this.lexer.tokenName());
                }
                return (T) ((JavaBeanDeserializer) deserializer).deserialze(this, type, obj, 0);
            }
            return (T) deserializer.deserialze(this, type, obj);
        } catch (JSONException e) {
            throw e;
        } catch (Throwable th) {
            throw new JSONException(th.getMessage(), th);
        }
    }

    public void parseObject(Object obj) {
        Object deserialze;
        Class<?> cls = obj.getClass();
        ObjectDeserializer deserializer = this.config.getDeserializer(cls);
        JavaBeanDeserializer javaBeanDeserializer = deserializer instanceof JavaBeanDeserializer ? (JavaBeanDeserializer) deserializer : null;
        if (this.lexer.token() != 12 && this.lexer.token() != 16) {
            throw new JSONException("syntax error, expect {, actual " + this.lexer.tokenName());
        }
        while (true) {
            String scanSymbol = this.lexer.scanSymbol(this.symbolTable);
            if (scanSymbol == null) {
                if (this.lexer.token() == 13) {
                    this.lexer.nextToken(16);
                    return;
                } else if (this.lexer.token() == 16 && this.lexer.isEnabled(Feature.AllowArbitraryCommas)) {
                }
            }
            FieldDeserializer fieldDeserializer = javaBeanDeserializer != null ? javaBeanDeserializer.getFieldDeserializer(scanSymbol) : null;
            if (fieldDeserializer == null) {
                if (this.lexer.isEnabled(Feature.IgnoreNotMatch)) {
                    this.lexer.nextTokenWithColon();
                    parse();
                    if (this.lexer.token() == 13) {
                        this.lexer.nextToken();
                        return;
                    }
                } else {
                    throw new JSONException("setter not found, class " + cls.getName() + ", property " + scanSymbol);
                }
            } else {
                FieldInfo fieldInfo = fieldDeserializer.fieldInfo;
                Class<?> cls2 = fieldInfo.fieldClass;
                Type type = fieldInfo.fieldType;
                if (cls2 == Integer.TYPE) {
                    this.lexer.nextTokenWithColon(2);
                    deserialze = IntegerCodec.instance.deserialze(this, type, null);
                } else if (cls2 == String.class) {
                    this.lexer.nextTokenWithColon(4);
                    deserialze = StringCodec.deserialze(this);
                } else if (cls2 == Long.TYPE) {
                    this.lexer.nextTokenWithColon(2);
                    deserialze = LongCodec.instance.deserialze(this, type, null);
                } else {
                    ObjectDeserializer deserializer2 = this.config.getDeserializer(cls2, type);
                    this.lexer.nextTokenWithColon(deserializer2.getFastMatchToken());
                    deserialze = deserializer2.deserialze(this, type, null);
                }
                fieldDeserializer.setValue(obj, deserialze);
                if (this.lexer.token() != 16 && this.lexer.token() == 13) {
                    this.lexer.nextToken(16);
                    return;
                }
            }
        }
    }

    public Object parseObject(Map map) {
        return parseObject(map, (Object) null);
    }

    public JSONObject parseObject() {
        Object parseObject = parseObject((Map) new JSONObject(this.lexer.isEnabled(Feature.OrderedField)));
        if (parseObject instanceof JSONObject) {
            return (JSONObject) parseObject;
        }
        if (parseObject == null) {
            return null;
        }
        return new JSONObject((Map<String, Object>) parseObject);
    }
}
