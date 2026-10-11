package javax.xml.validation;

import com.sunia.HTREnginev2.fdm;
import com.sunia.HTREnginev2.q4m;
import java.io.File;
import java.net.URL;
import javax.xml.transform.Source;
import javax.xml.transform.stream.StreamSource;
import org.w3c.dom.ls.LSResourceResolver;
import org.xml.sax.ErrorHandler;
import org.xml.sax.SAXException;
import org.xml.sax.SAXNotRecognizedException;
import org.xml.sax.SAXNotSupportedException;

/* loaded from: classes5.dex */
public abstract class SchemaFactory {
    static /* synthetic */ Class class$javax$xml$validation$SchemaFactory;

    public static /* synthetic */ Class class$(String str) {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException e) {
            throw new NoClassDefFoundError(e.getMessage());
        }
    }

    public static final SchemaFactory newInstance(String str) {
        ClassLoader m54088b = fdm.m54088b();
        if (m54088b == null) {
            Class cls = class$javax$xml$validation$SchemaFactory;
            if (cls == null) {
                cls = class$("javax.xml.validation.SchemaFactory");
                class$javax$xml$validation$SchemaFactory = cls;
            }
            m54088b = cls.getClassLoader();
        }
        SchemaFactory m56614h = new q4m(m54088b).m56614h(str);
        if (m56614h != null) {
            return m56614h;
        }
        throw new IllegalArgumentException(str);
    }

    public abstract ErrorHandler getErrorHandler();

    public boolean getFeature(String str) throws SAXNotRecognizedException, SAXNotSupportedException {
        if (str == null) {
            throw new NullPointerException("the name parameter is null");
        }
        throw new SAXNotRecognizedException(str);
    }

    public Object getProperty(String str) throws SAXNotRecognizedException, SAXNotSupportedException {
        if (str == null) {
            throw new NullPointerException("the name parameter is null");
        }
        throw new SAXNotRecognizedException(str);
    }

    public abstract LSResourceResolver getResourceResolver();

    public abstract boolean isSchemaLanguageSupported(String str);

    public abstract Schema newSchema() throws SAXException;

    public Schema newSchema(File file) throws SAXException {
        return newSchema(new StreamSource(file));
    }

    public abstract Schema newSchema(Source[] sourceArr) throws SAXException;

    public abstract void setErrorHandler(ErrorHandler errorHandler);

    public void setFeature(String str, boolean z) throws SAXNotRecognizedException, SAXNotSupportedException {
        if (str != null) {
            throw new SAXNotRecognizedException(str);
        }
        throw new NullPointerException("the name parameter is null");
    }

    public void setProperty(String str, Object obj) throws SAXNotRecognizedException, SAXNotSupportedException {
        if (str != null) {
            throw new SAXNotRecognizedException(str);
        }
        throw new NullPointerException("the name parameter is null");
    }

    public abstract void setResourceResolver(LSResourceResolver lSResourceResolver);

    public static SchemaFactory newInstance(String str, String str2, ClassLoader classLoader) {
        str.getClass();
        if (str2 == null) {
            throw new IllegalArgumentException("factoryClassName cannot be null.");
        }
        if (classLoader == null) {
            classLoader = fdm.m54088b();
        }
        SchemaFactory m56610c = new q4m(classLoader).m56610c(str2);
        if (m56610c == null || !m56610c.isSchemaLanguageSupported(str)) {
            throw new IllegalArgumentException(str);
        }
        return m56610c;
    }

    public Schema newSchema(URL url) throws SAXException {
        return newSchema(new StreamSource(url.toExternalForm()));
    }

    public Schema newSchema(Source source) throws SAXException {
        return newSchema(new Source[]{source});
    }
}
