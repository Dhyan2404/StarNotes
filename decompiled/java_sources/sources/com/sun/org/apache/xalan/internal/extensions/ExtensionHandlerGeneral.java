package com.sun.org.apache.xalan.internal.extensions;

import com.sun.org.apache.xalan.internal.extensions.ObjectFactory;
import com.sun.org.apache.xalan.internal.res.XSLMessages;
import com.sun.org.apache.xalan.internal.templates.ElemTemplateElement;
import com.sun.org.apache.xalan.internal.templates.Stylesheet;
import com.sun.org.apache.xalan.internal.transformer.TransformerImpl;
import com.sun.org.apache.xml.internal.dtm.DTMIterator;
import com.sun.org.apache.xml.internal.dtm.ref.DTMNodeList;
import com.sun.org.apache.xml.internal.utils.StringVector;
import com.sun.org.apache.xml.internal.utils.SystemIDResolver;
import com.sun.org.apache.xpath.internal.XPathProcessorException;
import com.sun.org.apache.xpath.internal.functions.FuncExtFunction;
import com.sun.org.apache.xpath.internal.objects.XObject;
import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.Method;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLConnection;
import java.util.Hashtable;
import java.util.Vector;
import javax.xml.transform.TransformerException;

/* loaded from: classes10.dex */
public class ExtensionHandlerGeneral extends ExtensionHandler {
    private static String BSF_MANAGER = null;
    private static final String DEFAULT_BSF_MANAGER = "org.apache.bsf.BSFManager";
    private static final Integer ZEROINT = new Integer(0);
    private static final String propName = "com.sun.org.apache.xalan.internal.extensions.bsf.BSFManager";
    private Hashtable m_elements;
    private Object m_engine;
    private Method m_engineCall;
    private Hashtable m_functions;
    private String m_scriptSrc;
    private String m_scriptSrcURL;

    static {
        String lookUpFactoryClassName = ObjectFactory.lookUpFactoryClassName(propName, null, null);
        BSF_MANAGER = lookUpFactoryClassName;
        if (lookUpFactoryClassName == null) {
            BSF_MANAGER = DEFAULT_BSF_MANAGER;
        }
    }

    public ExtensionHandlerGeneral(String str, StringVector stringVector, StringVector stringVector2, String str2, String str3, String str4, String str5) throws TransformerException {
        super(str, str2);
        URL url;
        Object obj;
        this.m_functions = new Hashtable();
        this.m_elements = new Hashtable();
        this.m_engineCall = null;
        if (stringVector != null) {
            Object obj2 = new Object();
            int size = stringVector.size();
            for (int i = 0; i < size; i++) {
                this.m_elements.put(stringVector.elementAt(i), obj2);
            }
        }
        if (stringVector2 != null) {
            Object obj3 = new Object();
            int size2 = stringVector2.size();
            for (int i2 = 0; i2 < size2; i2++) {
                this.m_functions.put(stringVector2.elementAt(i2), obj3);
            }
        }
        this.m_scriptSrcURL = str3;
        this.m_scriptSrc = str4;
        if (str3 != null) {
            try {
                url = new URL(this.m_scriptSrcURL);
            } catch (MalformedURLException e) {
                int indexOf = this.m_scriptSrcURL.indexOf(58);
                int indexOf2 = this.m_scriptSrcURL.indexOf(47);
                if (indexOf != -1 && indexOf2 != -1 && indexOf < indexOf2) {
                    throw new TransformerException(XSLMessages.createMessage("ER_COULD_NOT_FIND_EXTERN_SCRIPT", new Object[]{this.m_scriptSrcURL}), e);
                }
                try {
                    url = new URL(new URL(SystemIDResolver.getAbsoluteURI(str5)), this.m_scriptSrcURL);
                } catch (MalformedURLException e2) {
                    throw new TransformerException(XSLMessages.createMessage("ER_COULD_NOT_FIND_EXTERN_SCRIPT", new Object[]{this.m_scriptSrcURL}), e2);
                }
            }
            try {
                URLConnection openConnection = url.openConnection();
                InputStream inputStream = openConnection.getInputStream();
                byte[] bArr = new byte[openConnection.getContentLength()];
                inputStream.read(bArr);
                this.m_scriptSrc = new String(bArr);
            } catch (IOException e3) {
                throw new TransformerException(XSLMessages.createMessage("ER_COULD_NOT_FIND_EXTERN_SCRIPT", new Object[]{this.m_scriptSrcURL}), e3);
            }
        }
        try {
            obj = ObjectFactory.newInstance(BSF_MANAGER, ObjectFactory.findClassLoader(), true);
        } catch (ObjectFactory.ConfigurationError e4) {
            e4.printStackTrace();
            obj = null;
        }
        if (obj == null) {
            throw new TransformerException(XSLMessages.createMessage("ER_CANNOT_INIT_BSFMGR", null));
        }
        try {
            Object invoke = obj.getClass().getMethod("loadScriptingEngine", String.class).invoke(obj, str2);
            this.m_engine = invoke;
            Class<?> cls = invoke.getClass();
            Class<?> cls2 = Integer.TYPE;
            Method method = cls.getMethod("exec", String.class, cls2, cls2, Object.class);
            Object obj4 = this.m_engine;
            Integer num = ZEROINT;
            method.invoke(obj4, "XalanScript", num, num, this.m_scriptSrc);
        } catch (Exception e5) {
            e5.printStackTrace();
            throw new TransformerException(XSLMessages.createMessage("ER_CANNOT_CMPL_EXTENSN", null), e5);
        }
    }

