package org.apache.xerces.xni.parser;

import org.apache.xerces.xni.XNIException;

/* loaded from: classes13.dex */
public interface XMLErrorHandler {
    void error(String str, String str2, XMLParseException xMLParseException) throws XNIException;

    void fatalError(String str, String str2, XMLParseException xMLParseException) throws XNIException;

    void warning(String str, String str2, XMLParseException xMLParseException) throws XNIException;
}
