package com.sun.org.apache.xml.internal.utils;

import com.google.android.material.motion.MotionUtils;
import com.sun.org.apache.xml.internal.res.XMLMessages;
import java.io.OutputStream;
import java.io.PrintStream;
import java.io.PrintWriter;
import javax.xml.transform.ErrorListener;
import javax.xml.transform.SourceLocator;
import javax.xml.transform.TransformerException;
import org.xml.sax.ErrorHandler;
import org.xml.sax.SAXException;
import org.xml.sax.SAXParseException;

/* loaded from: classes10.dex */
public class DefaultErrorHandler implements ErrorHandler, ErrorListener {
    PrintWriter m_pw;
    boolean m_throwExceptionOnError;

    public DefaultErrorHandler(PrintWriter printWriter) {
        this.m_throwExceptionOnError = true;
        this.m_pw = printWriter;
    }

    public static void ensureLocationSet(TransformerException transformerException) {
        SourceLocator locator;
        Throwable th = transformerException;
        SourceLocator sourceLocator = null;
        do {
            if (th instanceof SAXParseException) {
                sourceLocator = new SAXSourceLocator((SAXParseException) th);
            } else if ((th instanceof TransformerException) && (locator = ((TransformerException) th).getLocator()) != null) {
                sourceLocator = locator;
            }
            th = th instanceof TransformerException ? ((TransformerException) th).getCause() : th instanceof SAXException ? ((SAXException) th).getException() : null;
        } while (th != null);
        transformerException.setLocator(sourceLocator);
    }

    public static void printLocation(PrintStream printStream, TransformerException transformerException) {
        printLocation(new PrintWriter(printStream), transformerException);
    }

    @Override // org.xml.sax.ErrorHandler
    public void error(SAXParseException sAXParseException) throws SAXException {
        throw sAXParseException;
    }

    @Override // org.xml.sax.ErrorHandler
    public void fatalError(SAXParseException sAXParseException) throws SAXException {
        throw sAXParseException;
    }

    @Override // org.xml.sax.ErrorHandler
    public void warning(SAXParseException sAXParseException) throws SAXException {
        printLocation(this.m_pw, sAXParseException);
        this.m_pw.println("Parser warning: " + sAXParseException.getMessage());
    }

    public static void printLocation(PrintStream printStream, SAXParseException sAXParseException) {
        printLocation(new PrintWriter(printStream), sAXParseException);
    }

    @Override // javax.xml.transform.ErrorListener
    public void error(TransformerException transformerException) throws TransformerException {
        if (!this.m_throwExceptionOnError) {
            printLocation(this.m_pw, transformerException);
            this.m_pw.println(transformerException.getMessage());
            return;
        }
        throw transformerException;
    }

    @Override // javax.xml.transform.ErrorListener
    public void fatalError(TransformerException transformerException) throws TransformerException {
        if (!this.m_throwExceptionOnError) {
            printLocation(this.m_pw, transformerException);
            this.m_pw.println(transformerException.getMessage());
            return;
        }
        throw transformerException;
    }

    public static void printLocation(PrintWriter printWriter, Throwable th) {
        SourceLocator locator;
        SourceLocator sourceLocator = null;
        do {
            if (th instanceof SAXParseException) {
                sourceLocator = new SAXSourceLocator((SAXParseException) th);
            } else if ((th instanceof TransformerException) && (locator = ((TransformerException) th).getLocator()) != null) {
                sourceLocator = locator;
            }
            if (th instanceof TransformerException) {
                th = ((TransformerException) th).getCause();
            } else if (th instanceof WrappedRuntimeException) {
                th = ((WrappedRuntimeException) th).getException();
            } else {
                th = th instanceof SAXException ? ((SAXException) th).getException() : null;
            }
        } while (th != null);
        if (sourceLocator != null) {
            printWriter.print((sourceLocator.getPublicId() != null ? sourceLocator.getPublicId() : sourceLocator.getSystemId() != null ? sourceLocator.getSystemId() : XMLMessages.createXMLMessage("ER_SYSTEMID_UNKNOWN", null)) + "; " + XMLMessages.createXMLMessage("line", null) + sourceLocator.getLineNumber() + "; " + XMLMessages.createXMLMessage("column", null) + sourceLocator.getColumnNumber() + "; ");
            return;
        }
        printWriter.print(MotionUtils.f31761c + XMLMessages.createXMLMessage("ER_LOCATION_UNKNOWN", null) + MotionUtils.f31762d);
    }

    @Override // javax.xml.transform.ErrorListener
    public void warning(TransformerException transformerException) throws TransformerException {
        printLocation(this.m_pw, transformerException);
        this.m_pw.println(transformerException.getMessage());
    }

    public DefaultErrorHandler(PrintStream printStream) {
        this.m_throwExceptionOnError = true;
        this.m_pw = new PrintWriter((OutputStream) printStream, true);
    }

    public DefaultErrorHandler() {
        this(true);
    }

    public DefaultErrorHandler(boolean z) {
        this.m_throwExceptionOnError = true;
        this.m_pw = new PrintWriter((OutputStream) System.err, true);
        this.m_throwExceptionOnError = z;
    }
}
