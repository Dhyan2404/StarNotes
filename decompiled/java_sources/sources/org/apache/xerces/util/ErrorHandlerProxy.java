package org.apache.xerces.util;

import org.apache.xerces.xni.parser.XMLErrorHandler;
import org.xml.sax.ErrorHandler;
import org.xml.sax.SAXException;
import org.xml.sax.SAXParseException;

/* loaded from: classes13.dex */
public abstract class ErrorHandlerProxy implements ErrorHandler {
    @Override // org.xml.sax.ErrorHandler
    public void error(SAXParseException sAXParseException) throws SAXException {
        XMLErrorHandler errorHandler = getErrorHandler();
        if (errorHandler instanceof ErrorHandlerWrapper) {
            ((ErrorHandlerWrapper) errorHandler).fErrorHandler.error(sAXParseException);
        } else {
            errorHandler.error("", "", ErrorHandlerWrapper.createXMLParseException(sAXParseException));
        }
    }

    @Override // org.xml.sax.ErrorHandler
    public void fatalError(SAXParseException sAXParseException) throws SAXException {
        XMLErrorHandler errorHandler = getErrorHandler();
        if (errorHandler instanceof ErrorHandlerWrapper) {
            ((ErrorHandlerWrapper) errorHandler).fErrorHandler.fatalError(sAXParseException);
        } else {
            errorHandler.fatalError("", "", ErrorHandlerWrapper.createXMLParseException(sAXParseException));
        }
    }

    public abstract XMLErrorHandler getErrorHandler();

    @Override // org.xml.sax.ErrorHandler
    public void warning(SAXParseException sAXParseException) throws SAXException {
        XMLErrorHandler errorHandler = getErrorHandler();
        if (errorHandler instanceof ErrorHandlerWrapper) {
            ((ErrorHandlerWrapper) errorHandler).fErrorHandler.warning(sAXParseException);
        } else {
            errorHandler.warning("", "", ErrorHandlerWrapper.createXMLParseException(sAXParseException));
        }
    }
}
