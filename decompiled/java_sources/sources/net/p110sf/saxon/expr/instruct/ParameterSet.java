package net.p110sf.saxon.expr.instruct;

import java.util.Arrays;
import java.util.Map;
import net.p110sf.saxon.om.Sequence;
import net.p110sf.saxon.om.StructuredQName;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.value.Closure;

/* loaded from: classes11.dex */
public class ParameterSet {
    public static ParameterSet EMPTY_PARAMETER_SET = new ParameterSet(0);
    public static final int NOT_SUPPLIED = 0;
    public static final int SUPPLIED = 1;
    public static final int SUPPLIED_AND_CHECKED = 2;

    /* renamed from: a */
    public StructuredQName[] f99799a;

    /* renamed from: b */
    public Sequence[] f99800b;

    /* renamed from: c */
    public boolean[] f99801c;

    /* renamed from: d */
    public int f99802d;

    public ParameterSet() {
        this(10);
    }

    public void clear() {
        this.f99802d = 0;
    }

    public int getIndex(StructuredQName structuredQName) {
        for (int i = 0; i < this.f99802d; i++) {
            if (this.f99799a[i].equals(structuredQName)) {
                return i;
            }
        }
        return -1;
    }

    public StructuredQName[] getParameterNames() {
        return this.f99799a;
    }

    public Sequence getValue(int i) {
        return this.f99800b[i];
    }

    public boolean isTypeChecked(int i) {
        return this.f99801c[i];
    }

    public void materializeValues() throws XPathException {
        for (int i = 0; i < this.f99802d; i++) {
            Sequence[] sequenceArr = this.f99800b;
            Sequence sequence = sequenceArr[i];
            if (sequence instanceof Closure) {
                sequenceArr[i] = ((Closure) sequence).reduce();
            }
        }
    }

    public void put(StructuredQName structuredQName, Sequence sequence, boolean z) {
        int i = 0;
        while (true) {
            int i2 = this.f99802d;
            if (i >= i2) {
                if (i2 + 1 > this.f99799a.length) {
                    int i3 = i2 <= 5 ? 10 : i2 * 2;
                    this.f99800b = (Sequence[]) Arrays.copyOf(this.f99800b, i3);
                    this.f99799a = (StructuredQName[]) Arrays.copyOf(this.f99799a, i3);
                    this.f99801c = Arrays.copyOf(this.f99801c, i3);
                }
                StructuredQName[] structuredQNameArr = this.f99799a;
                int i4 = this.f99802d;
                structuredQNameArr[i4] = structuredQName;
                this.f99801c[i4] = z;
                Sequence[] sequenceArr = this.f99800b;
                this.f99802d = i4 + 1;
                sequenceArr[i4] = sequence;
                return;
            }
            if (this.f99799a[i].equals(structuredQName)) {
                this.f99800b[i] = sequence;
                this.f99801c[i] = z;
                return;
            }
            i++;
        }
    }

    public int size() {
        return this.f99802d;
    }

    public ParameterSet(int i) {
        this.f99802d = 0;
        this.f99799a = new StructuredQName[i];
        this.f99800b = new Sequence[i];
        this.f99801c = new boolean[i];
    }

    public ParameterSet(Map<StructuredQName, Sequence> map) {
        this(map.size());
        int i = 0;
        for (Map.Entry<StructuredQName, Sequence> entry : map.entrySet()) {
            this.f99799a[i] = entry.getKey();
            this.f99800b[i] = entry.getValue();
            this.f99801c[i] = false;
            i++;
        }
        this.f99802d = i;
    }

    public ParameterSet(ParameterSet parameterSet, int i) {
        this(parameterSet.f99802d + i);
        for (int i2 = 0; i2 < parameterSet.f99802d; i2++) {
            put(parameterSet.f99799a[i2], parameterSet.f99800b[i2], parameterSet.f99801c[i2]);
        }
    }
}
