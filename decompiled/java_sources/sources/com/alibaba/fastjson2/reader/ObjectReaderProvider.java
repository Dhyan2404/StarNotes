package com.alibaba.fastjson2.reader;

import androidx.credentials.provider.utils.PrivilegedApp;
import androidx.lifecycle.SavedStateHandle;
import com.alibaba.fastjson2.JSONArray;
import com.alibaba.fastjson2.JSONException;
import com.alibaba.fastjson2.JSONFactory;
import com.alibaba.fastjson2.JSONReader;
import com.alibaba.fastjson2.PropertyNamingStrategy;
import com.alibaba.fastjson2.annotation.JSONBuilder;
import com.alibaba.fastjson2.annotation.JSONCreator;
import com.alibaba.fastjson2.annotation.JSONField;
import com.alibaba.fastjson2.annotation.JSONType;
import com.alibaba.fastjson2.codec.BeanInfo;
import com.alibaba.fastjson2.codec.FieldInfo;
import com.alibaba.fastjson2.function.impl.StringToAny;
import com.alibaba.fastjson2.function.impl.ToAny;
import com.alibaba.fastjson2.reader.ObjectReaderProvider;
import com.alibaba.fastjson2.util.BeanUtils;
import com.alibaba.fastjson2.util.Fnv;
import com.alibaba.fastjson2.util.JdbcSupport;
import com.alibaba.fastjson2.util.MapMultiValueType;
import com.alibaba.fastjson2.util.MultiType;
import com.alibaba.fastjson2.util.ParameterizedTypeImpl;
import com.alibaba.fastjson2.util.TypeUtils;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.cloudstorage.provider.huaweidrive.bean.HuaweiYunQueryArgs;
import com.sun.org.apache.xalan.internal.extensions.ExtensionNamespaceContext;
import com.sunia.HTREnginev2.a7k;
import com.sunia.HTREnginev2.a8k;
import com.sunia.HTREnginev2.aak;
import com.sunia.HTREnginev2.b7k;
import com.sunia.HTREnginev2.b8k;
import com.sunia.HTREnginev2.c8k;
import com.sunia.HTREnginev2.d8k;
import com.sunia.HTREnginev2.e8k;
import com.sunia.HTREnginev2.f8k;
import com.sunia.HTREnginev2.f9k;
import com.sunia.HTREnginev2.g8k;
import com.sunia.HTREnginev2.g9k;
import com.sunia.HTREnginev2.gbk;
import com.sunia.HTREnginev2.h8k;
import com.sunia.HTREnginev2.h9k;
import com.sunia.HTREnginev2.i8k;
import com.sunia.HTREnginev2.i9k;
import com.sunia.HTREnginev2.j8k;
import com.sunia.HTREnginev2.n7k;
import com.sunia.HTREnginev2.n9k;
import com.sunia.HTREnginev2.o7k;
import com.sunia.HTREnginev2.o9k;
import com.sunia.HTREnginev2.p7k;
import com.sunia.HTREnginev2.p9k;
import com.sunia.HTREnginev2.q7k;
import com.sunia.HTREnginev2.q9k;
import com.sunia.HTREnginev2.r7k;
import com.sunia.HTREnginev2.r9k;
import com.sunia.HTREnginev2.s7k;
import com.sunia.HTREnginev2.s9k;
import com.sunia.HTREnginev2.t7k;
import com.sunia.HTREnginev2.t9k;
import com.sunia.HTREnginev2.u7k;
import com.sunia.HTREnginev2.u9k;
import com.sunia.HTREnginev2.v7k;
import com.sunia.HTREnginev2.v9k;
import com.sunia.HTREnginev2.w7k;
import com.sunia.HTREnginev2.w9k;
import com.sunia.HTREnginev2.x7k;
import com.sunia.HTREnginev2.x9k;
import com.sunia.HTREnginev2.y7k;
import com.sunia.HTREnginev2.y9k;
import com.sunia.HTREnginev2.z7k;
import com.sunia.HTREnginev2.z9k;
import java.io.Closeable;
import java.io.File;
import java.io.Serializable;
import java.lang.annotation.Annotation;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.Method;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.lang.reflect.WildcardType;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.net.InetAddress;
import java.net.MalformedURLException;
import java.net.URI;
import java.net.URL;
import java.net.UnknownHostException;
import java.nio.charset.Charset;
import java.text.SimpleDateFormat;
import java.time.Instant;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.LocalTime;
import java.time.OffsetDateTime;
import java.time.OffsetTime;
import java.time.ZoneId;
import java.time.ZoneOffset;
import java.time.ZonedDateTime;
import java.util.AbstractCollection;
import java.util.AbstractList;
import java.util.AbstractMap;
import java.util.AbstractSequentialList;
import java.util.AbstractSet;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Collection;
import java.util.Collections;
import java.util.Currency;
import java.util.Date;
import java.util.Deque;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.LinkedList;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.NavigableMap;
import java.util.NavigableSet;
import java.util.Optional;
import java.util.OptionalDouble;
import java.util.OptionalInt;
import java.util.OptionalLong;
import java.util.Queue;
import java.util.Set;
import java.util.SortedMap;
import java.util.SortedSet;
import java.util.TimeZone;
import java.util.TreeMap;
import java.util.TreeSet;
import java.util.UUID;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.ConcurrentNavigableMap;
import java.util.concurrent.ConcurrentSkipListMap;
import java.util.concurrent.ConcurrentSkipListSet;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicIntegerArray;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicLongArray;
import java.util.concurrent.atomic.AtomicReference;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.IntFunction;
import java.util.function.LongFunction;
import java.util.regex.Pattern;
import javax.sql.DataSource;
import javax.sql.RowSet;
import org.apache.commons.text.AlphabetConverter;

/* loaded from: classes3.dex */
public class ObjectReaderProvider {

    /* renamed from: k */
    public static C1746a f12746k;

    /* renamed from: a */
    public final ConcurrentMap<Type, ObjectReader> f12747a = new ConcurrentHashMap();

    /* renamed from: b */
    public final ConcurrentMap<Type, ObjectReader> f12748b = new ConcurrentHashMap();

    /* renamed from: c */
    public final ConcurrentMap<Long, ObjectReader> f12749c;
    public final ObjectReaderCreator creator;

    /* renamed from: d */
    public final ConcurrentMap<Class, Class> f12750d;

    /* renamed from: e */
    public final LRUAutoTypeCache f12751e;

    /* renamed from: f */
    public ConcurrentMap<Type, Map<Type, Function>> f12752f;

    /* renamed from: g */
    public long[] f12753g;

    /* renamed from: h */
    public long[] f12754h;

    /* renamed from: i */
    public JSONReader.AutoTypeBeforeHandler f12755i;

    /* renamed from: j */
    public Consumer<Class> f12756j;

    /* loaded from: classes3.dex */
    public static class LRUAutoTypeCache extends LinkedHashMap<String, Date> {
        private final int maxSize;

        public LRUAutoTypeCache(int i) {
            super(16, 0.75f, false);
            this.maxSize = i;
        }

        @Override // java.util.LinkedHashMap
        public boolean removeEldestEntry(Map.Entry<String, Date> entry) {
            return size() > this.maxSize;
        }
    }

    /* renamed from: com.alibaba.fastjson2.reader.ObjectReaderProvider$a */
    /* loaded from: classes3.dex */
    public static class C1746a {

        /* renamed from: a */
        public final long f12757a;

        /* renamed from: b */
        public final ObjectReader f12758b;

        /* renamed from: c */
        public volatile int f12759c;

        public C1746a(long j, ObjectReader objectReader) {
            this.f12757a = j;
            this.f12758b = objectReader;
        }
    }

    public ObjectReaderProvider() {
        ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap();
        this.f12749c = concurrentHashMap;
        this.f12750d = new ConcurrentHashMap();
        this.f12751e = new LRUAutoTypeCache(1024);
        this.f12753g = new long[]{-9164606388214699518L, -8754006975464705441L, -8720046426850100497L, -8649961213709896794L, -8614556368991373401L, -8382625455832334425L, -8165637398350707645L, -8109300701639721088L, -7966123100503199569L, -7921218830998286408L, -7775351613326101303L, -7768608037458185275L, -7766605818834748097L, -6835437086156813536L, -6316154655839304624L, -6179589609550493385L, -6149130139291498841L, -6149093380703242441L, -6088208984980396913L, -6025144546313590215L, -5939269048541779808L, -5885964883385605994L, -5767141746063564198L, -5764804792063216819L, -5472097725414717105L, -5194641081268104286L, -5076846148177416215L, -4837536971810737970L, -4836620931940850535L, -4733542790109620528L, -4703320437989596122L, -4608341446948126581L, -4537258998789938600L, -4438775680185074100L, -4314457471973557243L, -4150995715611818742L, -4082057040235125754L, -3975378478825053783L, -3967588558552655563L, -3935185854875733362L, -3319207949486691020L, -3077205613010077203L, -3053747177772160511L, -2995060141064716555L, -2825378362173150292L, -2533039401923731906L, -2439930098895578154L, -2378990704010641148L, -2364987994247679115L, -2262244760619952081L, -2192804397019347313L, -2095516571388852610L, -1872417015366588117L, -1650485814983027158L, -1589194880214235129L, -965955008570215305L, -905177026366752536L, -831789045734283466L, -803541446955902575L, -731978084025273882L, -666475508176557463L, -582813228520337988L, -254670111376247151L, -219577392946377768L, -190281065685395680L, -26639035867733124L, -9822483067882491L, 4750336058574309L, 33238344207745342L, 156405680656087946L, 218512992947536312L, 313864100207897507L, 386461436234701831L, 744602970950881621L, 823641066473609950L, 1073634739308289776L, 1153291637701043748L, 1203232727967308606L, 1214780596910349029L, 1268707909007641340L, 1459860845934817624L, 1502845958873959152L, 1534439610567445754L, 1698504441317515818L, 1818089308493370394L, 2078113382421334967L, 2164696723069287854L, 2622551729063269307L, 2653453629929770569L, 2660670623866180977L, 2731823439467737506L, 2836431254737891113L, 2930861374593775110L, 3058452313624178956L, 3085473968517218653L, 3089451460101527857L, 3114862868117605599L, 3129395579983849527L, 3256258368248066264L, 3452379460455804429L, 3547627781654598988L, 3637939656440441093L, 3688179072722109200L, 3718352661124136681L, 3730752432285826863L, 3740226159580918099L, 3794316665763266033L, 3977090344859527316L, 4000049462512838776L, 4046190361520671643L, 4147696707147271408L, 4193204392725694463L, 4215053018660518963L, 4241163808635564644L, 4254584350247334433L, 4814658433570175913L, 4841947709850912914L, 4904007817188630457L, 5100336081510080343L, 5120543992130540564L, 5274044858141538265L, 5347909877633654828L, 5450448828334921485L, 5474268165959054640L, 5545425291794704408L, 5596129856135573697L, 5688200883751798389L, 5751393439502795295L, 5916409771425455946L, 5944107969236155580L, 6007332606592876737L, 6090377589998869205L, 6280357960959217660L, 6456855723474196908L, 6511035576063254270L, 6534946468240507089L, 6584624952928234050L, 6734240326434096246L, 6742705432718011780L, 6800727078373023163L, 6854854816081053523L, 7045245923763966215L, 7123326897294507060L, 7164889056054194741L, 7179336928365889465L, 7240293012336844478L, 7347653049056829645L, 7375862386996623731L, 7442624256860549330L, 7617522210483516279L, 7658177784286215602L, 8055461369741094911L, 8064026652676081192L, 8389032537095247355L, 8488266005336625107L, 8537233257283452655L, 8735538376409180149L, 8838294710098435315L, 8861402923078831179L, 9140390920032557669L, 9140416208800006522L, 9144212112462101475L};
        this.f12754h = new long[]{-6293031534589903644L};
        concurrentHashMap.put(Long.valueOf(ObjectArrayReader.TYPE_HASH_CODE), ObjectArrayReader.INSTANCE);
        concurrentHashMap.put(-4834614249632438472L, y9k.f90517a);
        concurrentHashMap.put(77L, ObjectReaderImplMap.INSTANCE);
        this.creator = ObjectReaderCreator.INSTANCE;
        m7538D();
    }

    /* renamed from: E */
    public static /* synthetic */ Object m7491E(Object obj) {
        return obj;
    }

    /* renamed from: F */
    public static /* synthetic */ Object m7492F(Object obj) {
        return obj;
    }

