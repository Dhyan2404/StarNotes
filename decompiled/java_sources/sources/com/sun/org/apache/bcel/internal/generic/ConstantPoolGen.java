package com.sun.org.apache.bcel.internal.generic;

import com.google.android.material.motion.MotionUtils;
import com.sun.org.apache.bcel.internal.classfile.Constant;
import com.sun.org.apache.bcel.internal.classfile.ConstantCP;
import com.sun.org.apache.bcel.internal.classfile.ConstantClass;
import com.sun.org.apache.bcel.internal.classfile.ConstantDouble;
import com.sun.org.apache.bcel.internal.classfile.ConstantFieldref;
import com.sun.org.apache.bcel.internal.classfile.ConstantFloat;
import com.sun.org.apache.bcel.internal.classfile.ConstantInteger;
import com.sun.org.apache.bcel.internal.classfile.ConstantInterfaceMethodref;
import com.sun.org.apache.bcel.internal.classfile.ConstantLong;
import com.sun.org.apache.bcel.internal.classfile.ConstantMethodref;
import com.sun.org.apache.bcel.internal.classfile.ConstantNameAndType;
import com.sun.org.apache.bcel.internal.classfile.ConstantPool;
import com.sun.org.apache.bcel.internal.classfile.ConstantString;
import com.sun.org.apache.bcel.internal.classfile.ConstantUtf8;
import java.io.Serializable;
import java.util.HashMap;

/* loaded from: classes10.dex */
public class ConstantPoolGen implements Serializable {
    private static final String FIELDREF_DELIM = "&";
    private static final String IMETHODREF_DELIM = "#";
    private static final String METHODREF_DELIM = ":";
    private static final String NAT_DELIM = "%";
    private HashMap class_table;
    protected Constant[] constants;
    private HashMap cp_table;
    protected int index;
    private HashMap n_a_t_table;
    protected int size;
    private HashMap string_table;
    private HashMap utf8_table;

    /* loaded from: classes10.dex */
    public static class Index implements Serializable {
        int index;

        public Index(int i) {
            this.index = i;
        }
    }

    public ConstantPoolGen(Constant[] constantArr) {
        String str;
        this.size = 1024;
        this.constants = new Constant[1024];
        this.index = 1;
        this.string_table = new HashMap();
        this.class_table = new HashMap();
        this.utf8_table = new HashMap();
        this.n_a_t_table = new HashMap();
        this.cp_table = new HashMap();
        if (constantArr.length > this.size) {
            int length = constantArr.length;
            this.size = length;
            this.constants = new Constant[length];
        }
        System.arraycopy(constantArr, 0, this.constants, 0, constantArr.length);
        if (constantArr.length > 0) {
            this.index = constantArr.length;
        }
        for (int i = 1; i < this.index; i++) {
            Constant[] constantArr2 = this.constants;
            Constant constant = constantArr2[i];
            if (constant instanceof ConstantString) {
                this.string_table.put(((ConstantUtf8) constantArr2[((ConstantString) constant).getStringIndex()]).getBytes(), new Index(i));
            } else if (constant instanceof ConstantClass) {
                this.class_table.put(((ConstantUtf8) constantArr2[((ConstantClass) constant).getNameIndex()]).getBytes(), new Index(i));
            } else if (constant instanceof ConstantNameAndType) {
                ConstantNameAndType constantNameAndType = (ConstantNameAndType) constant;
                ConstantUtf8 constantUtf8 = (ConstantUtf8) constantArr2[constantNameAndType.getNameIndex()];
                ConstantUtf8 constantUtf82 = (ConstantUtf8) this.constants[constantNameAndType.getSignatureIndex()];
                this.n_a_t_table.put(constantUtf8.getBytes() + NAT_DELIM + constantUtf82.getBytes(), new Index(i));
            } else if (constant instanceof ConstantUtf8) {
                this.utf8_table.put(((ConstantUtf8) constant).getBytes(), new Index(i));
            } else if (constant instanceof ConstantCP) {
                ConstantCP constantCP = (ConstantCP) constant;
                ConstantClass constantClass = (ConstantClass) constantArr2[constantCP.getClassIndex()];
                ConstantNameAndType constantNameAndType2 = (ConstantNameAndType) this.constants[constantCP.getNameAndTypeIndex()];
                String replace = ((ConstantUtf8) this.constants[constantClass.getNameIndex()]).getBytes().replace('/', '.');
                String bytes = ((ConstantUtf8) this.constants[constantNameAndType2.getNameIndex()]).getBytes();
                String bytes2 = ((ConstantUtf8) this.constants[constantNameAndType2.getSignatureIndex()]).getBytes();
                if (constant instanceof ConstantInterfaceMethodref) {
                    str = "#";
                } else {
                    str = constant instanceof ConstantFieldref ? "&" : ":";
                }
                this.cp_table.put(replace + str + bytes + str + bytes2, new Index(i));
            }
        }
    }

