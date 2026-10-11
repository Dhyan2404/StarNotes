package net.p110sf.saxon.resource;

import com.onyx.android.sdk.p039ui.treeview.view.AndroidTreeView;
import java.io.BufferedInputStream;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.net.URLConnection;
import java.util.Optional;
import net.p110sf.saxon.Configuration;
import net.p110sf.saxon.Controller;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.functions.URIQueryParameters;
import net.p110sf.saxon.lib.ErrorReporter;
import net.p110sf.saxon.lib.Feature;
import net.p110sf.saxon.lib.ParseOptions;
import net.p110sf.saxon.lib.Resource;
import net.p110sf.saxon.lib.ResourceCollection;
import net.p110sf.saxon.lib.ResourceFactory;
import net.p110sf.saxon.om.SpaceStrippingRule;
import net.p110sf.saxon.query.InputStreamMarker;
import net.p110sf.saxon.s9api.XmlProcessingError;
import net.p110sf.saxon.trans.Maker;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.trans.XmlProcessingIncident;
import org.xml.sax.XMLReader;

/* loaded from: classes11.dex */
public abstract class AbstractResourceCollection implements ResourceCollection {
    protected String collectionURI;
    protected Configuration config;
    protected URIQueryParameters params = null;
    protected boolean noExceptions = false;

    /* loaded from: classes11.dex */
    public static class InputDetails {
        public byte[] binaryContent;
        public String characterContent;
        public String contentType;
        public String encoding;
        public int onError = 1;
        public ParseOptions parseOptions;
        public String resourceUri;

        public InputStream getInputStream() throws IOException {
            return ResourceLoader.urlStream(new URL(this.resourceUri));
        }

        public byte[] obtainBinaryContent() throws XPathException {
            byte[] bArr = this.binaryContent;
            if (bArr != null) {
                return bArr;
            }
            String str = this.characterContent;
            if (str != null) {
                String str2 = this.encoding;
                if (str2 == null) {
                    str2 = "UTF-8";
                }
                return BinaryResource.encode(str, str2);
            }
            try {
                InputStream inputStream = getInputStream();
                try {
                    byte[] readBinaryFromStream = BinaryResource.readBinaryFromStream(inputStream, this.resourceUri);
                    if (inputStream != null) {
                        inputStream.close();
                    }
                    return readBinaryFromStream;
                } finally {
                }
            } catch (IOException e) {
                throw new XPathException(e);
            }
        }

        public String obtainCharacterContent() throws XPathException {
            String str;
            String str2 = this.characterContent;
            if (str2 != null) {
                return str2;
            }
            byte[] bArr = this.binaryContent;
            if (bArr != null && (str = this.encoding) != null) {
                return BinaryResource.decode(bArr, str);
            }
            try {
                InputStream inputStream = getInputStream();
                String str3 = this.encoding;
                if (str3 == null) {
                    inputStream = InputStreamMarker.ensureMarkSupported(inputStream);
                    str3 = EncodingDetector.inferStreamEncoding(inputStream, null);
                }
                String makeStringFromStream = CatalogCollection.makeStringFromStream(inputStream, str3);
                this.characterContent = makeStringFromStream;
                return makeStringFromStream;
            } catch (IOException e) {
                if (this.onError != 1) {
                    return null;
                }
                throw new XPathException(e);
            }
        }
    }

    /* renamed from: net.sf.saxon.resource.AbstractResourceCollection$b */
    /* loaded from: classes11.dex */
    public static class C18451b implements ErrorReporter {

        /* renamed from: e */
        public final ErrorReporter f101269e;

        public C18451b(ErrorReporter errorReporter) {
            this.f101269e = errorReporter;
        }

        @Override // net.p110sf.saxon.lib.ErrorReporter
        public void report(XmlProcessingError xmlProcessingError) {
            if (xmlProcessingError.isWarning()) {
                this.f101269e.report(xmlProcessingError);
                return;
            }
            this.f101269e.report(xmlProcessingError.asWarning());
            XmlProcessingIncident asWarning = new XmlProcessingIncident("The document will be excluded from the collection").asWarning();
            asWarning.setLocation(xmlProcessingError.getLocation());
            this.f101269e.report(asWarning);
        }
    }

