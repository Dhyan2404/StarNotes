package net.p110sf.saxon.lib;

import com.google.android.material.motion.MotionUtils;
import com.onyx.galaxy.note.editor.action.audio.RemoveAudioAction;
import java.util.HashSet;
import java.util.Set;
import javax.xml.transform.ErrorListener;
import javax.xml.transform.SourceLocator;
import javax.xml.transform.TransformerException;
import net.p110sf.saxon.expr.EarlyEvaluationContext;
import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.expr.parser.XPathParser;
import net.p110sf.saxon.functions.Error;
import net.p110sf.saxon.om.Sequence;
import net.p110sf.saxon.om.StructuredQName;
import net.p110sf.saxon.s9api.HostLanguage;
import net.p110sf.saxon.s9api.Location;
import net.p110sf.saxon.trans.Err;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.tree.AttributeLocation;
import net.p110sf.saxon.type.ValidationException;
import net.p110sf.saxon.type.ValidationFailure;

/* loaded from: classes11.dex */
public class StandardErrorListener extends StandardDiagnostics implements ErrorListener {

    /* renamed from: e */
    public int f100554e = 0;

    /* renamed from: f */
    public int f100555f = 25;

    /* renamed from: g */
    public int f100556g = 255;

    /* renamed from: h */
    public int f100557h = 2;

    /* renamed from: i */
    public final Set<String> f100558i = new HashSet();
    protected transient Logger logger = new StandardLogger();

