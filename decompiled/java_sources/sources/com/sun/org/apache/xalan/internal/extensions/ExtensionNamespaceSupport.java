package com.sun.org.apache.xalan.internal.extensions;

import java.lang.reflect.Constructor;
import javax.xml.transform.TransformerException;

/* loaded from: classes10.dex */
public class ExtensionNamespaceSupport {
    Object[] m_args;
    String m_handlerClass;
    String m_namespace;
    Class[] m_sig;

    public ExtensionNamespaceSupport(String str, String str2, Object[] objArr) {
        this.m_sig = null;
        this.m_namespace = str;
        this.m_handlerClass = str2;
        this.m_args = objArr;
        this.m_sig = new Class[objArr.length];
        int i = 0;
        while (true) {
            Object[] objArr2 = this.m_args;
            if (i >= objArr2.length) {
                return;
            }
            Object obj = objArr2[i];
            if (obj == null) {
                this.m_sig = null;
                return;
            } else {
                this.m_sig[i] = obj.getClass();
                i++;
            }
        }
    }

    public String getNamespace() {
        return this.m_namespace;
    }

    public ExtensionHandler launch() throws TransformerException {
        Constructor<?> constructor;
        try {
            Class classForName = ExtensionHandler.getClassForName(this.m_handlerClass);
            Class<?>[] clsArr = this.m_sig;
            if (clsArr == null) {
                Constructor<?>[] constructors = classForName.getConstructors();
                int i = 0;
                while (true) {
                    if (i >= constructors.length) {
                        constructor = null;
                        break;
                    }
                    if (constructors[i].getParameterTypes().length == this.m_args.length) {
                        constructor = constructors[i];
                        break;
                    }
                    i++;
                }
            } else {
                constructor = classForName.getConstructor(clsArr);
            }
            if (constructor != null) {
                return (ExtensionHandler) constructor.newInstance(this.m_args);
            }
            throw new TransformerException("ExtensionHandler constructor not found");
        } catch (Exception e) {
            throw new TransformerException(e);
        }
    }
}
