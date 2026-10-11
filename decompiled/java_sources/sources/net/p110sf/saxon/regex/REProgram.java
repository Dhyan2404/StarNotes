package net.p110sf.saxon.regex;

import java.util.ArrayList;
import java.util.List;
import net.p110sf.saxon.p111z.IntPredicateProxy;
import net.p110sf.saxon.str.UnicodeString;

/* loaded from: classes11.dex */
public class REProgram {
    protected static final int OPT_HASBACKREFS = 1;
    protected static final int OPT_HASBOL = 2;
    protected REFlags flags;
    protected IntPredicateProxy initialCharClass;
    protected int maxParens;
    protected Operation operation;
    protected int optimizationFlags;
    protected UnicodeString prefix;
    protected List<RegexPrecondition> preconditions = new ArrayList();
    protected int minimumLength = 0;
    protected int fixedLength = -1;
    protected int backtrackingLimit = -1;

    public REProgram(Operation operation, int i, REFlags rEFlags) {
        this.maxParens = -1;
        this.flags = rEFlags;
        m63601b(operation);
        this.maxParens = i;
    }

    /* renamed from: a */
    public final void m63600a(Operation operation, int i, int i2) {
        OpRepeat opRepeat;
        int i3;
        if ((operation instanceof OpAtom) || (operation instanceof OpCharClass)) {
            this.preconditions.add(new RegexPrecondition(operation, i, i2));
            return;
        }
        if ((operation instanceof OpRepeat) && (i3 = (opRepeat = (OpRepeat) operation).min) >= 1) {
            Operation operation2 = opRepeat.f101188op;
            if (!(operation2 instanceof OpAtom) && !(operation2 instanceof OpCharClass)) {
                m63600a(operation2, i, i2);
                return;
            } else if (i3 == 1) {
                this.preconditions.add(new RegexPrecondition(opRepeat, i, i2));
                return;
            } else {
                this.preconditions.add(new RegexPrecondition(new OpRepeat(operation2, i3, i3, true), i, i2));
                return;
            }
        }
        if (operation instanceof OpCapture) {
            m63600a(((OpCapture) operation).f101166b, i, i2);
            return;
        }
        if (operation instanceof OpSequence) {
            for (Operation operation3 : ((OpSequence) operation).getOperations()) {
                if (operation3 instanceof OpBOL) {
                    i = 0;
                }
                m63600a(operation3, i, i2);
                i = (i == -1 || operation3.getMatchLength() == -1) ? -1 : i + operation3.getMatchLength();
                i2 += operation3.getMinimumMatchLength();
            }
        }
    }

    /* renamed from: b */
    public final void m63601b(Operation operation) {
        this.operation = operation;
        this.optimizationFlags = 0;
        this.prefix = null;
        this.operation = operation.optimize(this, this.flags);
        if (operation instanceof OpSequence) {
            Operation operation2 = ((OpSequence) operation).getOperations().get(0);
            if (operation2 instanceof OpBOL) {
                this.optimizationFlags |= 2;
            } else if (operation2 instanceof OpAtom) {
                this.prefix = ((OpAtom) operation2).m63571a();
            } else if (operation2 instanceof OpCharClass) {
                this.initialCharClass = ((OpCharClass) operation2).getPredicate();
            }
            m63600a(operation, -1, 0);
        }
        this.minimumLength = operation.getMinimumMatchLength();
        this.fixedLength = operation.getMatchLength();
    }

    public int getBacktrackingLimit() {
        return this.backtrackingLimit;
    }

    public UnicodeString getPrefix() {
        return this.prefix;
    }

    public boolean isNullable() {
        return (this.operation.matchesEmptyString() & 7) != 0;
    }

    public void setBacktrackingLimit(int i) {
        this.backtrackingLimit = i;
    }
}
