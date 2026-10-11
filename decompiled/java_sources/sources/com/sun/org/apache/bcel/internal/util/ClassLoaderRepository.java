package com.sun.org.apache.bcel.internal.util;

import com.sun.org.apache.bcel.internal.classfile.ClassParser;
import com.sun.org.apache.bcel.internal.classfile.JavaClass;
import java.io.IOException;
import java.io.InputStream;
import java.util.HashMap;

/* loaded from: classes10.dex */
public class ClassLoaderRepository implements Repository {
    private HashMap loadedClasses = new HashMap();
    private java.lang.ClassLoader loader;

    public ClassLoaderRepository(java.lang.ClassLoader classLoader) {
        this.loader = classLoader;
    }

    @Override // com.sun.org.apache.bcel.internal.util.Repository
    public void clear() {
        this.loadedClasses.clear();
    }

    @Override // com.sun.org.apache.bcel.internal.util.Repository
    public JavaClass findClass(String str) {
        if (this.loadedClasses.containsKey(str)) {
            return (JavaClass) this.loadedClasses.get(str);
        }
        return null;
    }

    @Override // com.sun.org.apache.bcel.internal.util.Repository
    public JavaClass loadClass(String str) throws ClassNotFoundException {
        String replace = str.replace('.', '/');
        JavaClass findClass = findClass(str);
        if (findClass != null) {
            return findClass;
        }
        try {
            InputStream resourceAsStream = this.loader.getResourceAsStream(replace + com.google.common.reflect.ClassPath.f35080d);
            if (resourceAsStream != null) {
                JavaClass parse = new ClassParser(resourceAsStream, str).parse();
                storeClass(parse);
                return parse;
            }
            throw new ClassNotFoundException(str + " not found.");
        } catch (IOException e) {
            throw new ClassNotFoundException(e.toString());
        }
    }

    @Override // com.sun.org.apache.bcel.internal.util.Repository
    public void removeClass(JavaClass javaClass) {
        this.loadedClasses.remove(javaClass.getClassName());
    }

    @Override // com.sun.org.apache.bcel.internal.util.Repository
    public void storeClass(JavaClass javaClass) {
        this.loadedClasses.put(javaClass.getClassName(), javaClass);
        javaClass.setRepository(this);
    }

    @Override // com.sun.org.apache.bcel.internal.util.Repository
    public JavaClass loadClass(Class cls) throws ClassNotFoundException {
        return loadClass(cls.getName());
    }
}
