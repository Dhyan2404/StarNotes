package net.p110sf.saxon.tree.tiny;

import com.bumptech.glide.load.engine.GlideException;
import com.sunia.HTREnginev2.rin;
import com.sunia.HTREnginev2.tin;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import net.p110sf.saxon.Configuration;
import net.p110sf.saxon.lib.Feature;
import net.p110sf.saxon.om.AtomicSequence;
import net.p110sf.saxon.om.GenericTreeInfo;
import net.p110sf.saxon.om.NameChecker;
import net.p110sf.saxon.om.NamePool;
import net.p110sf.saxon.om.NamespaceBinding;
import net.p110sf.saxon.om.NamespaceMap;
import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.om.PrefixPool;
import net.p110sf.saxon.om.StandardNames;
import net.p110sf.saxon.p111z.IntArraySet;
import net.p110sf.saxon.p111z.IntHashMap;
import net.p110sf.saxon.p111z.IntHashSet;
import net.p110sf.saxon.p111z.IntSet;
import net.p110sf.saxon.p111z.IntSingletonSet;
import net.p110sf.saxon.str.CompressedWhitespace;
import net.p110sf.saxon.str.LargeTextBuffer;
import net.p110sf.saxon.str.UnicodeBuilder;
import net.p110sf.saxon.str.UnicodeString;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.tree.linked.SystemIdMap;
import net.p110sf.saxon.type.BuiltInAtomicType;
import net.p110sf.saxon.type.BuiltInListType;
import net.p110sf.saxon.type.MissingComponentException;
import net.p110sf.saxon.type.SchemaType;
import net.p110sf.saxon.type.SimpleType;
import net.p110sf.saxon.type.Untyped;
import net.p110sf.saxon.value.AnyURIValue;
import net.p110sf.saxon.value.AtomicValue;
import net.p110sf.saxon.value.StringValue;
import net.p110sf.saxon.value.Whitespace;
import org.apache.commons.collections4.MapUtils;

/* loaded from: classes11.dex */
public final class TinyTree extends GenericTreeInfo implements NodeVectorTree {

    /* renamed from: H0 */
    public static final String[] f102577H0 = new String[0];

    /* renamed from: I0 */
    public static final /* synthetic */ boolean f102578I0 = false;
    public static final int TYPECODE_IDREF = 536870912;

    /* renamed from: A0 */
    public PrefixPool f102579A0;

    /* renamed from: B0 */
    public TinyDocumentImpl f102580B0;

    /* renamed from: C0 */
    public HashMap<String, NodeInfo> f102581C0;

    /* renamed from: D0 */
    public HashMap<String, String[]> f102582D0;

    /* renamed from: E0 */
    public NodeInfo f102583E0;

    /* renamed from: F0 */
    public IntHashMap<String> f102584F0;

    /* renamed from: G0 */
    public String f102585G0;

    /* renamed from: J */
    public Map<String, IntSet> f102586J;

    /* renamed from: O */
    public int f102587O;

    /* renamed from: Q */
    public int[] f102588Q;

    /* renamed from: Z */
    public int[] f102589Z;

    /* renamed from: j */
    public LargeTextBuffer f102590j;

    /* renamed from: k */
    public UnicodeString f102591k;

    /* renamed from: k0 */
    public String[] f102592k0;

    /* renamed from: l */
    public int f102593l;

    /* renamed from: m */
    public short[] f102594m;

    /* renamed from: n */
    public int[] f102595n;
    public byte[] nodeKind;

    /* renamed from: o */
    public int[] f102596o;

    /* renamed from: p */
    public int[] f102597p;

    /* renamed from: q */
    public int[] f102598q;

    /* renamed from: q0 */
    public AtomicSequence[] f102599q0;

    /* renamed from: r */
    public int[] f102600r;

    /* renamed from: s */
    public SchemaType[] f102601s;

    /* renamed from: t */
    public AtomicSequence[] f102602t;

    /* renamed from: t0 */
    public SimpleType[] f102603t0;

    /* renamed from: u */
    public IntSet f102604u;

    /* renamed from: u0 */
    public int f102605u0;

    /* renamed from: v */
    public IntSet f102606v;

    /* renamed from: v0 */
    public NamespaceMap[] f102607v0;

    /* renamed from: w */
    public IntSet f102608w;

    /* renamed from: w0 */
    public int[] f102609w0;

    /* renamed from: x */
    public IntSet f102610x;

    /* renamed from: x0 */
    public int[] f102611x0;

    /* renamed from: y */
    public IntSet f102612y;

    /* renamed from: y0 */
    public SystemIdMap f102613y0;

    /* renamed from: z */
    public boolean f102614z;

    /* renamed from: z0 */
    public boolean f102615z0;

