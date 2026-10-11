package net.p110sf.saxon.lib;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.StringReader;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.util.Optional;
import java.util.function.Predicate;
import javax.xml.transform.Source;
import javax.xml.transform.sax.SAXSource;
import net.p110sf.saxon.Configuration;
import net.p110sf.saxon.Platform;
import net.p110sf.saxon.Version;
import net.p110sf.saxon.event.FilterFactory;
import net.p110sf.saxon.event.IDFilter;
import net.p110sf.saxon.event.Receiver;
import net.p110sf.saxon.functions.EncodeForUri;
import net.p110sf.saxon.functions.ResolveURI;
import net.p110sf.saxon.functions.URIQueryParameters;
import net.p110sf.saxon.lib.StandardURIResolver;
import net.p110sf.saxon.om.SpaceStrippingRule;
import net.p110sf.saxon.resource.BinaryResource;
import net.p110sf.saxon.resource.DataURIScheme;
import net.p110sf.saxon.resource.ResourceLoader;
import net.p110sf.saxon.resource.UnparsedTextResource;
import net.p110sf.saxon.trans.Err;
import net.p110sf.saxon.trans.Maker;
import net.p110sf.saxon.trans.NonDelegatingURIResolver;
import net.p110sf.saxon.trans.XPathException;
import org.xml.sax.InputSource;
import org.xml.sax.XMLReader;

/* loaded from: classes11.dex */
public class StandardURIResolver implements NonDelegatingURIResolver {

    /* renamed from: h */
    public static final /* synthetic */ boolean f100583h = false;

    /* renamed from: e */
    public Configuration f100584e;

    /* renamed from: f */
    public boolean f100585f;

    /* renamed from: g */
    public Predicate<URI> f100586g;

    public StandardURIResolver() {
        this(null);
    }

    /* renamed from: b */
    public static /* synthetic */ Receiver m63285b(String str, Receiver receiver) {
        return new IDFilter(receiver, str);
    }

    public Configuration getConfiguration() {
        return this.f100584e;
    }

    public Platform getPlatform() {
        return Version.platform;
    }

