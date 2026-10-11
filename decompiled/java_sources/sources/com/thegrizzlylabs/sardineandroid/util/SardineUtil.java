package com.thegrizzlylabs.sardineandroid.util;

import com.thegrizzlylabs.sardineandroid.model.Prop;
import com.thegrizzlylabs.sardineandroid.model.Property;
import com.thegrizzlylabs.sardineandroid.model.Resourcetype;
import java.io.IOException;
import java.io.InputStream;
import java.io.StringWriter;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;
import javax.xml.namespace.QName;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;
import org.simpleframework.xml.Serializer;
import org.simpleframework.xml.convert.Registry;
import org.simpleframework.xml.convert.RegistryStrategy;
import org.simpleframework.xml.core.Persister;
import org.simpleframework.xml.stream.Format;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.xml.sax.SAXException;

/* loaded from: classes10.dex */
public final class SardineUtil {
    public static final String CUSTOM_NAMESPACE_PREFIX = "s";
    public static final String CUSTOM_NAMESPACE_URI = "SAR:";
    public static final String DEFAULT_NAMESPACE_PREFIX = "D";
    public static final String DEFAULT_NAMESPACE_URI = "DAV:";

    /* renamed from: a */
    public static final String[] f93869a;

    /* renamed from: b */
    public static final DocumentBuilderFactory f93870b = DocumentBuilderFactory.newInstance();

    /* renamed from: c */
    public static final List<ThreadLocal<SimpleDateFormat>> f93871c;

    static {
        String[] strArr = {"yyyy-MM-dd'T'HH:mm:ss'Z'", "EEE, dd MMM yyyy HH:mm:ss zzz", "yyyy-MM-dd'T'HH:mm:ss.SSS'Z'", "yyyy-MM-dd'T'HH:mm:ssZ", "EEE MMM dd HH:mm:ss zzz yyyy", "EEEEEE, dd-MMM-yy HH:mm:ss zzz", "EEE MMMM d HH:mm:ss yyyy"};
        f93869a = strArr;
        ArrayList arrayList = new ArrayList(strArr.length);
        for (int i = 0; i < f93869a.length; i++) {
            arrayList.add(new ThreadLocal());
        }
        f93871c = Collections.unmodifiableList(arrayList);
    }

    /* renamed from: a */
    public static Document m60291a() {
        try {
            return f93870b.newDocumentBuilder().newDocument();
        } catch (ParserConfigurationException e) {
            throw new RuntimeException(e.getMessage(), e);
        }
    }

    /* renamed from: b */
    public static Serializer m60292b() throws Exception {
        Format format = new Format("<?xml version=\"1.0\" encoding=\"utf-8\"?>");
        Registry registry = new Registry();
        Persister persister = new Persister(new RegistryStrategy(registry), format);
        registry.bind(Prop.class, new EntityWithAnyElementConverter(persister, Prop.class));
        registry.bind(Resourcetype.class, new EntityWithAnyElementConverter(persister, Resourcetype.class));
        registry.bind(Property.class, Property.PropertyConverter.class);
        return persister;
    }

    public static Element createElement(QName qName) {
        return m60291a().createElementNS(qName.getNamespaceURI(), qName.getPrefix() + ":" + qName.getLocalPart());
    }

    public static QName createQNameWithCustomNamespace(String str) {
        return new QName(CUSTOM_NAMESPACE_URI, str, "s");
    }

    public static QName createQNameWithDefaultNamespace(String str) {
        return new QName(DEFAULT_NAMESPACE_URI, str, DEFAULT_NAMESPACE_PREFIX);
    }

    public static Date parseDate(String str) {
        Date date = null;
        if (str == null) {
            return null;
        }
        int i = 0;
        while (true) {
            List<ThreadLocal<SimpleDateFormat>> list = f93871c;
            if (i >= list.size()) {
                break;
            }
            ThreadLocal<SimpleDateFormat> threadLocal = list.get(i);
            SimpleDateFormat simpleDateFormat = threadLocal.get();
            if (simpleDateFormat == null) {
                simpleDateFormat = new SimpleDateFormat(f93869a[i], Locale.US);
                simpleDateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
                threadLocal.set(simpleDateFormat);
            }
            try {
                continue;
                date = simpleDateFormat.parse(str);
                break;
            } catch (ParseException unused) {
                i++;
            }
        }
        return date;
    }

    public static Charset standardUTF8() {
        return StandardCharsets.UTF_8;
    }

    public static Map<QName, String> toQName(Map<String, String> map) {
        if (map == null) {
            return Collections.emptyMap();
        }
        HashMap hashMap = new HashMap(map.size());
        for (Map.Entry<String, String> entry : map.entrySet()) {
            hashMap.put(createQNameWithCustomNamespace(entry.getKey()), entry.getValue());
        }
        return hashMap;
    }

    public static String toXml(Object obj) {
        StringWriter stringWriter = new StringWriter();
        try {
            m60292b().write(obj, stringWriter);
            return stringWriter.toString();
        } catch (Exception e) {
            throw new RuntimeException(e.getMessage(), e);
        }
    }

    public static <T> T unmarshal(Class<? extends T> cls, InputStream inputStream) throws IOException {
        try {
            return (T) m60292b().read((Class) cls, inputStream);
        } catch (SAXException e) {
            throw new RuntimeException(e.getMessage(), e);
        } catch (Exception e2) {
            throw new IOException("Not a valid DAV response", e2);
        }
    }

    public static Element createElement(Element element, QName qName) {
        return element.getOwnerDocument().createElementNS(qName.getNamespaceURI(), qName.getPrefix() + ":" + qName.getLocalPart());
    }

    public static List<QName> toQName(List<String> list) {
        if (list == null) {
            return Collections.emptyList();
        }
        ArrayList arrayList = new ArrayList(list.size());
        Iterator<String> it2 = list.iterator();
        while (it2.hasNext()) {
            arrayList.add(createQNameWithCustomNamespace(it2.next()));
        }
        return arrayList;
    }

    public static QName toQName(Element element) {
        if (element.getNamespaceURI() == null) {
            return new QName(DEFAULT_NAMESPACE_URI, element.getLocalName(), DEFAULT_NAMESPACE_PREFIX);
        }
        if (element.getPrefix() == null) {
            return new QName(element.getNamespaceURI(), element.getLocalName());
        }
        return new QName(element.getNamespaceURI(), element.getLocalName(), element.getPrefix());
    }
}
