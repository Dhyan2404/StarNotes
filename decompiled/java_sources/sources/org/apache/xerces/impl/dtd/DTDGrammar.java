package org.apache.xerces.impl.dtd;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.google.android.exoplayer2.extractor.p007ts.PsExtractor;
import com.google.android.exoplayer2.trackselection.AdaptiveTrackSelection;
import com.google.android.material.motion.MotionUtils;
import com.google.i18n.phonenumbers.PhoneNumberUtil;
import com.onyx.galaxy.note.DataBinderMapperImpl;
import com.twelvemonkeys.imageio.metadata.iptc.IPTC;
import java.io.PrintStream;
import java.util.ArrayList;
import java.util.Hashtable;
import java.util.Random;
import net.p110sf.saxon.om.StandardNames;
import org.apache.xerces.impl.dtd.models.CMAny;
import org.apache.xerces.impl.dtd.models.CMBinOp;
import org.apache.xerces.impl.dtd.models.CMLeaf;
import org.apache.xerces.impl.dtd.models.CMNode;
import org.apache.xerces.impl.dtd.models.CMUniOp;
import org.apache.xerces.impl.dtd.models.ContentModelValidator;
import org.apache.xerces.impl.dtd.models.DFAContentModel;
import org.apache.xerces.impl.dtd.models.MixedContentModel;
import org.apache.xerces.impl.dtd.models.SimpleContentModel;
import org.apache.xerces.impl.p115dv.DatatypeValidator;
import org.apache.xerces.impl.validation.EntityState;
import org.apache.xerces.util.SymbolTable;
import org.apache.xerces.xni.Augmentations;
import org.apache.xerces.xni.QName;
import org.apache.xerces.xni.XMLDTDContentModelHandler;
import org.apache.xerces.xni.XMLDTDHandler;
import org.apache.xerces.xni.XMLLocator;
import org.apache.xerces.xni.XMLResourceIdentifier;
import org.apache.xerces.xni.XMLString;
import org.apache.xerces.xni.XNIException;
import org.apache.xerces.xni.grammars.Grammar;
import org.apache.xerces.xni.grammars.XMLGrammarDescription;
import org.apache.xerces.xni.parser.XMLDTDContentModelSource;
import org.apache.xerces.xni.parser.XMLDTDSource;

/* loaded from: classes13.dex */
public class DTDGrammar implements XMLDTDHandler, XMLDTDContentModelHandler, EntityState, Grammar {
    public static final int TOP_LEVEL_SCOPE = -1;

    /* renamed from: Z0 */
    public static final int f112096Z0 = 8;

    /* renamed from: a1 */
    public static final int f112097a1 = 256;

    /* renamed from: b1 */
    public static final int f112098b1 = 255;

    /* renamed from: c1 */
    public static final int f112099c1 = 4;

    /* renamed from: d1 */
    public static final short f112100d1 = 128;

    /* renamed from: e1 */
    public static final short f112101e1 = -129;

    /* renamed from: f1 */
    public static final boolean f112102f1 = false;

    /* renamed from: E0 */
    public boolean f112107E0;

    /* renamed from: e */
    public SymbolTable f112132e;
    protected int fCurrentAttributeIndex;
    protected int fCurrentElementIndex;
    protected XMLDTDDescription fGrammarDescription;
    protected XMLDTDSource fDTDSource = null;
    protected XMLDTDContentModelSource fDTDContentModelSource = null;
    protected boolean fReadingExternalDTD = false;

    /* renamed from: f */
    public int f112133f = 0;

    /* renamed from: g */
    public QName[][] f112134g = new QName[4];

    /* renamed from: h */
    public short[][] f112135h = new short[4];

    /* renamed from: i */
    public int[][] f112136i = new int[4];

    /* renamed from: j */
    public ContentModelValidator[][] f112137j = new ContentModelValidator[4];

    /* renamed from: k */
    public int[][] f112138k = new int[4];

    /* renamed from: l */
    public int[][] f112140l = new int[4];

    /* renamed from: m */
    public int f112141m = 0;

    /* renamed from: n */
    public QName[][] f112142n = new QName[4];

    /* renamed from: o */
    public boolean f112143o = false;

    /* renamed from: p */
    public short[][] f112144p = new short[4];

    /* renamed from: q */
    public String[][][] f112145q = new String[4][];

    /* renamed from: r */
    public short[][] f112147r = new short[4];

    /* renamed from: s */
    public DatatypeValidator[][] f112148s = new DatatypeValidator[4];

    /* renamed from: t */
    public String[][] f112149t = new String[4];

    /* renamed from: u */
    public String[][] f112151u = new String[4];

    /* renamed from: v */
    public int[][] f112153v = new int[4];

    /* renamed from: w */
    public int f112155w = 0;

    /* renamed from: x */
    public short[][] f112157x = new short[4];

    /* renamed from: y */
    public Object[][] f112159y = new Object[4];

    /* renamed from: z */
    public Object[][] f112161z = new Object[4];

    /* renamed from: J */
    public int f112112J = 0;

    /* renamed from: O */
    public String[][] f112118O = new String[4];

    /* renamed from: Q */
    public String[][] f112121Q = new String[4];

    /* renamed from: Z */
    public String[][] f112131Z = new String[4];

    /* renamed from: k0 */
    public String[][] f112139k0 = new String[4];

    /* renamed from: q0 */
    public String[][] f112146q0 = new String[4];

    /* renamed from: t0 */
    public String[][] f112150t0 = new String[4];

    /* renamed from: u0 */
    public byte[][] f112152u0 = new byte[4];

    /* renamed from: v0 */
    public byte[][] f112154v0 = new byte[4];

    /* renamed from: w0 */
    public int f112156w0 = 0;

    /* renamed from: x0 */
    public String[][] f112158x0 = new String[4];

    /* renamed from: y0 */
    public String[][] f112160y0 = new String[4];

    /* renamed from: z0 */
    public String[][] f112162z0 = new String[4];

    /* renamed from: A0 */
    public String[][] f112103A0 = new String[4];

    /* renamed from: B0 */
    public QNameHashtable f112104B0 = new QNameHashtable();

    /* renamed from: C0 */
    public QNameHashtable f112105C0 = new QNameHashtable();

    /* renamed from: D0 */
    public QNameHashtable f112106D0 = new QNameHashtable();

    /* renamed from: F0 */
    public final QName f112108F0 = new QName();

    /* renamed from: G0 */
    public final QName f112109G0 = new QName();
    protected final XMLAttributeDecl fAttributeDecl = new XMLAttributeDecl();

    /* renamed from: H0 */
    public int f112110H0 = 0;

    /* renamed from: I0 */
    public int f112111I0 = -1;

    /* renamed from: J0 */
    public XMLElementDecl f112113J0 = new XMLElementDecl();

    /* renamed from: K0 */
    public XMLEntityDecl f112114K0 = new XMLEntityDecl();

    /* renamed from: L0 */
    public XMLSimpleType f112115L0 = new XMLSimpleType();

    /* renamed from: M0 */
    public XMLContentSpec f112116M0 = new XMLContentSpec();

    /* renamed from: N0 */
    public Hashtable f112117N0 = new Hashtable();

    /* renamed from: O0 */
    public short[] f112119O0 = null;

    /* renamed from: P0 */
    public int[] f112120P0 = null;

    /* renamed from: Q0 */
    public int[] f112122Q0 = null;

    /* renamed from: R0 */
    public int f112123R0 = 0;

    /* renamed from: S0 */
    public boolean[] f112124S0 = new boolean[4];

    /* renamed from: T0 */
    public int f112125T0 = 0;

    /* renamed from: U0 */
    public int[][] f112126U0 = new int[4];

    /* renamed from: V0 */
    public int[][] f112127V0 = new int[4];

    /* renamed from: W0 */
    public int f112128W0 = -1;

    /* renamed from: X0 */
    public int f112129X0 = -1;

    /* renamed from: Y0 */
    public int f112130Y0 = -1;

    /* loaded from: classes13.dex */
    public static final class QNameHashtable {

        /* renamed from: e */
        public static final int f112163e = 4;

        /* renamed from: f */
        public static final int f112164f = 101;

        /* renamed from: g */
        public static final int f112165g = 40;

        /* renamed from: h */
        public static final int f112166h = 32;

        /* renamed from: i */
        public static final int f112167i = 31;

        /* renamed from: a */
        public Object[][] f112168a = new Object[101];

        /* renamed from: b */
        public int f112169b = 101;

        /* renamed from: c */
        public int f112170c = 0;

        /* renamed from: d */
        public int[] f112171d;

        /* renamed from: org.apache.xerces.impl.dtd.DTDGrammar$QNameHashtable$a */
        /* loaded from: classes13.dex */
        public static final class C20009a {

            /* renamed from: a */
            public static int[] f112172a = {3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97, 101, 103, 107, 109, 113, 127, 131, 137, 139, 149, 151, 157, 163, 167, 173, 179, 181, 191, 193, 197, 199, 211, 223, 227, 229, 233, 239, 241, 251, 257, 263, 269, 271, 277, 281, 283, 293, 307, 311, 313, 317, DataBinderMapperImpl.f53291s5, 337, 347, DataBinderMapperImpl.f53061K5, DataBinderMapperImpl.f53089O5, 359, 367, 373, 379, 383, StandardNames.XML_LANG_TYPE, 397, 401, 409, 419, 421, 431, 433, 439, PsExtractor.f24604m, 449, 457, 461, 463, 467, 479, 487, 491, 499, 503, 509, 521, StandardNames.XS_G_YEAR, StandardNames.XS_POSITIVE_INTEGER, IPTC.TAG_RELEASE_TIME, 557, StandardNames.XS_ENTITY, 569, 571, 577, 587, StandardNames.XS_EXTENSION, StandardNames.XS_KEY, 601, 607, 613, 617, StandardNames.XS_SEQUENCE, StandardNames.XS_UNTYPED_ATOMIC, StandardNames.XSI_TYPE, 643, IPTC.TAG_LANGUAGE_IDENTIFIER, 653, 659, 661, 673, 677, 683, 691, TypedValues.TransitionType.TYPE_FROM, 709, AdaptiveTrackSelection.DEFAULT_MAX_HEIGHT_TO_DISCARD, 727};