    /* renamed from: net.sf.saxon.resource.AbstractResourceCollection$c */
    /* loaded from: classes11.dex */
    public static class C18452c implements ErrorReporter {
        public C18452c() {
        }

        @Override // net.p110sf.saxon.lib.ErrorReporter
        public void report(XmlProcessingError xmlProcessingError) {
        }
    }

    public AbstractResourceCollection(Configuration configuration) {
        this.config = configuration;
    }

    public static void checkNotNull(String str, XPathContext xPathContext) throws XPathException {
        if (str != null) {
            return;
        }
        XPathException xPathException = new XPathException("No default collection has been defined");
        xPathException.setErrorCode("FODC0002");
        xPathException.setXPathContext(xPathContext);
        throw xPathException;
    }

    public static void setupErrorHandlingForCollection(ParseOptions parseOptions, int i, ErrorReporter errorReporter) {
        if (i == 3) {
            parseOptions.setErrorReporter(new C18452c());
        } else if (i == 2) {
            parseOptions.setErrorReporter(new C18451b(errorReporter));
        }
    }

    /* renamed from: a */
    public final String m63612a(String str) {
        int i;
        int lastIndexOf = str.lastIndexOf(46);
        if (lastIndexOf <= Math.max(str.lastIndexOf(47), str.lastIndexOf(92)) || (i = lastIndexOf + 1) >= str.length()) {
            return null;
        }
        return str.substring(i);
    }

    @Override // net.p110sf.saxon.lib.ResourceCollection
    public String getCollectionURI() {
        return this.collectionURI;
    }

    public InputDetails getInputDetails(String str) throws XPathException {
        InputStream urlStream;
        InputDetails inputDetails = new InputDetails();
        try {
            inputDetails.resourceUri = str;
            URI uri = new URI(str);
            if ("file".equals(uri.getScheme())) {
                URIQueryParameters uRIQueryParameters = this.params;
                if (uRIQueryParameters == null || !uRIQueryParameters.getContentType().isPresent()) {
                    inputDetails.contentType = guessContentTypeFromName(str);
                } else {
                    inputDetails.contentType = this.params.getContentType().get();
                }
            } else {
                URLConnection urlConnection = ResourceLoader.urlConnection(uri.toURL());
                inputDetails.contentType = urlConnection.getContentType();
                inputDetails.encoding = urlConnection.getContentEncoding();
                for (String str2 : inputDetails.contentType.replace(" ", "").split(AndroidTreeView.f47214k)) {
                    if (str2.startsWith("charset=")) {
                        inputDetails.encoding = str2.split("=", 2)[1];
                    } else {
                        inputDetails.contentType = str2;
                    }
                }
            }
            String str3 = inputDetails.contentType;
            if (str3 == null || this.config.getResourceFactoryForMediaType(str3) == null) {
                if ("file".equals(uri.getScheme())) {
                    File file = new File(uri);
                    urlStream = new BufferedInputStream(new FileInputStream(file));
                    if (file.length() <= 1024) {
                        inputDetails.binaryContent = BinaryResource.readBinaryFromStream(urlStream, str);
                        urlStream.close();
                        urlStream = new ByteArrayInputStream(inputDetails.binaryContent);
                    }
                } else {
                    urlStream = ResourceLoader.urlStream(uri.toURL());
                }
                inputDetails.contentType = guessContentTypeFromContent(urlStream);
                urlStream.close();
            }
            URIQueryParameters uRIQueryParameters2 = this.params;
            if (uRIQueryParameters2 != null && uRIQueryParameters2.getOnError().isPresent()) {
                inputDetails.onError = this.params.getOnError().get().intValue();
            }
            return inputDetails;
        } catch (IOException | URISyntaxException e) {
            throw new XPathException(e);
        }
    }

    public String guessContentTypeFromContent(InputStream inputStream) {
        try {
            return URLConnection.guessContentTypeFromStream(InputStreamMarker.ensureMarkSupported(inputStream));
        } catch (IOException unused) {
            return null;
        }
    }

    public String guessContentTypeFromName(String str) {
        String m63612a;
        String guessContentTypeFromName = URLConnection.guessContentTypeFromName(str);
        return (guessContentTypeFromName != null || (m63612a = m63612a(str)) == null) ? guessContentTypeFromName : this.config.getMediaTypeForFileExtension(m63612a);
    }

