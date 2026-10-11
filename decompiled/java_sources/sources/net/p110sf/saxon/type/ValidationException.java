package net.p110sf.saxon.type;

import net.p110sf.saxon.om.AbsolutePath;
import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.s9api.Location;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.tree.util.Navigator;

/* loaded from: classes11.dex */
public class ValidationException extends XPathException {
    private ValidationFailure failure;

    public ValidationException(Exception exc) {
        super(exc);
    }

    public AbsolutePath getAbsolutePath() {
        ValidationFailure validationFailure = this.failure;
        if (validationFailure != null) {
            return validationFailure.getPath();
        }
        return null;
    }

    @Override // java.lang.Throwable
    public String getMessage() {
        ValidationFailure validationFailure = this.failure;
        return validationFailure != null ? validationFailure.getMessage() : super.getMessage();
    }

    public NodeInfo getNode() {
        ValidationFailure validationFailure = this.failure;
        if (validationFailure != null) {
            return validationFailure.getInvalidNode();
        }
        return null;
    }

    public String getPath() {
        AbsolutePath absolutePath = getAbsolutePath();
        if (absolutePath != null) {
            return absolutePath.getPathUsingAbbreviatedUris();
        }
        NodeInfo node = getNode();
        if (node != null) {
            return Navigator.getPath(node);
        }
        return null;
    }

    public ValidationFailure getValidationFailure() {
        ValidationFailure validationFailure = this.failure;
        if (validationFailure != null) {
            return validationFailure;
        }
        ValidationFailure validationFailure2 = new ValidationFailure(getMessage());
        validationFailure2.setErrorCodeQName(getErrorCodeQName());
        validationFailure2.setLocator(getLocator());
        return validationFailure2;
    }

    @Override // java.lang.Throwable
    public String toString() {
        StringBuilder sb = new StringBuilder("ValidationException: ");
        String message = getMessage();
        if (message != null) {
            sb.append(message);
        }
        return sb.toString();
    }

    public ValidationException(String str, Exception exc) {
        super(str, exc);
    }

    public ValidationException(String str, Location location) {
        super(str, (String) null, location);
    }

    public ValidationException(ValidationFailure validationFailure) {
        super(validationFailure.getMessage(), validationFailure.getErrorCode(), validationFailure.getLocator());
        this.failure = validationFailure;
    }
}
