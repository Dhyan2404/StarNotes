package net.p110sf.saxon.regex;

import com.google.android.material.motion.MotionUtils;
import net.p110sf.saxon.p111z.IntIterator;
import net.p110sf.saxon.regex.REMatcher;

/* loaded from: classes11.dex */
public class OpCapture extends Operation {

    /* renamed from: a */
    public int f101165a;

    /* renamed from: b */
    public Operation f101166b;

    /* renamed from: net.sf.saxon.regex.OpCapture$a */
    /* loaded from: classes11.dex */
    public class C18442a implements IntIterator {

        /* renamed from: a */
        public final /* synthetic */ IntIterator f101167a;

        /* renamed from: b */
        public final /* synthetic */ REMatcher f101168b;

        /* renamed from: c */
        public final /* synthetic */ int f101169c;

        public C18442a(IntIterator intIterator, REMatcher rEMatcher, int i) {
            this.f101167a = intIterator;
            this.f101168b = rEMatcher;
            this.f101169c = i;
        }

        @Override // net.p110sf.saxon.p111z.IntIterator
        public boolean hasNext() {
            return this.f101167a.hasNext();
        }

        @Override // net.p110sf.saxon.p111z.IntIterator
        public int next() {
            int next = this.f101167a.next();
            int i = OpCapture.this.f101165a;
            REMatcher rEMatcher = this.f101168b;
            REMatcher.State state = rEMatcher.f101248e;
            if (i >= state.f101253a) {
                state.f101253a = i + 1;
            }
            rEMatcher.setParenStart(i, this.f101169c);
            this.f101168b.setParenEnd(OpCapture.this.f101165a, next);
            REMatcher rEMatcher2 = this.f101168b;
            if ((rEMatcher2.f101244a.optimizationFlags & 1) != 0) {
                int[] iArr = rEMatcher2.f101249f;
                int i2 = OpCapture.this.f101165a;
                iArr[i2] = this.f101169c;
                rEMatcher2.f101250g[i2] = next;
            }
            return next;
        }
    }

    public OpCapture(Operation operation, int i) {
        this.f101166b = operation;
        this.f101165a = i;
    }

    @Override // net.p110sf.saxon.regex.Operation
    public String display() {
        return MotionUtils.f31761c + this.f101166b.display() + MotionUtils.f31762d;
    }

    @Override // net.p110sf.saxon.regex.Operation
    public int getMatchLength() {
        return this.f101166b.getMatchLength();
    }

    @Override // net.p110sf.saxon.regex.Operation
    public int getMinimumMatchLength() {
        return this.f101166b.getMinimumMatchLength();
    }

    @Override // net.p110sf.saxon.regex.Operation
    public IntIterator iterateMatches(REMatcher rEMatcher, int i) {
        if ((rEMatcher.f101244a.optimizationFlags & 1) != 0) {
            rEMatcher.f101249f[this.f101165a] = i;
        }
        return new C18442a(this.f101166b.iterateMatches(rEMatcher, i), rEMatcher, i);
    }

    @Override // net.p110sf.saxon.regex.Operation
    public int matchesEmptyString() {
        return this.f101166b.matchesEmptyString();
    }

    @Override // net.p110sf.saxon.regex.Operation
    public Operation optimize(REProgram rEProgram, REFlags rEFlags) {
        this.f101166b = this.f101166b.optimize(rEProgram, rEFlags);
        return this;
    }
}
