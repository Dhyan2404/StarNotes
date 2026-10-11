package net.p110sf.saxon.regex;

import net.p110sf.saxon.expr.sort.EmptyIntIterator;
import net.p110sf.saxon.p111z.IntIterator;
import net.p110sf.saxon.p111z.IntSingletonIterator;

/* loaded from: classes11.dex */
public class OpUnambiguousRepeat extends OpRepeat {
    public OpUnambiguousRepeat(Operation operation, int i, int i2) {
        super(operation, i, i2, true);
    }

    @Override // net.p110sf.saxon.regex.OpRepeat, net.p110sf.saxon.regex.Operation
    public int getMatchLength() {
        if (this.f101188op.getMatchLength() == -1 || this.min != this.max) {
            return -1;
        }
        return this.f101188op.getMatchLength() * this.min;
    }

    @Override // net.p110sf.saxon.regex.OpRepeat, net.p110sf.saxon.regex.Operation
    public IntIterator iterateMatches(REMatcher rEMatcher, int i) {
        int length32 = rEMatcher.f101245b.length32();
        int i2 = 0;
        while (i2 < this.max && i <= length32) {
            IntIterator iterateMatches = this.f101188op.iterateMatches(rEMatcher, i);
            if (!iterateMatches.hasNext()) {
                break;
            }
            i2++;
            i = iterateMatches.next();
        }
        return i2 < this.min ? EmptyIntIterator.getInstance() : new IntSingletonIterator(i);
    }

    @Override // net.p110sf.saxon.regex.OpRepeat, net.p110sf.saxon.regex.Operation
    public int matchesEmptyString() {
        if (this.min == 0) {
            return 7;
        }
        return this.f101188op.matchesEmptyString();
    }

    @Override // net.p110sf.saxon.regex.OpRepeat, net.p110sf.saxon.regex.Operation
    public Operation optimize(REProgram rEProgram, REFlags rEFlags) {
        this.f101188op = this.f101188op.optimize(rEProgram, rEFlags);
        return this;
    }
}
