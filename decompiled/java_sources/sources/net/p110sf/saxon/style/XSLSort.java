package net.p110sf.saxon.style;

import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.trans.XPathException;

/* loaded from: classes11.dex */
public class XSLSort extends XSLSortOrMergeKey {
    @Override // net.p110sf.saxon.style.XSLSortOrMergeKey
    public Expression getStable() {
        return this.stable;
    }

    @Override // net.p110sf.saxon.style.XSLSortOrMergeKey, net.p110sf.saxon.style.StyleElement
    public void validate(ComponentDeclaration componentDeclaration) throws XPathException {
        super.validate(componentDeclaration);
        Expression typeCheck = typeCheck("stable", this.stable);
        this.stable = typeCheck;
        this.sortKeyDefinition.setStable(typeCheck);
    }
}
