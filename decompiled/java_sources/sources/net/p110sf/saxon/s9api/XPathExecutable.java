package net.p110sf.saxon.s9api;

import com.sunia.HTREnginev2.gae;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.stream.Stream;
import net.p110sf.saxon.expr.StaticContext;
import net.p110sf.saxon.s9api.streams.Step;
import net.p110sf.saxon.sxpath.IndependentContext;
import net.p110sf.saxon.sxpath.XPathExpression;
import net.p110sf.saxon.sxpath.XPathVariable;

/* loaded from: classes11.dex */
public class XPathExecutable {

    /* renamed from: a */
    public final XPathExpression f101382a;

    /* renamed from: b */
    public final Processor f101383b;

    /* renamed from: c */
    public final IndependentContext f101384c;

    /* renamed from: net.sf.saxon.s9api.XPathExecutable$a */
    /* loaded from: classes11.dex */
    public class C18478a extends Step<XdmItem> {
        public C18478a() {
        }

        /* JADX WARN: Type inference failed for: r0v4, types: [net.sf.saxon.s9api.XdmSequenceIterator] */
        @Override // java.util.function.Function
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public Stream<? extends XdmItem> apply(XdmItem xdmItem) {
            try {
                XPathSelector load = XPathExecutable.this.load();
                load.setContextItem(xdmItem);
                return load.iterator().stream();
            } catch (SaxonApiException e) {
                throw new SaxonApiUncheckedException(e);
            }
        }
    }

    public XPathExecutable(XPathExpression xPathExpression, Processor processor, IndependentContext independentContext) {
        this.f101382a = xPathExpression;
        this.f101383b = processor;
        this.f101384c = independentContext;
    }

    public Step<XdmItem> asStep() {
        return new C18478a();
    }

    public OccurrenceIndicator getRequiredCardinalityForVariable(QName qName) {
        XPathVariable externalVariable = this.f101384c.getExternalVariable(qName.getStructuredQName());
        if (externalVariable == null) {
            return null;
        }
        return OccurrenceIndicator.getOccurrenceIndicator(externalVariable.getRequiredType().getCardinality());
    }

    public ItemType getRequiredItemTypeForVariable(QName qName) {
        XPathVariable externalVariable = this.f101384c.getExternalVariable(qName.getStructuredQName());
        if (externalVariable == null) {
            return null;
        }
        return new gae(externalVariable.getRequiredType().getPrimaryType(), this.f101383b.getUnderlyingConfiguration());
    }

    public OccurrenceIndicator getResultCardinality() {
        return OccurrenceIndicator.getOccurrenceIndicator(this.f101382a.getInternalExpression().getCardinality());
    }

    public ItemType getResultItemType() {
        return new gae(this.f101382a.getInternalExpression().getItemType(), this.f101383b.getUnderlyingConfiguration());
    }

    public XPathExpression getUnderlyingExpression() {
        return this.f101382a;
    }

    public StaticContext getUnderlyingStaticContext() {
        return this.f101384c;
    }

    public Iterator<QName> iterateExternalVariables() {
        ArrayList arrayList = new ArrayList();
        Iterator<XPathVariable> it2 = this.f101384c.getExternalVariables().iterator();
        while (it2.hasNext()) {
            arrayList.add(new QName(it2.next().getVariableQName()));
        }
        return arrayList.iterator();
    }

    public XPathSelector load() {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (XPathVariable xPathVariable : this.f101384c.getExternalVariables()) {
            linkedHashMap.put(xPathVariable.getVariableQName(), xPathVariable);
        }
        return new XPathSelector(this.f101382a, linkedHashMap);
    }
}
