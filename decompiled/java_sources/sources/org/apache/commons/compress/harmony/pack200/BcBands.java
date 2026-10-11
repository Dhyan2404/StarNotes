package org.apache.commons.compress.harmony.pack200;

import java.io.IOException;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.function.Function;
import java.util.stream.Collectors;
import org.apache.commons.collections4.IteratorUtils;
import org.apache.commons.compress.harmony.pack200.CPMethodOrField;
import org.objectweb.asm.Label;

/* loaded from: classes12.dex */
public class BcBands extends BandSet {

    /* renamed from: J */
    public static final int f106453J = 197;

    /* renamed from: K */
    public static final int f106454K = 42;

    /* renamed from: L */
    public static final int f106455L = 196;

    /* renamed from: M */
    public static final int f106456M = 185;

    /* renamed from: N */
    public static final int f106457N = 170;

    /* renamed from: O */
    public static final int f106458O = 132;

    /* renamed from: P */
    public static final int f106459P = 171;

    /* renamed from: Q */
    public static final int f106460Q = 255;

    /* renamed from: A */
    public List f106461A;

    /* renamed from: B */
    public String f106462B;

    /* renamed from: C */
    public String f106463C;

    /* renamed from: D */
    public String f106464D;

    /* renamed from: E */
    public final IntList f106465E;

    /* renamed from: F */
    public final Map<Label, Integer> f106466F;

    /* renamed from: G */
    public int f106467G;

    /* renamed from: H */
    public int f106468H;

    /* renamed from: I */
    public final IntList f106469I;

    /* renamed from: e */
    public final CpBands f106470e;

    /* renamed from: f */
    public final Segment f106471f;

    /* renamed from: g */
    public final IntList f106472g;

    /* renamed from: h */
    public final IntList f106473h;

    /* renamed from: i */
    public final IntList f106474i;

    /* renamed from: j */
    public final IntList f106475j;

    /* renamed from: k */
    public final IntList f106476k;

    /* renamed from: l */
    public final IntList f106477l;

    /* renamed from: m */
    public final List f106478m;

    /* renamed from: n */
    public final List<CPInt> f106479n;

    /* renamed from: o */
    public final List<CPFloat> f106480o;

    /* renamed from: p */
    public final List<CPLong> f106481p;

    /* renamed from: q */
    public final List<CPDouble> f106482q;

    /* renamed from: r */
    public final List<CPString> f106483r;

    /* renamed from: s */
    public final List<CPClass> f106484s;

    /* renamed from: t */
    public final List<CPMethodOrField> f106485t;

    /* renamed from: u */
    public final List<CPMethodOrField> f106486u;

    /* renamed from: v */
    public final List<CPMethodOrField> f106487v;

    /* renamed from: w */
    public List f106488w;

    /* renamed from: x */
    public final List f106489x;

    /* renamed from: y */
    public List f106490y;

    /* renamed from: z */
    public List f106491z;

    public BcBands(CpBands cpBands, Segment segment, int i) {
        super(i, segment.getSegmentHeader());
        this.f106472g = new IntList();
        this.f106473h = new IntList();
        this.f106474i = new IntList();
        this.f106475j = new IntList();
        this.f106476k = new IntList();
        this.f106477l = new IntList();
        this.f106478m = new ArrayList();
        this.f106479n = new ArrayList();
        this.f106480o = new ArrayList();
        this.f106481p = new ArrayList();
        this.f106482q = new ArrayList();
        this.f106483r = new ArrayList();
        this.f106484s = new ArrayList();
        this.f106485t = new ArrayList();
        this.f106486u = new ArrayList();
        this.f106487v = new ArrayList();
        this.f106488w = new ArrayList();
        this.f106489x = new ArrayList();
        this.f106490y = new ArrayList();
        this.f106491z = new ArrayList();
        this.f106461A = new ArrayList();
        this.f106465E = new IntList();
        this.f106466F = new HashMap();
        this.f106469I = new IntList();
        this.f106470e = cpBands;
        this.f106471f = segment;
    }

