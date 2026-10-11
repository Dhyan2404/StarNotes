package com.sun.org.apache.bcel.internal.generic;

import com.sun.org.apache.bcel.internal.classfile.AccessFlags;
import com.sun.org.apache.bcel.internal.classfile.Attribute;
import java.util.ArrayList;

/* loaded from: classes10.dex */
public abstract class FieldGenOrMethodGen extends AccessFlags implements NamedAndTyped, Cloneable {
    private ArrayList attribute_vec = new ArrayList();

    /* renamed from: cp */
    protected ConstantPoolGen f64066cp;
    protected String name;
    protected Type type;

    public void addAttribute(Attribute attribute) {
        this.attribute_vec.add(attribute);
    }

    public Object clone() {
        try {
            return super.clone();
        } catch (CloneNotSupportedException e) {
            System.err.println(e);
            return null;
        }
    }

    public Attribute[] getAttributes() {
        Attribute[] attributeArr = new Attribute[this.attribute_vec.size()];
        this.attribute_vec.toArray(attributeArr);
        return attributeArr;
    }

    public ConstantPoolGen getConstantPool() {
        return this.f64066cp;
    }

    @Override // com.sun.org.apache.bcel.internal.generic.NamedAndTyped
    public String getName() {
        return this.name;
    }

    public abstract String getSignature();

    @Override // com.sun.org.apache.bcel.internal.generic.NamedAndTyped
    public Type getType() {
        return this.type;
    }

    public void removeAttribute(Attribute attribute) {
        this.attribute_vec.remove(attribute);
    }

    public void removeAttributes() {
        this.attribute_vec.clear();
    }

    public void setConstantPool(ConstantPoolGen constantPoolGen) {
        this.f64066cp = constantPoolGen;
    }

    @Override // com.sun.org.apache.bcel.internal.generic.NamedAndTyped
    public void setName(String str) {
        this.name = str;
    }

    @Override // com.sun.org.apache.bcel.internal.generic.NamedAndTyped
    public void setType(Type type) {
        if (type.getType() != 16) {
            this.type = type;
            return;
        }
        throw new IllegalArgumentException("Type can not be " + type);
    }
}
