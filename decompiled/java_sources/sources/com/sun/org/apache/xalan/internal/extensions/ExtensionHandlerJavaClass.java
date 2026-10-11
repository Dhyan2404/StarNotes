package com.sun.org.apache.xalan.internal.extensions;

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
public class ExtensionHandlerJavaClass extends ExtensionHandlerJava {
    private Class m_classObj;
    private Object m_defaultInstance;

    public ExtensionHandlerJavaClass(String str, String str2, String str3) {
        super(str, str2, str3);
        this.m_classObj = null;
        this.m_defaultInstance = null;
        try {
            this.m_classObj = ExtensionHandler.getClassForName(str3);
        } catch (ClassNotFoundException unused) {
        }
    }

    @Override // com.sun.org.apache.xalan.internal.extensions.ExtensionHandler
    public Object callFunction(String str, Vector vector, Object obj, ExpressionContext expressionContext) throws TransformerException {
        TransformerImpl transformerImpl;
        int i;
        Object obj2;
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
        if (str.equals("new")) {
            int size = vector.size();
            Object[] objArr = new Object[size];
            Object[][] objArr2 = new Object[1];
            for (int i2 = 0; i2 < size; i2++) {
                objArr[i2] = vector.elementAt(i2);
            }
            Constructor constructor = obj != null ? (Constructor) getFromCache(obj, null, objArr) : null;
            if (constructor != null && !transformerImpl.getDebug()) {
                try {
                    MethodResolver.convertParams(objArr, objArr2, constructor.getParameterTypes(), expressionContext);
                    return constructor.newInstance(objArr2[0]);
                } catch (InvocationTargetException e3) {
                    throw e3;
                } catch (Exception unused) {
                }
            }
            Constructor constructor2 = MethodResolver.getConstructor(this.m_classObj, objArr, objArr2, expressionContext);
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
        }
        int size2 = vector.size();
        Object[] objArr3 = new Object[size2];
        Object[][] objArr4 = new Object[1];
        for (int i3 = 0; i3 < size2; i3++) {
            objArr3[i3] = vector.elementAt(i3);
        }
        Method method = obj != null ? (Method) getFromCache(obj, null, objArr3) : null;
        if (method != null && !transformerImpl.getDebug()) {
            try {
                Class<?>[] parameterTypes = method.getParameterTypes();
                MethodResolver.convertParams(objArr3, objArr4, parameterTypes, expressionContext);
                if (Modifier.isStatic(method.getModifiers())) {
                    return method.invoke(null, objArr4[0]);
                }
                int length = objArr4[0].length;
                if (ExpressionContext.class.isAssignableFrom(parameterTypes[0])) {
                    length--;
                }
                if (size2 <= length) {
                    return method.invoke(this.m_defaultInstance, objArr4[0]);
                }
                Object obj3 = objArr3[0];
                if (obj3 instanceof XObject) {
                    obj3 = ((XObject) obj3).object();
                }
                return method.invoke(obj3, objArr4[0]);
            } catch (InvocationTargetException e5) {
                throw e5;
            } catch (Exception unused2) {
            }
        }
        if (vector.size() > 0) {
            Object obj4 = objArr3[0];
            if (obj4 instanceof XObject) {
                obj4 = ((XObject) obj4).object();
            }
            if (this.m_classObj.isAssignableFrom(obj4.getClass())) {
                obj2 = obj4;
                i = 4;
            } else {
                obj2 = obj4;
                i = 3;
            }
        } else {
            i = 3;
            obj2 = null;
        }
        Method method2 = MethodResolver.getMethod(this.m_classObj, str, objArr3, objArr4, expressionContext, i);
        if (obj != null) {
            putToCache(obj, null, objArr3, method2);
        }
        if (4 == i) {
            if (transformerImpl != null && transformerImpl.getDebug()) {
                transformerImpl.getTraceManager().fireExtensionEvent(method2, obj2, objArr4[0]);
                try {
                    try {
                        return method2.invoke(obj2, objArr4[0]);
                    } catch (Exception e6) {
                        throw e6;
                    }
                } finally {
                    transformerImpl.getTraceManager().fireExtensionEndEvent(method2, obj2, objArr4[0]);
                }
            }
            return method2.invoke(obj2, objArr4[0]);
        }
        if (Modifier.isStatic(method2.getModifiers())) {
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
        }
        if (this.m_defaultInstance == null) {
            if (transformerImpl != null && transformerImpl.getDebug()) {
                transformerImpl.getTraceManager().fireExtensionEvent(new ExtensionEvent(transformerImpl, this.m_classObj));
                try {
                    try {
                        this.m_defaultInstance = this.m_classObj.newInstance();
                    } finally {
                        transformerImpl.getTraceManager().fireExtensionEndEvent(new ExtensionEvent(transformerImpl, this.m_classObj));
                    }
                } catch (Exception e8) {
                    throw e8;
                }
            } else {
                this.m_defaultInstance = this.m_classObj.newInstance();
            }
        }
        if (transformerImpl != null && transformerImpl.getDebug()) {
            transformerImpl.getTraceManager().fireExtensionEvent(method2, this.m_defaultInstance, objArr4[0]);
            try {
                try {
                    return method2.invoke(this.m_defaultInstance, objArr4[0]);
                } finally {
                    transformerImpl.getTraceManager().fireExtensionEndEvent(method2, this.m_defaultInstance, objArr4[0]);
                }
            } catch (Exception e9) {
                throw e9;
            }
        }
        return method2.invoke(this.m_defaultInstance, objArr4[0]);
    }