    private int addClass_(String str) {
        int lookupClass = lookupClass(str);
        if (lookupClass != -1) {
            return lookupClass;
        }
        adjustSize();
        ConstantClass constantClass = new ConstantClass(addUtf8(str));
        int i = this.index;
        Constant[] constantArr = this.constants;
        this.index = i + 1;
        constantArr[i] = constantClass;
        this.class_table.put(str, new Index(i));
        return i;
    }

    public int addArrayClass(ArrayType arrayType) {
        return addClass_(arrayType.getSignature());
    }

    public int addClass(String str) {
        return addClass_(str.replace('.', '/'));
    }

    public int addConstant(Constant constant, ConstantPoolGen constantPoolGen) {
        Constant[] constantPool = constantPoolGen.getConstantPool().getConstantPool();
        switch (constant.getTag()) {
            case 1:
                return addUtf8(((ConstantUtf8) constant).getBytes());
            case 2:
            default:
                throw new RuntimeException("Unknown constant type " + constant);
            case 3:
                return addInteger(((ConstantInteger) constant).getBytes());
            case 4:
                return addFloat(((ConstantFloat) constant).getBytes());
            case 5:
                return addLong(((ConstantLong) constant).getBytes());
            case 6:
                return addDouble(((ConstantDouble) constant).getBytes());
            case 7:
                return addClass(((ConstantUtf8) constantPool[((ConstantClass) constant).getNameIndex()]).getBytes());
            case 8:
                return addString(((ConstantUtf8) constantPool[((ConstantString) constant).getStringIndex()]).getBytes());
            case 9:
            case 10:
            case 11:
                ConstantCP constantCP = (ConstantCP) constant;
                ConstantClass constantClass = (ConstantClass) constantPool[constantCP.getClassIndex()];
                ConstantNameAndType constantNameAndType = (ConstantNameAndType) constantPool[constantCP.getNameAndTypeIndex()];
                String replace = ((ConstantUtf8) constantPool[constantClass.getNameIndex()]).getBytes().replace('/', '.');
                String bytes = ((ConstantUtf8) constantPool[constantNameAndType.getNameIndex()]).getBytes();
                String bytes2 = ((ConstantUtf8) constantPool[constantNameAndType.getSignatureIndex()]).getBytes();
                switch (constant.getTag()) {
                    case 9:
                        return addFieldref(replace, bytes, bytes2);
                    case 10:
                        return addMethodref(replace, bytes, bytes2);
                    case 11:
                        return addInterfaceMethodref(replace, bytes, bytes2);
                    default:
                        throw new RuntimeException("Unknown constant type " + constant);
                }
            case 12:
                ConstantNameAndType constantNameAndType2 = (ConstantNameAndType) constant;
                return addNameAndType(((ConstantUtf8) constantPool[constantNameAndType2.getNameIndex()]).getBytes(), ((ConstantUtf8) constantPool[constantNameAndType2.getSignatureIndex()]).getBytes());
        }
    }

    public int addDouble(double d) {
        int lookupDouble = lookupDouble(d);
        if (lookupDouble != -1) {
            return lookupDouble;
        }
        adjustSize();
        int i = this.index;
        this.constants[i] = new ConstantDouble(d);
        this.index += 2;
        return i;
    }

    public int addFieldref(String str, String str2, String str3) {
        int lookupFieldref = lookupFieldref(str, str2, str3);
        if (lookupFieldref != -1) {
            return lookupFieldref;
        }
        adjustSize();
        int addClass = addClass(str);
        int addNameAndType = addNameAndType(str2, str3);
        int i = this.index;
        Constant[] constantArr = this.constants;
        this.index = i + 1;
        constantArr[i] = new ConstantFieldref(addClass, addNameAndType);
        this.cp_table.put(str + "&" + str2 + "&" + str3, new Index(i));
        return i;
    }

