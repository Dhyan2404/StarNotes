package com.sun.org.apache.bcel.internal.classfile;

import com.sun.org.apache.bcel.internal.Constants;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.Serializable;
import org.apache.commons.collections4.IteratorUtils;

/* loaded from: classes10.dex */
public abstract class Constant implements Cloneable, Node, Serializable {
    protected byte tag;

    public Constant(byte b) {
        this.tag = b;
    }

    public static final Constant readConstant(DataInputStream dataInputStream) throws IOException, ClassFormatException {
        byte readByte = dataInputStream.readByte();
        switch (readByte) {
            case 1:
                return new ConstantUtf8(dataInputStream);
            case 2:
            default:
                throw new ClassFormatException("Invalid byte tag in constant pool: " + ((int) readByte));
            case 3:
                return new ConstantInteger(dataInputStream);
            case 4:
                return new ConstantFloat(dataInputStream);
            case 5:
                return new ConstantLong(dataInputStream);
            case 6:
                return new ConstantDouble(dataInputStream);
            case 7:
                return new ConstantClass(dataInputStream);
            case 8:
                return new ConstantString(dataInputStream);
            case 9:
                return new ConstantFieldref(dataInputStream);
            case 10:
                return new ConstantMethodref(dataInputStream);
            case 11:
                return new ConstantInterfaceMethodref(dataInputStream);
            case 12:
                return new ConstantNameAndType(dataInputStream);
        }
    }

    @Override // com.sun.org.apache.bcel.internal.classfile.Node
    public abstract void accept(Visitor visitor);

    public Object clone() throws CloneNotSupportedException {
        return super.clone();
    }

    public Constant copy() {
        try {
            return (Constant) super.clone();
        } catch (CloneNotSupportedException unused) {
            return null;
        }
    }

    public abstract void dump(DataOutputStream dataOutputStream) throws IOException;

    public final byte getTag() {
        return this.tag;
    }

    public String toString() {
        return Constants.CONSTANT_NAMES[this.tag] + IteratorUtils.f104923a + ((int) this.tag) + IteratorUtils.f104924b;
    }
}
