package com.sunia.HTREnginev2;

import java.util.HashMap;
import org.apache.xerces.impl.XMLErrorReporter;
import org.apache.xerces.util.SymbolTable;
import org.apache.xerces.util.XMLChar;
import org.apache.xerces.xni.Augmentations;
import org.apache.xerces.xni.QName;
import org.apache.xerces.xni.XMLAttributes;
import org.apache.xerces.xni.XNIException;
import org.apache.xerces.xni.parser.XMLErrorHandler;
import org.apache.xerces.xpointer.XPointerPart;

/* loaded from: classes13.dex */
public final class lnf implements XPointerPart {

    /* renamed from: a */
    public String f76638a;

    /* renamed from: b */
    public String f76639b;

    /* renamed from: c */
    public String f76640c;

    /* renamed from: i */
    public int[] f76646i;

    /* renamed from: l */
    public int[] f76649l;

    /* renamed from: n */
    public pom f76651n;

    /* renamed from: o */
    public XMLErrorReporter f76652o;

    /* renamed from: p */
    public XMLErrorHandler f76653p;

    /* renamed from: q */
    public SymbolTable f76654q;

    /* renamed from: d */
    public boolean f76641d = false;

    /* renamed from: e */
    public boolean f76642e = false;

    /* renamed from: f */
    public boolean f76643f = false;

    /* renamed from: g */
    public boolean f76644g = false;

    /* renamed from: h */
    public int f76645h = 0;

    /* renamed from: j */
    public int f76647j = 1;

    /* renamed from: k */
    public int f76648k = 0;

    /* renamed from: m */
    public boolean f76650m = false;

    /* renamed from: com.sunia.HTREnginev2.lnf$a */
    /* loaded from: classes13.dex */
    public class C14053a {

        /* renamed from: d */
        public static final byte f76655d = 0;

        /* renamed from: e */
        public static final byte f76656e = 1;

        /* renamed from: f */
        public static final byte f76657f = 2;

        /* renamed from: g */
        public static final byte f76658g = 3;

        /* renamed from: h */
        public static final byte f76659h = 4;

        /* renamed from: i */
        public static final byte f76660i = 5;

        /* renamed from: j */
        public static final byte f76661j = 6;

        /* renamed from: k */
        public static final byte f76662k = 7;

        /* renamed from: l */
        public static final byte f76663l = 8;

        /* renamed from: a */
        public final byte[] f76664a;

        /* renamed from: b */
        public SymbolTable f76665b;

        public C14053a(SymbolTable symbolTable) {
            this.f76664a = new byte[]{0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 4, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 1, 1, 1, 1, 1, 1, 1, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 1, 1, 1, 1, 7, 1, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 1, 1, 1, 1, 1};
            this.f76665b = symbolTable;
        }

        /* renamed from: b */
        public void mo55245b(C14054b c14054b, int i) throws XNIException {
            c14054b.m55473g(i);
        }

        /* renamed from: c */
        public final boolean m55465c(SymbolTable symbolTable, C14054b c14054b, String str, int i, int i2) throws XNIException {
            while (i != i2) {
                char charAt = str.charAt(i);
                switch (charAt >= 128 ? (byte) 8 : this.f76664a[charAt]) {
                    case 1:
                    case 2:
                    case 3:
                    case 5:
                    case 6:
                    case 7:
                    case 8:
                        int m55466d = m55466d(str, i2, i);
                        if (m55466d != i) {
                            if (m55466d < i2) {
                                str.charAt(m55466d);
                            }
                            String addSymbol = symbolTable.addSymbol(str.substring(i, m55466d));
                            mo55245b(c14054b, 0);
                            c14054b.m55474h(addSymbol);
                            i = m55466d;
                            break;
                        } else {
                            lnf.this.m55463e("InvalidNCNameInElementSchemeData", new Object[]{str});
                            return false;
                        }
                    case 4:
                        i++;
                        if (i != i2) {
                            mo55245b(c14054b, 1);
                            char charAt2 = str.charAt(i);
                            int i3 = 0;
                            while (charAt2 >= '0' && charAt2 <= '9') {
                                i3 = (i3 * 10) + (charAt2 - '0');
                                i++;
                                if (i != i2) {
                                    charAt2 = str.charAt(i);
                                }
                            }
                            if (i3 != 0) {
                                c14054b.m55473g(i3);
                                break;
                            } else {
                                lnf.this.m55463e("InvalidChildSequenceCharacter", new Object[]{new Character(charAt2)});
                                return false;
                            }
                        } else {
                            return false;
                        }
                }
            }
            return true;
        }

