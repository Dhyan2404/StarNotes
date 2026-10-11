package net.p110sf.saxon.regex;

import net.p110sf.saxon.p111z.IntIterator;

/* loaded from: classes11.dex */
public class OpTrace extends Operation {

    /* renamed from: b */
    public static int f101208b;

    /* renamed from: a */
    public Operation f101209a;

    /* renamed from: net.sf.saxon.regex.OpTrace$a */
    /* loaded from: classes11.dex */
    public class C18448a implements IntIterator {

        /* renamed from: a */
        public final /* synthetic */ IntIterator f101210a;

        /* renamed from: b */
        public final /* synthetic */ int f101211b;

        public C18448a(IntIterator intIterator, int i) {
            this.f101210a = intIterator;
            this.f101211b = i;
        }

        @Override // net.p110sf.saxon.p111z.IntIterator
        public boolean hasNext() {
            boolean hasNext = this.f101210a.hasNext();
            System.err.println("IntIterator " + this.f101211b + " hasNext() = " + hasNext);
            return hasNext;
        }

        @Override // net.p110sf.saxon.p111z.IntIterator
        public int next() {
            int next = this.f101210a.next();
            System.err.println("IntIterator " + this.f101211b + " next() = " + next);
            return next;
        }
    }

    public OpTrace(Operation operation) {
        this.f101209a = operation;
    }

    @Override // net.p110sf.saxon.regex.Operation
    public String display() {
        return this.f101209a.display();
    }

    @Override // net.p110sf.saxon.regex.Operation
    public int getMatchLength() {
        return this.f101209a.getMatchLength();
    }

    @Override // net.p110sf.saxon.regex.Operation
    public IntIterator iterateMatches(REMatcher rEMatcher, int i) {
        IntIterator iterateMatches = this.f101209a.iterateMatches(rEMatcher, i);
        int i2 = f101208b;
        f101208b = i2 + 1;
        String name = iterateMatches.getClass().getName();
        String substring = name.substring(name.lastIndexOf(".") + 1);
        System.err.println("Iterating over " + this.f101209a.getClass().getSimpleName() + " " + this.f101209a.display() + " at position " + i + " returning " + substring + " " + i2);
        return new C18448a(iterateMatches, i2);
    }

    @Override // net.p110sf.saxon.regex.Operation
    public int matchesEmptyString() {
        return this.f101209a.matchesEmptyString();
    }

    @Override // net.p110sf.saxon.regex.Operation
    public Operation optimize(REProgram rEProgram, REFlags rEFlags) {
        this.f101209a = this.f101209a.optimize(rEProgram, rEFlags);
        return this;
    }
}
