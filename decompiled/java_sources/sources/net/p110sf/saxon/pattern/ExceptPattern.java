package net.p110sf.saxon.pattern;

import java.util.HashSet;
import java.util.Set;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.expr.parser.ExpressionTool;
import net.p110sf.saxon.expr.parser.RebindingMap;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.ItemType;
import net.p110sf.saxon.type.UType;

/* loaded from: classes11.dex */
public class ExceptPattern extends VennPattern {
    public ExceptPattern(Pattern pattern, Pattern pattern2) {
        super(pattern, pattern2);
    }

    @Override // net.p110sf.saxon.pattern.VennPattern, net.p110sf.saxon.expr.Expression
    public int computeHashCode() {
        return this.f100939p2.hashCode() ^ (this.f100938p1.hashCode() ^ 2077745062);
    }

    @Override // net.p110sf.saxon.pattern.Pattern
    public Pattern convertToTypedPattern(String str) throws XPathException {
        Pattern convertToTypedPattern = this.f100938p1.convertToTypedPattern(str);
        Pattern convertToTypedPattern2 = this.f100939p2.convertToTypedPattern(str);
        return (this.f100938p1 == convertToTypedPattern && this.f100939p2 == convertToTypedPattern2) ? this : new ExceptPattern(convertToTypedPattern, convertToTypedPattern2);
    }

    @Override // net.p110sf.saxon.pattern.VennPattern, net.p110sf.saxon.expr.Expression
    public boolean equals(Object obj) {
        if (!(obj instanceof ExceptPattern)) {
            return false;
        }
        Set<Pattern> hashSet = new HashSet<>(10);
        gatherComponentPatterns(hashSet);
        HashSet hashSet2 = new HashSet(10);
        ((ExceptPattern) obj).gatherComponentPatterns(hashSet2);
        return hashSet.equals(hashSet2);
    }

    @Override // net.p110sf.saxon.pattern.Pattern
    public double getDefaultPriority() {
        return this.f100938p1.getDefaultPriority();
    }

    @Override // net.p110sf.saxon.pattern.Pattern, net.p110sf.saxon.expr.PseudoExpression, net.p110sf.saxon.expr.Expression
    public ItemType getItemType() {
        return this.f100938p1.getItemType();
    }

    @Override // net.p110sf.saxon.pattern.VennPattern
    public String getOperatorName() {
        return "except";
    }

    @Override // net.p110sf.saxon.pattern.Pattern
    public UType getUType() {
        return this.f100938p1.getUType();
    }

    @Override // net.p110sf.saxon.pattern.Pattern
    /* renamed from: matches */
    public boolean m63465s(Item item, XPathContext xPathContext) throws XPathException {
        return this.f100938p1.m63465s(item, xPathContext) && !this.f100939p2.m63465s(item, xPathContext);
    }

    @Override // net.p110sf.saxon.pattern.Pattern
    public boolean matchesBeneathAnchor(NodeInfo nodeInfo, NodeInfo nodeInfo2, XPathContext xPathContext) throws XPathException {
        return this.f100938p1.matchesBeneathAnchor(nodeInfo, nodeInfo2, xPathContext) && !this.f100939p2.matchesBeneathAnchor(nodeInfo, nodeInfo2, xPathContext);
    }

    @Override // net.p110sf.saxon.pattern.Pattern, net.p110sf.saxon.expr.Expression
    public Pattern copy(RebindingMap rebindingMap) {
        ExceptPattern exceptPattern = new ExceptPattern(this.f100938p1.copy(rebindingMap), this.f100939p2.copy(rebindingMap));
        ExpressionTool.copyLocationInfo(this, exceptPattern);
        exceptPattern.setOriginalText(getOriginalText());
        return exceptPattern;
    }
}
