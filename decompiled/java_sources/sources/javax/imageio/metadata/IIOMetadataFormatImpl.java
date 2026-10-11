package javax.imageio.metadata;

import com.sun.imageio.plugins.common.StandardMetadataFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.MissingResourceException;
import java.util.ResourceBundle;
import javax.imageio.ImageTypeSpecifier;

/* loaded from: classes5.dex */
public abstract class IIOMetadataFormatImpl implements IIOMetadataFormat {
    private static IIOMetadataFormat standardFormat = null;
    public static final String standardMetadataFormatName = "javax_imageio_1.0";
    private String rootName;
    private String resourceBaseName = getClass().getName() + "Resources";
    private HashMap<String, C17704b> elementMap = new HashMap<>();

    /* renamed from: javax.imageio.metadata.IIOMetadataFormatImpl$a */
    /* loaded from: classes5.dex */
    public class C17703a {

        /* renamed from: a */
        public String f97866a;

        /* renamed from: c */
        public int f97868c;

        /* renamed from: d */
        public boolean f97869d;

        /* renamed from: f */
        public List<String> f97871f;

        /* renamed from: g */
        public String f97872g;

        /* renamed from: h */
        public String f97873h;

        /* renamed from: i */
        public int f97874i;

        /* renamed from: j */
        public int f97875j;

        /* renamed from: b */
        public int f97867b = 1;

        /* renamed from: e */
        public String f97870e = null;

        public C17703a() {
        }
    }

    /* renamed from: javax.imageio.metadata.IIOMetadataFormatImpl$b */
    /* loaded from: classes5.dex */
    public class C17704b {

        /* renamed from: a */
        public String f97877a;

        /* renamed from: b */
        public int f97878b;

        /* renamed from: c */
        public int f97879c = 0;

        /* renamed from: d */
        public int f97880d = 0;

        /* renamed from: e */
        public List<String> f97881e = new ArrayList();

        /* renamed from: f */
        public List<String> f97882f = new ArrayList();

        /* renamed from: g */
        public List<String> f97883g = new ArrayList();

        /* renamed from: h */
        public Map<String, C17703a> f97884h = new HashMap();

        /* renamed from: i */
        public C17705c<?> f97885i;

        public C17704b() {
        }
    }

    /* renamed from: javax.imageio.metadata.IIOMetadataFormatImpl$c */
    /* loaded from: classes5.dex */
    public class C17705c<T> {

        /* renamed from: a */
        public int f97887a = 0;

        /* renamed from: b */
        public Class<? extends T> f97888b = null;

        /* renamed from: c */
        public T f97889c = null;

        /* renamed from: d */
        public List<? extends T> f97890d = null;

        /* renamed from: e */
        public Comparable<? super T> f97891e = null;

        /* renamed from: f */
        public Comparable<? super T> f97892f = null;

        /* renamed from: g */
        public int f97893g = 0;

        /* renamed from: h */
        public int f97894h = 0;

        public C17705c() {
        }
    }

    public IIOMetadataFormatImpl(String str, int i) {
        if (str == null) {
            throw new IllegalArgumentException("rootName == null!");
        }
        if (i >= 0 && i <= 5 && i != 5) {
            this.rootName = str;
            C17704b c17704b = new C17704b();
            c17704b.f97877a = str;
            c17704b.f97878b = i;
            this.elementMap.put(str, c17704b);
            return;
        }
        throw new IllegalArgumentException("Invalid value for childPolicy!");
    }

    /* renamed from: a */
    public static synchronized void m61467a() {
        synchronized (IIOMetadataFormatImpl.class) {
            if (standardFormat == null) {
                standardFormat = new StandardMetadataFormat();
            }
        }
    }

    public static IIOMetadataFormat getStandardFormatInstance() {
        m61467a();
        return standardFormat;
    }

    public void addAttribute(String str, String str2, int i, boolean z, String str3) {
        C17704b m61469c = m61469c(str);
        if (str2 == null) {
            throw new IllegalArgumentException("attrName == null!");
        }
        if (i >= 0 && i <= 4) {
            C17703a c17703a = new C17703a();
            c17703a.f97866a = str2;
            c17703a.f97867b = 1;
            c17703a.f97868c = i;
            c17703a.f97869d = z;
            c17703a.f97870e = str3;
            m61469c.f97883g.add(str2);
            m61469c.f97884h.put(str2, c17703a);
            return;
        }
        throw new IllegalArgumentException("Invalid value for dataType!");
    }