    @Override // com.sun.org.apache.xalan.internal.extensions.ExtensionHandler
    public Object callFunction(String str, Vector vector, Object obj, ExpressionContext expressionContext) throws TransformerException {
        try {
            int size = vector.size();
            Object[] objArr = new Object[size];
            for (int i = 0; i < size; i++) {
                Object elementAt = vector.elementAt(i);
                if (elementAt instanceof XObject) {
                    elementAt = ((XObject) elementAt).object();
                }
                objArr[i] = elementAt;
                if (elementAt != null && (elementAt instanceof DTMIterator)) {
                    objArr[i] = new DTMNodeList((DTMIterator) elementAt);
                }
            }
            if (this.m_engineCall == null) {
                this.m_engineCall = this.m_engine.getClass().getMethod("call", Object.class, String.class, Object[].class);
            }
            return this.m_engineCall.invoke(this.m_engine, null, str, objArr);
        } catch (Exception e) {
            e.printStackTrace();
            String message = e.getMessage();
            if (message != null) {
                if (message.startsWith("Stopping after fatal error:")) {
                    message.substring(27);
                }
                throw new TransformerException(e);
            }
            throw new TransformerException(XSLMessages.createMessage("ER_CANNOT_CREATE_EXTENSN", new Object[]{str, e}));
        }
    }

    @Override // com.sun.org.apache.xalan.internal.extensions.ExtensionHandler
    public boolean isElementAvailable(String str) {
        return this.m_elements.get(str) != null;
    }

    @Override // com.sun.org.apache.xalan.internal.extensions.ExtensionHandler
    public boolean isFunctionAvailable(String str) {
        return this.m_functions.get(str) != null;
    }

    @Override // com.sun.org.apache.xalan.internal.extensions.ExtensionHandler
    public void processElement(String str, ElemTemplateElement elemTemplateElement, TransformerImpl transformerImpl, Stylesheet stylesheet, Object obj) throws TransformerException, IOException {
        XSLProcessorContext xSLProcessorContext = new XSLProcessorContext(transformerImpl, stylesheet);
        try {
            Vector vector = new Vector(2);
            vector.addElement(xSLProcessorContext);
            vector.addElement(elemTemplateElement);
            Object callFunction = callFunction(str, vector, obj, transformerImpl.getXPathContext().getExpressionContext());
            if (callFunction != null) {
                xSLProcessorContext.outputToResultTree(stylesheet, callFunction);
            }
        } catch (XPathProcessorException e) {
            throw new TransformerException(e.getMessage(), e);
        }
    }

    @Override // com.sun.org.apache.xalan.internal.extensions.ExtensionHandler
    public Object callFunction(FuncExtFunction funcExtFunction, Vector vector, ExpressionContext expressionContext) throws TransformerException {
        return callFunction(funcExtFunction.getFunctionName(), vector, funcExtFunction.getMethodKey(), expressionContext);
    }
}