    @Override // com.sun.org.apache.xalan.internal.extensions.ExtensionHandler
    public boolean isElementAvailable(String str) {
        Method[] methods = this.m_classObj.getMethods();
        int length = methods.length;
        for (int i = 0; i < length; i++) {
            if (methods[i].getName().equals(str)) {
                Class<?>[] parameterTypes = methods[i].getParameterTypes();
                if (parameterTypes.length == 2 && parameterTypes[0].isAssignableFrom(XSLProcessorContext.class) && parameterTypes[1].isAssignableFrom(ElemExtensionCall.class)) {
                    return true;
                }
            }
        }
        return false;
    }

    @Override // com.sun.org.apache.xalan.internal.extensions.ExtensionHandler
    public boolean isFunctionAvailable(String str) {
        for (Method method : this.m_classObj.getMethods()) {
            if (method.getName().equals(str)) {
                return true;
            }
        }
        return false;
    }

    @Override // com.sun.org.apache.xalan.internal.extensions.ExtensionHandler
    public void processElement(String str, ElemTemplateElement elemTemplateElement, TransformerImpl transformerImpl, Stylesheet stylesheet, Object obj) throws TransformerException, IOException {
        Object invoke;
        Method method = (Method) getFromCache(obj, null, null);
        if (method == null) {
            try {
                method = MethodResolver.getElementMethod(this.m_classObj, str);
                if (this.m_defaultInstance == null && !Modifier.isStatic(method.getModifiers())) {
                    if (transformerImpl.getDebug()) {
                        transformerImpl.getTraceManager().fireExtensionEvent(new ExtensionEvent(transformerImpl, this.m_classObj));
                        try {
                            try {
                                this.m_defaultInstance = this.m_classObj.newInstance();
                            } catch (Exception e) {
                                throw e;
                            }
                        } finally {
                            transformerImpl.getTraceManager().fireExtensionEndEvent(new ExtensionEvent(transformerImpl, this.m_classObj));
                        }
                    } else {
                        this.m_defaultInstance = this.m_classObj.newInstance();
                    }
                }
                putToCache(obj, null, null, method);
            } catch (Exception e2) {
                throw new TransformerException(e2.getMessage(), e2);
            }
        }
        XSLProcessorContext xSLProcessorContext = new XSLProcessorContext(transformerImpl, stylesheet);
        try {
            if (transformerImpl.getDebug()) {
                transformerImpl.getTraceManager().fireExtensionEvent(method, this.m_defaultInstance, new Object[]{xSLProcessorContext, elemTemplateElement});
                try {
                    try {
                        invoke = method.invoke(this.m_defaultInstance, xSLProcessorContext, elemTemplateElement);
                    } finally {
                        transformerImpl.getTraceManager().fireExtensionEndEvent(method, this.m_defaultInstance, new Object[]{xSLProcessorContext, elemTemplateElement});
                    }
                } catch (Exception e3) {
                    throw e3;
                }
            } else {
                invoke = method.invoke(this.m_defaultInstance, xSLProcessorContext, elemTemplateElement);
            }
            if (invoke != null) {
                xSLProcessorContext.outputToResultTree(stylesheet, invoke);
            }
        } catch (InvocationTargetException e4) {
            Throwable targetException = e4.getTargetException();
            if (targetException instanceof TransformerException) {
                throw ((TransformerException) targetException);
            }
            if (targetException == null) {
                throw new TransformerException(e4.getMessage(), e4);
            }
            throw new TransformerException(targetException.getMessage(), targetException);
        } catch (Exception e5) {
            throw new TransformerException(e5.getMessage(), e5);
        }
    }

    @Override // com.sun.org.apache.xalan.internal.extensions.ExtensionHandler
    public Object callFunction(FuncExtFunction funcExtFunction, Vector vector, ExpressionContext expressionContext) throws TransformerException {
        return callFunction(funcExtFunction.getFunctionName(), vector, funcExtFunction.getMethodKey(), expressionContext);
    }
}