    public boolean queryParametersAreRecognized() {
        return this.f100585f;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r9v14, types: [javax.xml.transform.sax.SAXSource, javax.xml.transform.Source] */
    /* JADX WARN: Type inference failed for: r9v15, types: [javax.xml.transform.Source] */
    /* JADX WARN: Type inference failed for: r9v16, types: [javax.xml.transform.Source] */
    /* JADX WARN: Type inference failed for: r9v17, types: [javax.xml.transform.Source] */
    /* JADX WARN: Type inference failed for: r9v19, types: [net.sf.saxon.lib.AugmentedSource] */
    /* JADX WARN: Type inference failed for: r9v20, types: [net.sf.saxon.lib.AugmentedSource] */
    /* JADX WARN: Type inference failed for: r9v21, types: [net.sf.saxon.lib.AugmentedSource] */
    /* JADX WARN: Type inference failed for: r9v26 */
    /* JADX WARN: Type inference failed for: r9v27 */
    /* JADX WARN: Type inference failed for: r9v28 */
    @Override // javax.xml.transform.URIResolver
    public Source resolve(String str, String str2) throws XPathException {
        String str3;
        final String str4;
        ?? r9;
        Configuration configuration = this.f100584e;
        if (configuration != null && configuration.isTiming()) {
            this.f100584e.getLogger().info("URIResolver.resolve href=\"" + str + "\" base=\"" + str2 + "\"");
        }
        int indexOf = str.indexOf(35);
        URIQueryParameters uRIQueryParameters = null;
        if (indexOf >= 0) {
            str3 = str.substring(0, indexOf);
            str4 = str.substring(indexOf + 1);
        } else {
            str3 = str;
            str4 = null;
        }
        try {
            str3 = ResolveURI.escapeSpaces(str3);
            String query = new URI(str3).getQuery();
            if (query != null && this.f100585f) {
                uRIQueryParameters = new URIQueryParameters(query, this.f100584e);
                str3 = str3.substring(0, str3.indexOf(63));
            }
            if (this.f100585f && str3.endsWith(".ptree")) {
                throw new UnsupportedOperationException("PTree files are no longer supported (from Saxon 10.0)");
            }
            try {
                URI makeAbsolute = ResolveURI.makeAbsolute(str3, str2);
                String uri = makeAbsolute.toString();
                EncodeForUri.checkPercentEncoding(uri);
                if ("data".equals(makeAbsolute.getScheme())) {
                    try {
                        Resource decode = DataURIScheme.decode(makeAbsolute);
                        if (decode instanceof BinaryResource) {
                            SAXSource sAXSource = new SAXSource(new InputSource(new ByteArrayInputStream(((BinaryResource) decode).getData())));
                            sAXSource.setSystemId(uri);
                            r9 = sAXSource;
                        } else {
                            SAXSource sAXSource2 = new SAXSource(new InputSource(new StringReader(((UnparsedTextResource) decode).getContent())));
                            sAXSource2.setSystemId(uri);
                            r9 = sAXSource2;
                        }
                    } catch (IllegalArgumentException e) {
                        throw new XPathException("Invalid URI using 'data' scheme: " + e.getMessage());
                    }
                } else {
                    if (this.f100584e != null) {
                        ResourceRequest resourceRequest = new ResourceRequest();
                        resourceRequest.uri = uri;
                        resourceRequest.relativeUri = str3;
                        resourceRequest.baseUri = str2;
                        resourceRequest.nature = ResourceRequest.XML_NATURE;
                        return resourceRequest.resolve(new DirectResourceResolver(this.f100584e));
                    }
                    SAXSource sAXSource3 = new SAXSource();
                    setSAXInputSource(sAXSource3, uri);
                    r9 = sAXSource3;
                }
                if (uRIQueryParameters != null) {
                    Optional<Maker<XMLReader>> xMLReaderMaker = uRIQueryParameters.getXMLReaderMaker();
                    if (xMLReaderMaker.isPresent()) {
                        r9.setXMLReader(xMLReaderMaker.get().make());
                    }
                }
                if (r9.getXMLReader() == null && this.f100584e == null) {
                    try {
                        r9.setXMLReader(Version.platform.loadParser());
                    } catch (Exception e2) {
                        throw new XPathException(e2);
                    }
                }
                if (uRIQueryParameters != null) {
                    Optional<SpaceStrippingRule> spaceStrippingRule = uRIQueryParameters.getSpaceStrippingRule();
                    r9 = AugmentedSource.makeAugmentedSource(r9);
                    if (spaceStrippingRule.isPresent()) {
                        r9.getParseOptions().setSpaceStrippingRule(spaceStrippingRule.get());
                    }
                }
                if (str4 != null) {
                    FilterFactory filterFactory = new FilterFactory() { // from class: com.sunia.HTREnginev2.rxm
                        @Override // net.p110sf.saxon.event.FilterFactory
                        public final Receiver makeFilter(Receiver receiver) {
                            Receiver m63285b;
                            m63285b = StandardURIResolver.m63285b(str4, receiver);
                            return m63285b;
                        }
                    };
                    r9 = AugmentedSource.makeAugmentedSource(r9);
                    r9.addFilter(filterFactory);
                }
                if (uRIQueryParameters != null) {
                    Optional<Integer> validationMode = uRIQueryParameters.getValidationMode();
                    if (validationMode.isPresent()) {
                        r9 = AugmentedSource.makeAugmentedSource(r9);
                        r9.setSchemaValidationMode(validationMode.get().intValue());
                    }
                }
                if (uRIQueryParameters == null) {
                    return r9;
                }
                Optional<Boolean> xInclude = uRIQueryParameters.getXInclude();
                if (!xInclude.isPresent()) {
                    return r9;
                }
                AugmentedSource makeAugmentedSource = AugmentedSource.makeAugmentedSource(r9);
                makeAugmentedSource.setXIncludeAware(xInclude.get().booleanValue());
                return makeAugmentedSource;
            } catch (URISyntaxException e3) {
                String tryToExpand = ResolveURI.tryToExpand(str2);
                if (!tryToExpand.equals(str2)) {
                    return resolve(str, tryToExpand);
                }
                throw new XPathException("Invalid URI " + Err.wrap(str3) + " - base " + Err.wrap(str2), e3);
            }
        } catch (URISyntaxException e4) {
            throw new XPathException("Invalid relative URI " + Err.wrap(str3), e4);
        }
    }

    public void setAllowedUriTest(Predicate<URI> predicate) {
        this.f100586g = predicate;
    }

    public void setConfiguration(Configuration configuration) {
        this.f100584e = configuration;
    }

    public void setRecognizeQueryParameters(boolean z) {
        this.f100585f = z;
    }

    public void setSAXInputSource(SAXSource sAXSource, String str) {
        InputStream resourceAsStream;
        if (str.startsWith("classpath:") && str.length() > 10 && (resourceAsStream = getConfiguration().getDynamicLoader().getResourceAsStream(str.substring(10))) != null) {
            sAXSource.setInputSource(new InputSource(resourceAsStream));
            sAXSource.setSystemId(str);
            return;
        }
        try {
            sAXSource.setInputSource(new InputSource(ResourceLoader.urlStream(new URL(str))));
            sAXSource.setSystemId(str);
        } catch (IOException unused) {
            sAXSource.setInputSource(new InputSource(str));
            sAXSource.setSystemId(str);
        }
    }

    public StandardURIResolver(Configuration configuration) {
        this.f100585f = false;
        this.f100586g = null;
        this.f100584e = configuration;
    }
}
