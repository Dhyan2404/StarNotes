package net.p110sf.saxon.style;

import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.Literal;
import net.p110sf.saxon.expr.instruct.DocumentInstr;
import net.p110sf.saxon.om.AttributeInfo;
import net.p110sf.saxon.om.NodeName;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.SchemaType;
import net.p110sf.saxon.value.Whitespace;

/* loaded from: classes11.dex */
public class XSLDocument extends StyleElement {

    /* renamed from: u */
    public int f101950u = 4;

    /* renamed from: v */
    public SchemaType f101951v = null;

    @Override // net.p110sf.saxon.style.StyleElement
    public Expression compile(Compilation compilation, ComponentDeclaration componentDeclaration) throws XPathException {
        DocumentInstr documentInstr = new DocumentInstr(false, null);
        documentInstr.setValidationAction(this.f101950u, this.f101951v);
        Expression compileSequenceConstructor = compileSequenceConstructor(compilation, componentDeclaration, true);
        if (compileSequenceConstructor == null) {
            compileSequenceConstructor = Literal.makeEmptySequence();
        }
        documentInstr.setContentExpression(compileSequenceConstructor);
        documentInstr.setLocation(allocateLocation());
        return documentInstr;
    }

    @Override // net.p110sf.saxon.style.StyleElement
    public boolean isInstruction() {
        return true;
    }

    @Override // net.p110sf.saxon.style.StyleElement
    public boolean mayContainSequenceConstructor() {
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
            if (displayName.equals("validation")) {
                str = Whitespace.trim(value);
            } else if (displayName.equals("type")) {
                str2 = Whitespace.trim(value);
            } else {
                checkUnknownAttribute(nodeName);
            }
        }
        if (str == null) {
            this.f101950u = m63987z();
        } else {
            this.f101950u = validateValidationAttribute(str);
        }
        if (str2 != null) {
            if (!isSchemaAware()) {
                compileError("The @type attribute is available only with a schema-aware XSLT processor", "XTSE1660");
            }
            this.f101951v = getSchemaType(str2);
            this.f101950u = 8;
        }
        if (str2 == null || str == null) {
            return;
        }
        compileError("The @validation and @type attributes are mutually exclusive", "XTSE1505");
    }

    @Override // net.p110sf.saxon.style.StyleElement
    public void validate(ComponentDeclaration componentDeclaration) throws XPathException {
    }
}
