package net.p110sf.saxon.style;

import com.sun.org.apache.xalan.internal.templates.Constants;
import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.om.AttributeInfo;
import net.p110sf.saxon.om.NamespaceBinding;
import net.p110sf.saxon.om.NodeName;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.value.Whitespace;

/* loaded from: classes11.dex */
public class XSLNamespaceAlias extends StyleElement {

    /* renamed from: u */
    public String f102054u;

    /* renamed from: v */
    public NamespaceBinding f102055v;

    @Override // net.p110sf.saxon.style.StyleElement
    public Expression compile(Compilation compilation, ComponentDeclaration componentDeclaration) throws XPathException {
        return null;
    }

    public NamespaceBinding getResultNamespaceBinding() {
        return this.f102055v;
    }

    public String getStylesheetURI() {
        return this.f102054u;
    }

    @Override // net.p110sf.saxon.style.StyleElement
    public void index(ComponentDeclaration componentDeclaration, PrincipalStylesheetModule principalStylesheetModule) throws XPathException {
        principalStylesheetModule.addNamespaceAlias(componentDeclaration);
    }

    @Override // net.p110sf.saxon.style.StyleElement
    public boolean isDeclaration() {
        return true;
    }

    @Override // net.p110sf.saxon.style.StyleElement
    public void prepareAttributes() {
        String str = null;
        String str2 = null;
        for (AttributeInfo attributeInfo : attributes()) {
            NodeName nodeName = attributeInfo.getNodeName();
            String displayName = nodeName.getDisplayName();
            String value = attributeInfo.getValue();
            if (displayName.equals(Constants.ATTRNAME_STYLESHEET_PREFIX)) {
                str = Whitespace.trim(value);
            } else if (displayName.equals(Constants.ATTRNAME_RESULT_PREFIX)) {
                str2 = Whitespace.trim(value);
            } else {
                checkUnknownAttribute(nodeName);
            }
        }
        String str3 = "";
        if (str == null) {
            reportAbsence(Constants.ATTRNAME_STYLESHEET_PREFIX);
            str = "";
        }
        if (str.equals("#default")) {
            str = "";
        }
        if (str2 == null) {
            reportAbsence(Constants.ATTRNAME_RESULT_PREFIX);
            str2 = "";
        }
        if (str2.equals("#default")) {
            str2 = "";
        }
        String uRIForPrefix = getURIForPrefix(str, true);
        this.f102054u = uRIForPrefix;
        if (uRIForPrefix == null) {
            compileError("stylesheet-prefix " + str + " has not been declared", "XTSE0812");
            this.f102054u = "";
            this.f102055v = NamespaceBinding.DEFAULT_UNDECLARATION;
            return;
        }
        String uRIForPrefix2 = getURIForPrefix(str2, true);
        if (uRIForPrefix2 == null) {
            compileError("result-prefix " + str2 + " has not been declared", "XTSE0812");
            this.f102054u = "";
        } else {
            str3 = uRIForPrefix2;
        }
        this.f102055v = new NamespaceBinding(str2, str3);
    }

    @Override // net.p110sf.saxon.style.StyleElement
    public void validate(ComponentDeclaration componentDeclaration) throws XPathException {
        checkTopLevel("XTSE0010", false);
    }
}
