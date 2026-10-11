package com.sunia.HTREnginev2;

import java.io.IOException;
import java.io.OutputStream;
import java.lang.ref.SoftReference;
import javax.xml.transform.Result;
import javax.xml.transform.Source;
import javax.xml.transform.stream.StreamResult;
import javax.xml.transform.stream.StreamSource;
import org.apache.xerces.impl.XMLEntityManager;
import org.apache.xerces.impl.XMLErrorReporter;
import org.apache.xerces.impl.msg.XMLMessageFormatter;
import org.apache.xerces.impl.p117xs.XMLSchemaValidator;
import org.apache.xerces.parsers.SAXParser;
import org.apache.xerces.parsers.XML11Configuration;
import org.apache.xerces.xni.XNIException;
import org.apache.xerces.xni.parser.XMLInputSource;
import org.apache.xerces.xni.parser.XMLParseException;
import org.apache.xerces.xni.parser.XMLParserConfiguration;
import org.apache.xml.serialize.OutputFormat;
import org.apache.xml.serialize.Serializer;
import org.apache.xml.serialize.SerializerFactory;
import org.xml.sax.SAXException;

/* loaded from: classes13.dex */
public final class f0n implements yzn {

    /* renamed from: j */
    public static final String f69532j = "http://apache.org/xml/features/internal/parser-settings";

    /* renamed from: k */
    public static final String f69533k = "http://apache.org/xml/properties/internal/entity-resolver";

    /* renamed from: l */
    public static final String f69534l = "http://apache.org/xml/properties/internal/error-handler";

    /* renamed from: m */
    public static final String f69535m = "http://apache.org/xml/properties/internal/error-reporter";

    /* renamed from: n */
    public static final String f69536n = "http://apache.org/xml/properties/internal/validator/schema";

    /* renamed from: o */
    public static final String f69537o = "http://apache.org/xml/properties/internal/symbol-table";

    /* renamed from: p */
    public static final String f69538p = "http://apache.org/xml/properties/internal/validation-manager";

    /* renamed from: q */
    public static final String f69539q = "http://apache.org/xml/properties/security-manager";

    /* renamed from: f */
    public final XMLSchemaValidator f69541f;

    /* renamed from: g */
    public final tlo f69542g;

    /* renamed from: i */
    public SerializerFactory f69544i;

    /* renamed from: e */
    public SoftReference f69540e = new SoftReference(null);

    /* renamed from: h */
    public SoftReference f69543h = new SoftReference(null);

    public f0n(tlo tloVar) {
        this.f69542g = tloVar;
        this.f69541f = (XMLSchemaValidator) tloVar.getProperty("http://apache.org/xml/properties/internal/validator/schema");
    }

    /* renamed from: a */
    public final XMLParserConfiguration m54058a() {
        XML11Configuration xML11Configuration = new XML11Configuration();
        xML11Configuration.setProperty("http://apache.org/xml/properties/internal/entity-resolver", this.f69542g.getProperty("http://apache.org/xml/properties/internal/entity-resolver"));
        xML11Configuration.setProperty("http://apache.org/xml/properties/internal/error-handler", this.f69542g.getProperty("http://apache.org/xml/properties/internal/error-handler"));
        XMLErrorReporter xMLErrorReporter = (XMLErrorReporter) this.f69542g.getProperty("http://apache.org/xml/properties/internal/error-reporter");
        xML11Configuration.setProperty("http://apache.org/xml/properties/internal/error-reporter", xMLErrorReporter);
        if (xMLErrorReporter.getMessageFormatter("http://www.w3.org/TR/1998/REC-xml-19980210") == null) {
            XMLMessageFormatter xMLMessageFormatter = new XMLMessageFormatter();
            xMLErrorReporter.putMessageFormatter("http://www.w3.org/TR/1998/REC-xml-19980210", xMLMessageFormatter);
            xMLErrorReporter.putMessageFormatter("http://www.w3.org/TR/1999/REC-xml-names-19990114", xMLMessageFormatter);
        }
        xML11Configuration.setProperty("http://apache.org/xml/properties/internal/symbol-table", this.f69542g.getProperty("http://apache.org/xml/properties/internal/symbol-table"));
        xML11Configuration.setProperty("http://apache.org/xml/properties/internal/validation-manager", this.f69542g.getProperty("http://apache.org/xml/properties/internal/validation-manager"));
        xML11Configuration.setProperty("http://apache.org/xml/properties/security-manager", this.f69542g.getProperty("http://apache.org/xml/properties/security-manager"));
        xML11Configuration.setDocumentHandler(this.f69541f);
        xML11Configuration.setDTDHandler(null);
        xML11Configuration.setDTDContentModelHandler(null);
        this.f69540e = new SoftReference(xML11Configuration);
        return xML11Configuration;
    }

