package org.apache.xerces.util;

import java.io.PrintWriter;
import org.apache.commons.collections4.IteratorUtils;
import org.apache.xerces.xni.XNIException;
import org.apache.xerces.xni.parser.XMLErrorHandler;
import org.apache.xerces.xni.parser.XMLParseException;

/* loaded from: classes13.dex */
public class DefaultErrorHandler implements XMLErrorHandler {
    protected PrintWriter fOut;

    public DefaultErrorHandler() {
        this(new PrintWriter(System.err));
    }

    /* renamed from: a */
    public final void m70572a(String str, XMLParseException xMLParseException) {
        this.fOut.print(IteratorUtils.f104923a);
        this.fOut.print(str);
        this.fOut.print("] ");
        String expandedSystemId = xMLParseException.getExpandedSystemId();
        if (expandedSystemId != null) {
            int lastIndexOf = expandedSystemId.lastIndexOf(47);
            if (lastIndexOf != -1) {
                expandedSystemId = expandedSystemId.substring(lastIndexOf + 1);
            }
            this.fOut.print(expandedSystemId);
        }
        this.fOut.print(':');
        this.fOut.print(xMLParseException.getLineNumber());
        this.fOut.print(':');
        this.fOut.print(xMLParseException.getColumnNumber());
        this.fOut.print(": ");
        this.fOut.print(xMLParseException.getMessage());
        this.fOut.println();
        this.fOut.flush();
    }

    @Override // org.apache.xerces.xni.parser.XMLErrorHandler
    public void error(String str, String str2, XMLParseException xMLParseException) throws XNIException {
        m70572a("Error", xMLParseException);
    }

    @Override // org.apache.xerces.xni.parser.XMLErrorHandler
    public void fatalError(String str, String str2, XMLParseException xMLParseException) throws XNIException {
        m70572a("Fatal Error", xMLParseException);
        throw xMLParseException;
    }

    @Override // org.apache.xerces.xni.parser.XMLErrorHandler
    public void warning(String str, String str2, XMLParseException xMLParseException) throws XNIException {
        m70572a("Warning", xMLParseException);
    }

    public DefaultErrorHandler(PrintWriter printWriter) {
        this.fOut = printWriter;
    }
}
