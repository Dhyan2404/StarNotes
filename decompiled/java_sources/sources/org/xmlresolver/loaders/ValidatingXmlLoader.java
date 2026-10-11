package org.xmlresolver.loaders;

import com.thaiopensource.util.PropertyMapBuilder;
import com.thaiopensource.validate.SchemaReader;
import com.thaiopensource.validate.ValidateProperty;
import com.thaiopensource.validate.ValidationDriver;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.CharArrayReader;
import java.io.CharArrayWriter;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.Reader;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.util.HashMap;
import org.xml.sax.ErrorHandler;
import org.xml.sax.InputSource;
import org.xml.sax.SAXException;
import org.xml.sax.SAXParseException;
import org.xmlresolver.Resolver;
import org.xmlresolver.ResolverConfiguration;
import org.xmlresolver.ResolverFeature;
import org.xmlresolver.Resource;
import org.xmlresolver.catalog.entry.EntryCatalog;
import org.xmlresolver.exceptions.CatalogInvalidException;
import org.xmlresolver.exceptions.CatalogUnavailableException;
import org.xmlresolver.logging.AbstractLogger;
import org.xmlresolver.logging.ResolverLogger;

/* loaded from: classes16.dex */
public class ValidatingXmlLoader implements CatalogLoader {

    /* renamed from: b */
    public final XmlLoader f116183b;
    protected final ResolverConfiguration config;
    protected final ResolverLogger logger;

    /* renamed from: a */
    public final Resolver f116182a = XmlLoader.getLoaderResolver();
    protected final HashMap<URI, EntryCatalog> catalogMap = new HashMap<>();

    /* renamed from: org.xmlresolver.loaders.ValidatingXmlLoader$a */
    /* loaded from: classes16.dex */
    public static class C20493a implements ErrorHandler {

        /* renamed from: e */
        public final ResolverConfiguration f116184e;

        /* renamed from: f */
        public final ResolverLogger f116185f;

        /* renamed from: g */
        public String f116186g = null;

        /* renamed from: h */
        public String f116187h = null;

        public C20493a(ResolverConfiguration resolverConfiguration) {
            this.f116184e = resolverConfiguration;
            this.f116185f = (ResolverLogger) resolverConfiguration.getFeature(ResolverFeature.RESOLVER_LOGGER);
        }

        /* renamed from: a */
        public String m72017a() {
            String str = this.f116186g;
            return str == null ? this.f116187h : str;
        }

        @Override // org.xml.sax.ErrorHandler
        public void error(SAXParseException sAXParseException) throws SAXException {
            if (this.f116186g == null) {
                this.f116186g = sAXParseException.getMessage();
            }
            this.f116185f.log("error", sAXParseException.getMessage(), new Object[0]);
        }

        @Override // org.xml.sax.ErrorHandler
        public void fatalError(SAXParseException sAXParseException) throws SAXException {
            this.f116186g = sAXParseException.getMessage();
            this.f116185f.log("error", sAXParseException.getMessage(), new Object[0]);
        }

        @Override // org.xml.sax.ErrorHandler
        public void warning(SAXParseException sAXParseException) throws SAXException {
            if (this.f116187h == null) {
                this.f116187h = sAXParseException.getMessage();
            }
            this.f116185f.log(AbstractLogger.WARNING, sAXParseException.getMessage(), new Object[0]);
        }
    }

    public ValidatingXmlLoader(ResolverConfiguration resolverConfiguration) {
        this.config = resolverConfiguration;
        this.logger = (ResolverLogger) resolverConfiguration.getFeature(ResolverFeature.RESOLVER_LOGGER);
        this.f116183b = new XmlLoader(resolverConfiguration);
    }

    @Override // org.xmlresolver.loaders.CatalogLoader
    public boolean getArchivedCatalogs() {
        return this.f116183b.getArchivedCatalogs();
    }

    @Override // org.xmlresolver.loaders.CatalogLoader
    public boolean getPreferPublic() {
        return this.f116183b.getPreferPublic();
    }

