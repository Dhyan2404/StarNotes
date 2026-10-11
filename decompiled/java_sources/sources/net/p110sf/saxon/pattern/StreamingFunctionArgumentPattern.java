package net.p110sf.saxon.pattern;

import com.google.android.exoplayer2.source.dash.manifest.UrlTemplate;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.expr.parser.ContextItemStaticInfo;
import net.p110sf.saxon.expr.parser.ExpressionVisitor;
import net.p110sf.saxon.expr.parser.RebindingMap;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.SequenceIterator;
import net.p110sf.saxon.trace.ExpressionPresenter;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.ItemType;
import net.p110sf.saxon.type.UType;

/* loaded from: classes11.dex */
public class StreamingFunctionArgumentPattern extends Pattern {

    /* renamed from: q */
    public static final StreamingFunctionArgumentPattern f100936q = new StreamingFunctionArgumentPattern();

    public static StreamingFunctionArgumentPattern getInstance() {
        return f100936q;
    }

    @Override // net.p110sf.saxon.pattern.Pattern, net.p110sf.saxon.expr.Expression
    public Pattern copy(RebindingMap rebindingMap) {
        return this;
    }

    @Override // net.p110sf.saxon.pattern.Pattern, net.p110sf.saxon.expr.Expression, net.p110sf.saxon.expr.ExportAgent
    public void export(ExpressionPresenter expressionPresenter) throws XPathException {
        expressionPresenter.startElement("p.streamingArg");
        expressionPresenter.endElement();
    }

    @Override // net.p110sf.saxon.pattern.Pattern, net.p110sf.saxon.expr.PseudoExpression, net.p110sf.saxon.expr.Expression
    public ItemType getItemType() {
        return AnyNodeTest.getInstance();
    }

    @Override // net.p110sf.saxon.pattern.Pattern
    public UType getUType() {
        return UType.ANY_NODE;
    }

    @Override // net.p110sf.saxon.pattern.Pattern
    /* renamed from: matches */
    public boolean m63465s(Item item, XPathContext xPathContext) throws XPathException {
        Item next;
        SequenceIterator iterate = xPathContext.getStackFrame().getStackFrameValues()[0].iterate();
        do {
            next = iterate.next();
            if (next == null) {
                return false;
            }
        } while (next != item);
        return true;
    }

    @Override // net.p110sf.saxon.pattern.Pattern
    public String reconstruct() {
        return UrlTemplate.f25864i;
    }

    @Override // net.p110sf.saxon.pattern.Pattern, net.p110sf.saxon.expr.Expression
    public Pattern typeCheck(ExpressionVisitor expressionVisitor, ContextItemStaticInfo contextItemStaticInfo) throws XPathException {
        return this;
    }
}
