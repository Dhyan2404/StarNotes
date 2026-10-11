package com.sun.org.apache.xml.internal.utils;

import com.sun.org.apache.xml.internal.res.XMLMessages;
import java.io.Serializable;
import java.util.Vector;

/* loaded from: classes10.dex */
public class ObjectPool implements Serializable {
    static final long serialVersionUID = -8519013691660936643L;
    private final Vector freeStack;
    private final Class objectType;

    public ObjectPool(Class cls) {
        this.objectType = cls;
        this.freeStack = new Vector();
    }

    public synchronized void freeInstance(Object obj) {
        this.freeStack.addElement(obj);
    }

    public synchronized Object getInstance() {
        if (this.freeStack.isEmpty()) {
            try {
                return this.objectType.newInstance();
            } catch (IllegalAccessException | InstantiationException unused) {
                throw new RuntimeException(XMLMessages.createXMLMessage("ER_EXCEPTION_CREATING_POOL", null));
            }
        }
        Object lastElement = this.freeStack.lastElement();
        this.freeStack.setSize(r1.size() - 1);
        return lastElement;
    }

    public synchronized Object getInstanceIfFree() {
        if (this.freeStack.isEmpty()) {
            return null;
        }
        Object lastElement = this.freeStack.lastElement();
        this.freeStack.setSize(r1.size() - 1);
        return lastElement;
    }

    public ObjectPool(String str) {
        try {
            this.objectType = ObjectFactory.findProviderClass(str, ObjectFactory.findClassLoader(), true);
            this.freeStack = new Vector();
        } catch (ClassNotFoundException e) {
            throw new WrappedRuntimeException(e);
        }
    }

    public ObjectPool(Class cls, int i) {
        this.objectType = cls;
        this.freeStack = new Vector(i);
    }

    public ObjectPool() {
        this.objectType = null;
        this.freeStack = new Vector();
    }
}