            /* renamed from: a */
            public static void m69888a(int[] iArr) {
                Random random = new Random();
                for (int i = 0; i < iArr.length; i++) {
                    int[] iArr2 = f112172a;
                    iArr[i] = iArr2[random.nextInt(iArr2.length)];
                }
            }
        }

        /* renamed from: a */
        public final int m69884a(String str) {
            int length = str.length();
            int[] iArr = this.f112171d;
            int i = 0;
            for (int i2 = 0; i2 < length; i2++) {
                i = (i * iArr[i2 & 31]) + str.charAt(i2);
            }
            return i;
        }

        /* renamed from: b */
        public final void m69885b() {
            if (this.f112171d == null) {
                this.f112171d = new int[32];
            }
            C20009a.m69888a(this.f112171d);
            m69887d(this.f112168a.length);
        }

        /* renamed from: c */
        public final void m69886c() {
            m69887d((this.f112168a.length * 2) + 1);
        }

        /* renamed from: d */
        public final void m69887d(int i) {
            Object[][] objArr;
            int i2;
            int i3;
            Object[] objArr2;
            Object[][] objArr3 = this.f112168a;
            int length = objArr3.length;
            Object[][] objArr4 = new Object[i];
            this.f112168a = objArr4;
            this.f112169b = objArr4.length;
            int i4 = 0;
            int i5 = 0;
            while (i5 < length) {
                Object[] objArr5 = objArr3[i5];
                if (objArr5 != null) {
                    int i6 = ((int[]) objArr5[i4])[i4];
                    int i7 = 1;
                    int i8 = i4;
                    int i9 = i8;
                    int i10 = 1;
                    while (i8 < i6) {
                        String str = (String) objArr5[i10];
                        Object obj = objArr5[i10 + 1];
                        int hash = (hash(str) & Integer.MAX_VALUE) % this.f112169b;
                        Object[][] objArr6 = this.f112168a;
                        Object[] objArr7 = objArr6[hash];
                        if (objArr7 == null) {
                            if (i9 != 0) {
                                objArr2 = new Object[9];
                                objArr2[i4] = new int[]{i7};
                            } else {
                                ((int[]) objArr5[i4])[i4] = i7;
                                objArr2 = objArr5;
                                i9 = i7;
                            }
                            objArr2[i7] = str;
                            objArr2[2] = obj;
                            objArr6[hash] = objArr2;
                            objArr = objArr3;
                            i2 = i4;
                            i3 = i7;
                        } else {
                            int i11 = ((int[]) objArr7[i4])[i4];
                            int i12 = (i11 * 2) + 1;
                            if (i12 == objArr7.length) {
                                i3 = 1;
                                Object[] objArr8 = new Object[((i11 + 4) * 2) + 1];
                                objArr = objArr3;
                                i2 = 0;
                                System.arraycopy(objArr7, 0, objArr8, 0, i12);
                                this.f112168a[hash] = objArr8;
                                objArr7 = objArr8;
                            } else {
                                objArr = objArr3;
                                i2 = 0;
                                i3 = 1;
                            }
                            objArr7[i12] = str;
                            objArr7[i12 + 1] = obj;
                            ((int[]) objArr7[i2])[i2] = i11 + 1;
                        }
                        i10 += 2;
                        i8++;
                        i4 = i2;
                        i7 = i3;
                        objArr3 = objArr;
                    }
                }
                i5++;
                i4 = i4;
                objArr3 = objArr3;
            }
        }

        public int get(String str) {
            Object[] objArr = this.f112168a[(hash(str) & Integer.MAX_VALUE) % this.f112169b];
            if (objArr == null) {
                return -1;
            }
            int i = ((int[]) objArr[0])[0];
            int i2 = 1;
            for (int i3 = 0; i3 < i; i3++) {
                if (((String) objArr[i2]) == str) {
                    return ((int[]) objArr[i2 + 1])[0];
                }
                i2 += 2;
            }
            return -1;
        }

        public int hash(String str) {
            return this.f112171d == null ? str.hashCode() : m69884a(str);
        }

        public void put(String str, int i) {
            boolean z;
            int hash = hash(str) & Integer.MAX_VALUE;
            int i2 = this.f112169b;
            int i3 = hash % i2;
            Object[][] objArr = this.f112168a;
            Object[] objArr2 = objArr[i3];
            if (objArr2 == null) {
                Object[] objArr3 = new Object[9];
                objArr3[0] = new int[]{1};
                objArr3[1] = str;
                objArr3[2] = new int[]{i};
                objArr[i3] = objArr3;
                int i4 = this.f112170c + 1;
                this.f112170c = i4;
                if (i4 <= i2) {
                    return;
                }
            } else {
                int i5 = ((int[]) objArr2[0])[0];
                int i6 = (i5 * 2) + 1;
                if (i6 == objArr2.length) {
                    Object[] objArr4 = new Object[((i5 + 4) * 2) + 1];
                    System.arraycopy(objArr2, 0, objArr4, 0, i6);
                    this.f112168a[i3] = objArr4;
                    objArr2 = objArr4;
                }
                int i7 = 0;
                int i8 = 1;
                while (true) {
                    if (i7 >= i5) {
                        z = false;
                        break;
                    } else if (((String) objArr2[i8]) == str) {
                        ((int[]) objArr2[i8 + 1])[0] = i;
                        z = true;
                        break;
                    } else {
                        i8 += 2;
                        i7++;
                    }
                }
                if (z) {
                    return;
                }
                objArr2[i6] = str;
                objArr2[i6 + 1] = new int[]{i};
                int i9 = i5 + 1;
                ((int[]) objArr2[0])[0] = i9;
                int i10 = this.f112170c + 1;
                this.f112170c = i10;
                if (i10 <= this.f112169b) {
                    if (i9 > 40) {
                        m69885b();
                        return;
                    }
                    return;
                }
            }
            m69886c();
        }
    }

    /* renamed from: org.apache.xerces.impl.dtd.DTDGrammar$a */
    /* loaded from: classes13.dex */
    public static class C20010a {

        /* renamed from: a */
        public int f112173a = 0;

        /* renamed from: b */
        public QName[] f112174b = new QName[2];

        /* renamed from: c */
        public int[] f112175c = new int[2];
    }

    public DTDGrammar(SymbolTable symbolTable, XMLDTDDescription xMLDTDDescription) {
        this.fGrammarDescription = null;
        this.f112132e = symbolTable;
        this.fGrammarDescription = xMLDTDDescription;
    }

    /* renamed from: m */
    public static byte[][] m69863m(byte[][] bArr, int i) {
        byte[][] bArr2 = new byte[i];
        System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
        return bArr2;
    }

    /* renamed from: n */
    public static int[][] m69864n(int[][] iArr, int i) {
        int[][] iArr2 = new int[i];
        System.arraycopy(iArr, 0, iArr2, 0, iArr.length);
        return iArr2;
    }

    /* renamed from: o */
    public static Object[][] m69865o(Object[][] objArr, int i) {
        Object[][] objArr2 = new Object[i];
        System.arraycopy(objArr, 0, objArr2, 0, objArr.length);
        return objArr2;
    }

    /* renamed from: p */
    public static String[][] m69866p(String[][] strArr, int i) {
        String[][] strArr2 = new String[i];
        System.arraycopy(strArr, 0, strArr2, 0, strArr.length);
        return strArr2;
    }

    /* renamed from: q */
    public static ContentModelValidator[][] m69867q(ContentModelValidator[][] contentModelValidatorArr, int i) {
        ContentModelValidator[][] contentModelValidatorArr2 = new ContentModelValidator[i];
        System.arraycopy(contentModelValidatorArr, 0, contentModelValidatorArr2, 0, contentModelValidatorArr.length);
        return contentModelValidatorArr2;
    }

    /* renamed from: r */
    public static DatatypeValidator[][] m69868r(DatatypeValidator[][] datatypeValidatorArr, int i) {
        DatatypeValidator[][] datatypeValidatorArr2 = new DatatypeValidator[i];
        System.arraycopy(datatypeValidatorArr, 0, datatypeValidatorArr2, 0, datatypeValidatorArr.length);
        return datatypeValidatorArr2;
    }

    /* renamed from: s */
    public static QName[][] m69869s(QName[][] qNameArr, int i) {
        QName[][] qNameArr2 = new QName[i];
        System.arraycopy(qNameArr, 0, qNameArr2, 0, qNameArr.length);
        return qNameArr2;
    }

    /* renamed from: t */
    public static short[][] m69870t(short[][] sArr, int i) {
        short[][] sArr2 = new short[i];
        System.arraycopy(sArr, 0, sArr2, 0, sArr.length);
        return sArr2;
    }

