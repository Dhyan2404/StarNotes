package com.alibaba.fastjson2.util;

import com.alibaba.fastjson2.JSON;
import com.alibaba.fastjson2.JSONArray;
import com.alibaba.fastjson2.JSONB;
import com.alibaba.fastjson2.JSONException;
import com.alibaba.fastjson2.JSONFactory;
import com.alibaba.fastjson2.JSONObject;
import com.alibaba.fastjson2.JSONReader;
import com.alibaba.fastjson2.reader.ObjectReader;
import com.alibaba.fastjson2.reader.ObjectReaderImplEnum;
import com.alibaba.fastjson2.reader.ObjectReaderImplEnum2X4;
import com.alibaba.fastjson2.reader.ObjectReaderImplInstant;
import com.alibaba.fastjson2.reader.ObjectReaderProvider;
import com.alibaba.fastjson2.writer.ObjectWriter;
import com.alibaba.fastjson2.writer.ObjectWriterPrimitiveImpl;
import com.couchbase.lite.internal.BaseTLSIdentity;
import com.google.common.xml.XmlEscapers;
import com.google.i18n.phonenumbers.PhoneNumberUtil;
import com.google.protobuf.C6883t;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import com.sunia.HTREnginev2.rve;
import com.thegrizzlylabs.sardineandroid.util.SardineUtil;
import java.io.IOException;
import java.lang.reflect.Array;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Proxy;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.lang.reflect.WildcardType;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.sql.Time;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.time.Instant;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.ZonedDateTime;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.BitSet;
import java.util.Calendar;
import java.util.Collection;
import java.util.Collections;
import java.util.Currency;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Hashtable;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.LinkedList;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;
import java.util.TreeSet;
import java.util.UUID;
import java.util.WeakHashMap;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.ConcurrentSkipListMap;
import java.util.concurrent.ConcurrentSkipListSet;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import java.util.function.Function;
import okhttp3.internal.publicsuffix.PublicSuffixDatabase;
import org.apache.logging.log4j.util.Chars;

/* loaded from: classes3.dex */
public class TypeUtils {

    /* renamed from: f */
    public static final BigInteger[] f12808f;

    /* renamed from: g */
    public static volatile BigInteger[] f12809g;

    /* renamed from: h */
    public static final /* synthetic */ boolean f12810h = false;
    public static final Class CLASS_SINGLE_SET = Collections.singleton(1).getClass();
    public static final Class CLASS_SINGLE_LIST = Collections.singletonList(1).getClass();
    public static final Class CLASS_UNMODIFIABLE_LIST = Collections.unmodifiableList(new ArrayList()).getClass();
    public static final ParameterizedType PARAM_TYPE_LIST_STR = new ParameterizedTypeImpl(List.class, String.class);
    public static final double[] SMALL_10_POW = {1.0d, 10.0d, 100.0d, 1000.0d, 10000.0d, 100000.0d, 1000000.0d, 1.0E7d, 1.0E8d, 1.0E9d, 1.0E10d, 1.0E11d, 1.0E12d, 1.0E13d, 1.0E14d, 1.0E15d, 1.0E16d, 1.0E17d, 1.0E18d, 1.0E19d, 1.0E20d, 1.0E21d, 1.0E22d};

    /* renamed from: a */
    public static final float[] f12803a = {1.0f, 10.0f, 100.0f, 1000.0f, 10000.0f, 100000.0f, 1000000.0f, 1.0E7f, 1.0E8f, 1.0E9f, 1.0E10f};

    /* renamed from: b */
    public static final double[] f12804b = {1.0E16d, 1.0E32d, 1.0E64d, 1.0E128d, 1.0E256d};

    /* renamed from: c */
    public static final double[] f12805c = {1.0E-16d, 1.0E-32d, 1.0E-64d, 1.0E-128d, 1.0E-256d};

    /* renamed from: d */
    public static final C1750a f12806d = new C1750a();

    /* renamed from: e */
    public static final AtomicReferenceFieldUpdater<C1750a, char[]> f12807e = AtomicReferenceFieldUpdater.newUpdater(C1750a.class, char[].class, "a");

    /* renamed from: com.alibaba.fastjson2.util.TypeUtils$a */
    /* loaded from: classes3.dex */
    public static class C1750a {

        /* renamed from: a */
        public volatile char[] f12811a;
    }

    /* renamed from: com.alibaba.fastjson2.util.TypeUtils$b */
    /* loaded from: classes3.dex */
    public static final class C1751b {

        /* renamed from: a */
        public static final Map<Class, String> f12812a;

        /* renamed from: b */
        public static final Map<String, Class> f12813b;

        static {
            IdentityHashMap identityHashMap = new IdentityHashMap(192);
            f12812a = identityHashMap;
            ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap(256);
            f12813b = concurrentHashMap;
            identityHashMap.put(Byte.TYPE, "B");
            identityHashMap.put(Short.TYPE, "S");
            identityHashMap.put(Integer.TYPE, "I");
            identityHashMap.put(Long.TYPE, "J");
            identityHashMap.put(Float.TYPE, "F");
            identityHashMap.put(Double.TYPE, SardineUtil.DEFAULT_NAMESPACE_PREFIX);
            identityHashMap.put(Character.TYPE, BaseTLSIdentity.CERT_ATTRIBUTE_COUNTRY);
            identityHashMap.put(Boolean.TYPE, Constants.HASIDCALL_INDEX_SIG);
            identityHashMap.put(Object[].class, "[O");
            identityHashMap.put(Object[][].class, "[[O");
            identityHashMap.put(byte[].class, "[B");
            identityHashMap.put(byte[][].class, "[[B");
            identityHashMap.put(short[].class, "[S");
            identityHashMap.put(short[][].class, "[[S");
            identityHashMap.put(int[].class, Constants.TYPES_INDEX_SIG);
            identityHashMap.put(int[][].class, "[[I");
            identityHashMap.put(long[].class, "[J");
            identityHashMap.put(long[][].class, "[[J");
            identityHashMap.put(float[].class, "[F");
            identityHashMap.put(float[][].class, "[[F");
            identityHashMap.put(double[].class, "[D");
            identityHashMap.put(double[][].class, "[[D");
            identityHashMap.put(char[].class, Constants.STATIC_CHAR_DATA_FIELD_SIG);
            identityHashMap.put(char[][].class, "[[C");
            identityHashMap.put(boolean[].class, "[Z");
            identityHashMap.put(boolean[][].class, "[[Z");
            identityHashMap.put(Byte[].class, "[Byte");
            identityHashMap.put(Byte[][].class, "[[Byte");
            identityHashMap.put(Short[].class, "[Short");
            identityHashMap.put(Short[][].class, "[[Short");
            identityHashMap.put(Integer[].class, "[Integer");
            identityHashMap.put(Integer[][].class, "[[Integer");
            identityHashMap.put(Long[].class, "[Long");
            identityHashMap.put(Long[][].class, "[[Long");
            identityHashMap.put(Float[].class, "[Float");
            identityHashMap.put(Float[][].class, "[[Float");
            identityHashMap.put(Double[].class, "[Double");
            identityHashMap.put(Double[][].class, "[[Double");
            identityHashMap.put(Character[].class, "[Character");
            identityHashMap.put(Character[][].class, "[[Character");
            identityHashMap.put(Boolean[].class, "[Boolean");
            identityHashMap.put(Boolean[][].class, "[[Boolean");
            identityHashMap.put(String[].class, "[String");
            identityHashMap.put(String[][].class, "[[String");
            identityHashMap.put(BigDecimal[].class, "[BigDecimal");
            identityHashMap.put(BigDecimal[][].class, "[[BigDecimal");
            identityHashMap.put(BigInteger[].class, "[BigInteger");
            identityHashMap.put(BigInteger[][].class, "[[BigInteger");
            identityHashMap.put(UUID[].class, "[UUID");
            identityHashMap.put(UUID[][].class, "[[UUID");
            identityHashMap.put(Object.class, "Object");
            identityHashMap.put(HashMap.class, "M");
            concurrentHashMap.put("HashMap", HashMap.class);
            concurrentHashMap.put("java.util.HashMap", HashMap.class);
            identityHashMap.put(LinkedHashMap.class, "LM");
            concurrentHashMap.put("LinkedHashMap", LinkedHashMap.class);
            concurrentHashMap.put("java.util.LinkedHashMap", LinkedHashMap.class);
            identityHashMap.put(TreeMap.class, "TM");
            concurrentHashMap.put("TreeMap", TreeMap.class);
            identityHashMap.put(ArrayList.class, "A");
            concurrentHashMap.put("ArrayList", ArrayList.class);
            concurrentHashMap.put("java.util.ArrayList", ArrayList.class);
            identityHashMap.put(LinkedList.class, "LA");
            concurrentHashMap.put("LA", LinkedList.class);
            concurrentHashMap.put("LinkedList", LinkedList.class);
            concurrentHashMap.put("java.util.LinkedList", LinkedList.class);
            concurrentHashMap.put("java.util.concurrent.ConcurrentLinkedQueue", ConcurrentLinkedQueue.class);
            identityHashMap.put(HashSet.class, "HashSet");
            identityHashMap.put(TreeSet.class, "TreeSet");
            identityHashMap.put(LinkedHashSet.class, "LinkedHashSet");
            identityHashMap.put(ConcurrentHashMap.class, "ConcurrentHashMap");
            identityHashMap.put(ConcurrentLinkedQueue.class, "ConcurrentLinkedQueue");
            identityHashMap.put(JSONObject.class, "JSONObject");
            identityHashMap.put(JSONArray.class, "JSONArray");
            identityHashMap.put(Currency.class, "Currency");
            identityHashMap.put(TimeUnit.class, "TimeUnit");
            Class[] clsArr = {Object.class, Cloneable.class, AutoCloseable.class, Exception.class, RuntimeException.class, IllegalAccessError.class, IllegalAccessException.class, IllegalArgumentException.class, IllegalMonitorStateException.class, IllegalStateException.class, IllegalThreadStateException.class, IndexOutOfBoundsException.class, InstantiationError.class, InstantiationException.class, InternalError.class, InterruptedException.class, LinkageError.class, NegativeArraySizeException.class, NoClassDefFoundError.class, NoSuchFieldError.class, NoSuchFieldException.class, NoSuchMethodError.class, NoSuchMethodException.class, NullPointerException.class, NumberFormatException.class, OutOfMemoryError.class, SecurityException.class, StackOverflowError.class, StringIndexOutOfBoundsException.class, TypeNotPresentException.class, VerifyError.class, StackTraceElement.class, Hashtable.class, TreeMap.class, IdentityHashMap.class, WeakHashMap.class, HashSet.class, LinkedHashSet.class, TreeSet.class, LinkedList.class, TimeUnit.class, ConcurrentHashMap.class, AtomicInteger.class, AtomicLong.class, Collections.EMPTY_MAP.getClass(), Boolean.class, Character.class, Byte.class, Short.class, Integer.class, Long.class, Float.class, Double.class, Number.class, String.class, BigDecimal.class, BigInteger.class, BitSet.class, Calendar.class, Date.class, Locale.class, UUID.class, Currency.class, SimpleDateFormat.class, JSONObject.class, JSONArray.class, ConcurrentSkipListMap.class, ConcurrentSkipListSet.class};
            for (int i = 0; i < 68; i++) {
                Class cls = clsArr[i];
                String simpleName = cls.getSimpleName();
                Map<String, Class> map = f12813b;
                map.put(simpleName, cls);
                map.put(cls.getName(), cls);
                f12812a.put(cls, simpleName);
            }
            Map<String, Class> map2 = f12813b;
            map2.put("JO10", JSONObject1O.class);
            map2.put("[O", Object[].class);
            map2.put("[Ljava.lang.Object;", Object[].class);
            map2.put("[java.lang.Object", Object[].class);
            map2.put("[Object", Object[].class);
            map2.put("StackTraceElement", StackTraceElement.class);
            map2.put("[StackTraceElement", StackTraceElement[].class);
            map2.put("java.util.Collections$UnmodifiableMap", Collections.unmodifiableMap(Collections.EMPTY_MAP).getClass());
            map2.put("java.util.Collections$UnmodifiableCollection", Collections.unmodifiableCollection(Collections.EMPTY_LIST).getClass());
            Class classJSONObject1x = JSONFactory.getClassJSONObject1x();
            if (classJSONObject1x != null) {
                map2.put("JO1", classJSONObject1x);
                map2.put(classJSONObject1x.getName(), classJSONObject1x);
            }
            Class classJSONArray1x = JSONFactory.getClassJSONArray1x();
            if (classJSONArray1x != null) {
                map2.put("JA1", classJSONArray1x);
                map2.put(classJSONArray1x.getName(), classJSONArray1x);
            }
            Map<Class, String> map3 = f12812a;
            map3.put(new HashMap().keySet().getClass(), "Set");
            map3.put(new LinkedHashMap().keySet().getClass(), "Set");
            map3.put(new TreeMap().keySet().getClass(), "Set");
            map3.put(new ConcurrentHashMap().keySet().getClass(), "Set");
            map3.put(new ConcurrentSkipListMap().keySet().getClass(), "Set");
            map2.put("Set", HashSet.class);
            map3.put(new HashMap().values().getClass(), C6883t.f38147a);
            map3.put(new LinkedHashMap().values().getClass(), C6883t.f38147a);
            map3.put(new TreeMap().values().getClass(), C6883t.f38147a);
            map3.put(new ConcurrentHashMap().values().getClass(), C6883t.f38147a);
            map3.put(new ConcurrentSkipListMap().values().getClass(), C6883t.f38147a);
            map2.put(C6883t.f38147a, ArrayList.class);
            map2.put("java.util.ImmutableCollections$Map1", HashMap.class);
            map2.put("java.util.ImmutableCollections$MapN", LinkedHashMap.class);
            map2.put("java.util.ImmutableCollections$Set12", LinkedHashSet.class);
            map2.put("java.util.ImmutableCollections$SetN", LinkedHashSet.class);
            map2.put("java.util.ImmutableCollections$List12", ArrayList.class);
            map2.put("java.util.ImmutableCollections$ListN", ArrayList.class);
            map2.put("java.util.ImmutableCollections$SubList", ArrayList.class);
            for (Map.Entry<Class, String> entry : map3.entrySet()) {
                String value = entry.getValue();
                Map<String, Class> map4 = f12813b;
                if (map4.get(value) == null) {
                    map4.put(value, entry.getKey());
                }
            }
        }
    }

    static {
        BigInteger[] bigIntegerArr = new BigInteger[19];
        bigIntegerArr[0] = BigInteger.ONE;
        bigIntegerArr[1] = BigInteger.TEN;
        long j = 10;
        for (int i = 2; i < 19; i++) {
            j *= 10;
            bigIntegerArr[i] = BigInteger.valueOf(j);
        }
        f12808f = bigIntegerArr;
    }

    /* renamed from: a */
    public static BigInteger m7599a(int i) {
        BigInteger[] bigIntegerArr = f12808f;
        if (i < bigIntegerArr.length) {
            return bigIntegerArr[i];
        }
        BigInteger[] bigIntegerArr2 = f12809g;
        if (bigIntegerArr2 == null) {
            BigInteger[] bigIntegerArr3 = new BigInteger[128];
            BigInteger bigInteger = bigIntegerArr[18];
            for (int i2 = 19; i2 < 128; i2++) {
                bigInteger = bigInteger.multiply(BigInteger.TEN);
                bigIntegerArr3[i2] = bigInteger;
            }
            f12809g = bigIntegerArr3;
            bigIntegerArr2 = bigIntegerArr3;
        }
        return bigIntegerArr2[i];
    }

    /* renamed from: b */
    public static char[] m7600b(byte[] bArr) {
        char[] cArr = new char[bArr.length];
        for (int i = 0; i < bArr.length; i++) {
            cArr[i] = (char) bArr[i];
        }
        return cArr;
    }

