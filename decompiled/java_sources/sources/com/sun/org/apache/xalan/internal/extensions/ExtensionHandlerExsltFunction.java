package com.sun.org.apache.xalan.internal.extensions;

import com.sun.org.apache.xalan.internal.res.XSLMessages;
import com.sun.org.apache.xalan.internal.res.XSLTErrorResources;
import com.sun.org.apache.xalan.internal.templates.ElemExsltFuncResult;
import com.sun.org.apache.xalan.internal.templates.ElemExsltFunction;
import com.sun.org.apache.xalan.internal.templates.ElemTemplate;
import com.sun.org.apache.xalan.internal.templates.ElemTemplateElement;
import com.sun.org.apache.xalan.internal.templates.Stylesheet;
import com.sun.org.apache.xalan.internal.templates.StylesheetRoot;
import com.sun.org.apache.xalan.internal.transformer.TransformerImpl;
import com.sun.org.apache.xml.internal.utils.Constants;
import com.sun.org.apache.xml.internal.utils.QName;
import com.sun.org.apache.xpath.internal.ExpressionNode;
import com.sun.org.apache.xpath.internal.functions.FuncExtFunction;
import com.sun.org.apache.xpath.internal.objects.XObject;
import com.sun.org.apache.xpath.internal.objects.XString;
import java.io.IOException;
import java.util.Vector;
import javax.xml.transform.TransformerException;

/* loaded from: classes10.dex */
public class ExtensionHandlerExsltFunction extends ExtensionHandler {
    private static final QName RESULTQNAME = new QName(Constants.S_EXSLT_FUNCTIONS_URL, com.sun.org.apache.xalan.internal.templates.Constants.EXSLT_ELEMNAME_FUNCRESULT_STRING);
    private String m_namespace;
    private StylesheetRoot m_stylesheet;

    public ExtensionHandlerExsltFunction(String str, StylesheetRoot stylesheetRoot) {
        super(str, "xml");
        this.m_namespace = str;
        this.m_stylesheet = stylesheetRoot;
    }

    private boolean ancestorIsFunction(ElemTemplateElement elemTemplateElement) {
        while (elemTemplateElement.getParentElem() != null && !(elemTemplateElement.getParentElem() instanceof StylesheetRoot)) {
            if (elemTemplateElement.getParentElem() instanceof ElemExsltFunction) {
                return true;
            }
            elemTemplateElement = elemTemplateElement.getParentElem();
        }
        return false;
    }

    @Override // com.sun.org.apache.xalan.internal.extensions.ExtensionHandler
    public Object callFunction(String str, Vector vector, Object obj, ExpressionContext expressionContext) throws TransformerException {
        throw new TransformerException("This method should not be called.");
    }

    public ElemExsltFunction getFunction(String str) {
        ElemTemplate templateComposed = this.m_stylesheet.getTemplateComposed(new QName(this.m_namespace, str));
        if (templateComposed == null || !(templateComposed instanceof ElemExsltFunction)) {
            return null;
        }
        return (ElemExsltFunction) templateComposed;
    }

    @Override // com.sun.org.apache.xalan.internal.extensions.ExtensionHandler
    public boolean isElementAvailable(String str) {
        if (!new QName(this.m_namespace, str).equals(RESULTQNAME)) {
            return false;
        }
        ElemTemplateElement firstChildElem = this.m_stylesheet.getFirstChildElem();
        while (firstChildElem != null && firstChildElem != this.m_stylesheet) {
            if ((firstChildElem instanceof ElemExsltFuncResult) && ancestorIsFunction(firstChildElem)) {
                return true;
            }
            ElemTemplateElement firstChildElem2 = firstChildElem.getFirstChildElem();
            if (firstChildElem2 == null) {
                firstChildElem2 = firstChildElem.getNextSiblingElem();
            }
            firstChildElem = firstChildElem2 == null ? firstChildElem.getParentElem() : firstChildElem2;
        }
        return false;
    }

    @Override // com.sun.org.apache.xalan.internal.extensions.ExtensionHandler
    public boolean isFunctionAvailable(String str) {
        return getFunction(str) != null;
    }

    @Override // com.sun.org.apache.xalan.internal.extensions.ExtensionHandler
    public void processElement(String str, ElemTemplateElement elemTemplateElement, TransformerImpl transformerImpl, Stylesheet stylesheet, Object obj) throws TransformerException, IOException {
    }

    @Override // com.sun.org.apache.xalan.internal.extensions.ExtensionHandler
    public Object callFunction(FuncExtFunction funcExtFunction, Vector vector, ExpressionContext expressionContext) throws TransformerException {
        ExpressionNode exprGetParent = funcExtFunction.exprGetParent();
        while (exprGetParent != null && !(exprGetParent instanceof ElemTemplate)) {
            exprGetParent = exprGetParent.exprGetParent();
        }
        if (exprGetParent != null) {
        }
        int size = vector.size();
        XObject[] xObjectArr = new XObject[size];
        for (int i = 0; i < size; i++) {
            try {
                xObjectArr[i] = XObject.create(vector.elementAt(i));
            } catch (TransformerException e) {
                throw e;
            } catch (Exception e2) {
                throw new TransformerException(e2);
            }
        }
        ElemExsltFunction function = getFunction(funcExtFunction.getFunctionName());
        if (function != null) {
            TransformerImpl transformerImpl = (TransformerImpl) expressionContext.getXPathContext().getOwnerObject();
            transformerImpl.pushCurrentFuncResult(null);
            function.execute(transformerImpl, xObjectArr);
            XObject xObject = (XObject) transformerImpl.popCurrentFuncResult();
            return xObject == null ? new XString("") : xObject;
        }
        throw new TransformerException(XSLMessages.createMessage(XSLTErrorResources.ER_FUNCTION_NOT_FOUND, new Object[]{funcExtFunction.getFunctionName()}));
    }
}
