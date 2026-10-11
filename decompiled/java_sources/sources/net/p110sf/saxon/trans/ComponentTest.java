package net.p110sf.saxon.trans;

import net.p110sf.saxon.expr.instruct.Actor;
import net.p110sf.saxon.pattern.LocalNameTest;
import net.p110sf.saxon.pattern.NameTest;
import net.p110sf.saxon.pattern.NamespaceTest;
import net.p110sf.saxon.pattern.QNameTest;
import net.p110sf.saxon.trans.SymbolicName;

/* loaded from: classes11.dex */
public class ComponentTest {

    /* renamed from: a */
    public final int f102246a;

    /* renamed from: b */
    public final QNameTest f102247b;

    /* renamed from: c */
    public final int f102248c;

    public ComponentTest(int i, QNameTest qNameTest, int i2) {
        this.f102246a = i;
        this.f102247b = qNameTest;
        this.f102248c = i2;
    }

    public boolean equals(Object obj) {
        if (obj instanceof ComponentTest) {
            ComponentTest componentTest = (ComponentTest) obj;
            if (componentTest.f102246a == this.f102246a && componentTest.f102248c == this.f102248c && componentTest.f102247b.equals(this.f102247b)) {
                return true;
            }
        }
        return false;
    }

    public int getArity() {
        return this.f102248c;
    }

    public int getComponentKind() {
        return this.f102246a;
    }

    public QNameTest getQNameTest() {
        return this.f102247b;
    }

    public SymbolicName getSymbolicNameIfExplicit() {
        QNameTest qNameTest = this.f102247b;
        if (!(qNameTest instanceof NameTest)) {
            return null;
        }
        int i = this.f102246a;
        return i == 160 ? new SymbolicName.C18533F(((NameTest) qNameTest).getMatchingNodeName(), this.f102248c) : new SymbolicName(i, ((NameTest) qNameTest).getMatchingNodeName());
    }

    public int hashCode() {
        return this.f102247b.hashCode() ^ (this.f102246a ^ this.f102248c);
    }

    public boolean isPartialWildcard() {
        QNameTest qNameTest = this.f102247b;
        return (qNameTest instanceof LocalNameTest) || (qNameTest instanceof NamespaceTest);
    }

    public boolean matches(Actor actor) {
        return matches(actor.getSymbolicName());
    }

    public boolean matches(SymbolicName symbolicName) {
        int i;
        return (this.f102246a == -1 || symbolicName.getComponentKind() == this.f102246a) && this.f102247b.matches(symbolicName.getComponentName()) && (this.f102246a != 160 || (i = this.f102248c) == -1 || i == ((SymbolicName.C18533F) symbolicName).getArity());
    }
}