    public void finaliseBands() {
        this.f106488w = m66895l(this.f106488w);
        this.f106490y = m66895l(this.f106490y);
        this.f106491z = m66895l(this.f106491z);
        this.f106461A = m66896m(this.f106461A);
    }

    /* renamed from: l */
    public final List<Integer> m66895l(List<CPMethodOrField> list) {
        return (List) list.stream().collect(Collectors.mapping(new Function() { // from class: com.sunia.HTREnginev2.po
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return Integer.valueOf(((CPMethodOrField) obj).getIndexInClass());
            }
        }, Collectors.toList()));
    }

    /* renamed from: m */
    public final List<Integer> m66896m(List<CPMethodOrField> list) {
        return (List) list.stream().collect(Collectors.mapping(new Function() { // from class: com.sunia.HTREnginev2.qo
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return Integer.valueOf(((CPMethodOrField) obj).getIndexInClassForConstructor());
            }
        }, Collectors.toList()));
    }

    /* renamed from: n */
    public final void m66897n() {
        if (this.f106465E.isEmpty()) {
            this.f106465E.add(0);
        }
        this.f106468H++;
        for (int size = this.f106465E.size(); size < this.f106467G; size++) {
            this.f106465E.add(-1);
        }
        this.f106465E.add(this.f106468H);
    }

    @Override // org.apache.commons.compress.harmony.pack200.BandSet
    public void pack(OutputStream outputStream) throws IOException, Pack200Exception {
        PackingUtils.log("Writing byte code bands...");
        int[] array = this.f106472g.toArray();
        BHSDCodec bHSDCodec = Codec.BYTE1;
        byte[] encodeBandInt = encodeBandInt("bcCodes", array, bHSDCodec);
        outputStream.write(encodeBandInt);
        PackingUtils.log("Wrote " + encodeBandInt.length + " bytes from bcCodes[" + this.f106472g.size() + IteratorUtils.f104924b);
        int[] array2 = this.f106473h.toArray();
        BHSDCodec bHSDCodec2 = Codec.UNSIGNED5;
        byte[] encodeBandInt2 = encodeBandInt("bcCaseCount", array2, bHSDCodec2);
        outputStream.write(encodeBandInt2);
        PackingUtils.log("Wrote " + encodeBandInt2.length + " bytes from bcCaseCount[" + this.f106473h.size() + IteratorUtils.f104924b);
        int[] array3 = this.f106474i.toArray();
        BHSDCodec bHSDCodec3 = Codec.DELTA5;
        byte[] encodeBandInt3 = encodeBandInt("bcCaseValue", array3, bHSDCodec3);
        outputStream.write(encodeBandInt3);
        PackingUtils.log("Wrote " + encodeBandInt3.length + " bytes from bcCaseValue[" + this.f106474i.size() + IteratorUtils.f104924b);
        byte[] encodeBandInt4 = encodeBandInt("bcByte", this.f106475j.toArray(), bHSDCodec);
        outputStream.write(encodeBandInt4);
        PackingUtils.log("Wrote " + encodeBandInt4.length + " bytes from bcByte[" + this.f106475j.size() + IteratorUtils.f104924b);
        byte[] encodeBandInt5 = encodeBandInt("bcShort", this.f106476k.toArray(), bHSDCodec3);
        outputStream.write(encodeBandInt5);
        PackingUtils.log("Wrote " + encodeBandInt5.length + " bytes from bcShort[" + this.f106476k.size() + IteratorUtils.f104924b);
        byte[] encodeBandInt6 = encodeBandInt("bcLocal", this.f106477l.toArray(), bHSDCodec2);
        outputStream.write(encodeBandInt6);
        PackingUtils.log("Wrote " + encodeBandInt6.length + " bytes from bcLocal[" + this.f106477l.size() + IteratorUtils.f104924b);
        byte[] encodeBandInt7 = encodeBandInt("bcLabel", integerListToArray(this.f106478m), Codec.BRANCH5);
        outputStream.write(encodeBandInt7);
        PackingUtils.log("Wrote " + encodeBandInt7.length + " bytes from bcLabel[" + this.f106478m.size() + IteratorUtils.f104924b);
        byte[] encodeBandInt8 = encodeBandInt("bcIntref", cpEntryListToArray(this.f106479n), bHSDCodec3);
        outputStream.write(encodeBandInt8);
        PackingUtils.log("Wrote " + encodeBandInt8.length + " bytes from bcIntref[" + this.f106479n.size() + IteratorUtils.f104924b);
        byte[] encodeBandInt9 = encodeBandInt("bcFloatRef", cpEntryListToArray(this.f106480o), bHSDCodec3);
        outputStream.write(encodeBandInt9);
        PackingUtils.log("Wrote " + encodeBandInt9.length + " bytes from bcFloatRef[" + this.f106480o.size() + IteratorUtils.f104924b);
        byte[] encodeBandInt10 = encodeBandInt("bcLongRef", cpEntryListToArray(this.f106481p), bHSDCodec3);
        outputStream.write(encodeBandInt10);
        PackingUtils.log("Wrote " + encodeBandInt10.length + " bytes from bcLongRef[" + this.f106481p.size() + IteratorUtils.f104924b);
        byte[] encodeBandInt11 = encodeBandInt("bcDoubleRef", cpEntryListToArray(this.f106482q), bHSDCodec3);
        outputStream.write(encodeBandInt11);
        PackingUtils.log("Wrote " + encodeBandInt11.length + " bytes from bcDoubleRef[" + this.f106482q.size() + IteratorUtils.f104924b);
        byte[] encodeBandInt12 = encodeBandInt("bcStringRef", cpEntryListToArray(this.f106483r), bHSDCodec3);
        outputStream.write(encodeBandInt12);
        PackingUtils.log("Wrote " + encodeBandInt12.length + " bytes from bcStringRef[" + this.f106483r.size() + IteratorUtils.f104924b);
        byte[] encodeBandInt13 = encodeBandInt("bcClassRef", cpEntryOrNullListToArray(this.f106484s), bHSDCodec2);
        outputStream.write(encodeBandInt13);
        PackingUtils.log("Wrote " + encodeBandInt13.length + " bytes from bcClassRef[" + this.f106484s.size() + IteratorUtils.f104924b);
        byte[] encodeBandInt14 = encodeBandInt("bcFieldRef", cpEntryListToArray(this.f106485t), bHSDCodec3);
        outputStream.write(encodeBandInt14);
        PackingUtils.log("Wrote " + encodeBandInt14.length + " bytes from bcFieldRef[" + this.f106485t.size() + IteratorUtils.f104924b);
        byte[] encodeBandInt15 = encodeBandInt("bcMethodRef", cpEntryListToArray(this.f106486u), bHSDCodec2);
        outputStream.write(encodeBandInt15);
        PackingUtils.log("Wrote " + encodeBandInt15.length + " bytes from bcMethodRef[" + this.f106486u.size() + IteratorUtils.f104924b);
        byte[] encodeBandInt16 = encodeBandInt("bcIMethodRef", cpEntryListToArray(this.f106487v), bHSDCodec3);
        outputStream.write(encodeBandInt16);
        PackingUtils.log("Wrote " + encodeBandInt16.length + " bytes from bcIMethodRef[" + this.f106487v.size() + IteratorUtils.f104924b);
        byte[] encodeBandInt17 = encodeBandInt("bcThisField", integerListToArray(this.f106488w), bHSDCodec2);
        outputStream.write(encodeBandInt17);
        PackingUtils.log("Wrote " + encodeBandInt17.length + " bytes from bcThisField[" + this.f106488w.size() + IteratorUtils.f104924b);
        byte[] encodeBandInt18 = encodeBandInt("bcSuperField", integerListToArray(this.f106489x), bHSDCodec2);
        outputStream.write(encodeBandInt18);
        PackingUtils.log("Wrote " + encodeBandInt18.length + " bytes from bcSuperField[" + this.f106489x.size() + IteratorUtils.f104924b);
        byte[] encodeBandInt19 = encodeBandInt("bcThisMethod", integerListToArray(this.f106490y), bHSDCodec2);
        outputStream.write(encodeBandInt19);
        PackingUtils.log("Wrote " + encodeBandInt19.length + " bytes from bcThisMethod[" + this.f106490y.size() + IteratorUtils.f104924b);
        byte[] encodeBandInt20 = encodeBandInt("bcSuperMethod", integerListToArray(this.f106491z), bHSDCodec2);
        outputStream.write(encodeBandInt20);
        PackingUtils.log("Wrote " + encodeBandInt20.length + " bytes from bcSuperMethod[" + this.f106491z.size() + IteratorUtils.f104924b);
        byte[] encodeBandInt21 = encodeBandInt("bcInitRef", integerListToArray(this.f106461A), bHSDCodec2);
        outputStream.write(encodeBandInt21);
        PackingUtils.log("Wrote " + encodeBandInt21.length + " bytes from bcInitRef[" + this.f106461A.size() + IteratorUtils.f104924b);
    }

    public void setCurrentClass(String str, String str2) {
        this.f106462B = str;
        this.f106463C = str2;
    }

    public void visitEnd() {
        for (int i = 0; i < this.f106465E.size(); i++) {
            if (this.f106465E.get(i) == -1) {
                this.f106465E.remove(i);
                IntList intList = this.f106465E;
                int i2 = this.f106468H + 1;
                this.f106468H = i2;
                intList.add(i, i2);
            }
        }
        int i3 = this.f106468H;
        if (i3 != 0) {
            if (i3 + 1 != this.f106465E.size()) {
                throw new IllegalStateException("Mistake made with renumbering");
            }
            for (int size = this.f106478m.size() - 1; size >= 0; size--) {
                Object obj = this.f106478m.get(size);
                if (obj instanceof Integer) {
                    break;
                }
                if (obj instanceof Label) {
                    this.f106478m.remove(size);
                    this.f106478m.add(size, Integer.valueOf(this.f106465E.get(this.f106466F.get(obj).intValue()) - this.f106465E.get(this.f106469I.get(size))));
                }
            }
            this.f106472g.add(255);
            this.f106471f.getClassBands().doBciRenumbering(this.f106465E, this.f106466F);
            this.f106465E.clear();
            this.f106466F.clear();
            this.f106467G = 0;
            this.f106468H = 0;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x003f  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0047  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0035  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void visitFieldInsn(int r5, java.lang.String r6, java.lang.String r7, java.lang.String r8) {
        /*
            r4 = this;
            int r0 = r4.f106467G
            int r0 = r0 + 3
            r4.f106467G = r0
            r4.m66897n()
            org.apache.commons.compress.harmony.pack200.IntList r0 = r4.f106472g
            int r0 = r0.size()
            r1 = 42
            if (r0 <= 0) goto L2c
            org.apache.commons.compress.harmony.pack200.IntList r0 = r4.f106472g
            int r2 = r0.size()
            r3 = 1
            int r2 = r2 - r3
            int r0 = r0.get(r2)
            if (r0 != r1) goto L2c
            org.apache.commons.compress.harmony.pack200.IntList r0 = r4.f106472g
            int r2 = r0.size()
            int r2 = r2 - r3
            r0.remove(r2)
            goto L2d
        L2c:
            r3 = 0
        L2d:
            org.apache.commons.compress.harmony.pack200.CpBands r0 = r4.f106470e
            org.apache.commons.compress.harmony.pack200.CPMethodOrField r7 = r0.getCPField(r6, r7, r8)
            if (r3 == 0) goto L37
            int r5 = r5 + 7
        L37:
            java.lang.String r8 = r4.f106462B
            boolean r6 = r6.equals(r8)
            if (r6 == 0) goto L47
            int r5 = r5 + 24
            java.util.List r6 = r4.f106488w
            r6.add(r7)
            goto L55
        L47:
            if (r3 == 0) goto L50
            int r5 = r5 + (-7)
            org.apache.commons.compress.harmony.pack200.IntList r6 = r4.f106472g
            r6.add(r1)
        L50:
            java.util.List<org.apache.commons.compress.harmony.pack200.CPMethodOrField> r6 = r4.f106485t
            r6.add(r7)
        L55:
            org.apache.commons.compress.harmony.pack200.IntList r4 = r4.f106472g
            r4.add(r5)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.commons.compress.harmony.pack200.BcBands.visitFieldInsn(int, java.lang.String, java.lang.String, java.lang.String):void");
    }

    public void visitIincInsn(int i, int i2) {
        if (i > 255 || i2 > 255) {
            this.f106467G += 6;
            this.f106472g.add(196);
            this.f106472g.add(132);
            this.f106477l.add(i);
            this.f106476k.add(i2);
        } else {
            this.f106467G += 3;
            this.f106472g.add(132);
            this.f106477l.add(i);
            this.f106475j.add(i2 & 255);
        }
        m66897n();
    }

    public void visitInsn(int i) {
        if (i >= 202) {
            throw new IllegalArgumentException("Non-standard bytecode instructions not supported");
        }
        this.f106472g.add(i);
        this.f106467G++;
        m66897n();
    }

    /* JADX WARN: Code restructure failed: missing block: B:6:0x000a, code lost:
    
        if (r2 != 188) goto L11;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void visitIntInsn(int r2, int r3) {
        /*
            r1 = this;
            r0 = 16
            if (r2 == r0) goto L1e
            r0 = 17
            if (r2 == r0) goto Ld
            r0 = 188(0xbc, float:2.63E-43)
            if (r2 == r0) goto L1e
            goto L30
        Ld:
            org.apache.commons.compress.harmony.pack200.IntList r0 = r1.f106472g
            r0.add(r2)
            org.apache.commons.compress.harmony.pack200.IntList r2 = r1.f106476k
            r2.add(r3)
            int r2 = r1.f106467G
            int r2 = r2 + 3
            r1.f106467G = r2
            goto L30
        L1e:
            org.apache.commons.compress.harmony.pack200.IntList r0 = r1.f106472g
            r0.add(r2)
            org.apache.commons.compress.harmony.pack200.IntList r2 = r1.f106475j
            r3 = r3 & 255(0xff, float:3.57E-43)
            r2.add(r3)
            int r2 = r1.f106467G
            int r2 = r2 + 2
            r1.f106467G = r2
        L30:
            r1.m66897n()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.commons.compress.harmony.pack200.BcBands.visitIntInsn(int, int):void");
    }

    public void visitJumpInsn(int i, Label label) {
        this.f106472g.add(i);
        this.f106478m.add(label);
        this.f106469I.add(this.f106467G);
        this.f106467G += 3;
        m66897n();
    }

    public void visitLabel(Label label) {
        this.f106466F.put(label, Integer.valueOf(this.f106467G));
    }

    public void visitLdcInsn(Object obj) {
        CPConstant<?> constant = this.f106470e.getConstant(obj);
        if (this.f106471f.lastConstantHadWideIndex() || (constant instanceof CPLong) || (constant instanceof CPDouble)) {
            this.f106467G += 3;
            if (constant instanceof CPInt) {
                this.f106472g.add(237);
                this.f106479n.add((CPInt) constant);
            } else if (constant instanceof CPFloat) {
                this.f106472g.add(238);
                this.f106480o.add((CPFloat) constant);
            } else if (constant instanceof CPLong) {
                this.f106472g.add(20);
                this.f106481p.add((CPLong) constant);
            } else if (constant instanceof CPDouble) {
                this.f106472g.add(239);
                this.f106482q.add((CPDouble) constant);
            } else if (constant instanceof CPString) {
                this.f106472g.add(19);
                this.f106483r.add((CPString) constant);
            } else {
                if (!(constant instanceof CPClass)) {
                    throw new IllegalArgumentException("Constant should not be null");
                }
                this.f106472g.add(236);
                this.f106484s.add((CPClass) constant);
            }
        } else {
            this.f106467G += 2;
            if (constant instanceof CPInt) {
                this.f106472g.add(234);
                this.f106479n.add((CPInt) constant);
            } else if (constant instanceof CPFloat) {
                this.f106472g.add(235);
                this.f106480o.add((CPFloat) constant);
            } else if (constant instanceof CPString) {
                this.f106472g.add(18);
                this.f106483r.add((CPString) constant);
            } else if (constant instanceof CPClass) {
                this.f106472g.add(233);
                this.f106484s.add((CPClass) constant);
            }
        }
        m66897n();
    }

    public void visitLookupSwitchInsn(Label label, int[] iArr, Label[] labelArr) {
        this.f106472g.add(171);
        this.f106478m.add(label);
        this.f106469I.add(this.f106467G);
        this.f106473h.add(iArr.length);
        for (int i = 0; i < labelArr.length; i++) {
            this.f106474i.add(iArr[i]);
            this.f106478m.add(labelArr[i]);
            this.f106469I.add(this.f106467G);
        }
        int i2 = this.f106467G;
        this.f106467G = i2 + ((i2 + 1) % 4 != 0 ? 4 - ((i2 + 1) % 4) : 0) + 1 + 8 + (iArr.length * 8);
        m66897n();
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0053  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x007a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void visitMethodInsn(int r5, java.lang.String r6, java.lang.String r7, java.lang.String r8) {
        /*
            r4 = this;
            int r0 = r4.f106467G
            int r0 = r0 + 3
            r4.f106467G = r0
            switch(r5) {
                case 182: goto L23;
                case 183: goto L23;
                case 184: goto L23;
                case 185: goto Lb;
                default: goto L9;
            }
        L9:
            goto Le1
        Lb:
            int r0 = r0 + 2
            r4.f106467G = r0
            org.apache.commons.compress.harmony.pack200.CpBands r5 = r4.f106470e
            org.apache.commons.compress.harmony.pack200.CPMethodOrField r5 = r5.getCPIMethod(r6, r7, r8)
            java.util.List<org.apache.commons.compress.harmony.pack200.CPMethodOrField> r6 = r4.f106487v
            r6.add(r5)
            org.apache.commons.compress.harmony.pack200.IntList r5 = r4.f106472g
            r6 = 185(0xb9, float:2.59E-43)
            r5.add(r6)
            goto Le1
        L23:
            org.apache.commons.compress.harmony.pack200.IntList r0 = r4.f106472g
            int r0 = r0.size()
            r1 = 42
            if (r0 <= 0) goto L48
            org.apache.commons.compress.harmony.pack200.IntList r0 = r4.f106472g
            int r2 = r0.size()
            r3 = 1
            int r2 = r2 - r3
            int r0 = r0.get(r2)
            if (r0 != r1) goto L48
            org.apache.commons.compress.harmony.pack200.IntList r0 = r4.f106472g
            int r2 = r0.size()
            int r2 = r2 - r3
            r0.remove(r2)
            int r5 = r5 + 7
            goto L49
        L48:
            r3 = 0
        L49:
            java.lang.String r0 = r4.f106462B
            boolean r0 = r6.equals(r0)
            java.lang.String r2 = "<init>"
            if (r0 == 0) goto L7a
            int r5 = r5 + 24
            boolean r0 = r7.equals(r2)
            if (r0 == 0) goto L6e
            r0 = 207(0xcf, float:2.9E-43)
            if (r5 != r0) goto L6e
            java.util.List r5 = r4.f106461A
            org.apache.commons.compress.harmony.pack200.CpBands r0 = r4.f106470e
            org.apache.commons.compress.harmony.pack200.CPMethodOrField r6 = r0.getCPMethod(r6, r7, r8)
            r5.add(r6)
            r5 = 230(0xe6, float:3.22E-43)
            goto Ldc
        L6e:
            java.util.List r0 = r4.f106490y
            org.apache.commons.compress.harmony.pack200.CpBands r1 = r4.f106470e
            org.apache.commons.compress.harmony.pack200.CPMethodOrField r6 = r1.getCPMethod(r6, r7, r8)
            r0.add(r6)
            goto Ldc
        L7a:
            java.lang.String r0 = r4.f106463C
            boolean r0 = r6.equals(r0)
            if (r0 == 0) goto La8
            int r5 = r5 + 38
            boolean r0 = r7.equals(r2)
            if (r0 == 0) goto L9c
            r0 = 221(0xdd, float:3.1E-43)
            if (r5 != r0) goto L9c
            java.util.List r5 = r4.f106461A
            org.apache.commons.compress.harmony.pack200.CpBands r0 = r4.f106470e
            org.apache.commons.compress.harmony.pack200.CPMethodOrField r6 = r0.getCPMethod(r6, r7, r8)
            r5.add(r6)
            r5 = 231(0xe7, float:3.24E-43)
            goto Ldc
        L9c:
            java.util.List r0 = r4.f106491z
            org.apache.commons.compress.harmony.pack200.CpBands r1 = r4.f106470e
            org.apache.commons.compress.harmony.pack200.CPMethodOrField r6 = r1.getCPMethod(r6, r7, r8)
            r0.add(r6)
            goto Ldc
        La8:
            if (r3 == 0) goto Lb1
            int r5 = r5 + (-7)
            org.apache.commons.compress.harmony.pack200.IntList r0 = r4.f106472g
            r0.add(r1)
        Lb1:
            boolean r0 = r7.equals(r2)
            if (r0 == 0) goto Ld1
            r0 = 183(0xb7, float:2.56E-43)
            if (r5 != r0) goto Ld1
            java.lang.String r0 = r4.f106464D
            boolean r0 = r6.equals(r0)
            if (r0 == 0) goto Ld1
            java.util.List r5 = r4.f106461A
            org.apache.commons.compress.harmony.pack200.CpBands r0 = r4.f106470e
            org.apache.commons.compress.harmony.pack200.CPMethodOrField r6 = r0.getCPMethod(r6, r7, r8)
            r5.add(r6)
            r5 = 232(0xe8, float:3.25E-43)
            goto Ldc
        Ld1:
            java.util.List<org.apache.commons.compress.harmony.pack200.CPMethodOrField> r0 = r4.f106486u
            org.apache.commons.compress.harmony.pack200.CpBands r1 = r4.f106470e
            org.apache.commons.compress.harmony.pack200.CPMethodOrField r6 = r1.getCPMethod(r6, r7, r8)
            r0.add(r6)
        Ldc:
            org.apache.commons.compress.harmony.pack200.IntList r6 = r4.f106472g
            r6.add(r5)
        Le1:
            r4.m66897n()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.commons.compress.harmony.pack200.BcBands.visitMethodInsn(int, java.lang.String, java.lang.String, java.lang.String):void");
    }

    public void visitMultiANewArrayInsn(String str, int i) {
        this.f106467G += 4;
        m66897n();
        this.f106472g.add(197);
        this.f106484s.add(this.f106470e.getCPClass(str));
        this.f106475j.add(i & 255);
    }

    public void visitTableSwitchInsn(int i, int i2, Label label, Label... labelArr) {
        this.f106472g.add(170);
        this.f106478m.add(label);
        this.f106469I.add(this.f106467G);
        this.f106474i.add(i);
        this.f106473h.add(labelArr.length);
        for (Label label2 : labelArr) {
            this.f106478m.add(label2);
            this.f106469I.add(this.f106467G);
        }
        int i3 = this.f106467G;
        this.f106467G = i3 + (i3 % 4 != 0 ? 4 - (i3 % 4) : 0) + 12 + (labelArr.length * 4);
        m66897n();
    }

    public void visitTypeInsn(int i, String str) {
        this.f106467G += 3;
        m66897n();
        this.f106472g.add(i);
        this.f106484s.add(this.f106470e.getCPClass(str));
        if (i == 187) {
            this.f106464D = str;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0031  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x003a  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0043  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x004c  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0055  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void visitVarInsn(int r3, int r4) {
        /*
            r2 = this;
            r0 = 255(0xff, float:3.57E-43)
            if (r4 <= r0) goto L1c
            int r0 = r2.f106467G
            int r0 = r0 + 4
            r2.f106467G = r0
            org.apache.commons.compress.harmony.pack200.IntList r0 = r2.f106472g
            r1 = 196(0xc4, float:2.75E-43)
            r0.add(r1)
            org.apache.commons.compress.harmony.pack200.IntList r0 = r2.f106472g
            r0.add(r3)
            org.apache.commons.compress.harmony.pack200.IntList r3 = r2.f106477l
            r3.add(r4)
            goto L6e
        L1c:
            r0 = 3
            if (r4 > r0) goto L5e
            r0 = 169(0xa9, float:2.37E-43)
            if (r3 != r0) goto L24
            goto L5e
        L24:
            int r0 = r2.f106467G
            int r0 = r0 + 1
            r2.f106467G = r0
            switch(r3) {
                case 21: goto L55;
                case 22: goto L4c;
                case 23: goto L43;
                case 24: goto L3a;
                case 25: goto L31;
                default: goto L2d;
            }
        L2d:
            switch(r3) {
                case 54: goto L55;
                case 55: goto L4c;
                case 56: goto L43;
                case 57: goto L3a;
                case 58: goto L31;
                default: goto L30;
            }
        L30:
            goto L6e
        L31:
            org.apache.commons.compress.harmony.pack200.IntList r0 = r2.f106472g
            int r3 = r3 + 17
            int r3 = r3 + r4
            r0.add(r3)
            goto L6e
        L3a:
            org.apache.commons.compress.harmony.pack200.IntList r0 = r2.f106472g
            int r3 = r3 + 14
            int r3 = r3 + r4
            r0.add(r3)
            goto L6e
        L43:
            org.apache.commons.compress.harmony.pack200.IntList r0 = r2.f106472g
            int r3 = r3 + 11
            int r3 = r3 + r4
            r0.add(r3)
            goto L6e
        L4c:
            org.apache.commons.compress.harmony.pack200.IntList r0 = r2.f106472g
            int r3 = r3 + 8
            int r3 = r3 + r4
            r0.add(r3)
            goto L6e
        L55:
            org.apache.commons.compress.harmony.pack200.IntList r0 = r2.f106472g
            int r3 = r3 + 5
            int r3 = r3 + r4
            r0.add(r3)
            goto L6e
        L5e:
            int r0 = r2.f106467G
            int r0 = r0 + 2
            r2.f106467G = r0
            org.apache.commons.compress.harmony.pack200.IntList r0 = r2.f106472g
            r0.add(r3)
            org.apache.commons.compress.harmony.pack200.IntList r3 = r2.f106477l
            r3.add(r4)
        L6e:
            r2.m66897n()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.commons.compress.harmony.pack200.BcBands.visitVarInsn(int, int):void");
    }
}