    /* renamed from: c */
    public static boolean m7601c(String str, int i) {
        int length;
        int length2;
        if (str == null || (length2 = (length = str.length()) - i) < 7 || length2 > 25) {
            return false;
        }
        int i2 = i;
        int i3 = 0;
        while (i < length) {
            char charAt = str.charAt(i);
            if (charAt == '.' || i == length - 1) {
                int i4 = charAt == '.' ? i : i + 1;
                int i5 = i4 - i2;
                if (i5 == 1) {
                    char charAt2 = str.charAt(i4 - 1);
                    if (charAt2 < '0' || charAt2 > '9') {
                        return false;
                    }
                } else if (i5 == 2) {
                    char charAt3 = str.charAt(i4 - 2);
                    char charAt4 = str.charAt(i4 - 1);
                    if (charAt3 < '0' || charAt3 > '9' || charAt4 < '0' || charAt4 > '9') {
                        return false;
                    }
                } else {
                    if (i5 != 3) {
                        return false;
                    }
                    char charAt5 = str.charAt(i4 - 3);
                    char charAt6 = str.charAt(i4 - 2);
                    char charAt7 = str.charAt(i4 - 1);
                    if (charAt5 < '0' || charAt5 > '2' || charAt6 < '0' || charAt6 > '9' || charAt7 < '0' || charAt7 > '9' || ((charAt5 - '0') * 100) + ((charAt6 - '0') * 10) + (charAt7 - '0') > 255) {
                        return false;
                    }
                }
                if (charAt == '.') {
                    i3++;
                    i2 = i + 1;
                }
            }
            i++;
        }
        return i3 == 3;
    }

    public static Object[] cast(Object obj, Type[] typeArr) {
        if (obj == null) {
            return null;
        }
        int length = typeArr.length;
        Object[] objArr = new Object[length];
        int i = 0;
        if (obj instanceof Collection) {
            Iterator it2 = ((Collection) obj).iterator();
            while (it2.hasNext()) {
                objArr[i] = cast(it2.next(), typeArr[i]);
                i++;
            }
        } else {
            Class<?> cls = obj.getClass();
            if (cls.isArray()) {
                int length2 = Array.getLength(obj);
                while (i < length && i < length2) {
                    objArr[i] = cast(Array.get(obj, i), typeArr[i]);
                    i++;
                }
            } else {
                throw new JSONException("can not cast to types " + JSON.toJSONString(typeArr) + " from " + cls);
            }
        }
        return objArr;
    }

    public static int compare(Object obj, Object obj2) {
        Object bigDecimal;
        Object d;
        if (obj.getClass() == obj2.getClass()) {
            return ((Comparable) obj).compareTo(obj2);
        }
        Class<?> cls = obj.getClass();
        Class<?> cls2 = obj2.getClass();
        if (cls == BigDecimal.class) {
            if (cls2 == Integer.class) {
                bigDecimal = new BigDecimal(((Integer) obj2).intValue());
            } else {
                if (cls2 != Long.class) {
                    if (cls2 == Float.class) {
                        obj2 = BigDecimal.valueOf(((Float) obj2).floatValue());
                    } else if (cls2 == Double.class) {
                        obj2 = BigDecimal.valueOf(((Double) obj2).doubleValue());
                    } else if (cls2 == BigInteger.class) {
                        bigDecimal = new BigDecimal((BigInteger) obj2);
                    }
                    return ((Comparable) obj).compareTo(obj2);
                }
                bigDecimal = new BigDecimal(((Long) obj2).longValue());
            }
            obj2 = bigDecimal;
            return ((Comparable) obj).compareTo(obj2);
        }
        if (cls == BigInteger.class) {
            if (cls2 == Integer.class) {
                obj2 = BigInteger.valueOf(((Integer) obj2).intValue());
            } else if (cls2 == Long.class) {
                obj2 = BigInteger.valueOf(((Long) obj2).longValue());
            } else {
                if (cls2 == Float.class) {
                    obj2 = BigDecimal.valueOf(((Float) obj2).floatValue());
                    d = new BigDecimal((BigInteger) obj);
                } else if (cls2 == Double.class) {
                    obj2 = BigDecimal.valueOf(((Double) obj2).doubleValue());
                    d = new BigDecimal((BigInteger) obj);
                } else if (cls2 == BigDecimal.class) {
                    d = new BigDecimal((BigInteger) obj);
                }
                obj = d;
            }
        } else if (cls == Long.class) {
            if (cls2 == Integer.class) {
                bigDecimal = new Long(((Integer) obj2).intValue());
            } else {
                if (cls2 == BigDecimal.class) {
                    d = new BigDecimal(((Long) obj).longValue());
                } else if (cls2 == Float.class) {
                    d = new Float((float) ((Long) obj).longValue());
                } else if (cls2 == Double.class) {
                    d = new Double(((Long) obj).longValue());
                } else if (cls2 == BigInteger.class) {
                    obj = BigInteger.valueOf(((Long) obj).longValue());
                } else if (cls2 == String.class) {
                    obj = BigDecimal.valueOf(((Long) obj).longValue());
                    bigDecimal = new BigDecimal((String) obj2);
                }
                obj = d;
            }
            obj2 = bigDecimal;
        } else if (cls == Integer.class) {
            if (cls2 == Long.class) {
                d = new Long(((Integer) obj).intValue());
            } else if (cls2 == BigDecimal.class) {
                d = new BigDecimal(((Integer) obj).intValue());
            } else if (cls2 == BigInteger.class) {
                obj = BigInteger.valueOf(((Integer) obj).intValue());
            } else if (cls2 == Float.class) {
                d = new Float(((Integer) obj).intValue());
            } else if (cls2 == Double.class) {
                d = new Double(((Integer) obj).intValue());
            } else if (cls2 == String.class) {
                obj = BigDecimal.valueOf(((Integer) obj).intValue());
                bigDecimal = new BigDecimal((String) obj2);
                obj2 = bigDecimal;
            }
            obj = d;
        } else if (cls == Double.class) {
            if (cls2 == Integer.class) {
                bigDecimal = new Double(((Integer) obj2).intValue());
            } else if (cls2 == Long.class) {
                bigDecimal = new Double(((Long) obj2).longValue());
            } else if (cls2 == Float.class) {
                bigDecimal = new Double(((Float) obj2).floatValue());
            } else if (cls2 == BigDecimal.class) {
                obj = BigDecimal.valueOf(((Double) obj).doubleValue());
            } else if (cls2 == String.class) {
                obj = BigDecimal.valueOf(((Double) obj).doubleValue());
                bigDecimal = new BigDecimal((String) obj2);
            } else if (cls2 == BigInteger.class) {
                obj = BigDecimal.valueOf(((Double) obj).doubleValue());
                bigDecimal = new BigDecimal((BigInteger) obj2);
            }
            obj2 = bigDecimal;
        } else if (cls == Float.class) {
            if (cls2 == Integer.class) {
                bigDecimal = new Float(((Integer) obj2).intValue());
            } else if (cls2 == Long.class) {
                bigDecimal = new Float((float) ((Long) obj2).longValue());
            } else if (cls2 == Double.class) {
                d = new Double(((Float) obj).floatValue());
                obj = d;
            } else if (cls2 == BigDecimal.class) {
                obj = BigDecimal.valueOf(((Float) obj).floatValue());
            } else if (cls2 == String.class) {
                obj = BigDecimal.valueOf(((Float) obj).floatValue());
                bigDecimal = new BigDecimal((String) obj2);
            } else if (cls2 == BigInteger.class) {
                obj = BigDecimal.valueOf(((Float) obj).floatValue());
                bigDecimal = new BigDecimal((BigInteger) obj2);
            }
            obj2 = bigDecimal;
        } else if (cls == String.class) {
            String str = (String) obj;
            if (cls2 == Integer.class) {
                NumberFormatException e = null;
                try {
                    obj = Integer.valueOf(Integer.parseInt(str));
                    e = null;
                } catch (NumberFormatException e2) {
                    e = e2;
                }
                if (e != null) {
                    try {
                        obj = Long.valueOf(Long.parseLong(str));
                        obj2 = Long.valueOf(((Integer) obj2).intValue());
                    } catch (NumberFormatException e3) {
                        e = e3;
                    }
                } else {
                    e = e;
                }
                if (e != null) {
                    obj = new BigDecimal(str);
                    obj2 = BigDecimal.valueOf(((Integer) obj2).intValue());
                }
            } else if (cls2 == Long.class) {
                obj = new BigDecimal(str);
                obj2 = BigDecimal.valueOf(((Long) obj2).longValue());
            } else if (cls2 == Float.class) {
                obj = Float.valueOf(Float.parseFloat(str));
            } else if (cls2 == Double.class) {
                obj = Double.valueOf(Double.parseDouble(str));
            } else if (cls2 == BigInteger.class) {
                obj = new BigInteger(str);
            } else if (cls2 == BigDecimal.class) {
                obj = new BigDecimal(str);
            }
        }
        return ((Comparable) obj).compareTo(obj2);
    }

