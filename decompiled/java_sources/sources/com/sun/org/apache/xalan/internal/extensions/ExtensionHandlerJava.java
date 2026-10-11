package com.sun.org.apache.xalan.internal.extensions;

import java.util.Hashtable;

/* loaded from: classes10.dex */
public abstract class ExtensionHandlerJava extends ExtensionHandler {
    private Hashtable m_cachedMethods;
    protected String m_className;

    public ExtensionHandlerJava(String str, String str2, String str3) {
        super(str, str2);
        this.m_className = "";
        this.m_cachedMethods = new Hashtable();
        this.m_className = str3;
    }

    public Object getFromCache(Object obj, Object obj2, Object[] objArr) {
        return this.m_cachedMethods.get(obj);
    }

    public Object putToCache(Object obj, Object obj2, Object[] objArr, Object obj3) {
        return this.m_cachedMethods.put(obj, obj3);
    }
}
