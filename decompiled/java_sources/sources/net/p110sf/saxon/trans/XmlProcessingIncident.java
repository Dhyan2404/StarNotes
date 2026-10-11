package net.p110sf.saxon.trans;

import java.util.Objects;
import javax.xml.transform.TransformerException;
import net.p110sf.saxon.expr.parser.Loc;
import net.p110sf.saxon.om.NameChecker;
import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.om.StructuredQName;
import net.p110sf.saxon.s9api.HostLanguage;
import net.p110sf.saxon.s9api.Location;
import net.p110sf.saxon.s9api.QName;
import net.p110sf.saxon.s9api.XmlProcessingError;
import net.p110sf.saxon.str.StringTool;
import net.p110sf.saxon.tree.util.Navigator;

/* loaded from: classes11.dex */
public class XmlProcessingIncident implements XmlProcessingError {

    /* renamed from: a */
    public final String f102366a;

    /* renamed from: b */
    public String f102367b;

    /* renamed from: c */
    public Throwable f102368c;

    /* renamed from: d */
    public Location f102369d;

    /* renamed from: e */
    public boolean f102370e;

    /* renamed from: f */
    public boolean f102371f;

    /* renamed from: g */
    public String f102372g;

    /* renamed from: h */
    public boolean f102373h;

    /* renamed from: i */
    public HostLanguage f102374i;

    /* renamed from: j */
    public boolean f102375j;

    public XmlProcessingIncident(String str, String str2, Location location) {
        this.f102369d = null;
        this.f102373h = false;
        this.f102374i = HostLanguage.UNKNOWN;
        Objects.requireNonNull(str);
        Objects.requireNonNull(str2);
        Objects.requireNonNull(location);
        this.f102366a = str;
        setErrorCodeAsEQName(str2);
        this.f102369d = location;
        this.f102370e = false;
    }

    public static void maybeSetHostLanguage(XmlProcessingError xmlProcessingError, HostLanguage hostLanguage) {
        if (xmlProcessingError.getHostLanguage() == HostLanguage.UNKNOWN) {
            if (xmlProcessingError instanceof XmlProcessingIncident) {
                ((XmlProcessingIncident) xmlProcessingError).setHostLanguage(hostLanguage);
            } else if (xmlProcessingError instanceof XmlProcessingException) {
                ((XmlProcessingException) xmlProcessingError).getXPathException().setHostLanguage(hostLanguage);
            }
        }
    }

    public static void maybeSetLocation(XmlProcessingError xmlProcessingError, Location location) {
        if (xmlProcessingError.getLocation() == null) {
            if (xmlProcessingError instanceof XmlProcessingIncident) {
                ((XmlProcessingIncident) xmlProcessingError).setLocation(location);
            } else if (xmlProcessingError instanceof XmlProcessingException) {
                ((XmlProcessingException) xmlProcessingError).getXPathException().setLocation(location);
            }
        }
    }

    @Override // net.p110sf.saxon.s9api.XmlProcessingError
    public Throwable getCause() {
        return this.f102368c;
    }

    public int getColumnNumber() {
        Location location = getLocation();
        if (location != null) {
            return location.getColumnNumber();
        }
        return -1;
    }

    @Override // net.p110sf.saxon.s9api.XmlProcessingError
    public QName getErrorCode() {
        if (this.f102367b == null) {
            return null;
        }
        return new QName(StructuredQName.fromEQName(this.f102367b));
    }

    @Override // net.p110sf.saxon.s9api.XmlProcessingError
    public HostLanguage getHostLanguage() {
        return this.f102374i;
    }

    public String getInstructionName() {
        return ((NodeInfo) this.f102369d).getDisplayName();
    }

    public int getLineNumber() {
        Location location = getLocation();
        if (location != null) {
            return location.getLineNumber();
        }
        return -1;
    }

    @Override // net.p110sf.saxon.s9api.XmlProcessingError
    public Location getLocation() {
        Location location = this.f102369d;
        return location == null ? Loc.NONE : location;
    }

    @Override // net.p110sf.saxon.s9api.XmlProcessingError
    public String getMessage() {
        return this.f102366a;
    }

    @Override // net.p110sf.saxon.s9api.XmlProcessingError
    public String getModuleUri() {
        return getLocation().getSystemId();
    }

    @Override // net.p110sf.saxon.s9api.XmlProcessingError
    public String getPath() {
        Location location = this.f102369d;
        if (location instanceof NodeInfo) {
            return Navigator.getPath((NodeInfo) location);
        }
        return null;
    }

    @Override // net.p110sf.saxon.s9api.XmlProcessingError
    public String getTerminationMessage() {
        return this.f102372g;
    }

    @Override // net.p110sf.saxon.s9api.XmlProcessingError
    public boolean isAlreadyReported() {
        return this.f102373h;
    }

    @Override // net.p110sf.saxon.s9api.XmlProcessingError
    public boolean isStaticError() {
        return this.f102375j;
    }

    @Override // net.p110sf.saxon.s9api.XmlProcessingError
    public boolean isTypeError() {
        return this.f102371f;
    }

    @Override // net.p110sf.saxon.s9api.XmlProcessingError
    public boolean isWarning() {
        return this.f102370e;
    }

    @Override // net.p110sf.saxon.s9api.XmlProcessingError
    public void setAlreadyReported(boolean z) {
        this.f102373h = z;
    }

    public void setCause(Throwable th) {
        this.f102368c = th;
    }

    public void setErrorCodeAsEQName(String str) {
        if (str.startsWith("Q{")) {
            this.f102367b = str;
            return;
        }
        if (!NameChecker.isValidNCName(StringTool.codePoints(str))) {
            this.f102367b = "Q{http://saxon.sf.net/}invalid-error-code";
            return;
        }
        this.f102367b = "Q{http://www.w3.org/2005/xqt-errors}" + str;
    }

    public void setHostLanguage(HostLanguage hostLanguage) {
        this.f102374i = hostLanguage;
    }

    public void setLocation(Location location) {
        this.f102369d = location;
    }

    public void setStaticError(boolean z) {
        this.f102375j = z;
    }

    @Override // net.p110sf.saxon.s9api.XmlProcessingError
    public void setTerminationMessage(String str) {
        this.f102372g = str;
    }

    public void setTypeError(boolean z) {
        this.f102371f = z;
    }

    public void setWarning(boolean z) {
        this.f102370e = z;
    }

    @Override // net.p110sf.saxon.s9api.XmlProcessingError
    public XmlProcessingIncident asWarning() {
        this.f102370e = true;
        return this;
    }

    public XmlProcessingIncident(String str) {
        this.f102369d = null;
        this.f102373h = false;
        this.f102374i = HostLanguage.UNKNOWN;
        this.f102366a = str;
    }

    public XmlProcessingIncident(String str, String str2) {
        this.f102369d = null;
        this.f102373h = false;
        this.f102374i = HostLanguage.UNKNOWN;
        this.f102366a = str;
        setErrorCodeAsEQName(str2);
    }

    public XmlProcessingIncident(TransformerException transformerException, boolean z) {
        this.f102369d = null;
        this.f102373h = false;
        this.f102374i = HostLanguage.UNKNOWN;
        XPathException makeXPathException = XPathException.makeXPathException(transformerException);
        this.f102366a = makeXPathException.getMessage();
        this.f102367b = makeXPathException.getErrorCodeQName().getEQName();
        this.f102369d = makeXPathException.getLocator();
        this.f102370e = z;
    }
}
