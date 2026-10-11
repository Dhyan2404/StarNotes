package org.mortbay.util;

import com.google.common.reflect.ClassPath;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintStream;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.net.URL;
import java.util.HashMap;
import org.mortbay.log.Log;

/* loaded from: classes13.dex */
public class TypeUtil {

    /* renamed from: CR */
    public static int f115367CR = 13;

    /* renamed from: LF */
    public static int f115368LF = 10;

    /* renamed from: a */
    public static final HashMap f115369a;

    /* renamed from: b */
    public static final HashMap f115370b;

    /* renamed from: c */
    public static final HashMap f115371c;

    /* renamed from: d */
    public static Class[] f115372d;

    /* renamed from: e */
    public static int f115373e;

    /* renamed from: f */
    public static Integer[] f115374f;

    /* renamed from: g */
    public static String[] f115375g;

    /* renamed from: h */
    public static Integer f115376h;

    /* renamed from: i */
    public static int f115377i;

    /* renamed from: j */
    public static Long[] f115378j;

    /* renamed from: k */
    public static Long f115379k;

    /* renamed from: l */
    public static /* synthetic */ Class f115380l;

    /* renamed from: m */
    public static /* synthetic */ Class f115381m;

    /* renamed from: n */
    public static /* synthetic */ Class f115382n;

    /* renamed from: o */
    public static /* synthetic */ Class f115383o;

    /* renamed from: p */
    public static /* synthetic */ Class f115384p;

    /* renamed from: q */
    public static /* synthetic */ Class f115385q;

    /* renamed from: r */
    public static /* synthetic */ Class f115386r;

    /* renamed from: s */
    public static /* synthetic */ Class f115387s;

    /* renamed from: t */
    public static /* synthetic */ Class f115388t;

