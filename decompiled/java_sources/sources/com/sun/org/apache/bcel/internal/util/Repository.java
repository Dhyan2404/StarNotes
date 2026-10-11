package com.sun.org.apache.bcel.internal.util;

import com.sun.org.apache.bcel.internal.classfile.JavaClass;
import java.io.Serializable;

/* loaded from: classes10.dex */
public interface Repository extends Serializable {
    void clear();

    JavaClass findClass(String str);

    JavaClass loadClass(Class cls) throws ClassNotFoundException;

    JavaClass loadClass(String str) throws ClassNotFoundException;

    void removeClass(JavaClass javaClass);

    void storeClass(JavaClass javaClass);
}
