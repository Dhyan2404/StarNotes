package net.p110sf.saxon.trans;

import androidx.core.app.NotificationCompat;
import javax.xml.transform.SourceLocator;
import javax.xml.transform.TransformerException;
import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.expr.parser.Loc;
import net.p110sf.saxon.lib.NamespaceConstant;
import net.p110sf.saxon.om.Sequence;
import net.p110sf.saxon.om.StructuredQName;
import net.p110sf.saxon.s9api.HostLanguage;
import net.p110sf.saxon.s9api.Location;
import net.p110sf.saxon.s9api.QName;
import net.p110sf.saxon.s9api.XmlProcessingError;

/* loaded from: classes11.dex */
public class XPathException extends TransformerException {
    private boolean _hasBeenReported;
    private boolean _isGlobalError;
    private boolean _isStaticError;
    private boolean _isSyntaxError;
    private boolean _isTypeError;
    transient XPathContext context;
    private StructuredQName errorCode;
    private Sequence errorObject;
    private Expression failingExpression;
    private String hostLanguage;

    /* loaded from: classes11.dex */
    public static class Circularity extends XPathException {
        public Circularity(String str) {
            super(str);
        }

        @Override // net.p110sf.saxon.trans.XPathException, javax.xml.transform.TransformerException
        public /* bridge */ /* synthetic */ SourceLocator getLocator() {
            return super.getLocator();
        }
    }

    /* loaded from: classes11.dex */
    public static class StackOverflow extends XPathException {
        public StackOverflow(String str, String str2, Location location) {
            super(str, str2, location);
        }

        @Override // net.p110sf.saxon.trans.XPathException, javax.xml.transform.TransformerException
        public /* bridge */ /* synthetic */ SourceLocator getLocator() {
            return super.getLocator();
        }
    }

    public XPathException(String str) {
        super(str);
        this._isTypeError = false;
        this._isSyntaxError = false;
        this._isStaticError = false;
        this._isGlobalError = false;
        this.hostLanguage = null;
        this._hasBeenReported = false;
        breakPoint();
    }

    private static void breakPoint() {
    }

    public static XPathException fromXmlProcessingError(XmlProcessingError xmlProcessingError) {
        if (xmlProcessingError instanceof XmlProcessingException) {
            return ((XmlProcessingException) xmlProcessingError).getXPathException();
        }
        XPathException xPathException = new XPathException(xmlProcessingError.getMessage());
        xPathException.setLocation(xmlProcessingError.getLocation());
        xPathException.setHostLanguage(xmlProcessingError.getHostLanguage());
        xPathException.setIsStaticError(xmlProcessingError.isStaticError());
        xPathException.setIsTypeError(xmlProcessingError.isTypeError());
        QName errorCode = xmlProcessingError.getErrorCode();
        if (errorCode != null) {
            xPathException.setErrorCodeQName(errorCode.getStructuredQName());
        }
        return xPathException;
    }

    public static XPathException makeXPathException(Exception exc) {
        if (exc instanceof XPathException) {
            return (XPathException) exc;
        }
        if (exc.getCause() instanceof XPathException) {
            return (XPathException) exc.getCause();
        }
        if (!(exc instanceof TransformerException)) {
            return new XPathException(exc);
        }
        XPathException xPathException = new XPathException(exc.getMessage(), exc);
        xPathException.setLocator(((TransformerException) exc).getLocator());
        return xPathException;
    }

    public String getErrorCodeLocalPart() {
        StructuredQName structuredQName = this.errorCode;
        if (structuredQName == null) {
            return null;
        }
        return structuredQName.getLocalPart();
    }

    public String getErrorCodeNamespace() {
        StructuredQName structuredQName = this.errorCode;
        if (structuredQName == null) {
            return null;
        }
        return structuredQName.getURI();
    }

    public StructuredQName getErrorCodeQName() {
        return this.errorCode;
    }

    public Sequence getErrorObject() {
        return this.errorObject;
    }

    public Expression getFailingExpression() {
        return this.failingExpression;
    }

    public String getHostLanguage() {
        return this.hostLanguage;
    }

    public XPathContext getXPathContext() {
        return this.context;
    }

    public boolean hasBeenReported() {
        return this._hasBeenReported;
    }

    public boolean isGlobalError() {
        return this._isGlobalError;
    }

    public boolean isReportableStatically() {
        if (isStaticError() || isTypeError()) {
            return true;
        }
        StructuredQName structuredQName = this.errorCode;
        if (structuredQName == null || !structuredQName.hasURI(NamespaceConstant.ERR)) {
            return false;
        }
        String localPart = structuredQName.getLocalPart();
        return localPart.equals("XTDE1260") || localPart.equals("XTDE1280") || localPart.equals("XTDE1390") || localPart.equals("XTDE1400") || localPart.equals("XTDE1428") || localPart.equals("XTDE1440") || localPart.equals("XTDE1460");
    }

