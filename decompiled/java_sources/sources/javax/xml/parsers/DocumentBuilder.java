package javax.xml.parsers;

import com.sunia.HTREnginev2.dhg;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import javax.xml.validation.Schema;
import org.w3c.dom.DOMImplementation;
import org.w3c.dom.Document;
import org.xml.sax.EntityResolver;
import org.xml.sax.ErrorHandler;
import org.xml.sax.InputSource;
import org.xml.sax.SAXException;

/* loaded from: classes5.dex */
public abstract class DocumentBuilder {
    private static final boolean DEBUG = false;

    public abstract DOMImplementation getDOMImplementation();

    public Schema getSchema() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("This parser does not support specification \"");
        stringBuffer.append(getClass().getPackage().getSpecificationTitle());
        stringBuffer.append("\" version \"");
        stringBuffer.append(getClass().getPackage().getSpecificationVersion());
        stringBuffer.append("\"");
        throw new UnsupportedOperationException(stringBuffer.toString());
    }

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

    public abstract Document newDocument();

    public Document parse(File file) throws SAXException, IOException {
        if (file != null) {
            return parse(new InputSource(dhg.m53660a(file.getAbsolutePath())));
        }
        throw new IllegalArgumentException("File cannot be null");
    }

    public abstract Document parse(InputSource inputSource) throws SAXException, IOException;

    public void reset() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("This DocumentBuilder, \"");
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

    public abstract void setEntityResolver(EntityResolver entityResolver);

    public abstract void setErrorHandler(ErrorHandler errorHandler);

    public Document parse(InputStream inputStream) throws SAXException, IOException {
        if (inputStream != null) {
            return parse(new InputSource(inputStream));
        }
        throw new IllegalArgumentException("InputStream cannot be null");
    }

    public Document parse(InputStream inputStream, String str) throws SAXException, IOException {
        if (inputStream == null) {
            throw new IllegalArgumentException("InputStream cannot be null");
        }
        InputSource inputSource = new InputSource(inputStream);
        inputSource.setSystemId(str);
        return parse(inputSource);
    }

    public Document parse(String str) throws SAXException, IOException {
        if (str != null) {
            return parse(new InputSource(str));
        }
        throw new IllegalArgumentException("URI cannot be null");
    }
}
