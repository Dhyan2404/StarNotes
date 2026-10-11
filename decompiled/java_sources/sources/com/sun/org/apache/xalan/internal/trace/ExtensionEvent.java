package com.sun.org.apache.xalan.internal.trace;

import com.sun.org.apache.xalan.internal.transformer.TransformerImpl;
import java.lang.reflect.Constructor;
import java.lang.reflect.Method;

/* loaded from: classes10.dex */
public class ExtensionEvent {
    public static final int CONSTRUCTOR = 2;
    public static final int DEFAULT_CONSTRUCTOR = 0;
    public static final int METHOD = 1;
    public final Object[] m_arguments;
    public final int m_callType;
    public final Object m_instance;
    public final Object m_method;
    public final TransformerImpl m_transformer;

    public ExtensionEvent(TransformerImpl transformerImpl, Method method, Object obj, Object[] objArr) {
        this.m_transformer = transformerImpl;
        this.m_method = method;
        this.m_instance = obj;
        this.m_arguments = objArr;
        this.m_callType = 1;
    }

    public ExtensionEvent(TransformerImpl transformerImpl, Constructor constructor, Object[] objArr) {
        this.m_transformer = transformerImpl;
        this.m_instance = null;
        this.m_arguments = objArr;
        this.m_method = constructor;
        this.m_callType = 2;
    }

    public ExtensionEvent(TransformerImpl transformerImpl, Class cls) {
        this.m_transformer = transformerImpl;
        this.m_instance = null;
        this.m_arguments = null;
        this.m_method = cls;
        this.m_callType = 0;
    }
}
