package org.apache.commons.compress.harmony.unpack200.bytecode;

import org.apache.commons.compress.harmony.unpack200.Segment;
import org.apache.commons.compress.harmony.unpack200.SegmentConstantPool;

/* loaded from: classes12.dex */
public class OperandManager {

    /* renamed from: A */
    public int f107230A;

    /* renamed from: B */
    public int f107231B;

    /* renamed from: C */
    public int f107232C;

    /* renamed from: D */
    public int f107233D;

    /* renamed from: E */
    public int f107234E;

    /* renamed from: F */
    public int f107235F;

    /* renamed from: G */
    public int f107236G;

    /* renamed from: H */
    public int f107237H;

    /* renamed from: I */
    public int f107238I;

    /* renamed from: J */
    public int f107239J;

    /* renamed from: K */
    public int f107240K;

    /* renamed from: L */
    public int f107241L;

    /* renamed from: M */
    public int f107242M;

    /* renamed from: N */
    public int f107243N;

    /* renamed from: O */
    public int f107244O;

    /* renamed from: P */
    public int f107245P;

    /* renamed from: Q */
    public Segment f107246Q;

    /* renamed from: R */
    public String f107247R;

    /* renamed from: S */
    public String f107248S;

    /* renamed from: T */
    public String f107249T;

    /* renamed from: a */
    public int[] f107250a;

    /* renamed from: b */
    public int[] f107251b;

    /* renamed from: c */
    public int[] f107252c;

    /* renamed from: d */
    public int[] f107253d;

    /* renamed from: e */
    public int[] f107254e;

    /* renamed from: f */
    public int[] f107255f;

    /* renamed from: g */
    public int[] f107256g;

    /* renamed from: h */
    public int[] f107257h;

    /* renamed from: i */
    public int[] f107258i;

    /* renamed from: j */
    public int[] f107259j;

    /* renamed from: k */
    public int[] f107260k;

    /* renamed from: l */
    public int[] f107261l;

    /* renamed from: m */
    public int[] f107262m;

    /* renamed from: n */
    public int[] f107263n;

    /* renamed from: o */
    public int[] f107264o;

    /* renamed from: p */
    public int[] f107265p;

    /* renamed from: q */
    public int[] f107266q;

    /* renamed from: r */
    public int[] f107267r;

    /* renamed from: s */
    public int[] f107268s;

    /* renamed from: t */
    public int[] f107269t;

    /* renamed from: u */
    public int[] f107270u;

    /* renamed from: v */
    public int f107271v;

    /* renamed from: w */
    public int f107272w;

    /* renamed from: x */
    public int f107273x;

    /* renamed from: y */
    public int f107274y;

    /* renamed from: z */
    public int f107275z;

    public OperandManager(int[] iArr, int[] iArr2, int[] iArr3, int[] iArr4, int[] iArr5, int[] iArr6, int[] iArr7, int[] iArr8, int[] iArr9, int[] iArr10, int[] iArr11, int[] iArr12, int[] iArr13, int[] iArr14, int[] iArr15, int[] iArr16, int[] iArr17, int[] iArr18, int[] iArr19, int[] iArr20, int[] iArr21) {
        this.f107250a = iArr;
        this.f107251b = iArr2;
        this.f107252c = iArr3;
        this.f107253d = iArr4;
        this.f107254e = iArr5;
        this.f107255f = iArr6;
        this.f107256g = iArr7;
        this.f107257h = iArr8;
        this.f107258i = iArr9;
        this.f107259j = iArr10;
        this.f107260k = iArr11;
        this.f107261l = iArr12;
        this.f107262m = iArr13;
        this.f107263n = iArr14;
        this.f107264o = iArr15;
        this.f107265p = iArr16;
        this.f107266q = iArr17;
        this.f107267r = iArr18;
        this.f107268s = iArr19;
        this.f107269t = iArr20;
        this.f107270u = iArr21;
    }

    public String getCurrentClass() {
        String str = this.f107247R;
        if (str != null) {
            return str;
        }
        throw new Error("Current class not set yet");
    }

    public String getNewClass() {
        String str = this.f107249T;
        if (str != null) {
            return str;
        }
        throw new Error("New class not set yet");
    }

