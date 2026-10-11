package net.p110sf.saxon.style;

import com.sun.org.apache.xalan.internal.templates.Constants;
import java.util.StringTokenizer;
import net.p110sf.saxon.event.Stripper;
import net.p110sf.saxon.om.AttributeInfo;
import net.p110sf.saxon.om.NameChecker;
import net.p110sf.saxon.om.NodeName;
import net.p110sf.saxon.om.QNameException;
import net.p110sf.saxon.om.SelectedElementsSpaceStrippingRule;
import net.p110sf.saxon.om.SpaceStrippingRule;
import net.p110sf.saxon.pattern.LocalNameTest;
import net.p110sf.saxon.pattern.NameTest;
import net.p110sf.saxon.pattern.NamespaceTest;
import net.p110sf.saxon.pattern.NodeKindTest;
import net.p110sf.saxon.trans.XPathException;

/* loaded from: classes11.dex */
public class XSLPreserveSpace extends StyleElement {

    /* renamed from: u */
    public String f102087u;

    @Override // net.p110sf.saxon.style.StyleElement
    public void compileDeclaration(Compilation compilation, ComponentDeclaration componentDeclaration) {
        String str;
        Stripper.StripRuleTarget stripRuleTarget = getFingerprint() == 199 ? Stripper.PRESERVE : Stripper.STRIP;
        PrincipalStylesheetModule principalStylesheetModule = getCompilation().getPrincipalStylesheetModule();
        SpaceStrippingRule stripperRules = principalStylesheetModule.getStylesheetPackage().getStripperRules();
        if (!(stripperRules instanceof SelectedElementsSpaceStrippingRule)) {
            stripperRules = new SelectedElementsSpaceStrippingRule(true);
            principalStylesheetModule.getStylesheetPackage().setStripperRules(stripperRules);
        }
        SelectedElementsSpaceStrippingRule selectedElementsSpaceStrippingRule = (SelectedElementsSpaceStrippingRule) stripperRules;
        StringTokenizer stringTokenizer = new StringTokenizer(this.f102087u, " \t\n\r", false);
        while (stringTokenizer.hasMoreTokens()) {
            try {
                String nextToken = stringTokenizer.nextToken();
                if (nextToken.equals("*")) {
                    selectedElementsSpaceStrippingRule.addRule(NodeKindTest.ELEMENT, stripRuleTarget, componentDeclaration.getModule(), componentDeclaration.getSourceElement().getLineNumber());
                } else if (nextToken.startsWith("Q{")) {
                    int indexOf = nextToken.indexOf(125);
                    if (indexOf < 0) {
                        compileError("No closing '}' in EQName");
                    } else if (indexOf == nextToken.length() - 1) {
                        compileError("Missing local part in EQName");
                    } else {
                        String substring = nextToken.substring(2, indexOf);
                        String substring2 = nextToken.substring(indexOf + 1);
                        selectedElementsSpaceStrippingRule.addRule(substring2.equals("*") ? new NamespaceTest(getNamePool(), 1, substring) : new NameTest(1, substring, substring2, getNamePool()), stripRuleTarget, componentDeclaration.getModule(), componentDeclaration.getSourceElement().getLineNumber());
                    }
                } else if (nextToken.endsWith(":*")) {
                    if (nextToken.length() == 2) {
                        compileError("No prefix before ':*'");
                    }
                    String substring3 = nextToken.substring(0, nextToken.length() - 2);
                    String uRIForPrefix = getURIForPrefix(substring3, false);
                    if (uRIForPrefix == null) {
                        m63972X(substring3, "XTSE0280", Constants.ATTRNAME_ELEMENTS);
                    }
                    selectedElementsSpaceStrippingRule.addRule(new NamespaceTest(getNamePool(), 1, uRIForPrefix), stripRuleTarget, componentDeclaration.getModule(), componentDeclaration.getSourceElement().getLineNumber());
                } else if (nextToken.startsWith("*:")) {
                    if (nextToken.length() == 2) {
                        compileErrorInAttribute("No local name after '*:'", "XTSE0010", Constants.ATTRNAME_ELEMENTS);
                    }
                    selectedElementsSpaceStrippingRule.addRule(new LocalNameTest(getNamePool(), 1, nextToken.substring(2)), stripRuleTarget, componentDeclaration.getModule(), componentDeclaration.getSourceElement().getLineNumber());
                } else {
                    try {
                        String[] qNameParts = NameChecker.getQNameParts(nextToken);
                        String str2 = qNameParts[0];
                        if (str2.equals("")) {
                            str = getDefaultXPathNamespace();
                        } else {
                            String uRIForPrefix2 = getURIForPrefix(str2, false);
                            if (uRIForPrefix2 == null) {
                                m63972X(str2, "XTSE0280", Constants.ATTRNAME_ELEMENTS);
                            }
                            str = uRIForPrefix2;
                        }
                        selectedElementsSpaceStrippingRule.addRule(new NameTest(1, getNamePool().allocateFingerprint(str, qNameParts[1]), getNamePool()), stripRuleTarget, componentDeclaration.getModule(), componentDeclaration.getSourceElement().getLineNumber());
                    } catch (QNameException unused) {
                        compileError("Element name " + nextToken + " is not a valid QName", "XTSE0280");
                        return;
                    }
                }
            } catch (XPathException e) {
                e.maybeSetLocation(allocateLocation());
                compileError(e);
                return;
            }
        }
    }

    @Override // net.p110sf.saxon.style.StyleElement
    public void index(ComponentDeclaration componentDeclaration, PrincipalStylesheetModule principalStylesheetModule) {
        String attributeValue;
        if (getFingerprint() != 205 || getFingerprint() != 205 || (attributeValue = getAttributeValue("", Constants.ATTRNAME_ELEMENTS)) == null || attributeValue.trim().isEmpty()) {
            return;
        }
        principalStylesheetModule.getStylesheetPackage().setStripsWhitespace(true);
    }

    @Override // net.p110sf.saxon.style.StyleElement
    public boolean isDeclaration() {
        return true;
    }

    @Override // net.p110sf.saxon.style.StyleElement
    public void prepareAttributes() {
        for (AttributeInfo attributeInfo : attributes()) {
            NodeName nodeName = attributeInfo.getNodeName();
            if (nodeName.getDisplayName().equals(Constants.ATTRNAME_ELEMENTS)) {
                this.f102087u = attributeInfo.getValue();
            } else {
                checkUnknownAttribute(nodeName);
            }
        }
        if (this.f102087u == null) {
            reportAbsence(Constants.ATTRNAME_ELEMENTS);
            this.f102087u = "*";
        }
    }

    @Override // net.p110sf.saxon.style.StyleElement
    public void validate(ComponentDeclaration componentDeclaration) throws XPathException {
        checkEmpty();
        checkTopLevel("XTSE0010", false);
    }
}
