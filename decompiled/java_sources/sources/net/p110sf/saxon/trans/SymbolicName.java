package net.p110sf.saxon.trans;

import net.p110sf.saxon.om.StandardNames;
import net.p110sf.saxon.om.StructuredQName;

/* loaded from: classes11.dex */
public class SymbolicName {

    /* renamed from: a */
    public final int f102355a;

    /* renamed from: b */
    public final StructuredQName f102356b;

    /* renamed from: net.sf.saxon.trans.SymbolicName$F */
    /* loaded from: classes11.dex */
    public static class C18533F extends SymbolicName {

        /* renamed from: c */
        public int f102357c;

        public C18533F(StructuredQName structuredQName, int i) {
            super(160, structuredQName);
            this.f102357c = i;
        }

        @Override // net.p110sf.saxon.trans.SymbolicName
        public boolean equals(Object obj) {
            return (obj instanceof C18533F) && super.equals(obj) && ((C18533F) obj).f102357c == this.f102357c;
        }

        public int getArity() {
            return this.f102357c;
        }

        @Override // net.p110sf.saxon.trans.SymbolicName
        public String getShortName() {
            return super.getShortName() + "#" + this.f102357c;
        }

        @Override // net.p110sf.saxon.trans.SymbolicName
        public int hashCode() {
            return this.f102357c ^ super.hashCode();
        }

        @Override // net.p110sf.saxon.trans.SymbolicName
        public String toString() {
            return super.toString() + "#" + this.f102357c;
        }
    }

    public SymbolicName(int i, StructuredQName structuredQName) {
        this.f102355a = i;
        this.f102356b = structuredQName;
    }

    public boolean equals(Object obj) {
        if (obj instanceof SymbolicName) {
            SymbolicName symbolicName = (SymbolicName) obj;
            if (symbolicName.f102355a == this.f102355a && symbolicName.f102356b.equals(this.f102356b)) {
                return true;
            }
        }
        return false;
    }

    public int getComponentKind() {
        return this.f102355a;
    }

    public StructuredQName getComponentName() {
        return this.f102356b;
    }

    public String getShortName() {
        return this.f102356b.getDisplayName();
    }

    public int hashCode() {
        return this.f102356b.hashCode() ^ (this.f102355a << 16);
    }

    public String toString() {
        return StandardNames.getLocalName(this.f102355a) + " " + this.f102356b.getDisplayName();
    }
}
