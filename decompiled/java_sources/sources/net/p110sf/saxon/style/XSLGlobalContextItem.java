package net.p110sf.saxon.style;

import net.p110sf.saxon.expr.instruct.GlobalContextRequirement;
import net.p110sf.saxon.pattern.SameNameTest;
import net.p110sf.saxon.trans.XPathException;

/* loaded from: classes11.dex */
public class XSLGlobalContextItem extends XSLContextItem {
    @Override // net.p110sf.saxon.style.StyleElement
    public void index(ComponentDeclaration componentDeclaration, PrincipalStylesheetModule principalStylesheetModule) throws XPathException {
        prepareAttributes();
        GlobalContextRequirement globalContextRequirement = new GlobalContextRequirement();
        globalContextRequirement.setMayBeOmitted(isMayBeOmitted());
        globalContextRequirement.setAbsentFocus(isAbsentFocus());
        globalContextRequirement.addRequiredItemType(getRequiredContextItemType());
        try {
            principalStylesheetModule.getStylesheetPackage().setContextItemRequirements(globalContextRequirement);
        } catch (XPathException e) {
            e.setLocation(componentDeclaration.getSourceElement());
            throw e;
        }
    }

    @Override // net.p110sf.saxon.style.StyleElement
    public boolean isDeclaration() {
        return true;
    }

    @Override // net.p110sf.saxon.style.XSLContextItem, net.p110sf.saxon.style.StyleElement
    public void validate(ComponentDeclaration componentDeclaration) throws XPathException {
        if (iterateAxis(11, new SameNameTest(this)).next() != null) {
            compileError("xsl:global-context-item must not appear twice within the same stylesheet module", "XTSE3087");
        }
    }
}