    static {
        HashMap hashMap = new HashMap();
        f115369a = hashMap;
        Class cls = Boolean.TYPE;
        hashMap.put("boolean", cls);
        hashMap.put("byte", Byte.TYPE);
        hashMap.put("char", Character.TYPE);
        hashMap.put("double", Double.TYPE);
        Class cls2 = Float.TYPE;
        hashMap.put("float", cls2);
        Class cls3 = Integer.TYPE;
        hashMap.put("int", cls3);
        Class cls4 = Long.TYPE;
        hashMap.put("long", cls4);
        hashMap.put("short", Short.TYPE);
        hashMap.put("void", Void.TYPE);
        hashMap.put("java.lang.Boolean.TYPE", cls);
        hashMap.put("java.lang.Byte.TYPE", Byte.TYPE);
        hashMap.put("java.lang.Character.TYPE", Character.TYPE);
        hashMap.put("java.lang.Double.TYPE", Double.TYPE);
        hashMap.put("java.lang.Float.TYPE", cls2);
        hashMap.put("java.lang.Integer.TYPE", cls3);
        hashMap.put("java.lang.Long.TYPE", cls4);
        hashMap.put("java.lang.Short.TYPE", Short.TYPE);
        hashMap.put("java.lang.Void.TYPE", Void.TYPE);
        Class cls5 = f115380l;
        if (cls5 == null) {
            cls5 = class$(Constants.BOOLEAN_CLASS);
            f115380l = cls5;
        }
        hashMap.put(Constants.BOOLEAN_CLASS, cls5);
        Class cls6 = f115381m;
        if (cls6 == null) {
            cls6 = class$("java.lang.Byte");
            f115381m = cls6;
        }
        hashMap.put("java.lang.Byte", cls6);
        Class cls7 = f115382n;
        if (cls7 == null) {
            cls7 = class$("java.lang.Character");
            f115382n = cls7;
        }
        hashMap.put("java.lang.Character", cls7);
        Class cls8 = f115383o;
        if (cls8 == null) {
            cls8 = class$(Constants.DOUBLE_CLASS);
            f115383o = cls8;
        }
        hashMap.put(Constants.DOUBLE_CLASS, cls8);
        Class cls9 = f115384p;
        if (cls9 == null) {
            cls9 = class$("java.lang.Float");
            f115384p = cls9;
        }
        hashMap.put("java.lang.Float", cls9);
        Class cls10 = f115385q;
        if (cls10 == null) {
            cls10 = class$(Constants.INTEGER_CLASS);
            f115385q = cls10;
        }
        hashMap.put(Constants.INTEGER_CLASS, cls10);
        Class cls11 = f115386r;
        if (cls11 == null) {
            cls11 = class$("java.lang.Long");
            f115386r = cls11;
        }
        hashMap.put("java.lang.Long", cls11);
        Class cls12 = f115387s;
        if (cls12 == null) {
            cls12 = class$("java.lang.Short");
            f115387s = cls12;
        }
        hashMap.put("java.lang.Short", cls12);
        Class cls13 = f115380l;
        if (cls13 == null) {
            cls13 = class$(Constants.BOOLEAN_CLASS);
            f115380l = cls13;
        }
        hashMap.put("Boolean", cls13);
        Class cls14 = f115381m;
        if (cls14 == null) {
            cls14 = class$("java.lang.Byte");
            f115381m = cls14;
        }
        hashMap.put("Byte", cls14);
        Class cls15 = f115382n;
        if (cls15 == null) {
            cls15 = class$("java.lang.Character");
            f115382n = cls15;
        }
        hashMap.put("Character", cls15);
        Class cls16 = f115383o;
        if (cls16 == null) {
            cls16 = class$(Constants.DOUBLE_CLASS);
            f115383o = cls16;
        }
        hashMap.put("Double", cls16);
        Class cls17 = f115384p;
        if (cls17 == null) {
            cls17 = class$("java.lang.Float");
            f115384p = cls17;
        }
        hashMap.put("Float", cls17);
        Class cls18 = f115385q;
        if (cls18 == null) {
            cls18 = class$(Constants.INTEGER_CLASS);
            f115385q = cls18;
        }
        hashMap.put("Integer", cls18);
        Class cls19 = f115386r;
        if (cls19 == null) {
            cls19 = class$("java.lang.Long");
            f115386r = cls19;
        }
        hashMap.put("Long", cls19);
        Class cls20 = f115387s;
        if (cls20 == null) {
            cls20 = class$("java.lang.Short");
            f115387s = cls20;
        }
        hashMap.put("Short", cls20);
        hashMap.put(null, Void.TYPE);
        Class cls21 = f115388t;
        if (cls21 == null) {
            cls21 = class$("java.lang.String");
            f115388t = cls21;
        }
        hashMap.put("string", cls21);
        Class cls22 = f115388t;
        if (cls22 == null) {
            cls22 = class$("java.lang.String");
            f115388t = cls22;
        }
        hashMap.put("String", cls22);
        Class cls23 = f115388t;
        if (cls23 == null) {
            cls23 = class$("java.lang.String");
            f115388t = cls23;
        }
        hashMap.put("java.lang.String", cls23);
        HashMap hashMap2 = new HashMap();
        f115370b = hashMap2;
        hashMap2.put(cls, "boolean");
        hashMap2.put(Byte.TYPE, "byte");
        hashMap2.put(Character.TYPE, "char");
        hashMap2.put(Double.TYPE, "double");
        hashMap2.put(cls2, "float");
        hashMap2.put(cls3, "int");
        hashMap2.put(cls4, "long");
        hashMap2.put(Short.TYPE, "short");
        hashMap2.put(Void.TYPE, "void");
        Class cls24 = f115380l;
        if (cls24 == null) {
            cls24 = class$(Constants.BOOLEAN_CLASS);
            f115380l = cls24;
        }
        hashMap2.put(cls24, Constants.BOOLEAN_CLASS);
        Class cls25 = f115381m;
        if (cls25 == null) {
            cls25 = class$("java.lang.Byte");
            f115381m = cls25;
        }
        hashMap2.put(cls25, "java.lang.Byte");
        Class cls26 = f115382n;
        if (cls26 == null) {
            cls26 = class$("java.lang.Character");
            f115382n = cls26;
        }
        hashMap2.put(cls26, "java.lang.Character");
        Class cls27 = f115383o;
        if (cls27 == null) {
            cls27 = class$(Constants.DOUBLE_CLASS);
            f115383o = cls27;
        }
        hashMap2.put(cls27, Constants.DOUBLE_CLASS);
        Class cls28 = f115384p;
        if (cls28 == null) {
            cls28 = class$("java.lang.Float");
            f115384p = cls28;
        }
        hashMap2.put(cls28, "java.lang.Float");
        Class cls29 = f115385q;
        if (cls29 == null) {
            cls29 = class$(Constants.INTEGER_CLASS);
            f115385q = cls29;
        }
        hashMap2.put(cls29, Constants.INTEGER_CLASS);
        Class cls30 = f115386r;
        if (cls30 == null) {
            cls30 = class$("java.lang.Long");
            f115386r = cls30;
        }
        hashMap2.put(cls30, "java.lang.Long");
        Class cls31 = f115387s;
        if (cls31 == null) {
            cls31 = class$("java.lang.Short");
            f115387s = cls31;
        }
        hashMap2.put(cls31, "java.lang.Short");
        hashMap2.put(null, "void");
        Class cls32 = f115388t;
        if (cls32 == null) {
            cls32 = class$("java.lang.String");
            f115388t = cls32;
        }
        hashMap2.put(cls32, "java.lang.String");
        HashMap hashMap3 = new HashMap();
        f115371c = hashMap3;
        try {
            Class<?>[] clsArr = new Class[1];
            Class<?> cls33 = f115388t;
            if (cls33 == null) {
                cls33 = class$("java.lang.String");
                f115388t = cls33;
            }
            clsArr[0] = cls33;
            Class cls34 = f115380l;
            if (cls34 == null) {
                cls34 = class$(Constants.BOOLEAN_CLASS);
                f115380l = cls34;
            }
            hashMap3.put(cls, cls34.getMethod("valueOf", clsArr));
            Class cls35 = Byte.TYPE;
            Class cls36 = f115381m;
            if (cls36 == null) {
                cls36 = class$("java.lang.Byte");
                f115381m = cls36;
            }
            hashMap3.put(cls35, cls36.getMethod("valueOf", clsArr));
            Class cls37 = Double.TYPE;
            Class cls38 = f115383o;
            if (cls38 == null) {
                cls38 = class$(Constants.DOUBLE_CLASS);
                f115383o = cls38;
            }
            hashMap3.put(cls37, cls38.getMethod("valueOf", clsArr));
            Class cls39 = f115384p;
            if (cls39 == null) {
                cls39 = class$("java.lang.Float");
                f115384p = cls39;
            }
            hashMap3.put(cls2, cls39.getMethod("valueOf", clsArr));
            Class cls40 = f115385q;
            if (cls40 == null) {
                cls40 = class$(Constants.INTEGER_CLASS);
                f115385q = cls40;
            }
            hashMap3.put(cls3, cls40.getMethod("valueOf", clsArr));
            Class cls41 = f115386r;
            if (cls41 == null) {
                cls41 = class$("java.lang.Long");
                f115386r = cls41;
            }
            hashMap3.put(cls4, cls41.getMethod("valueOf", clsArr));
            Class cls42 = Short.TYPE;
            Class cls43 = f115387s;
            if (cls43 == null) {
                cls43 = class$("java.lang.Short");
                f115387s = cls43;
            }
            hashMap3.put(cls42, cls43.getMethod("valueOf", clsArr));
            Class cls44 = f115380l;
            if (cls44 == null) {
                cls44 = class$(Constants.BOOLEAN_CLASS);
                f115380l = cls44;
            }
            Class cls45 = f115380l;
            if (cls45 == null) {
                cls45 = class$(Constants.BOOLEAN_CLASS);
                f115380l = cls45;
            }
            hashMap3.put(cls44, cls45.getMethod("valueOf", clsArr));
            Class cls46 = f115381m;
            if (cls46 == null) {
                cls46 = class$("java.lang.Byte");
                f115381m = cls46;
            }
            Class cls47 = f115381m;
            if (cls47 == null) {
                cls47 = class$("java.lang.Byte");
                f115381m = cls47;
            }
            hashMap3.put(cls46, cls47.getMethod("valueOf", clsArr));
            Class cls48 = f115383o;
            if (cls48 == null) {
                cls48 = class$(Constants.DOUBLE_CLASS);
                f115383o = cls48;
            }
            Class cls49 = f115383o;
            if (cls49 == null) {
                cls49 = class$(Constants.DOUBLE_CLASS);
                f115383o = cls49;
            }
            hashMap3.put(cls48, cls49.getMethod("valueOf", clsArr));
            Class cls50 = f115384p;
            if (cls50 == null) {
                cls50 = class$("java.lang.Float");
                f115384p = cls50;
            }
            Class cls51 = f115384p;
            if (cls51 == null) {
                cls51 = class$("java.lang.Float");
                f115384p = cls51;
            }
            hashMap3.put(cls50, cls51.getMethod("valueOf", clsArr));
            Class cls52 = f115385q;
            if (cls52 == null) {
                cls52 = class$(Constants.INTEGER_CLASS);
                f115385q = cls52;
            }
            Class cls53 = f115385q;
            if (cls53 == null) {
                cls53 = class$(Constants.INTEGER_CLASS);
                f115385q = cls53;
            }
            hashMap3.put(cls52, cls53.getMethod("valueOf", clsArr));
            Class cls54 = f115386r;
            if (cls54 == null) {
                cls54 = class$("java.lang.Long");
                f115386r = cls54;
            }
            Class cls55 = f115386r;
            if (cls55 == null) {
                cls55 = class$("java.lang.Long");
                f115386r = cls55;
            }
            hashMap3.put(cls54, cls55.getMethod("valueOf", clsArr));
            Class cls56 = f115387s;
            if (cls56 == null) {
                cls56 = class$("java.lang.Short");
                f115387s = cls56;
            }
            Class cls57 = f115387s;
            if (cls57 == null) {
                cls57 = class$("java.lang.Short");
                f115387s = cls57;
            }
            hashMap3.put(cls56, cls57.getMethod("valueOf", clsArr));
        } catch (Exception e) {
            e.printStackTrace();
        }
        Class[] clsArr2 = new Class[1];
        Class cls58 = f115388t;
        if (cls58 == null) {
            cls58 = class$("java.lang.String");
            f115388t = cls58;
        }
        clsArr2[0] = cls58;
        f115372d = clsArr2;
        int intValue = Integer.getInteger("org.mortbay.util.TypeUtil.IntegerCacheSize", 600).intValue();
        f115373e = intValue;
        f115374f = new Integer[intValue];
        f115375g = new String[intValue];
        f115376h = new Integer(-1);
        int intValue2 = Integer.getInteger("org.mortbay.util.TypeUtil.LongCacheSize", 64).intValue();
        f115377i = intValue2;
        f115378j = new Long[intValue2];
        f115379k = new Long(-1L);
    }

