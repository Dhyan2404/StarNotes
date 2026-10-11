package net.p110sf.saxon.regex;

import java.util.Stack;
import net.p110sf.saxon.expr.sort.EmptyIntIterator;
import net.p110sf.saxon.p111z.IntIterator;
import net.p110sf.saxon.p111z.IntSingletonIterator;
import net.p110sf.saxon.regex.Operation;
import net.p110sf.saxon.regex.charclass.CharacterClass;

/* loaded from: classes11.dex */
public class OpRepeat extends Operation {

    /* renamed from: a */
    public boolean f101187a;
    protected int max;
    protected int min;

    /* renamed from: op */
    protected Operation f101188op;

    /* renamed from: net.sf.saxon.regex.OpRepeat$a */
    /* loaded from: classes11.dex */
    public class C18445a implements IntIterator {

        /* renamed from: a */
        public boolean f101189a = true;

        /* renamed from: b */
        public final /* synthetic */ Stack f101190b;

        /* renamed from: c */
        public final /* synthetic */ Stack f101191c;

        /* renamed from: d */
        public final /* synthetic */ int f101192d;

        /* renamed from: e */
        public final /* synthetic */ REMatcher f101193e;

        public C18445a(Stack stack, Stack stack2, int i, REMatcher rEMatcher) {
            this.f101190b = stack;
            this.f101191c = stack2;
            this.f101192d = i;
            this.f101193e = rEMatcher;
        }

        /* renamed from: a */
        public final void m63573a() {
            IntIterator intIterator = (IntIterator) this.f101190b.peek();
            if (!intIterator.hasNext()) {
                this.f101190b.pop();
                this.f101191c.pop();
                return;
            }
            int next = intIterator.next();
            this.f101191c.pop();
            this.f101191c.push(Integer.valueOf(next));
            while (this.f101190b.size() < this.f101192d) {
                IntIterator iterateMatches = OpRepeat.this.f101188op.iterateMatches(this.f101193e, next);
                if (!iterateMatches.hasNext()) {
                    return;
                }
                int next2 = iterateMatches.next();
                this.f101190b.push(iterateMatches);
                this.f101191c.push(Integer.valueOf(next2));
                next = next2;
            }
        }

        @Override // net.p110sf.saxon.p111z.IntIterator
        public boolean hasNext() {
            if (this.f101189a && this.f101190b.size() >= OpRepeat.this.min) {
                return !this.f101190b.isEmpty();
            }
            if (this.f101190b.isEmpty()) {
                return false;
            }
            do {
                m63573a();
                if (this.f101190b.size() >= OpRepeat.this.min) {
                    break;
                }
            } while (!this.f101190b.isEmpty());
            return !this.f101190b.isEmpty();
        }

        @Override // net.p110sf.saxon.p111z.IntIterator
        public int next() {
            this.f101189a = false;
            return ((Integer) this.f101191c.peek()).intValue();
        }
    }

    /* renamed from: net.sf.saxon.regex.OpRepeat$b */
    /* loaded from: classes11.dex */
    public class C18446b implements IntIterator {

        /* renamed from: a */
        public int f101195a;

        /* renamed from: b */
        public int f101196b = 0;

        /* renamed from: c */
        public final /* synthetic */ int f101197c;

        /* renamed from: d */
        public final /* synthetic */ REMatcher f101198d;

        public C18446b(int i, REMatcher rEMatcher) {
            this.f101197c = i;
            this.f101198d = rEMatcher;
            this.f101195a = i;
        }

        /* renamed from: a */
        public final void m63574a() {
            int i;
            IntIterator iterateMatches = OpRepeat.this.f101188op.iterateMatches(this.f101198d, this.f101195a);
            if (!iterateMatches.hasNext()) {
                if (OpRepeat.this.min == 0 && (i = this.f101196b) == 0) {
                    this.f101196b = i + 1;
                    return;
                } else {
                    this.f101195a = -1;
                    return;
                }
            }
            this.f101195a = iterateMatches.next();
            int i2 = this.f101196b + 1;
            this.f101196b = i2;
            if (i2 > OpRepeat.this.max) {
                this.f101195a = -1;
            }
        }

