package net.p110sf.saxon.regex;

import net.p110sf.saxon.p111z.IntIterator;

/* loaded from: classes11.dex */
public class OpReluctantFixed extends OpRepeat {

    /* renamed from: b */
    public final int f101180b;

    /* renamed from: net.sf.saxon.regex.OpReluctantFixed$a */
    /* loaded from: classes11.dex */
    public class C18444a implements IntIterator {

        /* renamed from: a */
        public int f101181a;

        /* renamed from: b */
        public int f101182b = 0;

        /* renamed from: c */
        public boolean f101183c = false;

        /* renamed from: d */
        public final /* synthetic */ int f101184d;

        /* renamed from: e */
        public final /* synthetic */ REMatcher f101185e;

        public C18444a(int i, REMatcher rEMatcher) {
            this.f101184d = i;
            this.f101185e = rEMatcher;
            this.f101181a = i;
        }

        @Override // net.p110sf.saxon.p111z.IntIterator
        public boolean hasNext() {
            if (this.f101183c) {
                if (this.f101182b < OpReluctantFixed.this.max) {
                    this.f101185e.clearCapturedGroupsBeyond(this.f101181a);
                    IntIterator iterateMatches = OpReluctantFixed.this.f101188op.iterateMatches(this.f101185e, this.f101181a);
                    if (iterateMatches.hasNext()) {
                        this.f101181a = iterateMatches.next();
                        this.f101182b++;
                        return true;
                    }
                }
                return false;
            }
            this.f101183c = true;
            while (true) {
                int i = this.f101182b;
                OpReluctantFixed opReluctantFixed = OpReluctantFixed.this;
                if (i >= opReluctantFixed.min) {
                    return true;
                }
                IntIterator iterateMatches2 = opReluctantFixed.f101188op.iterateMatches(this.f101185e, this.f101181a);
                if (!iterateMatches2.hasNext()) {
                    return false;
                }
                this.f101181a = iterateMatches2.next();
                this.f101182b++;
            }
        }

        @Override // net.p110sf.saxon.p111z.IntIterator
        public int next() {
            return this.f101181a;
        }
    }

    public OpReluctantFixed(Operation operation, int i, int i2, int i3) {
        super(operation, i, i2, false);
        this.f101180b = i3;
    }

    @Override // net.p110sf.saxon.regex.OpRepeat, net.p110sf.saxon.regex.Operation
    public int getMatchLength() {
        int i = this.min;
        if (i == this.max) {
            return i * this.f101180b;
        }
        return -1;
    }

    @Override // net.p110sf.saxon.regex.OpRepeat, net.p110sf.saxon.regex.Operation
    public IntIterator iterateMatches(REMatcher rEMatcher, int i) {
        return new C18444a(i, rEMatcher);
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
