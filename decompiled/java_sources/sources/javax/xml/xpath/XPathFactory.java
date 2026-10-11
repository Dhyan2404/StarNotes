package javax.xml.xpath;

import com.sunia.HTREnginev2.fmo;
import com.sunia.HTREnginev2.gdm;

/* loaded from: classes5.dex */
public abstract class XPathFactory {
    public static final String DEFAULT_OBJECT_MODEL_URI = "http://java.sun.com/jaxp/xpath/dom";
    public static final String DEFAULT_PROPERTY_NAME = "javax.xml.xpath.XPathFactory";
    static /* synthetic */ Class class$javax$xml$xpath$XPathFactory;

    public static /* synthetic */ Class class$(String str) {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException e) {
            throw new NoClassDefFoundError(e.getMessage());
        }
    }

    public static final XPathFactory newInstance() {
        try {
            return newInstance("http://java.sun.com/jaxp/xpath/dom");
        } catch (XPathFactoryConfigurationException e) {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("XPathFactory#newInstance() failed to create an XPathFactory for the default object model: http://java.sun.com/jaxp/xpath/dom with the XPathFactoryConfigurationException: ");
            stringBuffer.append(e.toString());
            throw new RuntimeException(stringBuffer.toString());
        }
    }

    public abstract boolean getFeature(String str) throws XPathFactoryConfigurationException;

    public abstract boolean isObjectModelSupported(String str);

    public abstract XPath newXPath();

    public abstract void setFeature(String str, boolean z) throws XPathFactoryConfigurationException;

    public abstract void setXPathFunctionResolver(XPathFunctionResolver xPathFunctionResolver);

    public abstract void setXPathVariableResolver(XPathVariableResolver xPathVariableResolver);

    public static final XPathFactory newInstance(String str) throws XPathFactoryConfigurationException {
        if (str == null) {
            throw new NullPointerException("XPathFactory#newInstance(String uri) cannot be called with uri == null");
        }
        if (str.length() == 0) {
            throw new IllegalArgumentException("XPathFactory#newInstance(String uri) cannot be called with uri == \"\"");
        }
        ClassLoader m54262b = gdm.m54262b();
        if (m54262b == null) {
            Class cls = class$javax$xml$xpath$XPathFactory;
            if (cls == null) {
                cls = class$(DEFAULT_PROPERTY_NAME);
                class$javax$xml$xpath$XPathFactory = cls;
            }
            m54262b = cls.getClassLoader();
        }
        XPathFactory m54149h = new fmo(m54262b).m54149h(str);
        if (m54149h != null) {
            return m54149h;
        }
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("No XPathFctory implementation found for the object model: ");
        stringBuffer.append(str);
        throw new XPathFactoryConfigurationException(stringBuffer.toString());
    }

    public static XPathFactory newInstance(String str, String str2, ClassLoader classLoader) throws XPathFactoryConfigurationException {
        if (str == null) {
            throw new NullPointerException("XPathFactory#newInstance(String uri) cannot be called with uri == null");
        }
        if (str.length() == 0) {
            throw new IllegalArgumentException("XPathFactory#newInstance(String uri) cannot be called with uri == \"\"");
        }
        if (str2 == null) {
            throw new XPathFactoryConfigurationException("factoryClassName cannot be null.");
        }
        if (classLoader == null) {
            classLoader = gdm.m54262b();
        }
        XPathFactory m54145c = new fmo(classLoader).m54145c(str2);
        if (m54145c != null && m54145c.isObjectModelSupported(str)) {
            return m54145c;
        }
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("No XPathFctory implementation found for the object model: ");
        stringBuffer.append(str);
        throw new XPathFactoryConfigurationException(stringBuffer.toString());
    }
}