    /* JADX WARN: Removed duplicated region for block: B:110:0x01f1  */
    /* JADX WARN: Removed duplicated region for block: B:120:0x01ef A[EDGE_INSN: B:120:0x01ef->B:109:0x01ef BREAK  A[LOOP:3: B:77:0x0146->B:107:0x01ec], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:122:0x01ba  */
    /* JADX WARN: Removed duplicated region for block: B:126:0x017f  */
    /* JADX WARN: Removed duplicated region for block: B:127:0x0176  */
    /* JADX WARN: Removed duplicated region for block: B:128:0x0157  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x011f  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x0153  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x016f  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x017b  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x01a3  */
    /* JADX WARN: Removed duplicated region for block: B:99:0x01c8  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static double doubleValue(boolean r22, int r23, char[] r24, int r25) {
        /*
            Method dump skipped, instructions count: 505
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson2.util.TypeUtils.doubleValue(boolean, int, char[], int):double");
    }

    public static float floatValue(boolean z, int i, char[] cArr, int i2) {
        int i3;
        int i4;
        int i5;
        FDBigInteger rightInplaceSub;
        boolean z2;
        int i6 = i2;
        int length = f12803a.length - 1;
        int i7 = 8;
        int min = Math.min(i6, 8);
        int i8 = cArr[0] - '0';
        for (int i9 = 1; i9 < min; i9++) {
            i8 = ((i8 * 10) + cArr[i9]) - 48;
        }
        float f = i8;
        int i10 = i - min;
        if (i6 <= 7) {
            if (i10 == 0 || f == 0.0f) {
                return z ? -f : f;
            }
            if (i10 >= 0) {
                if (i10 <= length) {
                    float f2 = f * f12803a[i10];
                    return z ? -f2 : f2;
                }
                int i11 = 7 - min;
                if (i10 <= length + i11) {
                    float[] fArr = f12803a;
                    float f3 = f * fArr[i11] * fArr[i10 - i11];
                    return z ? -f3 : f3;
                }
            } else if (i10 >= (-length)) {
                float f4 = f / f12803a[-i10];
                return z ? -f4 : f4;
            }
        } else if (i >= i6 && i6 + i <= 15) {
            long j = i8;
            while (min < i6) {
                j = (j * 10) + (cArr[min] - '0');
                min++;
            }
            float f5 = (float) (j * SMALL_10_POW[i - i6]);
            return z ? -f5 : f5;
        }
        double d = f;
        if (i10 > 0) {
            if (i > 39) {
                return z ? Float.NEGATIVE_INFINITY : Float.POSITIVE_INFINITY;
            }
            int i12 = i10 & 15;
            if (i12 != 0) {
                d *= SMALL_10_POW[i12];
            }
            int i13 = i10 >> 4;
            if (i13 != 0) {
                int i14 = 0;
                while (i13 > 0) {
                    if ((i13 & 1) != 0) {
                        d *= f12804b[i14];
                    }
                    i14++;
                    i13 >>= 1;
                }
            }
        } else if (i10 < 0) {
            int i15 = -i10;
            if (i < -46) {
                return z ? -0.0f : 0.0f;
            }
            int i16 = i15 & 15;
            if (i16 != 0) {
                d /= SMALL_10_POW[i16];
            }
            int i17 = i15 >> 4;
            if (i17 != 0) {
                int i18 = 0;
                while (i17 > 0) {
                    if ((i17 & 1) != 0) {
                        d *= f12805c[i18];
                    }
                    i18++;
                    i17 >>= 1;
                }
            }
        }
        float max = Math.max(Float.MIN_VALUE, Math.min(Float.MAX_VALUE, (float) d));
        if (i6 > 200) {
            cArr[200] = '1';
            i6 = 201;
        }
        int i19 = i6;
        FDBigInteger fDBigInteger = new FDBigInteger(i8, cArr, min, i19);
        int i20 = i - i19;
        int floatToRawIntBits = Float.floatToRawIntBits(max);
        int max2 = Math.max(0, -i20);
        int max3 = Math.max(0, i20);
        FDBigInteger multByPow52 = fDBigInteger.multByPow52(max3, 0);
        multByPow52.f12791d = true;
        FDBigInteger fDBigInteger2 = null;
        int i21 = 0;
        while (true) {
            int i22 = floatToRawIntBits >>> 23;
            int i23 = 8388607 & floatToRawIntBits;
            if (i22 > 0) {
                i3 = i23 | 8388608;
            } else {
                int numberOfLeadingZeros = Integer.numberOfLeadingZeros(i23) - i7;
                i3 = i23 << numberOfLeadingZeros;
                i22 = 1 - numberOfLeadingZeros;
            }
            int i24 = i22 - 127;
            int numberOfTrailingZeros = Integer.numberOfTrailingZeros(i3);
            int i25 = i3 >>> numberOfTrailingZeros;
            int i26 = (i24 - 23) + numberOfTrailingZeros;
            int i27 = 24 - numberOfTrailingZeros;
            if (i26 >= 0) {
                i5 = max2 + i26;
                i4 = max3;
            } else {
                i4 = max3 - i26;
                i5 = max2;
            }
            int i28 = i24 <= -127 ? i24 + numberOfTrailingZeros + 127 : numberOfTrailingZeros + 1;
            int i29 = i5 + i28;
            int i30 = i4 + i28;
            int min2 = Math.min(i29, Math.min(i30, i5));
            int i31 = i30 - min2;
            int i32 = i5 - min2;
            FDBigInteger valueOfMulPow52 = FDBigInteger.valueOfMulPow52(i25, max2, i29 - min2);
            if (fDBigInteger2 == null || i21 != i31) {
                fDBigInteger2 = multByPow52.leftShift(i31);
                i21 = i31;
            }
            int cmp = valueOfMulPow52.cmp(fDBigInteger2);
            if (cmp > 0) {
                rightInplaceSub = valueOfMulPow52.leftInplaceSub(fDBigInteger2);
                if (i27 != 1 || i26 <= -126 || i32 - 1 >= 0) {
                    z2 = true;
                } else {
                    rightInplaceSub = rightInplaceSub.leftShift(1);
                    z2 = true;
                    i32 = 0;
                }
            } else {
                if (cmp >= 0) {
                    break;
                }
                rightInplaceSub = fDBigInteger2.rightInplaceSub(valueOfMulPow52);
                z2 = false;
            }
            int cmpPow52 = rightInplaceSub.cmpPow52(max2, i32);
            if (cmpPow52 < 0) {
                break;
            }
            if (cmpPow52 != 0) {
                floatToRawIntBits += z2 ? -1 : 1;
                if (floatToRawIntBits == 0 || floatToRawIntBits == 2139095040) {
                    break;
                }
                i7 = 8;
            } else if ((floatToRawIntBits & 1) != 0) {
                floatToRawIntBits += z2 ? -1 : 1;
            }
        }
        if (z) {
            floatToRawIntBits |= Integer.MIN_VALUE;
        }
        return Float.intBitsToFloat(floatToRawIntBits);
    }

    public static Class<?> getArrayClass(Class cls) {
        return cls == Integer.TYPE ? int[].class : cls == Byte.TYPE ? byte[].class : cls == Short.TYPE ? short[].class : cls == Long.TYPE ? long[].class : cls == String.class ? String[].class : cls == Object.class ? Object[].class : Array.newInstance((Class<?>) cls, 1).getClass();
    }

    public static Class<?> getClass(Type type) {
        if (type == null) {
            return null;
        }
        if (type.getClass() == Class.class) {
            return (Class) type;
        }
        if (type instanceof ParameterizedType) {
            return getClass(((ParameterizedType) type).getRawType());
        }
        if (type instanceof TypeVariable) {
            Type type2 = ((TypeVariable) type).getBounds()[0];
            return type2 instanceof Class ? (Class) type2 : getClass(type2);
        }
        if (type instanceof WildcardType) {
            Type[] upperBounds = ((WildcardType) type).getUpperBounds();
            if (upperBounds.length == 1) {
                return getClass(upperBounds[0]);
            }
        }
        return type instanceof GenericArrayType ? getArrayClass(getClass(((GenericArrayType) type).getGenericComponentType())) : Object.class;
    }

    public static Object getDefaultValue(Type type) {
        if (type == Integer.TYPE) {
            return 0;
        }
        if (type == Long.TYPE) {
            return 0L;
        }
        if (type == Float.TYPE) {
            return Float.valueOf(0.0f);
        }
        if (type == Double.TYPE) {
            return Double.valueOf(0.0d);
        }
        if (type == Boolean.TYPE) {
            return Boolean.FALSE;
        }
        if (type == Short.TYPE) {
            return (short) 0;
        }
        if (type == Byte.TYPE) {
            return (byte) 0;
        }
        return type == Character.TYPE ? (char) 0 : null;
    }

    public static Map getInnerMap(Map map) {
        return (Map) JSONFactory.getInnerMap().apply(map);
    }

    public static Class<?> getMapping(Type type) {
        if (type == null) {
            return null;
        }
        if (type.getClass() == Class.class) {
            return (Class) type;
        }
        if (type instanceof ParameterizedType) {
            return getMapping(((ParameterizedType) type).getRawType());
        }
        if (type instanceof TypeVariable) {
            Type type2 = ((TypeVariable) type).getBounds()[0];
            if (type2 instanceof Class) {
                return (Class) type2;
            }
            return getMapping(type2);
        }
        if (type instanceof WildcardType) {
            Type[] upperBounds = ((WildcardType) type).getUpperBounds();
            if (upperBounds.length == 1) {
                return getMapping(upperBounds[0]);
            }
        }
        if (type instanceof GenericArrayType) {
            return getArrayClass(getClass(((GenericArrayType) type).getGenericComponentType()));
        }
        return Object.class;
    }

    public static String getTypeName(Type type) {
        return type instanceof Class ? getTypeName((Class) type) : "<non-class>";
    }

    public static Type intern(Type type) {
        if (!(type instanceof ParameterizedType)) {
            return type;
        }
        ParameterizedType parameterizedType = (ParameterizedType) type;
        Type rawType = parameterizedType.getRawType();
        Type[] actualTypeArguments = parameterizedType.getActualTypeArguments();
        return (rawType == List.class && actualTypeArguments.length == 1 && actualTypeArguments[0] == String.class) ? PARAM_TYPE_LIST_STR : type;
    }

    /* JADX WARN: Code restructure failed: missing block: B:29:0x002a, code lost:
    
        if (r1 <= '9') goto L22;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean isInteger(java.lang.String r6) {
        /*
            r0 = 0
            if (r6 == 0) goto L42
            boolean r1 = r6.isEmpty()
            if (r1 == 0) goto La
            goto L42
        La:
            char r1 = r6.charAt(r0)
            r2 = 45
            r3 = 1
            if (r1 == r2) goto L1a
            r2 = 43
            if (r1 != r2) goto L18
            goto L1a
        L18:
            r2 = r0
            goto L1b
        L1a:
            r2 = r3
        L1b:
            r4 = 57
            r5 = 48
            if (r2 == 0) goto L28
            int r1 = r6.length()
            if (r1 != r3) goto L2d
            return r0
        L28:
            if (r1 < r5) goto L42
            if (r1 <= r4) goto L2d
            goto L42
        L2d:
            r1 = r3
        L2e:
            int r2 = r6.length()
            if (r1 >= r2) goto L41
            char r2 = r6.charAt(r1)
            if (r2 < r5) goto L40
            if (r2 <= r4) goto L3d
            goto L40
        L3d:
            int r1 = r1 + 1
            goto L2e
        L40:
            return r0
        L41:
            return r3
        L42:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson2.util.TypeUtils.isInteger(java.lang.String):boolean");
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x003d  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0062  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x0096 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:53:0x0097  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x0086  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x003f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean isNumber(java.lang.String r12) {
        /*
            Method dump skipped, instructions count: 192
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson2.util.TypeUtils.isNumber(java.lang.String):boolean");
    }

    public static boolean isUUID(String str) {
        if (str == null) {
            return false;
        }
        if (str.length() == 32) {
            for (int i = 0; i < 32; i++) {
                char charAt = str.charAt(i);
                if (!((charAt >= '0' && charAt <= '9') || (charAt >= 'A' && charAt <= 'F') || (charAt >= 'a' && charAt <= 'f'))) {
                    return false;
                }
            }
            return true;
        }
        if (str.length() != 36) {
            return false;
        }
        for (int i2 = 0; i2 < 36; i2++) {
            char charAt2 = str.charAt(i2);
            if (i2 == 8 || i2 == 13 || i2 == 18 || i2 == 23) {
                if (charAt2 != '-') {
                    return false;
                }
            } else {
                if (!((charAt2 >= '0' && charAt2 <= '9') || (charAt2 >= 'A' && charAt2 <= 'F') || (charAt2 >= 'a' && charAt2 <= 'f'))) {
                    return false;
                }
            }
        }
        return true;
    }

    public static Class loadClass(String str) {
        if (str.length() >= 192) {
            return null;
        }
        char c = 65535;
        switch (str.hashCode()) {
            case -2056817302:
                if (str.equals(Constants.INTEGER_CLASS)) {
                    c = 0;
                    break;
                }
                break;
            case -2010664371:
                if (str.equals("java.io.IOException")) {
                    c = 1;
                    break;
                }
                break;
            case -1939501217:
                if (str.equals("Object")) {
                    c = 2;
                    break;
                }
                break;
            case -1932803762:
                if (str.equals("HashMap")) {
                    c = 3;
                    break;
                }
                break;
            case -1932797868:
                if (str.equals("HashSet")) {
                    c = 4;
                    break;
                }
                break;
            case -1899270121:
                if (str.equals("java.util.LinkedList")) {
                    c = 5;
                    break;
                }
                break;
            case -1808118735:
                if (str.equals("String")) {
                    c = 6;
                    break;
                }
                break;
            case -1659005919:
                if (str.equals("ConcurrentLinkedQueue")) {
                    c = 7;
                    break;
                }
                break;
            case -1418007307:
                if (str.equals("LinkedHashMap")) {
                    c = '\b';
                    break;
                }
                break;
            case -1418001413:
                if (str.equals("LinkedHashSet")) {
                    c = '\t';
                    break;
                }
                break;
            case -1402722386:
                if (str.equals("java.util.HashMap")) {
                    c = '\n';
                    break;
                }
                break;
            case -1402716492:
                if (str.equals("java.util.HashSet")) {
                    c = 11;
                    break;
                }
                break;
            case -1383349348:
                if (str.equals("java.util.Map")) {
                    c = '\f';
                    break;
                }
                break;
            case -1383343454:
                if (str.equals("java.util.Set")) {
                    c = '\r';
                    break;
                }
                break;
            case -1374008726:
                if (str.equals("byte[]")) {
                    c = 14;
                    break;
                }
                break;
            case -1361632968:
                if (str.equals("char[]")) {
                    c = 15;
                    break;
                }
                break;
            case -1325958191:
                if (str.equals("double")) {
                    c = 16;
                    break;
                }
                break;
            case -1114099497:
                if (str.equals("java.util.ArrayList")) {
                    c = 17;
                    break;
                }
                break;
            case -1097129250:
                if (str.equals("long[]")) {
                    c = 18;
                    break;
                }
                break;
            case -1074506598:
                if (str.equals("java.util.Collections$SingletonList")) {
                    c = 19;
                    break;
                }
                break;
            case -958795145:
                if (str.equals("LinkedList")) {
                    c = 20;
                    break;
                }
                break;
            case -766441794:
                if (str.equals("float[]")) {
                    c = 21;
                    break;
                }
                break;
            case -530663260:
                if (str.equals("java.lang.Class")) {
                    c = 22;
                    break;
                }
                break;
            case -413661986:
                if (str.equals("java.util.Collections$EmptyMap")) {
                    c = 23;
                    break;
                }
                break;
            case -413656092:
                if (str.equals("java.util.Collections$EmptySet")) {
                    c = 24;
                    break;
                }
                break;
            case -113680546:
                if (str.equals("Calendar")) {
                    c = 25;
                    break;
                }
                break;
            case 65:
                if (str.equals("A")) {
                    c = 26;
                    break;
                }
                break;
            case 66:
                if (str.equals("B")) {
                    c = 27;
                    break;
                }
                break;
            case 67:
                if (str.equals(BaseTLSIdentity.CERT_ATTRIBUTE_COUNTRY)) {
                    c = rve.f83545n;
                    break;
                }
                break;
            case 68:
                if (str.equals(SardineUtil.DEFAULT_NAMESPACE_PREFIX)) {
                    c = rve.f83546o;
                    break;
                }
                break;
            case 70:
                if (str.equals("F")) {
                    c = rve.f83547p;
                    break;
                }
                break;
            case 73:
                if (str.equals("I")) {
                    c = XmlEscapers.f35498b;
                    break;
                }
                break;
            case 74:
                if (str.equals("J")) {
                    c = ' ';
                    break;
                }
                break;
            case 77:
                if (str.equals("M")) {
                    c = PublicSuffixDatabase.f103895g;
                    break;
                }
                break;
            case 79:
                if (str.equals(BaseTLSIdentity.CERT_ATTRIBUTE_ORGANIZATION)) {
                    c = '\"';
                    break;
                }
                break;
            case 83:
                if (str.equals("S")) {
                    c = '#';
                    break;
                }
                break;
            case 90:
                if (str.equals(Constants.HASIDCALL_INDEX_SIG)) {
                    c = '$';
                    break;
                }
                break;
            case 2421:
                if (str.equals("LA")) {
                    c = '%';
                    break;
                }
                break;
            case 2433:
                if (str.equals("LM")) {
                    c = '&';
                    break;
                }
                break;
            case 2887:
                if (str.equals("[B")) {
                    c = Chars.QUOTE;
                    break;
                }
                break;
            case 2888:
                if (str.equals(Constants.STATIC_CHAR_DATA_FIELD_SIG)) {
                    c = '(';
                    break;
                }
                break;
            case 2889:
                if (str.equals("[D")) {
                    c = ')';
                    break;
                }
                break;
            case 2891:
                if (str.equals("[F")) {
                    c = '*';
                    break;
                }
                break;
            case 2894:
                if (str.equals(Constants.TYPES_INDEX_SIG)) {
                    c = PhoneNumberUtil.f36455s;
                    break;
                }
                break;
            case 2895:
                if (str.equals("[J")) {
                    c = ',';
                    break;
                }
                break;
            case 2900:
                if (str.equals("[O")) {
                    c = '-';
                    break;
                }
                break;
            case 2904:
                if (str.equals("[S")) {
                    c = '.';
                    break;
                }
                break;
            case 2911:
                if (str.equals("[Z")) {
                    c = '/';
                    break;
                }
                break;
            case 73612:
                if (str.equals("JO1")) {
                    c = '0';
                    break;
                }
                break;
            case 77116:
                if (str.equals(C6883t.f38149c)) {
                    c = '1';
                    break;
                }
                break;
            case 83010:
                if (str.equals("Set")) {
                    c = '2';
                    break;
                }
                break;
            case 104431:
                if (str.equals("int")) {
                    c = '3';
                    break;
                }
                break;
            case 2122702:
                if (str.equals("Date")) {
                    c = '4';
                    break;
                }
                break;
            case 2368702:
                if (str.equals(C6883t.f38147a)) {
                    c = '5';
                    break;
                }
                break;
            case 2616251:
                if (str.equals("UUID")) {
                    c = '6';
                    break;
                }
                break;
            case 3039496:
                if (str.equals("byte")) {
                    c = '7';
                    break;
                }
                break;
            case 3052374:
                if (str.equals("char")) {
                    c = '8';
                    break;
                }
                break;
            case 3327612:
                if (str.equals("long")) {
                    c = '9';
                    break;
                }
                break;
            case 61358428:
                if (str.equals("java.util.Collections$EmptyList")) {
                    c = ':';
                    break;
                }
                break;
            case 64711720:
                if (str.equals("boolean")) {
                    c = ';';
                    break;
                }
                break;
            case 65821278:
                if (str.equals("java.util.List")) {
                    c = '<';
                    break;
                }
                break;
            case 97526364:
                if (str.equals("float")) {
                    c = '=';
                    break;
                }
                break;
            case 100361105:
                if (str.equals("int[]")) {
                    c = '>';
                    break;
                }
                break;
            case 109413500:
                if (str.equals("short")) {
                    c = '?';
                    break;
                }
                break;
            case 179563853:
                if (str.equals("java.util.Arrays$ArrayList")) {
                    c = '@';
                    break;
                }
                break;
            case 398795216:
                if (str.equals("java.lang.Long")) {
                    c = 'A';
                    break;
                }
                break;
            case 578806391:
                if (str.equals("ArrayList")) {
                    c = 'B';
                    break;
                }
                break;
            case 600988612:
                if (str.equals("TreeSet")) {
                    c = 'C';
                    break;
                }
                break;
            case 889669201:
                if (str.equals("java.util.Collections$UnmodifiableRandomAccessList")) {
                    c = 'D';
                    break;
                }
                break;
            case 935176422:
                if (str.equals("java.util.Collections$SingletonSet")) {
                    c = 'E';
                    break;
                }
                break;
            case 1063877011:
                if (str.equals(Constants.OBJECT_CLASS)) {
                    c = 'F';
                    break;
                }
                break;
            case 1131069988:
                if (str.equals("java.util.TreeSet")) {
                    c = 'G';
                    break;
                }
                break;
            case 1195259493:
                if (str.equals("java.lang.String")) {
                    c = 'H';
                    break;
                }
                break;
            case 1258621781:
                if (str.equals("java.util.LinkedHashMap")) {
                    c = 'I';
                    break;
                }
                break;
            case 1258627675:
                if (str.equals("java.util.LinkedHashSet")) {
                    c = 'J';
                    break;
                }
                break;
            case 1359468275:
                if (str.equals("double[]")) {
                    c = 'K';
                    break;
                }
                break;
            case 1372295063:
                if (str.equals("ConcurrentHashMap")) {
                    c = 'L';
                    break;
                }
                break;
            case 1645304908:
                if (str.equals("[String")) {
                    c = 'M';
                    break;
                }
                break;
            case 1752376903:
                if (str.equals("JSONObject")) {
                    c = 'N';
                    break;
                }
                break;
            case 2058423690:
                if (str.equals("boolean[]")) {
                    c = 'O';
                    break;
                }
                break;
            case 2067161310:
                if (str.equals("short[]")) {
                    c = 'P';
                    break;
                }
                break;
        }
        switch (c) {
            case 0:
                return Integer.class;
            case 1:
                return IOException.class;
            case 2:
            case '\"':
            case 'F':
                return Object.class;
            case 3:
            case '\n':
            case '!':
                return HashMap.class;
            case 4:
            case 11:
                return HashSet.class;
            case 5:
            case 20:
            case '%':
                return LinkedList.class;
            case 6:
            case 'H':
                return String.class;
            case 7:
                return ConcurrentLinkedQueue.class;
            case '\b':
            case '&':
            case 'I':
                return LinkedHashMap.class;
            case '\t':
            case 'J':
                return LinkedHashSet.class;
            case '\f':
            case '1':
                return Map.class;
            case '\r':
            case '2':
                return Set.class;
            case 14:
            case '\'':
                return byte[].class;
            case 15:
            case '(':
                return char[].class;
            case 16:
            case 29:
                return Double.TYPE;
            case 17:
            case 26:
            case 'B':
                return ArrayList.class;
            case 18:
            case ',':
                return long[].class;
            case 19:
                return CLASS_SINGLE_LIST;
            case 21:
            case '*':
                return float[].class;
            case 22:
                return Class.class;
            case 23:
                return Collections.EMPTY_MAP.getClass();
            case 24:
                return Collections.EMPTY_SET.getClass();
            case 25:
                return Calendar.class;
            case 27:
            case '7':
                return Byte.TYPE;
            case 28:
            case '8':
                return Character.TYPE;
            case 30:
            case '=':
                return Float.TYPE;
            case 31:
            case '3':
                return Integer.TYPE;
            case ' ':
            case '9':
                return Long.TYPE;
            case '#':
            case '?':
                return Short.TYPE;
            case '$':
            case ';':
                return Boolean.TYPE;
            case ')':
            case 'K':
                return double[].class;
            case '+':
            case '>':
                return int[].class;
            case '-':
                return Object[].class;
            case '.':
            case 'P':
                return short[].class;
            case '/':
            case 'O':
                return boolean[].class;
            case '0':
                str = "com.alibaba.fastjson.JSONObject";
                break;
            case '4':
                return Date.class;
            case '5':
            case '<':
                return List.class;
            case '6':
                return UUID.class;
            case ':':
                return Collections.EMPTY_LIST.getClass();
            case '@':
                return Arrays.asList(1).getClass();
            case 'A':
                return Long.class;
            case 'C':
            case 'G':
                return TreeSet.class;
            case 'D':
                return CLASS_UNMODIFIABLE_LIST;
            case 'E':
                return CLASS_SINGLE_SET;
            case 'L':
                return ConcurrentHashMap.class;
            case 'M':
                return String[].class;
            case 'N':
                return JSONObject.class;
        }
        Class cls = C1751b.f12813b.get(str);
        if (cls != null) {
            return cls;
        }
        if (str.startsWith("java.util.ImmutableCollections$")) {
            try {
                return Class.forName(str);
            } catch (ClassNotFoundException unused) {
                return CLASS_UNMODIFIABLE_LIST;
            }
        }
        if (str.charAt(0) == 'L' && str.charAt(str.length() - 1) == ';') {
            str = str.substring(1, str.length() - 1);
        }
        if (str.charAt(0) != '[' && !str.endsWith("[]")) {
            ClassLoader contextClassLoader = Thread.currentThread().getContextClassLoader();
            if (contextClassLoader != null) {
                try {
                    return contextClassLoader.loadClass(str);
                } catch (ClassNotFoundException unused2) {
                }
            }
            try {
                try {
                    return JSON.class.getClassLoader().loadClass(str);
                } catch (ClassNotFoundException unused3) {
                    return null;
                }
            } catch (ClassNotFoundException unused4) {
                return Class.forName(str);
            }
        }
        Class loadClass = loadClass(str.charAt(0) == '[' ? str.substring(1) : str.substring(0, str.length() - 2));
        if (loadClass != null) {
            return Array.newInstance((Class<?>) loadClass, 0).getClass();
        }
        throw new JSONException("load class error " + str);
    }

    public static <T> T newProxyInstance(Class<T> cls, JSONObject jSONObject) {
        return (T) Proxy.newProxyInstance(cls.getClassLoader(), new Class[]{cls}, jSONObject);
    }

    public static Class nonePrimitive(Class cls) {
        if (!cls.isPrimitive()) {
            return cls;
        }
        String name = cls.getName();
        return !name.equals("double") ? !name.equals("int") ? !name.equals("byte") ? !name.equals("char") ? !name.equals("long") ? !name.equals("boolean") ? !name.equals("float") ? !name.equals("short") ? cls : Short.class : Float.class : Boolean.class : Long.class : Character.class : Byte.class : Integer.class : Double.class;
    }

    public static BigDecimal parseBigDecimal(char[] cArr, int i, int i2) {
        int i3;
        boolean z;
        if (cArr == null || i2 == 0) {
            return null;
        }
        if (cArr[i] == '-') {
            i3 = i + 1;
            z = true;
        } else {
            i3 = i;
            z = false;
        }
        if (i2 <= 20 || (z && i2 == 21)) {
            int i4 = i + i2;
            int i5 = -1;
            long j = 0;
            int i6 = 0;
            while (i3 < i4) {
                char c = cArr[i3];
                if (c != '.') {
                    if (c >= '0' && c <= '9') {
                        long j2 = j * 10;
                        if (((j | 10) >>> 31) == 0 || j2 / 10 == j) {
                            j = j2 + (c - '0');
                            i3++;
                        }
                    }
                    j = -1;
                    break;
                }
                i6++;
                if (i6 > 1) {
                    break;
                }
                i5 = i3;
                i3++;
            }
            if (j >= 0 && i6 <= 1) {
                if (z) {
                    j = -j;
                }
                return BigDecimal.valueOf(j, i5 != -1 ? (i2 - (i5 - i)) - 1 : 0);
            }
        }
        return new BigDecimal(cArr, i, i2);
    }

    public static Boolean parseBoolean(byte[] bArr, int i, int i2) {
        if (i2 == 0) {
            return null;
        }
        if (i2 == 1) {
            byte b = bArr[i];
            if (b == 49 || b == 89) {
                return Boolean.TRUE;
            }
            if (b == 48 || b == 78) {
                return Boolean.FALSE;
            }
        } else if (i2 != 4) {
            if (i2 == 5 && bArr[i] == 102 && bArr[i + 1] == 97 && bArr[i + 2] == 108 && bArr[i + 3] == 115 && bArr[i + 4] == 101) {
                return Boolean.FALSE;
            }
        } else if (bArr[i] == 116 && bArr[i + 1] == 114 && bArr[i + 2] == 117 && bArr[i + 3] == 101) {
            return Boolean.TRUE;
        }
        return Boolean.valueOf(Boolean.parseBoolean(new String(bArr, i, i2)));
    }

    /* JADX WARN: Removed duplicated region for block: B:101:0x00f6 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:102:0x00f9 A[Catch: StringIndexOutOfBoundsException -> 0x0106, TryCatch #0 {StringIndexOutOfBoundsException -> 0x0106, blocks: (B:4:0x000a, B:8:0x001e, B:12:0x002b, B:14:0x002f, B:16:0x003e, B:19:0x0036, B:21:0x003a, B:25:0x0043, B:26:0x0048, B:32:0x0050, B:35:0x0058, B:37:0x0080, B:40:0x0067, B:45:0x0078, B:47:0x007c, B:51:0x0086, B:52:0x008b, B:54:0x008c, B:62:0x0099, B:64:0x009f, B:68:0x00a9, B:78:0x00c9, B:81:0x00d3, B:83:0x00da, B:84:0x00dd, B:88:0x00e6, B:91:0x00e9, B:95:0x00ba, B:98:0x00f0, B:102:0x00f9, B:104:0x009b, B:109:0x001b, B:111:0x00fe, B:112:0x0105), top: B:2:0x0008 }] */
    /* JADX WARN: Removed duplicated region for block: B:104:0x009b A[Catch: StringIndexOutOfBoundsException -> 0x0106, TryCatch #0 {StringIndexOutOfBoundsException -> 0x0106, blocks: (B:4:0x000a, B:8:0x001e, B:12:0x002b, B:14:0x002f, B:16:0x003e, B:19:0x0036, B:21:0x003a, B:25:0x0043, B:26:0x0048, B:32:0x0050, B:35:0x0058, B:37:0x0080, B:40:0x0067, B:45:0x0078, B:47:0x007c, B:51:0x0086, B:52:0x008b, B:54:0x008c, B:62:0x0099, B:64:0x009f, B:68:0x00a9, B:78:0x00c9, B:81:0x00d3, B:83:0x00da, B:84:0x00dd, B:88:0x00e6, B:91:0x00e9, B:95:0x00ba, B:98:0x00f0, B:102:0x00f9, B:104:0x009b, B:109:0x001b, B:111:0x00fe, B:112:0x0105), top: B:2:0x0008 }] */
    /* JADX WARN: Removed duplicated region for block: B:105:0x0092  */
    /* JADX WARN: Removed duplicated region for block: B:12:0x002b A[Catch: StringIndexOutOfBoundsException -> 0x0106, TRY_ENTER, TryCatch #0 {StringIndexOutOfBoundsException -> 0x0106, blocks: (B:4:0x000a, B:8:0x001e, B:12:0x002b, B:14:0x002f, B:16:0x003e, B:19:0x0036, B:21:0x003a, B:25:0x0043, B:26:0x0048, B:32:0x0050, B:35:0x0058, B:37:0x0080, B:40:0x0067, B:45:0x0078, B:47:0x007c, B:51:0x0086, B:52:0x008b, B:54:0x008c, B:62:0x0099, B:64:0x009f, B:68:0x00a9, B:78:0x00c9, B:81:0x00d3, B:83:0x00da, B:84:0x00dd, B:88:0x00e6, B:91:0x00e9, B:95:0x00ba, B:98:0x00f0, B:102:0x00f9, B:104:0x009b, B:109:0x001b, B:111:0x00fe, B:112:0x0105), top: B:2:0x0008 }] */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0050 A[Catch: StringIndexOutOfBoundsException -> 0x0106, TryCatch #0 {StringIndexOutOfBoundsException -> 0x0106, blocks: (B:4:0x000a, B:8:0x001e, B:12:0x002b, B:14:0x002f, B:16:0x003e, B:19:0x0036, B:21:0x003a, B:25:0x0043, B:26:0x0048, B:32:0x0050, B:35:0x0058, B:37:0x0080, B:40:0x0067, B:45:0x0078, B:47:0x007c, B:51:0x0086, B:52:0x008b, B:54:0x008c, B:62:0x0099, B:64:0x009f, B:68:0x00a9, B:78:0x00c9, B:81:0x00d3, B:83:0x00da, B:84:0x00dd, B:88:0x00e6, B:91:0x00e9, B:95:0x00ba, B:98:0x00f0, B:102:0x00f9, B:104:0x009b, B:109:0x001b, B:111:0x00fe, B:112:0x0105), top: B:2:0x0008 }] */
    /* JADX WARN: Removed duplicated region for block: B:56:0x0090  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x0099 A[Catch: StringIndexOutOfBoundsException -> 0x0106, TryCatch #0 {StringIndexOutOfBoundsException -> 0x0106, blocks: (B:4:0x000a, B:8:0x001e, B:12:0x002b, B:14:0x002f, B:16:0x003e, B:19:0x0036, B:21:0x003a, B:25:0x0043, B:26:0x0048, B:32:0x0050, B:35:0x0058, B:37:0x0080, B:40:0x0067, B:45:0x0078, B:47:0x007c, B:51:0x0086, B:52:0x008b, B:54:0x008c, B:62:0x0099, B:64:0x009f, B:68:0x00a9, B:78:0x00c9, B:81:0x00d3, B:83:0x00da, B:84:0x00dd, B:88:0x00e6, B:91:0x00e9, B:95:0x00ba, B:98:0x00f0, B:102:0x00f9, B:104:0x009b, B:109:0x001b, B:111:0x00fe, B:112:0x0105), top: B:2:0x0008 }] */
    /* JADX WARN: Removed duplicated region for block: B:70:0x00b1  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x00c2  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x00e3 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:90:0x00ed  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x00b9  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static double parseDouble(byte[] r18, int r19, int r20) throws java.lang.NumberFormatException {
        /*
            Method dump skipped, instructions count: 295
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson2.util.TypeUtils.parseDouble(byte[], int, int):double");
    }

    /* JADX WARN: Removed duplicated region for block: B:101:0x00f6 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:102:0x00f8 A[Catch: StringIndexOutOfBoundsException -> 0x0105, TryCatch #0 {StringIndexOutOfBoundsException -> 0x0105, blocks: (B:4:0x000a, B:8:0x001e, B:12:0x002b, B:14:0x002f, B:16:0x003e, B:19:0x0036, B:21:0x003a, B:25:0x0043, B:26:0x0048, B:32:0x0050, B:35:0x0058, B:37:0x0080, B:40:0x0067, B:45:0x0078, B:47:0x007c, B:51:0x0086, B:52:0x008b, B:54:0x008c, B:62:0x0099, B:64:0x009f, B:68:0x00a9, B:78:0x00c9, B:81:0x00d3, B:83:0x00da, B:84:0x00dd, B:88:0x00e6, B:91:0x00e9, B:95:0x00ba, B:98:0x00f0, B:102:0x00f8, B:104:0x009b, B:109:0x001b, B:111:0x00fd, B:112:0x0104), top: B:2:0x0008 }] */
    /* JADX WARN: Removed duplicated region for block: B:104:0x009b A[Catch: StringIndexOutOfBoundsException -> 0x0105, TryCatch #0 {StringIndexOutOfBoundsException -> 0x0105, blocks: (B:4:0x000a, B:8:0x001e, B:12:0x002b, B:14:0x002f, B:16:0x003e, B:19:0x0036, B:21:0x003a, B:25:0x0043, B:26:0x0048, B:32:0x0050, B:35:0x0058, B:37:0x0080, B:40:0x0067, B:45:0x0078, B:47:0x007c, B:51:0x0086, B:52:0x008b, B:54:0x008c, B:62:0x0099, B:64:0x009f, B:68:0x00a9, B:78:0x00c9, B:81:0x00d3, B:83:0x00da, B:84:0x00dd, B:88:0x00e6, B:91:0x00e9, B:95:0x00ba, B:98:0x00f0, B:102:0x00f8, B:104:0x009b, B:109:0x001b, B:111:0x00fd, B:112:0x0104), top: B:2:0x0008 }] */
    /* JADX WARN: Removed duplicated region for block: B:105:0x0092  */
    /* JADX WARN: Removed duplicated region for block: B:12:0x002b A[Catch: StringIndexOutOfBoundsException -> 0x0105, TRY_ENTER, TryCatch #0 {StringIndexOutOfBoundsException -> 0x0105, blocks: (B:4:0x000a, B:8:0x001e, B:12:0x002b, B:14:0x002f, B:16:0x003e, B:19:0x0036, B:21:0x003a, B:25:0x0043, B:26:0x0048, B:32:0x0050, B:35:0x0058, B:37:0x0080, B:40:0x0067, B:45:0x0078, B:47:0x007c, B:51:0x0086, B:52:0x008b, B:54:0x008c, B:62:0x0099, B:64:0x009f, B:68:0x00a9, B:78:0x00c9, B:81:0x00d3, B:83:0x00da, B:84:0x00dd, B:88:0x00e6, B:91:0x00e9, B:95:0x00ba, B:98:0x00f0, B:102:0x00f8, B:104:0x009b, B:109:0x001b, B:111:0x00fd, B:112:0x0104), top: B:2:0x0008 }] */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0050 A[Catch: StringIndexOutOfBoundsException -> 0x0105, TryCatch #0 {StringIndexOutOfBoundsException -> 0x0105, blocks: (B:4:0x000a, B:8:0x001e, B:12:0x002b, B:14:0x002f, B:16:0x003e, B:19:0x0036, B:21:0x003a, B:25:0x0043, B:26:0x0048, B:32:0x0050, B:35:0x0058, B:37:0x0080, B:40:0x0067, B:45:0x0078, B:47:0x007c, B:51:0x0086, B:52:0x008b, B:54:0x008c, B:62:0x0099, B:64:0x009f, B:68:0x00a9, B:78:0x00c9, B:81:0x00d3, B:83:0x00da, B:84:0x00dd, B:88:0x00e6, B:91:0x00e9, B:95:0x00ba, B:98:0x00f0, B:102:0x00f8, B:104:0x009b, B:109:0x001b, B:111:0x00fd, B:112:0x0104), top: B:2:0x0008 }] */
    /* JADX WARN: Removed duplicated region for block: B:56:0x0090  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x0099 A[Catch: StringIndexOutOfBoundsException -> 0x0105, TryCatch #0 {StringIndexOutOfBoundsException -> 0x0105, blocks: (B:4:0x000a, B:8:0x001e, B:12:0x002b, B:14:0x002f, B:16:0x003e, B:19:0x0036, B:21:0x003a, B:25:0x0043, B:26:0x0048, B:32:0x0050, B:35:0x0058, B:37:0x0080, B:40:0x0067, B:45:0x0078, B:47:0x007c, B:51:0x0086, B:52:0x008b, B:54:0x008c, B:62:0x0099, B:64:0x009f, B:68:0x00a9, B:78:0x00c9, B:81:0x00d3, B:83:0x00da, B:84:0x00dd, B:88:0x00e6, B:91:0x00e9, B:95:0x00ba, B:98:0x00f0, B:102:0x00f8, B:104:0x009b, B:109:0x001b, B:111:0x00fd, B:112:0x0104), top: B:2:0x0008 }] */
    /* JADX WARN: Removed duplicated region for block: B:70:0x00b1  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x00c2  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x00e3 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:90:0x00ed  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x00b9  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static float parseFloat(byte[] r18, int r19, int r20) throws java.lang.NumberFormatException {
        /*
            Method dump skipped, instructions count: 294
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson2.util.TypeUtils.parseFloat(byte[], int, int):float");
    }

    public static int parseInt(byte[] bArr, int i, int i2) {
        switch (i2) {
            case 1:
                byte b = bArr[i];
                if (b >= 48 && b <= 57) {
                    return b - 48;
                }
                break;
            case 2:
                byte b2 = bArr[i];
                byte b3 = bArr[i + 1];
                if (b2 >= 48 && b2 <= 57 && b3 >= 48 && b3 <= 57) {
                    return ((b2 - 48) * 10) + (b3 - 48);
                }
                break;
            case 3:
                byte b4 = bArr[i];
                byte b5 = bArr[i + 1];
                byte b6 = bArr[i + 2];
                if (b4 >= 48 && b4 <= 57 && b5 >= 48 && b5 <= 57 && b6 >= 48 && b6 <= 57) {
                    return ((b4 - 48) * 100) + ((b5 - 48) * 10) + (b6 - 48);
                }
                break;
            case 4:
                byte b7 = bArr[i];
                byte b8 = bArr[i + 1];
                byte b9 = bArr[i + 2];
                byte b10 = bArr[i + 3];
                if (b7 >= 48 && b7 <= 57 && b8 >= 48 && b8 <= 57 && b9 >= 48 && b9 <= 57 && b10 >= 48 && b10 <= 57) {
                    return ((b7 - 48) * 1000) + ((b8 - 48) * 100) + ((b9 - 48) * 10) + (b10 - 48);
                }
                break;
            case 5:
                byte b11 = bArr[i];
                byte b12 = bArr[i + 1];
                byte b13 = bArr[i + 2];
                byte b14 = bArr[i + 3];
                byte b15 = bArr[i + 4];
                if (b11 >= 48 && b11 <= 57 && b12 >= 48 && b12 <= 57 && b13 >= 48 && b13 <= 57 && b14 >= 48 && b14 <= 57 && b15 >= 48 && b15 <= 57) {
                    return ((b11 - 48) * 10000) + ((b12 - 48) * 1000) + ((b13 - 48) * 100) + ((b14 - 48) * 10) + (b15 - 48);
                }
                break;
            case 6:
                byte b16 = bArr[i];
                byte b17 = bArr[i + 1];
                byte b18 = bArr[i + 2];
                byte b19 = bArr[i + 3];
                byte b20 = bArr[i + 4];
                byte b21 = bArr[i + 5];
                if (b16 >= 48 && b16 <= 57 && b17 >= 48 && b17 <= 57 && b18 >= 48 && b18 <= 57 && b19 >= 48 && b19 <= 57 && b20 >= 48 && b20 <= 57 && b21 >= 48 && b21 <= 57) {
                    return ((b16 - 48) * 100000) + ((b17 - 48) * 10000) + ((b18 - 48) * 1000) + ((b19 - 48) * 100) + ((b20 - 48) * 10) + (b21 - 48);
                }
                break;
            case 7:
                byte b22 = bArr[i];
                byte b23 = bArr[i + 1];
                byte b24 = bArr[i + 2];
                byte b25 = bArr[i + 3];
                byte b26 = bArr[i + 4];
                byte b27 = bArr[i + 5];
                byte b28 = bArr[i + 6];
                if (b22 >= 48 && b22 <= 57 && b23 >= 48 && b23 <= 57 && b24 >= 48 && b24 <= 57 && b25 >= 48 && b25 <= 57 && b26 >= 48 && b26 <= 57 && b27 >= 48 && b27 <= 57 && b28 >= 48 && b28 <= 57) {
                    return ((b22 - 48) * 1000000) + ((b23 - 48) * 100000) + ((b24 - 48) * 10000) + ((b25 - 48) * 1000) + ((b26 - 48) * 100) + ((b27 - 48) * 10) + (b28 - 48);
                }
                break;
            case 8:
                byte b29 = bArr[i];
                byte b30 = bArr[i + 1];
                byte b31 = bArr[i + 2];
                byte b32 = bArr[i + 3];
                byte b33 = bArr[i + 4];
                byte b34 = bArr[i + 5];
                byte b35 = bArr[i + 6];
                byte b36 = bArr[i + 7];
                if (b29 >= 48 && b29 <= 57 && b30 >= 48 && b30 <= 57 && b31 >= 48 && b31 <= 57 && b32 >= 48 && b32 <= 57 && b33 >= 48 && b33 <= 57 && b34 >= 48 && b34 <= 57 && b35 >= 48 && b35 <= 57 && b36 >= 48 && b36 <= 57) {
                    return ((b29 - 48) * 10000000) + ((b30 - 48) * 1000000) + ((b31 - 48) * 100000) + ((b32 - 48) * 10000) + ((b33 - 48) * 1000) + ((b34 - 48) * 100) + ((b35 - 48) * 10) + (b36 - 48);
                }
                break;
        }
        return Integer.parseInt(new String(bArr, i, i2));
    }

    public static long parseLong(byte[] bArr, int i, int i2) {
        switch (i2) {
            case 1:
                byte b = bArr[i];
                if (b >= 48 && b <= 57) {
                    return b - 48;
                }
                break;
            case 2:
                byte b2 = bArr[i];
                byte b3 = bArr[i + 1];
                if (b2 >= 48 && b2 <= 57 && b3 >= 48 && b3 <= 57) {
                    return ((b2 - 48) * 10) + (b3 - 48);
                }
                break;
            case 3:
                byte b4 = bArr[i];
                byte b5 = bArr[i + 1];
                byte b6 = bArr[i + 2];
                if (b4 >= 48 && b4 <= 57 && b5 >= 48 && b5 <= 57 && b6 >= 48 && b6 <= 57) {
                    return ((b4 - 48) * 100) + ((b5 - 48) * 10) + (b6 - 48);
                }
                break;
            case 4:
                byte b7 = bArr[i];
                byte b8 = bArr[i + 1];
                byte b9 = bArr[i + 2];
                byte b10 = bArr[i + 3];
                if (b7 >= 48 && b7 <= 57 && b8 >= 48 && b8 <= 57 && b9 >= 48 && b9 <= 57 && b10 >= 48 && b10 <= 57) {
                    return ((b7 - 48) * 1000) + ((b8 - 48) * 100) + ((b9 - 48) * 10) + (b10 - 48);
                }
                break;
            case 5:
                byte b11 = bArr[i];
                byte b12 = bArr[i + 1];
                byte b13 = bArr[i + 2];
                byte b14 = bArr[i + 3];
                byte b15 = bArr[i + 4];
                if (b11 >= 48 && b11 <= 57 && b12 >= 48 && b12 <= 57 && b13 >= 48 && b13 <= 57 && b14 >= 48 && b14 <= 57 && b15 >= 48 && b15 <= 57) {
                    return ((b11 - 48) * 10000) + ((b12 - 48) * 1000) + ((b13 - 48) * 100) + ((b14 - 48) * 10) + (b15 - 48);
                }
                break;
            case 6:
                byte b16 = bArr[i];
                byte b17 = bArr[i + 1];
                byte b18 = bArr[i + 2];
                byte b19 = bArr[i + 3];
                byte b20 = bArr[i + 4];
                byte b21 = bArr[i + 5];
                if (b16 >= 48 && b16 <= 57 && b17 >= 48 && b17 <= 57 && b18 >= 48 && b18 <= 57 && b19 >= 48 && b19 <= 57 && b20 >= 48 && b20 <= 57 && b21 >= 48 && b21 <= 57) {
                    return ((b16 - 48) * 100000) + ((b17 - 48) * 10000) + ((b18 - 48) * 1000) + ((b19 - 48) * 100) + ((b20 - 48) * 10) + (b21 - 48);
                }
                break;
            case 7:
                byte b22 = bArr[i];
                byte b23 = bArr[i + 1];
                byte b24 = bArr[i + 2];
                byte b25 = bArr[i + 3];
                byte b26 = bArr[i + 4];
                byte b27 = bArr[i + 5];
                byte b28 = bArr[i + 6];
                if (b22 >= 48 && b22 <= 57 && b23 >= 48 && b23 <= 57 && b24 >= 48 && b24 <= 57 && b25 >= 48 && b25 <= 57 && b26 >= 48 && b26 <= 57 && b27 >= 48 && b27 <= 57 && b28 >= 48 && b28 <= 57) {
                    return ((b22 - 48) * 1000000) + ((b23 - 48) * 100000) + ((b24 - 48) * 10000) + ((b25 - 48) * 1000) + ((b26 - 48) * 100) + ((b27 - 48) * 10) + (b28 - 48);
                }
                break;
            case 8:
                byte b29 = bArr[i];
                byte b30 = bArr[i + 1];
                byte b31 = bArr[i + 2];
                byte b32 = bArr[i + 3];
                byte b33 = bArr[i + 4];
                byte b34 = bArr[i + 5];
                byte b35 = bArr[i + 6];
                byte b36 = bArr[i + 7];
                if (b29 >= 48 && b29 <= 57 && b30 >= 48 && b30 <= 57 && b31 >= 48 && b31 <= 57 && b32 >= 48 && b32 <= 57 && b33 >= 48 && b33 <= 57 && b34 >= 48 && b34 <= 57 && b35 >= 48 && b35 <= 57 && b36 >= 48 && b36 <= 57) {
                    return ((b29 - 48) * 10000000) + ((b30 - 48) * 1000000) + ((b31 - 48) * 100000) + ((b32 - 48) * 10000) + ((b33 - 48) * 1000) + ((b34 - 48) * 100) + ((b35 - 48) * 10) + (b36 - 48);
                }
                break;
        }
        return Long.parseLong(new String(bArr, i, i2));
    }

    public static BigDecimal toBigDecimal(Object obj) {
        if (obj != null && !(obj instanceof BigDecimal)) {
            if (!(obj instanceof Byte) && !(obj instanceof Short) && !(obj instanceof Integer) && !(obj instanceof Long)) {
                if (obj instanceof String) {
                    String str = (String) obj;
                    if (str.isEmpty() || "null".equals(str)) {
                        return null;
                    }
                    return new BigDecimal(str);
                }
                return (BigDecimal) cast(obj, BigDecimal.class, JSONFactory.defaultObjectReaderProvider);
            }
            return BigDecimal.valueOf(((Number) obj).longValue());
        }
        return (BigDecimal) obj;
    }

    public static BigInteger toBigInteger(Object obj) {
        if (obj == null || (obj instanceof BigInteger)) {
            return (BigInteger) obj;
        }
        if ((obj instanceof Byte) || (obj instanceof Short) || (obj instanceof Integer) || (obj instanceof Long)) {
            return BigInteger.valueOf(((Number) obj).longValue());
        }
        if (!(obj instanceof String)) {
            throw new JSONException("can not cast to bigint");
        }
        String str = (String) obj;
        if (str.isEmpty() || "null".equals(str)) {
            return null;
        }
        return new BigInteger(str);
    }

    public static Boolean toBoolean(Object obj) {
        if (obj == null) {
            return null;
        }
        if (obj instanceof Boolean) {
            return Boolean.valueOf(((Boolean) obj).booleanValue());
        }
        if (obj instanceof String) {
            String str = (String) obj;
            if (str.isEmpty() || "null".equals(str)) {
                return null;
            }
            return Boolean.valueOf(Boolean.parseBoolean(str));
        }
        if (obj instanceof Number) {
            int intValue = ((Number) obj).intValue();
            if (intValue == 1) {
                return Boolean.TRUE;
            }
            if (intValue == 0) {
                return Boolean.FALSE;
            }
        }
        throw new JSONException("can not cast to boolean");
    }

    public static boolean toBooleanValue(Object obj) {
        if (obj == null) {
            return false;
        }
        if (obj instanceof Boolean) {
            return ((Boolean) obj).booleanValue();
        }
        if (obj instanceof String) {
            String str = (String) obj;
            if (str.isEmpty() || "null".equals(str)) {
                return false;
            }
            return Boolean.parseBoolean(str);
        }
        if (obj instanceof Number) {
            int intValue = ((Number) obj).intValue();
            if (intValue == 1) {
                return true;
            }
            if (intValue == 0) {
                return false;
            }
        }
        throw new JSONException("can not cast to boolean");
    }

    public static Byte toByte(Object obj) {
        if (obj == null || (obj instanceof Byte)) {
            return (Byte) obj;
        }
        if (obj instanceof Number) {
            return Byte.valueOf(((Number) obj).byteValue());
        }
        if (!(obj instanceof String)) {
            throw new JSONException("can not cast to byte");
        }
        String str = (String) obj;
        if (str.isEmpty() || "null".equals(str)) {
            return null;
        }
        return Byte.valueOf(Byte.parseByte(str));
    }

    public static byte toByteValue(Object obj) {
        if (obj == null) {
            return (byte) 0;
        }
        if (obj instanceof Byte) {
            return ((Byte) obj).byteValue();
        }
        if (obj instanceof Number) {
            return ((Number) obj).byteValue();
        }
        if (!(obj instanceof String)) {
            throw new JSONException("can not cast to byte");
        }
        String str = (String) obj;
        if (str.isEmpty() || "null".equals(str)) {
            return (byte) 0;
        }
        return Byte.parseByte(str);
    }

    public static Date toDate(Object obj) {
        if (obj == null) {
            return null;
        }
        if (obj instanceof Date) {
            return (Date) obj;
        }
        if (obj instanceof Instant) {
            return new Date(((Instant) obj).toEpochMilli());
        }
        if (obj instanceof ZonedDateTime) {
            return new Date(((ZonedDateTime) obj).toInstant().toEpochMilli());
        }
        if (obj instanceof LocalDate) {
            return new Date(((LocalDate) obj).atStartOfDay(DateUtils.DEFAULT_ZONE_ID).toInstant().toEpochMilli());
        }
        if (obj instanceof LocalDateTime) {
            return new Date(ZonedDateTime.of((LocalDateTime) obj, DateUtils.DEFAULT_ZONE_ID).toInstant().toEpochMilli());
        }
        if (obj instanceof String) {
            long parseMillis = DateUtils.parseMillis((String) obj, DateUtils.DEFAULT_ZONE_ID);
            if (parseMillis == 0) {
                return null;
            }
            return new Date(parseMillis);
        }
        if ((obj instanceof Long) || (obj instanceof Integer)) {
            return new Date(((Number) obj).longValue());
        }
        throw new JSONException("can not cast to Date from " + obj.getClass());
    }

    public static Double toDouble(Object obj) {
        if (obj == null || (obj instanceof Double)) {
            return (Double) obj;
        }
        if (obj instanceof Number) {
            return Double.valueOf(((Number) obj).doubleValue());
        }
        if (!(obj instanceof String)) {
            throw new JSONException("can not cast to decimal");
        }
        String str = (String) obj;
        if (str.isEmpty() || "null".equals(str)) {
            return null;
        }
        return Double.valueOf(Double.parseDouble(str));
    }

    public static double toDoubleValue(Object obj) {
        if (obj == null) {
            return 0.0d;
        }
        if (obj instanceof Double) {
            return ((Double) obj).doubleValue();
        }
        if (obj instanceof Number) {
            return ((Number) obj).doubleValue();
        }
        if (!(obj instanceof String)) {
            throw new JSONException("can not cast to decimal");
        }
        String str = (String) obj;
        if (str.isEmpty() || "null".equals(str)) {
            return 0.0d;
        }
        return Double.parseDouble(str);
    }

    public static Float toFloat(Object obj) {
        if (obj == null || (obj instanceof Float)) {
            return (Float) obj;
        }
        if (obj instanceof Number) {
            return Float.valueOf(((Number) obj).floatValue());
        }
        if (!(obj instanceof String)) {
            throw new JSONException("can not cast to decimal");
        }
        String str = (String) obj;
        if (str.isEmpty() || "null".equals(str)) {
            return null;
        }
        return Float.valueOf(Float.parseFloat(str));
    }

    public static float toFloatValue(Object obj) {
        if (obj == null) {
            return 0.0f;
        }
        if (obj instanceof Float) {
            return ((Float) obj).floatValue();
        }
        if (obj instanceof Number) {
            return ((Number) obj).floatValue();
        }
        if (!(obj instanceof String)) {
            throw new JSONException("can not cast to decimal");
        }
        String str = (String) obj;
        if (str.isEmpty() || "null".equals(str)) {
            return 0.0f;
        }
        return Float.parseFloat(str);
    }

    public static Instant toInstant(Object obj) {
        JSONReader m7296of;
        if (obj == null) {
            return null;
        }
        if (obj instanceof Instant) {
            return (Instant) obj;
        }
        if (obj instanceof Date) {
            return ((Date) obj).toInstant();
        }
        if (obj instanceof ZonedDateTime) {
            return ((ZonedDateTime) obj).toInstant();
        }
        if (!(obj instanceof String)) {
            if (obj instanceof Map) {
                return (Instant) ObjectReaderImplInstant.INSTANCE.createInstance((Map) obj, 0L);
            }
            throw new JSONException("can not cast to Date from " + obj.getClass());
        }
        String str = (String) obj;
        if (str.isEmpty() || "null".equals(str)) {
            return null;
        }
        if (str.charAt(0) != '\"') {
            m7296of = JSONReader.m7296of('\"' + str + '\"');
        } else {
            m7296of = JSONReader.m7296of(str);
        }
        return (Instant) m7296of.read(Instant.class);
    }

    public static int toIntValue(Object obj) {
        if (obj == null) {
            return 0;
        }
        if (obj instanceof Integer) {
            return ((Integer) obj).intValue();
        }
        if (obj instanceof Number) {
            return Integer.valueOf(((Number) obj).intValue()).intValue();
        }
        if (!(obj instanceof String)) {
            throw new JSONException("can not cast to decimal");
        }
        String str = (String) obj;
        if (str.isEmpty() || "null".equals(str)) {
            return 0;
        }
        return str.indexOf(46) != -1 ? new BigDecimal(str).intValueExact() : Integer.parseInt(str);
    }

    public static Integer toInteger(Object obj) {
        if (obj == null || (obj instanceof Integer)) {
            return (Integer) obj;
        }
        if (obj instanceof Number) {
            return Integer.valueOf(((Number) obj).intValue());
        }
        if (obj instanceof String) {
            String str = (String) obj;
            if (str.isEmpty() || "null".equals(str)) {
                return null;
            }
            return Integer.valueOf(Integer.parseInt(str));
        }
        if ((obj instanceof Map) && ((Map) obj).isEmpty()) {
            return null;
        }
        if (obj instanceof Boolean) {
            return Integer.valueOf(((Boolean) obj).booleanValue() ? 1 : 0);
        }
        throw new JSONException("can not cast to integer");
    }

    public static Long toLong(Object obj) {
        if (obj == null || (obj instanceof Long)) {
            return (Long) obj;
        }
        if (obj instanceof Number) {
            return Long.valueOf(((Number) obj).longValue());
        }
        if (!(obj instanceof String)) {
            throw new JSONException("can not cast to long, class " + obj.getClass());
        }
        String str = (String) obj;
        if (str.isEmpty() || "null".equals(str)) {
            return null;
        }
        return Long.valueOf(Long.parseLong(str));
    }

    public static long toLongValue(Object obj) {
        if (obj == null) {
            return 0L;
        }
        if (obj instanceof Long) {
            return ((Long) obj).longValue();
        }
        if (obj instanceof Number) {
            return ((Number) obj).longValue();
        }
        if (!(obj instanceof String)) {
            throw new JSONException("can not cast to long from " + obj.getClass());
        }
        String str = (String) obj;
        if (str.isEmpty() || "null".equals(str)) {
            return 0L;
        }
        return Long.parseLong(str);
    }

    public static Short toShort(Object obj) {
        if (obj == null || (obj instanceof Short)) {
            return (Short) obj;
        }
        if (obj instanceof Number) {
            return Short.valueOf(((Number) obj).shortValue());
        }
        if (!(obj instanceof String)) {
            throw new JSONException("can not cast to byte");
        }
        String str = (String) obj;
        if (str.isEmpty() || "null".equals(str)) {
            return null;
        }
        return Short.valueOf(Short.parseShort(str));
    }

    public static short toShortValue(Object obj) {
        if (obj == null) {
            return (short) 0;
        }
        if (obj instanceof Short) {
            return ((Short) obj).shortValue();
        }
        if (obj instanceof Number) {
            return (byte) ((Number) obj).shortValue();
        }
        if (!(obj instanceof String)) {
            throw new JSONException("can not cast to byte");
        }
        String str = (String) obj;
        if (str.isEmpty() || "null".equals(str)) {
            return (short) 0;
        }
        return Short.parseShort(str);
    }

    public static String[] toStringArray(Object obj) {
        if (obj == null || (obj instanceof String[])) {
            return (String[]) obj;
        }
        int i = 0;
        if (obj instanceof Collection) {
            Collection collection = (Collection) obj;
            String[] strArr = new String[collection.size()];
            Iterator it2 = collection.iterator();
            while (it2.hasNext()) {
                Object next = it2.next();
                int i2 = i + 1;
                strArr[i] = (next == null || (next instanceof String)) ? (String) next : next.toString();
                i = i2;
            }
            return strArr;
        }
        if (!obj.getClass().isArray()) {
            return (String[]) cast(obj, String[].class, JSONFactory.defaultObjectReaderProvider);
        }
        int length = Array.getLength(obj);
        String[] strArr2 = new String[length];
        while (i < length) {
            Object obj2 = Array.get(obj, i);
            strArr2[i] = (obj2 == null || (obj2 instanceof String)) ? (String) obj2 : obj2.toString();
            i++;
        }
        return strArr2;
    }

    public static boolean validateIPv4(String str) {
        return m7601c(str, 0);
    }

    /* JADX WARN: Code restructure failed: missing block: B:159:0x0143, code lost:
    
        if (r6 <= 0) goto L145;
     */
    /* JADX WARN: Code restructure failed: missing block: B:161:0x0147, code lost:
    
        if (r6 >= 8) goto L145;
     */
    /* JADX WARN: Code restructure failed: missing block: B:163:?, code lost:
    
        return true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:164:0x014b, code lost:
    
        return false;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean validateIPv6(java.lang.String r16) {
        /*
            Method dump skipped, instructions count: 335
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson2.util.TypeUtils.validateIPv6(java.lang.String):boolean");
    }

    public static String getTypeName(Class cls) {
        String name = cls.getName();
        if (name.equals("java.util.HashMap")) {
            return "M";
        }
        if (name.equals("java.util.ArrayList")) {
            return "A";
        }
        if (name.equals("com.alibaba.fastjson.JSONObject")) {
            return "JO1";
        }
        if (name.equals("com.alibaba.fastjson.JSONArray")) {
            return "JA1";
        }
        if (name.equals("java.util.List")) {
            return name;
        }
        if (name.equals("com.alibaba.fastjson2.JSONArray")) {
            return "JSONArray";
        }
        if (name.equals(Constants.OBJECT_CLASS)) {
            return "Object";
        }
        if (name.equals("com.alibaba.fastjson2.JSONObject")) {
            return "JSONObject";
        }
        String str = C1751b.f12812a.get(cls);
        if (str != null) {
            return str;
        }
        int indexOf = name.indexOf(36);
        if (indexOf != -1 && isInteger(name.substring(indexOf + 1))) {
            Class superclass = cls.getSuperclass();
            if (Map.class.isAssignableFrom(superclass)) {
                return getTypeName(superclass);
            }
        }
        return name;
    }

    /* JADX WARN: Code restructure failed: missing block: B:26:0x0021, code lost:
    
        if (r1 <= '9') goto L20;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean isInteger(byte[] r6, int r7, int r8) {
        /*
            r0 = 0
            if (r6 == 0) goto L35
            if (r8 != 0) goto L6
            goto L35
        L6:
            r1 = r6[r7]
            char r1 = (char) r1
            r2 = 45
            r3 = 1
            if (r1 == r2) goto L15
            r2 = 43
            if (r1 != r2) goto L13
            goto L15
        L13:
            r2 = r0
            goto L16
        L15:
            r2 = r3
        L16:
            r4 = 57
            r5 = 48
            if (r2 == 0) goto L1f
            if (r8 != r3) goto L24
            return r0
        L1f:
            if (r1 < r5) goto L35
            if (r1 <= r4) goto L24
            goto L35
        L24:
            int r8 = r8 + r7
            int r7 = r7 + r3
        L26:
            if (r7 >= r8) goto L34
            r1 = r6[r7]
            char r1 = (char) r1
            if (r1 < r5) goto L33
            if (r1 <= r4) goto L30
            goto L33
        L30:
            int r7 = r7 + 1
            goto L26
        L33:
            return r0
        L34:
            return r3
        L35:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson2.util.TypeUtils.isInteger(byte[], int, int):boolean");
    }

    public static BigDecimal parseBigDecimal(byte[] bArr, int i, int i2) {
        int i3;
        boolean z;
        if (bArr == null || i2 == 0) {
            return null;
        }
        if (bArr[i] == 45) {
            i3 = i + 1;
            z = true;
        } else {
            i3 = i;
            z = false;
        }
        if (i2 <= 20 || (z && i2 == 21)) {
            int i4 = i + i2;
            int i5 = 0;
            int i6 = -1;
            long j = 0;
            while (i3 < i4) {
                byte b = bArr[i3];
                if (b != 46) {
                    if (b >= 48 && b <= 57) {
                        long j2 = j * 10;
                        if (((j | 10) >>> 31) == 0 || j2 / 10 == j) {
                            j = j2 + b + JSONB.Constants.BC_INT64_BYTE_ZERO;
                            i3++;
                        }
                    }
                    j = -1;
                    break;
                }
                i5++;
                if (i5 > 1) {
                    break;
                }
                i6 = i3;
                i3++;
            }
            if (j >= 0 && i5 <= 1) {
                if (z) {
                    j = -j;
                }
                return BigDecimal.valueOf(j, i6 != -1 ? (i2 - (i6 - i)) - 1 : 0);
            }
        }
        char[] cArr = new char[i2];
        for (int i7 = 0; i7 < i2; i7++) {
            cArr[i7] = (char) bArr[i + i7];
        }
        return new BigDecimal(cArr, 0, i2);
    }

    public static Boolean parseBoolean(char[] cArr, int i, int i2) {
        if (i2 == 0) {
            return null;
        }
        if (i2 == 1) {
            char c = cArr[i];
            if (c == '1' || c == 'Y') {
                return Boolean.TRUE;
            }
            if (c == '0' || c == 'N') {
                return Boolean.FALSE;
            }
        } else if (i2 != 4) {
            if (i2 == 5 && cArr[i] == 'f' && cArr[i + 1] == 'a' && cArr[i + 2] == 'l' && cArr[i + 3] == 's' && cArr[i + 4] == 'e') {
                return Boolean.FALSE;
            }
        } else if (cArr[i] == 't' && cArr[i + 1] == 'r' && cArr[i + 2] == 'u' && cArr[i + 3] == 'e') {
            return Boolean.TRUE;
        }
        return Boolean.valueOf(Boolean.parseBoolean(new String(cArr, i, i2)));
    }

    public static BigDecimal toBigDecimal(long j) {
        return BigDecimal.valueOf(j);
    }

    public static <T> T cast(Object obj, Type type) {
        return (T) cast(obj, type, JSONFactory.defaultObjectReaderProvider);
    }

    public static BigDecimal toBigDecimal(float f) {
        byte[] bArr = new byte[15];
        return parseBigDecimal(bArr, 0, DoubleToDecimal.toString(f, bArr, 0, true));
    }

    public static <T> T cast(Object obj, Type type, ObjectReaderProvider objectReaderProvider) {
        if (type instanceof Class) {
            return (T) cast(obj, (Class) type, objectReaderProvider);
        }
        if (obj instanceof Collection) {
            return (T) objectReaderProvider.getObjectReader(type).createInstance((Collection) obj);
        }
        if (obj instanceof Map) {
            return (T) objectReaderProvider.getObjectReader(type).createInstance((Map) obj, 0L);
        }
        return (T) JSON.parseObject(JSON.toJSONString(obj), type);
    }

    public static boolean isNumber(byte[] bArr, int i, int i2) {
        int i3;
        boolean z;
        boolean z2;
        if (bArr != null && i2 != 0) {
            char c = (char) bArr[i];
            if (c == '-' || c == '+') {
                if (i2 == 1) {
                    return false;
                }
                int i4 = i + 1;
                i3 = i4;
                c = (char) bArr[i4];
            } else if (c != '.') {
                i3 = i;
            } else {
                if (i2 == 1) {
                    return false;
                }
                i3 = i + 1;
            }
            int i5 = i + i2;
            if (!(c == '.') && c >= '0' && c <= '9') {
                while (i3 < i5) {
                    int i6 = i3 + 1;
                    c = (char) bArr[i3];
                    if (c < '0' || c > '9') {
                        i3 = i6;
                        z = true;
                    } else {
                        i3 = i6;
                    }
                }
                return true;
            }
            z = false;
            if (c != '.') {
                z2 = false;
            } else {
                if (i3 >= i5) {
                    return true;
                }
                int i7 = i3 + 1;
                char c2 = (char) bArr[i3];
                if (c2 >= '0' && c2 <= '9') {
                    while (i7 < i5) {
                        i3 = i7 + 1;
                        c = (char) bArr[i7];
                        if (c < '0' || c > '9') {
                            z2 = true;
                        } else {
                            i7 = i3;
                        }
                    }
                    return true;
                }
                z2 = true;
                i3 = i7;
                c = c2;
            }
            if (!z && !z2) {
                return false;
            }
            if (c == 'e' || c == 'E') {
                if (i3 == i5) {
                    return true;
                }
                int i8 = i3 + 1;
                char c3 = (char) bArr[i3];
                if (c3 == '+' || c3 == '-') {
                    if (i8 < i5) {
                        c3 = (char) bArr[i8];
                        i8++;
                    }
                }
                if (c3 >= '0' && c3 <= '9') {
                    while (i8 < i5) {
                        int i9 = i8 + 1;
                        char c4 = (char) bArr[i8];
                        if (c4 >= '0' && c4 <= '9') {
                            i8 = i9;
                        }
                    }
                    return true;
                }
            }
            return false;
        }
        return false;
    }

    public static BigDecimal toBigDecimal(double d) {
        byte[] bArr = new byte[24];
        return parseBigDecimal(bArr, 0, DoubleToDecimal.toString(d, bArr, 0, true));
    }

    /* JADX WARN: Removed duplicated region for block: B:101:0x00f4 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:102:0x00f7 A[Catch: StringIndexOutOfBoundsException -> 0x0104, TryCatch #0 {StringIndexOutOfBoundsException -> 0x0104, blocks: (B:4:0x000a, B:8:0x001e, B:12:0x002b, B:14:0x002f, B:16:0x003e, B:19:0x0036, B:21:0x003a, B:25:0x0043, B:26:0x0048, B:32:0x0050, B:35:0x0058, B:37:0x007e, B:40:0x0066, B:45:0x0076, B:47:0x007a, B:51:0x0084, B:52:0x0089, B:54:0x008a, B:62:0x0097, B:64:0x009d, B:68:0x00a7, B:78:0x00c7, B:81:0x00d1, B:83:0x00d8, B:84:0x00db, B:88:0x00e4, B:91:0x00e7, B:95:0x00b8, B:98:0x00ee, B:102:0x00f7, B:104:0x0099, B:109:0x001b, B:111:0x00fc, B:112:0x0103), top: B:2:0x0008 }] */
    /* JADX WARN: Removed duplicated region for block: B:104:0x0099 A[Catch: StringIndexOutOfBoundsException -> 0x0104, TryCatch #0 {StringIndexOutOfBoundsException -> 0x0104, blocks: (B:4:0x000a, B:8:0x001e, B:12:0x002b, B:14:0x002f, B:16:0x003e, B:19:0x0036, B:21:0x003a, B:25:0x0043, B:26:0x0048, B:32:0x0050, B:35:0x0058, B:37:0x007e, B:40:0x0066, B:45:0x0076, B:47:0x007a, B:51:0x0084, B:52:0x0089, B:54:0x008a, B:62:0x0097, B:64:0x009d, B:68:0x00a7, B:78:0x00c7, B:81:0x00d1, B:83:0x00d8, B:84:0x00db, B:88:0x00e4, B:91:0x00e7, B:95:0x00b8, B:98:0x00ee, B:102:0x00f7, B:104:0x0099, B:109:0x001b, B:111:0x00fc, B:112:0x0103), top: B:2:0x0008 }] */
    /* JADX WARN: Removed duplicated region for block: B:105:0x0090  */
    /* JADX WARN: Removed duplicated region for block: B:12:0x002b A[Catch: StringIndexOutOfBoundsException -> 0x0104, TRY_ENTER, TryCatch #0 {StringIndexOutOfBoundsException -> 0x0104, blocks: (B:4:0x000a, B:8:0x001e, B:12:0x002b, B:14:0x002f, B:16:0x003e, B:19:0x0036, B:21:0x003a, B:25:0x0043, B:26:0x0048, B:32:0x0050, B:35:0x0058, B:37:0x007e, B:40:0x0066, B:45:0x0076, B:47:0x007a, B:51:0x0084, B:52:0x0089, B:54:0x008a, B:62:0x0097, B:64:0x009d, B:68:0x00a7, B:78:0x00c7, B:81:0x00d1, B:83:0x00d8, B:84:0x00db, B:88:0x00e4, B:91:0x00e7, B:95:0x00b8, B:98:0x00ee, B:102:0x00f7, B:104:0x0099, B:109:0x001b, B:111:0x00fc, B:112:0x0103), top: B:2:0x0008 }] */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0050 A[Catch: StringIndexOutOfBoundsException -> 0x0104, TryCatch #0 {StringIndexOutOfBoundsException -> 0x0104, blocks: (B:4:0x000a, B:8:0x001e, B:12:0x002b, B:14:0x002f, B:16:0x003e, B:19:0x0036, B:21:0x003a, B:25:0x0043, B:26:0x0048, B:32:0x0050, B:35:0x0058, B:37:0x007e, B:40:0x0066, B:45:0x0076, B:47:0x007a, B:51:0x0084, B:52:0x0089, B:54:0x008a, B:62:0x0097, B:64:0x009d, B:68:0x00a7, B:78:0x00c7, B:81:0x00d1, B:83:0x00d8, B:84:0x00db, B:88:0x00e4, B:91:0x00e7, B:95:0x00b8, B:98:0x00ee, B:102:0x00f7, B:104:0x0099, B:109:0x001b, B:111:0x00fc, B:112:0x0103), top: B:2:0x0008 }] */
    /* JADX WARN: Removed duplicated region for block: B:56:0x008e  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x0097 A[Catch: StringIndexOutOfBoundsException -> 0x0104, TryCatch #0 {StringIndexOutOfBoundsException -> 0x0104, blocks: (B:4:0x000a, B:8:0x001e, B:12:0x002b, B:14:0x002f, B:16:0x003e, B:19:0x0036, B:21:0x003a, B:25:0x0043, B:26:0x0048, B:32:0x0050, B:35:0x0058, B:37:0x007e, B:40:0x0066, B:45:0x0076, B:47:0x007a, B:51:0x0084, B:52:0x0089, B:54:0x008a, B:62:0x0097, B:64:0x009d, B:68:0x00a7, B:78:0x00c7, B:81:0x00d1, B:83:0x00d8, B:84:0x00db, B:88:0x00e4, B:91:0x00e7, B:95:0x00b8, B:98:0x00ee, B:102:0x00f7, B:104:0x0099, B:109:0x001b, B:111:0x00fc, B:112:0x0103), top: B:2:0x0008 }] */
    /* JADX WARN: Removed duplicated region for block: B:70:0x00af  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x00c0  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x00e1 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:90:0x00eb  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x00b7  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static double parseDouble(char[] r18, int r19, int r20) throws java.lang.NumberFormatException {
        /*
            Method dump skipped, instructions count: 293
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson2.util.TypeUtils.parseDouble(char[], int, int):double");
    }

    /* JADX WARN: Removed duplicated region for block: B:101:0x00f4 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:102:0x00f6 A[Catch: StringIndexOutOfBoundsException -> 0x0103, TryCatch #0 {StringIndexOutOfBoundsException -> 0x0103, blocks: (B:4:0x000a, B:8:0x001e, B:12:0x002b, B:14:0x002f, B:16:0x003e, B:19:0x0036, B:21:0x003a, B:25:0x0043, B:26:0x0048, B:32:0x0050, B:35:0x0058, B:37:0x007e, B:40:0x0066, B:45:0x0076, B:47:0x007a, B:51:0x0084, B:52:0x0089, B:54:0x008a, B:62:0x0097, B:64:0x009d, B:68:0x00a7, B:78:0x00c7, B:81:0x00d1, B:83:0x00d8, B:84:0x00db, B:88:0x00e4, B:91:0x00e7, B:95:0x00b8, B:98:0x00ee, B:102:0x00f6, B:104:0x0099, B:109:0x001b, B:111:0x00fb, B:112:0x0102), top: B:2:0x0008 }] */
    /* JADX WARN: Removed duplicated region for block: B:104:0x0099 A[Catch: StringIndexOutOfBoundsException -> 0x0103, TryCatch #0 {StringIndexOutOfBoundsException -> 0x0103, blocks: (B:4:0x000a, B:8:0x001e, B:12:0x002b, B:14:0x002f, B:16:0x003e, B:19:0x0036, B:21:0x003a, B:25:0x0043, B:26:0x0048, B:32:0x0050, B:35:0x0058, B:37:0x007e, B:40:0x0066, B:45:0x0076, B:47:0x007a, B:51:0x0084, B:52:0x0089, B:54:0x008a, B:62:0x0097, B:64:0x009d, B:68:0x00a7, B:78:0x00c7, B:81:0x00d1, B:83:0x00d8, B:84:0x00db, B:88:0x00e4, B:91:0x00e7, B:95:0x00b8, B:98:0x00ee, B:102:0x00f6, B:104:0x0099, B:109:0x001b, B:111:0x00fb, B:112:0x0102), top: B:2:0x0008 }] */
    /* JADX WARN: Removed duplicated region for block: B:105:0x0090  */
    /* JADX WARN: Removed duplicated region for block: B:12:0x002b A[Catch: StringIndexOutOfBoundsException -> 0x0103, TRY_ENTER, TryCatch #0 {StringIndexOutOfBoundsException -> 0x0103, blocks: (B:4:0x000a, B:8:0x001e, B:12:0x002b, B:14:0x002f, B:16:0x003e, B:19:0x0036, B:21:0x003a, B:25:0x0043, B:26:0x0048, B:32:0x0050, B:35:0x0058, B:37:0x007e, B:40:0x0066, B:45:0x0076, B:47:0x007a, B:51:0x0084, B:52:0x0089, B:54:0x008a, B:62:0x0097, B:64:0x009d, B:68:0x00a7, B:78:0x00c7, B:81:0x00d1, B:83:0x00d8, B:84:0x00db, B:88:0x00e4, B:91:0x00e7, B:95:0x00b8, B:98:0x00ee, B:102:0x00f6, B:104:0x0099, B:109:0x001b, B:111:0x00fb, B:112:0x0102), top: B:2:0x0008 }] */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0050 A[Catch: StringIndexOutOfBoundsException -> 0x0103, TryCatch #0 {StringIndexOutOfBoundsException -> 0x0103, blocks: (B:4:0x000a, B:8:0x001e, B:12:0x002b, B:14:0x002f, B:16:0x003e, B:19:0x0036, B:21:0x003a, B:25:0x0043, B:26:0x0048, B:32:0x0050, B:35:0x0058, B:37:0x007e, B:40:0x0066, B:45:0x0076, B:47:0x007a, B:51:0x0084, B:52:0x0089, B:54:0x008a, B:62:0x0097, B:64:0x009d, B:68:0x00a7, B:78:0x00c7, B:81:0x00d1, B:83:0x00d8, B:84:0x00db, B:88:0x00e4, B:91:0x00e7, B:95:0x00b8, B:98:0x00ee, B:102:0x00f6, B:104:0x0099, B:109:0x001b, B:111:0x00fb, B:112:0x0102), top: B:2:0x0008 }] */
    /* JADX WARN: Removed duplicated region for block: B:56:0x008e  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x0097 A[Catch: StringIndexOutOfBoundsException -> 0x0103, TryCatch #0 {StringIndexOutOfBoundsException -> 0x0103, blocks: (B:4:0x000a, B:8:0x001e, B:12:0x002b, B:14:0x002f, B:16:0x003e, B:19:0x0036, B:21:0x003a, B:25:0x0043, B:26:0x0048, B:32:0x0050, B:35:0x0058, B:37:0x007e, B:40:0x0066, B:45:0x0076, B:47:0x007a, B:51:0x0084, B:52:0x0089, B:54:0x008a, B:62:0x0097, B:64:0x009d, B:68:0x00a7, B:78:0x00c7, B:81:0x00d1, B:83:0x00d8, B:84:0x00db, B:88:0x00e4, B:91:0x00e7, B:95:0x00b8, B:98:0x00ee, B:102:0x00f6, B:104:0x0099, B:109:0x001b, B:111:0x00fb, B:112:0x0102), top: B:2:0x0008 }] */
    /* JADX WARN: Removed duplicated region for block: B:70:0x00af  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x00c0  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x00e1 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:90:0x00eb  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x00b7  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static float parseFloat(char[] r18, int r19, int r20) throws java.lang.NumberFormatException {
        /*
            Method dump skipped, instructions count: 292
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson2.util.TypeUtils.parseFloat(char[], int, int):float");
    }

    public static BigDecimal toBigDecimal(String str) {
        if (str == null || str.isEmpty() || "null".equals(str)) {
            return null;
        }
        char[] charArray = str.toCharArray();
        return parseBigDecimal(charArray, 0, charArray.length);
    }

    public static BigDecimal toBigDecimal(char[] cArr) {
        if (cArr == null) {
            return null;
        }
        return parseBigDecimal(cArr, 0, cArr.length);
    }

    public static Class getMapping(String str) {
        return C1751b.f12813b.get(str);
    }

    public static BigDecimal toBigDecimal(byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        return parseBigDecimal(bArr, 0, bArr.length);
    }

    public static boolean isNumber(char[] cArr, int i, int i2) {
        int i3;
        boolean z;
        boolean z2;
        if (cArr != null && i2 != 0) {
            char c = cArr[i];
            if (c == '-' || c == '+') {
                if (i2 == 1) {
                    return false;
                }
                int i4 = i + 1;
                i3 = i4;
                c = cArr[i4];
            } else if (c != '.') {
                i3 = i;
            } else {
                if (i2 == 1) {
                    return false;
                }
                i3 = i + 1;
            }
            int i5 = i + i2;
            if (!(c == '.') && c >= '0' && c <= '9') {
                while (i3 < i5) {
                    int i6 = i3 + 1;
                    c = cArr[i3];
                    if (c < '0' || c > '9') {
                        i3 = i6;
                        z = true;
                    } else {
                        i3 = i6;
                    }
                }
                return true;
            }
            z = false;
            if (c != '.') {
                z2 = false;
            } else {
                if (i3 >= i5) {
                    return true;
                }
                int i7 = i3 + 1;
                char c2 = cArr[i3];
                if (c2 >= '0' && c2 <= '9') {
                    while (i7 < i5) {
                        i3 = i7 + 1;
                        c = cArr[i7];
                        if (c < '0' || c > '9') {
                            z2 = true;
                        } else {
                            i7 = i3;
                        }
                    }
                    return true;
                }
                z2 = true;
                i3 = i7;
                c = c2;
            }
            if (!z && !z2) {
                return false;
            }
            if (c == 'e' || c == 'E') {
                if (i3 == i5) {
                    return true;
                }
                int i8 = i3 + 1;
                char c3 = cArr[i3];
                if (c3 == '+' || c3 == '-') {
                    if (i8 < i5) {
                        c3 = cArr[i8];
                        i8++;
                    }
                }
                if (c3 >= '0' && c3 <= '9') {
                    while (i8 < i5) {
                        int i9 = i8 + 1;
                        char c4 = cArr[i8];
                        if (c4 >= '0' && c4 <= '9') {
                            i8 = i9;
                        }
                    }
                    return true;
                }
            }
            return false;
        }
        return false;
    }

    public static <T> T cast(Object obj, Class<T> cls) {
        return (T) cast(obj, (Class) cls, JSONFactory.defaultObjectReaderProvider);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static <T> T cast(Object obj, Class<T> cls, ObjectReaderProvider objectReaderProvider) {
        Function function;
        JSONReader m7296of;
        if (obj == 0) {
            return null;
        }
        if (cls.isInstance(obj)) {
            return obj;
        }
        if (cls == Date.class) {
            return (T) toDate(obj);
        }
        if (cls == Instant.class) {
            return (T) toInstant(obj);
        }
        if (cls == String.class) {
            if (obj instanceof Character) {
                return (T) obj.toString();
            }
            return (T) JSON.toJSONString(obj);
        }
        if (cls == AtomicInteger.class) {
            return (T) new AtomicInteger(toIntValue(obj));
        }
        if (cls == AtomicLong.class) {
            return (T) new AtomicLong(toLongValue(obj));
        }
        if (cls == AtomicBoolean.class) {
            return (T) new AtomicBoolean(((Boolean) obj).booleanValue());
        }
        if (obj instanceof Map) {
            return (T) objectReaderProvider.getObjectReader(cls).createInstance((Map) obj, 0L);
        }
        Function typeConvert = objectReaderProvider.getTypeConvert(obj.getClass(), cls);
        if (typeConvert != null) {
            return (T) typeConvert.apply(obj);
        }
        if (cls.isEnum()) {
            ObjectReader objectReader = JSONFactory.getDefaultObjectReaderProvider().getObjectReader(cls);
            if (objectReader instanceof ObjectReaderImplEnum) {
                if (obj instanceof Integer) {
                    return (T) ((ObjectReaderImplEnum) objectReader).m7446of(((Integer) obj).intValue());
                }
                return (T) objectReader.readObject(JSONReader.m7296of(JSON.toJSONString(obj)), cls, null, 0L);
            }
        }
        if (obj instanceof String) {
            String str = (String) obj;
            if (str.isEmpty() || "null".equals(str)) {
                return null;
            }
            char charAt = str.trim().charAt(0);
            if (charAt != '\"' && charAt != '{' && charAt != '[') {
                m7296of = JSONReader.m7296of(JSON.toJSONString(str));
            } else {
                m7296of = JSONReader.m7296of(str);
            }
            return (T) JSONFactory.getDefaultObjectReaderProvider().getObjectReader(cls).readObject(m7296of, cls, null, 0L);
        }
        if (cls.isEnum() && (obj instanceof Integer)) {
            int intValue = ((Integer) obj).intValue();
            ObjectReader objectReader2 = JSONFactory.defaultObjectReaderProvider.getObjectReader(cls);
            if (objectReader2 instanceof ObjectReaderImplEnum) {
                return (T) ((ObjectReaderImplEnum) objectReader2).m7446of(intValue);
            }
            if (objectReader2 instanceof ObjectReaderImplEnum2X4) {
                return (T) ((ObjectReaderImplEnum2X4) objectReader2).getEnumByOrdinal(intValue);
            }
        }
        if (obj instanceof Collection) {
            return (T) objectReaderProvider.getObjectReader(cls).createInstance((Collection) obj);
        }
        String name = cls.getName();
        if ((obj instanceof Integer) || (obj instanceof Long)) {
            long longValue = ((Number) obj).longValue();
            if (name.equals("java.sql.Date")) {
                return (T) new java.sql.Date(longValue);
            }
            if (name.equals("java.sql.Time")) {
                return (T) new Time(longValue);
            }
            if (name.equals("java.sql.Timestamp")) {
                return (T) new Timestamp(longValue);
            }
        }
        ObjectWriter objectWriter = JSONFactory.defaultObjectWriterProvider.getObjectWriter((Class) obj.getClass());
        if ((objectWriter instanceof ObjectWriterPrimitiveImpl) && (function = ((ObjectWriterPrimitiveImpl) objectWriter).getFunction()) != null) {
            T t = (T) function.apply(obj);
            if (cls.isInstance(t)) {
                return t;
            }
        }
        throw new JSONException("can not cast to " + name + ", from " + obj.getClass());
    }

    public static float floatValue(int i, long j, int i2) {
        float f;
        float scalb;
        long numberOfLeadingZeros = (64 - Long.numberOfLeadingZeros(j)) - ((long) Math.ceil(i2 * 3.321928094887362d));
        if (numberOfLeadingZeros < -151) {
            f = i;
            scalb = 0.0f;
        } else if (numberOfLeadingZeros > 129) {
            f = i;
            scalb = Float.POSITIVE_INFINITY;
        } else if (i2 < 0) {
            f = i;
            scalb = BigInteger.valueOf(j).multiply(m7599a(-i2)).floatValue();
        } else {
            BigInteger valueOf = BigInteger.valueOf(j);
            int i3 = ((int) numberOfLeadingZeros) - 27;
            BigInteger m7599a = m7599a(i2);
            if (i3 <= 0) {
                valueOf = valueOf.shiftLeft(-i3);
            } else {
                m7599a = m7599a.shiftLeft(i3);
            }
            BigInteger[] divideAndRemainder = valueOf.divideAndRemainder(m7599a);
            int intValue = divideAndRemainder[0].intValue();
            int signum = divideAndRemainder[1].signum();
            if (6 - Integer.numberOfLeadingZeros(intValue) >= (-151) - i3) {
                f = i;
                scalb = Math.scalb(signum | intValue, i3);
            } else {
                f = i;
                scalb = Math.scalb(signum | Integer.signum(((1 << r2) - 1) & intValue) | (intValue >> r2), -151);
            }
        }
        return f * scalb;
    }

    public static double doubleValue(int i, long j, int i2) {
        double d;
        double scalb;
        double d2;
        double d3;
        long numberOfLeadingZeros = (64 - Long.numberOfLeadingZeros(j)) - ((long) Math.ceil(i2 * 3.321928094887362d));
        if (numberOfLeadingZeros < -1076) {
            d2 = i;
            d3 = 0.0d;
        } else {
            if (numberOfLeadingZeros <= 1025) {
                if (i2 < 0) {
                    d = i;
                    scalb = BigInteger.valueOf(j).multiply(m7599a(-i2)).doubleValue();
                } else if (i2 == 0) {
                    d = i;
                    scalb = j;
                } else {
                    BigInteger valueOf = BigInteger.valueOf(j);
                    int i3 = ((int) numberOfLeadingZeros) - 56;
                    BigInteger m7599a = m7599a(i2);
                    if (i3 <= 0) {
                        valueOf = valueOf.shiftLeft(-i3);
                    } else {
                        m7599a = m7599a.shiftLeft(i3);
                    }
                    BigInteger[] divideAndRemainder = valueOf.divideAndRemainder(m7599a);
                    long longValue = divideAndRemainder[0].longValue();
                    int signum = divideAndRemainder[1].signum();
                    int i4 = (-1076) - i3;
                    if (9 - Long.numberOfLeadingZeros(longValue) >= i4) {
                        return i * Math.scalb(signum | longValue, i3);
                    }
                    long signum2 = (longValue >> i4) | Long.signum(longValue & ((1 << i4) - 1)) | signum;
                    d = i;
                    scalb = Math.scalb(signum2, -1076);
                }
                return d * scalb;
            }
            d2 = i;
            d3 = Double.POSITIVE_INFINITY;
        }
        return d2 * d3;
    }

    public static int parseInt(char[] cArr, int i, int i2) {
        switch (i2) {
            case 1:
                char c = cArr[i];
                if (c >= '0' && c <= '9') {
                    return c - '0';
                }
                break;
            case 2:
                char c2 = cArr[i];
                char c3 = cArr[i + 1];
                if (c2 >= '0' && c2 <= '9' && c3 >= '0' && c3 <= '9') {
                    return ((c2 - '0') * 10) + (c3 - '0');
                }
                break;
            case 3:
                char c4 = cArr[i];
                char c5 = cArr[i + 1];
                char c6 = cArr[i + 2];
                if (c4 >= '0' && c4 <= '9' && c5 >= '0' && c5 <= '9' && c6 >= '0' && c6 <= '9') {
                    return ((c4 - '0') * 100) + ((c5 - '0') * 10) + (c6 - '0');
                }
                break;
            case 4:
                char c7 = cArr[i];
                char c8 = cArr[i + 1];
                char c9 = cArr[i + 2];
                char c10 = cArr[i + 3];
                if (c7 >= '0' && c7 <= '9' && c8 >= '0' && c8 <= '9' && c9 >= '0' && c9 <= '9' && c10 >= '0' && c10 <= '9') {
                    return ((c7 - '0') * 1000) + ((c8 - '0') * 100) + ((c9 - '0') * 10) + (c10 - '0');
                }
                break;
            case 5:
                char c11 = cArr[i];
                char c12 = cArr[i + 1];
                char c13 = cArr[i + 2];
                char c14 = cArr[i + 3];
                char c15 = cArr[i + 4];
                if (c11 >= '0' && c11 <= '9' && c12 >= '0' && c12 <= '9' && c13 >= '0' && c13 <= '9' && c14 >= '0' && c14 <= '9' && c15 >= '0' && c15 <= '9') {
                    return ((c11 - '0') * 10000) + ((c12 - '0') * 1000) + ((c13 - '0') * 100) + ((c14 - '0') * 10) + (c15 - '0');
                }
                break;
            case 6:
                char c16 = cArr[i];
                char c17 = cArr[i + 1];
                char c18 = cArr[i + 2];
                char c19 = cArr[i + 3];
                char c20 = cArr[i + 4];
                char c21 = cArr[i + 5];
                if (c16 >= '0' && c16 <= '9' && c17 >= '0' && c17 <= '9' && c18 >= '0' && c18 <= '9' && c19 >= '0' && c19 <= '9' && c20 >= '0' && c20 <= '9' && c21 >= '0' && c21 <= '9') {
                    return ((c16 - '0') * 100000) + ((c17 - '0') * 10000) + ((c18 - '0') * 1000) + ((c19 - '0') * 100) + ((c20 - '0') * 10) + (c21 - '0');
                }
                break;
            case 7:
                char c22 = cArr[i];
                char c23 = cArr[i + 1];
                char c24 = cArr[i + 2];
                char c25 = cArr[i + 3];
                char c26 = cArr[i + 4];
                char c27 = cArr[i + 5];
                char c28 = cArr[i + 6];
                if (c22 >= '0' && c22 <= '9' && c23 >= '0' && c23 <= '9' && c24 >= '0' && c24 <= '9' && c25 >= '0' && c25 <= '9' && c26 >= '0' && c26 <= '9' && c27 >= '0' && c27 <= '9' && c28 >= '0' && c28 <= '9') {
                    return ((c22 - '0') * 1000000) + ((c23 - '0') * 100000) + ((c24 - '0') * 10000) + ((c25 - '0') * 1000) + ((c26 - '0') * 100) + ((c27 - '0') * 10) + (c28 - '0');
                }
                break;
            case 8:
                char c29 = cArr[i];
                char c30 = cArr[i + 1];
                char c31 = cArr[i + 2];
                char c32 = cArr[i + 3];
                char c33 = cArr[i + 4];
                char c34 = cArr[i + 5];
                char c35 = cArr[i + 6];
                char c36 = cArr[i + 7];
                if (c29 >= '0' && c29 <= '9' && c30 >= '0' && c30 <= '9' && c31 >= '0' && c31 <= '9' && c32 >= '0' && c32 <= '9' && c33 >= '0' && c33 <= '9' && c34 >= '0' && c34 <= '9' && c35 >= '0' && c35 <= '9' && c36 >= '0' && c36 <= '9') {
                    return ((c29 - '0') * 10000000) + ((c30 - '0') * 1000000) + ((c31 - '0') * 100000) + ((c32 - '0') * 10000) + ((c33 - '0') * 1000) + ((c34 - '0') * 100) + ((c35 - '0') * 10) + (c36 - '0');
                }
                break;
        }
        return Integer.parseInt(new String(cArr, i, i2));
    }

    public static long parseLong(char[] cArr, int i, int i2) {
        switch (i2) {
            case 1:
                char c = cArr[i];
                if (c >= '0' && c <= '9') {
                    return c - '0';
                }
                break;
            case 2:
                char c2 = cArr[i];
                char c3 = cArr[i + 1];
                if (c2 >= '0' && c2 <= '9' && c3 >= '0' && c3 <= '9') {
                    return ((c2 - '0') * 10) + (c3 - '0');
                }
                break;
            case 3:
                char c4 = cArr[i];
                char c5 = cArr[i + 1];
                char c6 = cArr[i + 2];
                if (c4 >= '0' && c4 <= '9' && c5 >= '0' && c5 <= '9' && c6 >= '0' && c6 <= '9') {
                    return ((c4 - '0') * 100) + ((c5 - '0') * 10) + (c6 - '0');
                }
                break;
            case 4:
                char c7 = cArr[i];
                char c8 = cArr[i + 1];
                char c9 = cArr[i + 2];
                char c10 = cArr[i + 3];
                if (c7 >= '0' && c7 <= '9' && c8 >= '0' && c8 <= '9' && c9 >= '0' && c9 <= '9' && c10 >= '0' && c10 <= '9') {
                    return ((c7 - '0') * 1000) + ((c8 - '0') * 100) + ((c9 - '0') * 10) + (c10 - '0');
                }
                break;
            case 5:
                char c11 = cArr[i];
                char c12 = cArr[i + 1];
                char c13 = cArr[i + 2];
                char c14 = cArr[i + 3];
                char c15 = cArr[i + 4];
                if (c11 >= '0' && c11 <= '9' && c12 >= '0' && c12 <= '9' && c13 >= '0' && c13 <= '9' && c14 >= '0' && c14 <= '9' && c15 >= '0' && c15 <= '9') {
                    return ((c11 - '0') * 10000) + ((c12 - '0') * 1000) + ((c13 - '0') * 100) + ((c14 - '0') * 10) + (c15 - '0');
                }
                break;
            case 6:
                char c16 = cArr[i];
                char c17 = cArr[i + 1];
                char c18 = cArr[i + 2];
                char c19 = cArr[i + 3];
                char c20 = cArr[i + 4];
                char c21 = cArr[i + 5];
                if (c16 >= '0' && c16 <= '9' && c17 >= '0' && c17 <= '9' && c18 >= '0' && c18 <= '9' && c19 >= '0' && c19 <= '9' && c20 >= '0' && c20 <= '9' && c21 >= '0' && c21 <= '9') {
                    return ((c16 - '0') * 100000) + ((c17 - '0') * 10000) + ((c18 - '0') * 1000) + ((c19 - '0') * 100) + ((c20 - '0') * 10) + (c21 - '0');
                }
                break;
            case 7:
                char c22 = cArr[i];
                char c23 = cArr[i + 1];
                char c24 = cArr[i + 2];
                char c25 = cArr[i + 3];
                char c26 = cArr[i + 4];
                char c27 = cArr[i + 5];
                char c28 = cArr[i + 6];
                if (c22 >= '0' && c22 <= '9' && c23 >= '0' && c23 <= '9' && c24 >= '0' && c24 <= '9' && c25 >= '0' && c25 <= '9' && c26 >= '0' && c26 <= '9' && c27 >= '0' && c27 <= '9' && c28 >= '0' && c28 <= '9') {
                    return ((c22 - '0') * 1000000) + ((c23 - '0') * 100000) + ((c24 - '0') * 10000) + ((c25 - '0') * 1000) + ((c26 - '0') * 100) + ((c27 - '0') * 10) + (c28 - '0');
                }
                break;
            case 8:
                char c29 = cArr[i];
                char c30 = cArr[i + 1];
                char c31 = cArr[i + 2];
                char c32 = cArr[i + 3];
                char c33 = cArr[i + 4];
                char c34 = cArr[i + 5];
                char c35 = cArr[i + 6];
                char c36 = cArr[i + 7];
                if (c29 >= '0' && c29 <= '9' && c30 >= '0' && c30 <= '9' && c31 >= '0' && c31 <= '9' && c32 >= '0' && c32 <= '9' && c33 >= '0' && c33 <= '9' && c34 >= '0' && c34 <= '9' && c35 >= '0' && c35 <= '9' && c36 >= '0' && c36 <= '9') {
                    return ((c29 - '0') * 10000000) + ((c30 - '0') * 1000000) + ((c31 - '0') * 100000) + ((c32 - '0') * 10000) + ((c33 - '0') * 1000) + ((c34 - '0') * 100) + ((c35 - '0') * 10) + (c36 - '0');
                }
                break;
        }
        return Long.parseLong(new String(cArr, i, i2));
    }
}
