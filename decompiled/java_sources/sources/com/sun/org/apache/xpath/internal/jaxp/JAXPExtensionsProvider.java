package com.sun.org.apache.xpath.internal.jaxp;

import com.sun.org.apache.xml.internal.utils.WrappedRuntimeException;
import com.sun.org.apache.xpath.internal.ExtensionsProvider;
import com.sun.org.apache.xpath.internal.functions.FuncExtFunction;
import com.sun.org.apache.xpath.internal.objects.XNodeSet;
import com.sun.org.apache.xpath.internal.objects.XObject;
import com.sun.org.apache.xpath.internal.res.XPATHErrorResources;
import com.sun.org.apache.xpath.internal.res.XPATHMessages;
import java.util.ArrayList;
import java.util.Vector;
import javax.xml.namespace.QName;
import javax.xml.transform.TransformerException;
import javax.xml.xpath.XPathFunction;
import javax.xml.xpath.XPathFunctionException;
import javax.xml.xpath.XPathFunctionResolver;

/* loaded from: classes10.dex */
public class JAXPExtensionsProvider implements ExtensionsProvider {
    private boolean extensionInvocationDisabled;
    private final XPathFunctionResolver resolver;

    public JAXPExtensionsProvider(XPathFunctionResolver xPathFunctionResolver) {
        this.resolver = xPathFunctionResolver;
        this.extensionInvocationDisabled = false;
    }

    @Override // com.sun.org.apache.xpath.internal.ExtensionsProvider
    public boolean elementAvailable(String str, String str2) throws TransformerException {
        return false;
    }

    @Override // com.sun.org.apache.xpath.internal.ExtensionsProvider
    public Object extFunction(String str, String str2, Vector vector, Object obj) throws TransformerException {
        try {
            if (str2 != null) {
                QName qName = new QName(str, str2);
                if (!this.extensionInvocationDisabled) {
                    int size = vector.size();
                    XPathFunction resolveFunction = this.resolver.resolveFunction(qName, size);
                    ArrayList arrayList = new ArrayList(size);
                    for (int i = 0; i < size; i++) {
                        Object elementAt = vector.elementAt(i);
                        if (elementAt instanceof XNodeSet) {
                            arrayList.add(i, ((XNodeSet) elementAt).nodelist());
                        } else if (elementAt instanceof XObject) {
                            arrayList.add(i, ((XObject) elementAt).object());
                        } else {
                            arrayList.add(i, elementAt);
                        }
                    }
                    return resolveFunction.evaluate(arrayList);
                }
                throw new XPathFunctionException(XPATHMessages.createXPATHMessage(XPATHErrorResources.ER_EXTENSION_FUNCTION_CANNOT_BE_INVOKED, new Object[]{qName.toString()}));
            }
            throw new NullPointerException(XPATHMessages.createXPATHMessage(XPATHErrorResources.ER_ARG_CANNOT_BE_NULL, new Object[]{"Function Name"}));
        } catch (XPathFunctionException e) {
            throw new WrappedRuntimeException(e);
        } catch (Exception e2) {
            throw new TransformerException(e2);
        }
    }

    @Override // com.sun.org.apache.xpath.internal.ExtensionsProvider
    public boolean functionAvailable(String str, String str2) throws TransformerException {
        try {
            if (str2 != null) {
                return this.resolver.resolveFunction(new QName(str, str2), 0) != null;
            }
            throw new NullPointerException(XPATHMessages.createXPATHMessage(XPATHErrorResources.ER_ARG_CANNOT_BE_NULL, new Object[]{"Function Name"}));
        } catch (Exception unused) {
            return false;
        }
    }

    public JAXPExtensionsProvider(XPathFunctionResolver xPathFunctionResolver, boolean z) {
        this.resolver = xPathFunctionResolver;
        this.extensionInvocationDisabled = z;
    }

    @Override // com.sun.org.apache.xpath.internal.ExtensionsProvider
    public Object extFunction(FuncExtFunction funcExtFunction, Vector vector) throws TransformerException {
        try {
            String namespace = funcExtFunction.getNamespace();
            String functionName = funcExtFunction.getFunctionName();
            int argCount = funcExtFunction.getArgCount();
            QName qName = new QName(namespace, functionName);
            if (!this.extensionInvocationDisabled) {
                XPathFunction resolveFunction = this.resolver.resolveFunction(qName, argCount);
                ArrayList arrayList = new ArrayList(argCount);
                for (int i = 0; i < argCount; i++) {
                    Object elementAt = vector.elementAt(i);
                    if (elementAt instanceof XNodeSet) {
                        arrayList.add(i, ((XNodeSet) elementAt).nodelist());
                    } else if (elementAt instanceof XObject) {
                        arrayList.add(i, ((XObject) elementAt).object());
                    } else {
                        arrayList.add(i, elementAt);
                    }
                }
                return resolveFunction.evaluate(arrayList);
            }
            throw new XPathFunctionException(XPATHMessages.createXPATHMessage(XPATHErrorResources.ER_EXTENSION_FUNCTION_CANNOT_BE_INVOKED, new Object[]{qName.toString()}));
        } catch (XPathFunctionException e) {
            throw new WrappedRuntimeException(e);
        } catch (Exception e2) {
            throw new TransformerException(e2);
        }
    }
}
