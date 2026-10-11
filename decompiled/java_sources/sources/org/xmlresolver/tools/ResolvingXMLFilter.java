package org.xmlresolver.tools;

import java.io.IOException;
import java.net.URI;
import java.net.URISyntaxException;
import org.xml.sax.Attributes;
import org.xml.sax.InputSource;
import org.xml.sax.SAXException;
import org.xml.sax.XMLReader;
import org.xml.sax.helpers.XMLFilterImpl;
import org.xmlresolver.Resolver;
import org.xmlresolver.ResolverFeature;
import org.xmlresolver.XMLResolverConfiguration;
import org.xmlresolver.logging.AbstractLogger;
import org.xmlresolver.logging.ResolverLogger;
import org.xmlresolver.utils.URIUtils;

/* loaded from: classes16.dex */
public class ResolvingXMLFilter extends XMLFilterImpl {
    protected static Resolver staticResolver;

    /* renamed from: e */
    public boolean f116210e;

    /* renamed from: f */
    public boolean f116211f;

    /* renamed from: g */
    public URI f116212g;
    protected final ResolverLogger logger;
    protected Resolver resolver;

    public ResolvingXMLFilter() {
        this.f116210e = true;
        this.f116211f = false;
        this.resolver = null;
        this.f116212g = null;
        if (staticResolver == null) {
            staticResolver = new Resolver();
        }
        Resolver resolver = staticResolver;
        this.resolver = resolver;
        this.f116210e = ((Boolean) resolver.getConfiguration().getFeature(ResolverFeature.ALLOW_CATALOG_PI)).booleanValue();
        this.logger = (ResolverLogger) this.resolver.getConfiguration().getFeature(ResolverFeature.RESOLVER_LOGGER);
    }

    public Resolver getResolver() {
        return this.resolver;
    }

    @Override // org.xml.sax.helpers.XMLFilterImpl, org.xml.sax.DTDHandler
    public void notationDecl(String str, String str2, String str3) throws SAXException {
        this.f116211f = false;
        super.notationDecl(str, str2, str3);
    }

    @Override // org.xml.sax.helpers.XMLFilterImpl, org.xml.sax.XMLReader
    public void parse(InputSource inputSource) throws IOException, SAXException {
        InputSource resolveEntity;
        Resolver resolver = this.resolver;
        try {
            if (this.f116210e) {
                this.resolver = new Resolver(new XMLResolverConfiguration(resolver.getConfiguration()));
            }
            this.f116211f = this.f116210e;
            setupBaseURI(inputSource.getSystemId());
            if (inputSource.getByteStream() == null && inputSource.getCharacterStream() == null && (resolveEntity = this.resolver.resolveEntity(null, inputSource.getSystemId())) != null) {
                inputSource.setByteStream(resolveEntity.getByteStream());
            }
            super.parse(inputSource);
        } finally {
            this.resolver = resolver;
        }
    }

    @Override // org.xml.sax.helpers.XMLFilterImpl, org.xml.sax.ContentHandler
    public void processingInstruction(String str, String str2) throws SAXException {
        if (!this.f116211f || !str.equals("oasis-xml-catalog")) {
            super.processingInstruction(str, str2);
            return;
        }
        int indexOf = str2.indexOf("catalog=");
        if (indexOf >= 0) {
            String substring = str2.substring(indexOf + 8);
            if (substring.length() > 1) {
                String substring2 = substring.substring(0, 1);
                String substring3 = substring.substring(1);
                int indexOf2 = substring3.indexOf(substring2);
                if (indexOf2 >= 0) {
                    String substring4 = substring3.substring(0, indexOf2);
                    try {
                        URI uri = this.f116212g;
                        this.resolver.getConfiguration().addCatalog((uri != null ? uri.resolve(substring4) : URIUtils.newURI(substring4)).toString());
                    } catch (URISyntaxException unused) {
                        this.logger.log(AbstractLogger.WARNING, "URI syntax exception resolving PI catalog: %s", substring4);
                    }
                }
            }
        }
    }

    @Override // org.xml.sax.helpers.XMLFilterImpl, org.xml.sax.EntityResolver
    public InputSource resolveEntity(String str, String str2) throws SAXException, IOException {
        return this.resolver.resolveEntity(str, str2);
    }

    public final void setupBaseURI(String str) {
        try {
            URI newURI = URIUtils.newURI(str);
            this.f116212g = newURI;
            if (newURI.isAbsolute()) {
                return;
            }
            this.f116212g = URIUtils.cwd().resolve(this.f116212g);
        } catch (URISyntaxException unused) {
            this.f116212g = URIUtils.cwd().resolve(str);
        }
    }

    @Override // org.xml.sax.helpers.XMLFilterImpl, org.xml.sax.ContentHandler
    public void startElement(String str, String str2, String str3, Attributes attributes) throws SAXException {
        this.f116211f = false;
        super.startElement(str, str2, str3, attributes);
    }

    @Override // org.xml.sax.helpers.XMLFilterImpl, org.xml.sax.DTDHandler
    public void unparsedEntityDecl(String str, String str2, String str3, String str4) throws SAXException {
        this.f116211f = false;
        super.unparsedEntityDecl(str, str2, str3, str4);
    }

    public InputSource resolveEntity(String str, String str2, String str3, String str4) throws SAXException, IOException {
        return this.resolver.resolveEntity(str, str2, str3, str4);
    }

    public ResolvingXMLFilter(Resolver resolver) {
        this.f116210e = true;
        this.f116211f = false;
        this.f116212g = null;
        this.resolver = resolver;
        this.f116210e = ((Boolean) resolver.getConfiguration().getFeature(ResolverFeature.ALLOW_CATALOG_PI)).booleanValue();
        this.logger = (ResolverLogger) resolver.getConfiguration().getFeature(ResolverFeature.RESOLVER_LOGGER);
    }

    @Override // org.xml.sax.helpers.XMLFilterImpl, org.xml.sax.XMLReader
    public void parse(String str) throws IOException, SAXException {
        parse(new InputSource(str));
    }

    public ResolvingXMLFilter(XMLReader xMLReader, Resolver resolver) {
        super(xMLReader);
        this.f116210e = true;
        this.f116211f = false;
        this.f116212g = null;
        this.resolver = resolver;
        this.logger = (ResolverLogger) resolver.getConfiguration().getFeature(ResolverFeature.RESOLVER_LOGGER);
    }
}
