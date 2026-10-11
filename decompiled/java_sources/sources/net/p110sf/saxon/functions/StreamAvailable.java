package net.p110sf.saxon.functions;

import net.p110sf.saxon.event.PipelineConfiguration;
import net.p110sf.saxon.event.ProxyReceiver;
import net.p110sf.saxon.event.Sink;
import net.p110sf.saxon.expr.Callable;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.expr.parser.RetainedStaticContext;
import net.p110sf.saxon.lib.ParseOptions;
import net.p110sf.saxon.om.AttributeMap;
import net.p110sf.saxon.om.NamespaceMap;
import net.p110sf.saxon.om.NodeName;
import net.p110sf.saxon.om.Sequence;
import net.p110sf.saxon.s9api.Location;
import net.p110sf.saxon.trans.QuitParsingException;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.SchemaType;
import net.p110sf.saxon.value.BooleanValue;

/* loaded from: classes11.dex */
public class StreamAvailable extends SystemFunction implements Callable {

    /* renamed from: net.sf.saxon.functions.StreamAvailable$a */
    /* loaded from: classes11.dex */
    public static class C18372a extends ProxyReceiver {
        public C18372a(PipelineConfiguration pipelineConfiguration) {
            super(new Sink(pipelineConfiguration));
        }

        @Override // net.p110sf.saxon.event.ProxyReceiver, net.p110sf.saxon.event.Receiver
        public void startElement(NodeName nodeName, SchemaType schemaType, AttributeMap attributeMap, NamespaceMap namespaceMap, Location location, int i) throws XPathException {
            throw new QuitParsingException(false);
        }
    }

    /* renamed from: a */
    public final boolean m63174a(String str, XPathContext xPathContext) {
        try {
            C18372a c18372a = new C18372a(xPathContext.getConfiguration().makePipelineConfiguration());
            RetainedStaticContext retainedStaticContext = getRetainedStaticContext();
            DocumentFn.sendDoc(str, retainedStaticContext.getStaticBaseUriString(), retainedStaticContext.getPackageData(), xPathContext, null, c18372a, new ParseOptions());
        } catch (QuitParsingException unused) {
            return true;
        } catch (XPathException unused2) {
        }
        return false;
    }

    @Override // net.p110sf.saxon.expr.Callable
    public BooleanValue call(XPathContext xPathContext, Sequence[] sequenceArr) throws XPathException {
        return BooleanValue.get(m63174a(sequenceArr[0].head().getStringValue(), xPathContext));
    }
}
