package com.sun.org.apache.xerces.internal.impl;

import com.sun.org.apache.xerces.internal.util.DefaultErrorHandler;
import com.sun.org.apache.xerces.internal.util.ErrorHandlerProxy;
import com.sun.org.apache.xerces.internal.util.MessageFormatter;
import com.sun.org.apache.xerces.internal.xni.XMLLocator;
import com.sun.org.apache.xerces.internal.xni.XNIException;
import com.sun.org.apache.xerces.internal.xni.parser.XMLComponent;
import com.sun.org.apache.xerces.internal.xni.parser.XMLComponentManager;
import com.sun.org.apache.xerces.internal.xni.parser.XMLConfigurationException;
import com.sun.org.apache.xerces.internal.xni.parser.XMLErrorHandler;
import com.sun.org.apache.xerces.internal.xni.parser.XMLParseException;
import java.util.Hashtable;
import java.util.Locale;
import org.xml.sax.ErrorHandler;

/* loaded from: classes10.dex */
public class XMLErrorReporter implements XMLComponent {
    protected static final String CONTINUE_AFTER_FATAL_ERROR = "http://apache.org/xml/features/continue-after-fatal-error";
    protected static final String ERROR_HANDLER = "http://apache.org/xml/properties/internal/error-handler";
    public static final short SEVERITY_ERROR = 1;
    public static final short SEVERITY_FATAL_ERROR = 2;
    public static final short SEVERITY_WARNING = 0;
    protected boolean fContinueAfterFatalError;
    protected XMLErrorHandler fDefaultErrorHandler;
    protected XMLErrorHandler fErrorHandler;
    protected Locale fLocale;
    protected XMLLocator fLocator;
    private static final String[] RECOGNIZED_FEATURES = {"http://apache.org/xml/features/continue-after-fatal-error"};
    private static final Boolean[] FEATURE_DEFAULTS = {null};
    private static final String[] RECOGNIZED_PROPERTIES = {"http://apache.org/xml/properties/internal/error-handler"};
    private static final Object[] PROPERTY_DEFAULTS = {null};
    private ErrorHandler fSaxProxy = null;
    protected Hashtable fMessageFormatters = new Hashtable();

    public XMLErrorHandler getErrorHandler() {
        return this.fErrorHandler;
    }

    public boolean getFeature(String str) throws XMLConfigurationException {
        if (str.startsWith("http://apache.org/xml/features/") && str.length() - 31 == 26 && str.endsWith("continue-after-fatal-error")) {
            return this.fContinueAfterFatalError;
        }
        return false;
    }

    @Override // com.sun.org.apache.xerces.internal.xni.parser.XMLComponent
    public Boolean getFeatureDefault(String str) {
        int i = 0;
        while (true) {
            String[] strArr = RECOGNIZED_FEATURES;
            if (i >= strArr.length) {
                return null;
            }
            if (strArr[i].equals(str)) {
                return FEATURE_DEFAULTS[i];
            }
            i++;
        }
    }

    public Locale getLocale() {
        return this.fLocale;
    }

    public MessageFormatter getMessageFormatter(String str) {
        return (MessageFormatter) this.fMessageFormatters.get(str);
    }

    @Override // com.sun.org.apache.xerces.internal.xni.parser.XMLComponent
    public Object getPropertyDefault(String str) {
        int i = 0;
        while (true) {
            String[] strArr = RECOGNIZED_PROPERTIES;
            if (i >= strArr.length) {
                return null;
            }
            if (strArr[i].equals(str)) {
                return PROPERTY_DEFAULTS[i];
            }
            i++;
        }
    }

    @Override // com.sun.org.apache.xerces.internal.xni.parser.XMLComponent
    public String[] getRecognizedFeatures() {
        return (String[]) RECOGNIZED_FEATURES.clone();
    }

    @Override // com.sun.org.apache.xerces.internal.xni.parser.XMLComponent
    public String[] getRecognizedProperties() {
        return (String[]) RECOGNIZED_PROPERTIES.clone();
    }