        /* renamed from: d */
        public final int m55466d(String str, int i, int i2) {
            char charAt = str.charAt(i2);
            if (charAt < 128) {
                byte b = this.f76664a[charAt];
                if (b != 6 && b != 7) {
                    return i2;
                }
            } else if (!XMLChar.isNameStart(charAt)) {
                return i2;
            }
            while (true) {
                i2++;
                if (i2 >= i) {
                    break;
                }
                char charAt2 = str.charAt(i2);
                if (charAt2 < 128) {
                    byte b2 = this.f76664a[charAt2];
                    if (b2 != 6 && b2 != 5 && b2 != 3 && b2 != 2 && b2 != 7) {
                        break;
                    }
                } else if (!XMLChar.isName(charAt2)) {
                    break;
                }
            }
            return i2;
        }

        public /* synthetic */ C14053a(lnf lnfVar, SymbolTable symbolTable, knf knfVar) {
            this(symbolTable);
        }
    }

    /* renamed from: com.sunia.HTREnginev2.lnf$b */
    /* loaded from: classes13.dex */
    public final class C14054b {

        /* renamed from: h */
        public static final int f76667h = 0;

        /* renamed from: i */
        public static final int f76668i = 1;

        /* renamed from: j */
        public static final int f76669j = 256;

        /* renamed from: a */
        public final String[] f76670a;

        /* renamed from: b */
        public int[] f76671b;

        /* renamed from: c */
        public int f76672c;

        /* renamed from: d */
        public int f76673d;

        /* renamed from: e */
        public SymbolTable f76674e;

        /* renamed from: f */
        public HashMap f76675f;

        public C14054b(SymbolTable symbolTable) {
            this.f76670a = new String[]{"XPTRTOKEN_ELEM_NCNAME", "XPTRTOKEN_ELEM_CHILD"};
            this.f76671b = new int[256];
            this.f76672c = 0;
            HashMap hashMap = new HashMap();
            this.f76675f = hashMap;
            this.f76674e = symbolTable;
            hashMap.put(new Integer(0), "XPTRTOKEN_ELEM_NCNAME");
            this.f76675f.put(new Integer(1), "XPTRTOKEN_ELEM_CHILD");
        }

        /* renamed from: g */
        public final void m55473g(int i) {
            try {
                this.f76671b[this.f76672c] = i;
            } catch (ArrayIndexOutOfBoundsException unused) {
                int[] iArr = this.f76671b;
                int i2 = this.f76672c;
                int[] iArr2 = new int[i2 << 1];
                this.f76671b = iArr2;
                System.arraycopy(iArr, 0, iArr2, 0, i2);
                this.f76671b[this.f76672c] = i;
            }
            this.f76672c++;
        }

        /* renamed from: h */
        public final void m55474h(String str) {
            Integer num = (Integer) this.f76675f.get(str);
            if (num == null) {
                num = new Integer(this.f76675f.size());
                this.f76675f.put(num, str);
            }
            m55473g(num.intValue());
        }

        /* renamed from: i */
        public final Integer m55475i(int i) {
            return (Integer) this.f76675f.get(new Integer(i));
        }

        /* renamed from: j */
        public final int m55476j() {
            return this.f76672c;
        }

        /* renamed from: k */
        public final String m55477k(int i) {
            return (String) this.f76675f.get(new Integer(i));
        }

        /* renamed from: l */
        public final boolean m55478l() {
            return this.f76673d < this.f76672c;
        }

        /* renamed from: m */
        public final int m55479m() throws XNIException {
            if (this.f76673d == this.f76672c) {
                lnf.this.m55463e("XPointerElementSchemeProcessingError", null);
            }
            int[] iArr = this.f76671b;
            int i = this.f76673d;
            this.f76673d = i + 1;
            return iArr[i];
        }

