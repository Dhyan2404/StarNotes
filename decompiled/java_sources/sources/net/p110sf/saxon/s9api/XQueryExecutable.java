package net.p110sf.saxon.s9api;

import com.sunia.HTREnginev2.gae;
import net.p110sf.saxon.Configuration;
import net.p110sf.saxon.query.XQueryExpression;
import net.p110sf.saxon.trace.ExpressionPresenter;
import net.p110sf.saxon.trans.XPathException;

/* loaded from: classes11.dex */
public class XQueryExecutable {

    /* renamed from: a */
    public Processor f101401a;

    /* renamed from: b */
    public XQueryExpression f101402b;

    public XQueryExecutable(Processor processor, XQueryExpression xQueryExpression) {
        this.f101401a = processor;
        this.f101402b = xQueryExpression;
    }

    public void explain(Destination destination) throws SaxonApiException {
        Configuration underlyingConfiguration = this.f101401a.getUnderlyingConfiguration();
        try {
            this.f101402b.explain(new ExpressionPresenter(underlyingConfiguration, destination.getReceiver(underlyingConfiguration.makePipelineConfiguration(), underlyingConfiguration.obtainDefaultSerializationProperties())));
        } catch (XPathException e) {
            throw new SaxonApiException(e);
        }
    }

    public OccurrenceIndicator getResultCardinality() {
        return OccurrenceIndicator.getOccurrenceIndicator(this.f101402b.getExpression().getCardinality());
    }

    public ItemType getResultItemType() {
        return new gae(this.f101402b.getExpression().getItemType(), this.f101401a.getUnderlyingConfiguration());
    }

    public XQueryExpression getUnderlyingCompiledQuery() {
        return this.f101402b;
    }

    public boolean isUpdateQuery() {
        return this.f101402b.isUpdateQuery();
    }

    public XQueryEvaluator load() {
        return new XQueryEvaluator(this.f101401a, this.f101402b);
    }
}
