package net.p110sf.saxon.om;

import net.p110sf.saxon.expr.parser.ExpressionTool;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.str.EmptyUnicodeString;
import net.p110sf.saxon.str.UnicodeString;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.tree.iter.SingletonIterator;
import net.p110sf.saxon.value.EmptySequence;

/* loaded from: classes11.dex */
public class ZeroOrOne<T extends Item> implements GroundedValue {

    /* renamed from: f */
    public static final ZeroOrOne f100872f = new ZeroOrOne(null);

    /* renamed from: e */
    public final T f100873e;

    public ZeroOrOne(T t) {
        this.f100873e = t;
    }

    public static <T extends Item> ZeroOrOne<T> empty() {
        return f100872f;
    }

    @Override // net.p110sf.saxon.om.GroundedValue
    public boolean effectiveBooleanValue() throws XPathException {
        return ExpressionTool.effectiveBooleanValue(this.f100873e);
    }

    @Override // net.p110sf.saxon.om.GroundedValue
    public int getLength() {
        return this.f100873e == null ? 0 : 1;
    }

    @Override // net.p110sf.saxon.om.GroundedValue
    public String getStringValue() {
        T t = this.f100873e;
        return t == null ? "" : t.getStringValue();
    }

    @Override // net.p110sf.saxon.om.GroundedValue
    public UnicodeString getUnicodeStringValue() {
        T t = this.f100873e;
        return t == null ? EmptyUnicodeString.getInstance() : t.getUnicodeStringValue();
    }

    @Override // net.p110sf.saxon.om.GroundedValue, net.p110sf.saxon.om.Sequence
    public T head() {
        return this.f100873e;
    }

    @Override // net.p110sf.saxon.om.GroundedValue
    public T itemAt(int i) {
        T t;
        if (i != 0 || (t = this.f100873e) == null) {
            return null;
        }
        return t;
    }

    @Override // net.p110sf.saxon.om.GroundedValue, net.p110sf.saxon.om.Sequence
    public SequenceIterator iterate() {
        return SingletonIterator.makeIterator(this.f100873e);
    }

    @Override // net.p110sf.saxon.om.GroundedValue
    public GroundedValue reduce() {
        T t = this.f100873e;
        return t == null ? EmptySequence.getInstance() : t;
    }

    @Override // net.p110sf.saxon.om.GroundedValue
    public GroundedValue subsequence(int i, int i2) {
        return (this.f100873e == null || i > 0 || i + i2 <= 0) ? EmptySequence.getInstance() : this;
    }

    public String toString() {
        T t = this.f100873e;
        return t == null ? "null" : t.toString();
    }
}