    public String getSuperClass() {
        String str = this.f107248S;
        if (str != null) {
            return str;
        }
        throw new Error("SuperClass not set yet");
    }

    public SegmentConstantPool globalConstantPool() {
        return this.f107246Q.getConstantPool();
    }

    public int nextByte() {
        int[] iArr = this.f107252c;
        int i = this.f107273x;
        this.f107273x = i + 1;
        return iArr[i];
    }

    public int nextCaseCount() {
        int[] iArr = this.f107250a;
        int i = this.f107271v;
        this.f107271v = i + 1;
        return iArr[i];
    }

    public int nextCaseValues() {
        int[] iArr = this.f107251b;
        int i = this.f107272w;
        this.f107272w = i + 1;
        return iArr[i];
    }

    public int nextClassRef() {
        int[] iArr = this.f107261l;
        int i = this.f107236G;
        this.f107236G = i + 1;
        return iArr[i];
    }

    public int nextDoubleRef() {
        int[] iArr = this.f107259j;
        int i = this.f107234E;
        this.f107234E = i + 1;
        return iArr[i];
    }

    public int nextFieldRef() {
        int[] iArr = this.f107262m;
        int i = this.f107237H;
        this.f107237H = i + 1;
        return iArr[i];
    }

    public int nextFloatRef() {
        int[] iArr = this.f107257h;
        int i = this.f107232C;
        this.f107232C = i + 1;
        return iArr[i];
    }

    public int nextIMethodRef() {
        int[] iArr = this.f107264o;
        int i = this.f107239J;
        this.f107239J = i + 1;
        return iArr[i];
    }

    public int nextInitRef() {
        int[] iArr = this.f107269t;
        int i = this.f107244O;
        this.f107244O = i + 1;
        return iArr[i];
    }

    public int nextIntRef() {
        int[] iArr = this.f107256g;
        int i = this.f107231B;
        this.f107231B = i + 1;
        return iArr[i];
    }

    public int nextLabel() {
        int[] iArr = this.f107255f;
        int i = this.f107230A;
        this.f107230A = i + 1;
        return iArr[i];
    }

    public int nextLocal() {
        int[] iArr = this.f107254e;
        int i = this.f107275z;
        this.f107275z = i + 1;
        return iArr[i];
    }

    public int nextLongRef() {
        int[] iArr = this.f107258i;
        int i = this.f107233D;
        this.f107233D = i + 1;
        return iArr[i];
    }

    public int nextMethodRef() {
        int[] iArr = this.f107263n;
        int i = this.f107238I;
        this.f107238I = i + 1;
        return iArr[i];
    }

    public int nextShort() {
        int[] iArr = this.f107253d;
        int i = this.f107274y;
        this.f107274y = i + 1;
        return iArr[i];
    }

    public int nextStringRef() {
        int[] iArr = this.f107260k;
        int i = this.f107235F;
        this.f107235F = i + 1;
        return iArr[i];
    }

    public int nextSuperFieldRef() {
        int[] iArr = this.f107266q;
        int i = this.f107241L;
        this.f107241L = i + 1;
        return iArr[i];
    }

    public int nextSuperMethodRef() {
        int[] iArr = this.f107268s;
        int i = this.f107243N;
        this.f107243N = i + 1;
        return iArr[i];
    }

    public int nextThisFieldRef() {
        int[] iArr = this.f107265p;
        int i = this.f107240K;
        this.f107240K = i + 1;
        return iArr[i];
    }

    public int nextThisMethodRef() {
        int[] iArr = this.f107267r;
        int i = this.f107242M;
        this.f107242M = i + 1;
        return iArr[i];
    }

    public int nextWideByteCode() {
        int[] iArr = this.f107270u;
        int i = this.f107245P;
        this.f107245P = i + 1;
        return iArr[i];
    }

    public void setCurrentClass(String str) {
        this.f107247R = str;
    }

    public void setNewClass(String str) {
        this.f107249T = str;
    }

    public void setSegment(Segment segment) {
        this.f107246Q = segment;
    }

    public void setSuperClass(String str) {
        this.f107248S = str;
    }
}
