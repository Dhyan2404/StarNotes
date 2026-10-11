package org.apache.xerces.impl;

import java.util.Hashtable;
import java.util.Locale;
import org.apache.xerces.util.DefaultErrorHandler;
import org.apache.xerces.util.MessageFormatter;
import org.apache.xerces.xni.XMLLocator;
import org.apache.xerces.xni.XNIException;
import org.apache.xerces.xni.parser.XMLComponent;
import org.apache.xerces.xni.parser.XMLComponentManager;
import org.apache.xerces.xni.parser.XMLConfigurationException;
import org.apache.xerces.xni.parser.XMLErrorHandler;
import org.apache.xerces.xni.parser.XMLParseException;
import org.xml.sax.ErrorHandler;

/* loaded from: classes13.dex */
public class XMLErrorReporter implements XMLComponent {
    protected static final String CONTINUE_AFTER_FATAL_ERROR = "http://apache.org/xml/features/continue-after-fatal-error";
    protected static final String ERROR_HANDLER = "http://apache.org/xml/properties/internal/error-handler";
    public static final short SEVERITY_ERROR = 1;
    public static final short SEVERITY_FATAL_ERROR = 2;
    public static final short SEVERITY_WARNING = 0;

    /* renamed from: f */
    public static final String[] f112075f = {"http://apache.org/xml/features/continue-after-fatal-error"};

    /* renamed from: g */
    public static final Boolean[] f112076g = {null};

    /* renamed from: h */
    public static final String[] f112077h = {"http://apache.org/xml/properties/internal/error-handler"};

    /* renamed from: i */
    public static final Object[] f112078i = {null};
    protected boolean fContinueAfterFatalError;
    protected XMLErrorHandler fDefaultErrorHandler;
    protected XMLErrorHandler fErrorHandler;
    protected Locale fLocale;
    protected XMLLocator fLocator;

    /* renamed from: e */
    public ErrorHandler f112079e = null;
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

    @Override // org.apache.xerces.xni.parser.XMLComponent
    public Boolean getFeatureDefault(String str) {
        int i = 0;
        while (true) {
            String[] strArr = f112075f;
            if (i >= strArr.length) {
                return null;
            }
            if (strArr[i].equals(str)) {
                return f112076g[i];
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

    @Override // org.apache.xerces.xni.parser.XMLComponent
    public Object getPropertyDefault(String str) {
        int i = 0;
        while (true) {
            String[] strArr = f112077h;
            if (i >= strArr.length) {
                return null;
            }
            if (strArr[i].equals(str)) {
                return f112078i[i];
            }
            i++;
        }
    }

    @Override // org.apache.xerces.xni.parser.XMLComponent
    public String[] getRecognizedFeatures() {
        return (String[]) f112075f.clone();
    }

    @Override // org.apache.xerces.xni.parser.XMLComponent
    public String[] getRecognizedProperties() {
        return (String[]) f112077h.clone();
    }

    public ErrorHandler getSAXErrorHandler() {
        if (this.f112079e == null) {
            this.f112079e = new C20008b(this);
        }
        return this.f112079e;
    }

    public void putMessageFormatter(String str, MessageFormatter messageFormatter) {
        this.fMessageFormatters.put(str, messageFormatter);
    }

    public MessageFormatter removeMessageFormatter(String str) {
        return (MessageFormatter) this.fMessageFormatters.remove(str);
    }

    public String reportError(String str, String str2, Object[] objArr, short s) throws XNIException {
        return reportError(this.fLocator, str, str2, objArr, s);
    }

    @Override // org.apache.xerces.xni.parser.XMLComponent
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

    @Override // org.apache.xerces.xni.parser.XMLComponent
    public void setFeature(String str, boolean z) throws XMLConfigurationException {
        if (str.startsWith("http://apache.org/xml/features/") && str.length() - 31 == 26 && str.endsWith("continue-after-fatal-error")) {
            this.fContinueAfterFatalError = z;
        }
    }

    public void setLocale(Locale locale) {
        this.fLocale = locale;
    }

    @Override // org.apache.xerces.xni.parser.XMLComponent
    public void setProperty(String str, Object obj) throws XMLConfigurationException {
        if (str.startsWith("http://apache.org/xml/properties/") && str.length() - 33 == 22 && str.endsWith("internal/error-handler")) {
            this.fErrorHandler = (XMLErrorHandler) obj;
        }
    }

    public String reportError(String str, String str2, Object[] objArr, short s, Exception exc) throws XNIException {
        return reportError(this.fLocator, str, str2, objArr, s, exc);
    }

    public String reportError(XMLLocator xMLLocator, String str, String str2, Object[] objArr, short s) throws XNIException {
        return reportError(xMLLocator, str, str2, objArr, s, null);
    }

    public String reportError(XMLLocator xMLLocator, String str, String str2, Object[] objArr, short s, Exception exc) throws XNIException {
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
        XMLParseException xMLParseException = exc != null ? new XMLParseException(xMLLocator, stringBuffer, exc) : new XMLParseException(xMLLocator, stringBuffer);
        XMLErrorHandler xMLErrorHandler = this.fErrorHandler;
        if (xMLErrorHandler == null) {
            if (this.fDefaultErrorHandler == null) {
                this.fDefaultErrorHandler = new DefaultErrorHandler();
            }
            xMLErrorHandler = this.fDefaultErrorHandler;
        }
        if (s == 0) {
            xMLErrorHandler.warning(str, str2, xMLParseException);
        } else if (s == 1) {
            xMLErrorHandler.error(str, str2, xMLParseException);
        } else if (s == 2) {
            xMLErrorHandler.fatalError(str, str2, xMLParseException);
            if (!this.fContinueAfterFatalError) {
                throw xMLParseException;
            }
        }
        return stringBuffer;
    }
}
