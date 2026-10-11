package net.p110sf.saxon.lib;

import java.util.ArrayList;
import javax.xml.transform.Result;
import javax.xml.transform.TransformerException;
import net.p110sf.saxon.event.CloseNotifier;
import net.p110sf.saxon.event.PipelineConfiguration;
import net.p110sf.saxon.event.Receiver;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.lib.OutputURIResolver;
import net.p110sf.saxon.lib.OutputURIResolverWrapper;
import net.p110sf.saxon.s9api.Action;
import net.p110sf.saxon.s9api.SaxonApiException;
import net.p110sf.saxon.serialize.SerializationProperties;
import net.p110sf.saxon.trans.UncheckedXPathException;
import net.p110sf.saxon.trans.XPathException;

/* loaded from: classes11.dex */
public class OutputURIResolverWrapper implements ResultDocumentResolver {

    /* renamed from: a */
    public final OutputURIResolver f100509a;

    public OutputURIResolverWrapper(OutputURIResolver outputURIResolver) {
        this.f100509a = outputURIResolver;
    }

    /* renamed from: b */
    public static /* synthetic */ void m63260b(OutputURIResolver outputURIResolver, Result result) throws SaxonApiException {
        try {
            outputURIResolver.close(result);
        } catch (TransformerException e) {
            throw new UncheckedXPathException(XPathException.makeXPathException(e));
        }
    }

    public OutputURIResolver getOutputURIResolver() {
        return this.f100509a;
    }

    @Override // net.p110sf.saxon.lib.ResultDocumentResolver
    public Receiver resolve(XPathContext xPathContext, String str, String str2, SerializationProperties serializationProperties) throws XPathException {
        Receiver receiver;
        final OutputURIResolver newInstance = this.f100509a.newInstance();
        try {
            final Result resolve = newInstance.resolve(str, str2);
            Action action = new Action() { // from class: com.sunia.HTREnginev2.njk
                @Override // net.p110sf.saxon.s9api.Action
                public final void act() {
                    OutputURIResolverWrapper.m63260b(OutputURIResolver.this, resolve);
                }
            };
            if (resolve instanceof Receiver) {
                receiver = (Receiver) resolve;
            } else {
                SerializerFactory serializerFactory = xPathContext.getConfiguration().getSerializerFactory();
                PipelineConfiguration makePipelineConfiguration = xPathContext.getController().makePipelineConfiguration();
                makePipelineConfiguration.setXPathContext(xPathContext);
                receiver = serializerFactory.getReceiver(resolve, serializationProperties, makePipelineConfiguration);
            }
            ArrayList arrayList = new ArrayList();
            arrayList.add(action);
            return new CloseNotifier(receiver, arrayList);
        } catch (TransformerException e) {
            throw XPathException.makeXPathException(e);
        }
    }
}
