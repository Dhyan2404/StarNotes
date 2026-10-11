package com.sun.org.apache.xalan.internal.extensions;

import com.sun.org.apache.xalan.internal.res.XSLMessages;
import com.sun.org.apache.xalan.internal.templates.ElemExtensionCall;
import com.sun.org.apache.xalan.internal.templates.ElemTemplateElement;
import com.sun.org.apache.xalan.internal.templates.Stylesheet;
import com.sun.org.apache.xalan.internal.trace.ExtensionEvent;
import com.sun.org.apache.xalan.internal.transformer.TransformerImpl;
import com.sun.org.apache.xpath.internal.functions.FuncExtFunction;
import com.sun.org.apache.xpath.internal.objects.XObject;
import java.io.IOException;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.util.Vector;
import javax.xml.transform.TransformerException;

/* loaded from: classes10.dex */
public class ExtensionHandlerJavaPackage extends ExtensionHandlerJava {
    public ExtensionHandlerJavaPackage(String str, String str2, String str3) {
        super(str, str2, str3);
    }

    @Override // com.sun.org.apache.xalan.internal.extensions.ExtensionHandler
    public Object callFunction(String str, Vector vector, Object obj, ExpressionContext expressionContext) throws TransformerException {
        TransformerImpl transformerImpl;
        int lastIndexOf = str.lastIndexOf(".");
        if (expressionContext != null) {
            try {
                transformerImpl = (TransformerImpl) expressionContext.getXPathContext().getOwnerObject();
            } catch (InvocationTargetException e) {
                e = e;
                Throwable targetException = e.getTargetException();
                if (!(targetException instanceof TransformerException)) {
                    if (targetException != null) {
                        e = targetException;
                    }
                    throw new TransformerException(e);
                }
                throw ((TransformerException) targetException);
            } catch (Exception e2) {
                throw new TransformerException(e2);
            }
        } else {
            transformerImpl = null;
        }
        if (str.endsWith(".new")) {
            int size = vector.size();
            Object[] objArr = new Object[size];
            Object[][] objArr2 = new Object[1];
            for (int i = 0; i < size; i++) {
                objArr[i] = vector.elementAt(i);
            }
            Constructor constructor = obj != null ? (Constructor) getFromCache(obj, null, objArr) : null;
            if (constructor != null) {
                try {
                    MethodResolver.convertParams(objArr, objArr2, constructor.getParameterTypes(), expressionContext);
                    return constructor.newInstance(objArr2[0]);
                } catch (InvocationTargetException e3) {
                    throw e3;
                } catch (Exception unused) {
                }
            }
            try {
                Constructor constructor2 = MethodResolver.getConstructor(ExtensionHandler.getClassForName(this.m_className + str.substring(0, lastIndexOf)), objArr, objArr2, expressionContext);
                if (obj != null) {
                    putToCache(obj, null, objArr, constructor2);
                }
                if (transformerImpl != null && transformerImpl.getDebug()) {
                    transformerImpl.getTraceManager().fireExtensionEvent(new ExtensionEvent(transformerImpl, constructor2, objArr2[0]));
                    try {
                        try {
                            return constructor2.newInstance(objArr2[0]);
                        } catch (Exception e4) {
                            throw e4;
                        }
                    } finally {
                        transformerImpl.getTraceManager().fireExtensionEndEvent(new ExtensionEvent(transformerImpl, constructor2, objArr2[0]));
                    }
                }
                return constructor2.newInstance(objArr2[0]);
            } catch (ClassNotFoundException e5) {
                throw new TransformerException(e5);
            }
        }
        if (-1 != lastIndexOf) {
            int size2 = vector.size();
            Object[] objArr3 = new Object[size2];
            Object[][] objArr4 = new Object[1];
            for (int i2 = 0; i2 < size2; i2++) {
                objArr3[i2] = vector.elementAt(i2);
            }
            Method method = obj != null ? (Method) getFromCache(obj, null, objArr3) : null;
            if (method != null && !transformerImpl.getDebug()) {
                try {
                    MethodResolver.convertParams(objArr3, objArr4, method.getParameterTypes(), expressionContext);
                    return method.invoke(null, objArr4[0]);
                } catch (InvocationTargetException e6) {
                    throw e6;
                } catch (Exception unused2) {
                }
            }
            try {
                Method method2 = MethodResolver.getMethod(ExtensionHandler.getClassForName(this.m_className + str.substring(0, lastIndexOf)), str.substring(lastIndexOf + 1), objArr3, objArr4, expressionContext, 1);
                if (obj != null) {
                    putToCache(obj, null, objArr3, method2);
                }
                if (transformerImpl != null && transformerImpl.getDebug()) {
                    transformerImpl.getTraceManager().fireExtensionEvent(method2, null, objArr4[0]);
                    try {
                        try {
                            return method2.invoke(null, objArr4[0]);
                        } catch (Exception e7) {
                            throw e7;
                        }
                    } finally {
                        transformerImpl.getTraceManager().fireExtensionEndEvent(method2, null, objArr4[0]);
                    }
                }
                return method2.invoke(null, objArr4[0]);
            } catch (ClassNotFoundException e8) {
                throw new TransformerException(e8);
            }
        }
        if (vector.size() >= 1) {
            Object elementAt = vector.elementAt(0);
            if (elementAt instanceof XObject) {
                elementAt = ((XObject) elementAt).object();
            }
            Object obj2 = elementAt;
            int size3 = vector.size() - 1;
            Object[] objArr5 = new Object[size3];
            Object[][] objArr6 = new Object[1];
            int i3 = 0;
            while (i3 < size3) {
                int i4 = i3 + 1;
                objArr5[i3] = vector.elementAt(i4);
                i3 = i4;
            }
            r8 = obj != null ? (Method) getFromCache(obj, obj2, objArr5) : null;
            if (r8 != null) {
                try {
                    MethodResolver.convertParams(objArr5, objArr6, r8.getParameterTypes(), expressionContext);
                    return r8.invoke(obj2, objArr6[0]);
                } catch (InvocationTargetException e9) {
                    throw e9;
                } catch (Exception unused3) {
                }
            }
            Method method3 = MethodResolver.getMethod(obj2.getClass(), str, objArr5, objArr6, expressionContext, 2);
            if (obj != null) {
                putToCache(obj, obj2, objArr5, method3);
            }
            if (transformerImpl != null && transformerImpl.getDebug()) {
                transformerImpl.getTraceManager().fireExtensionEvent(method3, obj2, objArr6[0]);
                try {
                    try {
                        return method3.invoke(obj2, objArr6[0]);
                    } catch (Exception e10) {
                        throw e10;
                    }
                } finally {
                    transformerImpl.getTraceManager().fireExtensionEndEvent(method3, obj2, objArr6[0]);
                }
            }
            return method3.invoke(obj2, objArr6[0]);
        }
        throw new TransformerException(XSLMessages.createMessage("ER_INSTANCE_MTHD_CALL_REQUIRES", new Object[]{str}));
    }

