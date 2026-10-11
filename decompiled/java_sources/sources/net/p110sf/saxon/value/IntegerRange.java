package net.p110sf.saxon.value;

import com.google.android.material.motion.MotionUtils;
import java.util.Iterator;
import net.p110sf.saxon.expr.AscendingRangeIterator;
import net.p110sf.saxon.expr.DescendingRangeIterator;
import net.p110sf.saxon.expr.parser.ExpressionTool;
import net.p110sf.saxon.om.AtomicSequence;
import net.p110sf.saxon.om.GroundedValue;
import net.p110sf.saxon.om.SequenceTool;
import net.p110sf.saxon.str.UnicodeString;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.tree.iter.AtomicIterator;

/* loaded from: classes11.dex */
public class IntegerRange implements AtomicSequence {
    public long end;
    public long start;
    public long step;

    /* renamed from: net.sf.saxon.value.IntegerRange$a */
    /* loaded from: classes11.dex */
    public static class C18569a implements Iterator<AtomicValue> {

        /* renamed from: e */
        public IntegerRange f102897e;

        /* renamed from: f */
        public long f102898f;

        public C18569a(IntegerRange integerRange) {
            this.f102897e = integerRange;
            this.f102898f = integerRange.start;
        }

        @Override // java.util.Iterator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public AtomicValue next() {
            long j = this.f102898f;
            this.f102898f = 1 + j;
            return new Int64Value(j);
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f102898f <= this.f102897e.end;
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException();
        }
    }

    public IntegerRange(long j, long j2, long j3) {
        if (j2 == 0) {
            throw new IllegalArgumentException("step = 0 in IntegerRange");
        }
        if (j3 != j) {
            if ((j3 > j) != (j2 > 0)) {
                throw new IllegalArgumentException("end before start in IntegerRange");
            }
        }
        long j4 = j3 - j;
        if (Math.abs(j4 / j2) > 2147483647L) {
            throw new IllegalArgumentException("Maximum length of sequence in Saxon is 2147483647");
        }
        this.start = j;
        this.step = j2;
        this.end = j + ((j4 * j2) / j2);
    }

    @Override // net.p110sf.saxon.om.GroundedValue
    public boolean effectiveBooleanValue() throws XPathException {
        return ExpressionTool.effectiveBooleanValue(iterate());
    }

    @Override // net.p110sf.saxon.om.AtomicSequence
    public UnicodeString getCanonicalLexicalRepresentation() {
        return getUnicodeStringValue();
    }

    public long getEnd() {
        return this.end;
    }

    @Override // net.p110sf.saxon.om.AtomicSequence, net.p110sf.saxon.om.GroundedValue
    public int getLength() {
        return ((int) ((this.end - this.start) / this.step)) + 1;
    }

    public long getStart() {
        return this.start;
    }

    public long getStep() {
        return this.step;
    }

    @Override // net.p110sf.saxon.om.GroundedValue
    public String getStringValue() {
        try {
            return SequenceTool.stringify(this);
        } catch (XPathException e) {
            throw new AssertionError(e);
        }
    }

    @Override // net.p110sf.saxon.om.AtomicSequence, net.p110sf.saxon.om.GroundedValue
    public UnicodeString getUnicodeStringValue() {
        try {
            return SequenceTool.getStringValue(this);
        } catch (XPathException e) {
            throw new AssertionError(e);
        }
    }

    @Override // java.lang.Iterable
    public Iterator<AtomicValue> iterator() {
        return new C18569a(this);
    }

    @Override // net.p110sf.saxon.om.GroundedValue
    public GroundedValue reduce() {
        return this.start == this.end ? itemAt(0) : this;
    }

    @Override // net.p110sf.saxon.om.GroundedValue
    public GroundedValue subsequence(int i, int i2) {
        if (i2 <= 0) {
            return EmptySequence.getInstance();
        }
        long max = this.start + Math.max(i, 0);
        long j = this.step;
        long j2 = ((i2 * j) + max) - 1;
        long j3 = this.end;
        long j4 = j2 > j3 ? j3 : j2;
        return j4 >= max ? new IntegerRange(max, j, j4) : EmptySequence.getInstance();
    }

    public String toString() {
        String str;
        StringBuilder sb = new StringBuilder();
        sb.append(MotionUtils.f31761c);
        sb.append(this.start);
        if (this.step == 1) {
            str = "";
        } else {
            str = " by " + this.step;
        }
        sb.append(str);
        sb.append(" to ");
        sb.append(this.end);
        sb.append(MotionUtils.f31762d);
        return sb.toString();
    }

    @Override // net.p110sf.saxon.om.AtomicSequence, net.p110sf.saxon.om.GroundedValue, net.p110sf.saxon.om.Sequence
    public AtomicIterator iterate() {
        long j = this.step;
        if (j > 0) {
            return new AscendingRangeIterator(this.start, j, this.end);
        }
        return new DescendingRangeIterator(this.start, -this.step, this.end);
    }

    @Override // net.p110sf.saxon.om.AtomicSequence, net.p110sf.saxon.om.GroundedValue, net.p110sf.saxon.om.Sequence
    public IntegerValue head() {
        return new Int64Value(this.start);
    }

    @Override // net.p110sf.saxon.om.AtomicSequence, net.p110sf.saxon.om.GroundedValue
    public IntegerValue itemAt(int i) {
        if (i < 0 || i >= getLength()) {
            return null;
        }
        return Int64Value.makeIntegerValue(this.start + (i * this.step));
    }
}
