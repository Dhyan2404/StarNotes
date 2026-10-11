package com.sun.org.apache.bcel.internal.generic;

import com.sun.org.apache.bcel.internal.Constants;
import com.sun.org.apache.bcel.internal.classfile.AccessFlags;
import com.sun.org.apache.bcel.internal.classfile.Attribute;
import com.sun.org.apache.bcel.internal.classfile.Field;
import com.sun.org.apache.bcel.internal.classfile.JavaClass;
import com.sun.org.apache.bcel.internal.classfile.Method;
import com.sun.org.apache.bcel.internal.classfile.SourceFile;
import java.util.ArrayList;
import java.util.Iterator;
import org.apache.commons.compress.harmony.unpack200.AttributeLayout;

/* loaded from: classes10.dex */
public class ClassGen extends AccessFlags implements Cloneable {
    private ArrayList attribute_vec;
    private String class_name;
    private int class_name_index;

    /* renamed from: cp */
    private ConstantPoolGen f64065cp;
    private ArrayList field_vec;
    private String file_name;
    private ArrayList interface_vec;
    private int major;
    private ArrayList method_vec;
    private int minor;
    private ArrayList observers;
    private String super_class_name;
    private int superclass_name_index;

    public ClassGen(String str, String str2, String str3, int i, String[] strArr, ConstantPoolGen constantPoolGen) {
        this.class_name_index = -1;
        this.superclass_name_index = -1;
        this.major = 45;
        this.minor = 3;
        this.field_vec = new ArrayList();
        this.method_vec = new ArrayList();
        this.attribute_vec = new ArrayList();
        this.interface_vec = new ArrayList();
        this.class_name = str;
        this.super_class_name = str2;
        this.file_name = str3;
        this.access_flags = i;
        this.f64065cp = constantPoolGen;
        if (str3 != null) {
            addAttribute(new SourceFile(constantPoolGen.addUtf8(AttributeLayout.ATTRIBUTE_SOURCE_FILE), 2, constantPoolGen.addUtf8(str3), constantPoolGen.getConstantPool()));
        }
        this.class_name_index = constantPoolGen.addClass(str);
        this.superclass_name_index = constantPoolGen.addClass(str2);
        if (strArr != null) {
            for (String str4 : strArr) {
                addInterface(str4);
            }
        }
    }

    public void addAttribute(Attribute attribute) {
        this.attribute_vec.add(attribute);
    }

    public void addEmptyConstructor(int i) {
        InstructionList instructionList = new InstructionList();
        instructionList.append(InstructionConstants.THIS);
        instructionList.append(new INVOKESPECIAL(this.f64065cp.addMethodref(this.super_class_name, Constants.CONSTRUCTOR_NAME, "()V")));
        instructionList.append(InstructionConstants.RETURN);
        MethodGen methodGen = new MethodGen(i, Type.VOID, Type.NO_ARGS, null, Constants.CONSTRUCTOR_NAME, this.class_name, instructionList, this.f64065cp);
        methodGen.setMaxStack(1);
        addMethod(methodGen.getMethod());
    }

    public void addField(Field field) {
        this.field_vec.add(field);
    }

    public void addInterface(String str) {
        this.interface_vec.add(str);
    }

    public void addMethod(Method method) {
        this.method_vec.add(method);
    }

    public void addObserver(ClassObserver classObserver) {
        if (this.observers == null) {
            this.observers = new ArrayList();
        }
        this.observers.add(classObserver);
    }

    public Object clone() {
        try {
            return super.clone();
        } catch (CloneNotSupportedException e) {
            System.err.println(e);
            return null;
        }
    }

    public boolean containsField(Field field) {
        return this.field_vec.contains(field);
    }

    public Method containsMethod(String str, String str2) {
        Iterator it2 = this.method_vec.iterator();
        while (it2.hasNext()) {
            Method method = (Method) it2.next();
            if (method.getName().equals(str) && method.getSignature().equals(str2)) {
                return method;
            }
        }
        return null;
    }

    public Attribute[] getAttributes() {
        Attribute[] attributeArr = new Attribute[this.attribute_vec.size()];
        this.attribute_vec.toArray(attributeArr);
        return attributeArr;
    }

    public String getClassName() {
        return this.class_name;
    }

    public int getClassNameIndex() {
        return this.class_name_index;
    }

    public ConstantPoolGen getConstantPool() {
        return this.f64065cp;
    }

    public Field[] getFields() {
        Field[] fieldArr = new Field[this.field_vec.size()];
        this.field_vec.toArray(fieldArr);
        return fieldArr;
    }

    public String getFileName() {
        return this.file_name;
    }

    public String[] getInterfaceNames() {
        String[] strArr = new String[this.interface_vec.size()];
        this.interface_vec.toArray(strArr);
        return strArr;
    }

    public int[] getInterfaces() {
        int size = this.interface_vec.size();
        int[] iArr = new int[size];
        for (int i = 0; i < size; i++) {
            iArr[i] = this.f64065cp.addClass((String) this.interface_vec.get(i));
        }
        return iArr;
    }

