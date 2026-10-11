package net.p110sf.saxon.pattern;

import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.expr.parser.RebindingMap;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.trace.ExpressionPresenter;
import net.p110sf.saxon.type.AnyItemType;
import net.p110sf.saxon.type.ItemType;
import net.p110sf.saxon.type.UType;

/* loaded from: classes11.dex */
public class UniversalPattern extends Pattern {
    public UniversalPattern() {
        setPriority(-1.0d);
    }

    @Override // net.p110sf.saxon.expr.Expression
    public int computeHashCode() {
        return 2062339752;
    }

    @Override // net.p110sf.saxon.pattern.Pattern, net.p110sf.saxon.expr.Expression
    public Pattern copy(RebindingMap rebindingMap) {
        return this;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public boolean equals(Object obj) {
        return obj instanceof UniversalPattern;
    }

    @Override // net.p110sf.saxon.pattern.Pattern, net.p110sf.saxon.expr.Expression, net.p110sf.saxon.expr.ExportAgent
    public void export(ExpressionPresenter expressionPresenter) {
        expressionPresenter.startElement("p.any");
        expressionPresenter.endElement();
    }

    @Override // net.p110sf.saxon.pattern.Pattern
    public int getFingerprint() {
        return -1;
    }

    @Override // net.p110sf.saxon.pattern.Pattern, net.p110sf.saxon.expr.PseudoExpression, net.p110sf.saxon.expr.Expression
    public ItemType getItemType() {
        return AnyItemType.getInstance();
    }

    @Override // net.p110sf.saxon.pattern.Pattern
    public UType getUType() {
        return UType.ANY;
    }

    @Override // net.p110sf.saxon.pattern.Pattern
    /* renamed from: matches */
    public boolean m63465s(Item item, XPathContext xPathContext) {
        return true;
    }

    @Override // net.p110sf.saxon.pattern.Pattern
    public String reconstruct() {
        return ".";
    }
}
