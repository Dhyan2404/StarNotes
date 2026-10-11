package org.apache.xerces.parsers;

import java.io.IOException;
import org.apache.xerces.xni.XNIException;
import org.apache.xerces.xni.parser.XMLInputSource;
import org.apache.xerces.xni.parser.XMLParserConfiguration;

/* loaded from: classes13.dex */
public abstract class XMLParser {
    protected static final String ENTITY_RESOLVER = "http://apache.org/xml/properties/internal/entity-resolver";
    protected static final String ERROR_HANDLER = "http://apache.org/xml/properties/internal/error-handler";

    /* renamed from: e */
    public static final String[] f113431e = {"http://apache.org/xml/properties/internal/entity-resolver", "http://apache.org/xml/properties/internal/error-handler"};
    protected final XMLParserConfiguration fConfiguration;

    public XMLParser(XMLParserConfiguration xMLParserConfiguration) {
        this.fConfiguration = xMLParserConfiguration;
        xMLParserConfiguration.addRecognizedProperties(f113431e);
    }

    public void parse(XMLInputSource xMLInputSource) throws XNIException, IOException {
        reset();
        this.fConfiguration.parse(xMLInputSource);
    }

    public void reset() throws XNIException {
    }
}