    /* renamed from: G */
    public static /* synthetic */ Object m7493G(Object obj) {
        if (obj == null || "null".equals(obj) || "".equals(obj)) {
            return null;
        }
        return UUID.fromString((String) obj);
    }

    /* renamed from: H */
    public static /* synthetic */ void m7494H(long j, AtomicReference atomicReference, Field field) {
        if (j == Fnv.hashCode64LCase(field.getName())) {
            atomicReference.set(field);
        }
    }

    /* renamed from: I */
    public static /* synthetic */ void m7495I(long j, AtomicReference atomicReference, Method method) {
        if (j == Fnv.hashCode64LCase(BeanUtils.setterName(method.getName(), PropertyNamingStrategy.CamelCase.name()))) {
            atomicReference.set(method);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: N */
    public /* synthetic */ void m7500N(Annotation annotation, BeanInfo beanInfo, Method method) {
        char c;
        char c2;
        String name = method.getName();
        int i = 0;
        try {
            Object invoke = method.invoke(annotation, new Object[0]);
            switch (name.hashCode()) {
                case -1678076717:
                    if (name.equals("deserializer")) {
                        c = 7;
                        break;
                    }
                    c = 65535;
                    break;
                case -1073807344:
                    if (name.equals("parseFeatures")) {
                        c = '\b';
                        break;
                    }
                    c = 65535;
                    break;
                case -1052827512:
                    if (name.equals("naming")) {
                        c = 4;
                        break;
                    }
                    c = 65535;
                    break;
                case -1008770331:
                    if (name.equals("orders")) {
                        c = 6;
                        break;
                    }
                    c = 65535;
                    break;
                case -853109563:
                    if (name.equals("typeKey")) {
                        c = 2;
                        break;
                    }
                    c = 65535;
                    break;
                case -676507419:
                    if (name.equals("typeName")) {
                        c = 3;
                        break;
                    }
                    c = 65535;
                    break;
                case -618447321:
                    if (name.equals("seeAlsoDefault")) {
                        c = 1;
                        break;
                    }
                    c = 65535;
                    break;
                case -432515134:
                    if (name.equals("autoTypeBeforeHandler")) {
                        c = '\f';
                        break;
                    }
                    c = 65535;
                    break;
                case 230944667:
                    if (name.equals("builder")) {
                        c = '\n';
                        break;
                    }
                    c = 65535;
                    break;
                case 1053501509:
                    if (name.equals("deserializeUsing")) {
                        c = 11;
                        break;
                    }
                    c = 65535;
                    break;
                case 1401959644:
                    if (name.equals("deserializeFeatures")) {
                        c = '\t';
                        break;
                    }
                    c = 65535;
                    break;
                case 1706529099:
                    if (name.equals("autoTypeCheckHandler")) {
                        c = '\r';
                        break;
                    }
                    c = 65535;
                    break;
                case 1752415457:
                    if (name.equals("ignores")) {
                        c = 5;
                        break;
                    }
                    c = 65535;
                    break;
                case 1970571962:
                    if (name.equals("seeAlso")) {
                        c = 0;
                        break;
                    }
                    c = 65535;
                    break;
                default:
                    c = 65535;
                    break;
            }
            switch (c) {
                case 0:
                    Class<?>[] clsArr = (Class[]) invoke;
                    if (clsArr.length != 0) {
                        beanInfo.seeAlso = clsArr;
                        beanInfo.seeAlsoNames = new String[clsArr.length];
                        while (i < clsArr.length) {
                            Class<?> cls = clsArr[i];
                            BeanInfo beanInfo2 = new BeanInfo();
                            m7541c0(beanInfo2, cls);
                            String str = beanInfo2.typeName;
                            if (str == null || str.isEmpty()) {
                                str = cls.getSimpleName();
                            }
                            beanInfo.seeAlsoNames[i] = str;
                            i++;
                        }
                        beanInfo.readerFeatures |= JSONReader.Feature.SupportAutoType.mask;
                        return;
                    }
                    return;
                case 1:
                    Class cls2 = (Class) invoke;
                    if (cls2 != Void.class) {
                        beanInfo.seeAlsoDefault = cls2;
                        break;
                    }
                    break;
                case 2:
                    break;
                case 3:
                    String str2 = (String) invoke;
                    if (str2.isEmpty()) {
                        return;
                    }
                    beanInfo.typeName = str2;
                    return;
                case 4:
                    beanInfo.namingStrategy = ((Enum) invoke).name();
                    return;
                case 5:
                    String[] strArr = (String[]) invoke;
                    if (strArr.length > 0) {
                        beanInfo.ignores = strArr;
                        return;
                    }
                    return;
                case 6:
                    String[] strArr2 = (String[]) invoke;
                    if (strArr2.length != 0) {
                        beanInfo.orders = strArr2;
                        return;
                    }
                    return;
                case 7:
                    Class cls3 = (Class) invoke;
                    if (ObjectReader.class.isAssignableFrom(cls3)) {
                        beanInfo.deserializer = cls3;
                        return;
                    }
                    return;
                case '\b':
                    for (Enum r0 : (Enum[]) invoke) {
                        String name2 = r0.name();
                        switch (name2.hashCode()) {
                            case -1604251670:
                                if (name2.equals("TrimStringFieldValue")) {
                                    c2 = 3;
                                    break;
                                }
                                break;
                            case -894003883:
                                if (name2.equals("SupportArrayToBean")) {
                                    c2 = 1;
                                    break;
                                }
                                break;
                            case -200815016:
                                if (name2.equals("SupportAutoType")) {
                                    c2 = 0;
                                    break;
                                }
                                break;
                            case 2005790178:
                                if (name2.equals("InitStringFieldAsEmpty")) {
                                    c2 = 2;
                                    break;
                                }
                                break;
                        }
                        c2 = 65535;
                        if (c2 == 0) {
                            beanInfo.readerFeatures |= JSONReader.Feature.SupportAutoType.mask;
                        } else if (c2 == 1) {
                            beanInfo.readerFeatures |= JSONReader.Feature.SupportArrayToBean.mask;
                        } else if (c2 == 2) {
                            beanInfo.readerFeatures |= JSONReader.Feature.InitStringFieldAsEmpty.mask;
                        }
                    }
                    return;
                case '\t':
                    JSONReader.Feature[] featureArr = (JSONReader.Feature[]) invoke;
                    while (i < featureArr.length) {
                        beanInfo.readerFeatures |= featureArr[i].mask;
                        i++;
                    }
                    return;
                case '\n':
                    Class<?> cls4 = (Class) invoke;
                    if (cls4 == Void.TYPE || cls4 == Void.class) {
                        return;
                    }
                    beanInfo.builder = cls4;
                    Annotation[] declaredAnnotations = cls4.getDeclaredAnnotations();
                    int length = declaredAnnotations.length;
                    while (i < length) {
                        Annotation annotation2 = declaredAnnotations[i];
                        Class<? extends Annotation> annotationType = annotation2.annotationType();
                        if (annotationType.getName().equals("com.alibaba.fastjson.annotation.JSONPOJOBuilder")) {
                            m7546y(beanInfo, cls4, annotation2, annotationType);
                        } else {
                            JSONBuilder jSONBuilder = (JSONBuilder) BeanUtils.findAnnotation(cls4, JSONBuilder.class);
                            if (jSONBuilder != null) {
                                beanInfo.buildMethod = BeanUtils.buildMethod(cls4, jSONBuilder.buildMethod());
                                String withPrefix = jSONBuilder.withPrefix();
                                if (!withPrefix.isEmpty()) {
                                    beanInfo.builderWithPrefix = withPrefix;
                                }
                            }
                        }
                        i++;
                    }
                    if (beanInfo.buildMethod == null) {
                        beanInfo.buildMethod = BeanUtils.buildMethod(cls4, PrivilegedApp.f6529f);
                    }
                    if (beanInfo.buildMethod == null) {
                        beanInfo.buildMethod = BeanUtils.buildMethod(cls4, BaiduYunConstant.CREATE);
                        return;
                    }
                    return;
                case 11:
                    Class cls5 = (Class) invoke;
                    if (ObjectReader.class.isAssignableFrom(cls5)) {
                        beanInfo.deserializer = cls5;
                        return;
                    }
                    return;
                case '\f':
                case '\r':
                    Class<? extends JSONReader.AutoTypeBeforeHandler> cls6 = (Class) invoke;
                    if (JSONReader.AutoTypeBeforeHandler.class.isAssignableFrom(cls6)) {
                        beanInfo.autoTypeBeforeHandler = cls6;
                        return;
                    }
                    return;
                default:
                    return;
            }
            String str3 = (String) invoke;
            if (str3.isEmpty()) {
                return;
            }
            beanInfo.typeKey = str3;
        } catch (Throwable unused) {
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0040 A[Catch: all -> 0x004e, TRY_LEAVE, TryCatch #0 {all -> 0x004e, blocks: (B:2:0x0000, B:13:0x002f, B:15:0x003d, B:18:0x0040, B:20:0x0015, B:23:0x001f), top: B:1:0x0000 }] */
    /* JADX WARN: Removed duplicated region for block: B:9:0x002c  */
    /* renamed from: O */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static /* synthetic */ void m7501O(java.lang.annotation.Annotation r5, com.alibaba.fastjson2.codec.BeanInfo r6, java.lang.Class r7, java.lang.reflect.Method r8) {
        /*
            java.lang.String r0 = r8.getName()     // Catch: java.lang.Throwable -> L4e
            int r1 = r0.hashCode()     // Catch: java.lang.Throwable -> L4e
            r2 = 2068281583(0x7b4778ef, float:1.0357199E36)
            r3 = 1
            r4 = 0
            if (r1 == r2) goto L1f
            r2 = 2092901112(0x7cbf22f8, float:7.9395036E36)
            if (r1 == r2) goto L15
            goto L29
        L15:
            java.lang.String r1 = "withPrefix"
            boolean r0 = r0.equals(r1)     // Catch: java.lang.Throwable -> L4e
            if (r0 == 0) goto L29
            r0 = r3
            goto L2a
        L1f:
            java.lang.String r1 = "buildMethod"
            boolean r0 = r0.equals(r1)     // Catch: java.lang.Throwable -> L4e
            if (r0 == 0) goto L29
            r0 = r4
            goto L2a
        L29:
            r0 = -1
        L2a:
            if (r0 == 0) goto L40
            if (r0 == r3) goto L2f
            goto L4e
        L2f:
            java.lang.Object[] r7 = new java.lang.Object[r4]     // Catch: java.lang.Throwable -> L4e
            java.lang.Object r5 = r8.invoke(r5, r7)     // Catch: java.lang.Throwable -> L4e
            java.lang.String r5 = (java.lang.String) r5     // Catch: java.lang.Throwable -> L4e
            boolean r7 = r5.isEmpty()     // Catch: java.lang.Throwable -> L4e
            if (r7 != 0) goto L4e
            r6.builderWithPrefix = r5     // Catch: java.lang.Throwable -> L4e
            goto L4e
        L40:
            java.lang.Object[] r0 = new java.lang.Object[r4]     // Catch: java.lang.Throwable -> L4e
            java.lang.Object r5 = r8.invoke(r5, r0)     // Catch: java.lang.Throwable -> L4e
            java.lang.String r5 = (java.lang.String) r5     // Catch: java.lang.Throwable -> L4e
            java.lang.reflect.Method r5 = com.alibaba.fastjson2.util.BeanUtils.buildMethod(r7, r5)     // Catch: java.lang.Throwable -> L4e
            r6.buildMethod = r5     // Catch: java.lang.Throwable -> L4e
        L4e:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson2.reader.ObjectReaderProvider.m7501O(java.lang.annotation.Annotation, com.alibaba.fastjson2.codec.BeanInfo, java.lang.Class, java.lang.reflect.Method):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x001d A[Catch: all -> 0x002a, TryCatch #0 {all -> 0x002a, blocks: (B:2:0x0000, B:10:0x001d, B:12:0x0028, B:16:0x000f), top: B:1:0x0000 }] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x001c  */
    /* renamed from: P */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static /* synthetic */ void m7502P(java.lang.annotation.Annotation r4, com.alibaba.fastjson2.codec.BeanInfo r5, java.lang.reflect.Method r6) {
        /*
            java.lang.String r0 = r6.getName()     // Catch: java.lang.Throwable -> L2a
            int r1 = r0.hashCode()     // Catch: java.lang.Throwable -> L2a
            r2 = 1117066527(0x4295151f, float:74.54125)
            r3 = 0
            if (r1 == r2) goto Lf
            goto L19
        Lf:
            java.lang.String r1 = "parameterNames"
            boolean r0 = r0.equals(r1)     // Catch: java.lang.Throwable -> L2a
            if (r0 == 0) goto L19
            r0 = r3
            goto L1a
        L19:
            r0 = -1
        L1a:
            if (r0 == 0) goto L1d
            goto L2a
        L1d:
            java.lang.Object[] r0 = new java.lang.Object[r3]     // Catch: java.lang.Throwable -> L2a
            java.lang.Object r4 = r6.invoke(r4, r0)     // Catch: java.lang.Throwable -> L2a
            java.lang.String[] r4 = (java.lang.String[]) r4     // Catch: java.lang.Throwable -> L2a
            int r6 = r4.length     // Catch: java.lang.Throwable -> L2a
            if (r6 == 0) goto L2a
            r5.createParameterNames = r4     // Catch: java.lang.Throwable -> L2a
        L2a:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson2.reader.ObjectReaderProvider.m7502P(java.lang.annotation.Annotation, com.alibaba.fastjson2.codec.BeanInfo, java.lang.reflect.Method):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x001d A[Catch: all -> 0x002a, TryCatch #0 {all -> 0x002a, blocks: (B:2:0x0000, B:10:0x001d, B:12:0x0028, B:16:0x000f), top: B:1:0x0000 }] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x001c  */
    /* renamed from: Q */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static /* synthetic */ void m7503Q(java.lang.annotation.Annotation r4, com.alibaba.fastjson2.codec.BeanInfo r5, java.lang.reflect.Method r6) {
        /*
            java.lang.String r0 = r6.getName()     // Catch: java.lang.Throwable -> L2a
            int r1 = r0.hashCode()     // Catch: java.lang.Throwable -> L2a
            r2 = 1117066527(0x4295151f, float:74.54125)
            r3 = 0
            if (r1 == r2) goto Lf
            goto L19
        Lf:
            java.lang.String r1 = "parameterNames"
            boolean r0 = r0.equals(r1)     // Catch: java.lang.Throwable -> L2a
            if (r0 == 0) goto L19
            r0 = r3
            goto L1a
        L19:
            r0 = -1
        L1a:
            if (r0 == 0) goto L1d
            goto L2a
        L1d:
            java.lang.Object[] r0 = new java.lang.Object[r3]     // Catch: java.lang.Throwable -> L2a
            java.lang.Object r4 = r6.invoke(r4, r0)     // Catch: java.lang.Throwable -> L2a
            java.lang.String[] r4 = (java.lang.String[]) r4     // Catch: java.lang.Throwable -> L2a
            int r6 = r4.length     // Catch: java.lang.Throwable -> L2a
            if (r6 == 0) goto L2a
            r5.createParameterNames = r4     // Catch: java.lang.Throwable -> L2a
        L2a:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson2.reader.ObjectReaderProvider.m7503Q(java.lang.annotation.Annotation, com.alibaba.fastjson2.codec.BeanInfo, java.lang.reflect.Method):void");
    }

    /* renamed from: S */
    public static /* synthetic */ File m7505S(String str) {
        return new File(str);
    }

    /* renamed from: T */
    public static /* synthetic */ URL m7506T(String str) {
        try {
            return new URL(str);
        } catch (MalformedURLException e) {
            throw new JSONException("read URL error", e);
        }
    }

    /* renamed from: W */
    public static /* synthetic */ InetAddress m7509W(String str) {
        try {
            return InetAddress.getByName(str);
        } catch (UnknownHostException e) {
            throw new JSONException("create address error", e);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x00c8  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00e1 A[Catch: all -> 0x017c, TryCatch #0 {all -> 0x017c, blocks: (B:3:0x0007, B:4:0x0014, B:7:0x0074, B:11:0x0079, B:13:0x0083, B:16:0x0087, B:18:0x008d, B:31:0x00ea, B:32:0x00cd, B:34:0x00d7, B:36:0x00e1, B:38:0x00a7, B:41:0x00b1, B:44:0x00bb, B:49:0x00ed, B:51:0x00f5, B:54:0x00f9, B:56:0x0101, B:59:0x0109, B:61:0x010e, B:63:0x0112, B:65:0x0115, B:68:0x0139, B:70:0x0141, B:73:0x0144, B:75:0x014c, B:78:0x014f, B:80:0x0157, B:82:0x0163, B:84:0x0169, B:85:0x016f, B:88:0x0172, B:90:0x017a, B:93:0x0018, B:96:0x0022, B:99:0x002d, B:102:0x0037, B:105:0x0041, B:108:0x004b, B:111:0x0055, B:114:0x005f, B:117:0x0069), top: B:2:0x0007 }] */
    /* renamed from: X */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static /* synthetic */ void m7510X(java.lang.annotation.Annotation r10, com.alibaba.fastjson2.codec.FieldInfo r11, java.lang.reflect.Method r12) {
        /*
            Method dump skipped, instructions count: 442
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson2.reader.ObjectReaderProvider.m7510X(java.lang.annotation.Annotation, com.alibaba.fastjson2.codec.FieldInfo, java.lang.reflect.Method):void");
    }

    /* renamed from: Y */
    public static /* synthetic */ void m7511Y(Annotation annotation, BeanInfo beanInfo, Method method) {
        String name = method.getName();
        try {
            Object invoke = method.invoke(annotation, new Object[0]);
            if (name.equals("typeName")) {
                String str = (String) invoke;
                if (str.isEmpty()) {
                    return;
                }
                beanInfo.typeName = str;
            }
        } catch (Throwable unused) {
        }
    }

    /* renamed from: Z */
    public static boolean m7512Z(Type type, ObjectReader objectReader, ClassLoader classLoader) {
        Class<?> cls = TypeUtils.getClass(type);
        if (cls != null && cls.getClassLoader() == classLoader) {
            return true;
        }
        if (type instanceof ParameterizedType) {
            ParameterizedType parameterizedType = (ParameterizedType) type;
            if (m7512Z(parameterizedType.getRawType(), objectReader, classLoader)) {
                return true;
            }
            for (Type type2 : parameterizedType.getActualTypeArguments()) {
                if (m7512Z(type2, objectReader, classLoader)) {
                    return true;
                }
            }
        }
        if (objectReader instanceof p9k) {
            p9k p9kVar = (p9k) objectReader;
            Class cls2 = p9kVar.f80586e;
            if (cls2 != null && cls2.getClassLoader() == classLoader) {
                return true;
            }
            Class<?> cls3 = TypeUtils.getClass(p9kVar.f80584c);
            return cls3 != null && cls3.getClassLoader() == classLoader;
        }
        if (objectReader instanceof ObjectReaderImplList) {
            Class cls4 = ((ObjectReaderImplList) objectReader).f12698f;
            return cls4 != null && cls4.getClassLoader() == classLoader;
        }
        if (objectReader instanceof u9k) {
            Class cls5 = ((u9k) objectReader).f86269d;
            return cls5 != null && cls5.getClassLoader() == classLoader;
        }
        if (objectReader instanceof ObjectReaderAdapter) {
            for (FieldReader fieldReader : ((ObjectReaderAdapter) objectReader).fieldReaders) {
                Class cls6 = fieldReader.fieldClass;
                if (cls6 != null && cls6.getClassLoader() == classLoader) {
                    return true;
                }
                Type type3 = fieldReader.fieldType;
                if ((type3 instanceof ParameterizedType) && m7512Z(type3, null, classLoader)) {
                    return true;
                }
            }
        }
        return false;
    }

    public static ConcurrentMap<Type, Map<Type, Function>> buildInitTypeConverts() {
        ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap();
        m7518e0(concurrentHashMap, Character.class, Character.TYPE, new Function() { // from class: com.sunia.HTREnginev2.nak
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Object m7491E;
                m7491E = ObjectReaderProvider.m7491E(obj);
                return m7491E;
            }
        });
        Class<Boolean> cls = Boolean.class;
        Class<BigInteger> cls2 = BigInteger.class;
        Class<BigDecimal> cls3 = BigDecimal.class;
        Class[] clsArr = {cls, Byte.class, Short.class, Integer.class, Long.class, Number.class, Float.class, Double.class, cls2, cls3, AtomicInteger.class, AtomicLong.class};
        ToAny toAny = new ToAny(cls, null);
        int i = 0;
        for (int i2 = 12; i < i2; i2 = 12) {
            m7518e0(concurrentHashMap, clsArr[i], cls, toAny);
            i++;
        }
        ToAny toAny2 = new ToAny(cls, Boolean.FALSE);
        int i3 = 0;
        while (i3 < 12) {
            m7518e0(concurrentHashMap, clsArr[i3], Boolean.TYPE, toAny2);
            i3++;
            cls = cls;
        }
        Class<Boolean> cls4 = cls;
        ToAny toAny3 = new ToAny(String.class);
        for (int i4 = 0; i4 < 12; i4++) {
            m7518e0(concurrentHashMap, clsArr[i4], String.class, toAny3);
        }
        ToAny toAny4 = new ToAny(cls3);
        for (int i5 = 0; i5 < 12; i5++) {
            m7518e0(concurrentHashMap, clsArr[i5], cls3, toAny4);
        }
        ToAny toAny5 = new ToAny(cls2);
        for (int i6 = 0; i6 < 12; i6++) {
            m7518e0(concurrentHashMap, clsArr[i6], cls2, toAny5);
        }
        ToAny toAny6 = new ToAny(Byte.class);
        for (int i7 = 0; i7 < 12; i7++) {
            m7518e0(concurrentHashMap, clsArr[i7], Byte.class, toAny6);
        }
        ToAny toAny7 = new ToAny(Byte.class, (byte) 0);
        int i8 = 0;
        while (i8 < 12) {
            m7518e0(concurrentHashMap, clsArr[i8], Byte.TYPE, toAny7);
            i8++;
            cls2 = cls2;
        }
        Class<BigInteger> cls5 = cls2;
        ToAny toAny8 = new ToAny(Short.class);
        for (int i9 = 0; i9 < 12; i9++) {
            m7518e0(concurrentHashMap, clsArr[i9], Short.class, toAny8);
        }
        ToAny toAny9 = new ToAny(Short.class, (short) 0);
        int i10 = 0;
        for (int i11 = 12; i10 < i11; i11 = 12) {
            m7518e0(concurrentHashMap, clsArr[i10], Short.TYPE, toAny9);
            i10++;
        }
        ToAny toAny10 = new ToAny(Integer.class);
        for (int i12 = 0; i12 < 12; i12++) {
            m7518e0(concurrentHashMap, clsArr[i12], Integer.class, toAny10);
        }
        ToAny toAny11 = new ToAny(Integer.class, 0);
        int i13 = 0;
        for (int i14 = 12; i13 < i14; i14 = 12) {
            m7518e0(concurrentHashMap, clsArr[i13], Integer.TYPE, toAny11);
            i13++;
        }
        ToAny toAny12 = new ToAny(Long.class);
        for (int i15 = 0; i15 < 12; i15++) {
            m7518e0(concurrentHashMap, clsArr[i15], Long.class, toAny12);
        }
        ToAny toAny13 = new ToAny(Long.class, 0L);
        int i16 = 0;
        for (int i17 = 12; i16 < i17; i17 = 12) {
            m7518e0(concurrentHashMap, clsArr[i16], Long.TYPE, toAny13);
            i16++;
        }
        ToAny toAny14 = new ToAny(Float.class);
        for (int i18 = 0; i18 < 12; i18++) {
            m7518e0(concurrentHashMap, clsArr[i18], Float.class, toAny14);
        }
        ToAny toAny15 = new ToAny(Float.class, Float.valueOf(0.0f));
        int i19 = 0;
        for (int i20 = 12; i19 < i20; i20 = 12) {
            m7518e0(concurrentHashMap, clsArr[i19], Float.TYPE, toAny15);
            i19++;
        }
        ToAny toAny16 = new ToAny(Double.class);
        for (int i21 = 0; i21 < 12; i21++) {
            m7518e0(concurrentHashMap, clsArr[i21], Double.class, toAny16);
        }
        ToAny toAny17 = new ToAny(Double.class, Double.valueOf(0.0d));
        int i22 = 0;
        while (i22 < 12) {
            m7518e0(concurrentHashMap, clsArr[i22], Double.TYPE, toAny17);
            i22++;
            cls3 = cls3;
        }
        Class<BigDecimal> cls6 = cls3;
        ToAny toAny18 = new ToAny(Number.class, Double.valueOf(0.0d));
        for (int i23 = 0; i23 < 12; i23++) {
            m7518e0(concurrentHashMap, clsArr[i23], Number.class, toAny18);
        }
        Class cls7 = Character.TYPE;
        m7518e0(concurrentHashMap, String.class, cls7, new StringToAny(cls7, '0'));
        Class cls8 = Boolean.TYPE;
        m7518e0(concurrentHashMap, String.class, cls8, new StringToAny(cls8, Boolean.FALSE));
        Class cls9 = Float.TYPE;
        m7518e0(concurrentHashMap, String.class, cls9, new StringToAny(cls9, Float.valueOf(0.0f)));
        Class cls10 = Double.TYPE;
        m7518e0(concurrentHashMap, String.class, cls10, new StringToAny(cls10, Double.valueOf(0.0d)));
        Class cls11 = Byte.TYPE;
        m7518e0(concurrentHashMap, String.class, cls11, new StringToAny(cls11, (byte) 0));
        Class cls12 = Short.TYPE;
        m7518e0(concurrentHashMap, String.class, cls12, new StringToAny(cls12, (short) 0));
        Class cls13 = Integer.TYPE;
        m7518e0(concurrentHashMap, String.class, cls13, new StringToAny(cls13, 0));
        Class cls14 = Long.TYPE;
        m7518e0(concurrentHashMap, String.class, cls14, new StringToAny(cls14, 0L));
        m7518e0(concurrentHashMap, String.class, Character.class, new StringToAny(Character.class, null));
        m7518e0(concurrentHashMap, String.class, cls4, new StringToAny(cls4, null));
        m7518e0(concurrentHashMap, String.class, Double.class, new StringToAny(Double.class, null));
        m7518e0(concurrentHashMap, String.class, Float.class, new StringToAny(Float.class, null));
        m7518e0(concurrentHashMap, String.class, Byte.class, new StringToAny(Byte.class, null));
        m7518e0(concurrentHashMap, String.class, Short.class, new StringToAny(Short.class, null));
        m7518e0(concurrentHashMap, String.class, Integer.class, new StringToAny(Integer.class, null));
        m7518e0(concurrentHashMap, String.class, Long.class, new StringToAny(Long.class, null));
        m7518e0(concurrentHashMap, String.class, cls6, new StringToAny(cls6, null));
        m7518e0(concurrentHashMap, String.class, cls5, new StringToAny(cls5, null));
        m7518e0(concurrentHashMap, String.class, Number.class, new StringToAny(cls6, null));
        m7518e0(concurrentHashMap, String.class, Collection.class, new StringToAny(Collection.class, null));
        m7518e0(concurrentHashMap, String.class, List.class, new StringToAny(List.class, null));
        m7518e0(concurrentHashMap, String.class, JSONArray.class, new StringToAny(JSONArray.class, null));
        m7518e0(concurrentHashMap, cls4, cls8, new Function() { // from class: com.sunia.HTREnginev2.yak
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Object m7492F;
                m7492F = ObjectReaderProvider.m7492F(obj);
                return m7492F;
            }
        });
        m7518e0(concurrentHashMap, String.class, UUID.class, new Function() { // from class: com.sunia.HTREnginev2.zak
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Object m7493G;
                m7493G = ObjectReaderProvider.m7493G(obj);
                return m7493G;
            }
        });
        return concurrentHashMap;
    }

    /* renamed from: e0 */
    public static Function m7518e0(ConcurrentMap<Type, Map<Type, Function>> concurrentMap, Type type, Type type2, Function function) {
        Map<Type, Function> map = concurrentMap.get(type);
        if (map == null) {
            concurrentMap.put(type, new ConcurrentHashMap());
            map = concurrentMap.get(type);
        }
        return map.put(type2, function);
    }

    public static ObjectReader typedMap(Class cls, Class cls2, Type type, Type type2) {
        return ((type == null || type == String.class) && type2 == String.class) ? new o9k(cls, cls2, 0L) : new p9k(cls, cls2, type, type2, 0L, null);
    }

    /* renamed from: A, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
    public final void m7498L(final BeanInfo beanInfo, Class<?> cls, Method method) {
        if (method.getDeclaringClass() == Enum.class) {
            return;
        }
        String name = method.getName();
        if (cls.isEnum() && name.equals(SavedStateHandle.f7922f)) {
            return;
        }
        Annotation[] declaredAnnotations = method.getDeclaredAnnotations();
        int length = declaredAnnotations.length;
        Method method2 = null;
        int i = 0;
        JSONCreator jSONCreator = null;
        boolean z = false;
        while (i < length) {
            final Annotation annotation = declaredAnnotations[i];
            Class<? extends Annotation> annotationType = annotation.annotationType();
            JSONCreator jSONCreator2 = (JSONCreator) BeanUtils.findAnnotation(annotation, JSONCreator.class);
            if (jSONCreator2 != annotation && annotationType.getName().equals("com.alibaba.fastjson.annotation.JSONCreator")) {
                BeanUtils.annotationMethods(annotationType, new Consumer() { // from class: com.sunia.HTREnginev2.wak
                    @Override // java.util.function.Consumer
                    public final void accept(Object obj) {
                        ObjectReaderProvider.m7503Q(annotation, beanInfo, (Method) obj);
                    }
                });
                z = true;
            }
            i++;
            jSONCreator = jSONCreator2;
        }
        if (jSONCreator != null) {
            String[] parameterNames = jSONCreator.parameterNames();
            if (parameterNames.length != 0) {
                beanInfo.createParameterNames = parameterNames;
            }
            z = true;
        }
        if (z) {
            try {
                method2 = cls.getDeclaredMethod(name, method.getParameterTypes());
            } catch (NoSuchMethodException unused) {
            }
            if (method2 != null) {
                beanInfo.createMethod = method2;
            }
        }
    }

    /* renamed from: B */
    public final void m7536B(FieldInfo fieldInfo, JSONField jSONField) {
        if (jSONField == null) {
            return;
        }
        String name = jSONField.name();
        if (!name.isEmpty()) {
            fieldInfo.fieldName = name;
        }
        String format = jSONField.format();
        if (!format.isEmpty()) {
            String trim = format.trim();
            if (trim.indexOf(84) != -1 && !trim.contains("'T'")) {
                trim = trim.replaceAll("T", "'T'");
            }
            fieldInfo.format = trim;
        }
        String label = jSONField.label();
        if (!label.isEmpty()) {
            fieldInfo.label = label.trim();
        }
        String defaultValue = jSONField.defaultValue();
        if (!defaultValue.isEmpty()) {
            fieldInfo.defaultValue = defaultValue;
        }
        String locale = jSONField.locale();
        if (!locale.isEmpty()) {
            String[] split = locale.split("_");
            if (split.length == 2) {
                fieldInfo.locale = new Locale(split[0], split[1]);
            }
        }
        String[] alternateNames = jSONField.alternateNames();
        if (alternateNames.length != 0) {
            if (fieldInfo.alternateNames == null) {
                fieldInfo.alternateNames = alternateNames;
            } else {
                LinkedHashSet linkedHashSet = new LinkedHashSet();
                Collections.addAll(linkedHashSet, alternateNames);
                linkedHashSet.addAll(Arrays.asList(fieldInfo.alternateNames));
                fieldInfo.alternateNames = (String[]) linkedHashSet.toArray(new String[linkedHashSet.size()]);
            }
        }
        if (!fieldInfo.ignore) {
            fieldInfo.ignore = !jSONField.deserialize();
        }
        for (JSONReader.Feature feature : jSONField.deserializeFeatures()) {
            fieldInfo.features |= feature.mask;
            if (fieldInfo.ignore && feature == JSONReader.Feature.FieldBased) {
                fieldInfo.ignore = false;
            }
        }
        int ordinal = jSONField.ordinal();
        if (ordinal != 0) {
            fieldInfo.ordinal = ordinal;
        }
        if (jSONField.value()) {
            fieldInfo.features |= FieldInfo.VALUE_MASK;
        }
        if (jSONField.unwrapped()) {
            fieldInfo.features |= FieldInfo.UNWRAPPED_MASK;
        }
        if (jSONField.required()) {
            fieldInfo.required = true;
        }
        Class<?> deserializeUsing = jSONField.deserializeUsing();
        if (ObjectReader.class.isAssignableFrom(deserializeUsing)) {
            fieldInfo.readUsing = deserializeUsing;
        }
    }

    /* renamed from: C */
    public final ObjectReader m7537C(boolean z, Type type, ObjectReader objectReader) {
        return z ? this.f12748b.put(type, objectReader) : this.f12747a.put(type, objectReader);
    }

    /* renamed from: D */
    public void m7538D() {
    }

    /* renamed from: a0 */
    public final void m7539a0(FieldInfo fieldInfo, Annotation[] annotationArr) {
        int i;
        int length = annotationArr.length;
        while (i < length) {
            Annotation annotation = annotationArr[i];
            Class<? extends Annotation> annotationType = annotation.annotationType();
            JSONField jSONField = (JSONField) BeanUtils.findAnnotation(annotation, JSONField.class);
            if (jSONField != null) {
                m7536B(fieldInfo, jSONField);
                i = jSONField == annotation ? i + 1 : 0;
            }
            if (annotationType.getName().equals("com.alibaba.fastjson.annotation.JSONField")) {
                m7540b0(fieldInfo, annotation);
            }
        }
    }

    public void addAutoTypeAccept(String str) {
        if (str == null || str.length() == 0) {
            return;
        }
        long hashCode64 = Fnv.hashCode64(str);
        if (Arrays.binarySearch(this.f12754h, hashCode64) < 0) {
            long[] jArr = this.f12754h;
            int length = jArr.length + 1;
            long[] jArr2 = new long[length];
            jArr2[length - 1] = hashCode64;
            System.arraycopy(jArr, 0, jArr2, 0, jArr.length);
            Arrays.sort(jArr2);
            this.f12754h = jArr2;
        }
    }

    public void addAutoTypeDeny(String str) {
        if (str == null || str.length() == 0) {
            return;
        }
        long hashCode64 = Fnv.hashCode64(str);
        if (Arrays.binarySearch(this.f12753g, hashCode64) < 0) {
            long[] jArr = this.f12753g;
            int length = jArr.length + 1;
            long[] jArr2 = new long[length];
            jArr2[length - 1] = hashCode64;
            System.arraycopy(jArr, 0, jArr2, 0, jArr.length);
            Arrays.sort(jArr2);
            this.f12753g = jArr2;
        }
    }

    /* renamed from: b0 */
    public final void m7540b0(final FieldInfo fieldInfo, final Annotation annotation) {
        BeanUtils.annotationMethods(annotation.getClass(), new Consumer() { // from class: com.sunia.HTREnginev2.pak
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                ObjectReaderProvider.m7510X(annotation, fieldInfo, (Method) obj);
            }
        });
    }

    /* renamed from: c0 */
    public final void m7541c0(BeanInfo beanInfo, Class<?> cls) {
        Class cls2 = this.f12750d.get(cls);
        if (cls2 != null && cls2 != cls) {
            beanInfo.mixIn = true;
            m7542d0(beanInfo, cls2.getDeclaredAnnotations());
        }
        m7542d0(beanInfo, cls.getDeclaredAnnotations());
    }

    public Class<?> checkAutoType(String str, Class<?> cls, long j) {
        Class<?> loadClass;
        Class<?> apply;
        if (str == null || str.isEmpty()) {
            return null;
        }
        JSONReader.AutoTypeBeforeHandler autoTypeBeforeHandler = this.f12755i;
        if (autoTypeBeforeHandler != null && (apply = autoTypeBeforeHandler.apply(str, cls, j)) != null) {
            m7543v(str, apply);
            return apply;
        }
        int length = str.length();
        if (length >= 192) {
            throw new JSONException("autoType is not support. " + str);
        }
        if (str.charAt(0) == '[') {
            checkAutoType(str.substring(1), null, j);
        }
        if (cls != null && cls.getName().equals(str)) {
            m7543v(str, cls);
            return cls;
        }
        boolean z = (JSONReader.Feature.SupportAutoType.mask & j) != 0;
        char c = '$';
        long j2 = Fnv.MAGIC_HASH_CODE;
        if (z) {
            long j3 = -3750763034362895579L;
            int i = 0;
            while (i < length) {
                char charAt = str.charAt(i);
                int i2 = length;
                if (charAt == '$') {
                    charAt = '.';
                }
                long j4 = (j3 ^ charAt) * Fnv.MAGIC_PRIME;
                if (Arrays.binarySearch(this.f12754h, j4) >= 0 && (loadClass = TypeUtils.loadClass(str)) != null) {
                    if (cls == null || cls.isAssignableFrom(loadClass)) {
                        m7543v(str, loadClass);
                        return loadClass;
                    }
                    throw new JSONException("type not match. " + str + AlphabetConverter.f109940d + cls.getName());
                }
                if (Arrays.binarySearch(this.f12753g, j4) >= 0 && TypeUtils.getMapping(str) == null) {
                    throw new JSONException("autoType is not support. " + str);
                }
                i++;
                j3 = j4;
                length = i2;
            }
        }
        int i3 = length;
        if (!z) {
            int i4 = 0;
            while (i4 < i3) {
                char charAt2 = str.charAt(i4);
                if (charAt2 == c) {
                    charAt2 = '.';
                }
                long j5 = (j2 ^ charAt2) * Fnv.MAGIC_PRIME;
                if (Arrays.binarySearch(this.f12753g, j5) >= 0) {
                    throw new JSONException("autoType is not support. " + str);
                }
                if (Arrays.binarySearch(this.f12754h, j5) >= 0) {
                    Class<?> loadClass2 = TypeUtils.loadClass(str);
                    if (loadClass2 == null || cls == null || cls.isAssignableFrom(loadClass2)) {
                        m7543v(str, loadClass2);
                        return loadClass2;
                    }
                    throw new JSONException("type not match. " + str + AlphabetConverter.f109940d + cls.getName());
                }
                i4++;
                j2 = j5;
                c = '$';
            }
        }
        if (!z) {
            return null;
        }
        Class<?> mapping = TypeUtils.getMapping(str);
        if (mapping != null) {
            if (cls == null || cls == Object.class || mapping == HashMap.class || cls.isAssignableFrom(mapping)) {
                m7543v(str, mapping);
                return mapping;
            }
            throw new JSONException("type not match. " + str + AlphabetConverter.f109940d + cls.getName());
        }
        Class<?> loadClass3 = TypeUtils.loadClass(str);
        if (loadClass3 != null) {
            if (ClassLoader.class.isAssignableFrom(loadClass3) || DataSource.class.isAssignableFrom(loadClass3) || RowSet.class.isAssignableFrom(loadClass3)) {
                throw new JSONException("autoType is not support. " + str);
            }
            if (cls != null) {
                if (cls.isAssignableFrom(loadClass3)) {
                    m7543v(str, loadClass3);
                    return loadClass3;
                }
                if ((j & JSONReader.Feature.IgnoreAutoTypeNotMatch.mask) != 0) {
                    return cls;
                }
                throw new JSONException("type not match. " + str + AlphabetConverter.f109940d + cls.getName());
            }
        }
        m7543v(str, loadClass3);
        return loadClass3;
    }

    public void cleanup(Class cls) {
        this.f12750d.remove(cls);
        this.f12747a.remove(cls);
        this.f12748b.remove(cls);
        BeanUtils.cleanupCache(cls);
    }

    public void cleanupMixIn() {
        this.f12750d.clear();
    }

    public FieldReader createFieldReader(Class cls, String str, long j) {
        ObjectReader objectReader = ((j & JSONReader.Feature.FieldBased.mask) > 0L ? 1 : ((j & JSONReader.Feature.FieldBased.mask) == 0L ? 0 : -1)) != 0 ? this.f12748b.get(cls) : this.f12747a.get(cls);
        if (objectReader != null) {
            return objectReader.getFieldReader(str);
        }
        final AtomicReference atomicReference = new AtomicReference();
        final long hashCode64LCase = Fnv.hashCode64LCase(str);
        BeanUtils.fields(cls, new Consumer() { // from class: com.sunia.HTREnginev2.abk
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                ObjectReaderProvider.m7494H(hashCode64LCase, atomicReference, (Field) obj);
            }
        });
        Field field = (Field) atomicReference.get();
        if (field != null) {
            return this.creator.createFieldReader(str, null, field.getType(), field);
        }
        final AtomicReference atomicReference2 = new AtomicReference();
        BeanUtils.setters(cls, new Consumer() { // from class: com.sunia.HTREnginev2.bbk
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                ObjectReaderProvider.m7495I(hashCode64LCase, atomicReference2, (Method) obj);
            }
        });
        Method method = (Method) atomicReference2.get();
        if (method == null) {
            return null;
        }
        Class<?> cls2 = method.getParameterTypes()[0];
        return this.creator.createFieldReaderMethod(cls, str, null, cls2, cls2, method);
    }

    /* renamed from: d0 */
    public final void m7542d0(final BeanInfo beanInfo, Annotation[] annotationArr) {
        for (final Annotation annotation : annotationArr) {
            BeanUtils.annotationMethods(annotation.annotationType(), new Consumer() { // from class: com.sunia.HTREnginev2.xak
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    ObjectReaderProvider.m7511Y(annotation, beanInfo, (Method) obj);
                }
            });
        }
    }

    public JSONReader.AutoTypeBeforeHandler getAutoTypeBeforeHandler() {
        return this.f12755i;
    }

    public Consumer<Class> getAutoTypeHandler() {
        return this.f12756j;
    }

    public Map<String, Date> getAutoTypeList() {
        return this.f12751e;
    }

    /* JADX WARN: Code restructure failed: missing block: B:30:0x005a, code lost:
    
        getBeanInfo(r9, r2);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void getBeanInfo(final com.alibaba.fastjson2.codec.BeanInfo r9, final java.lang.Class<?> r10) {
        /*
            r8 = this;
            java.util.concurrent.ConcurrentMap<java.lang.Class, java.lang.Class> r0 = r8.f12750d
            java.lang.Object r0 = r0.get(r10)
            java.lang.Class r0 = (java.lang.Class) r0
            r1 = 1
            if (r0 == 0) goto L26
            if (r0 == r10) goto L26
            r9.mixIn = r1
            java.lang.annotation.Annotation[] r2 = r0.getDeclaredAnnotations()
            r8.m7544w(r9, r2)
            com.sunia.HTREnginev2.sak r2 = new com.sunia.HTREnginev2.sak
            r2.<init>()
            com.alibaba.fastjson2.util.BeanUtils.staticMethod(r0, r2)
            com.sunia.HTREnginev2.tak r2 = new com.sunia.HTREnginev2.tak
            r2.<init>()
            com.alibaba.fastjson2.util.BeanUtils.constructor(r0, r2)
        L26:
            java.lang.Class r0 = r10.getSuperclass()
            r2 = 0
        L2b:
            r3 = 0
            if (r0 == 0) goto L58
            java.lang.Class<java.lang.Object> r4 = java.lang.Object.class
            if (r0 == r4) goto L58
            java.lang.Class<java.lang.Enum> r4 = java.lang.Enum.class
            if (r0 != r4) goto L37
            goto L58
        L37:
            com.alibaba.fastjson2.codec.BeanInfo r4 = new com.alibaba.fastjson2.codec.BeanInfo
            r4.<init>()
            r8.getBeanInfo(r4, r0)
            java.lang.Class[] r4 = r4.seeAlso
            if (r4 == 0) goto L53
            int r5 = r4.length
            r6 = r3
        L45:
            if (r6 >= r5) goto L50
            r7 = r4[r6]
            if (r7 != r10) goto L4d
            r3 = r1
            goto L50
        L4d:
            int r6 = r6 + 1
            goto L45
        L50:
            if (r3 != 0) goto L53
            r2 = r0
        L53:
            java.lang.Class r0 = r0.getSuperclass()
            goto L2b
        L58:
            if (r2 == 0) goto L5d
            r8.getBeanInfo(r9, r2)
        L5d:
            java.lang.annotation.Annotation[] r0 = r10.getDeclaredAnnotations()
            r8.m7544w(r9, r0)
            int r2 = r0.length
        L65:
            if (r3 >= r2) goto L8b
            r4 = r0[r3]
            java.lang.Class r5 = r4.annotationType()
            java.lang.String r5 = r5.getName()
            java.lang.String r6 = "kotlin.Metadata"
            boolean r6 = r5.equals(r6)
            if (r6 != 0) goto L86
            java.lang.String r6 = "com.alibaba.fastjson.annotation.JSONType"
            boolean r5 = r5.equals(r6)
            if (r5 != 0) goto L82
            goto L88
        L82:
            r8.m7545x(r9, r4)
            goto L88
        L86:
            r9.f116569kotlin = r1
        L88:
            int r3 = r3 + 1
            goto L65
        L8b:
            com.sunia.HTREnginev2.uak r0 = new com.sunia.HTREnginev2.uak
            r0.<init>()
            com.alibaba.fastjson2.util.BeanUtils.staticMethod(r10, r0)
            com.sunia.HTREnginev2.vak r0 = new com.sunia.HTREnginev2.vak
            r0.<init>()
            com.alibaba.fastjson2.util.BeanUtils.constructor(r10, r0)
            java.lang.reflect.Constructor r8 = r9.creatorConstructor
            if (r8 != 0) goto Lb9
            long r0 = r9.readerFeatures
            com.alibaba.fastjson2.JSONReader$Feature r8 = com.alibaba.fastjson2.JSONReader.Feature.FieldBased
            long r2 = r8.mask
            long r0 = r0 & r2
            r2 = 0
            int r8 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r8 != 0) goto Lb9
            boolean r8 = r9.f116569kotlin
            if (r8 == 0) goto Lb9
            com.alibaba.fastjson2.util.BeanUtils.getKotlinConstructor(r10, r9)
            java.lang.String[] r8 = com.alibaba.fastjson2.util.BeanUtils.getKotlinConstructorParameters(r10)
            r9.createParameterNames = r8
        Lb9:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson2.reader.ObjectReaderProvider.getBeanInfo(com.alibaba.fastjson2.codec.BeanInfo, java.lang.Class):void");
    }

    public ObjectReaderCreator getCreator() {
        return this.creator;
    }

    public void getFieldInfo(FieldInfo fieldInfo, Class cls, Constructor constructor, int i, Annotation[][] annotationArr) {
        Class cls2;
        Constructor constructor2;
        Annotation[] annotationArr2 = null;
        if (cls != null && (cls2 = this.f12750d.get(cls)) != null && cls2 != cls) {
            try {
                constructor2 = cls2.getDeclaredConstructor(constructor.getParameterTypes());
            } catch (NoSuchMethodException unused) {
                constructor2 = null;
            }
            if (constructor2 != null) {
                m7539a0(fieldInfo, constructor2.getParameterAnnotations()[i]);
            }
        }
        if (annotationArr == null) {
            annotationArr = constructor.getParameterAnnotations();
        }
        if (annotationArr.length != constructor.getParameterCount()) {
            i--;
        }
        if (i >= 0 && i < annotationArr.length) {
            annotationArr2 = annotationArr[i];
        }
        if (annotationArr2 == null || annotationArr2.length <= 0) {
            return;
        }
        m7539a0(fieldInfo, annotationArr2);
    }

    public Class getMixIn(Class cls) {
        return this.f12750d.get(cls);
    }

    public ObjectReader getObjectReader(long j) {
        C1746a c1746a = f12746k;
        if (c1746a != null) {
            if (c1746a.f12757a == j) {
                return c1746a.f12758b;
            }
            int i = c1746a.f12759c;
            c1746a.f12759c = i + 1;
            if (i > 16) {
                f12746k = null;
            }
        }
        ObjectReader objectReader = this.f12749c.get(new Long(j));
        if (objectReader != null && f12746k == null) {
            f12746k = new C1746a(j, objectReader);
        }
        return objectReader;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public ObjectReader getObjectReaderModule(Type type) {
        char c;
        char c2;
        char c3;
        if (type == String.class || type == CharSequence.class) {
            return y9k.f90517a;
        }
        if (type == Character.TYPE || type == Character.class) {
            return u7k.f86188a;
        }
        if (type == Boolean.TYPE || type == Boolean.class) {
            return r7k.f82853a;
        }
        if (type == Byte.TYPE || type == Byte.class) {
            return ObjectReaderImplByte.f12662a;
        }
        if (type == Short.TYPE || type == Short.class) {
            return ObjectReaderImplShort.f12726a;
        }
        Class<?> cls = Integer.TYPE;
        if (type == cls || type == Integer.class) {
            return j8k.f74059a;
        }
        if (type == Long.TYPE || type == Long.class) {
            return g8k.f70799a;
        }
        if (type == Float.TYPE || type == Float.class) {
            return a8k.f64453a;
        }
        if (type == Double.TYPE || type == Double.class) {
            return x7k.f89365a;
        }
        if (type == BigInteger.class) {
            return p7k.f80531a;
        }
        if (type == BigDecimal.class) {
            return o7k.f79437c;
        }
        if (type == Number.class) {
            return q9k.f81794a;
        }
        if (type == OptionalInt.class) {
            return w9k.f88389a;
        }
        if (type == OptionalLong.class) {
            return x9k.f89413a;
        }
        if (type == OptionalDouble.class) {
            return v9k.f87282a;
        }
        if (type == Optional.class) {
            return u9k.f86265f;
        }
        if (type == UUID.class) {
            return z9k.f91546a;
        }
        if (type == AtomicBoolean.class) {
            return new ObjectReaderImplFromBoolean(AtomicBoolean.class, new Function() { // from class: com.sunia.HTREnginev2.cbk
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return new AtomicBoolean(((Boolean) obj).booleanValue());
                }
            });
        }
        if (type == URI.class) {
            return new ObjectReaderImplFromString(URI.class, new Function() { // from class: com.sunia.HTREnginev2.gak
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return URI.create((String) obj);
                }
            });
        }
        if (type == Charset.class) {
            return new ObjectReaderImplFromString(Charset.class, new Function() { // from class: com.sunia.HTREnginev2.hak
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    Charset forName;
                    forName = Charset.forName((String) obj);
                    return forName;
                }
            });
        }
        if (type == File.class) {
            return new ObjectReaderImplFromString(File.class, new Function() { // from class: com.sunia.HTREnginev2.iak
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    File m7505S;
                    m7505S = ObjectReaderProvider.m7505S((String) obj);
                    return m7505S;
                }
            });
        }
        if (type == URL.class) {
            return new ObjectReaderImplFromString(URL.class, new Function() { // from class: com.sunia.HTREnginev2.jak
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    URL m7506T;
                    m7506T = ObjectReaderProvider.m7506T((String) obj);
                    return m7506T;
                }
            });
        }
        if (type == Pattern.class) {
            return new ObjectReaderImplFromString(Pattern.class, new Function() { // from class: com.sunia.HTREnginev2.kak
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return Pattern.compile((String) obj);
                }
            });
        }
        if (type == SimpleDateFormat.class) {
            return new ObjectReaderImplFromString(SimpleDateFormat.class, new Function() { // from class: com.sunia.HTREnginev2.fak
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return new SimpleDateFormat((String) obj);
                }
            });
        }
        if (type == Class.class) {
            return v7k.f87227a;
        }
        if (type == Method.class) {
            return new ObjectReaderImplMethod();
        }
        if (type == Field.class) {
            return new ObjectReaderImplField();
        }
        if (type == Type.class) {
            return v7k.f87227a;
        }
        boolean z = type instanceof Class;
        String name = z ? ((Class) type).getName() : "";
        if (type == Map.class || type == AbstractMap.class) {
            return ObjectReaderImplMap.m7481of(null, (Class) type, 0L);
        }
        if (type == ConcurrentMap.class || type == ConcurrentHashMap.class) {
            return typedMap((Class) type, ConcurrentHashMap.class, null, Object.class);
        }
        if (type == ConcurrentNavigableMap.class || type == ConcurrentSkipListMap.class) {
            return typedMap((Class) type, ConcurrentSkipListMap.class, null, Object.class);
        }
        if (type == SortedMap.class || type == NavigableMap.class || type == TreeMap.class) {
            return typedMap((Class) type, TreeMap.class, null, Object.class);
        }
        if (type == Calendar.class) {
            return s7k.f83881b;
        }
        if (type == Date.class) {
            return ObjectReaderImplDate.INSTANCE;
        }
        if (type == LocalDate.class) {
            return f9k.f69785b;
        }
        if (type == LocalTime.class) {
            return h9k.f71972b;
        }
        if (type == LocalDateTime.class) {
            return g9k.f70823b;
        }
        if (type == ZonedDateTime.class) {
            return aak.f64502c;
        }
        if (type == OffsetDateTime.class) {
            return s9k.f83927b;
        }
        if (type == OffsetTime.class) {
            return t9k.f85015b;
        }
        if (type == ZoneOffset.class) {
            return new ObjectReaderImplFromString(ZoneOffset.class, new Function() { // from class: com.sunia.HTREnginev2.lak
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return ZoneOffset.of((String) obj);
                }
            });
        }
        if (type == Instant.class) {
            return ObjectReaderImplInstant.INSTANCE;
        }
        if (type == Locale.class) {
            return i9k.f73029a;
        }
        if (type == Currency.class) {
            return w7k.f88309a;
        }
        if (type == ZoneId.class) {
            return new ObjectReaderImplFromString(ZoneId.class, new Function() { // from class: com.sunia.HTREnginev2.mak
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    ZoneId of;
                    of = ZoneId.of((String) obj);
                    return of;
                }
            });
        }
        if (type == TimeZone.class) {
            return new ObjectReaderImplFromString(TimeZone.class, new Function() { // from class: com.sunia.HTREnginev2.oak
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    TimeZone timeZone;
                    timeZone = TimeZone.getTimeZone((String) obj);
                    return timeZone;
                }
            });
        }
        if (type == char[].class) {
            return t7k.f84957b;
        }
        if (type == float[].class) {
            return c8k.f66602b;
        }
        if (type == double[].class) {
            return z7k.f91495b;
        }
        if (type == boolean[].class) {
            return q7k.f81744a;
        }
        if (type == byte[].class) {
            return i8k.f72999d;
        }
        if (type == short[].class) {
            return f8k.f69760b;
        }
        if (type == int[].class) {
            return ObjectReaderImplInt32ValueArray.f12680b;
        }
        if (type == long[].class) {
            return ObjectReaderImplInt64ValueArray.f12683b;
        }
        if (type == Byte[].class) {
            return h8k.f71946b;
        }
        if (type == Short[].class) {
            return e8k.f68705a;
        }
        if (type == Integer[].class) {
            return ObjectReaderImplInt32Array.f12679a;
        }
        if (type == Long[].class) {
            return ObjectReaderImplInt64Array.f12682a;
        }
        if (type == Float[].class) {
            return b8k.f65528a;
        }
        if (type == Double[].class) {
            return y7k.f90463a;
        }
        if (type == Number[].class) {
            return r9k.f82898a;
        }
        if (type == String[].class) {
            return ObjectReaderImplStringArray.f12727a;
        }
        if (type == AtomicInteger.class) {
            return new ObjectReaderImplFromInt(AtomicInteger.class, new IntFunction() { // from class: com.sunia.HTREnginev2.dbk
                @Override // java.util.function.IntFunction
                public final Object apply(int i) {
                    return new AtomicInteger(i);
                }
            });
        }
        if (type == AtomicLong.class) {
            return new ObjectReaderImplFromLong(AtomicLong.class, new LongFunction() { // from class: com.sunia.HTREnginev2.ebk
                @Override // java.util.function.LongFunction
                public final Object apply(long j) {
                    return new AtomicLong(j);
                }
            });
        }
        if (type == AtomicIntegerArray.class) {
            return new ObjectReaderImplInt32ValueArray(AtomicIntegerArray.class, new Function() { // from class: com.sunia.HTREnginev2.fbk
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return new AtomicIntegerArray((int[]) obj);
                }
            });
        }
        if (type == AtomicLongArray.class) {
            return new ObjectReaderImplInt64ValueArray(AtomicLongArray.class, new Function() { // from class: com.sunia.HTREnginev2.dak
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return new AtomicLongArray((long[]) obj);
                }
            });
        }
        if (type == AtomicReference.class) {
            return n7k.f78380b;
        }
        if (type instanceof MultiType) {
            return new a7k((MultiType) type);
        }
        if (type instanceof MapMultiValueType) {
            return new ObjectReaderImplMapMultiValueType((MapMultiValueType) type);
        }
        if (type == StringBuffer.class || type == StringBuilder.class) {
            try {
                Class cls2 = (Class) type;
                return new ObjectReaderImplValue(cls2, String.class, String.class, 0L, null, null, cls2.getConstructor(String.class), null, null);
            } catch (NoSuchMethodException e) {
                throw new RuntimeException(e);
            }
        }
        if (type == Iterable.class || type == Collection.class || type == List.class || type == AbstractCollection.class || type == AbstractList.class || type == ArrayList.class) {
            return ObjectReaderImplList.m7464of(type, null, 0L);
        }
        if (type == Queue.class || type == Deque.class || type == AbstractSequentialList.class || type == LinkedList.class) {
            return ObjectReaderImplList.m7464of(type, null, 0L);
        }
        String str = name;
        if (type == Set.class || type == AbstractSet.class || type == EnumSet.class) {
            return ObjectReaderImplList.m7464of(type, null, 0L);
        }
        if (type == NavigableSet.class || type == SortedSet.class) {
            return ObjectReaderImplList.m7464of(type, null, 0L);
        }
        if (type == ConcurrentLinkedQueue.class || type == ConcurrentSkipListSet.class || type == LinkedHashSet.class || type == HashSet.class || type == TreeSet.class || type == CopyOnWriteArrayList.class) {
            return ObjectReaderImplList.m7464of(type, null, 0L);
        }
        if (type == ObjectReaderImplList.f12685m || type == ObjectReaderImplList.f12686n || type == ObjectReaderImplList.f12687o || type == ObjectReaderImplList.f12688p || type == ObjectReaderImplList.f12689q || type == ObjectReaderImplList.f12690r || type == ObjectReaderImplList.f12691s || type == ObjectReaderImplList.f12692t) {
            return ObjectReaderImplList.m7464of(type, null, 0L);
        }
        if (type == TypeUtils.CLASS_SINGLE_SET) {
            return ObjectReaderImplList.m7464of(type, null, 0L);
        }
        if (type == Object.class || type == Cloneable.class || type == Closeable.class || type == Serializable.class || type == Comparable.class) {
            return ObjectReaderImplObject.INSTANCE;
        }
        if (type == Map.Entry.class) {
            return new n9k(null, null);
        }
        if (z) {
            Class cls3 = (Class) type;
            if (Map.class.isAssignableFrom(cls3)) {
                return ObjectReaderImplMap.m7481of(null, cls3, 0L);
            }
            if (Collection.class.isAssignableFrom(cls3)) {
                return ObjectReaderImplList.m7464of(cls3, cls3, 0L);
            }
            if (cls3.isArray()) {
                return cls3.getComponentType() == Object.class ? ObjectArrayReader.INSTANCE : new b7k(cls3);
            }
            ObjectReaderCreator objectReaderCreator = JSONFactory.defaultObjectReaderProvider.creator;
            if (cls3 == StackTraceElement.class) {
                try {
                    Class<?>[] clsArr = new Class[4];
                    try {
                        clsArr[0] = String.class;
                        clsArr[1] = String.class;
                        clsArr[2] = String.class;
                        try {
                            clsArr[3] = cls;
                            Constructor constructor = cls3.getConstructor(clsArr);
                            c = 4;
                            try {
                                String[] strArr = new String[4];
                                strArr[0] = "className";
                                strArr[1] = "methodName";
                                strArr[2] = HuaweiYunQueryArgs.FILE_NAME;
                                c2 = 3;
                                try {
                                    strArr[3] = "lineNumber";
                                    return objectReaderCreator.createObjectReaderNoneDefaultConstructor(constructor, strArr);
                                } catch (Throwable unused) {
                                }
                            } catch (Throwable unused2) {
                            }
                        } catch (Throwable unused3) {
                            c2 = 3;
                            c = 4;
                        }
                    } catch (Throwable unused4) {
                        c = 4;
                    }
                } catch (Throwable unused5) {
                    c = 4;
                }
            }
        }
        c = 4;
        c2 = 3;
        if (!(type instanceof ParameterizedType)) {
            if (type instanceof GenericArrayType) {
                return new d8k((GenericArrayType) type);
            }
            if (type instanceof WildcardType) {
                Type[] upperBounds = ((WildcardType) type).getUpperBounds();
                if (upperBounds.length == 1) {
                    return getObjectReader(upperBounds[0]);
                }
            }
            if (type == ParameterizedType.class) {
                return ObjectReaders.ofReflect(ParameterizedTypeImpl.class);
            }
            switch (str.hashCode()) {
                case -1410806254:
                    if (str.equals("java.util.JumboEnumSet")) {
                        c3 = 0;
                        break;
                    }
                    c3 = 65535;
                    break;
                case -720123389:
                    if (str.equals("java.net.InetAddress")) {
                        c3 = 1;
                        break;
                    }
                    c3 = 65535;
                    break;
                case 1087757882:
                    if (str.equals("java.sql.Date")) {
                        c3 = 2;
                        break;
                    }
                    c3 = 65535;
                    break;
                case 1088242009:
                    if (str.equals("java.sql.Time")) {
                        c3 = c2;
                        break;
                    }
                    c3 = 65535;
                    break;
                case 1252880906:
                    if (str.equals("java.sql.Timestamp")) {
                        c3 = c;
                        break;
                    }
                    c3 = 65535;
                    break;
                case 1539653772:
                    if (str.equals("java.text.SimpleDateFormat")) {
                        c3 = 5;
                        break;
                    }
                    c3 = 65535;
                    break;
                case 1585284048:
                    if (str.equals("java.net.InetSocketAddress")) {
                        c3 = 6;
                        break;
                    }
                    c3 = 65535;
                    break;
                case 1829465637:
                    if (str.equals("java.util.RegularEnumSet")) {
                        c3 = 7;
                        break;
                    }
                    c3 = 65535;
                    break;
                default:
                    c3 = 65535;
                    break;
            }
            switch (c3) {
                case 0:
                case 7:
                    return ObjectReaderImplList.m7464of(type, TypeUtils.getClass(type), 0L);
                case 1:
                    return ObjectReaderImplValue.m7485of((Class) type, String.class, new Function() { // from class: com.sunia.HTREnginev2.eak
                        @Override // java.util.function.Function
                        public final Object apply(Object obj) {
                            InetAddress m7509W;
                            m7509W = ObjectReaderProvider.m7509W((String) obj);
                            return m7509W;
                        }
                    });
                case 2:
                    return new JdbcSupport.DateReader(null, null);
                case 3:
                    return new JdbcSupport.TimeReader(null, null);
                case 4:
                    return new JdbcSupport.TimestampReader(null, null);
                case 5:
                    return ObjectReaderImplValue.m7485of((Class) type, String.class, new Function() { // from class: com.sunia.HTREnginev2.fak
                        @Override // java.util.function.Function
                        public final Object apply(Object obj) {
                            return new SimpleDateFormat((String) obj);
                        }
                    });
                case 6:
                    return new ObjectReaderMisc((Class) type);
                default:
                    return null;
            }
        }
        ParameterizedType parameterizedType = (ParameterizedType) type;
        Type rawType = parameterizedType.getRawType();
        Type[] actualTypeArguments = parameterizedType.getActualTypeArguments();
        if (actualTypeArguments.length == 2) {
            Type type2 = actualTypeArguments[0];
            Type type3 = actualTypeArguments[1];
            if (rawType == Map.class || rawType == AbstractMap.class || rawType == HashMap.class) {
                return typedMap((Class) rawType, HashMap.class, type2, type3);
            }
            if (rawType == ConcurrentMap.class || rawType == ConcurrentHashMap.class) {
                return typedMap((Class) rawType, ConcurrentHashMap.class, type2, type3);
            }
            if (rawType == ConcurrentNavigableMap.class || rawType == ConcurrentSkipListMap.class) {
                return typedMap((Class) rawType, ConcurrentSkipListMap.class, type2, type3);
            }
            if (rawType == LinkedHashMap.class || rawType == TreeMap.class) {
                Class cls4 = (Class) rawType;
                return typedMap(cls4, cls4, type2, type3);
            }
            if (rawType == Map.Entry.class) {
                return new n9k(type2, type3);
            }
        }
        if (actualTypeArguments.length != 1) {
            return null;
        }
        Type type4 = actualTypeArguments[0];
        Class<?> mapping = TypeUtils.getMapping(type4);
        if (rawType == Iterable.class || rawType == Collection.class || rawType == List.class || rawType == AbstractCollection.class || rawType == AbstractList.class || rawType == ArrayList.class) {
            return mapping == String.class ? new ObjectReaderImplListStr((Class) rawType, ArrayList.class) : mapping == Long.class ? new ObjectReaderImplListInt64((Class) rawType, ArrayList.class) : ObjectReaderImplList.m7464of(type, null, 0L);
        }
        if (rawType == Queue.class || rawType == Deque.class || rawType == AbstractSequentialList.class || rawType == LinkedList.class) {
            return mapping == String.class ? new ObjectReaderImplListStr((Class) rawType, LinkedList.class) : mapping == Long.class ? new ObjectReaderImplListInt64((Class) rawType, LinkedList.class) : ObjectReaderImplList.m7464of(type, null, 0L);
        }
        if (rawType == Set.class || rawType == AbstractSet.class || rawType == EnumSet.class) {
            return mapping == String.class ? new ObjectReaderImplListStr((Class) rawType, HashSet.class) : mapping == Long.class ? new ObjectReaderImplListInt64((Class) rawType, HashSet.class) : ObjectReaderImplList.m7464of(type, null, 0L);
        }
        if (rawType == NavigableSet.class || rawType == SortedSet.class) {
            return type4 == String.class ? new ObjectReaderImplListStr((Class) rawType, TreeSet.class) : mapping == Long.class ? new ObjectReaderImplListInt64((Class) rawType, TreeSet.class) : ObjectReaderImplList.m7464of(type, null, 0L);
        }
        if (rawType == ConcurrentLinkedQueue.class || rawType == ConcurrentSkipListSet.class || rawType == LinkedHashSet.class || rawType == HashSet.class || rawType == TreeSet.class || rawType == CopyOnWriteArrayList.class) {
            if (type4 == String.class) {
                Class cls5 = (Class) rawType;
                return new ObjectReaderImplListStr(cls5, cls5);
            }
            if (mapping != Long.class) {
                return ObjectReaderImplList.m7464of(type, null, 0L);
            }
            Class cls6 = (Class) rawType;
            return new ObjectReaderImplListInt64(cls6, cls6);
        }
        if (rawType == Optional.class) {
            return u9k.m57601a(type, null, null);
        }
        if (rawType == AtomicReference.class) {
            return new n7k(type4);
        }
        if (type4 instanceof WildcardType) {
            return getObjectReaderModule(rawType);
        }
        return null;
    }

    public Function getTypeConvert(Type type, Type type2) {
        ConcurrentMap<Type, Map<Type, Function>> concurrentMap = this.f12752f;
        if (concurrentMap == null) {
            concurrentMap = buildInitTypeConverts();
            this.f12752f = concurrentMap;
        }
        Map<Type, Function> map = concurrentMap.get(type);
        if (map == null) {
            return null;
        }
        return map.get(type2);
    }

    public void mixIn(Class cls, Class cls2) {
        if (cls2 == null) {
            this.f12750d.remove(cls);
        } else {
            this.f12750d.put(cls, cls2);
        }
        this.f12747a.remove(cls);
        this.f12748b.remove(cls);
    }

    public ObjectReader register(Type type, ObjectReader objectReader) {
        return objectReader == null ? this.f12747a.remove(type) : this.f12747a.put(type, objectReader);
    }

    public void registerIfAbsent(long j, ObjectReader objectReader) {
        this.f12749c.put(Long.valueOf(j), objectReader);
    }

    public void registerSeeAlsoSubType(Class cls) {
        registerSeeAlsoSubType(cls, null);
    }

    public void setAutoTypeBeforeHandler(JSONReader.AutoTypeBeforeHandler autoTypeBeforeHandler) {
        this.f12755i = autoTypeBeforeHandler;
    }

    public void setAutoTypeHandler(Consumer<Class> consumer) {
        this.f12756j = consumer;
    }

    public ObjectReader unregisterObjectReader(Type type) {
        return this.f12747a.remove(type);
    }

    /* renamed from: v */
    public final void m7543v(String str, Class cls) {
        Consumer<Class> consumer = this.f12756j;
        if (consumer != null) {
            consumer.accept(cls);
        }
        synchronized (this.f12751e) {
            this.f12751e.put(str, new Date());
        }
    }

    /* renamed from: w */
    public final void m7544w(BeanInfo beanInfo, Annotation[] annotationArr) {
        for (Annotation annotation : annotationArr) {
            annotation.annotationType();
            if (((JSONType) BeanUtils.findAnnotation(annotation, JSONType.class)) != null) {
                m7545x(beanInfo, annotation);
            }
        }
    }

    /* renamed from: x */
    public void m7545x(final BeanInfo beanInfo, final Annotation annotation) {
        BeanUtils.annotationMethods(annotation.getClass(), new Consumer() { // from class: com.sunia.HTREnginev2.cak
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                ObjectReaderProvider.this.m7500N(annotation, beanInfo, (Method) obj);
            }
        });
    }

    /* renamed from: y */
    public final void m7546y(final BeanInfo beanInfo, final Class<?> cls, final Annotation annotation, Class<? extends Annotation> cls2) {
        BeanUtils.annotationMethods(cls2, new Consumer() { // from class: com.sunia.HTREnginev2.rak
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                ObjectReaderProvider.m7501O(annotation, beanInfo, cls, (Method) obj);
            }
        });
    }

    /* renamed from: z, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
    public final void m7499M(final BeanInfo beanInfo, Class<?> cls, Constructor constructor) {
        int i;
        Constructor<?> constructor2;
        if (cls.isEnum()) {
            return;
        }
        Annotation[] declaredAnnotations = constructor.getDeclaredAnnotations();
        int length = declaredAnnotations.length;
        boolean z = false;
        while (i < length) {
            final Annotation annotation = declaredAnnotations[i];
            Class<? extends Annotation> annotationType = annotation.annotationType();
            JSONCreator jSONCreator = (JSONCreator) BeanUtils.findAnnotation(annotation, JSONCreator.class);
            if (jSONCreator != null) {
                String[] parameterNames = jSONCreator.parameterNames();
                if (parameterNames.length != 0) {
                    beanInfo.createParameterNames = parameterNames;
                }
                z = true;
                i = jSONCreator == annotation ? i + 1 : 0;
            }
            String name = annotationType.getName();
            if (name.equals("com.alibaba.fastjson.annotation.JSONCreator") || name.equals("com.alibaba.fastjson2.annotation.JSONCreator")) {
                BeanUtils.annotationMethods(annotationType, new Consumer() { // from class: com.sunia.HTREnginev2.qak
                    @Override // java.util.function.Consumer
                    public final void accept(Object obj) {
                        ObjectReaderProvider.m7502P(annotation, beanInfo, (Method) obj);
                    }
                });
                z = true;
            }
        }
        if (z) {
            try {
                constructor2 = cls.getDeclaredConstructor(constructor.getParameterTypes());
            } catch (NoSuchMethodException unused) {
                constructor2 = null;
            }
            if (constructor2 != null) {
                beanInfo.creatorConstructor = constructor2;
            }
        }
    }

    public ObjectReader registerIfAbsent(Type type, ObjectReader objectReader) {
        if (this.f12747a.containsKey(type)) {
            return this.f12747a.get(type);
        }
        return this.f12747a.put(type, objectReader);
    }

    public void registerSeeAlsoSubType(Class cls, String str) {
        gbk gbkVar;
        gbk m54250a;
        Class superclass = cls.getSuperclass();
        if (superclass != null) {
            ObjectReader objectReader = getObjectReader(superclass);
            if (!(objectReader instanceof gbk) || (m54250a = (gbkVar = (gbk) objectReader).m54250a(cls, str)) == gbkVar) {
                return;
            }
            if (this.f12747a.containsKey(superclass)) {
                this.f12747a.put(superclass, m54250a);
                return;
            } else {
                this.f12748b.put(cls, m54250a);
                return;
            }
        }
        throw new JSONException("superclass is null");
    }

    public boolean unregisterObjectReader(Type type, ObjectReader objectReader) {
        return this.f12747a.remove(type, objectReader);
    }

    public void cleanup(ClassLoader classLoader) {
        Iterator<Map.Entry<Class, Class>> it2 = this.f12750d.entrySet().iterator();
        while (it2.hasNext()) {
            if (it2.next().getKey().getClassLoader() == classLoader) {
                it2.remove();
            }
        }
        Iterator<Map.Entry<Type, ObjectReader>> it3 = this.f12747a.entrySet().iterator();
        while (it3.hasNext()) {
            Map.Entry<Type, ObjectReader> next = it3.next();
            if (m7512Z(next.getKey(), next.getValue(), classLoader)) {
                it3.remove();
            }
        }
        Iterator<Map.Entry<Type, ObjectReader>> it4 = this.f12748b.entrySet().iterator();
        while (it4.hasNext()) {
            Map.Entry<Type, ObjectReader> next2 = it4.next();
            if (m7512Z(next2.getKey(), next2.getValue(), classLoader)) {
                it4.remove();
            }
        }
        BeanUtils.cleanupCache(classLoader);
    }

    public ObjectReader getObjectReader(String str, Class<?> cls, long j) {
        Class<?> checkAutoType = checkAutoType(str, cls, j);
        if (checkAutoType == null) {
            return null;
        }
        ObjectReader objectReader = getObjectReader(checkAutoType, (j & JSONReader.Feature.FieldBased.mask) != 0);
        if (checkAutoType != cls) {
            registerIfAbsent(Fnv.hashCode64(str), objectReader);
        }
        return objectReader;
    }

    public void getFieldInfo(FieldInfo fieldInfo, Class cls, Method method, int i) {
        Class cls2;
        Method method2;
        if (cls != null && (cls2 = this.f12750d.get(cls)) != null && cls2 != cls) {
            try {
                method2 = cls2.getMethod(method.getName(), method.getParameterTypes());
            } catch (NoSuchMethodException unused) {
                method2 = null;
            }
            if (method2 != null) {
                m7539a0(fieldInfo, method2.getParameterAnnotations()[i]);
            }
        }
        m7539a0(fieldInfo, method.getParameterAnnotations()[i]);
    }

    public ObjectReaderProvider(ObjectReaderCreator objectReaderCreator) {
        ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap();
        this.f12749c = concurrentHashMap;
        this.f12750d = new ConcurrentHashMap();
        this.f12751e = new LRUAutoTypeCache(1024);
        this.f12753g = new long[]{-9164606388214699518L, -8754006975464705441L, -8720046426850100497L, -8649961213709896794L, -8614556368991373401L, -8382625455832334425L, -8165637398350707645L, -8109300701639721088L, -7966123100503199569L, -7921218830998286408L, -7775351613326101303L, -7768608037458185275L, -7766605818834748097L, -6835437086156813536L, -6316154655839304624L, -6179589609550493385L, -6149130139291498841L, -6149093380703242441L, -6088208984980396913L, -6025144546313590215L, -5939269048541779808L, -5885964883385605994L, -5767141746063564198L, -5764804792063216819L, -5472097725414717105L, -5194641081268104286L, -5076846148177416215L, -4837536971810737970L, -4836620931940850535L, -4733542790109620528L, -4703320437989596122L, -4608341446948126581L, -4537258998789938600L, -4438775680185074100L, -4314457471973557243L, -4150995715611818742L, -4082057040235125754L, -3975378478825053783L, -3967588558552655563L, -3935185854875733362L, -3319207949486691020L, -3077205613010077203L, -3053747177772160511L, -2995060141064716555L, -2825378362173150292L, -2533039401923731906L, -2439930098895578154L, -2378990704010641148L, -2364987994247679115L, -2262244760619952081L, -2192804397019347313L, -2095516571388852610L, -1872417015366588117L, -1650485814983027158L, -1589194880214235129L, -965955008570215305L, -905177026366752536L, -831789045734283466L, -803541446955902575L, -731978084025273882L, -666475508176557463L, -582813228520337988L, -254670111376247151L, -219577392946377768L, -190281065685395680L, -26639035867733124L, -9822483067882491L, 4750336058574309L, 33238344207745342L, 156405680656087946L, 218512992947536312L, 313864100207897507L, 386461436234701831L, 744602970950881621L, 823641066473609950L, 1073634739308289776L, 1153291637701043748L, 1203232727967308606L, 1214780596910349029L, 1268707909007641340L, 1459860845934817624L, 1502845958873959152L, 1534439610567445754L, 1698504441317515818L, 1818089308493370394L, 2078113382421334967L, 2164696723069287854L, 2622551729063269307L, 2653453629929770569L, 2660670623866180977L, 2731823439467737506L, 2836431254737891113L, 2930861374593775110L, 3058452313624178956L, 3085473968517218653L, 3089451460101527857L, 3114862868117605599L, 3129395579983849527L, 3256258368248066264L, 3452379460455804429L, 3547627781654598988L, 3637939656440441093L, 3688179072722109200L, 3718352661124136681L, 3730752432285826863L, 3740226159580918099L, 3794316665763266033L, 3977090344859527316L, 4000049462512838776L, 4046190361520671643L, 4147696707147271408L, 4193204392725694463L, 4215053018660518963L, 4241163808635564644L, 4254584350247334433L, 4814658433570175913L, 4841947709850912914L, 4904007817188630457L, 5100336081510080343L, 5120543992130540564L, 5274044858141538265L, 5347909877633654828L, 5450448828334921485L, 5474268165959054640L, 5545425291794704408L, 5596129856135573697L, 5688200883751798389L, 5751393439502795295L, 5916409771425455946L, 5944107969236155580L, 6007332606592876737L, 6090377589998869205L, 6280357960959217660L, 6456855723474196908L, 6511035576063254270L, 6534946468240507089L, 6584624952928234050L, 6734240326434096246L, 6742705432718011780L, 6800727078373023163L, 6854854816081053523L, 7045245923763966215L, 7123326897294507060L, 7164889056054194741L, 7179336928365889465L, 7240293012336844478L, 7347653049056829645L, 7375862386996623731L, 7442624256860549330L, 7617522210483516279L, 7658177784286215602L, 8055461369741094911L, 8064026652676081192L, 8389032537095247355L, 8488266005336625107L, 8537233257283452655L, 8735538376409180149L, 8838294710098435315L, 8861402923078831179L, 9140390920032557669L, 9140416208800006522L, 9144212112462101475L};
        this.f12754h = new long[]{-6293031534589903644L};
        concurrentHashMap.put(Long.valueOf(ObjectArrayReader.TYPE_HASH_CODE), ObjectArrayReader.INSTANCE);
        concurrentHashMap.put(-4834614249632438472L, y9k.f90517a);
        concurrentHashMap.put(77L, ObjectReaderImplMap.INSTANCE);
        this.creator = objectReaderCreator;
        m7538D();
    }

    public ObjectReader getObjectReader(Type type) {
        return getObjectReader(type, false);
    }

    public ObjectReader getObjectReader(Type type, boolean z) {
        ObjectReader objectReader;
        ObjectReader objectReader2;
        ObjectReader objectReader3;
        ObjectReader put;
        if (type == null) {
            type = Object.class;
        }
        if (z) {
            objectReader = this.f12748b.get(type);
        } else {
            objectReader = this.f12747a.get(type);
        }
        boolean z2 = true;
        if (objectReader == null && (type instanceof WildcardType)) {
            Type[] upperBounds = ((WildcardType) type).getUpperBounds();
            if (upperBounds.length == 1) {
                objectReader = (z ? this.f12748b : this.f12747a).get(upperBounds[0]);
            }
        }
        if (objectReader != null) {
            return objectReader;
        }
        ObjectReader objectReaderModule = getObjectReaderModule(type);
        if (objectReaderModule != null) {
            if (z) {
                put = this.f12748b.put(type, objectReaderModule);
            } else {
                put = this.f12747a.put(type, objectReaderModule);
            }
            return put != null ? put : objectReaderModule;
        }
        if (type instanceof TypeVariable) {
            Type[] bounds = ((TypeVariable) type).getBounds();
            if (bounds.length > 0) {
                Type type2 = bounds[0];
                if ((type2 instanceof Class) && (objectReader3 = getObjectReader(type2, z)) != null) {
                    ObjectReader m7537C = m7537C(z, type, objectReader3);
                    return m7537C != null ? m7537C : objectReader3;
                }
            }
        }
        if (type instanceof ParameterizedType) {
            ParameterizedType parameterizedType = (ParameterizedType) type;
            Type rawType = parameterizedType.getRawType();
            Type[] actualTypeArguments = parameterizedType.getActualTypeArguments();
            if (rawType instanceof Class) {
                Class cls = (Class) rawType;
                Class cls2 = cls;
                while (true) {
                    if (cls2 == Object.class) {
                        z2 = false;
                        break;
                    }
                    if (cls2.getTypeParameters().length > 0) {
                        break;
                    }
                    cls2 = cls2.getSuperclass();
                }
                if ((actualTypeArguments.length == 0 || !z2) && (objectReader2 = getObjectReader(cls, z)) != null) {
                    ObjectReader m7537C2 = m7537C(z, type, objectReader2);
                    return m7537C2 != null ? m7537C2 : objectReader2;
                }
            }
        }
        ObjectReader createObjectReader = getCreator().createObjectReader(TypeUtils.getMapping(type), type, z, this);
        ObjectReader m7537C3 = m7537C(z, type, createObjectReader);
        return m7537C3 != null ? m7537C3 : createObjectReader;
    }

    public void getFieldInfo(FieldInfo fieldInfo, Class cls, Field field) {
        Class cls2;
        Field field2;
        if (cls != null && (cls2 = this.f12750d.get(cls)) != null && cls2 != cls) {
            try {
                field2 = cls2.getDeclaredField(field.getName());
            } catch (Exception unused) {
                field2 = null;
            }
            if (field2 != null) {
                getFieldInfo(fieldInfo, cls2, field2);
            }
        }
        Annotation[] declaredAnnotations = field.getDeclaredAnnotations();
        if (declaredAnnotations.length > 0) {
            m7539a0(fieldInfo, declaredAnnotations);
        }
    }

    public void getFieldInfo(FieldInfo fieldInfo, Class cls, Method method) {
        int i;
        String str;
        String str2;
        char charAt;
        char charAt2;
        Method method2;
        Method method3;
        Method method4;
        String name = method.getName();
        String str3 = null;
        if (cls != null) {
            Class superclass = cls.getSuperclass();
            if (superclass != Object.class && superclass != null && (method4 = BeanUtils.getMethod(superclass, method)) != null) {
                getFieldInfo(fieldInfo, superclass, method4);
            }
            for (Class<?> cls2 : cls.getInterfaces()) {
                if (cls2 != Serializable.class && (method3 = BeanUtils.getMethod(cls2, method)) != null && superclass != null) {
                    getFieldInfo(fieldInfo, superclass, method3);
                }
            }
            Class cls3 = this.f12750d.get(cls);
            if (cls3 != null && cls3 != cls) {
                try {
                    method2 = cls3.getDeclaredMethod(name, method.getParameterTypes());
                } catch (Exception unused) {
                    method2 = null;
                }
                if (method2 != null) {
                    getFieldInfo(fieldInfo, cls3, method2);
                }
            }
        }
        String str4 = null;
        for (Annotation annotation : method.getDeclaredAnnotations()) {
            Class<? extends Annotation> annotationType = annotation.annotationType();
            JSONField jSONField = (JSONField) BeanUtils.findAnnotation(annotation, JSONField.class);
            if (jSONField != null) {
                m7536B(fieldInfo, jSONField);
                str4 = jSONField.name();
                i = jSONField == annotation ? i + 1 : 0;
            }
            if (annotationType.getName().equals("com.alibaba.fastjson.annotation.JSONField")) {
                m7540b0(fieldInfo, annotation);
            }
        }
        if (name.startsWith(ExtensionNamespaceContext.EXSLT_SET_PREFIX, 0)) {
            str = BeanUtils.setterName(name, (String) null);
        } else {
            str = BeanUtils.getterName(name, null);
        }
        String str5 = str;
        if (str5.length() <= 1 || (charAt = str5.charAt(0)) < 'A' || charAt > 'Z' || (charAt2 = str5.charAt(1)) < 'A' || charAt2 > 'Z' || !(str4 == null || str4.isEmpty())) {
            str2 = null;
        } else {
            char[] charArray = str5.toCharArray();
            charArray[0] = (char) (charArray[0] + ' ');
            str3 = new String(charArray);
            charArray[1] = (char) (charArray[1] + ' ');
            str2 = new String(charArray);
        }
        BeanUtils.getFieldInfo(cls, fieldInfo, this, str5, str3, str2);
        if (str3 != null && fieldInfo.fieldName == null && fieldInfo.alternateNames == null) {
            fieldInfo.alternateNames = new String[]{str3, str2};
        }
    }
}