    public static /* synthetic */ Class class$(String str) {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException e) {
            throw new NoClassDefFoundError().initCause(e);
        }
    }

    public static byte convertHexDigit(byte b) {
        int i;
        if (b < 48 || b > 57) {
            byte b2 = 97;
            if (b < 97 || b > 102) {
                b2 = 65;
                if (b < 65 || b > 70) {
                    return (byte) 0;
                }
            }
            i = (b - b2) + 10;
        } else {
            i = b - 48;
        }
        return (byte) i;
    }

    public static void dump(Class cls) {
        PrintStream printStream = System.err;
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("Dump: ");
        stringBuffer.append(cls);
        printStream.println(stringBuffer.toString());
        dump(cls.getClassLoader());
    }

    public static byte[] fromHexString(String str) {
        if (str.length() % 2 != 0) {
            throw new IllegalArgumentException(str);
        }
        int length = str.length() / 2;
        byte[] bArr = new byte[length];
        for (int i = 0; i < length; i++) {
            int i2 = i * 2;
            bArr[i] = (byte) (Integer.parseInt(str.substring(i2, i2 + 2), 16) & 255);
        }
        return bArr;
    }

    public static Class fromName(String str) {
        return (Class) f115369a.get(str);
    }

    public static URL jarFor(String str) {
        try {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append(str.replace('.', '/'));
            stringBuffer.append(ClassPath.f35080d);
            String url = Loader.getResource(null, stringBuffer.toString(), false).toString();
            if (url.startsWith("jar:file:")) {
                return new URL(url.substring(4, url.indexOf("!/")));
            }
        } catch (Exception e) {
            Log.ignore(e);
        }
        return null;
    }

    public static Integer newInteger(int i) {
        if (i < 0 || i >= f115373e) {
            return i == -1 ? f115376h : new Integer(i);
        }
        Integer[] numArr = f115374f;
        if (numArr[i] == null) {
            numArr[i] = new Integer(i);
        }
        return f115374f[i];
    }

    public static Long newLong(long j) {
        if (j < 0 || j >= f115377i) {
            return j == -1 ? f115379k : new Long(j);
        }
        Long[] lArr = f115378j;
        int i = (int) j;
        if (lArr[i] == null) {
            lArr[i] = new Long(j);
        }
        return f115378j[i];
    }

    public static byte[] parseBytes(String str, int i) {
        byte[] bArr = new byte[str.length() / 2];
        for (int i2 = 0; i2 < str.length(); i2 += 2) {
            bArr[i2 / 2] = (byte) parseInt(str, i2, 2, i);
        }
        return bArr;
    }

    /*  JADX ERROR: JadxRuntimeException in pass: SimplifyVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r2v2 int, still in use, count: 1, list:
          (r2v2 int) from 0x0023: ARITH (r3v2 int) = (r2v2 int) + (-97 int)
        	at jadx.core.utils.InsnRemover.removeSsaVar(InsnRemover.java:151)
        	at jadx.core.utils.InsnRemover.unbindResult(InsnRemover.java:116)
        	at jadx.core.utils.InsnRemover.unbindInsn(InsnRemover.java:80)
        	at jadx.core.utils.InsnRemover.unbindArgUsage(InsnRemover.java:163)
        	at jadx.core.utils.InsnRemover.unbindAllArgs(InsnRemover.java:95)
        	at jadx.core.utils.InsnRemover.unbindInsn(InsnRemover.java:79)
        	at jadx.core.utils.InsnRemover.unbindArgUsage(InsnRemover.java:163)
        	at jadx.core.dex.instructions.args.InsnArg.wrapInstruction(InsnArg.java:140)
        	at jadx.core.dex.visitors.SimplifyVisitor.simplifyArgs(SimplifyVisitor.java:116)
        	at jadx.core.dex.visitors.SimplifyVisitor.simplifyInsn(SimplifyVisitor.java:132)
        	at jadx.core.dex.visitors.SimplifyVisitor.simplifyBlock(SimplifyVisitor.java:86)
        	at jadx.core.dex.visitors.SimplifyVisitor.visit(SimplifyVisitor.java:71)
        */
    public static int parseInt(java.lang.String r5, int r6, int r7, int r8) throws java.lang.NumberFormatException {
        /*
            if (r7 >= 0) goto L7
            int r7 = r5.length()
            int r7 = r7 - r6
        L7:
            r0 = 0
            r1 = r0
        L9:
            if (r0 >= r7) goto L39
            int r2 = r6 + r0
            char r2 = r5.charAt(r2)
            int r3 = r2 + (-48)
            r4 = 10
            if (r3 < 0) goto L1b
            if (r3 >= r8) goto L1b
            if (r3 < r4) goto L25
        L1b:
            int r2 = r2 + 10
            int r3 = r2 + (-65)
            if (r3 < r4) goto L23
            if (r3 < r8) goto L25
        L23:
            int r3 = r2 + (-97)
        L25:
            if (r3 < 0) goto L2e
            if (r3 >= r8) goto L2e
            int r1 = r1 * r8
            int r1 = r1 + r3
            int r0 = r0 + 1
            goto L9
        L2e:
            java.lang.NumberFormatException r8 = new java.lang.NumberFormatException
            int r7 = r7 + r6
            java.lang.String r5 = r5.substring(r6, r7)
            r8.<init>(r5)
            throw r8
        L39:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mortbay.util.TypeUtil.parseInt(java.lang.String, int, int, int):int");
    }

    public static byte[] readLine(InputStream inputStream) throws IOException {
        int read;
        byte[] bArr = new byte[256];
        int i = 0;
        int i2 = 0;
        while (true) {
            read = inputStream.read();
            if (read < 0) {
                break;
            }
            i++;
            if (i != 1 || read != f115368LF) {
                if (read == f115367CR || read == f115368LF) {
                    break;
                }
                if (i2 >= bArr.length) {
                    byte[] bArr2 = new byte[bArr.length + 256];
                    System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
                    bArr = bArr2;
                }
                bArr[i2] = (byte) read;
                i2++;
            }
        }
        if (read == -1 && i2 == 0) {
            return null;
        }
        if (read == f115367CR && inputStream.available() >= 1 && inputStream.markSupported()) {
            inputStream.mark(1);
            if (inputStream.read() != f115368LF) {
                inputStream.reset();
            }
        }
        byte[] bArr3 = new byte[i2];
        System.arraycopy(bArr, 0, bArr3, 0, i2);
        return bArr3;
    }

    public static String toHexString(byte[] bArr) {
        StringBuffer stringBuffer = new StringBuffer();
        for (byte b : bArr) {
            int i = b & 255;
            int i2 = ((i / 16) % 16) + 48;
            if (i2 > 57) {
                i2 = ((i2 - 48) - 10) + 65;
            }
            stringBuffer.append((char) i2);
            int i3 = (i % 16) + 48;
            if (i3 > 57) {
                i3 = ((i3 - 48) - 10) + 97;
            }
            stringBuffer.append((char) i3);
        }
        return stringBuffer.toString();
    }

    public static String toName(Class cls) {
        return (String) f115370b.get(cls);
    }

    public static String toString(int i) {
        if (i < 0 || i >= f115373e) {
            return i == -1 ? "-1" : Integer.toString(i);
        }
        String[] strArr = f115375g;
        if (strArr[i] == null) {
            strArr[i] = Integer.toString(i);
        }
        return f115375g[i];
    }

    public static Object valueOf(Class cls, String str) {
        try {
            Class cls2 = f115388t;
            if (cls2 == null) {
                cls2 = class$("java.lang.String");
                f115388t = cls2;
            }
            if (cls.equals(cls2)) {
                return str;
            }
            Method method = (Method) f115371c.get(cls);
            if (method != null) {
                return method.invoke(null, str);
            }
            if (!cls.equals(Character.TYPE)) {
                Class cls3 = f115382n;
                if (cls3 == null) {
                    cls3 = class$("java.lang.Character");
                    f115382n = cls3;
                }
                if (!cls.equals(cls3)) {
                    return cls.getConstructor(f115372d).newInstance(str);
                }
            }
            return new Character(str.charAt(0));
        } catch (IllegalAccessException | InstantiationException | NoSuchMethodException unused) {
            return null;
        } catch (InvocationTargetException e) {
            if (e.getTargetException() instanceof Error) {
                throw ((Error) e.getTargetException());
            }
            return null;
        }
    }

    public static void dump(ClassLoader classLoader) {
        System.err.println("Dump Loaders:");
        while (classLoader != null) {
            PrintStream printStream = System.err;
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("  loader ");
            stringBuffer.append(classLoader);
            printStream.println(stringBuffer.toString());
            classLoader = classLoader.getParent();
        }
    }

    /*  JADX ERROR: JadxRuntimeException in pass: SimplifyVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r2v4 int, still in use, count: 1, list:
          (r2v4 int) from 0x0021: ARITH (r3v2 int) = (r2v4 int) + (-97 int)
        	at jadx.core.utils.InsnRemover.removeSsaVar(InsnRemover.java:151)
        	at jadx.core.utils.InsnRemover.unbindResult(InsnRemover.java:116)
        	at jadx.core.utils.InsnRemover.unbindInsn(InsnRemover.java:80)
        	at jadx.core.utils.InsnRemover.unbindArgUsage(InsnRemover.java:163)
        	at jadx.core.utils.InsnRemover.unbindAllArgs(InsnRemover.java:95)
        	at jadx.core.utils.InsnRemover.unbindInsn(InsnRemover.java:79)
        	at jadx.core.utils.InsnRemover.unbindArgUsage(InsnRemover.java:163)
        	at jadx.core.dex.instructions.args.InsnArg.wrapInstruction(InsnArg.java:140)
        	at jadx.core.dex.visitors.SimplifyVisitor.simplifyArgs(SimplifyVisitor.java:116)
        	at jadx.core.dex.visitors.SimplifyVisitor.simplifyInsn(SimplifyVisitor.java:132)
        	at jadx.core.dex.visitors.SimplifyVisitor.simplifyBlock(SimplifyVisitor.java:86)
        	at jadx.core.dex.visitors.SimplifyVisitor.visit(SimplifyVisitor.java:71)
        */
    public static int parseInt(byte[] r5, int r6, int r7, int r8) throws java.lang.NumberFormatException {
        /*
            if (r7 >= 0) goto L4
            int r7 = r5.length
            int r7 = r7 - r6
        L4:
            r0 = 0
            r1 = r0
        L6:
            if (r0 >= r7) goto L37
            int r2 = r6 + r0
            r2 = r5[r2]
            r2 = r2 & 255(0xff, float:3.57E-43)
            char r2 = (char) r2
            int r3 = r2 + (-48)
            r4 = 10
            if (r3 < 0) goto L19
            if (r3 >= r8) goto L19
            if (r3 < r4) goto L23
        L19:
            int r2 = r2 + 10
            int r3 = r2 + (-65)
            if (r3 < r4) goto L21
            if (r3 < r8) goto L23
        L21:
            int r3 = r2 + (-97)
        L23:
            if (r3 < 0) goto L2c
            if (r3 >= r8) goto L2c
            int r1 = r1 * r8
            int r1 = r1 + r3
            int r0 = r0 + 1
            goto L6
        L2c:
            java.lang.NumberFormatException r8 = new java.lang.NumberFormatException
            java.lang.String r0 = new java.lang.String
            r0.<init>(r5, r6, r7)
            r8.<init>(r0)
            throw r8
        L37:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mortbay.util.TypeUtil.parseInt(byte[], int, int, int):int");
    }

    public static String toString(long j) {
        if (j < 0 || j >= f115373e) {
            return j == -1 ? "-1" : Long.toString(j);
        }
        String[] strArr = f115375g;
        int i = (int) j;
        if (strArr[i] == null) {
            strArr[i] = Long.toString(j);
        }
        return f115375g[i];
    }

    public static String toHexString(byte[] bArr, int i, int i2) {
        StringBuffer stringBuffer = new StringBuffer();
        for (int i3 = i; i3 < i + i2; i3++) {
            int i4 = bArr[i3] & 255;
            int i5 = ((i4 / 16) % 16) + 48;
            if (i5 > 57) {
                i5 = ((i5 - 48) - 10) + 65;
            }
            stringBuffer.append((char) i5);
            int i6 = (i4 % 16) + 48;
            if (i6 > 57) {
                i6 = ((i6 - 48) - 10) + 97;
            }
            stringBuffer.append((char) i6);
        }
        return stringBuffer.toString();
    }

    public static Object valueOf(String str, String str2) {
        return valueOf(fromName(str), str2);
    }

    public static String toString(byte[] bArr, int i) {
        StringBuffer stringBuffer = new StringBuffer();
        for (int i2 : bArr) {
            int i3 = i2 & 255;
            int i4 = ((i3 / i) % i) + 48;
            if (i4 > 57) {
                i4 = ((i4 - 48) - 10) + 97;
            }
            stringBuffer.append((char) i4);
            int i5 = (i3 % i) + 48;
            if (i5 > 57) {
                i5 = ((i5 - 48) - 10) + 97;
            }
            stringBuffer.append((char) i5);
        }
        return stringBuffer.toString();
    }
}
