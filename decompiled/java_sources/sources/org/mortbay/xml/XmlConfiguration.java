package org.mortbay.xml;

import com.google.android.material.motion.MotionUtils;
import com.google.protobuf.C6883t;
import com.onyx.android.sdk.replicator.note.data.shape.ShapeLinkType;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.io.IOException;
import java.io.InputStream;
import java.io.StringReader;
import java.lang.reflect.InvocationTargetException;
import java.net.InetAddress;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.UnknownHostException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Properties;
import org.apache.xmlbeans.impl.schema.SoapEncSchemaTypeSystem;
import org.mortbay.component.LifeCycle;
import org.mortbay.log.Log;
import org.mortbay.resource.Resource;
import org.mortbay.util.LazyList;
import org.mortbay.util.Loader;
import org.mortbay.util.TypeUtil;
import org.mortbay.xml.XmlParser;
import org.xml.sax.InputSource;
import org.xml.sax.SAXException;

/* loaded from: classes13.dex */
public class XmlConfiguration {

    /* renamed from: d */
    public static Class[] f115442d = {Boolean.TYPE, Character.TYPE, Byte.TYPE, Short.TYPE, Integer.TYPE, Long.TYPE, Float.TYPE, Double.TYPE, Void.TYPE};

    /* renamed from: e */
    public static Class[] f115443e;

    /* renamed from: f */
    public static final Integer f115444f;

    /* renamed from: g */
    public static XmlParser f115445g;

    /* renamed from: h */
    public static /* synthetic */ Class f115446h;

    /* renamed from: i */
    public static /* synthetic */ Class f115447i;

    /* renamed from: j */
    public static /* synthetic */ Class f115448j;

    /* renamed from: k */
    public static /* synthetic */ Class f115449k;

    /* renamed from: l */
    public static /* synthetic */ Class f115450l;

    /* renamed from: m */
    public static /* synthetic */ Class f115451m;

    /* renamed from: n */
    public static /* synthetic */ Class f115452n;

    /* renamed from: o */
    public static /* synthetic */ Class f115453o;

    /* renamed from: p */
    public static /* synthetic */ Class f115454p;

    /* renamed from: q */
    public static /* synthetic */ Class f115455q;

    /* renamed from: r */
    public static /* synthetic */ Class f115456r;

    /* renamed from: s */
    public static /* synthetic */ Class f115457s;

    /* renamed from: t */
    public static /* synthetic */ Class f115458t;

    /* renamed from: u */
    public static /* synthetic */ Class f115459u;

    /* renamed from: a */
    public XmlParser.Node f115460a;

    /* renamed from: b */
    public Map f115461b = new HashMap();

    /* renamed from: c */
    public Map f115462c = new HashMap();

    static {
        Class[] clsArr = new Class[9];
        Class cls = f115446h;
        if (cls == null) {
            cls = class$(Constants.BOOLEAN_CLASS);
            f115446h = cls;
        }
        clsArr[0] = cls;
        Class cls2 = f115447i;
        if (cls2 == null) {
            cls2 = class$("java.lang.Character");
            f115447i = cls2;
        }
        clsArr[1] = cls2;
        Class cls3 = f115448j;
        if (cls3 == null) {
            cls3 = class$("java.lang.Byte");
            f115448j = cls3;
        }
        clsArr[2] = cls3;
        Class cls4 = f115449k;
        if (cls4 == null) {
            cls4 = class$("java.lang.Short");
            f115449k = cls4;
        }
        clsArr[3] = cls4;
        Class cls5 = f115450l;
        if (cls5 == null) {
            cls5 = class$(Constants.INTEGER_CLASS);
            f115450l = cls5;
        }
        clsArr[4] = cls5;
        Class cls6 = f115451m;
        if (cls6 == null) {
            cls6 = class$("java.lang.Long");
            f115451m = cls6;
        }
        clsArr[5] = cls6;
        Class cls7 = f115452n;
        if (cls7 == null) {
            cls7 = class$("java.lang.Float");
            f115452n = cls7;
        }
        clsArr[6] = cls7;
        Class cls8 = f115453o;
        if (cls8 == null) {
            cls8 = class$(Constants.DOUBLE_CLASS);
            f115453o = cls8;
        }
        clsArr[7] = cls8;
        Class cls9 = f115454p;
        if (cls9 == null) {
            cls9 = class$("java.lang.Void");
            f115454p = cls9;
        }
        clsArr[8] = cls9;
        f115443e = clsArr;
        f115444f = new Integer(0);
    }

