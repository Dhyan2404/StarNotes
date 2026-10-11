package net.p110sf.saxon.style;

import com.sun.org.apache.xalan.internal.templates.Constants;
import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.StringLiteral;
import net.p110sf.saxon.expr.instruct.ValueOf;
import net.p110sf.saxon.str.UnicodeString;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.tree.linked.NodeImpl;
import net.p110sf.saxon.tree.linked.TextImpl;
import net.p110sf.saxon.value.Whitespace;

/* loaded from: classes11.dex */
public class TextValueTemplateNode extends TextImpl {

    /* renamed from: k */
    public static final /* synthetic */ boolean f101843k = false;

    /* renamed from: i */
    public Expression f101844i;

    /* renamed from: j */
    public TextValueTemplateContext f101845j;

    public TextValueTemplateNode(UnicodeString unicodeString) {
        super(unicodeString);
    }

    public Expression getContentExpression() {
        return this.f101844i;
    }

    public TextValueTemplateContext getStaticContext() {
        if (this.f101845j == null) {
            this.f101845j = new TextValueTemplateContext((StyleElement) getParent(), this);
        }
        return this.f101845j;
    }

    public void parse() throws XPathException {
        NodeImpl parent = getParent();
        boolean z = (parent instanceof XSLText) && StyleElement.isYes(Whitespace.trim(parent.getAttributeValue("", Constants.ATTRNAME_DISABLE_OUTPUT_ESCAPING)));
        try {
            this.f101844i = AttributeValueTemplate.make(getUnicodeStringValue().toString(), getStaticContext());
        } catch (XPathException e) {
            e.setLocation(this);
            ((StyleElement) getParent()).compileError(e);
            this.f101844i = new StringLiteral(getStringValue());
        }
        ValueOf valueOf = new ValueOf(this.f101844i, z, false);
        this.f101844i = valueOf;
        valueOf.setRetainedStaticContext(((StyleElement) getParent()).makeRetainedStaticContext());
    }

    public void validate() throws XPathException {
        this.f101844i = ((StyleElement) getParent()).typeCheck("tvt", this.f101844i);
    }
}
