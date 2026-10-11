package net.p110sf.saxon.pattern;

import com.sun.org.apache.xalan.internal.templates.Constants;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.expr.parser.ExpressionTool;
import net.p110sf.saxon.expr.parser.RebindingMap;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.trace.ExpressionPresenter;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.AlphaCode;
import net.p110sf.saxon.type.ItemType;
import net.p110sf.saxon.type.UType;

/* loaded from: classes11.dex */
public class ItemTypePattern extends Pattern {

    /* renamed from: q */
    public final ItemType f100899q;

    public ItemTypePattern(ItemType itemType) {
        this.f100899q = itemType;
        setPriority(itemType.getDefaultPriority());
    }

    @Override // net.p110sf.saxon.expr.Expression
    public int computeHashCode() {
        return this.f100899q.hashCode() ^ 2055459240;
    }

    @Override // net.p110sf.saxon.expr.Expression
    public boolean equals(Object obj) {
        return (obj instanceof ItemTypePattern) && ((ItemTypePattern) obj).f100899q.equals(this.f100899q);
    }

    @Override // net.p110sf.saxon.pattern.Pattern, net.p110sf.saxon.expr.Expression, net.p110sf.saxon.expr.ExportAgent
    public void export(ExpressionPresenter expressionPresenter) throws XPathException {
        expressionPresenter.startElement("p.nodeTest");
        expressionPresenter.emitAttribute(Constants.ATTRNAME_TEST, AlphaCode.fromItemType(this.f100899q));
        expressionPresenter.endElement();
    }

    @Override // net.p110sf.saxon.pattern.Pattern, net.p110sf.saxon.expr.PseudoExpression, net.p110sf.saxon.expr.Expression
    public ItemType getItemType() {
        return this.f100899q;
    }

    @Override // net.p110sf.saxon.pattern.Pattern
    public UType getUType() {
        return this.f100899q.getUType();
    }

    @Override // net.p110sf.saxon.pattern.Pattern
    /* renamed from: matches */
    public boolean m63465s(Item item, XPathContext xPathContext) throws XPathException {
        return this.f100899q.matches(item, xPathContext.getConfiguration().getTypeHierarchy());
    }

    @Override // net.p110sf.saxon.pattern.Pattern
    public String reconstruct() {
        return this.f100899q.toString();
    }

    @Override // net.p110sf.saxon.pattern.Pattern, net.p110sf.saxon.expr.Expression
    public Pattern copy(RebindingMap rebindingMap) {
        ItemTypePattern itemTypePattern = new ItemTypePattern(this.f100899q);
        ExpressionTool.copyLocationInfo(this, itemTypePattern);
        itemTypePattern.setOriginalText(getOriginalText());
        return itemTypePattern;
    }
}
