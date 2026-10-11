package org.jsoup.nodes;

import java.io.IOException;
import java.util.AbstractMap;
import java.util.AbstractSet;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.jsoup.SerializationException;
import org.jsoup.helper.Validate;
import org.jsoup.internal.Normalizer;
import org.jsoup.internal.StringUtil;
import org.jsoup.nodes.Document;
import org.jsoup.parser.ParseSettings;

/* loaded from: classes13.dex */
public class Attributes implements Cloneable, Iterable<Attribute> {
    protected static final String dataPrefix = "data-";

    /* renamed from: h */
    public static final char f114043h = '/';

    /* renamed from: i */
    public static final int f114044i = 2;

    /* renamed from: j */
    public static final int f114045j = 2;

    /* renamed from: k */
    public static final String[] f114046k = new String[0];

    /* renamed from: l */
    public static final int f114047l = -1;

    /* renamed from: m */
    public static final String f114048m = "";

    /* renamed from: e */
    public int f114049e = 0;

    /* renamed from: f */
    public String[] f114050f;

    /* renamed from: g */
    public String[] f114051g;

    /* renamed from: org.jsoup.nodes.Attributes$a */
    /* loaded from: classes13.dex */
    public static class C20248a extends AbstractMap<String, String> {

        /* renamed from: e */
        public final Attributes f114052e;

        /* renamed from: org.jsoup.nodes.Attributes$a$a */
        /* loaded from: classes13.dex */
        public class a implements Iterator<Map.Entry<String, String>> {

            /* renamed from: e */
            public Iterator<Attribute> f114053e;

            /* renamed from: f */
            public Attribute f114054f;

            public a() {
                this.f114053e = C20248a.this.f114052e.iterator();
            }

            @Override // java.util.Iterator
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public Map.Entry<String, String> next() {
                return new Attribute(this.f114054f.getKey().substring(5), this.f114054f.getValue());
            }

            @Override // java.util.Iterator
            public boolean hasNext() {
                while (this.f114053e.hasNext()) {
                    Attribute next = this.f114053e.next();
                    this.f114054f = next;
                    if (next.isDataAttribute()) {
                        return true;
                    }
                }
                return false;
            }

            @Override // java.util.Iterator
            public void remove() {
                C20248a.this.f114052e.remove(this.f114054f.getKey());
            }

            public /* synthetic */ a(C20248a c20248a, C20252a c20252a) {
                this();
            }
        }

        /* renamed from: org.jsoup.nodes.Attributes$a$b */
        /* loaded from: classes13.dex */
        public class b extends AbstractSet<Map.Entry<String, String>> {
            public b() {
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
            public Iterator<Map.Entry<String, String>> iterator() {
                return new a(C20248a.this, null);
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
            public int size() {
                a aVar = new a(C20248a.this, null);
                int i = 0;
                while (aVar.hasNext()) {
                    i++;
                }
                return i;
            }

            public /* synthetic */ b(C20248a c20248a, C20252a c20252a) {
                this();
            }
        }

        public C20248a(Attributes attributes) {
            this.f114052e = attributes;
        }

        @Override // java.util.AbstractMap, java.util.Map
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public String put(String str, String str2) {
            String m71102i = Attributes.m71102i(str);
            String str3 = this.f114052e.hasKey(m71102i) ? this.f114052e.get(m71102i) : null;
            this.f114052e.put(m71102i, str2);
            return str3;
        }

        @Override // java.util.AbstractMap, java.util.Map
        public Set<Map.Entry<String, String>> entrySet() {
            return new b(this, null);
        }

        public /* synthetic */ C20248a(Attributes attributes, C20252a c20252a) {
            this(attributes);
        }
    }

    public Attributes() {
        String[] strArr = f114046k;
        this.f114050f = strArr;
        this.f114051g = strArr;
    }

    /* renamed from: c */
    public static String[] m71097c(String[] strArr, int i) {
        String[] strArr2 = new String[i];
        System.arraycopy(strArr, 0, strArr2, 0, Math.min(strArr.length, i));
        return strArr2;
    }

    /* renamed from: i */
    public static String m71102i(String str) {
        return dataPrefix + str;
    }

    /* renamed from: l */
    public static String m71103l(String str) {
        return str == null ? "" : str;
    }

    /* renamed from: o */
    public static String m71104o(String str) {
        return '/' + str;
    }