        @Override // net.p110sf.saxon.p111z.IntIterator
        public boolean hasNext() {
            do {
                m63574a();
                if (this.f101196b >= OpRepeat.this.min) {
                    break;
                }
            } while (this.f101195a >= 0);
            return this.f101195a >= 0;
        }

        @Override // net.p110sf.saxon.p111z.IntIterator
        public int next() {
            return this.f101195a;
        }
    }

    public OpRepeat(Operation operation, int i, int i2, boolean z) {
        this.f101188op = operation;
        this.min = i;
        this.max = i2;
        this.f101187a = z;
    }

    /* renamed from: a */
    public Operation m63572a() {
        return this.f101188op;
    }

    @Override // net.p110sf.saxon.regex.Operation
    public boolean containsCapturingExpressions() {
        Operation operation = this.f101188op;
        return (operation instanceof OpCapture) || operation.containsCapturingExpressions();
    }

    @Override // net.p110sf.saxon.regex.Operation
    public String display() {
        String str;
        int i = this.min;
        if (i == 0 && this.max == Integer.MAX_VALUE) {
            str = "*";
        } else if (i == 1 && this.max == Integer.MAX_VALUE) {
            str = "+";
        } else if (i == 0 && this.max == 1) {
            str = "?";
        } else {
            str = "{" + this.min + "," + this.max + "}";
        }
        if (!this.f101187a) {
            str = str + "?";
        }
        return this.f101188op.display() + str;
    }

    @Override // net.p110sf.saxon.regex.Operation
    public CharacterClass getInitialCharacterClass(boolean z) {
        return this.f101188op.getInitialCharacterClass(z);
    }

    @Override // net.p110sf.saxon.regex.Operation
    public int getMatchLength() {
        if (this.min != this.max || this.f101188op.getMatchLength() < 0) {
            return -1;
        }
        return this.min * this.f101188op.getMatchLength();
    }

    @Override // net.p110sf.saxon.regex.Operation
    public int getMinimumMatchLength() {
        return this.min * this.f101188op.getMinimumMatchLength();
    }

    @Override // net.p110sf.saxon.regex.Operation
    public IntIterator iterateMatches(REMatcher rEMatcher, int i) {
        Stack stack = new Stack();
        Stack stack2 = new Stack();
        int min = Math.min(this.max, (rEMatcher.f101245b.length32() - i) + 1);
        if (!this.f101187a) {
            return new Operation.ForceProgressIterator(new C18446b(i, rEMatcher));
        }
        if (this.min == 0 && !rEMatcher.f101246c.isDuplicateZeroLengthMatch(this, i)) {
            stack.push(new IntSingletonIterator(i));
            stack2.push(Integer.valueOf(i));
        }
        int i2 = 0;
        while (true) {
            if (i2 >= min) {
                break;
            }
            IntIterator iterateMatches = this.f101188op.iterateMatches(rEMatcher, i);
            if (iterateMatches.hasNext()) {
                int next = iterateMatches.next();
                stack.push(iterateMatches);
                stack2.push(Integer.valueOf(next));
                i2++;
                i = next;
            } else if (stack.isEmpty()) {
                return EmptyIntIterator.getInstance();
            }
        }
        return new Operation.ForceProgressIterator(new C18445a(stack, stack2, min, rEMatcher));
    }

    @Override // net.p110sf.saxon.regex.Operation
    public int matchesEmptyString() {
        if (this.min == 0) {
            return 7;
        }
        return this.f101188op.matchesEmptyString();
    }

    @Override // net.p110sf.saxon.regex.Operation
    public Operation optimize(REProgram rEProgram, REFlags rEFlags) {
        Operation optimize = this.f101188op.optimize(rEProgram, rEFlags);
        this.f101188op = optimize;
        if (this.min == 0 && optimize.matchesEmptyString() == 7) {
            this.min = 1;
        }
        return this;
    }
}
