package com.sun.org.apache.bcel.internal.classfile;

import com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants;
import com.sun.org.apache.bcel.internal.generic.Type;
import java.io.DataInputStream;
import java.io.IOException;
import org.apache.commons.collections4.IteratorUtils;

/* loaded from: classes10.dex */
public final class Field extends FieldOrMethod {
    public Field(Field field) {
        super(field);
    }

    @Override // com.sun.org.apache.bcel.internal.classfile.Node
    public void accept(Visitor visitor) {
        visitor.visitField(this);
    }

    public final Field copy(ConstantPool constantPool) {
        return (Field) copy_(constantPool);
    }

    public final ConstantValue getConstantValue() {
        for (int i = 0; i < this.attributes_count; i++) {
            if (this.attributes[i].getTag() == 1) {
                return (ConstantValue) this.attributes[i];
            }
        }
        return null;
    }

    public Type getType() {
        return Type.getReturnType(getSignature());
    }

    public final String toString() {
        String accessToString = Utility.accessToString(this.access_flags);
        StringBuffer stringBuffer = new StringBuffer((accessToString.equals("") ? "" : accessToString + " ") + Utility.signatureToString(getSignature()) + " " + getName());
        ConstantValue constantValue = getConstantValue();
        if (constantValue != null) {
            stringBuffer.append(CloudStorageConstants.OPERATION_EQUAL + constantValue);
        }
        for (int i = 0; i < this.attributes_count; i++) {
            Attribute attribute = this.attributes[i];
            if (!(attribute instanceof ConstantValue)) {
                stringBuffer.append(" [" + attribute.toString() + IteratorUtils.f104924b);
            }
        }
        return stringBuffer.toString();
    }

    public Field(DataInputStream dataInputStream, ConstantPool constantPool) throws IOException, ClassFormatException {
        super(dataInputStream, constantPool);
    }

    public Field(int i, int i2, int i3, Attribute[] attributeArr, ConstantPool constantPool) {
        super(i, i2, i3, attributeArr, constantPool);
    }
}
