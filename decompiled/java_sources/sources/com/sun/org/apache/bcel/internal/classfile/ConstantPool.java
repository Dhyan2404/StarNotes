package com.sun.org.apache.bcel.internal.classfile;

import com.google.android.material.motion.MotionUtils;
import com.sun.org.apache.bcel.internal.Constants;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.Serializable;

/* loaded from: classes10.dex */
public class ConstantPool implements Cloneable, Node, Serializable {
    private Constant[] constant_pool;
    private int constant_pool_count;

    public ConstantPool(Constant[] constantArr) {
        setConstantPool(constantArr);
    }

    private static final String escape(String str) {
        int length = str.length();
        StringBuffer stringBuffer = new StringBuffer(length + 5);
        char[] charArray = str.toCharArray();
        for (int i = 0; i < length; i++) {
            char c = charArray[i];
            if (c == '\r') {
                stringBuffer.append("\\r");
            } else if (c != '\"') {
                switch (c) {
                    case '\b':
                        stringBuffer.append("\\b");
                        break;
                    case '\t':
                        stringBuffer.append("\\t");
                        break;
                    case '\n':
                        stringBuffer.append("\\n");
                        break;
                    default:
                        stringBuffer.append(c);
                        break;
                }
            } else {
                stringBuffer.append("\\\"");
            }
        }
        return stringBuffer.toString();
    }

    @Override // com.sun.org.apache.bcel.internal.classfile.Node
    public void accept(Visitor visitor) {
        visitor.visitConstantPool(this);
    }

    public String constantToString(Constant constant) throws ClassFormatException {
        byte tag = constant.getTag();
        switch (tag) {
            case 1:
                return ((ConstantUtf8) constant).getBytes();
            case 2:
            default:
                throw new RuntimeException("Unknown constant type " + ((int) tag));
            case 3:
                return "" + ((ConstantInteger) constant).getBytes();
            case 4:
                return "" + ((ConstantFloat) constant).getBytes();
            case 5:
                return "" + ((ConstantLong) constant).getBytes();
            case 6:
                return "" + ((ConstantDouble) constant).getBytes();
            case 7:
                return Utility.compactClassName(((ConstantUtf8) getConstant(((ConstantClass) constant).getNameIndex(), (byte) 1)).getBytes(), false);
            case 8:
                return "\"" + escape(((ConstantUtf8) getConstant(((ConstantString) constant).getStringIndex(), (byte) 1)).getBytes()) + "\"";
            case 9:
            case 10:
            case 11:
                StringBuilder sb = new StringBuilder();
                ConstantCP constantCP = (ConstantCP) constant;
                sb.append(constantToString(constantCP.getClassIndex(), (byte) 7));
                sb.append(".");
                sb.append(constantToString(constantCP.getNameAndTypeIndex(), (byte) 12));
                return sb.toString();
            case 12:
                StringBuilder sb2 = new StringBuilder();
                ConstantNameAndType constantNameAndType = (ConstantNameAndType) constant;
                sb2.append(constantToString(constantNameAndType.getNameIndex(), (byte) 1));
                sb2.append(" ");
                sb2.append(constantToString(constantNameAndType.getSignatureIndex(), (byte) 1));
                return sb2.toString();
        }
    }

    public ConstantPool copy() {
        ConstantPool constantPool;
        try {
            constantPool = (ConstantPool) clone();
        } catch (CloneNotSupportedException unused) {
            constantPool = null;
        }
        constantPool.constant_pool = new Constant[this.constant_pool_count];
        for (int i = 1; i < this.constant_pool_count; i++) {
            Constant constant = this.constant_pool[i];
            if (constant != null) {
                constantPool.constant_pool[i] = constant.copy();
            }
        }
        return constantPool;
    }

    public void dump(DataOutputStream dataOutputStream) throws IOException {
        dataOutputStream.writeShort(this.constant_pool_count);
        for (int i = 1; i < this.constant_pool_count; i++) {
            Constant constant = this.constant_pool[i];
            if (constant != null) {
                constant.dump(dataOutputStream);
            }
        }
    }

    public Constant getConstant(int i) {
        Constant[] constantArr = this.constant_pool;
        if (i < constantArr.length && i >= 0) {
            return constantArr[i];
        }
        throw new ClassFormatException("Invalid constant pool reference: " + i + ". Constant pool size is: " + this.constant_pool.length);
    }

    public Constant[] getConstantPool() {
        return this.constant_pool;
    }

    public String getConstantString(int i, byte b) throws ClassFormatException {
        int nameIndex;
        Constant constant = getConstant(i, b);
        if (b == 7) {
            nameIndex = ((ConstantClass) constant).getNameIndex();
        } else {
            if (b != 8) {
                throw new RuntimeException("getConstantString called with illegal tag " + ((int) b));
            }
            nameIndex = ((ConstantString) constant).getStringIndex();
        }
        return ((ConstantUtf8) getConstant(nameIndex, (byte) 1)).getBytes();
    }

    public int getLength() {
        return this.constant_pool_count;
    }

    public void setConstant(int i, Constant constant) {
        this.constant_pool[i] = constant;
    }

    public void setConstantPool(Constant[] constantArr) {
        this.constant_pool = constantArr;
        this.constant_pool_count = constantArr == null ? 0 : constantArr.length;
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        for (int i = 1; i < this.constant_pool_count; i++) {
            stringBuffer.append(i + MotionUtils.f31762d + this.constant_pool[i] + "\n");
        }
        return stringBuffer.toString();
    }

    public ConstantPool(DataInputStream dataInputStream) throws IOException, ClassFormatException {
        int readUnsignedShort = dataInputStream.readUnsignedShort();
        this.constant_pool_count = readUnsignedShort;
        this.constant_pool = new Constant[readUnsignedShort];
        int i = 1;
        while (i < this.constant_pool_count) {
            this.constant_pool[i] = Constant.readConstant(dataInputStream);
            byte tag = this.constant_pool[i].getTag();
            if (tag == 6 || tag == 5) {
                i++;
            }
            i++;
        }
    }

    public Constant getConstant(int i, byte b) throws ClassFormatException {
        Constant constant = getConstant(i);
        if (constant != null) {
            if (constant.getTag() == b) {
                return constant;
            }
            throw new ClassFormatException("Expected class `" + Constants.CONSTANT_NAMES[b] + "' at index " + i + " and got " + constant);
        }
        throw new ClassFormatException("Constant pool at index " + i + " is null.");
    }

    public String constantToString(int i, byte b) throws ClassFormatException {
        return constantToString(getConstant(i, b));
    }
}
