package net.p110sf.saxon.regex;

import com.google.android.material.motion.MotionUtils;
import java.util.Iterator;
import java.util.List;
import net.p110sf.saxon.p111z.IntIterator;
import net.p110sf.saxon.regex.charclass.CharacterClass;
import net.p110sf.saxon.regex.charclass.EmptyCharacterClass;

/* loaded from: classes11.dex */
public class OpChoice extends Operation {

    /* renamed from: a */
    public List<Operation> f101172a;

    /* renamed from: net.sf.saxon.regex.OpChoice$a */
    /* loaded from: classes11.dex */
    public class C18443a implements IntIterator {

        /* renamed from: a */
        public final Iterator<Operation> f101173a;

        /* renamed from: b */
        public IntIterator f101174b = null;

        /* renamed from: c */
        public Operation f101175c = null;

        /* renamed from: d */
        public final /* synthetic */ REMatcher f101176d;

        /* renamed from: e */
        public final /* synthetic */ int f101177e;

        public C18443a(REMatcher rEMatcher, int i) {
            this.f101176d = rEMatcher;
            this.f101177e = i;
            this.f101173a = OpChoice.this.f101172a.iterator();
        }

        @Override // net.p110sf.saxon.p111z.IntIterator
        public boolean hasNext() {
            while (true) {
                if (this.f101174b == null) {
                    if (!this.f101173a.hasNext()) {
                        return false;
                    }
                    this.f101176d.clearCapturedGroupsBeyond(this.f101177e);
                    Operation next = this.f101173a.next();
                    this.f101175c = next;
                    this.f101174b = next.iterateMatches(this.f101176d, this.f101177e);
                }
                if (this.f101174b.hasNext()) {
                    return true;
                }
                this.f101174b = null;
            }
        }

        @Override // net.p110sf.saxon.p111z.IntIterator
        public int next() {
            return this.f101174b.next();
        }
    }

    public OpChoice(List<Operation> list) {
        this.f101172a = list;
    }

    @Override // net.p110sf.saxon.regex.Operation
    public boolean containsCapturingExpressions() {
        for (Operation operation : this.f101172a) {
            if ((operation instanceof OpCapture) || operation.containsCapturingExpressions()) {
                return true;
            }
        }
        return false;
    }

    @Override // net.p110sf.saxon.regex.Operation
    public String display() {
        StringBuilder sb = new StringBuilder(64);
        sb.append("(?:");
        boolean z = true;
        for (Operation operation : this.f101172a) {
            if (z) {
                z = false;
            } else {
                sb.append('|');
            }
            sb.append(operation.display());
        }
        sb.append(MotionUtils.f31762d);
        return sb.toString();
    }

    @Override // net.p110sf.saxon.regex.Operation
    public CharacterClass getInitialCharacterClass(boolean z) {
        CharacterClass emptyCharacterClass = EmptyCharacterClass.getInstance();
        Iterator<Operation> it2 = this.f101172a.iterator();
        while (it2.hasNext()) {
            emptyCharacterClass = RECompiler.makeUnion(emptyCharacterClass, it2.next().getInitialCharacterClass(z));
        }
        return emptyCharacterClass;
    }

    @Override // net.p110sf.saxon.regex.Operation
    public int getMatchLength() {
        int matchLength = this.f101172a.get(0).getMatchLength();
        for (int i = 1; i < this.f101172a.size(); i++) {
            if (this.f101172a.get(i).getMatchLength() != matchLength) {
                return -1;
            }
        }
        return matchLength;
    }

    @Override // net.p110sf.saxon.regex.Operation
    public int getMinimumMatchLength() {
        int minimumMatchLength = this.f101172a.get(0).getMinimumMatchLength();
        for (int i = 1; i < this.f101172a.size(); i++) {
            int minimumMatchLength2 = this.f101172a.get(i).getMinimumMatchLength();
            if (minimumMatchLength2 < minimumMatchLength) {
                minimumMatchLength = minimumMatchLength2;
            }
        }
        return minimumMatchLength;
    }

    @Override // net.p110sf.saxon.regex.Operation
    public IntIterator iterateMatches(REMatcher rEMatcher, int i) {
        return new C18443a(rEMatcher, i);
    }

    @Override // net.p110sf.saxon.regex.Operation
    public int matchesEmptyString() {
        Iterator<Operation> it2 = this.f101172a.iterator();
        int i = 0;
        while (it2.hasNext()) {
            int matchesEmptyString = it2.next().matchesEmptyString();
            if (matchesEmptyString != 1024) {
                i |= matchesEmptyString;
            }
        }
        return i;
    }

    @Override // net.p110sf.saxon.regex.Operation
    public Operation optimize(REProgram rEProgram, REFlags rEFlags) {
        for (int i = 0; i < this.f101172a.size(); i++) {
            Operation operation = this.f101172a.get(i);
            Operation optimize = operation.optimize(rEProgram, rEFlags);
            if (operation != optimize) {
                this.f101172a.set(i, optimize);
            }
        }
        return this;
    }
}