    /* renamed from: u */
    public static String[][][] m69871u(String[][][] strArr, int i) {
        String[][][] strArr2 = new String[i][];
        System.arraycopy(strArr, 0, strArr2, 0, strArr.length);
        return strArr2;
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:2:0x000e. Please report as an issue. */
    /* renamed from: a */
    public final void m69872a(XMLContentSpec xMLContentSpec, StringBuffer stringBuffer, boolean z, int i) {
        Object obj;
        String str;
        String str2;
        char c;
        int i2 = xMLContentSpec.type & 15;
        switch (i2) {
            case 0:
                obj = xMLContentSpec.value;
                if (obj == null && xMLContentSpec.otherValue == null) {
                    str2 = "#PCDATA";
                    stringBuffer.append(str2);
                    return;
                }
                if (obj != null || xMLContentSpec.otherValue == null) {
                    if (obj == null) {
                        stringBuffer.append("##any");
                        return;
                    }
                    stringBuffer.append(obj);
                    return;
                }
                str = "##any:uri=";
                stringBuffer.append(str);
                obj = xMLContentSpec.otherValue;
                stringBuffer.append(obj);
                return;
            case 1:
                if (i == 3 || i == 2 || i == 1) {
                    getContentSpec(((int[]) xMLContentSpec.value)[0], xMLContentSpec);
                    stringBuffer.append('(');
                    m69872a(xMLContentSpec, stringBuffer, true, i2);
                    stringBuffer.append(')');
                } else {
                    getContentSpec(((int[]) xMLContentSpec.value)[0], xMLContentSpec);
                    m69872a(xMLContentSpec, stringBuffer, true, i2);
                }
                c = '?';
                stringBuffer.append(c);
                return;
            case 2:
                if (i == 3 || i == 2 || i == 1) {
                    getContentSpec(((int[]) xMLContentSpec.value)[0], xMLContentSpec);
                    stringBuffer.append('(');
                    m69872a(xMLContentSpec, stringBuffer, true, i2);
                    stringBuffer.append(')');
                } else {
                    getContentSpec(((int[]) xMLContentSpec.value)[0], xMLContentSpec);
                    m69872a(xMLContentSpec, stringBuffer, true, i2);
                }
                c = '*';
                stringBuffer.append(c);
                return;
            case 3:
                if (i == 3 || i == 2 || i == 1) {
                    stringBuffer.append('(');
                    getContentSpec(((int[]) xMLContentSpec.value)[0], xMLContentSpec);
                    m69872a(xMLContentSpec, stringBuffer, true, i2);
                    stringBuffer.append(')');
                } else {
                    getContentSpec(((int[]) xMLContentSpec.value)[0], xMLContentSpec);
                    m69872a(xMLContentSpec, stringBuffer, true, i2);
                }
                c = PhoneNumberUtil.f36455s;
                stringBuffer.append(c);
                return;
            case 4:
            case 5:
                if (z) {
                    stringBuffer.append('(');
                }
                short s = xMLContentSpec.type;
                int i3 = ((int[]) xMLContentSpec.otherValue)[0];
                getContentSpec(((int[]) xMLContentSpec.value)[0], xMLContentSpec);
                m69872a(xMLContentSpec, stringBuffer, xMLContentSpec.type != s, i2);
                stringBuffer.append(s == 4 ? '|' : ',');
                getContentSpec(i3, xMLContentSpec);
                m69872a(xMLContentSpec, stringBuffer, true, i2);
                if (z) {
                    stringBuffer.append(')');
                    return;
                }
                return;
            case 6:
                stringBuffer.append("##any");
                if (xMLContentSpec.otherValue != null) {
                    str = ":uri=";
                    stringBuffer.append(str);
                    obj = xMLContentSpec.otherValue;
                    stringBuffer.append(obj);
                    return;
                }
                return;
            case 7:
                str = "##other:uri=";
                stringBuffer.append(str);
                obj = xMLContentSpec.otherValue;
                stringBuffer.append(obj);
                return;
            case 8:
                str2 = "##local";
                stringBuffer.append(str2);
                return;
            default:
                str2 = "???";
                stringBuffer.append(str2);
                return;
        }
    }

    public int addContentSpecNode(short s, int i, int i2) {
        int createContentSpec = createContentSpec();
        this.f112116M0.setValues(s, new int[]{i}, new int[]{i2});
        setContentSpec(createContentSpec, this.f112116M0);
        return createContentSpec;
    }

    public void addContentSpecToElement(XMLElementDecl xMLElementDecl) {
        int i = this.f112123R0;
        if ((i == 0 || (i == 1 && xMLElementDecl.type == 2)) && this.f112120P0 != null) {
            if (xMLElementDecl.type == 2) {
                int addUniqueLeafNode = addUniqueLeafNode(null);
                int[] iArr = this.f112120P0;
                int i2 = iArr[0];
                if (i2 == -1) {
                    iArr[0] = addUniqueLeafNode;
                } else {
                    iArr[0] = addContentSpecNode((short) 4, addUniqueLeafNode, i2);
                }
            }
            setContentSpecIndex(this.fCurrentElementIndex, this.f112120P0[this.f112123R0]);
        }
    }

    public int addUniqueLeafNode(String str) {
        int createContentSpec = createContentSpec();
        this.f112116M0.setValues((short) 0, str, null);
        setContentSpec(createContentSpec, this.f112116M0);
        return createContentSpec;
    }

    @Override // org.apache.xerces.xni.XMLDTDContentModelHandler
    public void any(Augmentations augmentations) throws XNIException {
    }

    @Override // org.apache.xerces.xni.XMLDTDHandler
    public void attributeDecl(String str, String str2, String str3, String[] strArr, String str4, XMLString xMLString, XMLString xMLString2, Augmentations augmentations) throws XNIException {
        XMLSimpleType xMLSimpleType;
        short s;
        XMLSimpleType xMLSimpleType2;
        if (!this.f112117N0.containsKey(str)) {
            this.fCurrentElementIndex = createElementDecl();
            XMLElementDecl xMLElementDecl = new XMLElementDecl();
            xMLElementDecl.name.setValues(null, str, str, null);
            xMLElementDecl.scope = -1;
            this.f112117N0.put(str, xMLElementDecl);
            setElementDecl(this.fCurrentElementIndex, xMLElementDecl);
        }
        int elementDeclIndex = getElementDeclIndex(str);
        if (getAttributeDeclIndex(elementDeclIndex, str2) != -1) {
            return;
        }
        this.fCurrentAttributeIndex = createAttributeDecl();
        this.f112115L0.clear();
        if (str4 != null) {
            if (str4.equals("#FIXED")) {
                this.f112115L0.defaultType = (short) 1;
            } else if (str4.equals("#IMPLIED")) {
                this.f112115L0.defaultType = (short) 0;
            } else if (str4.equals("#REQUIRED")) {
                this.f112115L0.defaultType = (short) 2;
            }
        }
        this.f112115L0.defaultValue = xMLString != null ? xMLString.toString() : null;
        this.f112115L0.nonNormalizedDefaultValue = xMLString2 != null ? xMLString2.toString() : null;
        this.f112115L0.enumeration = strArr;
        if (str3.equals("CDATA")) {
            this.f112115L0.type = (short) 0;
        } else {
            if (str3.equals("ID")) {
                xMLSimpleType = this.f112115L0;
                s = 3;
            } else if (str3.startsWith("IDREF")) {
                this.f112115L0.type = (short) 4;
                if (str3.indexOf("S") > 0) {
                    xMLSimpleType2 = this.f112115L0;
                    xMLSimpleType2.list = true;
                }
            } else {
                if (str3.equals("ENTITIES")) {
                    xMLSimpleType2 = this.f112115L0;
                    xMLSimpleType2.type = (short) 1;
                } else if (str3.equals("ENTITY")) {
                    this.f112115L0.type = (short) 1;
                } else if (str3.equals("NMTOKENS")) {
                    xMLSimpleType2 = this.f112115L0;
                    xMLSimpleType2.type = (short) 5;
                } else if (str3.equals("NMTOKEN")) {
                    this.f112115L0.type = (short) 5;
                } else if (str3.startsWith("NOTATION")) {
                    xMLSimpleType = this.f112115L0;
                    s = 6;
                } else if (str3.startsWith("ENUMERATION")) {
                    this.f112115L0.type = (short) 2;
                } else {
                    PrintStream printStream = System.err;
                    StringBuffer stringBuffer = new StringBuffer();
                    stringBuffer.append("!!! unknown attribute type ");
                    stringBuffer.append(str3);
                    printStream.println(stringBuffer.toString());
                }
                xMLSimpleType2.list = true;
            }
            xMLSimpleType.type = s;
        }
        this.f112108F0.setValues(null, str2, str2, null);
        this.fAttributeDecl.setValues(this.f112108F0, this.f112115L0, false);
        setAttributeDecl(elementDeclIndex, this.fCurrentAttributeIndex, this.fAttributeDecl);
        int i = this.fCurrentAttributeIndex;
        int i2 = i >> 8;
        int i3 = i & 255;
        m69876e(i2);
        this.f112127V0[i2][i3] = (this.fReadingExternalDTD || this.f112125T0 > 0) ? 1 : 0;
    }

    /* renamed from: b */
    public final CMNode m69873b(int i, XMLContentSpec xMLContentSpec) {
        CMUniOp cMUniOp;
        getContentSpec(i, xMLContentSpec);
        short s = xMLContentSpec.type;
        if ((s & 15) == 6) {
            String str = (String) xMLContentSpec.otherValue;
            int i2 = this.f112110H0;
            this.f112110H0 = i2 + 1;
            return new CMAny(s, str, i2);
        }
        if ((s & 15) == 7) {
            String str2 = (String) xMLContentSpec.otherValue;
            int i3 = this.f112110H0;
            this.f112110H0 = i3 + 1;
            return new CMAny(s, str2, i3);
        }
        if ((s & 15) == 8) {
            int i4 = this.f112110H0;
            this.f112110H0 = i4 + 1;
            return new CMAny(s, null, i4);
        }
        if (s == 0) {
            QName qName = this.f112108F0;
            Object obj = xMLContentSpec.value;
            qName.setValues(null, (String) obj, (String) obj, (String) xMLContentSpec.otherValue);
            QName qName2 = this.f112108F0;
            int i5 = this.f112110H0;
            this.f112110H0 = i5 + 1;
            return new CMLeaf(qName2, i5);
        }
        int i6 = ((int[]) xMLContentSpec.value)[0];
        int i7 = ((int[]) xMLContentSpec.otherValue)[0];
        if (s == 4 || s == 5) {
            return new CMBinOp(s, m69873b(i6, xMLContentSpec), m69873b(i7, xMLContentSpec));
        }
        if (s == 2) {
            cMUniOp = new CMUniOp(s, m69873b(i6, xMLContentSpec));
        } else {
            if (s != 2 && s != 1 && s != 3) {
                throw new RuntimeException("ImplementationMessages.VAL_CST");
            }
            cMUniOp = new CMUniOp(s, m69873b(i6, xMLContentSpec));
        }
        return cMUniOp;
    }

    /* renamed from: c */
    public final void m69874c(int i, XMLContentSpec xMLContentSpec, C20010a c20010a) {
        getContentSpec(i, xMLContentSpec);
        short s = xMLContentSpec.type;
        if (s == 0 || (s & 15) == 6 || (s & 15) == 8 || (s & 15) == 7) {
            int i2 = c20010a.f112173a;
            QName[] qNameArr = c20010a.f112174b;
            if (i2 == qNameArr.length) {
                QName[] qNameArr2 = new QName[i2 * 2];
                System.arraycopy(qNameArr, 0, qNameArr2, 0, i2);
                c20010a.f112174b = qNameArr2;
                int i3 = c20010a.f112173a;
                int[] iArr = new int[i3 * 2];
                System.arraycopy(c20010a.f112175c, 0, iArr, 0, i3);
                c20010a.f112175c = iArr;
            }
            QName[] qNameArr3 = c20010a.f112174b;
            int i4 = c20010a.f112173a;
            Object obj = xMLContentSpec.value;
            qNameArr3[i4] = new QName(null, (String) obj, (String) obj, (String) xMLContentSpec.otherValue);
            int[] iArr2 = c20010a.f112175c;
            int i5 = c20010a.f112173a;
            iArr2[i5] = xMLContentSpec.type;
            c20010a.f112173a = i5 + 1;
            return;
        }
        Object obj2 = xMLContentSpec.value;
        int i6 = obj2 != null ? ((int[]) obj2)[0] : -1;
        Object obj3 = xMLContentSpec.otherValue;
        if (obj3 != null) {
            int i7 = ((int[]) obj3)[0];
            if (s == 4 || s == 5) {
                m69874c(i6, xMLContentSpec, c20010a);
                m69874c(i7, xMLContentSpec, c20010a);
            } else {
                if (s == 1 || s == 2 || s == 3) {
                    m69874c(i6, xMLContentSpec, c20010a);
                    return;
                }
                StringBuffer stringBuffer = new StringBuffer();
                stringBuffer.append("Invalid content spec type seen in contentSpecTree() method of AbstractDTDGrammar class : ");
                stringBuffer.append((int) xMLContentSpec.type);
                throw new RuntimeException(stringBuffer.toString());
            }
        }
    }

    @Override // org.apache.xerces.xni.XMLDTDHandler
    public void comment(XMLString xMLString, Augmentations augmentations) throws XNIException {
    }

    public int createAttributeDecl() {
        int i = this.f112141m;
        int i2 = i >> 8;
        int i3 = i & 255;
        m69876e(i2);
        this.f112142n[i2][i3] = new QName();
        this.f112144p[i2][i3] = -1;
        this.f112148s[i2][i3] = null;
        this.f112145q[i2][i3] = null;
        this.f112147r[i2][i3] = 0;
        this.f112149t[i2][i3] = null;
        this.f112151u[i2][i3] = null;
        this.f112153v[i2][i3] = -1;
        int i4 = this.f112141m;
        this.f112141m = i4 + 1;
        return i4;
    }

    public int createContentSpec() {
        int i = this.f112155w;
        int i2 = i >> 8;
        int i3 = i & 255;
        m69877f(i2);
        this.f112157x[i2][i3] = -1;
        this.f112159y[i2][i3] = null;
        this.f112161z[i2][i3] = null;
        int i4 = this.f112155w;
        this.f112155w = i4 + 1;
        return i4;
    }

    public int createElementDecl() {
        int i = this.f112133f;
        int i2 = i >> 8;
        int i3 = i & 255;
        m69878g(i2);
        this.f112134g[i2][i3] = new QName();
        this.f112135h[i2][i3] = -1;
        this.f112137j[i2][i3] = null;
        this.f112138k[i2][i3] = -1;
        this.f112140l[i2][i3] = -1;
        int i4 = this.f112133f;
        this.f112133f = i4 + 1;
        return i4;
    }

    public int createEntityDecl() {
        int i = this.f112112J;
        int i2 = i >> 8;
        int i3 = i & 255;
        m69879h(i2);
        this.f112152u0[i2][i3] = 0;
        this.f112154v0[i2][i3] = 0;
        int i4 = this.f112112J;
        this.f112112J = i4 + 1;
        return i4;
    }

    public int createNotationDecl() {
        m69880i(this.f112156w0 >> 8);
        int i = this.f112156w0;
        this.f112156w0 = i + 1;
        return i;
    }

    /* renamed from: d */
    public final synchronized ContentModelValidator m69875d(int i) {
        XMLContentSpec xMLContentSpec = new XMLContentSpec();
        getContentSpec(i, xMLContentSpec);
        short s = xMLContentSpec.type;
        if ((s & 15) != 6 && (s & 15) != 7 && (s & 15) != 8) {
            if (s == 0) {
                Object obj = xMLContentSpec.value;
                if (obj == null && xMLContentSpec.otherValue == null) {
                    throw new RuntimeException("ImplementationMessages.VAL_NPCD");
                }
                this.f112108F0.setValues(null, (String) obj, (String) obj, (String) xMLContentSpec.otherValue);
                return new SimpleContentModel(xMLContentSpec.type, this.f112108F0, null);
            }
            if (s == 4 || s == 5) {
                XMLContentSpec xMLContentSpec2 = new XMLContentSpec();
                XMLContentSpec xMLContentSpec3 = new XMLContentSpec();
                getContentSpec(((int[]) xMLContentSpec.value)[0], xMLContentSpec2);
                getContentSpec(((int[]) xMLContentSpec.otherValue)[0], xMLContentSpec3);
                if (xMLContentSpec2.type == 0 && xMLContentSpec3.type == 0) {
                    QName qName = this.f112108F0;
                    Object obj2 = xMLContentSpec2.value;
                    qName.setValues(null, (String) obj2, (String) obj2, (String) xMLContentSpec2.otherValue);
                    QName qName2 = this.f112109G0;
                    Object obj3 = xMLContentSpec3.value;
                    qName2.setValues(null, (String) obj3, (String) obj3, (String) xMLContentSpec3.otherValue);
                    return new SimpleContentModel(xMLContentSpec.type, this.f112108F0, this.f112109G0);
                }
            } else {
                if (s != 1 && s != 2 && s != 3) {
                    throw new RuntimeException("ImplementationMessages.VAL_CST");
                }
                XMLContentSpec xMLContentSpec4 = new XMLContentSpec();
                getContentSpec(((int[]) xMLContentSpec.value)[0], xMLContentSpec4);
                if (xMLContentSpec4.type == 0) {
                    QName qName3 = this.f112108F0;
                    Object obj4 = xMLContentSpec4.value;
                    qName3.setValues(null, (String) obj4, (String) obj4, (String) xMLContentSpec4.otherValue);
                    return new SimpleContentModel(xMLContentSpec.type, this.f112108F0, null);
                }
            }
        }
        this.f112110H0 = 0;
        return new DFAContentModel(m69873b(i, xMLContentSpec), this.f112110H0, false);
    }

    /* renamed from: e */
    public final void m69876e(int i) {
        QName[][] qNameArr = this.f112142n;
        if (i >= qNameArr.length) {
            int[][] iArr = this.f112127V0;
            this.f112127V0 = m69864n(iArr, iArr.length * 2);
            QName[][] qNameArr2 = this.f112142n;
            this.f112142n = m69869s(qNameArr2, qNameArr2.length * 2);
            short[][] sArr = this.f112144p;
            this.f112144p = m69870t(sArr, sArr.length * 2);
            String[][][] strArr = this.f112145q;
            this.f112145q = m69871u(strArr, strArr.length * 2);
            short[][] sArr2 = this.f112147r;
            this.f112147r = m69870t(sArr2, sArr2.length * 2);
            DatatypeValidator[][] datatypeValidatorArr = this.f112148s;
            this.f112148s = m69868r(datatypeValidatorArr, datatypeValidatorArr.length * 2);
            String[][] strArr2 = this.f112149t;
            this.f112149t = m69866p(strArr2, strArr2.length * 2);
            String[][] strArr3 = this.f112151u;
            this.f112151u = m69866p(strArr3, strArr3.length * 2);
            int[][] iArr2 = this.f112153v;
            this.f112153v = m69864n(iArr2, iArr2.length * 2);
        } else if (qNameArr[i] != null) {
            return;
        }
        this.f112127V0[i] = new int[256];
        this.f112142n[i] = new QName[256];
        this.f112144p[i] = new short[256];
        this.f112145q[i] = new String[256];
        this.f112147r[i] = new short[256];
        this.f112148s[i] = new DatatypeValidator[256];
        this.f112149t[i] = new String[256];
        this.f112151u[i] = new String[256];
        this.f112153v[i] = new int[256];
    }

    public void element(String str, Augmentations augmentations) throws XNIException {
        if (!this.f112107E0) {
            this.f112120P0[this.f112123R0] = addContentSpecNode((short) 0, str);
            return;
        }
        int[] iArr = this.f112120P0;
        int i = this.f112123R0;
        int i2 = iArr[i];
        if (i2 == -1) {
            iArr[i] = addUniqueLeafNode(str);
        } else {
            iArr[i] = addContentSpecNode((short) 4, i2, addUniqueLeafNode(str));
        }
    }

    @Override // org.apache.xerces.xni.XMLDTDHandler
    public void elementDecl(String str, String str2, Augmentations augmentations) throws XNIException {
        int createElementDecl;
        XMLElementDecl xMLElementDecl = (XMLElementDecl) this.f112117N0.get(str);
        if (xMLElementDecl == null) {
            createElementDecl = createElementDecl();
        } else if (xMLElementDecl.type != -1) {
            return;
        } else {
            createElementDecl = getElementDeclIndex(str);
        }
        this.fCurrentElementIndex = createElementDecl;
        XMLElementDecl xMLElementDecl2 = new XMLElementDecl();
        this.f112108F0.setValues(null, str, str, null);
        xMLElementDecl2.name.setValues(this.f112108F0);
        xMLElementDecl2.contentModelValidator = null;
        xMLElementDecl2.scope = -1;
        if (str2.equals("EMPTY")) {
            xMLElementDecl2.type = (short) 1;
        } else if (str2.equals("ANY")) {
            xMLElementDecl2.type = (short) 0;
        } else if (str2.startsWith(MotionUtils.f31761c)) {
            xMLElementDecl2.type = str2.indexOf("#PCDATA") > 0 ? (short) 2 : (short) 3;
        }
        this.f112117N0.put(str, xMLElementDecl2);
        this.f112113J0 = xMLElementDecl2;
        addContentSpecToElement(xMLElementDecl2);
        setElementDecl(this.fCurrentElementIndex, this.f112113J0);
        int i = this.fCurrentElementIndex;
        int i2 = i >> 8;
        int i3 = i & 255;
        m69878g(i2);
        this.f112126U0[i2][i3] = (this.fReadingExternalDTD || this.f112125T0 > 0) ? 1 : 0;
    }

    @Override // org.apache.xerces.xni.XMLDTDContentModelHandler
    public void empty(Augmentations augmentations) throws XNIException {
    }

    @Override // org.apache.xerces.xni.XMLDTDHandler
    public void endAttlist(Augmentations augmentations) throws XNIException {
    }

    @Override // org.apache.xerces.xni.XMLDTDHandler
    public void endConditional(Augmentations augmentations) throws XNIException {
    }

    @Override // org.apache.xerces.xni.XMLDTDContentModelHandler
    public void endContentModel(Augmentations augmentations) throws XNIException {
    }

    @Override // org.apache.xerces.xni.XMLDTDHandler
    public void endDTD(Augmentations augmentations) throws XNIException {
        this.f112143o = true;
        if (this.fGrammarDescription.getRootName() == null) {
            int i = this.f112133f;
            ArrayList arrayList = new ArrayList(i);
            for (int i2 = 0; i2 < i; i2++) {
                arrayList.add(this.f112134g[i2 >> 8][i2 & 255].rawname);
            }
            this.fGrammarDescription.setPossibleRoots(arrayList);
        }
    }

    @Override // org.apache.xerces.xni.XMLDTDHandler
    public void endExternalSubset(Augmentations augmentations) throws XNIException {
        this.fReadingExternalDTD = false;
    }

    public void endGroup(Augmentations augmentations) throws XNIException {
        if (this.f112107E0) {
            return;
        }
        int[] iArr = this.f112122Q0;
        int i = this.f112123R0;
        int i2 = iArr[i];
        if (i2 != -1) {
            int[] iArr2 = this.f112120P0;
            iArr2[i] = addContentSpecNode(this.f112119O0[i], i2, iArr2[i]);
        }
        int[] iArr3 = this.f112120P0;
        int i3 = this.f112123R0;
        int i4 = i3 - 1;
        this.f112123R0 = i4;
        iArr3[i4] = iArr3[i3];
    }

    @Override // org.apache.xerces.xni.XMLDTDHandler
    public void endParameterEntity(String str, Augmentations augmentations) throws XNIException {
        int i = this.f112125T0 - 1;
        this.f112125T0 = i;
        this.fReadingExternalDTD = this.f112124S0[i];
    }

    @Override // org.apache.xerces.xni.XMLDTDHandler
    public void externalEntityDecl(String str, XMLResourceIdentifier xMLResourceIdentifier, Augmentations augmentations) throws XNIException {
        if (getEntityDeclIndex(str) == -1) {
            int createEntityDecl = createEntityDecl();
            boolean startsWith = str.startsWith("%");
            boolean z = this.fReadingExternalDTD || this.f112125T0 > 0;
            XMLEntityDecl xMLEntityDecl = new XMLEntityDecl();
            xMLEntityDecl.setValues(str, xMLResourceIdentifier.getPublicId(), xMLResourceIdentifier.getLiteralSystemId(), xMLResourceIdentifier.getBaseSystemId(), null, null, startsWith, z);
            setEntityDecl(createEntityDecl, xMLEntityDecl);
        }
    }

    /* renamed from: f */
    public final void m69877f(int i) {
        short[][] sArr = this.f112157x;
        if (i >= sArr.length) {
            this.f112157x = m69870t(sArr, sArr.length * 2);
            Object[][] objArr = this.f112159y;
            this.f112159y = m69865o(objArr, objArr.length * 2);
            Object[][] objArr2 = this.f112161z;
            this.f112161z = m69865o(objArr2, objArr2.length * 2);
        } else if (sArr[i] != null) {
            return;
        }
        this.f112157x[i] = new short[256];
        this.f112159y[i] = new Object[256];
        this.f112161z[i] = new Object[256];
    }

    /* renamed from: g */
    public final void m69878g(int i) {
        QName[][] qNameArr = this.f112134g;
        if (i >= qNameArr.length) {
            int[][] iArr = this.f112126U0;
            this.f112126U0 = m69864n(iArr, iArr.length * 2);
            QName[][] qNameArr2 = this.f112134g;
            this.f112134g = m69869s(qNameArr2, qNameArr2.length * 2);
            short[][] sArr = this.f112135h;
            this.f112135h = m69870t(sArr, sArr.length * 2);
            ContentModelValidator[][] contentModelValidatorArr = this.f112137j;
            this.f112137j = m69867q(contentModelValidatorArr, contentModelValidatorArr.length * 2);
            int[][] iArr2 = this.f112136i;
            this.f112136i = m69864n(iArr2, iArr2.length * 2);
            int[][] iArr3 = this.f112138k;
            this.f112138k = m69864n(iArr3, iArr3.length * 2);
            int[][] iArr4 = this.f112140l;
            this.f112140l = m69864n(iArr4, iArr4.length * 2);
        } else if (qNameArr[i] != null) {
            return;
        }
        this.f112126U0[i] = new int[256];
        this.f112134g[i] = new QName[256];
        this.f112135h[i] = new short[256];
        this.f112137j[i] = new ContentModelValidator[256];
        this.f112136i[i] = new int[256];
        this.f112138k[i] = new int[256];
        this.f112140l[i] = new int[256];
    }

    public boolean getAttributeDecl(int i, XMLAttributeDecl xMLAttributeDecl) {
        boolean z = false;
        if (i < 0 || i >= this.f112141m) {
            return false;
        }
        int i2 = i >> 8;
        int i3 = i & 255;
        xMLAttributeDecl.name.setValues(this.f112142n[i2][i3]);
        short s = this.f112144p[i2][i3];
        short s2 = -1;
        if (s != -1) {
            s2 = (short) (s & f112101e1);
            if ((s & 128) != 0) {
                z = true;
            }
        }
        xMLAttributeDecl.simpleType.setValues(s2, this.f112142n[i2][i3].localpart, this.f112145q[i2][i3], z, this.f112147r[i2][i3], this.f112149t[i2][i3], this.f112151u[i2][i3], this.f112148s[i2][i3]);
        return true;
    }

    public int getAttributeDeclIndex(int i, String str) {
        if (i == -1) {
            return -1;
        }
        int firstAttributeDeclIndex = getFirstAttributeDeclIndex(i);
        while (firstAttributeDeclIndex != -1) {
            getAttributeDecl(firstAttributeDeclIndex, this.fAttributeDecl);
            String str2 = this.fAttributeDecl.name.rawname;
            if (str2 == str || str.equals(str2)) {
                return firstAttributeDeclIndex;
            }
            firstAttributeDeclIndex = getNextAttributeDeclIndex(firstAttributeDeclIndex);
        }
        return -1;
    }

    public boolean getAttributeDeclIsExternal(int i) {
        if (i < 0) {
            return false;
        }
        return this.f112127V0[i >> 8][i & 255] != 0;
    }

    public boolean getContentSpec(int i, XMLContentSpec xMLContentSpec) {
        if (i < 0 || i >= this.f112155w) {
            return false;
        }
        int i2 = i >> 8;
        int i3 = i & 255;
        xMLContentSpec.type = this.f112157x[i2][i3];
        xMLContentSpec.value = this.f112159y[i2][i3];
        xMLContentSpec.otherValue = this.f112161z[i2][i3];
        return true;
    }

    public String getContentSpecAsString(int i) {
        char c;
        String str;
        String str2;
        if (i >= 0 && i < this.f112133f) {
            int i2 = this.f112136i[i >> 8][i & 255];
            XMLContentSpec xMLContentSpec = new XMLContentSpec();
            if (getContentSpec(i2, xMLContentSpec)) {
                StringBuffer stringBuffer = new StringBuffer();
                int i3 = xMLContentSpec.type & 15;
                switch (i3) {
                    case 0:
                        stringBuffer.append('(');
                        Object obj = xMLContentSpec.value;
                        if (obj == null && xMLContentSpec.otherValue == null) {
                            stringBuffer.append("#PCDATA");
                        } else {
                            stringBuffer.append(obj);
                        }
                        stringBuffer.append(')');
                        break;
                    case 1:
                        getContentSpec(((int[]) xMLContentSpec.value)[0], xMLContentSpec);
                        short s = xMLContentSpec.type;
                        if (s != 0) {
                            if (s != 3 && s != 2 && s != 1) {
                                m69872a(xMLContentSpec, stringBuffer, true, i3);
                                c = '?';
                                stringBuffer.append(c);
                                break;
                            } else {
                                stringBuffer.append('(');
                                m69872a(xMLContentSpec, stringBuffer, true, i3);
                            }
                        } else {
                            stringBuffer.append('(');
                            stringBuffer.append(xMLContentSpec.value);
                        }
                        stringBuffer.append(')');
                        c = '?';
                        stringBuffer.append(c);
                    case 2:
                        getContentSpec(((int[]) xMLContentSpec.value)[0], xMLContentSpec);
                        short s2 = xMLContentSpec.type;
                        if (s2 == 0) {
                            stringBuffer.append('(');
                            Object obj2 = xMLContentSpec.value;
                            if (obj2 == null && xMLContentSpec.otherValue == null) {
                                stringBuffer.append("#PCDATA");
                            } else if (xMLContentSpec.otherValue != null) {
                                stringBuffer.append("##any:uri=");
                                stringBuffer.append(xMLContentSpec.otherValue);
                            } else if (obj2 == null) {
                                stringBuffer.append("##any");
                            }
                            stringBuffer.append(')');
                            c = '*';
                            stringBuffer.append(c);
                            break;
                        } else if (s2 == 3 || s2 == 2 || s2 == 1) {
                            stringBuffer.append('(');
                        } else {
                            m69872a(xMLContentSpec, stringBuffer, true, i3);
                            c = '*';
                            stringBuffer.append(c);
                        }
                        m69872a(xMLContentSpec, stringBuffer, true, i3);
                        stringBuffer.append(')');
                        c = '*';
                        stringBuffer.append(c);
                        break;
                    case 3:
                        getContentSpec(((int[]) xMLContentSpec.value)[0], xMLContentSpec);
                        short s3 = xMLContentSpec.type;
                        if (s3 != 0) {
                            if (s3 != 3 && s3 != 2 && s3 != 1) {
                                m69872a(xMLContentSpec, stringBuffer, true, i3);
                                c = PhoneNumberUtil.f36455s;
                                stringBuffer.append(c);
                                break;
                            } else {
                                stringBuffer.append('(');
                                m69872a(xMLContentSpec, stringBuffer, true, i3);
                            }
                        } else {
                            stringBuffer.append('(');
                            Object obj3 = xMLContentSpec.value;
                            if (obj3 == null && xMLContentSpec.otherValue == null) {
                                stringBuffer.append("#PCDATA");
                            } else {
                                if (xMLContentSpec.otherValue != null) {
                                    stringBuffer.append("##any:uri=");
                                    obj3 = xMLContentSpec.otherValue;
                                } else if (obj3 == null) {
                                    stringBuffer.append("##any");
                                }
                                stringBuffer.append(obj3);
                            }
                        }
                        stringBuffer.append(')');
                        c = PhoneNumberUtil.f36455s;
                        stringBuffer.append(c);
                        break;
                    case 4:
                    case 5:
                        m69872a(xMLContentSpec, stringBuffer, true, i3);
                        break;
                    case 6:
                        stringBuffer.append("##any");
                        if (xMLContentSpec.otherValue != null) {
                            str = ":uri=";
                            stringBuffer.append(str);
                            stringBuffer.append(xMLContentSpec.otherValue);
                            break;
                        }
                        break;
                    case 7:
                        str = "##other:uri=";
                        stringBuffer.append(str);
                        stringBuffer.append(xMLContentSpec.otherValue);
                        break;
                    case 8:
                        str2 = "##local";
                        stringBuffer.append(str2);
                        break;
                    default:
                        str2 = "???";
                        stringBuffer.append(str2);
                        break;
                }
                return stringBuffer.toString();
            }
        }
        return null;
    }

    public int getContentSpecIndex(int i) {
        if (i < 0 || i >= this.f112133f) {
            return -1;
        }
        return this.f112136i[i >> 8][i & 255];
    }

    public short getContentSpecType(int i) {
        if (i < 0 || i >= this.f112133f) {
            return (short) -1;
        }
        short s = this.f112135h[i >> 8][i & 255];
        if (s == -1) {
            return (short) -1;
        }
        return (short) (s & f112101e1);
    }

    @Override // org.apache.xerces.xni.XMLDTDContentModelHandler
    public XMLDTDContentModelSource getDTDContentModelSource() {
        return this.fDTDContentModelSource;
    }

    @Override // org.apache.xerces.xni.XMLDTDHandler
    public XMLDTDSource getDTDSource() {
        return this.fDTDSource;
    }

    public ContentModelValidator getElementContentModelValidator(int i) {
        ContentModelValidator m69875d;
        int i2 = i >> 8;
        int i3 = i & 255;
        ContentModelValidator contentModelValidator = this.f112137j[i2][i3];
        if (contentModelValidator != null) {
            return contentModelValidator;
        }
        short s = this.f112135h[i2][i3];
        if (s == 4) {
            return null;
        }
        int i4 = this.f112136i[i2][i3];
        XMLContentSpec xMLContentSpec = new XMLContentSpec();
        getContentSpec(i4, xMLContentSpec);
        if (s == 2) {
            C20010a c20010a = new C20010a();
            m69874c(i4, xMLContentSpec, c20010a);
            m69875d = new MixedContentModel(c20010a.f112174b, c20010a.f112175c, 0, c20010a.f112173a, false);
        } else {
            if (s != 3) {
                throw new RuntimeException("Unknown content type for a element decl in getElementContentModelValidator() in AbstractDTDGrammar class");
            }
            m69875d = m69875d(i4);
        }
        this.f112137j[i2][i3] = m69875d;
        return m69875d;
    }

    public boolean getElementDecl(int i, XMLElementDecl xMLElementDecl) {
        if (i < 0 || i >= this.f112133f) {
            return false;
        }
        int i2 = i >> 8;
        int i3 = i & 255;
        xMLElementDecl.name.setValues(this.f112134g[i2][i3]);
        short s = this.f112135h[i2][i3];
        if (s == -1) {
            xMLElementDecl.type = (short) -1;
            xMLElementDecl.simpleType.list = false;
        } else {
            xMLElementDecl.type = (short) (s & f112101e1);
            xMLElementDecl.simpleType.list = (s & 128) != 0;
        }
        short s2 = xMLElementDecl.type;
        if (s2 == 3 || s2 == 2) {
            xMLElementDecl.contentModelValidator = getElementContentModelValidator(i);
        }
        XMLSimpleType xMLSimpleType = xMLElementDecl.simpleType;
        xMLSimpleType.datatypeValidator = null;
        xMLSimpleType.defaultType = (short) -1;
        xMLSimpleType.defaultValue = null;
        return true;
    }

    public int getElementDeclIndex(String str) {
        return this.f112104B0.get(str);
    }

    public boolean getElementDeclIsExternal(int i) {
        if (i < 0) {
            return false;
        }
        return this.f112126U0[i >> 8][i & 255] != 0;
    }

    public boolean getEntityDecl(int i, XMLEntityDecl xMLEntityDecl) {
        if (i < 0 || i >= this.f112112J) {
            return false;
        }
        int i2 = i >> 8;
        int i3 = i & 255;
        xMLEntityDecl.setValues(this.f112118O[i2][i3], this.f112131Z[i2][i3], this.f112139k0[i2][i3], this.f112146q0[i2][i3], this.f112150t0[i2][i3], this.f112121Q[i2][i3], this.f112152u0[i2][i3] != 0, this.f112154v0[i2][i3] != 0);
        return true;
    }

    public int getEntityDeclIndex(String str) {
        if (str == null) {
            return -1;
        }
        return this.f112105C0.get(str);
    }

    public int getFirstAttributeDeclIndex(int i) {
        return this.f112138k[i >> 8][i & 255];
    }

    public int getFirstElementDeclIndex() {
        return this.f112133f >= 0 ? 0 : -1;
    }

    @Override // org.apache.xerces.xni.grammars.Grammar
    public XMLGrammarDescription getGrammarDescription() {
        return this.fGrammarDescription;
    }

    public int getNextAttributeDeclIndex(int i) {
        return this.f112153v[i >> 8][i & 255];
    }

    public int getNextElementDeclIndex(int i) {
        if (i < this.f112133f - 1) {
            return i + 1;
        }
        return -1;
    }

    public boolean getNotationDecl(int i, XMLNotationDecl xMLNotationDecl) {
        if (i < 0 || i >= this.f112156w0) {
            return false;
        }
        int i2 = i >> 8;
        int i3 = i & 255;
        xMLNotationDecl.setValues(this.f112158x0[i2][i3], this.f112160y0[i2][i3], this.f112162z0[i2][i3], this.f112103A0[i2][i3]);
        return true;
    }

    public int getNotationDeclIndex(String str) {
        if (str == null) {
            return -1;
        }
        return this.f112106D0.get(str);
    }

    public SymbolTable getSymbolTable() {
        return this.f112132e;
    }

    /* renamed from: h */
    public final void m69879h(int i) {
        String[][] strArr = this.f112118O;
        if (i >= strArr.length) {
            this.f112118O = m69866p(strArr, strArr.length * 2);
            String[][] strArr2 = this.f112121Q;
            this.f112121Q = m69866p(strArr2, strArr2.length * 2);
            String[][] strArr3 = this.f112131Z;
            this.f112131Z = m69866p(strArr3, strArr3.length * 2);
            String[][] strArr4 = this.f112139k0;
            this.f112139k0 = m69866p(strArr4, strArr4.length * 2);
            String[][] strArr5 = this.f112146q0;
            this.f112146q0 = m69866p(strArr5, strArr5.length * 2);
            String[][] strArr6 = this.f112150t0;
            this.f112150t0 = m69866p(strArr6, strArr6.length * 2);
            byte[][] bArr = this.f112152u0;
            this.f112152u0 = m69863m(bArr, bArr.length * 2);
            byte[][] bArr2 = this.f112154v0;
            this.f112154v0 = m69863m(bArr2, bArr2.length * 2);
        } else if (strArr[i] != null) {
            return;
        }
        this.f112118O[i] = new String[256];
        this.f112121Q[i] = new String[256];
        this.f112131Z[i] = new String[256];
        this.f112139k0[i] = new String[256];
        this.f112146q0[i] = new String[256];
        this.f112150t0[i] = new String[256];
        this.f112152u0[i] = new byte[256];
        this.f112154v0[i] = new byte[256];
    }

    /* renamed from: i */
    public final void m69880i(int i) {
        String[][] strArr = this.f112158x0;
        if (i >= strArr.length) {
            this.f112158x0 = m69866p(strArr, strArr.length * 2);
            String[][] strArr2 = this.f112160y0;
            this.f112160y0 = m69866p(strArr2, strArr2.length * 2);
            String[][] strArr3 = this.f112162z0;
            this.f112162z0 = m69866p(strArr3, strArr3.length * 2);
            String[][] strArr4 = this.f112103A0;
            this.f112103A0 = m69866p(strArr4, strArr4.length * 2);
        } else if (strArr[i] != null) {
            return;
        }
        this.f112158x0[i] = new String[256];
        this.f112160y0[i] = new String[256];
        this.f112162z0[i] = new String[256];
        this.f112103A0[i] = new String[256];
    }

    @Override // org.apache.xerces.xni.XMLDTDHandler
    public void ignoredCharacters(XMLString xMLString, Augmentations augmentations) throws XNIException {
    }

    public void initializeContentModelStack() {
        short[] sArr = this.f112119O0;
        if (sArr == null) {
            this.f112119O0 = new short[8];
            this.f112120P0 = new int[8];
            this.f112122Q0 = new int[8];
        } else {
            int i = this.f112123R0;
            if (i == sArr.length) {
                short[] sArr2 = new short[i * 2];
                System.arraycopy(sArr, 0, sArr2, 0, i);
                this.f112119O0 = sArr2;
                int i2 = this.f112123R0;
                int[] iArr = new int[i2 * 2];
                System.arraycopy(this.f112120P0, 0, iArr, 0, i2);
                this.f112120P0 = iArr;
                int i3 = this.f112123R0;
                int[] iArr2 = new int[i3 * 2];
                System.arraycopy(this.f112122Q0, 0, iArr2, 0, i3);
                this.f112122Q0 = iArr2;
            }
        }
        short[] sArr3 = this.f112119O0;
        int i4 = this.f112123R0;
        sArr3[i4] = -1;
        this.f112120P0[i4] = -1;
        this.f112122Q0[i4] = -1;
    }

    @Override // org.apache.xerces.xni.XMLDTDHandler
    public void internalEntityDecl(String str, XMLString xMLString, XMLString xMLString2, Augmentations augmentations) throws XNIException {
        if (getEntityDeclIndex(str) == -1) {
            int createEntityDecl = createEntityDecl();
            boolean startsWith = str.startsWith("%");
            boolean z = this.fReadingExternalDTD || this.f112125T0 > 0;
            XMLEntityDecl xMLEntityDecl = new XMLEntityDecl();
            xMLEntityDecl.setValues(str, null, null, null, null, xMLString.toString(), startsWith, z);
            setEntityDecl(createEntityDecl, xMLEntityDecl);
        }
    }

    public boolean isCDATAAttribute(QName qName, QName qName2) {
        return !getAttributeDecl(getElementDeclIndex(qName), this.fAttributeDecl) || this.fAttributeDecl.simpleType.type == 0;
    }

    @Override // org.apache.xerces.impl.validation.EntityState
    public boolean isEntityDeclared(String str) {
        return getEntityDeclIndex(str) != -1;
    }

    @Override // org.apache.xerces.impl.validation.EntityState
    public boolean isEntityUnparsed(String str) {
        int entityDeclIndex = getEntityDeclIndex(str);
        if (entityDeclIndex > -1) {
            return this.f112150t0[entityDeclIndex >> 8][entityDeclIndex & 255] != null;
        }
        return false;
    }

    public boolean isNamespaceAware() {
        return false;
    }

    /* renamed from: j */
    public QName m69881j(int i) {
        if (i < 0 || i >= this.f112133f) {
            return null;
        }
        return this.f112134g[i >> 8][i & 255];
    }

    /* renamed from: k */
    public boolean m69882k() {
        return this.f112143o;
    }

    /* renamed from: l */
    public final void m69883l(int i) {
        XMLAttributeDecl xMLAttributeDecl = new XMLAttributeDecl();
        if (getAttributeDecl(i, xMLAttributeDecl)) {
            System.out.print(" { ");
            System.out.print(xMLAttributeDecl.name.localpart);
            System.out.print(" }");
        }
    }

    @Override // org.apache.xerces.xni.XMLDTDHandler
    public void notationDecl(String str, XMLResourceIdentifier xMLResourceIdentifier, Augmentations augmentations) throws XNIException {
        XMLNotationDecl xMLNotationDecl = new XMLNotationDecl();
        xMLNotationDecl.setValues(str, xMLResourceIdentifier.getPublicId(), xMLResourceIdentifier.getLiteralSystemId(), xMLResourceIdentifier.getBaseSystemId());
        if (getNotationDeclIndex(str) == -1) {
            setNotationDecl(createNotationDecl(), xMLNotationDecl);
        }
    }

    public void occurrence(short s, Augmentations augmentations) throws XNIException {
        if (this.f112107E0) {
            return;
        }
        if (s == 2) {
            int[] iArr = this.f112120P0;
            int i = this.f112123R0;
            iArr[i] = addContentSpecNode((short) 1, iArr[i], -1);
        } else if (s == 3) {
            int[] iArr2 = this.f112120P0;
            int i2 = this.f112123R0;
            iArr2[i2] = addContentSpecNode((short) 2, iArr2[i2], -1);
        } else if (s == 4) {
            int[] iArr3 = this.f112120P0;
            int i3 = this.f112123R0;
            iArr3[i3] = addContentSpecNode((short) 3, iArr3[i3], -1);
        }
    }

    public void pcdata(Augmentations augmentations) throws XNIException {
        this.f112107E0 = true;
    }

    public void printAttributes(int i) {
        int firstAttributeDeclIndex = getFirstAttributeDeclIndex(i);
        System.out.print(i);
        PrintStream printStream = System.out;
        String str = " [";
        while (true) {
            printStream.print(str);
            while (firstAttributeDeclIndex != -1) {
                System.out.print(' ');
                System.out.print(firstAttributeDeclIndex);
                m69883l(firstAttributeDeclIndex);
                firstAttributeDeclIndex = getNextAttributeDeclIndex(firstAttributeDeclIndex);
                if (firstAttributeDeclIndex != -1) {
                    break;
                }
            }
            System.out.println(" ]");
            return;
            printStream = System.out;
            str = ",";
        }
    }

    public void printElements() {
        XMLElementDecl xMLElementDecl = new XMLElementDecl();
        int i = 0;
        while (true) {
            int i2 = i + 1;
            if (!getElementDecl(i, xMLElementDecl)) {
                return;
            }
            PrintStream printStream = System.out;
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("element decl: ");
            stringBuffer.append(xMLElementDecl.name);
            stringBuffer.append(", ");
            stringBuffer.append(xMLElementDecl.name.rawname);
            printStream.println(stringBuffer.toString());
            i = i2;
        }
    }

    @Override // org.apache.xerces.xni.XMLDTDHandler
    public void processingInstruction(String str, XMLString xMLString, Augmentations augmentations) throws XNIException {
    }

    public void putElementNameMapping(QName qName, int i, int i2) {
    }

    public void separator(short s, Augmentations augmentations) throws XNIException {
        if (this.f112107E0) {
            return;
        }
        short[] sArr = this.f112119O0;
        int i = this.f112123R0;
        short s2 = sArr[i];
        if (s2 != 5 && s == 0) {
            int i2 = this.f112122Q0[i];
            if (i2 != -1) {
                int[] iArr = this.f112120P0;
                iArr[i] = addContentSpecNode(s2, i2, iArr[i]);
            }
            int[] iArr2 = this.f112122Q0;
            int i3 = this.f112123R0;
            iArr2[i3] = this.f112120P0[i3];
            this.f112119O0[i3] = 4;
            return;
        }
        if (s2 == 4 || s != 1) {
            return;
        }
        int i4 = this.f112122Q0[i];
        if (i4 != -1) {
            int[] iArr3 = this.f112120P0;
            iArr3[i] = addContentSpecNode(s2, i4, iArr3[i]);
        }
        int[] iArr4 = this.f112122Q0;
        int i5 = this.f112123R0;
        iArr4[i5] = this.f112120P0[i5];
        this.f112119O0[i5] = 5;
    }

    public void setAttributeDecl(int i, int i2, XMLAttributeDecl xMLAttributeDecl) {
        int i3 = i2 >> 8;
        int i4 = i2 & 255;
        this.f112142n[i3][i4].setValues(xMLAttributeDecl.name);
        short[] sArr = this.f112144p[i3];
        XMLSimpleType xMLSimpleType = xMLAttributeDecl.simpleType;
        short s = xMLSimpleType.type;
        sArr[i4] = s;
        if (xMLSimpleType.list) {
            sArr[i4] = (short) (s | 128);
        }
        this.f112145q[i3][i4] = xMLSimpleType.enumeration;
        this.f112147r[i3][i4] = xMLSimpleType.defaultType;
        this.f112148s[i3][i4] = xMLSimpleType.datatypeValidator;
        this.f112149t[i3][i4] = xMLSimpleType.defaultValue;
        this.f112151u[i3][i4] = xMLSimpleType.nonNormalizedDefaultValue;
        int i5 = i >> 8;
        int i6 = i & 255;
        int i7 = this.f112138k[i5][i6];
        while (i7 != -1 && i7 != i2) {
            i7 = this.f112153v[i7 >> 8][i7 & 255];
        }
        if (i7 == -1) {
            int[] iArr = this.f112138k[i5];
            if (iArr[i6] == -1) {
                iArr[i6] = i2;
            } else {
                int i8 = this.f112140l[i5][i6];
                this.f112153v[i8 >> 8][i8 & 255] = i2;
            }
            this.f112140l[i5][i6] = i2;
        }
    }

    public void setContentSpec(int i, XMLContentSpec xMLContentSpec) {
        int i2 = i >> 8;
        int i3 = i & 255;
        this.f112157x[i2][i3] = xMLContentSpec.type;
        this.f112159y[i2][i3] = xMLContentSpec.value;
        this.f112161z[i2][i3] = xMLContentSpec.otherValue;
    }

    public void setContentSpecIndex(int i, int i2) {
        if (i < 0 || i >= this.f112133f) {
            return;
        }
        this.f112136i[i >> 8][i & 255] = i2;
    }

    @Override // org.apache.xerces.xni.XMLDTDContentModelHandler
    public void setDTDContentModelSource(XMLDTDContentModelSource xMLDTDContentModelSource) {
        this.fDTDContentModelSource = xMLDTDContentModelSource;
    }

    @Override // org.apache.xerces.xni.XMLDTDHandler
    public void setDTDSource(XMLDTDSource xMLDTDSource) {
        this.fDTDSource = xMLDTDSource;
    }

    public void setElementDecl(int i, XMLElementDecl xMLElementDecl) {
        if (i < 0 || i >= this.f112133f) {
            return;
        }
        int i2 = i >> 8;
        int i3 = i & 255;
        this.f112134g[i2][i3].setValues(xMLElementDecl.name);
        short[][] sArr = this.f112135h;
        sArr[i2][i3] = xMLElementDecl.type;
        this.f112137j[i2][i3] = xMLElementDecl.contentModelValidator;
        if (xMLElementDecl.simpleType.list) {
            short[] sArr2 = sArr[i2];
            sArr2[i3] = (short) (sArr2[i3] | 128);
        }
        this.f112104B0.put(xMLElementDecl.name.rawname, i);
    }

    public void setEntityDecl(int i, XMLEntityDecl xMLEntityDecl) {
        int i2 = i >> 8;
        int i3 = i & 255;
        String[] strArr = this.f112118O[i2];
        String str = xMLEntityDecl.name;
        strArr[i3] = str;
        this.f112121Q[i2][i3] = xMLEntityDecl.value;
        this.f112131Z[i2][i3] = xMLEntityDecl.publicId;
        this.f112139k0[i2][i3] = xMLEntityDecl.systemId;
        this.f112146q0[i2][i3] = xMLEntityDecl.baseSystemId;
        this.f112150t0[i2][i3] = xMLEntityDecl.notation;
        this.f112152u0[i2][i3] = xMLEntityDecl.isPE;
        this.f112154v0[i2][i3] = xMLEntityDecl.inExternal;
        this.f112105C0.put(str, i);
    }

    public void setFirstAttributeDeclIndex(int i, int i2) {
        if (i < 0 || i >= this.f112133f) {
            return;
        }
        this.f112138k[i >> 8][i & 255] = i2;
    }

    public void setNotationDecl(int i, XMLNotationDecl xMLNotationDecl) {
        int i2 = i >> 8;
        int i3 = i & 255;
        String[] strArr = this.f112158x0[i2];
        String str = xMLNotationDecl.name;
        strArr[i3] = str;
        this.f112160y0[i2][i3] = xMLNotationDecl.publicId;
        this.f112162z0[i2][i3] = xMLNotationDecl.systemId;
        this.f112103A0[i2][i3] = xMLNotationDecl.baseSystemId;
        this.f112106D0.put(str, i);
    }

    @Override // org.apache.xerces.xni.XMLDTDHandler
    public void startAttlist(String str, Augmentations augmentations) throws XNIException {
    }

    @Override // org.apache.xerces.xni.XMLDTDHandler
    public void startConditional(short s, Augmentations augmentations) throws XNIException {
    }

    public void startContentModel(String str, Augmentations augmentations) throws XNIException {
        XMLElementDecl xMLElementDecl = (XMLElementDecl) this.f112117N0.get(str);
        if (xMLElementDecl != null) {
            this.f112113J0 = xMLElementDecl;
        }
        this.f112123R0 = 0;
        initializeContentModelStack();
    }

    @Override // org.apache.xerces.xni.XMLDTDHandler
    public void startDTD(XMLLocator xMLLocator, Augmentations augmentations) throws XNIException {
        this.f112119O0 = null;
        this.f112120P0 = null;
        this.f112122Q0 = null;
    }

    @Override // org.apache.xerces.xni.XMLDTDHandler
    public void startExternalSubset(XMLResourceIdentifier xMLResourceIdentifier, Augmentations augmentations) throws XNIException {
        this.fReadingExternalDTD = true;
    }

    public void startGroup(Augmentations augmentations) throws XNIException {
        this.f112123R0++;
        initializeContentModelStack();
        this.f112107E0 = false;
    }

    @Override // org.apache.xerces.xni.XMLDTDHandler
    public void startParameterEntity(String str, XMLResourceIdentifier xMLResourceIdentifier, String str2, Augmentations augmentations) throws XNIException {
        int i = this.f112125T0;
        boolean[] zArr = this.f112124S0;
        if (i == zArr.length) {
            boolean[] zArr2 = new boolean[zArr.length * 2];
            System.arraycopy(zArr, 0, zArr2, 0, zArr.length);
            this.f112124S0 = zArr2;
        }
        boolean[] zArr3 = this.f112124S0;
        int i2 = this.f112125T0;
        zArr3[i2] = this.fReadingExternalDTD;
        this.f112125T0 = i2 + 1;
    }

    @Override // org.apache.xerces.xni.XMLDTDHandler
    public void textDecl(String str, String str2, Augmentations augmentations) throws XNIException {
    }

    @Override // org.apache.xerces.xni.XMLDTDHandler
    public void unparsedEntityDecl(String str, XMLResourceIdentifier xMLResourceIdentifier, String str2, Augmentations augmentations) throws XNIException {
        XMLEntityDecl xMLEntityDecl = new XMLEntityDecl();
        xMLEntityDecl.setValues(str, xMLResourceIdentifier.getPublicId(), xMLResourceIdentifier.getLiteralSystemId(), xMLResourceIdentifier.getBaseSystemId(), str2, null, str.startsWith("%"), this.fReadingExternalDTD || this.f112125T0 > 0);
        if (getEntityDeclIndex(str) == -1) {
            setEntityDecl(createEntityDecl(), xMLEntityDecl);
        }
    }

    public int addContentSpecNode(short s, String str) {
        int createContentSpec = createContentSpec();
        this.f112116M0.setValues(s, str, null);
        setContentSpec(createContentSpec, this.f112116M0);
        return createContentSpec;
    }

    public int getElementDeclIndex(QName qName) {
        return getElementDeclIndex(qName.rawname);
    }
}