    public TinyTree(Configuration configuration, Statistics statistics) {
        super(configuration);
        this.f102591k = null;
        this.f102593l = 0;
        this.f102600r = null;
        this.f102601s = null;
        this.f102602t = null;
        this.f102604u = null;
        this.f102606v = null;
        this.f102608w = null;
        this.f102610x = null;
        this.f102612y = null;
        this.f102614z = true;
        this.f102586J = null;
        this.f102587O = 0;
        this.f102605u0 = 0;
        this.f102609w0 = null;
        this.f102611x0 = null;
        this.f102613y0 = null;
        this.f102615z0 = false;
        this.f102579A0 = new PrefixPool();
        this.f102585G0 = null;
        int averageNodes = ((int) statistics.getAverageNodes()) + 1;
        int averageAttributes = ((int) statistics.getAverageAttributes()) + 1;
        int averageNamespaces = ((int) statistics.getAverageNamespaces()) + 1;
        statistics.getAverageCharacters();
        this.nodeKind = new byte[averageNodes];
        this.f102594m = new short[averageNodes];
        this.f102595n = new int[averageNodes];
        this.f102596o = new int[averageNodes];
        this.f102597p = new int[averageNodes];
        this.f102598q = new int[averageNodes];
        this.f102587O = 0;
        this.f102588Q = new int[averageAttributes];
        this.f102589Z = new int[averageAttributes];
        this.f102592k0 = new String[averageAttributes];
        this.f102605u0 = 0;
        this.f102607v0 = new NamespaceMap[averageNamespaces];
        this.f102590j = new LargeTextBuffer();
        setConfiguration(configuration);
    }

    /* renamed from: r */
    public static String m64551r(int i) {
        return ("        " + i).substring(r2.length() - 8);
    }

