package net.p110sf.saxon.regex;

import java.util.Iterator;
import java.util.List;
import java.util.Stack;
import net.p110sf.saxon.p111z.IntIterator;
import net.p110sf.saxon.regex.REMatcher;
import net.p110sf.saxon.regex.charclass.CharacterClass;
import net.p110sf.saxon.regex.charclass.EmptyCharacterClass;
import net.p110sf.saxon.trans.UncheckedXPathException;
import net.p110sf.saxon.trans.XPathException;

/* loaded from: classes11.dex */
public class OpSequence extends Operation {
    protected final List<Operation> operations;

    /* renamed from: net.sf.saxon.regex.OpSequence$a */
    /* loaded from: classes11.dex */
    public class C18447a implements IntIterator {

        /* renamed from: a */
        public boolean f101200a = false;

        /* renamed from: b */
        public int f101201b;

        /* renamed from: c */
        public final /* synthetic */ Stack f101202c;

        /* renamed from: d */
        public final /* synthetic */ REMatcher f101203d;

        /* renamed from: e */
        public final /* synthetic */ int f101204e;

        /* renamed from: f */
        public final /* synthetic */ REMatcher.State f101205f;

        /* renamed from: g */
        public final /* synthetic */ int f101206g;

        public C18447a(Stack stack, REMatcher rEMatcher, int i, REMatcher.State state, int i2) {
            this.f101202c = stack;
            this.f101203d = rEMatcher;
            this.f101204e = i;
            this.f101205f = state;
            this.f101206g = i2;
        }

        /* renamed from: a */
        public final int m63575a() {
            int i = 0;
            while (!this.f101202c.isEmpty()) {
                IntIterator intIterator = (IntIterator) this.f101202c.peek();
                while (intIterator.hasNext()) {
                    int next = intIterator.next();
                    this.f101203d.clearCapturedGroupsBeyond(next);
                    int size = this.f101202c.size();
                    if (size >= OpSequence.this.operations.size()) {
                        return next;
                    }
                    intIterator = OpSequence.this.operations.get(size).iterateMatches(this.f101203d, next);
                    this.f101202c.push(intIterator);
                }
                this.f101202c.pop();
                int i2 = this.f101204e;
                if (i2 >= 0) {
                    int i3 = i + 1;
                    if (i > i2) {
                        throw new UncheckedXPathException(new XPathException("Regex backtracking limit exceeded processing " + this.f101203d.f101251h.display() + ". Simplify the regular expression, or set Feature.REGEX_BACKTRACKING_LIMIT to -1 to remove this limit."));
                    }
                    i = i3;
                }
            }
            REMatcher.State state = this.f101205f;
            if (state == null) {
                return -1;
            }
            this.f101203d.resetState(state);
            return -1;
        }

        @Override // net.p110sf.saxon.p111z.IntIterator
        public boolean hasNext() {
            if (!this.f101200a) {
                this.f101202c.push(OpSequence.this.operations.get(0).iterateMatches(this.f101203d, this.f101206g));
                this.f101200a = true;
            }
            int m63575a = m63575a();
            this.f101201b = m63575a;
            return m63575a >= 0;
        }

        @Override // net.p110sf.saxon.p111z.IntIterator
        public int next() {
            return this.f101201b;
        }
    }

    public OpSequence(List<Operation> list) {
        this.operations = list;
    }

    @Override // net.p110sf.saxon.regex.Operation
    public boolean containsCapturingExpressions() {
        for (Operation operation : this.operations) {
            if ((operation instanceof OpCapture) || operation.containsCapturingExpressions()) {
                return true;
            }
        }
        return false;
    }

    @Override // net.p110sf.saxon.regex.Operation
    public String display() {
        StringBuilder sb = new StringBuilder(64);
        Iterator<Operation> it2 = this.operations.iterator();
        while (it2.hasNext()) {
            sb.append(it2.next().display());
        }
        return sb.toString();
    }

