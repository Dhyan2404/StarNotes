package com.sunia.HTREnginev2;

import java.io.PrintWriter;
import org.apache.commons.collections4.IteratorUtils;
import org.apache.xerces.xni.XNIException;
import org.apache.xerces.xni.parser.XMLErrorHandler;
import org.apache.xerces.xni.parser.XMLParseException;

/* loaded from: classes13.dex */
public final class hmo implements XMLErrorHandler {

    /* renamed from: a */
    public PrintWriter f72368a;

    public hmo() {
        this(new PrintWriter(System.err));
    }

    /* renamed from: a */
    public final void m54587a(String str, XMLParseException xMLParseException) {
        this.f72368a.print(IteratorUtils.f104923a);
        this.f72368a.print(str);
        this.f72368a.print("] ");
        String expandedSystemId = xMLParseException.getExpandedSystemId();
        if (expandedSystemId != null) {
            int lastIndexOf = expandedSystemId.lastIndexOf(47);
            if (lastIndexOf != -1) {
                expandedSystemId = expandedSystemId.substring(lastIndexOf + 1);
            }
            this.f72368a.print(expandedSystemId);
        }
        this.f72368a.print(':');
        this.f72368a.print(xMLParseException.getLineNumber());
        this.f72368a.print(':');
        this.f72368a.print(xMLParseException.getColumnNumber());
        this.f72368a.print(": ");
        this.f72368a.print(xMLParseException.getMessage());
        this.f72368a.println();
        this.f72368a.flush();
    }

    @Override // org.apache.xerces.xni.parser.XMLErrorHandler
    public void error(String str, String str2, XMLParseException xMLParseException) throws XNIException {
        m54587a("Error", xMLParseException);
    }

    @Override // org.apache.xerces.xni.parser.XMLErrorHandler
    public void fatalError(String str, String str2, XMLParseException xMLParseException) throws XNIException {
        m54587a("Fatal Error", xMLParseException);
        throw xMLParseException;
    }

    @Override // org.apache.xerces.xni.parser.XMLErrorHandler
    public void warning(String str, String str2, XMLParseException xMLParseException) throws XNIException {
        m54587a("Warning", xMLParseException);
    }

    public hmo(PrintWriter printWriter) {
        this.f72368a = printWriter;
    }
}