    /* JADX WARN: Code restructure failed: missing block: B:56:0x0050, code lost:
    
        if (r8.isIdType() != false) goto L16;
     */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0056  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00c2  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0090 A[Catch: MissingComponentException | ValidationException -> 0x00c0, TRY_ENTER, TryCatch #0 {MissingComponentException | ValidationException -> 0x00c0, blocks: (B:26:0x007a, B:35:0x0081, B:37:0x0085, B:40:0x008a, B:42:0x0090, B:43:0x00a9, B:45:0x00af), top: B:25:0x007a }] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m64552a(net.p110sf.saxon.om.NodeInfo r5, int r6, int r7, net.p110sf.saxon.type.SimpleType r8, java.lang.String r9, int r10) {
        /*
            r4 = this;
            r0 = 1
            r4.m64558g(r0)
            int[] r1 = r4.f102588Q
            int r2 = r4.f102587O
            r1[r2] = r6
            int[] r1 = r4.f102589Z
            r1[r2] = r7
            java.lang.String[] r1 = r4.f102592k0
            java.lang.String r3 = r9.toString()
            r1[r2] = r3
            net.sf.saxon.type.BuiltInAtomicType r1 = net.p110sf.saxon.type.BuiltInAtomicType.UNTYPED_ATOMIC
            boolean r1 = r8.equals(r1)
            if (r1 != 0) goto L21
            r4.m64567p()
        L21:
            net.sf.saxon.type.SimpleType[] r1 = r4.f102603t0
            if (r1 == 0) goto L29
            int r2 = r4.f102587O
            r1[r2] = r8
        L29:
            int[] r1 = r4.f102596o
            r2 = r1[r6]
            r3 = -1
            if (r2 != r3) goto L34
            int r2 = r4.f102587O
            r1[r6] = r2
        L34:
            boolean r5 = r5 instanceof net.p110sf.saxon.tree.tiny.TinyDocumentImpl
            if (r5 == 0) goto Ld4
            r5 = 2048(0x800, float:2.87E-42)
            r1 = 0
            boolean r5 = net.p110sf.saxon.event.ReceiverOption.contains(r10, r5)     // Catch: net.p110sf.saxon.type.MissingComponentException -> L53
            if (r5 == 0) goto L43
        L41:
            r5 = r0
            goto L54
        L43:
            r5 = 1048575(0xfffff, float:1.469367E-39)
            r5 = r5 & r7
            r7 = 388(0x184, float:5.44E-43)
            if (r5 != r7) goto L4c
            goto L41
        L4c:
            boolean r5 = r8.isIdType()     // Catch: net.p110sf.saxon.type.MissingComponentException -> L53
            if (r5 == 0) goto L53
            goto L41
        L53:
            r5 = r1
        L54:
            if (r5 == 0) goto L78
            java.lang.String r5 = net.p110sf.saxon.value.Whitespace.trim(r9)
            java.lang.String[] r7 = r4.f102592k0
            int r2 = r4.f102587O
            r7[r2] = r5
            boolean r7 = net.p110sf.saxon.om.NameChecker.isValidNCName(r5)
            if (r7 == 0) goto L6e
            net.sf.saxon.tree.tiny.TinyNodeImpl r6 = r4.getNode(r6)
            r4.m64569s(r6, r5)
            goto L78
        L6e:
            net.sf.saxon.type.SimpleType[] r5 = r4.f102603t0
            if (r5 == 0) goto L78
            int r6 = r4.f102587O
            net.sf.saxon.type.BuiltInAtomicType r7 = net.p110sf.saxon.type.BuiltInAtomicType.UNTYPED_ATOMIC
            r5[r6] = r7
        L78:
            r5 = 4096(0x1000, float:5.74E-42)
            boolean r5 = net.p110sf.saxon.event.ReceiverOption.contains(r10, r5)     // Catch: java.lang.Throwable -> Lc0
            if (r5 == 0) goto L81
            goto Lbf
        L81:
            net.sf.saxon.type.BuiltInAtomicType r5 = net.p110sf.saxon.type.BuiltInAtomicType.IDREF     // Catch: java.lang.Throwable -> Lc0
            if (r8 == r5) goto Lbf
            net.sf.saxon.type.BuiltInListType r5 = net.p110sf.saxon.type.BuiltInListType.IDREFS     // Catch: java.lang.Throwable -> Lc0
            if (r8 != r5) goto L8a
            goto Lbf
        L8a:
            boolean r5 = r8.isIdRefType()     // Catch: java.lang.Throwable -> Lc0
            if (r5 == 0) goto Lc0
            net.sf.saxon.str.UnicodeString r5 = net.p110sf.saxon.str.StringView.m63901of(r9)     // Catch: java.lang.Throwable -> Lc0
            net.sf.saxon.str.UnicodeString r5 = r5.tidy()     // Catch: java.lang.Throwable -> Lc0
            net.sf.saxon.Configuration r6 = r4.getConfiguration()     // Catch: java.lang.Throwable -> Lc0
            net.sf.saxon.lib.ConversionRules r6 = r6.getConversionRules()     // Catch: java.lang.Throwable -> Lc0
            r7 = 0
            net.sf.saxon.om.AtomicSequence r5 = r8.getTypedValue(r5, r7, r6)     // Catch: java.lang.Throwable -> Lc0
            java.util.Iterator r5 = r5.iterator()     // Catch: java.lang.Throwable -> Lc0
        La9:
            boolean r6 = r5.hasNext()     // Catch: java.lang.Throwable -> Lc0
            if (r6 == 0) goto Lc0
            java.lang.Object r6 = r5.next()     // Catch: java.lang.Throwable -> Lc0
            net.sf.saxon.value.AtomicValue r6 = (net.p110sf.saxon.value.AtomicValue) r6     // Catch: java.lang.Throwable -> Lc0
            net.sf.saxon.type.AtomicType r6 = r6.getItemType()     // Catch: java.lang.Throwable -> Lc0
            boolean r6 = r6.isIdRefType()     // Catch: java.lang.Throwable -> Lc0
            if (r6 == 0) goto La9
        Lbf:
            r1 = r0
        Lc0:
            if (r1 == 0) goto Ld4
            net.sf.saxon.z.IntSet r5 = r4.f102606v
            if (r5 != 0) goto Lcd
            net.sf.saxon.z.IntHashSet r5 = new net.sf.saxon.z.IntHashSet
            r5.<init>()
            r4.f102606v = r5
        Lcd:
            net.sf.saxon.z.IntSet r5 = r4.f102606v
            int r6 = r4.f102587O
            r5.add(r6)
        Ld4:
            int r5 = r4.f102587O
            int r5 = r5 + r0
            r4.f102587O = r5
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: net.p110sf.saxon.tree.tiny.TinyTree.m64552a(net.sf.saxon.om.NodeInfo, int, int, net.sf.saxon.type.SimpleType, java.lang.String, int):void");
    }

    public int addTextNodeCopy(int i, int i2) {
        return m64555d((short) 3, i, this.f102596o[i2], this.f102597p[i2], -1);
    }

    /* renamed from: b */
    public int m64553b(TinyDocumentImpl tinyDocumentImpl) {
        setRootNode(tinyDocumentImpl);
        return m64555d((short) 9, 0, 0, 0, -1);
    }

    /* renamed from: c */
    public void m64554c(int i, NamespaceMap namespaceMap) {
        this.f102615z0 = true;
        for (int i2 = 0; i2 < this.f102605u0; i2++) {
            if (this.f102607v0[i2].equals(namespaceMap)) {
                this.f102597p[i] = i2;
                return;
            }
        }
        m64559h(1);
        NamespaceMap[] namespaceMapArr = this.f102607v0;
        int i3 = this.f102605u0;
        namespaceMapArr[i3] = namespaceMap;
        this.f102597p[i] = i3;
        this.f102605u0 = i3 + 1;
    }

    /* renamed from: d */
    public int m64555d(short s, int i, int i2, int i3, int i4) {
        m64560i(s, 1);
        byte[] bArr = this.nodeKind;
        int i5 = this.f102593l;
        bArr[i5] = (byte) s;
        this.f102594m[i5] = (short) i;
        this.f102596o[i5] = i2;
        this.f102597p[i5] = i3;
        this.f102598q[i5] = i4;
        this.f102595n[i5] = -1;
        SchemaType[] schemaTypeArr = this.f102601s;
        if (schemaTypeArr != null) {
            schemaTypeArr[i5] = Untyped.getInstance();
        }
        if (this.f102593l == 0) {
            setDocumentNumber(getConfiguration().getDocumentNumberAllocator().allocateDocumentNumber());
        }
        int i6 = this.f102593l;
        this.f102593l = i6 + 1;
        return i6;
    }

    public void diagnosticDump() {
        String str;
        NamePool namePool = getNamePool();
        System.err.println("    node    kind   depth    next   alpha    beta    name    type");
        for (int i = 0; i < this.f102593l; i++) {
            int i2 = this.f102598q[i];
            if (i2 != -1) {
                try {
                    str = namePool.getEQName(i2);
                } catch (Exception unused) {
                    str = "#" + this.f102598q[1];
                }
            } else {
                str = "";
            }
            System.err.println(m64551r(i) + m64551r(this.nodeKind[i]) + m64551r(this.f102594m[i]) + m64551r(this.f102595n[i]) + m64551r(this.f102596o[i]) + m64551r(this.f102597p[i]) + m64551r(this.f102598q[i]) + m64551r(getTypeAnnotation(i)) + " " + str);
        }
        System.err.println("    attr  parent    name    value");
        for (int i3 = 0; i3 < this.f102587O; i3++) {
            System.err.println(m64551r(i3) + m64551r(this.f102588Q[i3]) + m64551r(this.f102589Z[i3]) + MapUtils.f104930a + this.f102592k0[i3]);
        }
        System.err.println("      ns  parent  prefix     uri");
        for (int i4 = 0; i4 < this.f102605u0; i4++) {
            System.err.println(m64551r(i4) + GlideException.C1935a.f14609h + this.f102607v0[i4]);
        }
    }

    /* renamed from: e */
    public void m64556e(UnicodeString unicodeString) {
        this.f102590j.appendUnicodeString(unicodeString);
    }

    /* renamed from: f */
    public void m64557f(Statistics statistics) {
        int i = this.f102593l;
        int i2 = i * 3;
        byte[] bArr = this.nodeKind;
        if (i2 < bArr.length || bArr.length - i > 20000) {
            this.nodeKind = Arrays.copyOf(bArr, i);
            this.f102595n = Arrays.copyOf(this.f102595n, this.f102593l);
            this.f102594m = Arrays.copyOf(this.f102594m, this.f102593l);
            this.f102596o = Arrays.copyOf(this.f102596o, this.f102593l);
            this.f102597p = Arrays.copyOf(this.f102597p, this.f102593l);
            this.f102598q = Arrays.copyOf(this.f102598q, this.f102593l);
            SchemaType[] schemaTypeArr = this.f102601s;
            if (schemaTypeArr != null) {
                this.f102601s = (SchemaType[]) Arrays.copyOf(schemaTypeArr, this.f102593l);
            }
            int[] iArr = this.f102609w0;
            if (iArr != null) {
                this.f102609w0 = Arrays.copyOf(iArr, this.f102593l);
                this.f102611x0 = Arrays.copyOf(this.f102611x0, this.f102593l);
            }
        }
        int i3 = this.f102587O;
        int i4 = i3 * 3;
        int[] iArr2 = this.f102588Q;
        if (i4 < iArr2.length || iArr2.length - i3 > 1000) {
            if (i3 == 0) {
                int[] iArr3 = IntArraySet.EMPTY_INT_ARRAY;
                this.f102588Q = iArr3;
                this.f102589Z = iArr3;
                this.f102592k0 = f102577H0;
                this.f102603t0 = null;
            } else {
                this.f102588Q = Arrays.copyOf(iArr2, i3);
                this.f102589Z = Arrays.copyOf(this.f102589Z, this.f102587O);
                this.f102592k0 = (String[]) Arrays.copyOf(this.f102592k0, this.f102587O);
            }
            SimpleType[] simpleTypeArr = this.f102603t0;
            if (simpleTypeArr != null) {
                this.f102603t0 = (SimpleType[]) Arrays.copyOf(simpleTypeArr, this.f102587O);
            }
        }
        int i5 = this.f102605u0;
        int i6 = i5 * 3;
        NamespaceMap[] namespaceMapArr = this.f102607v0;
        if (i6 < namespaceMapArr.length) {
            this.f102607v0 = (NamespaceMap[]) Arrays.copyOf(namespaceMapArr, i5);
        }
        this.f102579A0.condense();
        statistics.updateStatistics(this.f102593l, this.f102587O, this.f102605u0, this.f102590j.length());
    }

    /* renamed from: g */
    public final void m64558g(int i) {
        int length = this.f102588Q.length;
        int i2 = this.f102587O;
        if (length < i2 + i) {
            int max = Math.max(i2 + i, i2 * 2);
            if (max == 0) {
                max = i + 10;
            }
            this.f102588Q = Arrays.copyOf(this.f102588Q, max);
            this.f102589Z = Arrays.copyOf(this.f102589Z, max);
            this.f102592k0 = (String[]) Arrays.copyOf(this.f102592k0, max);
            SimpleType[] simpleTypeArr = this.f102603t0;
            if (simpleTypeArr != null) {
                this.f102603t0 = (SimpleType[]) Arrays.copyOf(simpleTypeArr, max);
            }
            AtomicSequence[] atomicSequenceArr = this.f102599q0;
            if (atomicSequenceArr != null) {
                this.f102599q0 = (AtomicSequence[]) Arrays.copyOf(atomicSequenceArr, max);
            }
        }
    }

    public int[] getAlphaArray() {
        return this.f102596o;
    }

    public int[] getAttributeNameCodeArray() {
        return this.f102589Z;
    }

    public int[] getAttributeParentArray() {
        return this.f102588Q;
    }

    public SimpleType[] getAttributeTypeArray() {
        return this.f102603t0;
    }

    public String[] getAttributeValueArray() {
        return this.f102592k0;
    }

    public int[] getBetaArray() {
        return this.f102597p;
    }

    public LargeTextBuffer getCharacterBuffer() {
        return this.f102590j;
    }

    public int getColumnNumber(int i) {
        if (this.f102611x0 == null) {
            return -1;
        }
        while (i >= 0) {
            int i2 = this.f102611x0[i];
            if (i2 > 0) {
                return i2;
            }
            i--;
        }
        return -1;
    }

    public UnicodeString getCommentBuffer() {
        return this.f102591k;
    }

    public NodeInfo getCopiedFrom() {
        return this.f102583E0;
    }

    @Override // net.p110sf.saxon.tree.tiny.NodeVectorTree
    public int getFingerprint(int i) {
        int i2 = this.f102598q[i];
        if (i2 == -1) {
            return -1;
        }
        return 1048575 & i2;
    }

    public int getLineNumber(int i) {
        if (this.f102609w0 == null) {
            return -1;
        }
        while (i >= 0) {
            int i2 = this.f102609w0[i];
            if (i2 > 0) {
                return i2;
            }
            i--;
        }
        return -1;
    }

    public synchronized Map<String, IntSet> getLocalNameIndex() {
        if (this.f102586J == null) {
            this.f102586J = new HashMap();
            IntHashSet intHashSet = new IntHashSet();
            for (int i = 0; i < this.f102593l; i++) {
                if ((this.nodeKind[i] & 15) == 1) {
                    int i2 = this.f102598q[i] & 1048575;
                    if (!intHashSet.contains(i2)) {
                        String localName = getNamePool().getLocalName(i2);
                        intHashSet.add(i2);
                        IntSet intSet = this.f102586J.get(localName);
                        if (intSet == null) {
                            this.f102586J.put(localName, new IntSingletonSet(i2));
                        } else {
                            if (!intSet.isMutable()) {
                                intSet = intSet.mutableCopy();
                            }
                            intSet.add(i2);
                            this.f102586J.put(localName, intSet);
                        }
                    }
                }
            }
        }
        return this.f102586J;
    }

    public int getNameCode(int i) {
        return this.f102598q[i];
    }

    @Override // net.p110sf.saxon.tree.tiny.NodeVectorTree
    public int[] getNameCodeArray() {
        return this.f102598q;
    }

    public NamePool getNamePool() {
        return getConfiguration().getNamePool();
    }

    public NamespaceBinding[] getNamespaceBindings() {
        throw new UnsupportedOperationException();
    }

    public NamespaceMap[] getNamespaceMaps() {
        return this.f102607v0;
    }

    public int[] getNamespaceParentArray() {
        throw new UnsupportedOperationException();
    }

    public int[] getNextPointerArray() {
        return this.f102595n;
    }

    public short[] getNodeDepthArray() {
        return this.f102594m;
    }

    @Override // net.p110sf.saxon.tree.tiny.NodeVectorTree
    public int getNodeKind(int i) {
        byte b = this.nodeKind[i];
        if (b == 4) {
            return 3;
        }
        return b;
    }

    @Override // net.p110sf.saxon.tree.tiny.NodeVectorTree
    public byte[] getNodeKindArray() {
        return this.nodeKind;
    }

    public int getNumberOfAttributes() {
        return this.f102587O;
    }

    public int getNumberOfNamespaces() {
        return this.f102605u0;
    }

    public int getNumberOfNodes() {
        return this.f102593l;
    }

    public String getPrefix(int i) {
        int i2 = this.f102598q[i] >> 20;
        if (i2 > 0) {
            return this.f102579A0.getPrefix(i2);
        }
        if (i2 == 0) {
            return "";
        }
        return null;
    }

    public PrefixPool getPrefixPool() {
        return this.f102579A0;
    }

    @Override // net.p110sf.saxon.om.GenericTreeInfo, net.p110sf.saxon.om.TreeInfo
    public NodeInfo getRootNode() {
        if (getNodeKind(0) != 9) {
            return getNode(0);
        }
        TinyDocumentImpl tinyDocumentImpl = this.f102580B0;
        if (tinyDocumentImpl != null) {
            return tinyDocumentImpl;
        }
        TinyDocumentImpl tinyDocumentImpl2 = new TinyDocumentImpl(this);
        this.f102580B0 = tinyDocumentImpl2;
        return tinyDocumentImpl2;
    }

    public SchemaType getSchemaType(int i) {
        SchemaType[] schemaTypeArr = this.f102601s;
        return schemaTypeArr == null ? Untyped.getInstance() : schemaTypeArr[i];
    }

    public String getSystemId(int i) {
        SystemIdMap systemIdMap = this.f102613y0;
        if (systemIdMap == null) {
            return null;
        }
        return systemIdMap.getSystemId(i);
    }

    public int getTypeAnnotation(int i) {
        SchemaType[] schemaTypeArr = this.f102601s;
        if (schemaTypeArr == null) {
            return 630;
        }
        return schemaTypeArr[i].getFingerprint();
    }

    public SchemaType[] getTypeArray() {
        return this.f102601s;
    }

    public AtomicSequence getTypedValueOfAttribute(TinyAttributeImpl tinyAttributeImpl, int i) throws XPathException {
        AtomicSequence atomicSequence;
        if (this.f102603t0 == null) {
            return new StringValue(this.f102592k0[i], BuiltInAtomicType.UNTYPED_ATOMIC);
        }
        AtomicSequence[] atomicSequenceArr = this.f102599q0;
        if (atomicSequenceArr != null && (atomicSequence = atomicSequenceArr[i]) != null) {
            return atomicSequence;
        }
        SimpleType m64565n = m64565n(i);
        BuiltInAtomicType builtInAtomicType = BuiltInAtomicType.UNTYPED_ATOMIC;
        if (m64565n.equals(builtInAtomicType)) {
            return new StringValue(this.f102592k0[i], builtInAtomicType);
        }
        if (m64565n.equals(BuiltInAtomicType.STRING)) {
            return new StringValue(this.f102592k0[i]);
        }
        if (m64565n.equals(BuiltInAtomicType.ANY_URI)) {
            return new AnyURIValue(this.f102592k0[i].toString());
        }
        if (tinyAttributeImpl == null) {
            tinyAttributeImpl = new TinyAttributeImpl(this, i);
        }
        AtomicSequence atomize = m64565n.atomize(tinyAttributeImpl);
        if (this.f102614z) {
            if (this.f102599q0 == null) {
                this.f102599q0 = new AtomicSequence[this.f102588Q.length];
            }
            this.f102599q0[i] = atomize;
        }
        return atomize;
    }

    public AtomicSequence getTypedValueOfElement(TinyElementImpl tinyElementImpl) throws XPathException {
        AtomicSequence atomicSequence;
        int i = tinyElementImpl.nodeNr;
        AtomicSequence[] atomicSequenceArr = this.f102602t;
        if (atomicSequenceArr != null && (atomicSequence = atomicSequenceArr[i]) != null) {
            return atomicSequence;
        }
        SchemaType schemaType = getSchemaType(i);
        int fingerprint = schemaType.getFingerprint();
        if (fingerprint == 630 || fingerprint == 631 || fingerprint == 572) {
            return StringValue.makeUntypedAtomic(TinyParentNodeImpl.getStringValue(this, i));
        }
        if (fingerprint == 513) {
            return new StringValue(TinyParentNodeImpl.getStringValue(this, i));
        }
        if (fingerprint == 529) {
            return new AnyURIValue(TinyParentNodeImpl.getStringValue(this, i));
        }
        AtomicSequence atomize = schemaType.atomize(tinyElementImpl);
        if (this.f102614z) {
            if (this.f102602t == null) {
                this.f102602t = new AtomicSequence[this.nodeKind.length];
            }
            this.f102602t[i] = atomize;
        }
        return atomize;
    }

    @Override // net.p110sf.saxon.om.GenericTreeInfo, net.p110sf.saxon.om.TreeInfo
    public String[] getUnparsedEntity(String str) {
        HashMap<String, String[]> hashMap = this.f102582D0;
        if (hashMap == null) {
            return null;
        }
        return hashMap.get(str);
    }

    @Override // net.p110sf.saxon.om.GenericTreeInfo, net.p110sf.saxon.om.TreeInfo
    public Iterator<String> getUnparsedEntityNames() {
        HashMap<String, String[]> hashMap = this.f102582D0;
        return hashMap == null ? Collections.emptyIterator() : hashMap.keySet().iterator();
    }

    /* renamed from: h */
    public final void m64559h(int i) {
        int length = this.f102607v0.length;
        int i2 = this.f102605u0;
        if (length < i2 + i) {
            int max = Math.max(i2 * 2, i2 + i);
            if (max == 0) {
                max = 10;
            }
            this.f102607v0 = (NamespaceMap[]) Arrays.copyOf(this.f102607v0, max);
        }
    }

    public boolean hasXmlSpacePreserveAttribute() {
        for (int i = 0; i < this.f102587O; i++) {
            if ((this.f102589Z[i] & 1048575) == 386 && "preserve".equals(this.f102592k0[i].toString())) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: i */
    public final void m64560i(short s, int i) {
        int length = this.nodeKind.length;
        int i2 = this.f102593l;
        if (length < i2 + i) {
            int max = s == 11 ? i2 + 1 : Math.max(i2 * 2, i2 + i);
            this.nodeKind = Arrays.copyOf(this.nodeKind, max);
            this.f102595n = Arrays.copyOf(this.f102595n, max);
            this.f102594m = Arrays.copyOf(this.f102594m, max);
            this.f102596o = Arrays.copyOf(this.f102596o, max);
            this.f102597p = Arrays.copyOf(this.f102597p, max);
            this.f102598q = Arrays.copyOf(this.f102598q, max);
            SchemaType[] schemaTypeArr = this.f102601s;
            if (schemaTypeArr != null) {
                this.f102601s = (SchemaType[]) Arrays.copyOf(schemaTypeArr, max);
            }
            AtomicSequence[] atomicSequenceArr = this.f102602t;
            if (atomicSequenceArr != null) {
                this.f102602t = (AtomicSequence[]) Arrays.copyOf(atomicSequenceArr, max);
            }
            int[] iArr = this.f102609w0;
            if (iArr != null) {
                this.f102609w0 = Arrays.copyOf(iArr, max);
                this.f102611x0 = Arrays.copyOf(this.f102611x0, max);
            }
        }
    }

    public void indexIDElement(NodeInfo nodeInfo, int i) {
        String obj = Whitespace.trim(TinyParentNodeImpl.getStringValue(this, i).tidy()).toString();
        if (nodeInfo.getNodeKind() == 9 && NameChecker.isValidNCName(obj)) {
            m64569s(getNode(i), obj);
        }
    }

    public boolean isDefaultedAttribute(int i) {
        IntSet intSet = this.f102610x;
        return intSet != null && intSet.contains(i);
    }

    public boolean isIdAttribute(int i) {
        try {
            if (this.f102603t0 != null) {
                return m64565n(i).isIdType();
            }
            return false;
        } catch (MissingComponentException unused) {
            return false;
        }
    }

    public boolean isIdElement(int i) {
        try {
            if (getSchemaType(i).isIdType()) {
                return getTypedValueOfElement(i).getLength() == 1;
            }
            return false;
        } catch (XPathException unused) {
            return false;
        }
    }

    public boolean isIdrefAttribute(int i) {
        IntSet intSet = this.f102606v;
        return intSet != null && intSet.contains(i);
    }

    public boolean isIdrefElement(int i) {
        SchemaType schemaType = getSchemaType(i);
        try {
            if (schemaType.isIdRefType()) {
                if (schemaType != BuiltInAtomicType.IDREF && schemaType != BuiltInListType.IDREFS) {
                    Iterator<AtomicValue> it2 = getTypedValueOfElement(i).iterator();
                    while (it2.hasNext()) {
                        if (it2.next().getItemType().isIdRefType()) {
                        }
                    }
                }
                return true;
            }
        } catch (XPathException | MissingComponentException unused) {
        }
        return false;
    }

    public boolean isNilled(int i) {
        IntSet intSet = this.f102608w;
        return intSet != null && intSet.contains(i);
    }

    public boolean isTopWithinEntity(int i) {
        IntSet intSet = this.f102612y;
        return intSet != null && intSet.contains(i);
    }

    @Override // net.p110sf.saxon.om.TreeInfo
    public boolean isTyped() {
        return this.f102601s != null;
    }

    public boolean isUsesNamespaces() {
        return this.f102615z0;
    }

    /* renamed from: j */
    public void m64561j() {
        int[] iArr = this.f102600r;
        if (iArr == null || iArr.length < this.f102593l) {
            m64568q();
        }
    }

    /* renamed from: k */
    public AtomicValue m64562k(int i) {
        byte[] bArr = this.nodeKind;
        short s = bArr[i];
        if (s != 1) {
            if (s == 3) {
                return new StringValue(TinyTextImpl.getStringValue(this, i));
            }
            if (s == 4) {
                return StringValue.makeUntypedAtomic(new CompressedWhitespace((this.f102597p[i] & 4294967295L) | (this.f102596o[i] << 32)));
            }
            if (s == 7 || s == 8) {
                int i2 = this.f102596o[i];
                int i3 = this.f102597p[i];
                if (i3 == 0) {
                    return StringValue.ZERO_LENGTH_UNTYPED;
                }
                char[] cArr = new char[i3];
                return new StringValue(this.f102591k.substring(i2, i2 + i3));
            }
            if (s != 9) {
                throw new IllegalStateException("Unknown node kind");
            }
        }
        short[] sArr = this.f102594m;
        short s2 = sArr[i];
        int i4 = i + 1;
        if (sArr[i4] <= s2) {
            return StringValue.ZERO_LENGTH_UNTYPED;
        }
        byte b = bArr[i4];
        if (b == 3 && sArr[i4 + 1] <= s2) {
            int i5 = this.f102597p[i4];
            int i6 = this.f102596o[i4];
            return StringValue.makeUntypedAtomic(this.f102590j.substring(i6, i5 + i6));
        }
        if (b == 4 && sArr[i4 + 1] <= s2) {
            return StringValue.makeUntypedAtomic(new CompressedWhitespace((this.f102597p[i4] & 4294967295L) | (this.f102596o[i4] << 32)));
        }
        UnicodeBuilder unicodeBuilder = new UnicodeBuilder();
        while (i4 < this.f102593l && this.f102594m[i4] > s2) {
            byte b2 = this.nodeKind[i4];
            if (b2 == 3) {
                unicodeBuilder.accept(TinyTextImpl.getStringValue(this, i4));
            } else if (b2 == 4) {
                WhitespaceTextImpl.appendStringValue(this, i4, unicodeBuilder);
            }
            i4++;
        }
        return unicodeBuilder.toStringItem(BuiltInAtomicType.UNTYPED_ATOMIC);
    }

    /* renamed from: l */
    public int m64563l(int i) {
        SimpleType[] simpleTypeArr = this.f102603t0;
        return simpleTypeArr == null ? StandardNames.XS_UNTYPED_ATOMIC : simpleTypeArr[i].getFingerprint();
    }

    /* renamed from: m */
    public TinyAttributeImpl m64564m(int i) {
        return new TinyAttributeImpl(this, i);
    }

    public void markDefaultedAttribute(int i) {
        if (this.f102610x == null) {
            this.f102610x = new IntHashSet();
        }
        this.f102610x.add(i);
    }

    public void markTopWithinEntity(int i) {
        if (this.f102612y == null) {
            this.f102612y = new IntHashSet();
        }
        this.f102612y.add(i);
    }

    /* renamed from: n */
    public SimpleType m64565n(int i) {
        SimpleType[] simpleTypeArr = this.f102603t0;
        return simpleTypeArr == null ? BuiltInAtomicType.UNTYPED_ATOMIC : simpleTypeArr[i];
    }

    /* renamed from: o */
    public String m64566o() {
        return this.f102585G0;
    }

    /* renamed from: p */
    public final void m64567p() {
        if (this.f102603t0 == null) {
            SimpleType[] simpleTypeArr = new SimpleType[this.f102588Q.length];
            this.f102603t0 = simpleTypeArr;
            Arrays.fill(simpleTypeArr, 0, this.f102587O, BuiltInAtomicType.UNTYPED_ATOMIC);
        }
    }

    /* renamed from: q */
    public final synchronized void m64568q() {
        int i = this.f102593l;
        int[] iArr = new int[i];
        Arrays.fill(iArr, 0, i, -1);
        for (int i2 = 0; i2 < this.f102593l; i2++) {
            int i3 = this.f102595n[i2];
            if (i3 > i2) {
                iArr[i3] = i2;
            }
        }
        this.f102600r = iArr;
    }

    /* renamed from: s */
    public void m64569s(NodeInfo nodeInfo, String str) {
        if (this.f102581C0 == null) {
            this.f102581C0 = new HashMap<>(256);
        }
        this.f102581C0.putIfAbsent(str, nodeInfo);
    }

    @Override // net.p110sf.saxon.om.GenericTreeInfo, net.p110sf.saxon.om.TreeInfo
    public NodeInfo selectID(String str, boolean z) {
        HashMap<String, NodeInfo> hashMap = this.f102581C0;
        if (hashMap == null) {
            return null;
        }
        NodeInfo nodeInfo = hashMap.get(str);
        return (nodeInfo != null && z && nodeInfo.isId() && nodeInfo.getStringValue().equals(str)) ? nodeInfo.getParent() : nodeInfo;
    }

    @Override // net.p110sf.saxon.om.GenericTreeInfo
    public void setConfiguration(Configuration configuration) {
        super.setConfiguration(configuration);
        this.f102614z = configuration.isLicensedFeature(1) && configuration.getBooleanProperty(Feature.USE_TYPED_VALUE_CACHE);
    }

    public void setCopiedFrom(NodeInfo nodeInfo) {
        this.f102583E0 = nodeInfo;
    }

    public void setLineNumbering() {
        int[] iArr = new int[this.nodeKind.length];
        this.f102609w0 = iArr;
        Arrays.fill(iArr, -1);
        int[] iArr2 = new int[this.nodeKind.length];
        this.f102611x0 = iArr2;
        Arrays.fill(iArr2, -1);
    }

    public void setNilled(int i) {
        if (this.f102608w == null) {
            this.f102608w = new IntHashSet();
        }
        this.f102608w.add(i);
    }

    public void showSize() {
        System.err.println("Tree size: " + this.f102593l + " nodes, " + this.f102590j.length() + " characters, " + this.f102587O + " attributes");
    }

    /* renamed from: t */
    public void m64570t(int i, SchemaType schemaType) {
        if (schemaType.equals(Untyped.getInstance())) {
            return;
        }
        if (this.f102601s == null) {
            byte[] bArr = this.nodeKind;
            SchemaType[] schemaTypeArr = new SchemaType[bArr.length];
            this.f102601s = schemaTypeArr;
            Arrays.fill(schemaTypeArr, 0, bArr.length, Untyped.getInstance());
        }
        this.f102601s[i] = schemaType;
    }

    /* renamed from: u */
    public void m64571u(int i, int i2, int i3) {
        int[] iArr = this.f102609w0;
        if (iArr != null) {
            iArr[i] = i2;
            this.f102611x0[i] = i3;
        }
    }

    /* renamed from: v */
    public void m64572v(int i, String str) {
        if (str == null) {
            str = "";
        }
        if (this.f102613y0 == null) {
            this.f102613y0 = new SystemIdMap();
        }
        this.f102613y0.setSystemId(i, str);
    }

    /* renamed from: w */
    public void m64573w(String str) {
        this.f102585G0 = str;
    }

    /* renamed from: x */
    public void m64574x(String str, String str2, String str3) {
        if (this.f102582D0 == null) {
            this.f102582D0 = new HashMap<>(20);
        }
        this.f102582D0.put(str, new String[]{str2, str3});
    }

    @Override // net.p110sf.saxon.tree.tiny.NodeVectorTree
    public final TinyNodeImpl getNode(int i) {
        short s = this.nodeKind[i];
        if (s == 1) {
            return new TinyElementImpl(this, i);
        }
        if (s == 17) {
            return new TinyTextualElement(this, i);
        }
        if (s == 3) {
            return new TinyTextImpl(this, i);
        }
        if (s == 4) {
            return new WhitespaceTextImpl(this, i);
        }
        if (s == 7) {
            return new tin(this, i);
        }
        if (s == 8) {
            return new rin(this, i);
        }
        if (s == 9) {
            return (TinyDocumentImpl) getRootNode();
        }
        if (s == 11) {
            throw new IllegalArgumentException("Attempting to treat a stopper entry as a node");
        }
        if (s != 12) {
            throw new IllegalStateException("Unknown node kind " + ((int) this.nodeKind[i]));
        }
        throw new IllegalArgumentException("Attempting to treat a parent pointer as a node");
    }

    public AtomicSequence getTypedValueOfElement(int i) throws XPathException {
        AtomicSequence atomicSequence;
        AtomicSequence[] atomicSequenceArr = this.f102602t;
        if (atomicSequenceArr != null && (atomicSequence = atomicSequenceArr[i]) != null) {
            return atomicSequence;
        }
        SchemaType schemaType = getSchemaType(i);
        int fingerprint = schemaType.getFingerprint();
        if (fingerprint == 631 || fingerprint == 630) {
            return StringValue.makeUntypedAtomic(TinyParentNodeImpl.getStringValue(this, i));
        }
        if (fingerprint == 513) {
            return new StringValue(TinyParentNodeImpl.getStringValue(this, i).tidy());
        }
        if (fingerprint == 529) {
            return new AnyURIValue(TinyParentNodeImpl.getStringValue(this, i));
        }
        if (fingerprint == 560) {
            return new StringValue(TinyParentNodeImpl.getStringValue(this, i).tidy(), BuiltInAtomicType.f102764ID);
        }
        AtomicSequence atomize = schemaType.atomize(getNode(i));
        if (this.f102614z) {
            if (this.f102602t == null) {
                this.f102602t = new AtomicSequence[this.nodeKind.length];
            }
            this.f102602t[i] = atomize;
        }
        return atomize;
    }

    public static synchronized void diagnosticDump(NodeInfo nodeInfo) {
        synchronized (TinyTree.class) {
            if (nodeInfo instanceof TinyNodeImpl) {
                TinyTree tinyTree = ((TinyNodeImpl) nodeInfo).tree;
                System.err.println("Tree containing node " + ((TinyNodeImpl) nodeInfo).nodeNr);
                tinyTree.diagnosticDump();
            } else {
                System.err.println("Node is not in a TinyTree");
            }
        }
    }
}