    @Override // net.p110sf.saxon.regex.Operation
    public CharacterClass getInitialCharacterClass(boolean z) {
        CharacterClass emptyCharacterClass = EmptyCharacterClass.getInstance();
        for (Operation operation : this.operations) {
            emptyCharacterClass = RECompiler.makeUnion(emptyCharacterClass, operation.getInitialCharacterClass(z));
            if (operation.matchesEmptyString() == 1024) {
                break;
            }
        }
        return emptyCharacterClass;
    }

    @Override // net.p110sf.saxon.regex.Operation
    public int getMatchLength() {
        Iterator<Operation> it2 = this.operations.iterator();
        int i = 0;
        while (it2.hasNext()) {
            int matchLength = it2.next().getMatchLength();
            if (matchLength == -1) {
                return -1;
            }
            i += matchLength;
        }
        return i;
    }

    @Override // net.p110sf.saxon.regex.Operation
    public int getMinimumMatchLength() {
        Iterator<Operation> it2 = this.operations.iterator();
        int i = 0;
        while (it2.hasNext()) {
            i += it2.next().getMinimumMatchLength();
        }
        return i;
    }

    public List<Operation> getOperations() {
        return this.operations;
    }

    @Override // net.p110sf.saxon.regex.Operation
    public IntIterator iterateMatches(REMatcher rEMatcher, int i) {
        return new C18447a(new Stack(), rEMatcher, rEMatcher.getProgram().getBacktrackingLimit(), containsCapturingExpressions() ? rEMatcher.captureState() : null, i);
    }

    @Override // net.p110sf.saxon.regex.Operation
    public int matchesEmptyString() {
        boolean z;
        boolean z2;
        boolean z3;
        Iterator<Operation> it2 = this.operations.iterator();
        while (true) {
            z = true;
            if (!it2.hasNext()) {
                z2 = true;
                break;
            }
            int matchesEmptyString = it2.next().matchesEmptyString();
            if (matchesEmptyString == 1024) {
                return 1024;
            }
            if (matchesEmptyString != 7) {
                z2 = false;
                break;
            }
        }
        if (z2) {
            return 7;
        }
        Iterator<Operation> it3 = this.operations.iterator();
        while (true) {
            if (!it3.hasNext()) {
                z3 = true;
                break;
            }
            if ((it3.next().matchesEmptyString() & 1) == 0) {
                z3 = false;
                break;
            }
        }
        if (z3) {
            return 1;
        }
        Iterator<Operation> it4 = this.operations.iterator();
        while (true) {
            if (!it4.hasNext()) {
                break;
            }
            if ((it4.next().matchesEmptyString() & 2) == 0) {
                z = false;
                break;
            }
        }
        return z ? 2 : 0;
    }

    @Override // net.p110sf.saxon.regex.Operation
    public Operation optimize(REProgram rEProgram, REFlags rEFlags) {
        if (this.operations.size() == 0) {
            return new OpNothing();
        }
        if (this.operations.size() == 1) {
            return this.operations.get(0);
        }
        for (int i = 0; i < this.operations.size() - 1; i++) {
            Operation operation = this.operations.get(i);
            Operation optimize = operation.optimize(rEProgram, rEFlags);
            if (operation != optimize) {
                this.operations.set(i, optimize);
            }
            if (optimize instanceof OpRepeat) {
                OpRepeat opRepeat = (OpRepeat) operation;
                Operation m63572a = opRepeat.m63572a();
                if ((m63572a instanceof OpAtom) || (m63572a instanceof OpCharClass)) {
                    Operation operation2 = this.operations.get(i + 1);
                    if (opRepeat.min == opRepeat.max || RECompiler.noAmbiguity(m63572a, operation2, rEFlags.isCaseIndependent(), !opRepeat.f101187a)) {
                        this.operations.set(i, new OpUnambiguousRepeat(m63572a, opRepeat.min, opRepeat.max));
                    }
                }
            }
        }
        return this;
    }
}