    public int addFloat(float f) {
        int lookupFloat = lookupFloat(f);
        if (lookupFloat != -1) {
            return lookupFloat;
        }
        adjustSize();
        int i = this.index;
        Constant[] constantArr = this.constants;
        this.index = i + 1;
        constantArr[i] = new ConstantFloat(f);
        return i;
    }

    public int addInteger(int i) {
        int lookupInteger = lookupInteger(i);
        if (lookupInteger != -1) {
            return lookupInteger;
        }
        adjustSize();
        int i2 = this.index;
        Constant[] constantArr = this.constants;
        this.index = i2 + 1;
        constantArr[i2] = new ConstantInteger(i);
        return i2;
    }

    public int addInterfaceMethodref(String str, String str2, String str3) {
        int lookupInterfaceMethodref = lookupInterfaceMethodref(str, str2, str3);
        if (lookupInterfaceMethodref != -1) {
            return lookupInterfaceMethodref;
        }
        adjustSize();
        int addClass = addClass(str);
        int addNameAndType = addNameAndType(str2, str3);
        int i = this.index;
        Constant[] constantArr = this.constants;
        this.index = i + 1;
        constantArr[i] = new ConstantInterfaceMethodref(addClass, addNameAndType);
        this.cp_table.put(str + "#" + str2 + "#" + str3, new Index(i));
        return i;
    }

    public int addLong(long j) {
        int lookupLong = lookupLong(j);
        if (lookupLong != -1) {
            return lookupLong;
        }
        adjustSize();
        int i = this.index;
        this.constants[i] = new ConstantLong(j);
        this.index += 2;
        return i;
    }

    public int addMethodref(String str, String str2, String str3) {
        int lookupMethodref = lookupMethodref(str, str2, str3);
        if (lookupMethodref != -1) {
            return lookupMethodref;
        }
        adjustSize();
        int addNameAndType = addNameAndType(str2, str3);
        int addClass = addClass(str);
        int i = this.index;
        Constant[] constantArr = this.constants;
        this.index = i + 1;
        constantArr[i] = new ConstantMethodref(addClass, addNameAndType);
        this.cp_table.put(str + ":" + str2 + ":" + str3, new Index(i));
        return i;
    }

    public int addNameAndType(String str, String str2) {
        int lookupNameAndType = lookupNameAndType(str, str2);
        if (lookupNameAndType != -1) {
            return lookupNameAndType;
        }
        adjustSize();
        int addUtf8 = addUtf8(str);
        int addUtf82 = addUtf8(str2);
        int i = this.index;
        Constant[] constantArr = this.constants;
        this.index = i + 1;
        constantArr[i] = new ConstantNameAndType(addUtf8, addUtf82);
        this.n_a_t_table.put(str + NAT_DELIM + str2, new Index(i));
        return i;
    }

    public int addString(String str) {
        int lookupString = lookupString(str);
        if (lookupString != -1) {
            return lookupString;
        }
        int addUtf8 = addUtf8(str);
        adjustSize();
        ConstantString constantString = new ConstantString(addUtf8);
        int i = this.index;
        Constant[] constantArr = this.constants;
        this.index = i + 1;
        constantArr[i] = constantString;
        this.string_table.put(str, new Index(i));
        return i;
    }

    public int addUtf8(String str) {
        int lookupUtf8 = lookupUtf8(str);
        if (lookupUtf8 != -1) {
            return lookupUtf8;
        }
        adjustSize();
        int i = this.index;
        Constant[] constantArr = this.constants;
        this.index = i + 1;
        constantArr[i] = new ConstantUtf8(str);
        this.utf8_table.put(str, new Index(i));
        return i;
    }

    public void adjustSize() {
        int i = this.index;
        int i2 = i + 3;
        int i3 = this.size;
        if (i2 >= i3) {
            Constant[] constantArr = this.constants;
            int i4 = i3 * 2;
            this.size = i4;
            Constant[] constantArr2 = new Constant[i4];
            this.constants = constantArr2;
            System.arraycopy(constantArr, 0, constantArr2, 0, i);
        }
    }

    public Constant getConstant(int i) {
        return this.constants[i];
    }

    public ConstantPool getConstantPool() {
        return new ConstantPool(this.constants);
    }

    public ConstantPool getFinalConstantPool() {
        int i = this.index;
        Constant[] constantArr = new Constant[i];
        System.arraycopy(this.constants, 0, constantArr, 0, i);
        return new ConstantPool(constantArr);
    }

