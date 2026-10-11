package com.sun.org.apache.bcel.internal.generic;

import com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants;
import com.sun.org.apache.bcel.internal.classfile.Attribute;
import com.sun.org.apache.bcel.internal.classfile.ConstantObject;
import com.sun.org.apache.bcel.internal.classfile.ConstantPool;
import com.sun.org.apache.bcel.internal.classfile.ConstantValue;
import com.sun.org.apache.bcel.internal.classfile.Field;
import com.sun.org.apache.bcel.internal.classfile.Utility;
import java.util.ArrayList;
import java.util.Iterator;
import org.apache.commons.compress.harmony.unpack200.AttributeLayout;

/* loaded from: classes10.dex */
public class FieldGen extends FieldGenOrMethodGen {
    private ArrayList observers;
    private Object value;

    public FieldGen(int i, Type type, String str, ConstantPoolGen constantPoolGen) {
        this.value = null;
        setAccessFlags(i);
        setType(type);
        setName(str);
        setConstantPool(constantPoolGen);
    }

    private int addConstant() {
        byte type = this.type.getType();
        if (type == 14) {
            return this.f64066cp.addString((String) this.value);
        }
        switch (type) {
            case 4:
            case 5:
            case 8:
            case 9:
            case 10:
                return this.f64066cp.addInteger(((Integer) this.value).intValue());
            case 6:
                return this.f64066cp.addFloat(((Float) this.value).floatValue());
            case 7:
                return this.f64066cp.addDouble(((Double) this.value).doubleValue());
            case 11:
                return this.f64066cp.addLong(((Long) this.value).longValue());
            default:
                throw new RuntimeException("Oops: Unhandled : " + ((int) this.type.getType()));
        }
    }

    private void checkType(Type type) {
        if (this.type == null) {
            throw new ClassGenException("You haven't defined the type of the field yet");
        }
        if (!isFinal()) {
            throw new ClassGenException("Only final fields may have an initial value!");
        }
        if (this.type.equals(type)) {
            return;
        }
        throw new ClassGenException("Types are not compatible: " + this.type + " vs. " + type);
    }

    private void setValue(int i) {
        ConstantPool constantPool = this.f64066cp.getConstantPool();
        this.value = ((ConstantObject) constantPool.getConstant(i)).getConstantValue(constantPool);
    }

    public void addObserver(FieldObserver fieldObserver) {
        if (this.observers == null) {
            this.observers = new ArrayList();
        }
        this.observers.add(fieldObserver);
    }

    public void cancelInitValue() {
        this.value = null;
    }

    public FieldGen copy(ConstantPoolGen constantPoolGen) {
        FieldGen fieldGen = (FieldGen) clone();
        fieldGen.setConstantPool(constantPoolGen);
        return fieldGen;
    }

    public Field getField() {
        String signature = getSignature();
        int addUtf8 = this.f64066cp.addUtf8(this.name);
        int addUtf82 = this.f64066cp.addUtf8(signature);
        if (this.value != null) {
            checkType(this.type);
            addAttribute(new ConstantValue(this.f64066cp.addUtf8(AttributeLayout.ATTRIBUTE_CONSTANT_VALUE), 2, addConstant(), this.f64066cp.getConstantPool()));
        }
        return new Field(this.access_flags, addUtf8, addUtf82, getAttributes(), this.f64066cp.getConstantPool());
    }

    public String getInitValue() {
        Object obj = this.value;
        if (obj != null) {
            return obj.toString();
        }
        return null;
    }

    @Override // com.sun.org.apache.bcel.internal.generic.FieldGenOrMethodGen
    public String getSignature() {
        return this.type.getSignature();
    }

    public void removeObserver(FieldObserver fieldObserver) {
        ArrayList arrayList = this.observers;
        if (arrayList != null) {
            arrayList.remove(fieldObserver);
        }
    }

    public void setInitValue(String str) {
        checkType(new ObjectType("java.lang.String"));
        if (str != null) {
            this.value = str;
        }
    }

    public final String toString() {
        String accessToString = Utility.accessToString(this.access_flags);
        String str = "";
        if (!accessToString.equals("")) {
            str = accessToString + " ";
        }
        StringBuffer stringBuffer = new StringBuffer(str + this.type.toString() + " " + getName());
        String initValue = getInitValue();
        if (initValue != null) {
            stringBuffer.append(CloudStorageConstants.OPERATION_EQUAL + initValue);
        }
        return stringBuffer.toString();
    }

    public void update() {
        ArrayList arrayList = this.observers;
        if (arrayList != null) {
            Iterator it2 = arrayList.iterator();
            while (it2.hasNext()) {
                ((FieldObserver) it2.next()).notify(this);
            }
        }
    }

    public void setInitValue(long j) {
        checkType(Type.LONG);
        if (j != 0) {
            this.value = new Long(j);
        }
    }

    public void setInitValue(int i) {
        checkType(Type.INT);
        if (i != 0) {
            this.value = new Integer(i);
        }
    }

    public FieldGen(Field field, ConstantPoolGen constantPoolGen) {
        this(field.getAccessFlags(), Type.getType(field.getSignature()), field.getName(), constantPoolGen);
        for (Attribute attribute : field.getAttributes()) {
            if (attribute instanceof ConstantValue) {
                setValue(((ConstantValue) attribute).getConstantValueIndex());
            } else {
                addAttribute(attribute);
            }
        }
    }

    public void setInitValue(short s) {
        checkType(Type.SHORT);
        if (s != 0) {
            this.value = new Integer(s);
        }
    }

    public void setInitValue(char c) {
        checkType(Type.CHAR);
        if (c != 0) {
            this.value = new Integer(c);
        }
    }

    public void setInitValue(byte b) {
        checkType(Type.BYTE);
        if (b != 0) {
            this.value = new Integer(b);
        }
    }

    public void setInitValue(boolean z) {
        checkType(Type.BOOLEAN);
        if (z) {
            this.value = new Integer(1);
        }
    }

    public void setInitValue(float f) {
        checkType(Type.FLOAT);
        if (f != 0.0d) {
            this.value = new Float(f);
        }
    }

    public void setInitValue(double d) {
        checkType(Type.DOUBLE);
        if (d != 0.0d) {
            this.value = new Double(d);
        }
    }
}
