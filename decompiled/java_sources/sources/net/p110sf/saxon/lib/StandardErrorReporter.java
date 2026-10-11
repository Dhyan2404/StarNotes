package net.p110sf.saxon.lib;

import com.google.android.material.motion.MotionUtils;
import com.onyx.galaxy.note.editor.action.audio.RemoveAudioAction;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.util.HashSet;
import java.util.Set;
import javax.xml.transform.SourceLocator;
import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.expr.parser.XPathParser;
import net.p110sf.saxon.functions.Error;
import net.p110sf.saxon.s9api.HostLanguage;
import net.p110sf.saxon.s9api.Location;
import net.p110sf.saxon.s9api.QName;
import net.p110sf.saxon.s9api.XmlProcessingError;
import net.p110sf.saxon.trans.Err;
import net.p110sf.saxon.tree.AttributeLocation;
import org.xml.sax.SAXParseException;

/* loaded from: classes11.dex */
public class StandardErrorReporter extends StandardDiagnostics implements ErrorReporter {

    /* renamed from: l */
    public XmlProcessingError f100566l;

    /* renamed from: e */
    public int f100559e = 0;

    /* renamed from: f */
    public int f100560f = 25;

    /* renamed from: g */
    public int f100561g = 0;

    /* renamed from: h */
    public int f100562h = 1000;

    /* renamed from: i */
    public int f100563i = 255;

    /* renamed from: j */
    public int f100564j = 2;

    /* renamed from: k */
    public final Set<String> f100565k = new HashSet();
    protected transient Logger logger = new StandardLogger();

    /* renamed from: m */
    public boolean f100567m = true;

    /* renamed from: net.sf.saxon.lib.StandardErrorReporter$a */
    /* loaded from: classes11.dex */
    public static /* synthetic */ class C18395a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f100568a;