    public int getSize() {
        return this.index;
    }

    public int lookupClass(String str) {
        Index index = (Index) this.class_table.get(str.replace('.', '/'));
        if (index != null) {
            return index.index;
        }
        return -1;
    }

    public int lookupDouble(double d) {
        long doubleToLongBits = Double.doubleToLongBits(d);
        for (int i = 1; i < this.index; i++) {
            Constant constant = this.constants[i];
            if ((constant instanceof ConstantDouble) && Double.doubleToLongBits(((ConstantDouble) constant).getBytes()) == doubleToLongBits) {
                return i;
            }
        }
        return -1;
    }

    public int lookupFieldref(String str, String str2, String str3) {
        Index index = (Index) this.cp_table.get(str + "&" + str2 + "&" + str3);
        if (index != null) {
            return index.index;
        }
        return -1;
    }

    public int lookupFloat(float f) {
        int floatToIntBits = Float.floatToIntBits(f);
        for (int i = 1; i < this.index; i++) {
            Constant constant = this.constants[i];
            if ((constant instanceof ConstantFloat) && Float.floatToIntBits(((ConstantFloat) constant).getBytes()) == floatToIntBits) {
                return i;
            }
        }
        return -1;
    }

    public int lookupInteger(int i) {
        for (int i2 = 1; i2 < this.index; i2++) {
            Constant constant = this.constants[i2];
            if ((constant instanceof ConstantInteger) && ((ConstantInteger) constant).getBytes() == i) {
                return i2;
            }
        }
        return -1;
    }

    public int lookupInterfaceMethodref(String str, String str2, String str3) {
        Index index = (Index) this.cp_table.get(str + "#" + str2 + "#" + str3);
        if (index != null) {
            return index.index;
        }
        return -1;
    }

    public int lookupLong(long j) {
        for (int i = 1; i < this.index; i++) {
            Constant constant = this.constants[i];
            if ((constant instanceof ConstantLong) && ((ConstantLong) constant).getBytes() == j) {
                return i;
            }
        }
        return -1;
    }

    public int lookupMethodref(String str, String str2, String str3) {
        Index index = (Index) this.cp_table.get(str + ":" + str2 + ":" + str3);
        if (index != null) {
            return index.index;
        }
        return -1;
    }

    public int lookupNameAndType(String str, String str2) {
        Index index = (Index) this.n_a_t_table.get(str + NAT_DELIM + str2);
        if (index != null) {
            return index.index;
        }
        return -1;
    }

    public int lookupString(String str) {
        Index index = (Index) this.string_table.get(str);
        if (index != null) {
            return index.index;
        }
        return -1;
    }

    public int lookupUtf8(String str) {
        Index index = (Index) this.utf8_table.get(str);
        if (index != null) {
            return index.index;
        }
        return -1;
    }

    public void setConstant(int i, Constant constant) {
        this.constants[i] = constant;
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        for (int i = 1; i < this.index; i++) {
            stringBuffer.append(i + MotionUtils.f31762d + this.constants[i] + "\n");
        }
        return stringBuffer.toString();
    }

    public int addClass(ObjectType objectType) {
        return addClass(objectType.getClassName());
    }

    public int lookupInterfaceMethodref(MethodGen methodGen) {
        return lookupInterfaceMethodref(methodGen.getClassName(), methodGen.getName(), methodGen.getSignature());
    }

    public int lookupMethodref(MethodGen methodGen) {
        return lookupMethodref(methodGen.getClassName(), methodGen.getName(), methodGen.getSignature());
    }

    public int addInterfaceMethodref(MethodGen methodGen) {
        return addInterfaceMethodref(methodGen.getClassName(), methodGen.getName(), methodGen.getSignature());
    }

    public int addMethodref(MethodGen methodGen) {
        return addMethodref(methodGen.getClassName(), methodGen.getName(), methodGen.getSignature());
    }

    public ConstantPoolGen(ConstantPool constantPool) {
        this(constantPool.getConstantPool());
    }

    public ConstantPoolGen() {
        this.size = 1024;
        this.constants = new Constant[1024];
        this.index = 1;
        this.string_table = new HashMap();
        this.class_table = new HashMap();
        this.utf8_table = new HashMap();
        this.n_a_t_table = new HashMap();
        this.cp_table = new HashMap();
    }
}