        /* renamed from: n */
        public final String m55480n() throws XNIException {
            String m55477k = m55477k(m55479m());
            if (m55477k == null) {
                lnf.this.m55463e("XPointerElementSchemeProcessingError", null);
            }
            return m55477k;
        }

        /* renamed from: o */
        public final int m55481o() throws XNIException {
            if (this.f76673d == this.f76672c) {
                lnf.this.m55463e("XPointerElementSchemeProcessingError", null);
            }
            return this.f76671b[this.f76673d];
        }

        /* renamed from: p */
        public final void m55482p() {
            this.f76673d = 0;
        }

        public /* synthetic */ C14054b(lnf lnfVar, SymbolTable symbolTable, knf knfVar) {
            this(symbolTable);
        }
    }

    public lnf() {
    }

    /* renamed from: a */
    public boolean m55459a() {
        int[] iArr;
        int i;
        if (this.f76644g) {
            if (this.f76646i.length <= this.f76648k + 1) {
                int i2 = 0;
                do {
                    int[] iArr2 = this.f76646i;
                    if (i2 < iArr2.length) {
                        iArr = this.f76649l;
                        if (iArr.length < i2 + 2) {
                            return false;
                        }
                        i = iArr2[i2];
                        i2++;
                    }
                } while (i == iArr[i2]);
            }
            return false;
        }
        if (this.f76646i.length > this.f76648k + 1) {
            return false;
        }
        int i3 = 0;
        while (true) {
            int[] iArr3 = this.f76646i;
            if (i3 >= iArr3.length) {
                break;
            }
            if (iArr3[i3] != this.f76649l[i3]) {
                return false;
            }
            i3++;
        }
        return true;
    }

    /* renamed from: b */
    public void m55460b() {
        this.f76638a = null;
        this.f76639b = null;
        this.f76640c = null;
        this.f76641d = false;
        this.f76642e = false;
        this.f76643f = false;
        this.f76645h = 0;
        this.f76647j = 1;
        this.f76648k = 0;
        this.f76650m = false;
        this.f76651n = null;
        m55461c();
    }

    /* renamed from: c */
    public void m55461c() {
        if (this.f76652o == null) {
            this.f76652o = new XMLErrorReporter();
        }
        if (this.f76653p == null) {
            this.f76653p = new hmo();
        }
        this.f76652o.putMessageFormatter("http://www.w3.org/TR/XPTR", new imo());
    }

    /* renamed from: d */
    public boolean m55462d(QName qName, int i) throws XNIException {
        int i2 = this.f76648k;
        int[] iArr = this.f76649l;
        if (i2 >= iArr.length) {
            int length = iArr.length;
            int[] iArr2 = new int[length];
            System.arraycopy(iArr, 0, iArr2, 0, iArr.length);
            int[] iArr3 = new int[this.f76648k * 2];
            this.f76649l = iArr3;
            System.arraycopy(iArr2, 0, iArr3, 0, length);
        }
        if (this.f76641d) {
            if (i == 0) {
                int[] iArr4 = this.f76649l;
                int i3 = this.f76648k;
                iArr4[i3] = this.f76647j;
                int i4 = i3 + 1;
                this.f76648k = i4;
                this.f76647j = 1;
                int i5 = this.f76645h;
                if (i4 <= i5 || i5 == 0) {
                    if (m55459a()) {
                        this.f76642e = true;
                        this.f76645h = this.f76648k;
                    } else {
                        this.f76642e = false;
                        this.f76645h = 0;
                    }
                }
            } else if (i == 1) {
                int i6 = this.f76648k;
                int i7 = this.f76645h;
                if (i6 == i7) {
                    this.f76642e = true;
                } else if ((i6 < i7 && i7 != 0) || (i6 > i7 && i7 == 0)) {
                    this.f76642e = false;
                }
                int[] iArr5 = this.f76649l;
                iArr5[i6] = 0;
                int i8 = i6 - 1;
                this.f76648k = i8;
                this.f76647j = iArr5[i8] + 1;
            } else if (i == 2) {
                int[] iArr6 = this.f76649l;
                int i9 = this.f76648k;
                int i10 = this.f76647j;
                iArr6[i9] = i10;
                this.f76647j = i10 + 1;
                if (m55459a()) {
                    if (this.f76642e) {
                        this.f76643f = false;
                    } else {
                        this.f76643f = true;
                    }
                    this.f76642e = true;
                } else {
                    this.f76642e = false;
                    this.f76643f = false;
                }
            }
        }
        return this.f76642e;
    }

