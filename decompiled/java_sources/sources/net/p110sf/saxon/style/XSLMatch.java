package net.p110sf.saxon.style;

import java.util.Iterator;
import net.p110sf.saxon.expr.ContextItemExpression;
import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.PatternMatchExpression;
import net.p110sf.saxon.om.AttributeInfo;
import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.om.NodeName;
import net.p110sf.saxon.pattern.ItemTypePattern;
import net.p110sf.saxon.pattern.Pattern;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.AnyItemType;

/* loaded from: classes11.dex */
public class XSLMatch extends StyleElement {

    /* renamed from: u */
    public Expression f102031u;

    /* renamed from: v */
    public Pattern f102032v;

    @Override // net.p110sf.saxon.style.StyleElement
    public Expression compile(Compilation compilation, ComponentDeclaration componentDeclaration) throws XPathException {
        return new PatternMatchExpression(this.f102031u, this.f102032v);
    }

    public Expression getSelectExpression() {
        return this.f102031u;
    }

    @Override // net.p110sf.saxon.style.StyleElement
    public boolean isInstruction() {
        return true;
    }

    @Override // net.p110sf.saxon.style.StyleElement
    public boolean mayContainFallback() {
        return true;
    }

    @Override // net.p110sf.saxon.style.StyleElement
    public boolean mayContainSequenceConstructor() {
        return false;
    }

    @Override // net.p110sf.saxon.style.StyleElement
    public void prepareAttributes() {
        for (AttributeInfo attributeInfo : attributes()) {
            NodeName nodeName = attributeInfo.getNodeName();
            String value = attributeInfo.getValue();
            String displayName = nodeName.getDisplayName();
            if (displayName.equals("select")) {
                this.f102031u = makeExpression(value, attributeInfo);
            } else if (displayName.equals("pattern")) {
                this.f102032v = m63960L(value, "pattern");
            } else {
                checkUnknownAttribute(nodeName);
            }
        }
        if (this.f102031u == null) {
            this.f102031u = new ContextItemExpression();
        }
        if (this.f102032v == null) {
            reportAbsence("pattern");
            this.f102032v = new ItemTypePattern(AnyItemType.getInstance());
        }
    }

    public void setSelectExpression(Expression expression) {
        this.f102031u = expression;
    }

    @Override // net.p110sf.saxon.style.StyleElement
    public void validate(ComponentDeclaration componentDeclaration) throws XPathException {
        Iterator<? extends NodeInfo> it2 = children().iterator();
        while (true) {
            if (!it2.hasNext()) {
                break;
            } else if (!(it2.next() instanceof XSLFallback)) {
                compileError("Only xsl:fallback is allowed within xsl:match");
                break;
            }
        }
        this.f102031u = typeCheck("select", this.f102031u);
        this.f102032v = typeCheck("pattern", this.f102032v);
    }
}