    /* renamed from: a */
    public final int m71105a(String str) {
        Validate.notNull(str);
        for (int i = 0; i < this.f114049e; i++) {
            if (str.equalsIgnoreCase(this.f114050f[i])) {
                return i;
            }
        }
        return -1;
    }

    public Attributes add(String str, String str2) {
        m71106b(this.f114049e + 1);
        String[] strArr = this.f114050f;
        int i = this.f114049e;
        strArr[i] = str;
        this.f114051g[i] = str2;
        this.f114049e = i + 1;
        return this;
    }

    public void addAll(Attributes attributes) {
        if (attributes.size() == 0) {
            return;
        }
        m71106b(this.f114049e + attributes.f114049e);
        Iterator<Attribute> it2 = attributes.iterator();
        while (it2.hasNext()) {
            put(it2.next());
        }
    }

    public List<Attribute> asList() {
        ArrayList arrayList = new ArrayList(this.f114049e);
        for (int i = 0; i < this.f114049e; i++) {
            if (!m71108k(this.f114050f[i])) {
                arrayList.add(new Attribute(this.f114050f[i], this.f114051g[i], this));
            }
        }
        return Collections.unmodifiableList(arrayList);
    }

    /* renamed from: b */
    public final void m71106b(int i) {
        Validate.isTrue(i >= this.f114049e);
        String[] strArr = this.f114050f;
        int length = strArr.length;
        if (length >= i) {
            return;
        }
        int i2 = length >= 2 ? 2 * this.f114049e : 2;
        if (i <= i2) {
            i = i2;
        }
        this.f114050f = m71097c(strArr, i);
        this.f114051g = m71097c(this.f114051g, i);
    }

    public Map<String, String> dataset() {
        return new C20248a(this, null);
    }

    public int deduplicate(ParseSettings parseSettings) {
        String str;
        int i = 0;
        if (isEmpty()) {
            return 0;
        }
        boolean preserveAttributeCase = parseSettings.preserveAttributeCase();
        int i2 = 0;
        while (i < this.f114050f.length) {
            int i3 = i + 1;
            int i4 = i3;
            while (true) {
                String[] strArr = this.f114050f;
                if (i4 < strArr.length && (str = strArr[i4]) != null) {
                    if (!preserveAttributeCase || !strArr[i].equals(str)) {
                        if (!preserveAttributeCase) {
                            String[] strArr2 = this.f114050f;
                            if (!strArr2[i].equalsIgnoreCase(strArr2[i4])) {
                            }
                        }
                        i4++;
                    }
                    i2++;
                    m71107j(i4);
                    i4--;
                    i4++;
                }
            }
            i = i3;
        }
        return i2;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        Attributes attributes = (Attributes) obj;
        if (this.f114049e == attributes.f114049e && Arrays.equals(this.f114050f, attributes.f114050f)) {
            return Arrays.equals(this.f114051g, attributes.f114051g);
        }
        return false;
    }

    public String get(String str) {
        int m71110n = m71110n(str);
        return m71110n == -1 ? "" : m71103l(this.f114051g[m71110n]);
    }

    public String getIgnoreCase(String str) {
        int m71105a = m71105a(str);
        return m71105a == -1 ? "" : m71103l(this.f114051g[m71105a]);
    }

    public boolean hasDeclaredValueForKey(String str) {
        int m71110n = m71110n(str);
        return (m71110n == -1 || this.f114051g[m71110n] == null) ? false : true;
    }

    public boolean hasDeclaredValueForKeyIgnoreCase(String str) {
        int m71105a = m71105a(str);
        return (m71105a == -1 || this.f114051g[m71105a] == null) ? false : true;
    }

    public boolean hasKey(String str) {
        return m71110n(str) != -1;
    }

    public boolean hasKeyIgnoreCase(String str) {
        return m71105a(str) != -1;
    }

    public int hashCode() {
        return (((this.f114049e * 31) + Arrays.hashCode(this.f114050f)) * 31) + Arrays.hashCode(this.f114051g);
    }

    public String html() {
        StringBuilder borrowBuilder = StringUtil.borrowBuilder();
        try {
            m71109m(borrowBuilder, new Document("").outputSettings());
            return StringUtil.releaseBuilder(borrowBuilder);
        } catch (IOException e) {
            throw new SerializationException(e);
        }
    }

