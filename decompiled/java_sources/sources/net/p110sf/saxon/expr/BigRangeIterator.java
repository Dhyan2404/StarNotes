package net.p110sf.saxon.expr;

import java.math.BigInteger;
import net.p110sf.saxon.om.GroundedValue;
import net.p110sf.saxon.trans.UncheckedXPathException;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.tree.iter.AtomicIterator;
import net.p110sf.saxon.tree.iter.LookaheadIterator;
import net.p110sf.saxon.tree.iter.RangeIterator;
import net.p110sf.saxon.value.IntegerValue;
import net.p110sf.saxon.value.SequenceExtent;

/* loaded from: classes11.dex */
public class BigRangeIterator extends RangeIterator implements AtomicIterator, LastPositionFinder, LookaheadIterator {

    /* renamed from: e */
    public BigInteger f99186e;

    /* renamed from: f */
    public BigInteger f99187f;

    /* renamed from: g */
    public BigInteger f99188g;

    /* renamed from: h */
    public BigInteger f99189h;

    /* renamed from: i */
    public boolean f99190i;

    public BigRangeIterator(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3) throws XPathException {
        if (bigInteger3.subtract(bigInteger).divide(bigInteger2).compareTo(BigInteger.valueOf(2147483647L)) > 0) {
            throw new XPathException("Saxon limit on sequence length exceeded (2^31)", "XPDY0130");
        }
        this.f99186e = bigInteger;
        this.f99187f = bigInteger2;
        this.f99188g = bigInteger.subtract(bigInteger2);
        this.f99189h = bigInteger3;
        this.f99190i = bigInteger2.signum() < 0;
    }

    /* renamed from: f */
    public final boolean m62548f(BigInteger bigInteger) {
        boolean z = this.f99190i;
        int compareTo = bigInteger.compareTo(this.f99189h);
        if (z) {
            if (compareTo >= 0) {
                return true;
            }
        } else if (compareTo <= 0) {
            return true;
        }
        return false;
    }

    @Override // net.p110sf.saxon.tree.iter.RangeIterator
    public IntegerValue getFirst() {
        return IntegerValue.makeIntegerValue(this.f99186e);
    }

    @Override // net.p110sf.saxon.tree.iter.RangeIterator
    public IntegerValue getLast() {
        return IntegerValue.makeIntegerValue(this.f99189h);
    }

    @Override // net.p110sf.saxon.expr.LastPositionFinder
    public int getLength() {
        BigInteger bigInteger = this.f99189h.subtract(this.f99186e).divideAndRemainder(this.f99187f)[0];
        if (bigInteger.compareTo(BigInteger.valueOf(2147483647L)) <= 0) {
            return bigInteger.intValue() + 1;
        }
        throw new UncheckedXPathException(new XPathException("Sequence exceeds Saxon limit (32-bit integer)"));
    }

    @Override // net.p110sf.saxon.tree.iter.RangeIterator
    public IntegerValue getMax() {
        return this.f99190i ? getFirst() : getLast();
    }

    @Override // net.p110sf.saxon.tree.iter.RangeIterator
    public IntegerValue getMin() {
        return this.f99190i ? getLast() : getFirst();
    }

    @Override // net.p110sf.saxon.tree.iter.RangeIterator, net.p110sf.saxon.tree.iter.GroundedIterator
    public GroundedValue getResidue() {
        return SequenceExtent.makeResidue(this);
    }

    @Override // net.p110sf.saxon.tree.iter.RangeIterator
    public IntegerValue getStep() {
        return IntegerValue.makeIntegerValue(this.f99187f);
    }

    @Override // net.p110sf.saxon.tree.iter.LookaheadIterator
    public boolean hasNext() {
        return m62548f(this.f99188g.add(this.f99187f));
    }

    @Override // net.p110sf.saxon.tree.iter.GroundedIterator
    public boolean isActuallyGrounded() {
        return true;
    }

    @Override // net.p110sf.saxon.expr.LastPositionFinder
    public boolean supportsGetLength() {
        return true;
    }

    @Override // net.p110sf.saxon.tree.iter.LookaheadIterator
    public boolean supportsHasNext() {
        return true;
    }

    @Override // net.p110sf.saxon.om.SequenceIterator
    public IntegerValue next() {
        BigInteger add = this.f99188g.add(this.f99187f);
        this.f99188g = add;
        if (m62548f(add)) {
            return IntegerValue.makeIntegerValue(this.f99188g);
        }
        return null;
    }
}
