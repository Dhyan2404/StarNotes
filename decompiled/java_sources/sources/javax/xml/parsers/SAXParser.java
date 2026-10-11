package javax.xml.parsers;

import com.sunia.HTREnginev2.dhg;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import javax.xml.validation.Schema;
import org.xml.sax.HandlerBase;
import org.xml.sax.InputSource;
import org.xml.sax.Parser;
import org.xml.sax.SAXException;
import org.xml.sax.SAXNotRecognizedException;
import org.xml.sax.SAXNotSupportedException;
import org.xml.sax.XMLReader;
import org.xml.sax.helpers.DefaultHandler;

/* loaded from: classes5.dex */
public abstract class SAXParser {
    private static final boolean DEBUG = false;

    public abstract Parser getParser() throws SAXException;

    public abstract Object getProperty(String str) throws SAXNotRecognizedException, SAXNotSupportedException;

    public Schema getSchema() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("This parser does not support specification \"");
        stringBuffer.append(getClass().getPackage().getSpecificationTitle());
        stringBuffer.append("\" version \"");
        stringBuffer.append(getClass().getPackage().getSpecificationVersion());
        stringBuffer.append("\"");
        throw new UnsupportedOperationException(stringBuffer.toString());
    }

    public abstract XMLReader getXMLReader() throws SAXException;

    public abstract boolean isNamespaceAware();

    public abstract boolean isValidating();

    public boolean isXIncludeAware() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("This parser does not support specification \"");
        stringBuffer.append(getClass().getPackage().getSpecificationTitle());
        stringBuffer.append("\" version \"");
        stringBuffer.append(getClass().getPackage().getSpecificationVersion());
        stringBuffer.append("\"");
        throw new UnsupportedOperationException(stringBuffer.toString());
    }

    public void parse(File file, HandlerBase handlerBase) throws SAXException, IOException {
        if (file == null) {
            throw new IllegalArgumentException("File cannot be null");
        }
        parse(new InputSource(dhg.m53660a(file.getAbsolutePath())), handlerBase);
    }

    public void reset() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("This SAXParser, \"");
        stringBuffer.append(getClass().getName());
        stringBuffer.append("\", does not support the reset functionality.");
        stringBuffer.append("  Specification \"");
        stringBuffer.append(getClass().getPackage().getSpecificationTitle());
        stringBuffer.append("\"");
        stringBuffer.append(" version \"");
        stringBuffer.append(getClass().getPackage().getSpecificationVersion());
        stringBuffer.append("\"");
        throw new UnsupportedOperationException(stringBuffer.toString());
    }

    public abstract void setProperty(String str, Object obj) throws SAXNotRecognizedException, SAXNotSupportedException;

    public void parse(File file, DefaultHandler defaultHandler) throws SAXException, IOException {
        if (file == null) {
            throw new IllegalArgumentException("File cannot be null");
        }
        parse(new InputSource(dhg.m53660a(file.getAbsolutePath())), defaultHandler);
    }

    public void parse(InputStream inputStream, HandlerBase handlerBase) throws SAXException, IOException {
        if (inputStream == null) {
            throw new IllegalArgumentException("InputStream cannot be null");
        }
        parse(new InputSource(inputStream), handlerBase);
    }

    public void parse(InputStream inputStream, HandlerBase handlerBase, String str) throws SAXException, IOException {
        if (inputStream == null) {
            throw new IllegalArgumentException("InputStream cannot be null");
        }
        InputSource inputSource = new InputSource(inputStream);
        inputSource.setSystemId(str);
        parse(inputSource, handlerBase);
    }

    public void parse(InputStream inputStream, DefaultHandler defaultHandler) throws SAXException, IOException {
        if (inputStream == null) {
            throw new IllegalArgumentException("InputStream cannot be null");
        }
        parse(new InputSource(inputStream), defaultHandler);
    }

    public void parse(InputStream inputStream, DefaultHandler defaultHandler, String str) throws SAXException, IOException {
        if (inputStream == null) {
            throw new IllegalArgumentException("InputStream cannot be null");
        }
        InputSource inputSource = new InputSource(inputStream);
        inputSource.setSystemId(str);
        parse(inputSource, defaultHandler);
    }

    public void parse(String str, HandlerBase handlerBase) throws SAXException, IOException {
        if (str == null) {
            throw new IllegalArgumentException("uri cannot be null");
        }
        parse(new InputSource(str), handlerBase);
    }

    public void parse(String str, DefaultHandler defaultHandler) throws SAXException, IOException {
        if (str == null) {
            throw new IllegalArgumentException("uri cannot be null");
        }
        parse(new InputSource(str), defaultHandler);
    }

    public void parse(InputSource inputSource, HandlerBase handlerBase) throws SAXException, IOException {
        if (inputSource == null) {
            throw new IllegalArgumentException("InputSource cannot be null");
        }
        Parser parser = getParser();
        if (handlerBase != null) {
            parser.setDocumentHandler(handlerBase);
            parser.setEntityResolver(handlerBase);
            parser.setErrorHandler(handlerBase);
            parser.setDTDHandler(handlerBase);
        }
        parser.parse(inputSource);
    }

    public void parse(InputSource inputSource, DefaultHandler defaultHandler) throws SAXException, IOException {
        if (inputSource == null) {
            throw new IllegalArgumentException("InputSource cannot be null");
        }
        XMLReader xMLReader = getXMLReader();
        if (defaultHandler != null) {
            xMLReader.setContentHandler(defaultHandler);
            xMLReader.setEntityResolver(defaultHandler);
            xMLReader.setErrorHandler(defaultHandler);
            xMLReader.setDTDHandler(defaultHandler);
        }
        xMLReader.parse(inputSource);
    }
}