    public JavaClass getJavaClass() {
        int[] interfaces = getInterfaces();
        Field[] fields = getFields();
        Method[] methods = getMethods();
        Attribute[] attributes = getAttributes();
        return new JavaClass(this.class_name_index, this.superclass_name_index, this.file_name, this.major, this.minor, this.access_flags, this.f64065cp.getFinalConstantPool(), interfaces, fields, methods, attributes);
    }

    public int getMajor() {
        return this.major;
    }

    public Method getMethodAt(int i) {
        return (Method) this.method_vec.get(i);
    }

    public Method[] getMethods() {
        Method[] methodArr = new Method[this.method_vec.size()];
        this.method_vec.toArray(methodArr);
        return methodArr;
    }

    public int getMinor() {
        return this.minor;
    }

    public String getSuperclassName() {
        return this.super_class_name;
    }

    public int getSuperclassNameIndex() {
        return this.superclass_name_index;
    }

    public void removeAttribute(Attribute attribute) {
        this.attribute_vec.remove(attribute);
    }

    public void removeField(Field field) {
        this.field_vec.remove(field);
    }

    public void removeInterface(String str) {
        this.interface_vec.remove(str);
    }

    public void removeMethod(Method method) {
        this.method_vec.remove(method);
    }

    public void removeObserver(ClassObserver classObserver) {
        ArrayList arrayList = this.observers;
        if (arrayList != null) {
            arrayList.remove(classObserver);
        }
    }

    public void replaceField(Field field, Field field2) {
        if (field2 == null) {
            throw new ClassGenException("Replacement method must not be null");
        }
        int indexOf = this.field_vec.indexOf(field);
        if (indexOf < 0) {
            this.field_vec.add(field2);
        } else {
            this.field_vec.set(indexOf, field2);
        }
    }

    public void replaceMethod(Method method, Method method2) {
        if (method2 == null) {
            throw new ClassGenException("Replacement method must not be null");
        }
        int indexOf = this.method_vec.indexOf(method);
        if (indexOf < 0) {
            this.method_vec.add(method2);
        } else {
            this.method_vec.set(indexOf, method2);
        }
    }

    public void setClassName(String str) {
        this.class_name = str.replace('/', '.');
        this.class_name_index = this.f64065cp.addClass(str);
    }

    public void setClassNameIndex(int i) {
        this.class_name_index = i;
        this.class_name = this.f64065cp.getConstantPool().getConstantString(i, (byte) 7).replace('/', '.');
    }

    public void setConstantPool(ConstantPoolGen constantPoolGen) {
        this.f64065cp = constantPoolGen;
    }

    public void setMajor(int i) {
        this.major = i;
    }

    public void setMethodAt(Method method, int i) {
        this.method_vec.set(i, method);
    }

    public void setMethods(Method[] methodArr) {
        this.method_vec.clear();
        for (Method method : methodArr) {
            addMethod(method);
        }
    }

    public void setMinor(int i) {
        this.minor = i;
    }

    public void setSuperclassName(String str) {
        this.super_class_name = str.replace('/', '.');
        this.superclass_name_index = this.f64065cp.addClass(str);
    }

    public void setSuperclassNameIndex(int i) {
        this.superclass_name_index = i;
        this.super_class_name = this.f64065cp.getConstantPool().getConstantString(i, (byte) 7).replace('/', '.');
    }

    public void update() {
        ArrayList arrayList = this.observers;
        if (arrayList != null) {
            Iterator it2 = arrayList.iterator();
            while (it2.hasNext()) {
                ((ClassObserver) it2.next()).notify(this);
            }
        }
    }

    public Field containsField(String str) {
        Iterator it2 = this.field_vec.iterator();
        while (it2.hasNext()) {
            Field field = (Field) it2.next();
            if (field.getName().equals(str)) {
                return field;
            }
        }
        return null;
    }

    public ClassGen(String str, String str2, String str3, int i, String[] strArr) {
        this(str, str2, str3, i, strArr, new ConstantPoolGen());
    }

    public ClassGen(JavaClass javaClass) {
        this.class_name_index = -1;
        this.superclass_name_index = -1;
        this.major = 45;
        this.minor = 3;
        this.field_vec = new ArrayList();
        this.method_vec = new ArrayList();
        this.attribute_vec = new ArrayList();
        this.interface_vec = new ArrayList();
        this.class_name_index = javaClass.getClassNameIndex();
        this.superclass_name_index = javaClass.getSuperclassNameIndex();
        this.class_name = javaClass.getClassName();
        this.super_class_name = javaClass.getSuperclassName();
        this.file_name = javaClass.getSourceFileName();
        this.access_flags = javaClass.getAccessFlags();
        this.f64065cp = new ConstantPoolGen(javaClass.getConstantPool());
        this.major = javaClass.getMajor();
        this.minor = javaClass.getMinor();
        Attribute[] attributes = javaClass.getAttributes();
        Method[] methods = javaClass.getMethods();
        Field[] fields = javaClass.getFields();
        for (String str : javaClass.getInterfaceNames()) {
            addInterface(str);
        }
        for (Attribute attribute : attributes) {
            addAttribute(attribute);
        }
        for (Method method : methods) {
            addMethod(method);
        }
        for (Field field : fields) {
            addField(field);
        }
    }
}