    /* renamed from: e */
    public void m55463e(String str, Object[] objArr) throws XNIException {
        throw new XNIException(this.f76652o.getMessageFormatter("http://www.w3.org/TR/XPTR").formatMessage(this.f76652o.getLocale(), str, objArr));
    }

    @Override // org.apache.xerces.xpointer.XPointerPart
    public String getSchemeData() {
        return this.f76639b;
    }

    @Override // org.apache.xerces.xpointer.XPointerPart
    public String getSchemeName() {
        return this.f76638a;
    }

    @Override // org.apache.xerces.xpointer.XPointerPart
    public boolean isChildFragmentResolved() {
        pom pomVar;
        if (this.f76644g && (pomVar = this.f76651n) != null && this.f76646i.length <= 0) {
            return pomVar.isChildFragmentResolved();
        }
        boolean z = this.f76643f;
        if (z) {
            if (!z) {
                return true;
            }
        } else if (this.f76650m && this.f76648k >= this.f76645h) {
            return true;
        }
        return false;
    }

    @Override // org.apache.xerces.xpointer.XPointerPart
    public boolean isFragmentResolved() throws XNIException {
        return this.f76650m;
    }

    @Override // org.apache.xerces.xpointer.XPointerPart
    public void parseXPointer(String str) throws XNIException {
        m55460b();
        C14054b c14054b = new C14054b(this, this.f76654q, null);
        if (!new knf(this, this.f76654q).m55465c(this.f76654q, c14054b, str, 0, str.length())) {
            m55463e("InvalidElementSchemeXPointer", new Object[]{str});
        }
        int[] iArr = new int[(c14054b.m55476j() / 2) + 1];
        int i = 0;
        while (c14054b.m55478l()) {
            int m55479m = c14054b.m55479m();
            if (m55479m == 0) {
                this.f76640c = c14054b.m55477k(c14054b.m55479m());
                pom pomVar = new pom(this.f76654q);
                this.f76651n = pomVar;
                pomVar.setSchemeName(this.f76640c);
            } else if (m55479m != 1) {
                m55463e("InvalidElementSchemeXPointer", new Object[]{str});
            } else {
                iArr[i] = c14054b.m55479m();
                i++;
            }
        }
        int[] iArr2 = new int[i];
        this.f76646i = iArr2;
        this.f76649l = new int[i];
        System.arraycopy(iArr, 0, iArr2, 0, i);
    }

    @Override // org.apache.xerces.xpointer.XPointerPart
    public boolean resolveXPointer(QName qName, XMLAttributes xMLAttributes, Augmentations augmentations, int i) throws XNIException {
        boolean z;
        if (this.f76640c != null) {
            z = this.f76651n.resolveXPointer(qName, xMLAttributes, augmentations, i);
            if (z) {
                this.f76641d = true;
                this.f76644g = true;
            } else {
                this.f76641d = false;
            }
        } else {
            this.f76641d = true;
            z = false;
        }
        int[] iArr = this.f76646i;
        if (iArr.length > 0) {
            this.f76650m = m55462d(qName, i);
        } else if (!z || iArr.length > 0) {
            this.f76650m = false;
        } else {
            this.f76650m = z;
        }
        return this.f76650m;
    }

    @Override // org.apache.xerces.xpointer.XPointerPart
    public void setSchemeData(String str) {
        this.f76639b = str;
    }

    @Override // org.apache.xerces.xpointer.XPointerPart
    public void setSchemeName(String str) {
        this.f76638a = str;
    }

    public lnf(SymbolTable symbolTable) {
        this.f76654q = symbolTable;
    }

    public lnf(SymbolTable symbolTable, XMLErrorReporter xMLErrorReporter) {
        this.f76654q = symbolTable;
        this.f76652o = xMLErrorReporter;
    }
}