    public ErrorHandler getSAXErrorHandler() {
        if (this.fSaxProxy == null) {
            this.fSaxProxy = new ErrorHandlerProxy() { // from class: com.sun.org.apache.xerces.internal.impl.XMLErrorReporter.1
                @Override // com.sun.org.apache.xerces.internal.util.ErrorHandlerProxy
                public XMLErrorHandler getErrorHandler() {
                    return XMLErrorReporter.this.fErrorHandler;
                }
            };
        }
        return this.fSaxProxy;
    }

    public void putMessageFormatter(String str, MessageFormatter messageFormatter) {
        this.fMessageFormatters.put(str, messageFormatter);
    }

    public MessageFormatter removeMessageFormatter(String str) {
        return (MessageFormatter) this.fMessageFormatters.remove(str);
    }

    public void reportError(String str, String str2, Object[] objArr, short s) throws XNIException {
        reportError(this.fLocator, str, str2, objArr, s);
    }

    @Override // com.sun.org.apache.xerces.internal.xni.parser.XMLComponent
    public void reset(XMLComponentManager xMLComponentManager) throws XNIException {
        try {
            this.fContinueAfterFatalError = xMLComponentManager.getFeature("http://apache.org/xml/features/continue-after-fatal-error");
        } catch (XNIException unused) {
            this.fContinueAfterFatalError = false;
        }
        this.fErrorHandler = (XMLErrorHandler) xMLComponentManager.getProperty("http://apache.org/xml/properties/internal/error-handler");
    }

    public void setDocumentLocator(XMLLocator xMLLocator) {
        this.fLocator = xMLLocator;
    }

    @Override // com.sun.org.apache.xerces.internal.xni.parser.XMLComponent
    public void setFeature(String str, boolean z) throws XMLConfigurationException {
        if (str.startsWith("http://apache.org/xml/features/") && str.length() - 31 == 26 && str.endsWith("continue-after-fatal-error")) {
            this.fContinueAfterFatalError = z;
        }
    }

    public void setLocale(Locale locale) {
        this.fLocale = locale;
    }

    @Override // com.sun.org.apache.xerces.internal.xni.parser.XMLComponent
    public void setProperty(String str, Object obj) throws XMLConfigurationException {
        if (str.startsWith("http://apache.org/xml/properties/") && str.length() - 33 == 22 && str.endsWith("internal/error-handler")) {
            this.fErrorHandler = (XMLErrorHandler) obj;
        }
    }

    public void reportError(XMLLocator xMLLocator, String str, String str2, Object[] objArr, short s) throws XNIException {
        String stringBuffer;
        MessageFormatter messageFormatter = getMessageFormatter(str);
        if (messageFormatter != null) {
            stringBuffer = messageFormatter.formatMessage(this.fLocale, str2, objArr);
        } else {
            StringBuffer stringBuffer2 = new StringBuffer();
            stringBuffer2.append(str);
            stringBuffer2.append('#');
            stringBuffer2.append(str2);
            int length = objArr != null ? objArr.length : 0;
            if (length > 0) {
                stringBuffer2.append('?');
                for (int i = 0; i < length; i++) {
                    stringBuffer2.append(objArr[i]);
                    if (i < length - 1) {
                        stringBuffer2.append('&');
                    }
                }
            }
            stringBuffer = stringBuffer2.toString();
        }
        XMLParseException xMLParseException = new XMLParseException(xMLLocator, stringBuffer);
        XMLErrorHandler xMLErrorHandler = this.fErrorHandler;
        if (xMLErrorHandler == null) {
            if (this.fDefaultErrorHandler == null) {
                this.fDefaultErrorHandler = new DefaultErrorHandler();
            }
            xMLErrorHandler = this.fDefaultErrorHandler;
        }
        if (s == 0) {
            xMLErrorHandler.warning(str, str2, xMLParseException);
            return;
        }
        if (s != 1) {
            if (s != 2) {
                return;
            }
            xMLErrorHandler.fatalError(str, str2, xMLParseException);
            if (!this.fContinueAfterFatalError) {
                throw xMLParseException;
            }
        } else {
            xMLErrorHandler.error(str, str2, xMLParseException);
        }
    }
}