    @Override // com.sun.org.apache.xalan.internal.extensions.ExtensionHandler
    public boolean isElementAvailable(String str) {
        try {
            String str2 = this.m_className + str;
            int lastIndexOf = str2.lastIndexOf(".");
            if (lastIndexOf >= 0) {
                Method[] methods = ExtensionHandler.getClassForName(str2.substring(0, lastIndexOf)).getMethods();
                int length = methods.length;
                String substring = str2.substring(lastIndexOf + 1);
                for (int i = 0; i < length; i++) {
                    if (methods[i].getName().equals(substring)) {
                        Class<?>[] parameterTypes = methods[i].getParameterTypes();
                        if (parameterTypes.length == 2 && parameterTypes[0].isAssignableFrom(XSLProcessorContext.class) && parameterTypes[1].isAssignableFrom(ElemExtensionCall.class)) {
                            return true;
                        }
                    }
                }
            }
        } catch (ClassNotFoundException unused) {
        }
        return false;
    }

    @Override // com.sun.org.apache.xalan.internal.extensions.ExtensionHandler
    public boolean isFunctionAvailable(String str) {
        try {
            String str2 = this.m_className + str;
            int lastIndexOf = str2.lastIndexOf(".");
            if (lastIndexOf >= 0) {
                Method[] methods = ExtensionHandler.getClassForName(str2.substring(0, lastIndexOf)).getMethods();
                String substring = str2.substring(lastIndexOf + 1);
                for (Method method : methods) {
                    if (method.getName().equals(substring)) {
                        return true;
                    }
                }
            }
        } catch (ClassNotFoundException unused) {
        }
        return false;
    }

    @Override // com.sun.org.apache.xalan.internal.extensions.ExtensionHandler
    public void processElement(String str, ElemTemplateElement elemTemplateElement, TransformerImpl transformerImpl, Stylesheet stylesheet, Object obj) throws TransformerException, IOException {
        Object invoke;
        Method method = (Method) getFromCache(obj, null, null);
        if (method == null) {
            try {
                String str2 = this.m_className + str;
                int lastIndexOf = str2.lastIndexOf(".");
                if (lastIndexOf < 0) {
                    throw new TransformerException(XSLMessages.createMessage("ER_INVALID_ELEMENT_NAME", new Object[]{str2}));
                }
                try {
                    method = MethodResolver.getElementMethod(ExtensionHandler.getClassForName(str2.substring(0, lastIndexOf)), str2.substring(lastIndexOf + 1));
                    if (!Modifier.isStatic(method.getModifiers())) {
                        throw new TransformerException(XSLMessages.createMessage("ER_ELEMENT_NAME_METHOD_STATIC", new Object[]{str2}));
                    }
                    putToCache(obj, null, null, method);
                } catch (ClassNotFoundException e) {
                    throw new TransformerException(e);
                }
            } catch (Exception e2) {
                throw new TransformerException(e2);
            }
        }
        XSLProcessorContext xSLProcessorContext = new XSLProcessorContext(transformerImpl, stylesheet);
        try {
            if (transformerImpl.getDebug()) {
                transformerImpl.getTraceManager().fireExtensionEvent(method, null, new Object[]{xSLProcessorContext, elemTemplateElement});
                try {
                    try {
                        invoke = method.invoke(null, xSLProcessorContext, elemTemplateElement);
                    } catch (Exception e3) {
                        throw e3;
                    }
                } finally {
                    transformerImpl.getTraceManager().fireExtensionEndEvent(method, null, new Object[]{xSLProcessorContext, elemTemplateElement});
                }
            } else {
                invoke = method.invoke(null, xSLProcessorContext, elemTemplateElement);
            }
            if (invoke != null) {
                xSLProcessorContext.outputToResultTree(stylesheet, invoke);
            }
        } catch (InvocationTargetException e4) {
            e = e4;
            Throwable targetException = e.getTargetException();
            if (targetException instanceof TransformerException) {
                throw ((TransformerException) targetException);
            }
            if (targetException != null) {
                e = targetException;
            }
            throw new TransformerException(e);
        } catch (Exception e5) {
            throw new TransformerException(e5);
        }
    }

    @Override // com.sun.org.apache.xalan.internal.extensions.ExtensionHandler
    public Object callFunction(FuncExtFunction funcExtFunction, Vector vector, ExpressionContext expressionContext) throws TransformerException {
        return callFunction(funcExtFunction.getFunctionName(), vector, funcExtFunction.getMethodKey(), expressionContext);
    }
}
