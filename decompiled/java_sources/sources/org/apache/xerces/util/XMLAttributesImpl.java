package org.apache.xerces.util;

import com.sunia.HTREnginev2.f7l;
import org.apache.xerces.xni.Augmentations;
import org.apache.xerces.xni.QName;
import org.apache.xerces.xni.XMLAttributes;

/* loaded from: classes13.dex */
public class XMLAttributesImpl implements XMLAttributes {
    protected static final int MAX_HASH_COLLISIONS = 40;
    protected static final int MULTIPLIERS_MASK = 31;
    protected static final int MULTIPLIERS_SIZE = 32;
    protected static final int SIZE_LIMIT = 20;
    protected static final int TABLE_SIZE = 101;
    protected C20087a[] fAttributeTableView;
    protected int[] fAttributeTableViewChainState;
    protected C20087a[] fAttributes;
    protected int[] fHashMultipliers;
    protected boolean fIsTableViewConsistent;
    protected int fLargeCount;
    protected int fLength;
    protected boolean fNamespaces;
    protected int fTableViewBuckets;

    /* renamed from: org.apache.xerces.util.XMLAttributesImpl$a */
    /* loaded from: classes13.dex */
    public static class C20087a {

        /* renamed from: b */
        public String f113520b;

        /* renamed from: c */
        public String f113521c;

        /* renamed from: d */
        public String f113522d;

        /* renamed from: e */
        public boolean f113523e;

        /* renamed from: g */
        public C20087a f113525g;

        /* renamed from: a */
        public final QName f113519a = new QName();

        /* renamed from: f */
        public Augmentations f113524f = new AugmentationsImpl();
    }

    public XMLAttributesImpl() {
        this(101);
    }

    /* renamed from: a */
    public final QName m70590a() {
        this.fIsTableViewConsistent = false;
        prepareTableView();
        int i = this.fLength;
        C20087a[] c20087aArr = this.fAttributes;
        C20087a[] c20087aArr2 = this.fAttributeTableView;
        int[] iArr = this.fAttributeTableViewChainState;
        int i2 = this.fLargeCount;
        for (int i3 = 0; i3 < i; i3++) {
            C20087a c20087a = c20087aArr[i3];
            QName qName = c20087a.f113519a;
            int tableViewBucket = getTableViewBucket(qName.localpart, qName.uri);
            if (iArr[tableViewBucket] != i2) {
                iArr[tableViewBucket] = i2;
                c20087a.f113525g = null;
                c20087aArr2[tableViewBucket] = c20087a;
            } else {
                C20087a c20087a2 = c20087aArr2[tableViewBucket];
                int i4 = 0;
                while (c20087a2 != null) {
                    QName qName2 = c20087a2.f113519a;
                    String str = qName2.localpart;
                    QName qName3 = c20087a.f113519a;
                    if (str == qName3.localpart && qName2.uri == qName3.uri) {
                        return qName3;
                    }
                    c20087a2 = c20087a2.f113525g;
                    i4++;
                }
                if (i4 >= 40) {
                    m70599j(i3 + 1);
                    i2 = this.fLargeCount;
                } else {
                    c20087a.f113525g = c20087aArr2[tableViewBucket];
                    c20087aArr2[tableViewBucket] = c20087a;
                }
            }
        }
        return null;
    }