    @Override // org.xmlresolver.loaders.CatalogLoader
    public EntryCatalog loadCatalog(URI uri) {
        if (this.catalogMap.containsKey(uri)) {
            return this.catalogMap.get(uri);
        }
        try {
            InputSource inputSource = new InputSource(new Resource(uri.toString()).body());
            inputSource.setSystemId(uri.toString());
            return loadCatalog(uri, inputSource);
        } catch (FileNotFoundException e) {
            this.logger.log(AbstractLogger.WARNING, "Failed to load catalog: %s: %s", uri, e.getMessage());
            this.catalogMap.put(uri, new EntryCatalog(this.config, uri, null, false));
            return this.catalogMap.get(uri);
        } catch (IOException | URISyntaxException e2) {
            this.logger.log("error", "Failed to load catalog: %s: %s", uri, e2.getMessage());
            this.catalogMap.put(uri, new EntryCatalog(this.config, uri, null, false));
            throw new CatalogUnavailableException(e2.getMessage());
        }
    }

    @Override // org.xmlresolver.loaders.CatalogLoader
    public void setArchivedCatalogs(boolean z) {
        this.f116183b.setArchivedCatalogs(z);
    }

    @Override // org.xmlresolver.loaders.CatalogLoader
    public void setPreferPublic(boolean z) {
        this.f116183b.setPreferPublic(z);
    }

    @Override // org.xmlresolver.loaders.CatalogLoader
    public EntryCatalog loadCatalog(URI uri, InputSource inputSource) {
        ByteArrayOutputStream byteArrayOutputStream;
        CharArrayWriter charArrayWriter;
        try {
            if (inputSource.getByteStream() != null) {
                byteArrayOutputStream = new ByteArrayOutputStream();
                InputStream byteStream = inputSource.getByteStream();
                byte[] bArr = new byte[4096];
                for (int read = byteStream.read(bArr, 0, 4096); read >= 0; read = byteStream.read(bArr, 0, 4096)) {
                    byteArrayOutputStream.write(bArr, 0, read);
                }
                inputSource.setByteStream(new ByteArrayInputStream(byteArrayOutputStream.toByteArray()));
            } else {
                byteArrayOutputStream = null;
            }
            if (inputSource.getCharacterStream() != null) {
                charArrayWriter = new CharArrayWriter();
                Reader characterStream = inputSource.getCharacterStream();
                char[] cArr = new char[4096];
                for (int read2 = characterStream.read(cArr, 0, 4096); read2 >= 0; read2 = characterStream.read(cArr, 0, 4096)) {
                    charArrayWriter.write(cArr, 0, read2);
                }
                inputSource.setCharacterStream(new CharArrayReader(charArrayWriter.toCharArray()));
            } else {
                charArrayWriter = null;
            }
            C20493a c20493a = new C20493a(this.config);
            PropertyMapBuilder propertyMapBuilder = new PropertyMapBuilder();
            propertyMapBuilder.put(ValidateProperty.ERROR_HANDLER, c20493a);
            propertyMapBuilder.put(ValidateProperty.ENTITY_RESOLVER, this.f116182a);
            propertyMapBuilder.put(ValidateProperty.URI_RESOLVER, this.f116182a);
            ValidationDriver validationDriver = new ValidationDriver(propertyMapBuilder.toPropertyMap(), propertyMapBuilder.toPropertyMap(), (SchemaReader) null);
            URL resource = ValidatingXmlLoader.class.getResource("/org/xmlresolver/schemas/oasis-xml-catalog-1.1.rng");
            if (resource != null) {
                if (!validationDriver.loadSchema(new InputSource(resource.openStream()))) {
                    if (c20493a.m72017a() == null) {
                        throw new CatalogInvalidException("Failed to load catalog schema");
                    }
                    throw new CatalogInvalidException("Failed to load catalog schema: " + c20493a.m72017a());
                }
                if (validationDriver.validate(inputSource)) {
                    if (byteArrayOutputStream != null) {
                        inputSource.setByteStream(new ByteArrayInputStream(byteArrayOutputStream.toByteArray()));
                    }
                    if (charArrayWriter != null) {
                        inputSource.setCharacterStream(new CharArrayReader(charArrayWriter.toCharArray()));
                    }
                    return this.f116183b.loadCatalog(uri, inputSource);
                }
                throw new CatalogInvalidException("Catalog '" + uri.toString() + "' is invalid: " + c20493a.m72017a());
            }
            throw new CatalogInvalidException("Failed to read catalog schema resource");
        } catch (IOException | SAXException e) {
            throw new CatalogUnavailableException(e.getMessage());
        }
    }
}
