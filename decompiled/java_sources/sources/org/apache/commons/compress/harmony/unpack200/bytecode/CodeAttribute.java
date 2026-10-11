package org.apache.commons.compress.harmony.unpack200.bytecode;

import java.io.DataOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.function.Consumer;
import org.apache.commons.compress.harmony.unpack200.Segment;
import org.apache.commons.compress.harmony.unpack200.bytecode.Attribute;
import org.apache.commons.compress.harmony.unpack200.bytecode.ByteCode;
import org.apache.commons.compress.harmony.unpack200.bytecode.ClassConstantPool;
import org.apache.commons.compress.harmony.unpack200.bytecode.ExceptionTableEntry;

/* loaded from: classes12.dex */
public class CodeAttribute extends BCIRenumberedAttribute {

    /* renamed from: c */
    public static CPUTF8 f107165c;
    public List<Attribute> attributes;
    public List<Integer> byteCodeOffsets;
    public List<ByteCode> byteCodes;
    public int codeLength;
    public List<ExceptionTableEntry> exceptionTable;
    public int maxLocals;
    public int maxStack;

    public CodeAttribute(int i, int i2, byte[] bArr, Segment segment, OperandManager operandManager, List<ExceptionTableEntry> list) {
        super(f107165c);
        this.attributes = new ArrayList();
        this.byteCodeOffsets = new ArrayList();
        this.byteCodes = new ArrayList();
        this.maxLocals = i2;
        this.maxStack = i;
        int i3 = 0;
        this.codeLength = 0;
        this.exceptionTable = list;
        this.byteCodeOffsets.add(0);
        int i4 = 0;
        while (i3 < bArr.length) {
            ByteCode byteCode = ByteCode.getByteCode(bArr[i3] & 255);
            byteCode.setByteCodeIndex(i4);
            i4++;
            byteCode.extractOperands(operandManager, segment, this.codeLength);
            this.byteCodes.add(byteCode);
            this.codeLength += byteCode.getLength();
            int intValue = this.byteCodeOffsets.get(r0.size() - 1).intValue();
            if (byteCode.hasMultipleByteCodes()) {
                this.byteCodeOffsets.add(Integer.valueOf(intValue + 1));
                i4++;
            }
            if (i3 < bArr.length - 1) {
                this.byteCodeOffsets.add(Integer.valueOf(intValue + byteCode.getLength()));
            }
            if (byteCode.getOpcode() == 196) {
                i3++;
            }
            i3++;
        }
        Iterator<ByteCode> it2 = this.byteCodes.iterator();
        while (it2.hasNext()) {
            it2.next().applyByteCodeTargetFixup(this);
        }
    }

    public static void setAttributeName(CPUTF8 cputf8) {
        f107165c = cputf8;
    }

    public void addAttribute(Attribute attribute) {
        this.attributes.add(attribute);
        if (attribute instanceof LocalVariableTableAttribute) {
            ((LocalVariableTableAttribute) attribute).setCodeLength(this.codeLength);
        }
        if (attribute instanceof LocalVariableTypeTableAttribute) {
            ((LocalVariableTypeTableAttribute) attribute).setCodeLength(this.codeLength);
        }
    }

    @Override // org.apache.commons.compress.harmony.unpack200.bytecode.BCIRenumberedAttribute, org.apache.commons.compress.harmony.unpack200.bytecode.Attribute
    public int getLength() {
        Iterator<Attribute> it2 = this.attributes.iterator();
        int i = 0;
        while (it2.hasNext()) {
            i += it2.next().getLengthIncludingHeader();
        }
        return this.codeLength + 8 + 2 + (this.exceptionTable.size() * 8) + 2 + i;
    }

    @Override // org.apache.commons.compress.harmony.unpack200.bytecode.Attribute, org.apache.commons.compress.harmony.unpack200.bytecode.ClassFileEntry
    public ClassFileEntry[] getNestedClassFileEntries() {
        ArrayList arrayList = new ArrayList(this.attributes.size() + this.byteCodes.size() + 10);
        arrayList.add(getAttributeName());
        arrayList.addAll(this.byteCodes);
        arrayList.addAll(this.attributes);
        Iterator<ExceptionTableEntry> it2 = this.exceptionTable.iterator();
        while (it2.hasNext()) {
            CPClass catchType = it2.next().getCatchType();
            if (catchType != null) {
                arrayList.add(catchType);
            }
        }
        return (ClassFileEntry[]) arrayList.toArray(ClassFileEntry.NONE);
    }

    @Override // org.apache.commons.compress.harmony.unpack200.bytecode.BCIRenumberedAttribute
    public int[] getStartPCs() {
        return null;
    }

    @Override // org.apache.commons.compress.harmony.unpack200.bytecode.BCIRenumberedAttribute
    public void renumber(final List<Integer> list) {
        this.exceptionTable.forEach(new Consumer() { // from class: com.sunia.HTREnginev2.iwd
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                ((ExceptionTableEntry) obj).renumber(list);
            }
        });
    }

    @Override // org.apache.commons.compress.harmony.unpack200.bytecode.Attribute, org.apache.commons.compress.harmony.unpack200.bytecode.ClassFileEntry
    public void resolve(final ClassConstantPool classConstantPool) {
        super.resolve(classConstantPool);
        this.attributes.forEach(new Consumer() { // from class: com.sunia.HTREnginev2.jwd
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                ((Attribute) obj).resolve(ClassConstantPool.this);
            }
        });
        this.byteCodes.forEach(new Consumer() { // from class: com.sunia.HTREnginev2.kwd
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                ((ByteCode) obj).resolve(ClassConstantPool.this);
            }
        });
        this.exceptionTable.forEach(new Consumer() { // from class: com.sunia.HTREnginev2.lwd
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                ((ExceptionTableEntry) obj).resolve(ClassConstantPool.this);
            }
        });
    }

    @Override // org.apache.commons.compress.harmony.unpack200.bytecode.BCIRenumberedAttribute, org.apache.commons.compress.harmony.unpack200.bytecode.ClassFileEntry
    public String toString() {
        return "Code: " + getLength() + " bytes";
    }

    @Override // org.apache.commons.compress.harmony.unpack200.bytecode.BCIRenumberedAttribute, org.apache.commons.compress.harmony.unpack200.bytecode.Attribute
    public void writeBody(DataOutputStream dataOutputStream) throws IOException {
        dataOutputStream.writeShort(this.maxStack);
        dataOutputStream.writeShort(this.maxLocals);
        dataOutputStream.writeInt(this.codeLength);
        Iterator<ByteCode> it2 = this.byteCodes.iterator();
        while (it2.hasNext()) {
            it2.next().write(dataOutputStream);
        }
        dataOutputStream.writeShort(this.exceptionTable.size());
        Iterator<ExceptionTableEntry> it3 = this.exceptionTable.iterator();
        while (it3.hasNext()) {
            it3.next().write(dataOutputStream);
        }
        dataOutputStream.writeShort(this.attributes.size());
        Iterator<Attribute> it4 = this.attributes.iterator();
        while (it4.hasNext()) {
            it4.next().write(dataOutputStream);
        }
    }
}
