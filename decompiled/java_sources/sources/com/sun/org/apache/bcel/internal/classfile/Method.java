package com.sun.org.apache.bcel.internal.classfile;

import com.sun.org.apache.bcel.internal.generic.Type;
import java.io.DataInputStream;
import java.io.IOException;
import org.apache.commons.collections4.IteratorUtils;

/* loaded from: classes10.dex */
public final class Method extends FieldOrMethod {
    public Method() {
    }

    @Override // com.sun.org.apache.bcel.internal.classfile.Node
    public void accept(Visitor visitor) {
        visitor.visitMethod(this);
    }

    public final Method copy(ConstantPool constantPool) {
        return (Method) copy_(constantPool);
    }

    public Type[] getArgumentTypes() {
        return Type.getArgumentTypes(getSignature());
    }

    public final Code getCode() {
        for (int i = 0; i < this.attributes_count; i++) {
            Attribute attribute = this.attributes[i];
            if (attribute instanceof Code) {
                return (Code) attribute;
            }
        }
        return null;
    }

    public final ExceptionTable getExceptionTable() {
        for (int i = 0; i < this.attributes_count; i++) {
            Attribute attribute = this.attributes[i];
            if (attribute instanceof ExceptionTable) {
                return (ExceptionTable) attribute;
            }
        }
        return null;
    }

    public final LineNumberTable getLineNumberTable() {
        Code code = getCode();
        if (code != null) {
            return code.getLineNumberTable();
        }
        return null;
    }

    public final LocalVariableTable getLocalVariableTable() {
        Code code = getCode();
        if (code != null) {
            return code.getLocalVariableTable();
        }
        return null;
    }

    public Type getReturnType() {
        return Type.getReturnType(getSignature());
    }

    public final String toString() {
        StringBuffer stringBuffer = new StringBuffer(Utility.methodSignatureToString(((ConstantUtf8) this.constant_pool.getConstant(this.signature_index, (byte) 1)).getBytes(), ((ConstantUtf8) this.constant_pool.getConstant(this.name_index, (byte) 1)).getBytes(), Utility.accessToString(this.access_flags), true, getLocalVariableTable()));
        for (int i = 0; i < this.attributes_count; i++) {
            Attribute attribute = this.attributes[i];
            if (!(attribute instanceof Code) && !(attribute instanceof ExceptionTable)) {
                stringBuffer.append(" [" + attribute.toString() + IteratorUtils.f104924b);
            }
        }
        ExceptionTable exceptionTable = getExceptionTable();
        if (exceptionTable != null) {
            String exceptionTable2 = exceptionTable.toString();
            if (!exceptionTable2.equals("")) {
                stringBuffer.append("\n\t\tthrows " + exceptionTable2);
            }
        }
        return stringBuffer.toString();
    }

    public Method(Method method) {
        super(method);
    }

    public Method(DataInputStream dataInputStream, ConstantPool constantPool) throws IOException, ClassFormatException {
        super(dataInputStream, constantPool);
    }

    public Method(int i, int i2, int i3, Attribute[] attributeArr, ConstantPool constantPool) {
        super(i, i2, i3, attributeArr, constantPool);
    }
}
