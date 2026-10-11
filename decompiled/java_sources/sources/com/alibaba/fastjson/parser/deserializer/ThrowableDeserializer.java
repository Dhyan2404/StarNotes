package com.alibaba.fastjson.parser.deserializer;

import com.alibaba.fastjson.parser.ParserConfig;
import java.lang.reflect.Constructor;

/* loaded from: classes3.dex */
public class ThrowableDeserializer extends JavaBeanDeserializer {
    public ThrowableDeserializer(ParserConfig parserConfig, Class<?> cls) {
        super(parserConfig, cls, cls);
    }

    private Throwable createException(String str, Throwable th, Class<?> cls) throws Exception {
        Constructor<?> constructor = null;
        Constructor<?> constructor2 = null;
        Constructor<?> constructor3 = null;
        for (Constructor<?> constructor4 : cls.getConstructors()) {
            Class<?>[] parameterTypes = constructor4.getParameterTypes();
            if (parameterTypes.length == 0) {
                constructor3 = constructor4;
            } else if (parameterTypes.length == 1 && parameterTypes[0] == String.class) {
                constructor2 = constructor4;
            } else if (parameterTypes.length == 2 && parameterTypes[0] == String.class && parameterTypes[1] == Throwable.class) {
                constructor = constructor4;
            }
        }
        if (constructor != null) {
            return (Throwable) constructor.newInstance(str, th);
        }
        if (constructor2 != null) {
            return (Throwable) constructor2.newInstance(str);
        }
        if (constructor3 != null) {
            return (Throwable) constructor3.newInstance(new Object[0]);
        }
        return null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0039, code lost:
    
        if (java.lang.Throwable.class.isAssignableFrom(r2) != false) goto L19;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x00f2, code lost:
    
        if (r2 != null) goto L62;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x00f4, code lost:
    
        r3 = (T) new java.lang.Exception(r10, r9);
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x010b, code lost:
    
        if (r11 == null) goto L69;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x010d, code lost:
    
        ((java.lang.Throwable) r3).setStackTrace(r11);
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x0110, code lost:
    
        if (r7 == null) goto L85;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x0112, code lost:
    
        if (r2 == null) goto L77;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x0114, code lost:
    
        r4 = r0.clazz;
        r0 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x0116, code lost:
    
        if (r2 != r4) goto L74;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x0119, code lost:
    
        r0 = r17.getConfig().getDeserializer(r2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x0123, code lost:
    
        if ((r0 instanceof com.alibaba.fastjson.parser.deserializer.JavaBeanDeserializer) == false) goto L77;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x0125, code lost:
    
        r0 = (com.alibaba.fastjson.parser.deserializer.JavaBeanDeserializer) r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x0129, code lost:
    
        if (r0 == null) goto L85;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x012b, code lost:
    
        r1 = r7.entrySet().iterator();
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x0137, code lost:
    
        if (r1.hasNext() == false) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x0139, code lost:
    
        r2 = (java.util.Map.Entry) r1.next();
        r4 = (java.lang.String) r2.getKey();
        r2 = r2.getValue();
        r4 = r0.getFieldDeserializer(r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x014d, code lost:
    
        if (r4 == null) goto L108;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x014f, code lost:
    
        r4.setValue(r3, r2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x0128, code lost:
    
        r0 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x0153, code lost:
    
        return (T) r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x00fe, code lost:
    
        if (java.lang.Throwable.class.isAssignableFrom(r2) == false) goto L89;
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x0177, code lost:
    
        throw new com.alibaba.fastjson.JSONException("type not match, not Throwable. " + r2.getName());
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x0100, code lost:
    
        r3 = (T) r0.createException(r10, r9, r2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x0104, code lost:
    
        if (r3 != null) goto L67;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x0106, code lost:
    
        r3 = (T) new java.lang.Exception(r10, r9);
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x0154, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x015c, code lost:
    
        throw new com.alibaba.fastjson.JSONException("create instance error", r0);
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v8, types: [com.alibaba.fastjson.parser.deserializer.JavaBeanDeserializer] */
    @Override // com.alibaba.fastjson.parser.deserializer.JavaBeanDeserializer, com.alibaba.fastjson.parser.deserializer.ObjectDeserializer
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public <T> T deserialze(com.alibaba.fastjson.parser.DefaultJSONParser r17, java.lang.reflect.Type r18, java.lang.Object r19) {
        /*
            Method dump skipped, instructions count: 382
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.parser.deserializer.ThrowableDeserializer.deserialze(com.alibaba.fastjson.parser.DefaultJSONParser, java.lang.reflect.Type, java.lang.Object):java.lang.Object");
    }

    @Override // com.alibaba.fastjson.parser.deserializer.JavaBeanDeserializer, com.alibaba.fastjson.parser.deserializer.ObjectDeserializer
    public int getFastMatchToken() {
        return 12;
    }
}