    public boolean isEmpty() {
        return this.f114049e == 0;
    }

    @Override // java.lang.Iterable
    public Iterator<Attribute> iterator() {
        return new C20252a(this);
    }

    /* renamed from: j */
    public final void m71107j(int i) {
        Validate.isFalse(i >= this.f114049e);
        int i2 = (this.f114049e - i) - 1;
        if (i2 > 0) {
            String[] strArr = this.f114050f;
            int i3 = i + 1;
            System.arraycopy(strArr, i3, strArr, i, i2);
            String[] strArr2 = this.f114051g;
            System.arraycopy(strArr2, i3, strArr2, i, i2);
        }
        int i4 = this.f114049e - 1;
        this.f114049e = i4;
        this.f114050f[i4] = null;
        this.f114051g[i4] = null;
    }

    /* renamed from: k */
    public final boolean m71108k(String str) {
        return str != null && str.length() > 1 && str.charAt(0) == '/';
    }

    /* renamed from: m */
    public final void m71109m(Appendable appendable, Document.OutputSettings outputSettings) throws IOException {
        int i = this.f114049e;
        for (int i2 = 0; i2 < i; i2++) {
            if (!m71108k(this.f114050f[i2])) {
                String str = this.f114050f[i2];
                String str2 = this.f114051g[i2];
                appendable.append(' ').append(str);
                if (!Attribute.shouldCollapseAttribute(str, str2, outputSettings)) {
                    appendable.append("=\"");
                    if (str2 == null) {
                        str2 = "";
                    }
                    Entities.m71147e(appendable, str2, outputSettings, true, false, false);
                    appendable.append('\"');
                }
            }
        }
    }

    /* renamed from: n */
    public int m71110n(String str) {
        Validate.notNull(str);
        for (int i = 0; i < this.f114049e; i++) {
            if (str.equals(this.f114050f[i])) {
                return i;
            }
        }
        return -1;
    }

    public void normalize() {
        for (int i = 0; i < this.f114049e; i++) {
            String[] strArr = this.f114050f;
            strArr[i] = Normalizer.lowerCase(strArr[i]);
        }
    }

    /* renamed from: p */
    public void m71111p(String str, String str2) {
        int m71105a = m71105a(str);
        if (m71105a == -1) {
            add(str, str2);
            return;
        }
        this.f114051g[m71105a] = str2;
        if (this.f114050f[m71105a].equals(str)) {
            return;
        }
        this.f114050f[m71105a] = str;
    }

    public Attributes put(String str, String str2) {
        Validate.notNull(str);
        int m71110n = m71110n(str);
        if (m71110n != -1) {
            this.f114051g[m71110n] = str2;
        } else {
            add(str, str2);
        }
        return this;
    }

    public void remove(String str) {
        int m71110n = m71110n(str);
        if (m71110n != -1) {
            m71107j(m71110n);
        }
    }

    public void removeIgnoreCase(String str) {
        int m71105a = m71105a(str);
        if (m71105a != -1) {
            m71107j(m71105a);
        }
    }

    public int size() {
        int i = 0;
        for (int i2 = 0; i2 < this.f114049e; i2++) {
            if (!m71108k(this.f114050f[i2])) {
                i++;
            }
        }
        return i;
    }

    public String toString() {
        return html();
    }

    public Attributes clone() {
        try {
            Attributes attributes = (Attributes) super.clone();
            attributes.f114049e = this.f114049e;
            this.f114050f = m71097c(this.f114050f, this.f114049e);
            this.f114051g = m71097c(this.f114051g, this.f114049e);
            return attributes;
        } catch (CloneNotSupportedException e) {
            throw new RuntimeException(e);
        }
    }

    public boolean hasKey(Attributes attributes) {
        int i = attributes.f114049e;
        if (i == 0) {
            return true;
        }
        if (this.f114049e < i) {
            return false;
        }
        for (int i2 = 0; i2 < attributes.f114049e; i2++) {
            if (!hasKey(attributes.f114050f[i2])) {
                return false;
            }
        }
        return true;
    }

    public Attributes put(String str, boolean z) {
        if (z) {
            m71111p(str, null);
        } else {
            remove(str);
        }
        return this;
    }

    public Attributes put(Attribute attribute) {
        Validate.notNull(attribute);
        put(attribute.getKey(), attribute.getValue());
        attribute.f114042g = this;
        return this;
    }
}
