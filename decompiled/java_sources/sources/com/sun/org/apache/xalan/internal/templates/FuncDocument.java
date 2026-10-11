package com.sun.org.apache.xalan.internal.templates;

import com.sun.org.apache.xalan.internal.res.XSLMessages;
import com.sun.org.apache.xml.internal.dtm.DTMIterator;
import com.sun.org.apache.xml.internal.utils.XMLString;
import com.sun.org.apache.xpath.internal.Expression;
import com.sun.org.apache.xpath.internal.NodeSetDTM;
import com.sun.org.apache.xpath.internal.XPathContext;
import com.sun.org.apache.xpath.internal.functions.Function2Args;
import com.sun.org.apache.xpath.internal.functions.WrongNumberArgsException;
import com.sun.org.apache.xpath.internal.objects.XNodeSet;
import com.sun.org.apache.xpath.internal.objects.XObject;
import javax.xml.transform.ErrorListener;
import javax.xml.transform.TransformerException;

/* loaded from: classes10.dex */
public class FuncDocument extends Function2Args {
    static final long serialVersionUID = 2483304325971281424L;

    @Override // com.sun.org.apache.xpath.internal.functions.Function2Args, com.sun.org.apache.xpath.internal.functions.FunctionOneArg, com.sun.org.apache.xpath.internal.functions.Function
    public void checkNumberArgs(int i) throws WrongNumberArgsException {
        if (i < 1 || i > 2) {
            reportWrongNumberArgs();
        }
    }

    @Override // com.sun.org.apache.xpath.internal.Expression
    public void error(XPathContext xPathContext, String str, Object[] objArr) throws TransformerException {
        String createMessage = XSLMessages.createMessage(str, objArr);
        ErrorListener errorListener = xPathContext.getErrorListener();
        TransformerException transformerException = new TransformerException(createMessage, xPathContext.getSAXLocator());
        if (errorListener != null) {
            errorListener.error(transformerException);
        } else {
            System.out.println(createMessage);
        }
    }

    @Override // com.sun.org.apache.xpath.internal.functions.Function, com.sun.org.apache.xpath.internal.Expression
    public XObject execute(XPathContext xPathContext) throws TransformerException {
        String baseIdentifier;
        int currentNode = xPathContext.getCurrentNode();
        int documentRoot = xPathContext.getDTM(currentNode).getDocumentRoot(currentNode);
        XObject execute = getArg0().execute(xPathContext);
        Expression arg1 = getArg1();
        if (arg1 != null) {
            XObject execute2 = arg1.execute(xPathContext);
            if (4 == execute2.getType()) {
                int nextNode = execute2.iter().nextNode();
                if (nextNode == -1) {
                    warn(xPathContext, "WG_EMPTY_SECOND_ARG", null);
                    return new XNodeSet(xPathContext.getDTMManager());
                }
                baseIdentifier = xPathContext.getDTM(nextNode).getDocumentBaseURI();
            } else {
                execute2.iter();
                baseIdentifier = "";
            }
        } else {
            assertion(xPathContext.getNamespaceContext() != null, "Namespace context can not be null!");
            baseIdentifier = xPathContext.getNamespaceContext().getBaseIdentifier();
        }
        XNodeSet xNodeSet = new XNodeSet(xPathContext.getDTMManager());
        NodeSetDTM mutableNodeset = xNodeSet.mutableNodeset();
        DTMIterator iter = 4 == execute.getType() ? execute.iter() : null;
        int i = -1;
        while (true) {
            if (iter != null) {
                i = iter.nextNode();
                if (-1 == i) {
                    break;
                }
            }
            XMLString stringValue = iter != null ? xPathContext.getDTM(i).getStringValue(i) : execute.xstr();
            if (arg1 == null && -1 != i) {
                baseIdentifier = xPathContext.getDTM(i).getDocumentBaseURI();
            }
            if (stringValue != null) {
                if (-1 == documentRoot) {
                    error(xPathContext, "ER_NO_CONTEXT_OWNERDOC", null);
                }
                int indexOf = stringValue.indexOf(58);
                int indexOf2 = stringValue.indexOf(47);
                if (indexOf != -1 && indexOf2 != -1 && indexOf < indexOf2) {
                    baseIdentifier = null;
                }
                int doc = getDoc(xPathContext, currentNode, stringValue.toString(), baseIdentifier);
                if (-1 != doc && !mutableNodeset.contains(doc)) {
                    mutableNodeset.addElement(doc);
                }
                if (iter == null || doc == -1) {
                    break;
                }
            }
        }
        return xNodeSet;
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0153  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int getDoc(com.sun.org.apache.xpath.internal.XPathContext r18, int r19, java.lang.String r20, java.lang.String r21) throws javax.xml.transform.TransformerException {
        /*
            Method dump skipped, instructions count: 409
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sun.org.apache.xalan.internal.templates.FuncDocument.getDoc(com.sun.org.apache.xpath.internal.XPathContext, int, java.lang.String, java.lang.String):int");
    }

    @Override // com.sun.org.apache.xpath.internal.Expression
    public boolean isNodesetExpr() {
        return true;
    }

    @Override // com.sun.org.apache.xpath.internal.functions.Function2Args, com.sun.org.apache.xpath.internal.functions.FunctionOneArg, com.sun.org.apache.xpath.internal.functions.Function
    public void reportWrongNumberArgs() throws WrongNumberArgsException {
        throw new WrongNumberArgsException(XSLMessages.createMessage("ER_ONE_OR_TWO", null));
    }

    @Override // com.sun.org.apache.xpath.internal.Expression
    public void warn(XPathContext xPathContext, String str, Object[] objArr) throws TransformerException {
        String createWarning = XSLMessages.createWarning(str, objArr);
        ErrorListener errorListener = xPathContext.getErrorListener();
        TransformerException transformerException = new TransformerException(createWarning, xPathContext.getSAXLocator());
        if (errorListener != null) {
            errorListener.warning(transformerException);
        } else {
            System.out.println(createWarning);
        }
    }
}
