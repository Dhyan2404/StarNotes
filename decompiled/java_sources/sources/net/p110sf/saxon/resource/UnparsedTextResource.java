package net.p110sf.saxon.resource;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.net.URL;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.lib.Resource;
import net.p110sf.saxon.lib.ResourceFactory;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.query.InputStreamMarker;
import net.p110sf.saxon.resource.AbstractResourceCollection;
import net.p110sf.saxon.resource.UnparsedTextResource;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.value.StringValue;

/* loaded from: classes11.dex */
public class UnparsedTextResource implements Resource {
    public static final ResourceFactory FACTORY = new ResourceFactory() { // from class: com.sunia.HTREnginev2.bun
        @Override // net.p110sf.saxon.lib.ResourceFactory
        public final Resource makeResource(XPathContext xPathContext, AbstractResourceCollection.InputDetails inputDetails) {
            Resource m63644b;
            m63644b = UnparsedTextResource.m63644b(xPathContext, inputDetails);
            return m63644b;
        }
    };

    /* renamed from: a */
    public String f101311a;

    /* renamed from: b */
    public String f101312b;

    /* renamed from: c */
    public final String f101313c;

    /* renamed from: d */
    public String f101314d;

    public UnparsedTextResource(AbstractResourceCollection.InputDetails inputDetails) throws XPathException {
        this.f101314d = null;
        this.f101313c = inputDetails.resourceUri;
        this.f101311a = inputDetails.contentType;
        String str = inputDetails.encoding;
        this.f101312b = str;
        String str2 = inputDetails.characterContent;
        if (str2 != null) {
            this.f101314d = str2;
            return;
        }
        if (inputDetails.binaryContent != null) {
            if (str == null) {
                try {
                    ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(inputDetails.binaryContent);
                    inputDetails.encoding = EncodingDetector.inferStreamEncoding(byteArrayInputStream, null);
                    byteArrayInputStream.close();
                } catch (IOException e) {
                    throw new XPathException(e);
                }
            }
            this.f101314d = m63645c(inputDetails.binaryContent, inputDetails.encoding);
        }
    }

    /* renamed from: b */
    public static /* synthetic */ Resource m63644b(XPathContext xPathContext, AbstractResourceCollection.InputDetails inputDetails) throws XPathException {
        return new UnparsedTextResource(inputDetails);
    }

    /* renamed from: c */
    public final String m63645c(byte[] bArr, String str) throws XPathException {
        try {
            return new String(bArr, str);
        } catch (UnsupportedEncodingException e) {
            throw new XPathException(e);
        }
    }

    public String getContent() throws XPathException {
        if (this.f101314d == null) {
            try {
                InputStream urlStream = ResourceLoader.urlStream(new URL(this.f101313c));
                String str = this.f101312b;
                if (str == null) {
                    urlStream = InputStreamMarker.ensureMarkSupported(urlStream);
                    str = EncodingDetector.inferStreamEncoding(urlStream, null);
                }
                this.f101314d = CatalogCollection.makeStringFromStream(urlStream, str);
            } catch (IOException e) {
                throw new XPathException(e);
            }
        }
        return this.f101314d;
    }

    @Override // net.p110sf.saxon.lib.Resource
    public String getContentType() {
        String str = this.f101311a;
        return str == null ? "text/plain" : str;
    }

    public String getEncoding() {
        return this.f101312b;
    }

    @Override // net.p110sf.saxon.lib.Resource
    public Item getItem() throws XPathException {
        return new StringValue(getContent());
    }

    @Override // net.p110sf.saxon.lib.Resource
    public String getResourceURI() {
        return this.f101313c;
    }

    public UnparsedTextResource(String str, String str2) {
        this.f101313c = str;
        this.f101314d = str2;
    }
}