    @Override // org.apache.xerces.xni.XMLAttributes
    public int addAttribute(QName qName, String str, String str2) {
        int indexFast;
        int i;
        int i2;
        if (this.fLength < 20) {
            String str3 = qName.uri;
            indexFast = (str3 == null || str3.length() == 0) ? getIndexFast(qName.rawname) : getIndexFast(qName.uri, qName.localpart);
            if (indexFast == -1) {
                indexFast = this.fLength;
                this.fLength = indexFast + 1;
                C20087a[] c20087aArr = this.fAttributes;
                if (indexFast == c20087aArr.length) {
                    int length = c20087aArr.length + 4;
                    C20087a[] c20087aArr2 = new C20087a[length];
                    System.arraycopy(c20087aArr, 0, c20087aArr2, 0, c20087aArr.length);
                    for (int length2 = this.fAttributes.length; length2 < length; length2++) {
                        c20087aArr2[length2] = new C20087a();
                    }
                    this.fAttributes = c20087aArr2;
                }
            }
        } else {
            String str4 = qName.uri;
            if (str4 == null || str4.length() == 0 || (indexFast = getIndexFast(qName.uri, qName.localpart)) == -1) {
                if (!this.fIsTableViewConsistent || (i2 = this.fLength) == 20 || (i2 > 20 && i2 > this.fTableViewBuckets)) {
                    prepareAndPopulateTableView();
                    this.fIsTableViewConsistent = true;
                }
                int tableViewBucket = getTableViewBucket(qName.rawname);
                if (this.fAttributeTableViewChainState[tableViewBucket] != this.fLargeCount) {
                    i = this.fLength;
                    this.fLength = i + 1;
                    C20087a[] c20087aArr3 = this.fAttributes;
                    if (i == c20087aArr3.length) {
                        int length3 = c20087aArr3.length << 1;
                        C20087a[] c20087aArr4 = new C20087a[length3];
                        System.arraycopy(c20087aArr3, 0, c20087aArr4, 0, c20087aArr3.length);
                        for (int length4 = this.fAttributes.length; length4 < length3; length4++) {
                            c20087aArr4[length4] = new C20087a();
                        }
                        this.fAttributes = c20087aArr4;
                    }
                    this.fAttributeTableViewChainState[tableViewBucket] = this.fLargeCount;
                    C20087a c20087a = this.fAttributes[i];
                    c20087a.f113525g = null;
                    this.fAttributeTableView[tableViewBucket] = c20087a;
                } else {
                    C20087a c20087a2 = this.fAttributeTableView[tableViewBucket];
                    int i3 = 0;
                    while (c20087a2 != null && c20087a2.f113519a.rawname != qName.rawname) {
                        c20087a2 = c20087a2.f113525g;
                        i3++;
                    }
                    if (c20087a2 == null) {
                        i = this.fLength;
                        this.fLength = i + 1;
                        C20087a[] c20087aArr5 = this.fAttributes;
                        if (i == c20087aArr5.length) {
                            int length5 = c20087aArr5.length << 1;
                            C20087a[] c20087aArr6 = new C20087a[length5];
                            System.arraycopy(c20087aArr5, 0, c20087aArr6, 0, c20087aArr5.length);
                            for (int length6 = this.fAttributes.length; length6 < length5; length6++) {
                                c20087aArr6[length6] = new C20087a();
                            }
                            this.fAttributes = c20087aArr6;
                        }
                        if (i3 >= 40) {
                            this.fAttributes[i].f113519a.setValues(qName);
                            m70598i(this.fLength);
                        } else {
                            C20087a c20087a3 = this.fAttributes[i];
                            C20087a[] c20087aArr7 = this.fAttributeTableView;
                            c20087a3.f113525g = c20087aArr7[tableViewBucket];
                            c20087aArr7[tableViewBucket] = c20087a3;
                        }
                    } else {
                        indexFast = getIndexFast(qName.rawname);
                    }
                }
                indexFast = i;
            }
        }
        C20087a c20087a4 = this.fAttributes[indexFast];
        c20087a4.f113519a.setValues(qName);
        c20087a4.f113520b = str;
        c20087a4.f113521c = str2;
        c20087a4.f113522d = str2;
        c20087a4.f113523e = false;
        c20087a4.f113524f.removeAllItems();
        return indexFast;
    }

    public void addAttributeNS(QName qName, String str, String str2) {
        int i = this.fLength;
        int i2 = i + 1;
        this.fLength = i2;
        C20087a[] c20087aArr = this.fAttributes;
        if (i == c20087aArr.length) {
            C20087a[] c20087aArr2 = new C20087a[i2 < 20 ? c20087aArr.length + 4 : c20087aArr.length << 1];
            System.arraycopy(c20087aArr, 0, c20087aArr2, 0, c20087aArr.length);
            for (int length = this.fAttributes.length; length < c20087aArr2.length; length++) {
                c20087aArr2[length] = new C20087a();
            }
            this.fAttributes = c20087aArr2;
        }
        C20087a c20087a = this.fAttributes[i];
        c20087a.f113519a.setValues(qName);
        c20087a.f113520b = str;
        c20087a.f113521c = str2;
        c20087a.f113522d = str2;
        c20087a.f113523e = false;
        c20087a.f113524f.removeAllItems();
    }

    /* renamed from: b */
    public final String m70591b(String str) {
        return str.charAt(0) == '(' ? "NMTOKEN" : str;
    }

