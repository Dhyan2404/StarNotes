package net.p110sf.saxon.regex;

import net.p110sf.saxon.expr.sort.EmptyIntIterator;
import net.p110sf.saxon.p111z.IntIterator;
import net.p110sf.saxon.p111z.IntStepIterator;

/* loaded from: classes11.dex */
public class OpGreedyFixed extends OpRepeat {

    /* renamed from: b */
    public final int f101179b;

    public OpGreedyFixed(Operation operation, int i, int i2, int i3) {
        super(operation, i, i2, true);
        this.f101179b = i3;
    }

    @Override // net.p110sf.saxon.regex.OpRepeat, net.p110sf.saxon.regex.Operation
    public int getMatchLength() {
        int i = this.min;
        if (i == this.max) {
            return i * this.f101179b;
        }
        return -1;
    }

    @Override // net.p110sf.saxon.regex.OpRepeat, net.p110sf.saxon.regex.Operation
    public IntIterator iterateMatches(REMatcher rEMatcher, int i) {
        boolean z;
        int length32 = rEMatcher.f101245b.length32();
        int i2 = this.max;
        if (i2 < Integer.MAX_VALUE) {
            length32 = Math.min(length32, (this.f101179b * i2) + i);
        }
        if (i >= length32 && this.min > 0) {
            return EmptyIntIterator.getInstance();
        }
        int i3 = i;
        int i4 = 0;
        while (i3 <= length32) {
            IntIterator iterateMatches = this.f101188op.iterateMatches(rEMatcher, i3);
            if (iterateMatches.hasNext()) {
                iterateMatches.next();
                z = true;
            } else {
                z = false;
            }
            if (!z) {
                break;
            }
            i4++;
            i3 += this.f101179b;
            if (i4 == this.max) {
                break;
            }
        }
        int i5 = this.min;
        if (i4 < i5) {
            return EmptyIntIterator.getInstance();
        }
        int i6 = this.f101179b;
        return new IntStepIterator(i3, -i6, i + (i6 * i5));
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
        if (this.max == 0) {
            return new OpNothing();
        }
        if (this.f101188op.getMatchLength() == 0) {
            return this.f101188op;
        }
        this.f101188op = this.f101188op.optimize(rEProgram, rEFlags);
        return this;
    }
}
