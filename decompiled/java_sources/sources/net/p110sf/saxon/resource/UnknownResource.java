package net.p110sf.saxon.resource;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.URLConnection;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.lib.Resource;
import net.p110sf.saxon.lib.ResourceFactory;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.query.InputStreamMarker;
import net.p110sf.saxon.resource.AbstractResourceCollection;
import net.p110sf.saxon.resource.UnknownResource;
import net.p110sf.saxon.trans.XPathException;

/* loaded from: classes11.dex */
public class UnknownResource implements Resource {
    public static final ResourceFactory FACTORY = new ResourceFactory() { // from class: com.sunia.HTREnginev2.ytn
        @Override // net.p110sf.saxon.lib.ResourceFactory
        public final Resource makeResource(XPathContext xPathContext, AbstractResourceCollection.InputDetails inputDetails) {
            Resource m63642b;
            m63642b = UnknownResource.m63642b(xPathContext, inputDetails);
            return m63642b;
        }
    };

    /* renamed from: a */
    public final XPathContext f101309a;

    /* renamed from: b */
    public final AbstractResourceCollection.InputDetails f101310b;

    public UnknownResource(XPathContext xPathContext, AbstractResourceCollection.InputDetails inputDetails) {
        this.f101309a = xPathContext;
        this.f101310b = inputDetails;
    }

    /* renamed from: b */
    public static /* synthetic */ Resource m63642b(XPathContext xPathContext, AbstractResourceCollection.InputDetails inputDetails) throws XPathException {
        return new UnknownResource(xPathContext, inputDetails);
    }

    @Override // net.p110sf.saxon.lib.Resource
    public String getContentType() {
        return "application/xml";
    }

    @Override // net.p110sf.saxon.lib.Resource
    public Item getItem() throws XPathException {
        InputStream inputStream;
        AbstractResourceCollection.InputDetails inputDetails = this.f101310b;
        String str = null;
        if (inputDetails.binaryContent != null) {
            inputStream = new ByteArrayInputStream(this.f101310b.binaryContent);
        } else {
            try {
                inputStream = inputDetails.getInputStream();
            } catch (IOException e) {
                if (this.f101310b.onError != 1) {
                    return null;
                }
                throw new XPathException(e);
            }
        }
        if (inputStream == null) {
            throw new XPathException("Unable to dereference resource URI " + this.f101310b.resourceUri);
        }
        try {
            inputStream = InputStreamMarker.ensureMarkSupported(inputStream);
            str = URLConnection.guessContentTypeFromStream(inputStream);
        } catch (IOException unused) {
        }
        if (str == null) {
            str = this.f101309a.getConfiguration().getMediaTypeForFileExtension("");
        }
        if (str == null || str.equals("application/unknown")) {
            str = "application/binary";
        }
        AbstractResourceCollection.InputDetails inputDetails2 = this.f101310b;
        inputDetails2.contentType = str;
        inputDetails2.binaryContent = BinaryResource.readBinaryFromStream(inputStream, inputDetails2.resourceUri);
        return this.f101309a.getConfiguration().getResourceFactoryForMediaType(str).makeResource(this.f101309a, this.f101310b).getItem();
    }

    @Override // net.p110sf.saxon.lib.Resource
    public String getResourceURI() {
        return this.f101310b.resourceUri;
    }
}
