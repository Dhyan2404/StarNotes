package net.p110sf.saxon.s9api;

import javax.xml.transform.ErrorListener;
import javax.xml.transform.Source;
import net.p110sf.saxon.event.EventSource;
import net.p110sf.saxon.event.PipelineConfiguration;
import net.p110sf.saxon.event.Receiver;
import net.p110sf.saxon.jaxp.ReceivingDestination;
import net.p110sf.saxon.lib.InvalidityHandler;
import net.p110sf.saxon.lib.ParseOptions;
import net.p110sf.saxon.serialize.SerializationProperties;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.SchemaType;
import net.p110sf.saxon.type.ValidationParams;

/* loaded from: classes11.dex */
public abstract class SchemaValidator extends AbstractDestination {

    /* renamed from: net.sf.saxon.s9api.SchemaValidator$a */
    /* loaded from: classes11.dex */
    public class C18476a extends EventSource {

        /* renamed from: f */
        public final /* synthetic */ Source f101362f;

        public C18476a(Source source) {
            this.f101362f = source;
            setSystemId(source.getSystemId());
        }

        @Override // net.p110sf.saxon.event.EventSource, net.p110sf.saxon.lib.ActiveSource
        public void deliver(Receiver receiver, ParseOptions parseOptions) throws XPathException {
            SchemaValidator.this.setDestination(new ReceivingDestination(receiver));
            try {
                SchemaValidator.this.validate(this.f101362f);
            } catch (SaxonApiException e) {
                throw XPathException.makeXPathException(e);
            }
        }
    }

    public Source asSource(Source source) {
        return new C18476a(source);
    }

    @Override // net.p110sf.saxon.s9api.Destination
    public abstract void close() throws SaxonApiException;

    public abstract Destination getDestination();

    public abstract QName getDocumentElementName();

    public abstract SchemaType getDocumentElementType();

    public abstract QName getDocumentElementTypeName();

    @Deprecated
    public abstract ErrorListener getErrorListener();

    public abstract InvalidityHandler getInvalidityHandler();

    public abstract XdmValue getParameter(QName qName);

    @Override // net.p110sf.saxon.s9api.Destination
    public abstract Receiver getReceiver(PipelineConfiguration pipelineConfiguration, SerializationProperties serializationProperties) throws SaxonApiException;

    public abstract ValidationParams getValidationParameters() throws SaxonApiException;

    public abstract boolean isCollectStatistics();

    public abstract boolean isExpandAttributeDefaults();

    public abstract boolean isLax();

    public abstract boolean isUseXsiSchemaLocation();

    public abstract void reportValidationStatistics(Destination destination) throws SaxonApiException;

    public abstract void setCollectStatistics(boolean z);

    public abstract void setDestination(Destination destination);

    public abstract void setDocumentElementName(QName qName);

    public abstract void setDocumentElementTypeName(QName qName) throws SaxonApiException;

    @Deprecated
    public abstract void setErrorListener(ErrorListener errorListener);

    public abstract void setExpandAttributeDefaults(boolean z);

    public abstract void setInvalidityHandler(InvalidityHandler invalidityHandler);

    public abstract void setLax(boolean z);

    public abstract void setParameter(QName qName, XdmValue xdmValue);

    public abstract void setUseXsiSchemaLocation(boolean z);

    public abstract void setValidityReporting(Destination destination) throws SaxonApiException;

    public abstract void validate(Source source) throws SaxonApiException;

    public abstract void validateMultiple(Iterable<Source> iterable) throws SaxonApiException;
}
