package net.p110sf.saxon.type;

import androidx.core.app.NotificationCompat;
import com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import javax.xml.transform.SourceLocator;
import net.p110sf.saxon.expr.parser.Loc;
import net.p110sf.saxon.lib.Invalidity;
import net.p110sf.saxon.lib.NamespaceConstant;
import net.p110sf.saxon.om.AbsolutePath;
import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.om.StructuredQName;
import net.p110sf.saxon.s9api.Location;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.value.AtomicValue;

/* loaded from: classes11.dex */
public class ValidationFailure implements Location, ConversionResult, Invalidity {

    /* renamed from: e */
    public String f102821e;

    /* renamed from: f */
    public String f102822f;

    /* renamed from: g */
    public String f102823g;

    /* renamed from: j */
    public AbsolutePath f102826j;

    /* renamed from: k */
    public AbsolutePath f102827k;

    /* renamed from: l */
    public NodeInfo f102828l;

    /* renamed from: m */
    public List<NodeInfo> f102829m;

    /* renamed from: o */
    public String f102831o;

    /* renamed from: p */
    public String f102832p;

    /* renamed from: q */
    public SchemaType f102833q;

    /* renamed from: r */
    public StructuredQName f102834r;

    /* renamed from: s */
    public ValidationException f102835s;

    /* renamed from: t */
    public boolean f102836t;

    /* renamed from: h */
    public int f102824h = -1;

    /* renamed from: i */
    public int f102825i = -1;

    /* renamed from: n */
    public int f102830n = -1;

    public ValidationFailure(String str) {
        this.f102821e = str;
        setErrorCode("FORG0001");
    }

    public static ValidationFailure fromException(Exception exc) {
        if (exc instanceof ValidationException) {
            return ((ValidationException) exc).getValidationFailure();
        }
        if (!(exc instanceof XPathException)) {
            return new ValidationFailure(exc.getMessage());
        }
        ValidationFailure validationFailure = new ValidationFailure(exc.getMessage());
        XPathException xPathException = (XPathException) exc;
        if (xPathException.getErrorCodeQName() == null) {
            validationFailure.setErrorCode("FORG0001");
        } else {
            validationFailure.setErrorCodeQName(xPathException.getErrorCodeQName());
        }
        validationFailure.setLocator(xPathException.getLocator());
        return validationFailure;
    }

    public void addOffendingNode(NodeInfo nodeInfo) {
        if (this.f102829m == null) {
            this.f102829m = new ArrayList();
        }
        this.f102829m.add(nodeInfo);
    }

    @Override // net.p110sf.saxon.type.ConversionResult
    public AtomicValue asAtomic() throws ValidationException {
        throw makeException();
    }

    public AbsolutePath getAbsolutePath() {
        AbsolutePath absolutePath = this.f102826j;
        if (absolutePath != null) {
            return absolutePath;
        }
        return null;
    }

    @Override // net.p110sf.saxon.s9api.Location, javax.xml.transform.SourceLocator
    public int getColumnNumber() {
        Location locator = getLocator();
        int i = this.f102825i;
        return (i != -1 || locator == null || locator == this) ? i : locator.getColumnNumber();
    }

    @Override // net.p110sf.saxon.lib.Invalidity
    public String getConstraintClauseNumber() {
        return this.f102832p;
    }

    @Override // net.p110sf.saxon.lib.Invalidity
    public String getConstraintName() {
        return this.f102831o;
    }

    @Override // net.p110sf.saxon.lib.Invalidity
    public String getConstraintReference() {
        return this.f102831o + '.' + this.f102832p;
    }

    public String getConstraintReferenceMessage() {
        if (this.f102830n == -1) {
            return null;
        }
        return "See http://www.w3.org/TR/xmlschema11-" + this.f102830n + "/#" + this.f102831o + " clause " + this.f102832p;
    }

    public String getContextLocationText() {
        StringBuilder sb = new StringBuilder(256);
        AbsolutePath contextPath = getContextPath();
        if (contextPath != null) {
            sb.append("Currently processing ");
            sb.append(contextPath.getPathUsingPrefixes());
            if (contextPath.getSystemId() != null) {
                sb.append(CloudStorageConstants.OPERATION_IN);
                sb.append(contextPath.getSystemId());
            }
        }
        return sb.toString();
    }

    @Override // net.p110sf.saxon.lib.Invalidity
    public AbsolutePath getContextPath() {
        return this.f102827k;
    }

    @Override // net.p110sf.saxon.lib.Invalidity
    public String getErrorCode() {
        StructuredQName structuredQName = this.f102834r;
        if (structuredQName == null) {
            return null;
        }
        return structuredQName.hasURI(NamespaceConstant.ERR) ? this.f102834r.getLocalPart() : this.f102834r.getEQName();
    }

    public StructuredQName getErrorCodeQName() {
        return this.f102834r;
    }

    @Override // net.p110sf.saxon.lib.Invalidity
    public NodeInfo getInvalidNode() {
        return this.f102828l;
    }

