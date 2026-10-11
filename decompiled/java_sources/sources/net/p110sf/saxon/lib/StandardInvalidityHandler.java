package net.p110sf.saxon.lib;

import javax.xml.transform.dom.DOMLocator;
import net.p110sf.saxon.Configuration;
import net.p110sf.saxon.om.AbsolutePath;
import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.om.Sequence;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.tree.util.Navigator;
import net.p110sf.saxon.type.ValidationFailure;
import net.p110sf.saxon.value.EmptySequence;

/* loaded from: classes11.dex */
public class StandardInvalidityHandler extends StandardDiagnostics implements InvalidityHandler {

    /* renamed from: e */
    public final Configuration f100569e;

    /* renamed from: f */
    public Logger f100570f;

    public StandardInvalidityHandler(Configuration configuration) {
        this.f100569e = configuration;
        this.f100570f = configuration.getLogger();
    }

    public Sequence endReporting() throws XPathException {
        return EmptySequence.getInstance();
    }

    public Configuration getConfiguration() {
        return this.f100569e;
    }

    public String getConstraintReferenceMessage(Invalidity invalidity) {
        if (invalidity.getSchemaPart() == -1) {
            return null;
        }
        return "See http://www.w3.org/TR/xmlschema-" + invalidity.getSchemaPart() + "/#" + invalidity.getConstraintName() + " clause " + invalidity.getConstraintClauseNumber();
    }

    public String getExpandedMessage(Invalidity invalidity) {
        String str;
        String errorCode = invalidity.getErrorCode();
        StringBuilder sb = new StringBuilder();
        if (errorCode == null) {
            str = "";
        } else {
            str = errorCode + ": ";
        }
        sb.append(str);
        sb.append(invalidity.getMessage());
        return sb.toString();
    }

    public String getLocationMessage(Invalidity invalidity) {
        String str;
        AbsolutePath path;
        NodeInfo invalidNode = invalidity.getInvalidNode();
        int lineNumber = invalidity.getLineNumber();
        if (invalidity instanceof DOMLocator) {
            str = "at " + ((DOMLocator) invalidity).getOriginatingNode().getNodeName() + ' ';
        } else {
            str = null;
        }
        if (str == null) {
            if (lineNumber == -1 && (path = invalidity.getPath()) != null) {
                str = "at " + path + ' ';
            } else if (invalidNode != null) {
                str = "at " + Navigator.getPath(invalidNode) + ' ';
            }
        }
        boolean z = lineNumber != -1;
        String str2 = "";
        if (str != null) {
            str2 = "" + str;
        }
        if (z) {
            str2 = str2 + "on line " + lineNumber + ' ';
            if (invalidity.getColumnNumber() != -1) {
                str2 = str2 + "column " + invalidity.getColumnNumber() + ' ';
            }
        }
        String systemId = invalidity.getSystemId();
        if (systemId == null || systemId.length() == 0) {
            return str2;
        }
        StringBuilder sb = new StringBuilder();
        sb.append(str2);
        sb.append(z ? "of " : "in ");
        sb.append(abbreviateLocationURI(systemId));
        sb.append(':');
        return sb.toString();
    }

    public Logger getLogger() {
        return this.f100570f;
    }

    public void reportInvalidity(Invalidity invalidity) throws XPathException {
        String str;
        Logger logger = this.f100570f;
        if (logger == null) {
            logger = this.f100569e.getLogger();
        }
        String expandedMessage = getExpandedMessage(invalidity);
        String constraintReferenceMessage = getConstraintReferenceMessage(invalidity);
        ValidationFailure validationFailure = (ValidationFailure) invalidity;
        validationFailure.getValidationLocationText();
        String contextLocationText = validationFailure.getContextLocationText();
        StringBuilder sb = new StringBuilder();
        sb.append("Validation error ");
        sb.append(getLocationMessage(invalidity));
        sb.append("\n  ");
        sb.append(wordWrap(expandedMessage));
        String str2 = "";
        if (contextLocationText.isEmpty()) {
            str = "";
        } else {
            str = "\n  " + contextLocationText;
        }
        sb.append(wordWrap(str));
        if (constraintReferenceMessage != null) {
            str2 = "\n  " + constraintReferenceMessage;
        }
        sb.append(wordWrap(str2));
        sb.append(formatListOfOffendingNodes(validationFailure));
        logger.error(sb.toString());
    }

    public void setLogger(Logger logger) {
        this.f100570f = logger;
    }

    public void startReporting(String str) throws XPathException {
    }
}
