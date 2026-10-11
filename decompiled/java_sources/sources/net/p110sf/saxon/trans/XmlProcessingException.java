package net.p110sf.saxon.trans;

import net.p110sf.saxon.expr.instruct.Instruction;
import net.p110sf.saxon.expr.parser.Loc;
import net.p110sf.saxon.om.StructuredQName;
import net.p110sf.saxon.s9api.HostLanguage;
import net.p110sf.saxon.s9api.Location;
import net.p110sf.saxon.s9api.QName;
import net.p110sf.saxon.s9api.XmlProcessingError;
import net.p110sf.saxon.tree.AttributeLocation;

/* loaded from: classes11.dex */
public class XmlProcessingException implements XmlProcessingError {

    /* renamed from: a */
    public final XPathException f102363a;

    /* renamed from: b */
    public boolean f102364b;

    /* renamed from: c */
    public String f102365c;

    public XmlProcessingException(XPathException xPathException) {
        this.f102363a = xPathException;
    }

    @Override // net.p110sf.saxon.s9api.XmlProcessingError
    public Throwable getCause() {
        return this.f102363a.getCause();
    }

    @Override // net.p110sf.saxon.s9api.XmlProcessingError
    public QName getErrorCode() {
        StructuredQName errorCodeQName = this.f102363a.getErrorCodeQName();
        if (errorCodeQName == null) {
            return null;
        }
        return new QName(errorCodeQName);
    }

    @Override // net.p110sf.saxon.s9api.XmlProcessingError
    public HostLanguage getHostLanguage() {
        Location location = getLocation();
        return ((location instanceof Instruction) || (location instanceof AttributeLocation)) ? HostLanguage.XSLT : HostLanguage.XPATH;
    }

    @Override // net.p110sf.saxon.s9api.XmlProcessingError
    public Location getLocation() {
        return this.f102363a.getLocator() == null ? Loc.NONE : this.f102363a.getLocator();
    }

    @Override // net.p110sf.saxon.s9api.XmlProcessingError
    public String getMessage() {
        return this.f102363a.getMessage();
    }

    @Override // net.p110sf.saxon.s9api.XmlProcessingError
    public String getPath() {
        return null;
    }

    @Override // net.p110sf.saxon.s9api.XmlProcessingError
    public String getTerminationMessage() {
        return this.f102365c;
    }

    public XPathException getXPathException() {
        return this.f102363a;
    }

    @Override // net.p110sf.saxon.s9api.XmlProcessingError
    public boolean isAlreadyReported() {
        return this.f102363a.hasBeenReported();
    }

    @Override // net.p110sf.saxon.s9api.XmlProcessingError
    public boolean isStaticError() {
        return this.f102363a.isStaticError();
    }

    @Override // net.p110sf.saxon.s9api.XmlProcessingError
    public boolean isTypeError() {
        return this.f102363a.isTypeError();
    }

    @Override // net.p110sf.saxon.s9api.XmlProcessingError
    public boolean isWarning() {
        return this.f102364b;
    }

    @Override // net.p110sf.saxon.s9api.XmlProcessingError
    public void setAlreadyReported(boolean z) {
        this.f102363a.setHasBeenReported(z);
    }

    @Override // net.p110sf.saxon.s9api.XmlProcessingError
    public void setTerminationMessage(String str) {
        this.f102365c = str;
    }

    public void setWarning(boolean z) {
        this.f102364b = z;
    }

    @Override // net.p110sf.saxon.s9api.XmlProcessingError
    public XmlProcessingException asWarning() {
        XmlProcessingException xmlProcessingException = new XmlProcessingException(this.f102363a);
        xmlProcessingException.setWarning(true);
        return xmlProcessingException;
    }
}