    public String constructFirstLine(TransformerException transformerException, XPathException xPathException, String str, String str2) {
        String str3;
        Expression failingExpression = transformerException instanceof XPathException ? ((XPathException) transformerException).getFailingExpression() : null;
        if (xPathException.getLocator() instanceof AttributeLocation) {
            return str2 + str + getLocationMessageText(xPathException.getLocator());
        }
        String str4 = "";
        if (!(xPathException.getLocator() instanceof XPathParser.NestedLocation)) {
            if (xPathException instanceof ValidationException) {
                return "Validation error " + getLocationMessage(transformerException);
            }
            StringBuilder sb = new StringBuilder();
            sb.append(str2);
            if (failingExpression != null) {
                str4 = "evaluating (" + failingExpression.toShortString() + ") ";
            }
            sb.append(str4);
            sb.append(getLocationMessage(transformerException));
            return sb.toString();
        }
        XPathParser.NestedLocation nestedLocation = (XPathParser.NestedLocation) xPathException.getLocator();
        Location containingLocation = nestedLocation.getContainingLocation();
        int localLineNumber = nestedLocation.getLocalLineNumber();
        int columnNumber = nestedLocation.getColumnNumber();
        if (localLineNumber <= 0) {
            str3 = "";
        } else {
            str3 = "on line " + localLineNumber + ' ';
        }
        if (columnNumber >= 0) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("at ");
            sb2.append(localLineNumber <= 0 ? "char " : "column ");
            sb2.append(columnNumber);
            sb2.append(' ');
            str4 = sb2.toString();
        }
        String formatExtraContext = formatExtraContext(failingExpression, nestedLocation.getNearbyText());
        if (containingLocation instanceof AttributeLocation) {
            return str2 + (str3 + formatExtraContext + str4) + str + getLocationMessageText(containingLocation);
        }
        String str5 = str3 + str4;
        if (containingLocation.getLineNumber() > 1) {
            str5 = str5 + MotionUtils.f31761c + str + "on line " + containingLocation.getLineNumber() + ") ";
        }
        if (containingLocation.getSystemId() != null) {
            str5 = str5 + "of " + containingLocation.getSystemId() + " ";
        }
        return str2 + formatExtraContext + str5;
    }

    public String constructMessage(TransformerException transformerException, XPathException xPathException, String str, String str2) {
        return constructFirstLine(transformerException, xPathException, str, str2) + "\n  " + constructSecondLine(transformerException, xPathException);
    }

    public String constructSecondLine(TransformerException transformerException, XPathException xPathException) {
        if (!(xPathException instanceof ValidationException)) {
            return expandSpecialCharacters(wordWrap(getExpandedMessage(transformerException))).toString();
        }
        String expandedMessage = getExpandedMessage(transformerException);
        ValidationFailure validationFailure = ((ValidationException) xPathException).getValidationFailure();
        String constraintReferenceMessage = validationFailure.getConstraintReferenceMessage();
        if (constraintReferenceMessage != null) {
            expandedMessage = expandedMessage + " (" + constraintReferenceMessage + ')';
        }
        return wordWrap(expandedMessage + formatListOfOffendingNodes(validationFailure));
    }

    @Override // javax.xml.transform.ErrorListener
    public void error(TransformerException transformerException) {
        String constructMessage;
        String str;
        String str2;
        if (this.logger == null) {
            this.logger = new StandardLogger();
        }
        boolean z = transformerException instanceof ValidationException;
        String str3 = "";
        if (z) {
            String expandedMessage = getExpandedMessage(transformerException);
            ValidationFailure validationFailure = ((ValidationException) transformerException).getValidationFailure();
            String constraintReferenceMessage = validationFailure.getConstraintReferenceMessage();
            String validationLocationText = validationFailure.getValidationLocationText();
            String contextLocationText = validationFailure.getContextLocationText();
            StringBuilder sb = new StringBuilder();
            sb.append("Validation error ");
            sb.append(getLocationMessage(transformerException));
            sb.append("\n  ");
            sb.append(wordWrap(expandedMessage));
            if (validationLocationText.isEmpty()) {
                str = "";
            } else {
                str = "\n  " + validationLocationText;
            }
            sb.append(wordWrap(str));
            if (contextLocationText.isEmpty()) {
                str2 = "";
            } else {
                str2 = "\n  " + contextLocationText;
            }
            sb.append(wordWrap(str2));
            if (constraintReferenceMessage != null) {
                str3 = "\n  " + constraintReferenceMessage;
            }
            sb.append(wordWrap(str3));
            sb.append(formatListOfOffendingNodes(validationFailure));
            constructMessage = sb.toString();
        } else {
            constructMessage = constructMessage(transformerException, XPathException.makeXPathException(transformerException), "", "Error ");
        }
        if (z) {
            this.logger.error(constructMessage);
        } else {
            this.logger.error(constructMessage);
            this.logger.info("Processing terminated because error recovery is disabled");
        }
    }

    public String expandSpecialCharacters(String str) {
        return this.logger.isUnicodeAware() ? str : expandSpecialCharacters(str, this.f100556g);
    }

    @Override // javax.xml.transform.ErrorListener
    public void fatalError(TransformerException transformerException) {
        XPathContext xPathContext;
        XPathException makeXPathException = XPathException.makeXPathException(transformerException);
        if (makeXPathException.hasBeenReported()) {
            return;
        }
        if (this.logger == null) {
            this.logger = new StandardLogger();
        }
        String hostLanguage = makeXPathException.getHostLanguage();
        this.logger.error(constructMessage(transformerException, makeXPathException, "XPath".equals(hostLanguage) ? "in expression " : "XQuery".equals(hostLanguage) ? "in query " : "XSLT Pattern".equals(hostLanguage) ? "in pattern " : "", makeXPathException.isSyntaxError() ? "Syntax error " : makeXPathException.isStaticError() ? "Static error " : makeXPathException.isTypeError() ? "Type error " : "Error "));
        boolean z = transformerException instanceof XPathException;
        if (z) {
            ((XPathException) transformerException).setHasBeenReported(true);
        }
        if (!z || (xPathContext = ((XPathException) transformerException).getXPathContext()) == null || (xPathContext instanceof EarlyEvaluationContext)) {
            return;
        }
        outputStackTrace(this.logger, xPathContext);
    }

    public String formatErrorCode(TransformerException transformerException) {
        StructuredQName errorCodeQName = transformerException instanceof XPathException ? ((XPathException) transformerException).getErrorCodeQName() : null;
        if (errorCodeQName == null && (transformerException.getException() instanceof XPathException)) {
            errorCodeQName = ((XPathException) transformerException.getException()).getErrorCodeQName();
        }
        return errorCodeQName != null ? errorCodeQName.hasURI(NamespaceConstant.ERR) ? errorCodeQName.getLocalPart() : errorCodeQName.getDisplayName() : "";
    }

    public String formatErrorObject(Sequence sequence) {
        return null;
    }

    public String formatExtraContext(Expression expression, String str) {
        if (expression != null) {
            if (expression.isCallOn(Error.class)) {
                return "signaled by call to error() ";
            }
            return "evaluating (" + expression.toShortString() + ") ";
        }
        if (str == null || str.isEmpty()) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        sb.append(str.startsWith(RemoveAudioAction.f58149k) ? "near" : "in");
        sb.append(' ');
        sb.append(Err.wrap(str));
        sb.append(" ");
        return sb.toString();
    }

    /* JADX WARN: Code restructure failed: missing block: B:0:?, code lost:
    
        r4 = r4;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String formatNestedMessages(javax.xml.transform.TransformerException r4, java.lang.String r5) {
        /*
            r3 = this;
        L0:
            if (r4 != 0) goto L4
            goto L77
        L4:
            java.lang.String r3 = r4.getMessage()
            java.lang.String r0 = ""
            if (r3 != 0) goto Ld
            r3 = r0
        Ld:
            java.lang.String r1 = "net.sf.saxon.trans.XPathException: "
            boolean r1 = r3.startsWith(r1)
            java.lang.String r2 = ": "
            if (r1 == 0) goto L21
            int r1 = r3.indexOf(r2)
            int r1 = r1 + 2
            java.lang.String r3 = r3.substring(r1)
        L21:
            java.lang.String r1 = "TRaX Transform Exception"
            boolean r1 = r1.equals(r3)
            if (r1 != 0) goto L60
            boolean r1 = r5.endsWith(r3)
            if (r1 != 0) goto L60
            boolean r0 = r0.equals(r5)
            if (r0 != 0) goto L50
            java.lang.String r0 = r5.trim()
            java.lang.String r1 = ":"
            boolean r0 = r0.endsWith(r1)
            if (r0 != 0) goto L50
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            r0.append(r5)
            r0.append(r2)
            java.lang.String r5 = r0.toString()
        L50:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            r0.append(r5)
            r0.append(r3)
            java.lang.String r3 = r0.toString()
            r5 = r3
        L60:
            boolean r3 = r4 instanceof javax.xml.transform.TransformerException
            if (r3 == 0) goto L6c
            javax.xml.transform.TransformerException r4 = (javax.xml.transform.TransformerException) r4
            java.lang.Throwable r3 = r4.getException()
        L6a:
            r4 = r3
            goto L0
        L6c:
            boolean r3 = r4 instanceof org.xml.sax.SAXException
            if (r3 == 0) goto L77
            org.xml.sax.SAXException r4 = (org.xml.sax.SAXException) r4
            java.lang.Exception r3 = r4.getException()
            goto L6a
        L77:
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: net.p110sf.saxon.lib.StandardErrorListener.formatNestedMessages(javax.xml.transform.TransformerException, java.lang.String):java.lang.String");
    }

    public String getExpandedMessage(TransformerException transformerException) {
        Sequence errorObject;
        String formatErrorObject;
        String formatErrorCode = formatErrorCode(transformerException);
        if ((transformerException instanceof XPathException) && (errorObject = ((XPathException) transformerException).getErrorObject()) != null && (formatErrorObject = formatErrorObject(errorObject)) != null) {
            formatErrorCode = formatErrorCode + " " + formatErrorObject;
        }
        return formatNestedMessages(transformerException, formatErrorCode);
    }

    public String getLocationMessage(TransformerException transformerException) {
        SourceLocator locator = transformerException.getLocator();
        while (locator == null) {
            if (transformerException.getException() instanceof TransformerException) {
                transformerException = (TransformerException) transformerException.getException();
                locator = transformerException.getLocator();
            } else {
                if (!(transformerException.getCause() instanceof TransformerException)) {
                    return "";
                }
                transformerException = (TransformerException) transformerException.getCause();
                locator = transformerException.getLocator();
            }
        }
        return getLocationMessageText(locator);
    }

    public Logger getLogger() {
        return this.logger;
    }

    public int getMaxOrdinaryCharacter(int i) {
        return this.f100556g;
    }

    public int getMaximumNumberOfWarnings() {
        return this.f100555f;
    }

    public int getStackTraceDetail() {
        return this.f100557h;
    }

    public boolean isReportingWarnings() {
        return true;
    }

    public StandardErrorListener makeAnother(HostLanguage hostLanguage) {
        StandardErrorListener standardErrorListener;
        try {
            standardErrorListener = (StandardErrorListener) getClass().newInstance();
        } catch (IllegalAccessException | InstantiationException unused) {
            standardErrorListener = new StandardErrorListener();
        }
        standardErrorListener.logger = this.logger;
        return standardErrorListener;
    }

    public void outputStackTrace(Logger logger, XPathContext xPathContext) {
        logStackTrace(xPathContext, logger, this.f100557h);
    }

    public void setLogger(Logger logger) {
        this.logger = logger;
    }

    public void setMaxOrdinaryCharacter(int i) {
        this.f100556g = i;
    }

    public void setMaximumNumberOfWarnings(int i) {
        this.f100555f = i;
    }

    public void setStackTraceDetail(int i) {
        this.f100557h = i;
    }

    @Override // javax.xml.transform.ErrorListener
    public void warning(TransformerException transformerException) {
        if (this.logger == null) {
            this.logger = new StandardLogger();
        }
        String constructMessage = constructMessage(transformerException, XPathException.makeXPathException(transformerException), "", "Warning ");
        if (this.f100558i.contains(constructMessage)) {
            return;
        }
        if (transformerException instanceof ValidationException) {
            this.logger.error(constructMessage);
        } else {
            this.logger.warning(constructMessage);
            int i = this.f100554e + 1;
            this.f100554e = i;
            if (i > getMaximumNumberOfWarnings()) {
                this.logger.info("No more warnings will be displayed");
                this.f100554e = 0;
            }
        }
        this.f100558i.add(constructMessage);
    }
}