    public void addBooleanAttribute(String str, String str2, boolean z, boolean z2) {
        String str3;
        ArrayList arrayList = new ArrayList();
        arrayList.add("TRUE");
        arrayList.add("FALSE");
        if (z) {
            str3 = z2 ? "TRUE" : "FALSE";
        } else {
            str3 = null;
        }
        addAttribute(str, str2, 1, true, str3, (List<String>) arrayList);
    }

    public void addChildElement(String str, String str2) {
        C17704b m61469c = m61469c(str2);
        C17704b m61469c2 = m61469c(str);
        m61469c.f97881e.add(str);
        m61469c2.f97882f.add(str2);
    }

    public void addElement(String str, String str2, int i) {
        C17704b m61469c = m61469c(str2);
        if (i >= 0 && i <= 5 && i != 5) {
            C17704b c17704b = new C17704b();
            c17704b.f97877a = str;
            c17704b.f97878b = i;
            m61469c.f97881e.add(str);
            c17704b.f97882f.add(str2);
            this.elementMap.put(str, c17704b);
            return;
        }
        throw new IllegalArgumentException("Invalid value for childPolicy!");
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <T> void addObjectValue(String str, Class<T> cls, boolean z, T t) {
        C17704b m61469c = m61469c(str);
        C17705c<?> c17705c = new C17705c<>();
        c17705c.f97887a = 1;
        c17705c.f97888b = cls;
        c17705c.f97889c = t;
        m61469c.f97885i = c17705c;
    }

    /* renamed from: b */
    public final C17703a m61468b(String str, String str2) {
        C17703a c17703a = m61469c(str).f97884h.get(str2);
        if (c17703a != null) {
            return c17703a;
        }
        throw new IllegalArgumentException("No such attribute \"" + str2 + "\"!");
    }

    /* renamed from: c */
    public final C17704b m61469c(String str) {
        return m61470d(str, true);
    }

    @Override // javax.imageio.metadata.IIOMetadataFormat
    public abstract boolean canNodeAppear(String str, ImageTypeSpecifier imageTypeSpecifier);

    /* renamed from: d */
    public final C17704b m61470d(String str, boolean z) {
        if (z && str == null) {
            throw new IllegalArgumentException("element name is null!");
        }
        C17704b c17704b = this.elementMap.get(str);
        if (!z || c17704b != null) {
            return c17704b;
        }
        throw new IllegalArgumentException("No such element: " + str);
    }

    /* renamed from: e */
    public final C17705c<?> m61471e(String str) {
        C17705c<?> c17705c = m61469c(str).f97885i;
        if (c17705c != null) {
            return c17705c;
        }
        throw new IllegalArgumentException("No object within element " + str + "!");
    }

    /* renamed from: f */
    public final String m61472f(String str, Locale locale) {
        if (locale == null) {
            locale = Locale.getDefault();
        }
        try {
            return ResourceBundle.getBundle(this.resourceBaseName, locale, getClass().getClassLoader()).getString(str);
        } catch (MissingResourceException unused) {
            return null;
        }
    }

    @Override // javax.imageio.metadata.IIOMetadataFormat
    public int getAttributeDataType(String str, String str2) {
        return m61468b(str, str2).f97868c;
    }

    @Override // javax.imageio.metadata.IIOMetadataFormat
    public String getAttributeDefaultValue(String str, String str2) {
        return m61468b(str, str2).f97870e;
    }

    @Override // javax.imageio.metadata.IIOMetadataFormat
    public String getAttributeDescription(String str, String str2, Locale locale) {
        C17704b m61469c = m61469c(str);
        if (str2 == null) {
            throw new IllegalArgumentException("attrName == null!");
        }
        if (m61469c.f97884h.get(str2) == null) {
            throw new IllegalArgumentException("No such attribute!");
        }
        return m61472f(str + "/" + str2, locale);
    }

    @Override // javax.imageio.metadata.IIOMetadataFormat
    public String[] getAttributeEnumerations(String str, String str2) {
        C17703a m61468b = m61468b(str, str2);
        if (m61468b.f97867b != 16) {
            throw new IllegalArgumentException("Attribute not an enumeration!");
        }
        List<String> list = m61468b.f97871f;
        return (String[]) list.toArray(new String[list.size()]);
    }

    @Override // javax.imageio.metadata.IIOMetadataFormat
    public int getAttributeListMaxLength(String str, String str2) {
        C17703a m61468b = m61468b(str, str2);
        if (m61468b.f97867b == 32) {
            return m61468b.f97875j;
        }
        throw new IllegalArgumentException("Attribute not a list!");
    }

    @Override // javax.imageio.metadata.IIOMetadataFormat
    public int getAttributeListMinLength(String str, String str2) {
        C17703a m61468b = m61468b(str, str2);
        if (m61468b.f97867b == 32) {
            return m61468b.f97874i;
        }
        throw new IllegalArgumentException("Attribute not a list!");
    }

    @Override // javax.imageio.metadata.IIOMetadataFormat
    public String getAttributeMaxValue(String str, String str2) {
        C17703a m61468b = m61468b(str, str2);
        int i = m61468b.f97867b;
        if (i == 2 || i == 6 || i == 10 || i == 14) {
            return m61468b.f97873h;
        }
        throw new IllegalArgumentException("Attribute not a range!");
    }

    @Override // javax.imageio.metadata.IIOMetadataFormat
    public String getAttributeMinValue(String str, String str2) {
        C17703a m61468b = m61468b(str, str2);
        int i = m61468b.f97867b;
        if (i == 2 || i == 6 || i == 10 || i == 14) {
            return m61468b.f97872g;
        }
        throw new IllegalArgumentException("Attribute not a range!");
    }

    @Override // javax.imageio.metadata.IIOMetadataFormat
    public String[] getAttributeNames(String str) {
        List<String> list = m61469c(str).f97883g;
        return (String[]) list.toArray(new String[list.size()]);
    }

    @Override // javax.imageio.metadata.IIOMetadataFormat
    public int getAttributeValueType(String str, String str2) {
        return m61468b(str, str2).f97867b;
    }

    @Override // javax.imageio.metadata.IIOMetadataFormat
    public String[] getChildNames(String str) {
        C17704b m61469c = m61469c(str);
        if (m61469c.f97878b == 0) {
            return null;
        }
        return (String[]) m61469c.f97881e.toArray(new String[0]);
    }

    @Override // javax.imageio.metadata.IIOMetadataFormat
    public int getChildPolicy(String str) {
        return m61469c(str).f97878b;
    }

    @Override // javax.imageio.metadata.IIOMetadataFormat
    public String getElementDescription(String str, Locale locale) {
        m61469c(str);
        return m61472f(str, locale);
    }

    @Override // javax.imageio.metadata.IIOMetadataFormat
    public int getElementMaxChildren(String str) {
        C17704b m61469c = m61469c(str);
        if (m61469c.f97878b == 5) {
            return m61469c.f97880d;
        }
        throw new IllegalArgumentException("Child policy not CHILD_POLICY_REPEAT!");
    }

    @Override // javax.imageio.metadata.IIOMetadataFormat
    public int getElementMinChildren(String str) {
        C17704b m61469c = m61469c(str);
        if (m61469c.f97878b == 5) {
            return m61469c.f97879c;
        }
        throw new IllegalArgumentException("Child policy not CHILD_POLICY_REPEAT!");
    }

    @Override // javax.imageio.metadata.IIOMetadataFormat
    public int getObjectArrayMaxLength(String str) {
        C17705c<?> m61471e = m61471e(str);
        if (m61471e.f97887a == 32) {
            return m61471e.f97894h;
        }
        throw new IllegalArgumentException("Not a list!");
    }

    @Override // javax.imageio.metadata.IIOMetadataFormat
    public int getObjectArrayMinLength(String str) {
        C17705c<?> m61471e = m61471e(str);
        if (m61471e.f97887a == 32) {
            return m61471e.f97893g;
        }
        throw new IllegalArgumentException("Not a list!");
    }

    @Override // javax.imageio.metadata.IIOMetadataFormat
    public Class<?> getObjectClass(String str) {
        return m61471e(str).f97888b;
    }

    @Override // javax.imageio.metadata.IIOMetadataFormat
    public Object getObjectDefaultValue(String str) {
        return m61471e(str).f97889c;
    }

    @Override // javax.imageio.metadata.IIOMetadataFormat
    public Object[] getObjectEnumerations(String str) {
        C17705c<?> m61471e = m61471e(str);
        if (m61471e.f97887a != 16) {
            throw new IllegalArgumentException("Not an enumeration!");
        }
        List<? extends Object> list = m61471e.f97890d;
        return list.toArray(new Object[list.size()]);
    }

    @Override // javax.imageio.metadata.IIOMetadataFormat
    public Comparable<?> getObjectMaxValue(String str) {
        C17705c<?> m61471e = m61471e(str);
        if ((m61471e.f97887a & 2) == 2) {
            return m61471e.f97892f;
        }
        throw new IllegalArgumentException("Not a range!");
    }

    @Override // javax.imageio.metadata.IIOMetadataFormat
    public Comparable<?> getObjectMinValue(String str) {
        C17705c<?> m61471e = m61471e(str);
        if ((m61471e.f97887a & 2) == 2) {
            return m61471e.f97891e;
        }
        throw new IllegalArgumentException("Not a range!");
    }

    @Override // javax.imageio.metadata.IIOMetadataFormat
    public int getObjectValueType(String str) {
        C17705c<?> c17705c = m61469c(str).f97885i;
        if (c17705c == null) {
            return 0;
        }
        return c17705c.f97887a;
    }

    public String getResourceBaseName() {
        return this.resourceBaseName;
    }

    @Override // javax.imageio.metadata.IIOMetadataFormat
    public String getRootName() {
        return this.rootName;
    }

    @Override // javax.imageio.metadata.IIOMetadataFormat
    public boolean isAttributeRequired(String str, String str2) {
        return m61468b(str, str2).f97869d;
    }

    public void removeAttribute(String str, String str2) {
        C17704b m61469c = m61469c(str);
        m61469c.f97883g.remove(str2);
        m61469c.f97884h.remove(str2);
    }

    public void removeElement(String str) {
        C17704b m61470d = m61470d(str, false);
        if (m61470d != null) {
            Iterator<String> it2 = m61470d.f97882f.iterator();
            while (it2.hasNext()) {
                C17704b m61470d2 = m61470d(it2.next(), false);
                if (m61470d2 != null) {
                    m61470d2.f97881e.remove(str);
                }
            }
            this.elementMap.remove(str);
        }
    }

    public void removeObjectValue(String str) {
        m61469c(str).f97885i = null;
    }

    public void setResourceBaseName(String str) {
        if (str == null) {
            throw new IllegalArgumentException("resourceBaseName == null!");
        }
        this.resourceBaseName = str;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <T> void addObjectValue(String str, Class<T> cls, boolean z, T t, List<? extends T> list) {
        C17704b m61469c = m61469c(str);
        if (list != null) {
            if (list.size() != 0) {
                for (T t2 : list) {
                    if (t2 != null) {
                        if (!cls.isInstance(t2)) {
                            throw new IllegalArgumentException("enumeratedValues contains a value not of class classType!");
                        }
                    } else {
                        throw new IllegalArgumentException("enumeratedValues contains a null!");
                    }
                }
                C17705c<?> c17705c = new C17705c<>();
                c17705c.f97887a = 16;
                c17705c.f97888b = cls;
                c17705c.f97889c = t;
                c17705c.f97890d = list;
                m61469c.f97885i = c17705c;
                return;
            }
            throw new IllegalArgumentException("enumeratedValues is empty!");
        }
        throw new IllegalArgumentException("enumeratedValues == null!");
    }

    public void addElement(String str, String str2, int i, int i2) {
        C17704b m61469c = m61469c(str2);
        if (i < 0) {
            throw new IllegalArgumentException("minChildren < 0!");
        }
        if (i <= i2) {
            C17704b c17704b = new C17704b();
            c17704b.f97877a = str;
            c17704b.f97878b = 5;
            c17704b.f97879c = i;
            c17704b.f97880d = i2;
            m61469c.f97881e.add(str);
            c17704b.f97882f.add(str2);
            this.elementMap.put(str, c17704b);
            return;
        }
        throw new IllegalArgumentException("minChildren > maxChildren!");
    }

    public IIOMetadataFormatImpl(String str, int i, int i2) {
        if (str == null) {
            throw new IllegalArgumentException("rootName == null!");
        }
        if (i < 0) {
            throw new IllegalArgumentException("minChildren < 0!");
        }
        if (i <= i2) {
            C17704b c17704b = new C17704b();
            c17704b.f97877a = str;
            c17704b.f97878b = 5;
            c17704b.f97879c = i;
            c17704b.f97880d = i2;
            this.rootName = str;
            this.elementMap.put(str, c17704b);
            return;
        }
        throw new IllegalArgumentException("minChildren > maxChildren!");
    }

    public void addAttribute(String str, String str2, int i, boolean z, String str3, List<String> list) {
        C17704b m61469c = m61469c(str);
        if (str2 == null) {
            throw new IllegalArgumentException("attrName == null!");
        }
        if (i < 0 || i > 4) {
            throw new IllegalArgumentException("Invalid value for dataType!");
        }
        if (list != null) {
            if (list.size() != 0) {
                for (String str4 : list) {
                    if (str4 != null) {
                        if (!(str4 instanceof String)) {
                            throw new IllegalArgumentException("enumeratedValues contains a non-String value!");
                        }
                    } else {
                        throw new IllegalArgumentException("enumeratedValues contains a null!");
                    }
                }
                C17703a c17703a = new C17703a();
                c17703a.f97866a = str2;
                c17703a.f97867b = 16;
                c17703a.f97868c = i;
                c17703a.f97869d = z;
                c17703a.f97870e = str3;
                c17703a.f97871f = list;
                m61469c.f97883g.add(str2);
                m61469c.f97884h.put(str2, c17703a);
                return;
            }
            throw new IllegalArgumentException("enumeratedValues is empty!");
        }
        throw new IllegalArgumentException("enumeratedValues == null!");
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <T extends Comparable<? super T>> void addObjectValue(String str, Class<T> cls, T t, Comparable<? super T> comparable, Comparable<? super T> comparable2, boolean z, boolean z2) {
        C17704b m61469c = m61469c(str);
        C17705c<?> c17705c = new C17705c<>();
        c17705c.f97887a = 2;
        if (z) {
            c17705c.f97887a = 2 | 4;
        }
        if (z2) {
            c17705c.f97887a |= 8;
        }
        c17705c.f97888b = cls;
        c17705c.f97889c = t;
        c17705c.f97891e = comparable;
        c17705c.f97892f = comparable2;
        m61469c.f97885i = c17705c;
    }

    public void addAttribute(String str, String str2, int i, boolean z, String str3, String str4, String str5, boolean z2, boolean z3) {
        C17704b m61469c = m61469c(str);
        if (str2 == null) {
            throw new IllegalArgumentException("attrName == null!");
        }
        if (i >= 0 && i <= 4) {
            C17703a c17703a = new C17703a();
            c17703a.f97866a = str2;
            c17703a.f97867b = 2;
            if (z2) {
                c17703a.f97867b = 2 | 4;
            }
            if (z3) {
                c17703a.f97867b |= 8;
            }
            c17703a.f97868c = i;
            c17703a.f97869d = z;
            c17703a.f97870e = str3;
            c17703a.f97872g = str4;
            c17703a.f97873h = str5;
            m61469c.f97883g.add(str2);
            m61469c.f97884h.put(str2, c17703a);
            return;
        }
        throw new IllegalArgumentException("Invalid value for dataType!");
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void addObjectValue(String str, Class<?> cls, int i, int i2) {
        C17704b m61469c = m61469c(str);
        C17705c<?> c17705c = new C17705c<>();
        c17705c.f97887a = 32;
        c17705c.f97888b = cls;
        c17705c.f97893g = i;
        c17705c.f97894h = i2;
        m61469c.f97885i = c17705c;
    }

    public void addAttribute(String str, String str2, int i, boolean z, int i2, int i3) {
        C17704b m61469c = m61469c(str);
        if (str2 == null) {
            throw new IllegalArgumentException("attrName == null!");
        }
        if (i < 0 || i > 4) {
            throw new IllegalArgumentException("Invalid value for dataType!");
        }
        if (i2 >= 0 && i2 <= i3) {
            C17703a c17703a = new C17703a();
            c17703a.f97866a = str2;
            c17703a.f97867b = 32;
            c17703a.f97868c = i;
            c17703a.f97869d = z;
            c17703a.f97874i = i2;
            c17703a.f97875j = i3;
            m61469c.f97883g.add(str2);
            m61469c.f97884h.put(str2, c17703a);
            return;
        }
        throw new IllegalArgumentException("Invalid list bounds!");
    }
}
