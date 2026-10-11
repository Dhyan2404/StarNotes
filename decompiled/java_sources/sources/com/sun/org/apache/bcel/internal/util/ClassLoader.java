package com.sun.org.apache.bcel.internal.util;

import com.sun.org.apache.bcel.internal.classfile.ClassParser;
import com.sun.org.apache.bcel.internal.classfile.ConstantClass;
import com.sun.org.apache.bcel.internal.classfile.ConstantPool;
import com.sun.org.apache.bcel.internal.classfile.ConstantUtf8;
import com.sun.org.apache.bcel.internal.classfile.JavaClass;
import com.sun.org.apache.bcel.internal.classfile.Utility;
import java.io.ByteArrayInputStream;
import java.util.Hashtable;

/* loaded from: classes10.dex */
public class ClassLoader extends java.lang.ClassLoader {
    private Hashtable classes;
    private java.lang.ClassLoader deferTo;
    private String[] ignored_packages;
    private Repository repository;

    public ClassLoader() {
        this.classes = new Hashtable();
        this.ignored_packages = new String[]{"java.", "javax.", "sun."};
        this.repository = SyntheticRepository.getInstance();
        this.deferTo = java.lang.ClassLoader.getSystemClassLoader();
    }

    private void addIgnoredPkgs(String[] strArr) {
        int length = strArr.length;
        String[] strArr2 = this.ignored_packages;
        String[] strArr3 = new String[length + strArr2.length];
        System.arraycopy(strArr2, 0, strArr3, 0, strArr2.length);
        System.arraycopy(strArr, 0, strArr3, this.ignored_packages.length, strArr.length);
        this.ignored_packages = strArr3;
    }

    public JavaClass createClass(String str) {
        try {
            JavaClass parse = new ClassParser(new ByteArrayInputStream(Utility.decode(str.substring(str.indexOf("$$BCEL$$") + 8), true)), "foo").parse();
            ConstantPool constantPool = parse.getConstantPool();
            ((ConstantUtf8) constantPool.getConstant(((ConstantClass) constantPool.getConstant(parse.getClassNameIndex(), (byte) 7)).getNameIndex(), (byte) 1)).setBytes(str.replace('.', '/'));
            return parse;
        } catch (Throwable th) {
            th.printStackTrace();
            return null;
        }
    }

    @Override // java.lang.ClassLoader
    public Class loadClass(String str, boolean z) throws ClassNotFoundException {
        JavaClass modifyClass;
        Class<?> cls = (Class) this.classes.get(str);
        if (cls == null) {
            int i = 0;
            while (true) {
                String[] strArr = this.ignored_packages;
                if (i >= strArr.length) {
                    break;
                }
                if (str.startsWith(strArr[i])) {
                    cls = this.deferTo.loadClass(str);
                    break;
                }
                i++;
            }
            if (cls == null) {
                if (str.indexOf("$$BCEL$$") >= 0) {
                    modifyClass = createClass(str);
                } else {
                    JavaClass loadClass = this.repository.loadClass(str);
                    if (loadClass == null) {
                        throw new ClassNotFoundException(str);
                    }
                    modifyClass = modifyClass(loadClass);
                }
                if (modifyClass != null) {
                    byte[] bytes = modifyClass.getBytes();
                    cls = defineClass(str, bytes, 0, bytes.length);
                } else {
                    cls = Class.forName(str);
                }
            }
            if (z) {
                resolveClass(cls);
            }
        }
        this.classes.put(str, cls);
        return cls;
    }

    public JavaClass modifyClass(JavaClass javaClass) {
        return javaClass;
    }

    public ClassLoader(java.lang.ClassLoader classLoader) {
        this.classes = new Hashtable();
        this.ignored_packages = new String[]{"java.", "javax.", "sun."};
        this.repository = SyntheticRepository.getInstance();
        java.lang.ClassLoader.getSystemClassLoader();
        this.deferTo = classLoader;
        this.repository = new ClassLoaderRepository(classLoader);
    }

    public ClassLoader(String[] strArr) {
        this.classes = new Hashtable();
        this.ignored_packages = new String[]{"java.", "javax.", "sun."};
        this.repository = SyntheticRepository.getInstance();
        this.deferTo = java.lang.ClassLoader.getSystemClassLoader();
        addIgnoredPkgs(strArr);
    }

    public ClassLoader(java.lang.ClassLoader classLoader, String[] strArr) {
        this.classes = new Hashtable();
        this.ignored_packages = new String[]{"java.", "javax.", "sun."};
        this.repository = SyntheticRepository.getInstance();
        java.lang.ClassLoader.getSystemClassLoader();
        this.deferTo = classLoader;
        this.repository = new ClassLoaderRepository(classLoader);
        addIgnoredPkgs(strArr);
    }
}