    /* renamed from: c */
    public final void m70592c() {
        int i = this.fLength;
        int i2 = this.fTableViewBuckets;
        while (true) {
            i2 = (i2 << 1) + 1;
            if (i2 < 0) {
                i2 = Integer.MAX_VALUE;
                break;
            } else if (i <= i2) {
                break;
            }
        }
        this.fTableViewBuckets = i2;
        this.fAttributeTableView = null;
        this.fLargeCount = 1;
    }

    public QName checkDuplicatesNS() {
        int i = this.fLength;
        if (i > 20) {
            return m70590a();
        }
        C20087a[] c20087aArr = this.fAttributes;
        int i2 = 0;
        while (i2 < i - 1) {
            C20087a c20087a = c20087aArr[i2];
            int i3 = i2 + 1;
            for (int i4 = i3; i4 < i; i4++) {
                C20087a c20087a2 = c20087aArr[i4];
                QName qName = c20087a.f113519a;
                String str = qName.localpart;
                QName qName2 = c20087a2.f113519a;
                if (str == qName2.localpart && qName.uri == qName2.uri) {
                    return qName2;
                }
            }
            i2 = i3;
        }
        return null;
    }

    public void cleanTableView() {
        int i = this.fLargeCount + 1;
        this.fLargeCount = i;
        if (i < 0) {
            if (this.fAttributeTableViewChainState != null) {
                for (int i2 = this.fTableViewBuckets - 1; i2 >= 0; i2--) {
                    this.fAttributeTableViewChainState[i2] = 0;
                }
            }
            this.fLargeCount = 1;
        }
    }

    /* renamed from: d */
    public final int m70593d(String str) {
        return this.fHashMultipliers == null ? str.hashCode() : m70595f(str);
    }

    /* renamed from: e */
    public final int m70594e(String str, String str2) {
        return this.fHashMultipliers == null ? str.hashCode() + (str2.hashCode() * 31) : m70595f(str) + (m70595f(str2) * this.fHashMultipliers[32]);
    }

    /* renamed from: f */
    public final int m70595f(String str) {
        int length = str.length();
        int[] iArr = this.fHashMultipliers;
        int i = 0;
        for (int i2 = 0; i2 < length; i2++) {
            i = (i * iArr[i2 & 31]) + str.charAt(i2);
        }
        return i;
    }

    /* renamed from: g */
    public final void m70596g(int i) {
        prepareTableView();
        for (int i2 = 0; i2 < i; i2++) {
            C20087a c20087a = this.fAttributes[i2];
            int tableViewBucket = getTableViewBucket(c20087a.f113519a.rawname);
            int[] iArr = this.fAttributeTableViewChainState;
            int i3 = iArr[tableViewBucket];
            int i4 = this.fLargeCount;
            if (i3 != i4) {
                iArr[tableViewBucket] = i4;
                c20087a.f113525g = null;
                this.fAttributeTableView[tableViewBucket] = c20087a;
            } else {
                C20087a[] c20087aArr = this.fAttributeTableView;
                c20087a.f113525g = c20087aArr[tableViewBucket];
                c20087aArr[tableViewBucket] = c20087a;
            }
        }
    }

    @Override // org.apache.xerces.xni.XMLAttributes
    public Augmentations getAugmentations(int i) {
        if (i < 0 || i >= this.fLength) {
            return null;
        }
        return this.fAttributes[i].f113524f;
    }

    @Override // org.apache.xerces.xni.XMLAttributes
    public int getIndex(String str) {
        for (int i = 0; i < this.fLength; i++) {
            String str2 = this.fAttributes[i].f113519a.rawname;
            if (str2 != null && str2.equals(str)) {
                return i;
            }
        }
        return -1;
    }

    public int getIndexFast(String str) {
        for (int i = 0; i < this.fLength; i++) {
            if (this.fAttributes[i].f113519a.rawname == str) {
                return i;
            }
        }
        return -1;
    }

    @Override // org.apache.xerces.xni.XMLAttributes
    public int getLength() {
        return this.fLength;
    }

    @Override // org.apache.xerces.xni.XMLAttributes
    public String getLocalName(int i) {
        if (!this.fNamespaces) {
            return "";
        }
        if (i < 0 || i >= this.fLength) {
            return null;
        }
        return this.fAttributes[i].f113519a.localpart;
    }

