package org.apache.xmlbeans;

/* loaded from: classes13.dex */
public interface InterfaceExtension {

    /* loaded from: classes13.dex */
    public interface MethodSignature {
        String[] getExceptionTypes();

        String getName();

        String[] getParameterNames();

        String[] getParameterTypes();

        String getReturnType();
    }

    String getInterface();

    MethodSignature[] getMethods();

    String getStaticHandler();
}