    @Override // net.p110sf.saxon.lib.ResourceCollection
    public boolean isStable(XPathContext xPathContext) {
        URIQueryParameters uRIQueryParameters = this.params;
        if (uRIQueryParameters == null) {
            return false;
        }
        Optional<Boolean> stable = uRIQueryParameters.getStable();
        return !stable.isPresent() ? xPathContext.getConfiguration().getBooleanProperty(Feature.STABLE_COLLECTION_URI) : stable.get().booleanValue();
    }

    public Resource makeResource(XPathContext xPathContext, InputDetails inputDetails) throws XPathException {
        String str = inputDetails.contentType;
        ResourceFactory resourceFactoryForMediaType = str != null ? xPathContext.getConfiguration().getResourceFactoryForMediaType(str) : null;
        if (resourceFactoryForMediaType == null) {
            resourceFactoryForMediaType = BinaryResource.FACTORY;
        }
        return resourceFactoryForMediaType.makeResource(xPathContext, inputDetails);
    }

    public Resource makeTypedResource(XPathContext xPathContext, Resource resource) throws XPathException {
        String contentType = resource.getContentType();
        ResourceFactory resourceFactoryForMediaType = this.config.getResourceFactoryForMediaType(contentType);
        if (resourceFactoryForMediaType == null) {
            return resource;
        }
        if (resource instanceof BinaryResource) {
            InputDetails inputDetails = new InputDetails();
            inputDetails.binaryContent = ((BinaryResource) resource).getData();
            inputDetails.contentType = contentType;
            inputDetails.resourceUri = resource.getResourceURI();
            return resourceFactoryForMediaType.makeResource(xPathContext, inputDetails);
        }
        if (!(resource instanceof UnparsedTextResource)) {
            return resource;
        }
        InputDetails inputDetails2 = new InputDetails();
        inputDetails2.characterContent = ((UnparsedTextResource) resource).getContent();
        inputDetails2.contentType = contentType;
        inputDetails2.resourceUri = resource.getResourceURI();
        return resourceFactoryForMediaType.makeResource(xPathContext, inputDetails2);
    }

    public ParseOptions optionsFromQueryParameters(URIQueryParameters uRIQueryParameters, XPathContext xPathContext) {
        ParseOptions parseOptions = new ParseOptions(xPathContext.getConfiguration().getParseOptions());
        if (uRIQueryParameters != null) {
            Optional<Integer> validationMode = uRIQueryParameters.getValidationMode();
            if (validationMode.isPresent()) {
                parseOptions.setSchemaValidationMode(validationMode.get().intValue());
            }
            Optional<Boolean> xInclude = uRIQueryParameters.getXInclude();
            if (xInclude.isPresent()) {
                parseOptions.setXIncludeAware(xInclude.get().booleanValue());
            }
            Optional<SpaceStrippingRule> spaceStrippingRule = uRIQueryParameters.getSpaceStrippingRule();
            if (spaceStrippingRule.isPresent()) {
                parseOptions.setSpaceStrippingRule(spaceStrippingRule.get());
            }
            Optional<Maker<XMLReader>> xMLReaderMaker = uRIQueryParameters.getXMLReaderMaker();
            if (xMLReaderMaker.isPresent()) {
                parseOptions.setXMLReaderMaker(xMLReaderMaker.get());
            }
            int intValue = uRIQueryParameters.getOnError().isPresent() ? uRIQueryParameters.getOnError().get().intValue() : 1;
            Controller controller = xPathContext.getController();
            setupErrorHandlingForCollection(parseOptions, intValue, controller == null ? xPathContext.getConfiguration().makeErrorReporter() : controller.getErrorReporter());
        }
        return parseOptions;
    }

    public void registerContentType(String str, ResourceFactory resourceFactory) {
        this.config.registerMediaType(str, resourceFactory);
    }

    public boolean stripWhitespace(SpaceStrippingRule spaceStrippingRule) {
        return false;
    }

    public Resource makeResource(XPathContext xPathContext, String str) throws XPathException {
        return makeResource(xPathContext, getInputDetails(str));
    }
}