    public String getName(int i) {
        if (i < 0 || i >= this.fLength) {
            return null;
        }
        return this.fAttributes[i].f113519a.rawname;
    }

    @Override // org.apache.xerces.xni.XMLAttributes
    public String getNonNormalizedValue(int i) {
        return this.fAttributes[i].f113522d;
    }

    @Override // org.apache.xerces.xni.XMLAttributes
    public String getPrefix(int i) {
        if (i < 0 || i >= this.fLength) {
            return null;
        }
        String str = this.fAttributes[i].f113519a.prefix;
        return str != null ? str : "";
    }

    @Override // org.apache.xerces.xni.XMLAttributes
    public String getQName(int i) {
        if (i < 0 || i >= this.fLength) {
            return null;
        }
        String str = this.fAttributes[i].f113519a.rawname;
        return str != null ? str : "";
    }

    public int getTableViewBucket(String str) {
        return (m70593d(str) & Integer.MAX_VALUE) % this.fTableViewBuckets;
    }

    @Override // org.apache.xerces.xni.XMLAttributes
    public String getType(int i) {
        if (i < 0 || i >= this.fLength) {
            return null;
        }
        return m70591b(this.fAttributes[i].f113520b);
    }

    @Override // org.apache.xerces.xni.XMLAttributes
    public String getURI(int i) {
        if (i < 0 || i >= this.fLength) {
            return null;
        }
        return this.fAttributes[i].f113519a.uri;
    }

    @Override // org.apache.xerces.xni.XMLAttributes
    public String getValue(int i) {
        if (i < 0 || i >= this.fLength) {
            return null;
        }
        return this.fAttributes[i].f113521c;
    }

    /* renamed from: h */
    public final void m70597h(int i) {
        prepareTableView();
        for (int i2 = 0; i2 < i; i2++) {
            C20087a c20087a = this.fAttributes[i2];
            QName qName = c20087a.f113519a;
            int tableViewBucket = getTableViewBucket(qName.localpart, qName.uri);
            int[] iArr = this.fAttributeTableViewChainState;
            int i3 = iArr[tableViewBucket];
            int i4 = this.fLargeCount;
            if (i3 != i4) {
                iArr[tableViewBucket] = i4;
                c20087a.f113525g = null;
                this.fAttributeTableView[tableViewBucket] = c20087a;
            } else {
                C20087a[] c20087aArr = this.fAttributeTableView;
                c20087a.f113525g = c20087aArr[tableViewBucket];
                c20087aArr[tableViewBucket] = c20087a;
            }
        }
    }

    /* renamed from: i */
    public final void m70598i(int i) {
        if (this.fHashMultipliers == null) {
            this.fHashMultipliers = new int[33];
        }
        f7l.m54072a(this.fHashMultipliers);
        m70596g(i);
    }

    @Override // org.apache.xerces.xni.XMLAttributes
    public boolean isSpecified(int i) {
        return this.fAttributes[i].f113523e;
    }

    /* renamed from: j */
    public final void m70599j(int i) {
        if (this.fHashMultipliers == null) {
            this.fHashMultipliers = new int[33];
        }
        f7l.m54072a(this.fHashMultipliers);
        m70597h(i);
    }

    public void prepareAndPopulateTableView() {
        m70596g(this.fLength);
    }

    public void prepareTableView() {
        if (this.fLength > this.fTableViewBuckets) {
            m70592c();
        }
        if (this.fAttributeTableView != null) {
            cleanTableView();
            return;
        }
        int i = this.fTableViewBuckets;
        this.fAttributeTableView = new C20087a[i];
        this.fAttributeTableViewChainState = new int[i];
    }

    @Override // org.apache.xerces.xni.XMLAttributes
    public void removeAllAttributes() {
        this.fLength = 0;
    }

    @Override // org.apache.xerces.xni.XMLAttributes
    public void removeAttributeAt(int i) {
        this.fIsTableViewConsistent = false;
        if (i < this.fLength - 1) {
            C20087a[] c20087aArr = this.fAttributes;
            C20087a c20087a = c20087aArr[i];
            System.arraycopy(c20087aArr, i + 1, c20087aArr, i, (r0 - i) - 1);
            this.fAttributes[this.fLength - 1] = c20087a;
        }
        this.fLength--;
    }