    public boolean isStaticError() {
        return this._isStaticError;
    }

    public boolean isSyntaxError() {
        return this._isSyntaxError;
    }

    public boolean isTypeError() {
        return this._isTypeError;
    }

    public void maybeSetContext(XPathContext xPathContext) {
        if (getXPathContext() == null) {
            setXPathContext(xPathContext);
        }
    }

    public void maybeSetErrorCode(String str) {
        if (this.errorCode != null || str == null) {
            return;
        }
        this.errorCode = new StructuredQName(NotificationCompat.CATEGORY_ERROR, NamespaceConstant.ERR, str);
    }

    public void maybeSetFailingExpression(Expression expression) {
        if (this.failingExpression == null) {
            this.failingExpression = expression;
        }
        maybeSetLocation(expression.getLocation());
    }

    public void maybeSetLocation(Location location) {
        if (location != null) {
            if (getLocator() == null) {
                setLocator(location.saveLocation());
                return;
            }
            if (getLocator().getLineNumber() == -1) {
                if (getLocator().getSystemId() == null || location.getSystemId() == null || getLocator().getSystemId().equals(location.getSystemId())) {
                    setLocator(location.saveLocation());
                }
            }
        }
    }

    public void setErrorCode(String str) {
        if (str != null) {
            this.errorCode = new StructuredQName(NotificationCompat.CATEGORY_ERROR, NamespaceConstant.ERR, str);
        }
    }

    public void setErrorCodeQName(StructuredQName structuredQName) {
        this.errorCode = structuredQName;
    }

    public void setErrorObject(Sequence sequence) {
        this.errorObject = sequence;
    }

    public void setFailingExpression(Expression expression) {
        this.failingExpression = expression;
    }

    public void setHasBeenReported(boolean z) {
        this._hasBeenReported = z;
    }

    public void setHostLanguage(String str) {
        this.hostLanguage = str;
    }

    public void setIsGlobalError(boolean z) {
        this._isGlobalError = z;
    }

    public void setIsStaticError(boolean z) {
        this._isStaticError = z;
    }

    public void setIsSyntaxError(boolean z) {
        if (z) {
            this._isStaticError = true;
        }
        this._isSyntaxError = z;
    }

    public void setIsTypeError(boolean z) {
        this._isTypeError = z;
    }

    public void setLocation(Location location) {
        if (location != null) {
            setLocator(location.saveLocation());
        }
    }

    public void setXPathContext(XPathContext xPathContext) {
        this.context = xPathContext;
    }

    @Override // javax.xml.transform.TransformerException
    public Location getLocator() {
        SourceLocator locator = super.getLocator();
        if (locator == null) {
            return null;
        }
        if (locator instanceof Location) {
            return (Location) locator;
        }
        return new Loc(locator);
    }

    public void setHostLanguage(HostLanguage hostLanguage) {
        this.hostLanguage = hostLanguage == HostLanguage.UNKNOWN ? null : hostLanguage.toString();
    }

    public XPathException(Throwable th) {
        super(th);
        this._isTypeError = false;
        this._isSyntaxError = false;
        this._isStaticError = false;
        this._isGlobalError = false;
        this.hostLanguage = null;
        this._hasBeenReported = false;
        breakPoint();
    }

    public XPathException(String str, Throwable th) {
        super(str, th);
        this._isTypeError = false;
        this._isSyntaxError = false;
        this._isStaticError = false;
        this._isGlobalError = false;
        this.hostLanguage = null;
        this._hasBeenReported = false;
        breakPoint();
    }

    public XPathException(String str, String str2, Location location) {
        this(str, str2);
        setLocator(location);
        breakPoint();
    }

    public XPathException(String str, Location location, Throwable th) {
        super(str, location, th);
        this._isTypeError = false;
        this._isSyntaxError = false;
        this._isStaticError = false;
        this._isGlobalError = false;
        this.hostLanguage = null;
        this._hasBeenReported = false;
        breakPoint();
    }

    public XPathException(String str, String str2) {
        super(str);
        this._isTypeError = false;
        this._isSyntaxError = false;
        this._isStaticError = false;
        this._isGlobalError = false;
        this.hostLanguage = null;
        this._hasBeenReported = false;
        setErrorCode(str2);
        breakPoint();
    }

    public XPathException(String str, String str2, XPathContext xPathContext) {
        super(str);
        this._isTypeError = false;
        this._isSyntaxError = false;
        this._isStaticError = false;
        this._isGlobalError = false;
        this.hostLanguage = null;
        this._hasBeenReported = false;
        setErrorCode(str2);
        setXPathContext(xPathContext);
        breakPoint();
    }
}
