package com.sunia.HTREnginev2;

import java.io.PrintStream;
import org.xml.sax.SAXException;
import org.xml.sax.SAXParseException;
import org.xml.sax.helpers.DefaultHandler;

/* loaded from: classes13.dex */
public class i1f extends DefaultHandler {

    /* renamed from: f */
    public static int f72780f = 10;

    /* renamed from: e */
    public int f72781e = 0;

    @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ErrorHandler
    public void error(SAXParseException sAXParseException) throws SAXException {
        int i = this.f72781e;
        if (i >= f72780f) {
            return;
        }
        if (i == 0) {
            System.err.println("Warning: validation was turned on but an org.xml.sax.ErrorHandler was not");
            System.err.println("set, which is probably not what is desired.  Parser will use a default");
            PrintStream printStream = System.err;
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("ErrorHandler to print the first ");
            stringBuffer.append(f72780f);
            stringBuffer.append(" errors.  Please call");
            printStream.println(stringBuffer.toString());
            System.err.println("the 'setErrorHandler' method to fix this.");
        }
        String systemId = sAXParseException.getSystemId();
        if (systemId == null) {
            systemId = "null";
        }
        StringBuffer stringBuffer2 = new StringBuffer();
        stringBuffer2.append("Error: URI=");
        stringBuffer2.append(systemId);
        stringBuffer2.append(" Line=");
        stringBuffer2.append(sAXParseException.getLineNumber());
        stringBuffer2.append(": ");
        stringBuffer2.append(sAXParseException.getMessage());
        System.err.println(stringBuffer2.toString());
        this.f72781e++;
    }
}