        static {
            int[] iArr = new int[HostLanguage.values().length];
            f100568a = iArr;
            try {
                iArr[HostLanguage.XSLT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f100568a[HostLanguage.XQUERY.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f100568a[HostLanguage.XPATH.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f100568a[HostLanguage.XML_SCHEMA.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f100568a[HostLanguage.XSLT_PATTERN.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    /* renamed from: a */
    public final void m63281a(Throwable th, StringWriter stringWriter) {
        th.printStackTrace(new PrintWriter(stringWriter));
    }

    /* renamed from: b */
    public final boolean m63282b(Throwable th) {
        return th instanceof SAXParseException;
    }

    public String constructFirstLine(XmlProcessingError xmlProcessingError, String str, String str2) {
        String str3;
        SourceLocator location = xmlProcessingError.getLocation();
        if (location instanceof AttributeLocation) {
            return str2 + str + getLocationMessageText(location);
        }
        if (!(location instanceof XPathParser.NestedLocation)) {
            return str2 + getLocationMessage(xmlProcessingError);
        }
        XPathParser.NestedLocation nestedLocation = (XPathParser.NestedLocation) location;
        Location containingLocation = nestedLocation.getContainingLocation();
        int localLineNumber = nestedLocation.getLocalLineNumber();
        int columnNumber = nestedLocation.getColumnNumber();
        String str4 = "";
        if (localLineNumber <= 0) {
            str3 = "";
        } else {
            str3 = "on line " + localLineNumber + ' ';
        }
        if (columnNumber >= 0) {
            StringBuilder sb = new StringBuilder();
            sb.append("at ");
            sb.append(localLineNumber <= 0 ? "char " : "column ");
            sb.append(columnNumber);
            sb.append(' ');
            str4 = sb.toString();
        }
        String formatExtraContext = formatExtraContext(null, nestedLocation.getNearbyText());
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

    public String constructMessage(XmlProcessingError xmlProcessingError, String str, String str2) {
        return constructFirstLine(xmlProcessingError, str, str2) + "\n  " + constructSecondLine(xmlProcessingError);
    }

    public String constructSecondLine(XmlProcessingError xmlProcessingError) {
        return expandSpecialCharacters(wordWrap(getExpandedMessage(xmlProcessingError)));
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x004b  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x004e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void error(net.p110sf.saxon.s9api.XmlProcessingError r3) {
        /*
            r2 = this;
            int r0 = r2.f100561g
            int r1 = r0 + 1
            r2.f100561g = r1
            int r1 = r2.f100562h
            if (r0 <= r1) goto Lf
            java.lang.String r0 = "Too many errors reported"
            r3.setTerminationMessage(r0)
        Lf:
            net.sf.saxon.lib.Logger r0 = r2.logger
            if (r0 != 0) goto L1a
            net.sf.saxon.lib.StandardLogger r0 = new net.sf.saxon.lib.StandardLogger
            r0.<init>()
            r2.logger = r0
        L1a:
            net.sf.saxon.s9api.HostLanguage r0 = r3.getHostLanguage()
            net.sf.saxon.s9api.HostLanguage r1 = net.p110sf.saxon.s9api.HostLanguage.UNKNOWN
            if (r0 == r1) goto L43
            int[] r1 = net.p110sf.saxon.lib.StandardErrorReporter.C18395a.f100568a
            int r0 = r0.ordinal()
            r0 = r1[r0]
            r1 = 2
            if (r0 == r1) goto L40
            r1 = 3
            if (r0 == r1) goto L3d
            r1 = 4
            if (r0 == r1) goto L3a
            r1 = 5
            if (r0 == r1) goto L37
            goto L43
        L37:
            java.lang.String r0 = "in pattern "
            goto L45
        L3a:
            java.lang.String r0 = "in schema "
            goto L45
        L3d:
            java.lang.String r0 = "in expression "
            goto L45
        L40:
            java.lang.String r0 = "in query "
            goto L45
        L43:
            java.lang.String r0 = ""
        L45:
            boolean r1 = r3.isTypeError()
            if (r1 == 0) goto L4e
            java.lang.String r1 = "Type error "
            goto L59
        L4e:
            boolean r1 = r3.isStaticError()
            if (r1 == 0) goto L57
            java.lang.String r1 = "Static error "
            goto L59
        L57:
            java.lang.String r1 = "Error "
        L59:
            java.lang.String r0 = r2.constructMessage(r3, r0, r1)
            net.sf.saxon.lib.Logger r1 = r2.logger
            r1.error(r0)
            boolean r0 = r3 instanceof net.p110sf.saxon.trans.XmlProcessingException
            if (r0 == 0) goto L7b
            net.sf.saxon.trans.XmlProcessingException r3 = (net.p110sf.saxon.trans.XmlProcessingException) r3
            net.sf.saxon.trans.XPathException r3 = r3.getXPathException()
            net.sf.saxon.expr.XPathContext r3 = r3.getXPathContext()
            if (r3 == 0) goto L7b
            boolean r0 = r3 instanceof net.p110sf.saxon.expr.EarlyEvaluationContext
            if (r0 != 0) goto L7b
            net.sf.saxon.lib.Logger r0 = r2.logger
            r2.outputStackTrace(r0, r3)
        L7b:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: net.p110sf.saxon.lib.StandardErrorReporter.error(net.sf.saxon.s9api.XmlProcessingError):void");
    }

    public String expandSpecialCharacters(String str) {
        return this.logger.isUnicodeAware() ? str : expandSpecialCharacters(str, this.f100563i);
    }

    public String formatErrorCode(XmlProcessingError xmlProcessingError) {
        QName errorCode;
        if (!this.f100567m || (errorCode = xmlProcessingError.getErrorCode()) == null) {
            return "";
        }
        if (errorCode.getNamespaceURI().equals(NamespaceConstant.ERR)) {
            return errorCode.getLocalName() + " ";
        }
        return errorCode.toString() + " ";
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

    public String formatNestedMessages(XmlProcessingError xmlProcessingError, String str) {
        if (xmlProcessingError.getCause() == null) {
            return str;
        }
        StringBuilder sb = new StringBuilder(str);
        for (Throwable cause = xmlProcessingError.getCause(); cause != null; cause = cause.getCause()) {
            if (!m63282b(cause)) {
                if (cause instanceof RuntimeException) {
                    StringWriter stringWriter = new StringWriter();
                    m63281a(cause, stringWriter);
                    sb.append('\n');
                    sb.append(stringWriter);
                } else {
                    sb.append(". Caused by ");
                    sb.append(cause.getClass().getName());
                }
            }
            String message = cause.getMessage();
            if (message != null) {
                sb.append(": ");
                sb.append(message);
            }
        }
        return sb.toString();
    }

    public String getExpandedMessage(XmlProcessingError xmlProcessingError) {
        return formatNestedMessages(xmlProcessingError, formatErrorCode(xmlProcessingError) + " " + xmlProcessingError.getMessage());
    }

    public String getLocationMessage(XmlProcessingError xmlProcessingError) {
        return getLocationMessageText(xmlProcessingError.getLocation());
    }

    public Logger getLogger() {
        return this.logger;
    }

    public int getMaxOrdinaryCharacter() {
        return this.f100563i;
    }

    public int getMaximumNumberOfErrors() {
        return this.f100562h;
    }

    public int getMaximumNumberOfWarnings() {
        return this.f100560f;
    }

    public int getStackTraceDetail() {
        return this.f100564j;
    }

    public boolean isReportingWarnings() {
        return this.f100559e < getMaximumNumberOfWarnings();
    }

    public void outputStackTrace(Logger logger, XPathContext xPathContext) {
        logStackTrace(xPathContext, logger, this.f100564j);
    }

    @Override // net.p110sf.saxon.lib.ErrorReporter
    public void report(XmlProcessingError xmlProcessingError) {
        if (xmlProcessingError != this.f100566l) {
            this.f100566l = xmlProcessingError;
            if (xmlProcessingError.isWarning()) {
                warning(xmlProcessingError);
            } else {
                error(xmlProcessingError);
            }
        }
    }

    public void setLogger(Logger logger) {
        this.logger = logger;
    }

    public void setMaxOrdinaryCharacter(int i) {
        this.f100563i = i;
    }

    public void setMaximumNumberOfErrors(int i) {
        this.f100562h = i;
    }

    public void setMaximumNumberOfWarnings(int i) {
        this.f100560f = i;
    }

    public void setOutputErrorCodes(boolean z) {
        this.f100567m = z;
    }

    public void setStackTraceDetail(int i) {
        this.f100564j = i;
    }

    public void warning(XmlProcessingError xmlProcessingError) {
        if (this.logger == null) {
            this.logger = new StandardLogger();
        }
        String constructMessage = constructMessage(xmlProcessingError, "", "Warning ");
        if (this.f100565k.contains(constructMessage)) {
            return;
        }
        this.logger.warning(constructMessage);
        int i = this.f100559e + 1;
        this.f100559e = i;
        if (i > getMaximumNumberOfWarnings()) {
            this.logger.info("No more warnings will be displayed");
        }
        this.f100565k.add(constructMessage);
    }
}
