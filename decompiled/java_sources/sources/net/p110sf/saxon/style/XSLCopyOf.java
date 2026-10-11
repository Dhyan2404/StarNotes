package net.p110sf.saxon.style;

import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.instruct.CopyOf;
import net.p110sf.saxon.lib.NamespaceConstant;
import net.p110sf.saxon.om.AttributeInfo;
import net.p110sf.saxon.om.NodeName;
import net.p110sf.saxon.trans.SaxonErrorCode;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.SchemaType;
import net.p110sf.saxon.value.Whitespace;

/* loaded from: classes11.dex */
public final class XSLCopyOf extends StyleElement {

    /* renamed from: u */
    public Expression f101931u;

    /* renamed from: v */
    public boolean f101932v;

    /* renamed from: w */
    public boolean f101933w;

    /* renamed from: x */
    public int f101934x = 3;

    /* renamed from: y */
    public SchemaType f101935y;

    @Override // net.p110sf.saxon.style.StyleElement
    public Expression compile(Compilation compilation, ComponentDeclaration componentDeclaration) {
        CopyOf copyOf = new CopyOf(this.f101931u, this.f101932v, this.f101934x, this.f101935y, false);
        copyOf.setCopyAccumulators(this.f101933w);
        copyOf.setSchemaAware(compilation.isSchemaAware());
        return copyOf;
    }

    @Override // net.p110sf.saxon.style.StyleElement
    public boolean isInstruction() {
        return true;
    }

    @Override // net.p110sf.saxon.style.StyleElement
    public void prepareAttributes() {
        String str = null;
        String str2 = null;
        String str3 = null;
        String str4 = null;
        String str5 = null;
        for (AttributeInfo attributeInfo : attributes()) {
            NodeName nodeName = attributeInfo.getNodeName();
            String value = attributeInfo.getValue();
            String displayName = nodeName.getDisplayName();
            if (displayName.equals("select")) {
                this.f101931u = makeExpression(value, attributeInfo);
                str = value;
            } else if (displayName.equals("copy-namespaces")) {
                str3 = Whitespace.trim(value);
            } else if (displayName.equals("copy-accumulators")) {
                str2 = Whitespace.trim(value);
            } else if (displayName.equals("validation")) {
                str4 = Whitespace.trim(value);
            } else if (displayName.equals("type")) {
                str5 = Whitespace.trim(value);
            } else if (nodeName.getLocalPart().equals("read-once") && nodeName.hasURI(NamespaceConstant.SAXON)) {
                compileError("The saxon:read-once attribute is no longer available - use xsl:stream");
            } else {
                checkUnknownAttribute(nodeName);
            }
        }
        if (str == null) {
            reportAbsence("select");
        }
        if (str2 == null) {
            this.f101933w = false;
        } else {
            boolean processBooleanAttribute = processBooleanAttribute("copy-accumulators", str2);
            this.f101933w = processBooleanAttribute;
            if (processBooleanAttribute && m63956G()) {
                compileWarning("Copying accumulators is pointless when the copied element is immediately attached to a new parent, since that action will lose the accumulator values", SaxonErrorCode.SXWN9017);
                this.f101933w = false;
            }
        }
        if (str3 == null) {
            this.f101932v = true;
        } else {
            this.f101932v = processBooleanAttribute("copy-namespaces", str3);
        }
        if (str4 != null) {
            this.f101934x = validateValidationAttribute(str4);
        } else {
            this.f101934x = m63987z();
        }
        if (str5 != null) {
            this.f101935y = getSchemaType(str5);
            if (!isSchemaAware()) {
                compileError("The @type attribute is available only with a schema-aware XSLT processor", "XTSE1660");
            }
            this.f101934x = 8;
        }
        if (str5 == null || str4 == null) {
            return;
        }
        compileError("The @validation and @type attributes are mutually exclusive", "XTSE1505");
    }

    @Override // net.p110sf.saxon.style.StyleElement
    public void validate(ComponentDeclaration componentDeclaration) throws XPathException {
        checkEmpty();
        this.f101931u = typeCheck("select", this.f101931u);
    }
}
