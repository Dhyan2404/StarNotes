package net.p110sf.saxon.query;

import java.util.Collections;
import java.util.Iterator;
import net.p110sf.saxon.expr.BindingReference;
import net.p110sf.saxon.expr.instruct.Executable;
import net.p110sf.saxon.expr.instruct.GlobalVariable;
import net.p110sf.saxon.trans.XPathException;

/* loaded from: classes11.dex */
public class UndeclaredVariable extends GlobalVariable {
    @Override // net.p110sf.saxon.expr.instruct.GlobalVariable
    public void compile(Executable executable, int i) throws XPathException {
        throw new UnsupportedOperationException("Attempt to compile a place-holder for an undeclared variable");
    }

    public void transferReferences(GlobalVariable globalVariable) {
        Iterator<BindingReference> it2 = this.references.iterator();
        while (it2.hasNext()) {
            globalVariable.registerReference(it2.next());
        }
        this.references = Collections.emptyList();
    }
}