    public XmlConfiguration(URL url) throws SAXException, IOException {
        m71670d();
        synchronized (f115445g) {
            this.f115460a = f115445g.parse(url.toString());
        }
    }

    public static /* synthetic */ Class class$(String str) {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException e) {
            throw new NoClassDefFoundError().initCause(e);
        }
    }

    /* renamed from: d */
    public static synchronized void m71670d() throws IOException {
        synchronized (XmlConfiguration.class) {
            if (f115445g != null) {
                return;
            }
            f115445g = new XmlParser();
            try {
                Class cls = f115455q;
                if (cls == null) {
                    cls = class$("org.mortbay.xml.XmlConfiguration");
                    f115455q = cls;
                }
                URL resource = Loader.getResource(cls, "org/mortbay/xml/configure_6_0.dtd", true);
                f115445g.redirectEntity("configure.dtd", resource);
                f115445g.redirectEntity("configure_1_3.dtd", resource);
                f115445g.redirectEntity("http://jetty.mortbay.org/configure.dtd", resource);
                f115445g.redirectEntity("-//Mort Bay Consulting//DTD Configure//EN", resource);
                f115445g.redirectEntity("http://jetty.mortbay.org/configure_1_3.dtd", resource);
                f115445g.redirectEntity("-//Mort Bay Consulting//DTD Configure 1.3//EN", resource);
                f115445g.redirectEntity("configure_1_2.dtd", resource);
                f115445g.redirectEntity("http://jetty.mortbay.org/configure_1_2.dtd", resource);
                f115445g.redirectEntity("-//Mort Bay Consulting//DTD Configure 1.2//EN", resource);
                f115445g.redirectEntity("configure_1_1.dtd", resource);
                f115445g.redirectEntity("http://jetty.mortbay.org/configure_1_1.dtd", resource);
                f115445g.redirectEntity("-//Mort Bay Consulting//DTD Configure 1.1//EN", resource);
                f115445g.redirectEntity("configure_1_0.dtd", resource);
                f115445g.redirectEntity("http://jetty.mortbay.org/configure_1_0.dtd", resource);
                f115445g.redirectEntity("-//Mort Bay Consulting//DTD Configure 1.0//EN", resource);
            } catch (ClassNotFoundException e) {
                Log.warn(e.toString());
                Log.debug(e);
            }
        }
    }

    public static void main(String[] strArr) {
        try {
            Properties properties = new Properties();
            Object[] objArr = new Object[strArr.length];
            XmlConfiguration xmlConfiguration = null;
            for (int i = 0; i < strArr.length; i++) {
                if (strArr[i].toLowerCase().endsWith(".properties")) {
                    properties.load(Resource.newResource(strArr[i]).getInputStream());
                } else {
                    XmlConfiguration xmlConfiguration2 = new XmlConfiguration(Resource.newResource(strArr[i]).getURL());
                    if (xmlConfiguration != null) {
                        xmlConfiguration2.getIdMap().putAll(xmlConfiguration.getIdMap());
                    }
                    if (properties.size() > 0) {
                        xmlConfiguration2.setProperties(properties);
                    }
                    objArr[i] = xmlConfiguration2.configure();
                    xmlConfiguration = xmlConfiguration2;
                }
            }
            for (int i2 = 0; i2 < strArr.length; i2++) {
                Object obj = objArr[i2];
                if (obj instanceof LifeCycle) {
                    LifeCycle lifeCycle = (LifeCycle) obj;
                    if (!lifeCycle.isRunning()) {
                        lifeCycle.start();
                    }
                }
            }
        } catch (Exception e) {
            Log.warn(Log.EXCEPTION, (Throwable) e);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:49:0x00d2 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:55:0x00dd A[SYNTHETIC] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m71671a(java.lang.Object r14, org.mortbay.xml.XmlParser.Node r15) throws java.lang.Exception {
        /*
            Method dump skipped, instructions count: 265
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mortbay.xml.XmlConfiguration.m71671a(java.lang.Object, org.mortbay.xml.XmlParser$Node):java.lang.Object");
    }

    /* renamed from: b */
    public final void m71672b(Object obj, XmlParser.Node node, int i) throws Exception {
        String attribute = node.getAttribute("id");
        if (attribute != null) {
            this.f115461b.put(attribute, obj);
        }
        while (i < node.size()) {
            Object obj2 = node.get(i);
            if (!(obj2 instanceof String)) {
                XmlParser.Node node2 = (XmlParser.Node) obj2;
                try {
                    String tag = node2.getTag();
                    if ("Set".equals(tag)) {
                        m71682m(obj, node2);
                    } else if ("Put".equals(tag)) {
                        m71680k(obj, node2);
                    } else if ("Call".equals(tag)) {
                        m71671a(obj, node2);
                    } else if ("Get".equals(tag)) {
                        m71673c(obj, node2);
                    } else if ("New".equals(tag)) {
                        m71677h(obj, node2);
                    } else if (SoapEncSchemaTypeSystem.SOAP_ARRAY.equals(tag)) {
                        m71675f(obj, node2);
                    } else if ("Ref".equals(tag)) {
                        m71681l(obj, node2);
                    } else {
                        if (!"Property".equals(tag)) {
                            StringBuffer stringBuffer = new StringBuffer();
                            stringBuffer.append("Unknown tag: ");
                            stringBuffer.append(tag);
                            throw new IllegalStateException(stringBuffer.toString());
                        }
                        m71679j(obj, node2);
                    }
                } catch (Exception e) {
                    StringBuffer stringBuffer2 = new StringBuffer();
                    stringBuffer2.append("Config error at ");
                    stringBuffer2.append(node2);
                    Log.warn(stringBuffer2.toString(), e.toString());
                    throw e;
                }
            }
            i++;
        }
    }

    /* renamed from: c */
    public final Object m71673c(Object obj, XmlParser.Node node) throws Exception {
        Class<?> m71678i = m71678i(node);
        if (m71678i != null) {
            obj = null;
        } else {
            m71678i = obj.getClass();
        }
        String attribute = node.getAttribute("name");
        String attribute2 = node.getAttribute("id");
        if (Log.isDebugEnabled()) {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("XML get ");
            stringBuffer.append(attribute);
            Log.debug(stringBuffer.toString());
        }
        try {
            StringBuffer stringBuffer2 = new StringBuffer();
            stringBuffer2.append("get");
            stringBuffer2.append(attribute.substring(0, 1).toUpperCase());
            stringBuffer2.append(attribute.substring(1));
            obj = m71678i.getMethod(stringBuffer2.toString(), null).invoke(obj, null);
            m71672b(obj, node, 0);
        } catch (NoSuchMethodException e) {
            try {
                obj = m71678i.getField(attribute).get(obj);
                m71672b(obj, node, 0);
            } catch (NoSuchFieldException unused) {
                throw e;
            }
        }
        if (attribute2 != null) {
            this.f115461b.put(attribute2, obj);
        }
        return obj;
    }

    public void configure(Object obj) throws Exception {
        Class m71678i = m71678i(this.f115460a);
        if (m71678i.isInstance(obj)) {
            m71672b(obj, this.f115460a, 0);
            return;
        }
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("Object is not of type ");
        stringBuffer.append(m71678i);
        throw new IllegalArgumentException(stringBuffer.toString());
    }

    /* renamed from: e */
    public final Object m71674e(Object obj, Object obj2) throws Exception {
        if (obj2 instanceof String) {
            return obj2;
        }
        XmlParser.Node node = (XmlParser.Node) obj2;
        String tag = node.getTag();
        if ("Call".equals(tag)) {
            return m71671a(obj, node);
        }
        if ("Get".equals(tag)) {
            return m71673c(obj, node);
        }
        if ("New".equals(tag)) {
            return m71677h(obj, node);
        }
        if ("Ref".equals(tag)) {
            return m71681l(obj, node);
        }
        if (SoapEncSchemaTypeSystem.SOAP_ARRAY.equals(tag)) {
            return m71675f(obj, node);
        }
        if (C6883t.f38149c.equals(tag)) {
            return m71676g(obj, node);
        }
        if ("Property".equals(tag)) {
            return m71679j(obj, node);
        }
        if ("SystemProperty".equals(tag)) {
            return System.getProperty(node.getAttribute("name"), node.getAttribute("default"));
        }
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("Unknown value tag: ");
        stringBuffer.append(node);
        Log.warn(stringBuffer.toString(), new Throwable());
        return null;
    }

    /* renamed from: f */
    public final Object m71675f(Object obj, XmlParser.Node node) throws Exception {
        Class cls = f115456r;
        if (cls == null) {
            cls = class$(Constants.OBJECT_CLASS);
            f115456r = cls;
        }
        String attribute = node.getAttribute("type");
        String attribute2 = node.getAttribute("id");
        if (attribute != null && (cls = TypeUtil.fromName(attribute)) == null) {
            if ("String".equals(attribute)) {
                cls = f115457s;
                if (cls == null) {
                    cls = class$("java.lang.String");
                    f115457s = cls;
                }
            } else if (ShapeLinkType.LINK_URL.equals(attribute)) {
                cls = f115458t;
                if (cls == null) {
                    cls = class$("java.net.URL");
                    f115458t = cls;
                }
            } else if ("InetAddress".equals(attribute)) {
                cls = f115459u;
                if (cls == null) {
                    cls = class$("java.net.InetAddress");
                    f115459u = cls;
                }
            } else {
                Class cls2 = f115455q;
                if (cls2 == null) {
                    cls2 = class$("org.mortbay.xml.XmlConfiguration");
                    f115455q = cls2;
                }
                cls = Loader.loadClass(cls2, attribute, true);
            }
        }
        Iterator it2 = node.iterator("Item");
        Object obj2 = null;
        while (it2.hasNext()) {
            XmlParser.Node node2 = (XmlParser.Node) it2.next();
            String attribute3 = node2.getAttribute("id");
            Object m71683n = m71683n(obj, node2);
            obj2 = LazyList.add(obj2, (m71683n == null && cls.isPrimitive()) ? f115444f : m71683n);
            if (attribute3 != null) {
                this.f115461b.put(attribute3, m71683n);
            }
        }
        Object array = LazyList.toArray(obj2, cls);
        if (attribute2 != null) {
            this.f115461b.put(attribute2, array);
        }
        return array;
    }

    /* renamed from: g */
    public final Object m71676g(Object obj, XmlParser.Node node) throws Exception {
        String attribute = node.getAttribute("id");
        HashMap hashMap = new HashMap();
        if (attribute != null) {
            this.f115461b.put(attribute, hashMap);
        }
        for (int i = 0; i < node.size(); i++) {
            Object obj2 = node.get(i);
            if (!(obj2 instanceof String)) {
                XmlParser.Node node2 = (XmlParser.Node) obj2;
                if (!node2.getTag().equals("Entry")) {
                    throw new IllegalStateException("Not an Entry");
                }
                XmlParser.Node node3 = null;
                XmlParser.Node node4 = null;
                for (int i2 = 0; i2 < node2.size(); i2++) {
                    Object obj3 = node2.get(i2);
                    if (!(obj3 instanceof String)) {
                        XmlParser.Node node5 = (XmlParser.Node) obj3;
                        if (!node5.getTag().equals("Item")) {
                            throw new IllegalStateException("Not an Item");
                        }
                        if (node3 == null) {
                            node3 = node5;
                        } else {
                            node4 = node5;
                        }
                    }
                }
                if (node3 == null || node4 == null) {
                    throw new IllegalStateException("Missing Item in Entry");
                }
                String attribute2 = node3.getAttribute("id");
                String attribute3 = node4.getAttribute("id");
                Object m71683n = m71683n(obj, node3);
                Object m71683n2 = m71683n(obj, node4);
                hashMap.put(m71683n, m71683n2);
                if (attribute2 != null) {
                    this.f115461b.put(attribute2, m71683n);
                }
                if (attribute3 != null) {
                    this.f115461b.put(attribute3, m71683n2);
                }
            }
        }
        return hashMap;
    }

    public Map getIdMap() {
        return this.f115461b;
    }

    public Map getProperties() {
        return this.f115462c;
    }

    /* JADX WARN: Removed duplicated region for block: B:35:0x009a A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00a5 A[SYNTHETIC] */
    /* renamed from: h */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m71677h(java.lang.Object r11, org.mortbay.xml.XmlParser.Node r12) throws java.lang.Exception {
        /*
            r10 = this;
            java.lang.Class r0 = r10.m71678i(r12)
            java.lang.String r1 = "id"
            java.lang.String r1 = r12.getAttribute(r1)
            int r2 = r12.size()
            r3 = 0
            r4 = r3
            r5 = r4
        L11:
            int r6 = r12.size()
            if (r4 >= r6) goto L35
            java.lang.Object r6 = r12.get(r4)
            boolean r7 = r6 instanceof java.lang.String
            if (r7 == 0) goto L20
            goto L32
        L20:
            org.mortbay.xml.XmlParser$Node r6 = (org.mortbay.xml.XmlParser.Node) r6
            java.lang.String r6 = r6.getTag()
            java.lang.String r7 = "Arg"
            boolean r6 = r6.equals(r7)
            if (r6 != 0) goto L30
            r2 = r4
            goto L35
        L30:
            int r5 = r5 + 1
        L32:
            int r4 = r4 + 1
            goto L11
        L35:
            java.lang.Object[] r4 = new java.lang.Object[r5]
            r6 = r3
            r7 = r6
        L39:
            if (r6 >= r5) goto L52
            java.lang.Object r8 = r12.get(r7)
            boolean r9 = r8 instanceof java.lang.String
            if (r9 == 0) goto L44
            goto L4f
        L44:
            int r9 = r6 + 1
            org.mortbay.xml.XmlParser$Node r8 = (org.mortbay.xml.XmlParser.Node) r8
            java.lang.Object r8 = r10.m71683n(r11, r8)
            r4[r6] = r8
            r6 = r9
        L4f:
            int r7 = r7 + 1
            goto L39
        L52:
            boolean r6 = org.mortbay.log.Log.isDebugEnabled()
            if (r6 == 0) goto L6c
            java.lang.StringBuffer r6 = new java.lang.StringBuffer
            r6.<init>()
            java.lang.String r7 = "XML new "
            r6.append(r7)
            r6.append(r0)
            java.lang.String r6 = r6.toString()
            org.mortbay.log.Log.debug(r6)
        L6c:
            java.lang.reflect.Constructor[] r0 = r0.getConstructors()
            r6 = r3
        L71:
            if (r0 == 0) goto La8
            int r7 = r0.length
            if (r6 >= r7) goto La8
            r7 = r0[r6]
            java.lang.Class[] r7 = r7.getParameterTypes()
            int r7 = r7.length
            if (r7 == r5) goto L80
            goto La5
        L80:
            r7 = r0[r6]     // Catch: java.lang.IllegalArgumentException -> L88 java.lang.InstantiationException -> L8d java.lang.IllegalAccessException -> L92
            java.lang.Object r7 = r7.newInstance(r4)     // Catch: java.lang.IllegalArgumentException -> L88 java.lang.InstantiationException -> L8d java.lang.IllegalAccessException -> L92
            r8 = 1
            goto L98
        L88:
            r7 = move-exception
            org.mortbay.log.Log.ignore(r7)
            goto L96
        L8d:
            r7 = move-exception
            org.mortbay.log.Log.ignore(r7)
            goto L96
        L92:
            r7 = move-exception
            org.mortbay.log.Log.ignore(r7)
        L96:
            r7 = 0
            r8 = r3
        L98:
            if (r8 == 0) goto La5
            if (r1 == 0) goto La1
            java.util.Map r11 = r10.f115461b
            r11.put(r1, r7)
        La1:
            r10.m71672b(r7, r12, r2)
            return r7
        La5:
            int r6 = r6 + 1
            goto L71
        La8:
            java.lang.IllegalStateException r10 = new java.lang.IllegalStateException
            java.lang.StringBuffer r0 = new java.lang.StringBuffer
            r0.<init>()
            java.lang.String r1 = "No Constructor: "
            r0.append(r1)
            r0.append(r12)
            java.lang.String r12 = " on "
            r0.append(r12)
            r0.append(r11)
            java.lang.String r11 = r0.toString()
            r10.<init>(r11)
            throw r10
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mortbay.xml.XmlConfiguration.m71677h(java.lang.Object, org.mortbay.xml.XmlParser$Node):java.lang.Object");
    }

    /* renamed from: i */
    public final Class m71678i(XmlParser.Node node) throws ClassNotFoundException {
        String attribute = node.getAttribute("class");
        if (attribute == null) {
            return null;
        }
        Class cls = f115455q;
        if (cls == null) {
            cls = class$("org.mortbay.xml.XmlConfiguration");
            f115455q = cls;
        }
        return Loader.loadClass(cls, attribute, true);
    }

    /* renamed from: j */
    public final Object m71679j(Object obj, XmlParser.Node node) throws Exception {
        String attribute = node.getAttribute("id");
        String attribute2 = node.getAttribute("name");
        Object attribute3 = node.getAttribute("default");
        Map map = this.f115462c;
        if (map != null && map.containsKey(attribute2)) {
            attribute3 = this.f115462c.get(attribute2);
        } else if (attribute3 == null) {
            attribute3 = null;
        }
        if (attribute != null) {
            this.f115461b.put(attribute, attribute3);
        }
        if (attribute3 != null) {
            m71672b(attribute3, node, 0);
        }
        return attribute3;
    }

    /* renamed from: k */
    public final void m71680k(Object obj, XmlParser.Node node) throws Exception {
        if (!(obj instanceof Map)) {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("Object for put is not a Map: ");
            stringBuffer.append(obj);
            throw new IllegalArgumentException(stringBuffer.toString());
        }
        String attribute = node.getAttribute("name");
        Object m71683n = m71683n(obj, node);
        ((Map) obj).put(attribute, m71683n);
        if (Log.isDebugEnabled()) {
            StringBuffer stringBuffer2 = new StringBuffer();
            stringBuffer2.append("XML ");
            stringBuffer2.append(obj);
            stringBuffer2.append(".put(");
            stringBuffer2.append(attribute);
            stringBuffer2.append(",");
            stringBuffer2.append(m71683n);
            stringBuffer2.append(MotionUtils.f31762d);
            Log.debug(stringBuffer2.toString());
        }
    }

    /* renamed from: l */
    public final Object m71681l(Object obj, XmlParser.Node node) throws Exception {
        String attribute = node.getAttribute("id");
        Object obj2 = this.f115461b.get(attribute);
        if (obj2 != null) {
            m71672b(obj2, node, 0);
            return obj2;
        }
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("No object for id=");
        stringBuffer.append(attribute);
        throw new IllegalStateException(stringBuffer.toString());
    }

    /* JADX WARN: Removed duplicated region for block: B:33:0x00de A[Catch: NoSuchFieldException -> 0x00e2, TRY_LEAVE, TryCatch #4 {NoSuchFieldException -> 0x00e2, blocks: (B:31:0x00d0, B:33:0x00de), top: B:30:0x00d0 }] */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00ed  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x0119 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* renamed from: m */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m71682m(java.lang.Object r13, org.mortbay.xml.XmlParser.Node r14) throws java.lang.Exception {
        /*
            Method dump skipped, instructions count: 378
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mortbay.xml.XmlConfiguration.m71682m(java.lang.Object, org.mortbay.xml.XmlParser$Node):void");
    }

    /* renamed from: n */
    public final Object m71683n(Object obj, XmlParser.Node node) throws Exception {
        Object stringBuffer;
        String attribute = node.getAttribute("type");
        String attribute2 = node.getAttribute("ref");
        if (attribute2 != null) {
            stringBuffer = this.f115461b.get(attribute2);
        } else {
            if (node.size() == 0) {
                if ("String".equals(attribute)) {
                    return "";
                }
                return null;
            }
            int size = node.size() - 1;
            int i = 0;
            if (attribute == null || !"String".equals(attribute)) {
                while (i <= size) {
                    Object obj2 = node.get(i);
                    if (!(obj2 instanceof String) || ((String) obj2).trim().length() > 0) {
                        break;
                    }
                    i++;
                }
                while (i < size) {
                    Object obj3 = node.get(size);
                    if (!(obj3 instanceof String) || ((String) obj3).trim().length() > 0) {
                        break;
                    }
                    size--;
                }
                if (i > size) {
                    return null;
                }
            }
            if (i == size) {
                stringBuffer = m71674e(obj, node.get(i));
            } else {
                StringBuffer stringBuffer2 = new StringBuffer();
                synchronized (stringBuffer2) {
                    while (i <= size) {
                        stringBuffer2.append(m71674e(obj, node.get(i)));
                        i++;
                    }
                    stringBuffer = stringBuffer2.toString();
                }
            }
        }
        if (stringBuffer == null) {
            if ("String".equals(attribute)) {
                return "";
            }
            return null;
        }
        if (attribute == null) {
            return stringBuffer instanceof String ? ((String) stringBuffer).trim() : stringBuffer;
        }
        if ("String".equals(attribute) || "java.lang.String".equals(attribute)) {
            return stringBuffer.toString();
        }
        Class fromName = TypeUtil.fromName(attribute);
        if (fromName != null) {
            return TypeUtil.valueOf(fromName, stringBuffer.toString());
        }
        if (ShapeLinkType.LINK_URL.equals(attribute) || "java.net.URL".equals(attribute)) {
            if (stringBuffer instanceof URL) {
                return stringBuffer;
            }
            try {
                return new URL(stringBuffer.toString());
            } catch (MalformedURLException e) {
                throw new InvocationTargetException(e);
            }
        }
        if (!"InetAddress".equals(attribute) && !"java.net.InetAddress".equals(attribute)) {
            StringBuffer stringBuffer3 = new StringBuffer();
            stringBuffer3.append("Unknown type ");
            stringBuffer3.append(attribute);
            throw new IllegalStateException(stringBuffer3.toString());
        }
        if (stringBuffer instanceof InetAddress) {
            return stringBuffer;
        }
        try {
            return InetAddress.getByName(stringBuffer.toString());
        } catch (UnknownHostException e2) {
            throw new InvocationTargetException(e2);
        }
    }

    public void setIdMap(Map map) {
        this.f115461b = map;
    }

    public void setProperties(Map map) {
        this.f115462c = map;
    }

    public Object configure() throws Exception {
        Class m71678i = m71678i(this.f115460a);
        String attribute = this.f115460a.getAttribute("id");
        Object obj = attribute == null ? null : this.f115461b.get(attribute);
        if (obj == null && m71678i != null) {
            obj = m71678i.newInstance();
        }
        if (m71678i != null && !m71678i.isInstance(obj)) {
            throw new ClassCastException(m71678i.toString());
        }
        m71672b(obj, this.f115460a, 0);
        return obj;
    }

    public XmlConfiguration(String str) throws SAXException, IOException {
        m71670d();
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("<?xml version=\"1.0\"  encoding=\"ISO-8859-1\"?>\n<!DOCTYPE Configure PUBLIC \"-//Mort Bay Consulting//DTD Configure 1.2//EN\" \"http://jetty.mortbay.org/configure_1_2.dtd\">");
        stringBuffer.append(str);
        InputSource inputSource = new InputSource(new StringReader(stringBuffer.toString()));
        synchronized (f115445g) {
            this.f115460a = f115445g.parse(inputSource);
        }
    }

    public XmlConfiguration(InputStream inputStream) throws SAXException, IOException {
        m71670d();
        InputSource inputSource = new InputSource(inputStream);
        synchronized (f115445g) {
            this.f115460a = f115445g.parse(inputSource);
        }
    }
}
