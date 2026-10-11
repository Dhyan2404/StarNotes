package net.p110sf.saxon.style;

import com.sun.org.apache.xalan.internal.templates.Constants;
import java.util.ArrayList;
import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.Literal;
import net.p110sf.saxon.expr.StringLiteral;
import net.p110sf.saxon.expr.instruct.Block;
import net.p110sf.saxon.expr.instruct.ValueOf;
import net.p110sf.saxon.om.AttributeInfo;
import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.om.NodeName;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.tree.linked.TextImpl;
import net.p110sf.saxon.value.StringValue;
import net.p110sf.saxon.value.Whitespace;

/* loaded from: classes11.dex */
public class XSLText extends XSLLeafNodeConstructor {

    /* renamed from: u */
    public boolean f102128u = false;

    /* renamed from: v */
    public StringValue f102129v;

    @Override // net.p110sf.saxon.style.StyleElement
    public Expression compile(Compilation compilation, ComponentDeclaration componentDeclaration) throws XPathException {
        if (!m63958I()) {
            return new ValueOf(Literal.makeLiteral(this.f102129v), this.f102128u, false);
        }
        TextImpl textImpl = (TextImpl) iterateAxis(3).next();
        if (textImpl == null) {
            return new ValueOf(new StringLiteral(StringValue.EMPTY_STRING), this.f102128u, false);
        }
        ArrayList arrayList = new ArrayList(10);
        m63978q(textImpl, arrayList);
        Expression makeBlock = Block.makeBlock(arrayList);
        makeBlock.setLocation(allocateLocation());
        return makeBlock;
    }

    @Override // net.p110sf.saxon.style.XSLLeafNodeConstructor
    public String getErrorCodeForSelectPlusContent() {
        return null;
    }

    @Override // net.p110sf.saxon.style.StyleElement
    public void prepareAttributes() {
        String str = null;
        for (AttributeInfo attributeInfo : attributes()) {
            NodeName nodeName = attributeInfo.getNodeName();
            String value = attributeInfo.getValue();
            if (nodeName.getDisplayName().equals(Constants.ATTRNAME_DISABLE_OUTPUT_ESCAPING)) {
                str = Whitespace.trim(value);
            } else {
                checkUnknownAttribute(nodeName);
            }
        }
        if (str != null) {
            this.f102128u = processBooleanAttribute(Constants.ATTRNAME_DISABLE_OUTPUT_ESCAPING, str);
        }
    }

    @Override // net.p110sf.saxon.style.XSLLeafNodeConstructor, net.p110sf.saxon.style.StyleElement
    public void validate(ComponentDeclaration componentDeclaration) throws XPathException {
        this.f102129v = StringValue.EMPTY_STRING;
        for (NodeInfo nodeInfo : children()) {
            if (nodeInfo instanceof StyleElement) {
                ((StyleElement) nodeInfo).compileError("xsl:text must not contain child elements", "XTSE0010");
                return;
            }
            this.f102129v = new StringValue(nodeInfo.getUnicodeStringValue());
        }
        super.validate(componentDeclaration);
    }
}