    @Override // net.p110sf.saxon.s9api.Location, javax.xml.transform.SourceLocator
    public int getLineNumber() {
        Location locator = getLocator();
        int i = this.f102824h;
        return (i != -1 || locator == null || locator == this) ? i : locator.getLineNumber();
    }

    public Location getLocator() {
        return this;
    }

    @Override // net.p110sf.saxon.lib.Invalidity
    public String getMessage() {
        return this.f102821e;
    }

    public List<NodeInfo> getOffendingNodes() {
        List<NodeInfo> list = this.f102829m;
        return list == null ? Collections.emptyList() : list;
    }

    @Override // net.p110sf.saxon.lib.Invalidity
    public AbsolutePath getPath() {
        return this.f102826j;
    }

    @Override // net.p110sf.saxon.s9api.Location, javax.xml.transform.SourceLocator
    public String getPublicId() {
        Location locator = getLocator();
        String str = this.f102823g;
        return (str != null || locator == null || locator == this) ? str : locator.getPublicId();
    }

    @Override // net.p110sf.saxon.lib.Invalidity
    public int getSchemaPart() {
        return this.f102830n;
    }

    public SchemaType getSchemaType() {
        return this.f102833q;
    }

    @Override // net.p110sf.saxon.s9api.Location, javax.xml.transform.SourceLocator
    public String getSystemId() {
        Location locator = getLocator();
        String str = this.f102822f;
        return (str != null || locator == null || locator == this) ? str : locator.getSystemId();
    }

    public String getValidationLocationText() {
        StringBuilder sb = new StringBuilder(256);
        AbsolutePath absolutePath = getAbsolutePath();
        if (absolutePath != null) {
            sb.append("Validating ");
            sb.append(absolutePath.getPathUsingPrefixes());
            if (absolutePath.getSystemId() != null) {
                sb.append(CloudStorageConstants.OPERATION_IN);
                sb.append(absolutePath.getSystemId());
            }
        }
        return sb.toString();
    }

    public boolean hasBeenReported() {
        return this.f102836t;
    }

    public ValidationException makeException() {
        ValidationException validationException = this.f102835s;
        if (validationException != null) {
            validationException.maybeSetLocation(this);
            return this.f102835s;
        }
        ValidationException validationException2 = new ValidationException(this);
        StructuredQName structuredQName = this.f102834r;
        if (structuredQName == null) {
            validationException2.setErrorCode("FORG0001");
        } else {
            validationException2.setErrorCodeQName(structuredQName);
        }
        validationException2.setHasBeenReported(this.f102836t);
        this.f102835s = validationException2;
        return validationException2;
    }

    @Override // net.p110sf.saxon.s9api.Location
    public Location saveLocation() {
        return new Loc(this);
    }

    public void setColumnNumber(int i) {
        this.f102825i = i;
    }

    public void setConstraintReference(int i, String str, String str2) {
        this.f102830n = i;
        this.f102831o = str;
        this.f102832p = str2;
    }

    public void setContextPath(AbsolutePath absolutePath) {
        this.f102827k = absolutePath;
    }

    public void setErrorCode(String str) {
        if (str == null) {
            this.f102834r = null;
        } else {
            this.f102834r = new StructuredQName(NotificationCompat.CATEGORY_ERROR, NamespaceConstant.ERR, str);
        }
    }

    public void setErrorCodeQName(StructuredQName structuredQName) {
        this.f102834r = structuredQName;
    }

    public void setHasBeenReported(boolean z) {
        this.f102836t = z;
        ValidationException validationException = this.f102835s;
        if (validationException != null) {
            validationException.setHasBeenReported(z);
        }
    }

    public void setInvalidNode(NodeInfo nodeInfo) {
        this.f102828l = nodeInfo;
    }

    public void setLineNumber(int i) {
        this.f102824h = i;
    }

    public void setLocator(SourceLocator sourceLocator) {
        if (sourceLocator != null) {
            setPublicId(sourceLocator.getPublicId());
            setSystemId(sourceLocator.getSystemId());
            setLineNumber(sourceLocator.getLineNumber());
            setColumnNumber(sourceLocator.getColumnNumber());
        }
    }

    public void setMessage(String str) {
        this.f102821e = str;
    }

    public void setPath(AbsolutePath absolutePath) {
        this.f102826j = absolutePath;
    }

    public void setPublicId(String str) {
        this.f102823g = str;
    }

    public void setSchemaType(SchemaType schemaType) {
        this.f102833q = schemaType;
    }

    public void setSourceLocator(SourceLocator sourceLocator) {
        if (sourceLocator != null) {
            setPublicId(sourceLocator.getPublicId());
            setSystemId(sourceLocator.getSystemId());
            setLineNumber(sourceLocator.getLineNumber());
            setColumnNumber(sourceLocator.getColumnNumber());
        }
    }

    public void setSystemId(String str) {
        this.f102822f = str;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("ValidationException: ");
        String message = getMessage();
        if (message != null) {
            sb.append(message);
        }
        return sb.toString();
    }

    public void setConstraintReference(ValidationFailure validationFailure) {
        this.f102830n = validationFailure.f102830n;
        this.f102831o = validationFailure.f102831o;
        this.f102832p = validationFailure.f102832p;
    }
}