    @Override // org.apache.xerces.xni.XMLAttributes
    public void setAugmentations(int i, Augmentations augmentations) {
        this.fAttributes[i].f113524f = augmentations;
    }

    @Override // org.apache.xerces.xni.XMLAttributes
    public void setName(int i, QName qName) {
        this.fAttributes[i].f113519a.setValues(qName);
    }

    public void setNamespaces(boolean z) {
        this.fNamespaces = z;
    }

    @Override // org.apache.xerces.xni.XMLAttributes
    public void setNonNormalizedValue(int i, String str) {
        if (str == null) {
            str = this.fAttributes[i].f113521c;
        }
        this.fAttributes[i].f113522d = str;
    }

    @Override // org.apache.xerces.xni.XMLAttributes
    public void setSpecified(int i, boolean z) {
        this.fAttributes[i].f113523e = z;
    }

    @Override // org.apache.xerces.xni.XMLAttributes
    public void setType(int i, String str) {
        this.fAttributes[i].f113520b = str;
    }

    public void setURI(int i, String str) {
        this.fAttributes[i].f113519a.uri = str;
    }

    @Override // org.apache.xerces.xni.XMLAttributes
    public void setValue(int i, String str) {
        C20087a c20087a = this.fAttributes[i];
        c20087a.f113521c = str;
        c20087a.f113522d = str;
    }

    public XMLAttributesImpl(int i) {
        this.fNamespaces = true;
        this.fLargeCount = 1;
        this.fAttributes = new C20087a[4];
        this.fTableViewBuckets = i;
        int i2 = 0;
        while (true) {
            C20087a[] c20087aArr = this.fAttributes;
            if (i2 >= c20087aArr.length) {
                return;
            }
            c20087aArr[i2] = new C20087a();
            i2++;
        }
    }

    @Override // org.apache.xerces.xni.XMLAttributes
    public Augmentations getAugmentations(String str) {
        int index = getIndex(str);
        if (index != -1) {
            return this.fAttributes[index].f113524f;
        }
        return null;
    }

    @Override // org.apache.xerces.xni.XMLAttributes
    public int getIndex(String str, String str2) {
        String str3;
        for (int i = 0; i < this.fLength; i++) {
            C20087a c20087a = this.fAttributes[i];
            String str4 = c20087a.f113519a.localpart;
            if (str4 != null && str4.equals(str2) && (str == (str3 = c20087a.f113519a.uri) || (str != null && str3 != null && str3.equals(str)))) {
                return i;
            }
        }
        return -1;
    }

    public int getIndexFast(String str, String str2) {
        for (int i = 0; i < this.fLength; i++) {
            QName qName = this.fAttributes[i].f113519a;
            if (qName.localpart == str2 && qName.uri == str) {
                return i;
            }
        }
        return -1;
    }

    @Override // org.apache.xerces.xni.XMLAttributes
    public void getName(int i, QName qName) {
        qName.setValues(this.fAttributes[i].f113519a);
    }

    public int getTableViewBucket(String str, String str2) {
        return ((str2 == null ? m70593d(str) : m70594e(str, str2)) & Integer.MAX_VALUE) % this.fTableViewBuckets;
    }

    @Override // org.apache.xerces.xni.XMLAttributes
    public String getType(String str) {
        int index = getIndex(str);
        if (index != -1) {
            return m70591b(this.fAttributes[index].f113520b);
        }
        return null;
    }

    @Override // org.apache.xerces.xni.XMLAttributes
    public String getValue(String str) {
        int index = getIndex(str);
        if (index != -1) {
            return this.fAttributes[index].f113521c;
        }
        return null;
    }

    @Override // org.apache.xerces.xni.XMLAttributes
    public Augmentations getAugmentations(String str, String str2) {
        int index = getIndex(str, str2);
        if (index != -1) {
            return this.fAttributes[index].f113524f;
        }
        return null;
    }

    @Override // org.apache.xerces.xni.XMLAttributes
    public String getType(String str, String str2) {
        int index;
        if (this.fNamespaces && (index = getIndex(str, str2)) != -1) {
            return m70591b(this.fAttributes[index].f113520b);
        }
        return null;
    }

    @Override // org.apache.xerces.xni.XMLAttributes
    public String getValue(String str, String str2) {
        int index = getIndex(str, str2);
        if (index != -1) {
            return getValue(index);
        }
        return null;
    }
}