    @Override // com.sunia.HTREnginev2.yzn
    public void validate(Source source, Result result) throws SAXException, IOException {
        boolean z;
        OutputStream createOutputStream;
        SerializerFactory serializerFactory;
        OutputFormat outputFormat;
        Serializer makeSerializer;
        if (!(result instanceof StreamResult) && result != null) {
            throw new IllegalArgumentException(oqi.m56146a(this.f69542g.getLocale(), "SourceResultMismatch", new Object[]{source.getClass().getName(), result.getClass().getName()}));
        }
        StreamSource streamSource = (StreamSource) source;
        StreamResult streamResult = (StreamResult) result;
        XMLInputSource xMLInputSource = new XMLInputSource(streamSource.getPublicId(), streamSource.getSystemId(), null);
        xMLInputSource.setByteStream(streamSource.getInputStream());
        xMLInputSource.setCharacterStream(streamSource.getReader());
        XMLParserConfiguration xMLParserConfiguration = (XMLParserConfiguration) this.f69540e.get();
        if (xMLParserConfiguration == null) {
            xMLParserConfiguration = m54058a();
            z = true;
        } else {
            if (this.f69542g.getFeature("http://apache.org/xml/features/internal/parser-settings")) {
                xMLParserConfiguration.setProperty("http://apache.org/xml/properties/internal/entity-resolver", this.f69542g.getProperty("http://apache.org/xml/properties/internal/entity-resolver"));
                xMLParserConfiguration.setProperty("http://apache.org/xml/properties/internal/error-handler", this.f69542g.getProperty("http://apache.org/xml/properties/internal/error-handler"));
                xMLParserConfiguration.setProperty("http://apache.org/xml/properties/security-manager", this.f69542g.getProperty("http://apache.org/xml/properties/security-manager"));
            }
            z = false;
        }
        this.f69542g.reset();
        if (streamResult != null) {
            if (this.f69544i == null) {
                this.f69544i = SerializerFactory.getSerializerFactory("xml");
            }
            if (streamResult.getWriter() != null) {
                makeSerializer = this.f69544i.makeSerializer(streamResult.getWriter(), new OutputFormat());
            } else {
                if (streamResult.getOutputStream() != null) {
                    serializerFactory = this.f69544i;
                    createOutputStream = streamResult.getOutputStream();
                    outputFormat = new OutputFormat();
                } else {
                    if (streamResult.getSystemId() == null) {
                        throw new IllegalArgumentException(oqi.m56146a(this.f69542g.getLocale(), "StreamResultNotInitialized", null));
                    }
                    createOutputStream = XMLEntityManager.createOutputStream(streamResult.getSystemId());
                    serializerFactory = this.f69544i;
                    outputFormat = new OutputFormat();
                }
                makeSerializer = serializerFactory.makeSerializer(createOutputStream, outputFormat);
            }
            SAXParser sAXParser = (SAXParser) this.f69543h.get();
            if (z || sAXParser == null) {
                sAXParser = new SAXParser(xMLParserConfiguration);
                this.f69543h = new SoftReference(sAXParser);
            } else {
                sAXParser.reset();
            }
            xMLParserConfiguration.setDocumentHandler(this.f69541f);
            this.f69541f.setDocumentHandler(sAXParser);
            sAXParser.setContentHandler(makeSerializer.asContentHandler());
        }
        try {
            try {
                xMLParserConfiguration.parse(xMLInputSource);
            } catch (XMLParseException e) {
                throw fzn.m54212b(e);
            } catch (XNIException e2) {
                throw fzn.m54211a(e2);
            }
        } finally {
            this.f69541f.setDocumentHandler(null);
        }
    }
}
