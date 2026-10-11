package com.sun.org.apache.bcel.internal.classfile;

import com.google.android.material.motion.MotionUtils;
import java.io.ByteArrayInputStream;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;

/* loaded from: classes10.dex */
public final class Signature extends Attribute {
    private int signature_index;

    /* loaded from: classes10.dex */
    public static final class MyByteArrayInputStream extends ByteArrayInputStream {
        public MyByteArrayInputStream(String str) {
            super(str.getBytes());
        }

        public final String getData() {
            return new String(((ByteArrayInputStream) this).buf);
        }

        public final int mark() {
            return ((ByteArrayInputStream) this).pos;
        }

        public final void reset(int i) {
            ((ByteArrayInputStream) this).pos = i;
        }

        public final void unread() {
            int i = ((ByteArrayInputStream) this).pos;
            if (i > 0) {
                ((ByteArrayInputStream) this).pos = i - 1;
            }
        }
    }

    public Signature(Signature signature) {
        this(signature.getNameIndex(), signature.getLength(), signature.getSignatureIndex(), signature.getConstantPool());
    }

    private static boolean identPart(int i) {
        return i == 47 || i == 59;
    }

    private static boolean identStart(int i) {
        return i == 84 || i == 76;
    }

    public static final boolean isActualParameterList(String str) {
        return str.startsWith("L") && str.endsWith(">;");
    }

    public static final boolean isFormalParameterList(String str) {
        return str.startsWith("<") && str.indexOf(58) > 0;
    }

    /* JADX WARN: Code restructure failed: missing block: B:30:0x0056, code lost:
    
        r5.append((char) r0);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static final void matchGJIdent(com.sun.org.apache.bcel.internal.classfile.Signature.MyByteArrayInputStream r4, java.lang.StringBuffer r5) {
        /*
            matchIdent(r4, r5)
            int r0 = r4.read()
            r1 = 60
            java.lang.String r2 = "Illegal signature: "
            r3 = 41
            if (r0 == r1) goto L18
            r1 = 40
            if (r0 != r1) goto L14
            goto L18
        L14:
            r4.unread()
            goto L5a
        L18:
            char r0 = (char) r0
            r5.append(r0)
            matchGJIdent(r4, r5)
        L1f:
            int r0 = r4.read()
            r1 = 62
            if (r0 == r1) goto L56
            if (r0 == r3) goto L56
            r1 = -1
            if (r0 == r1) goto L38
            java.lang.String r0 = ", "
            r5.append(r0)
            r4.unread()
            matchGJIdent(r4, r5)
            goto L1f
        L38:
            java.lang.RuntimeException r5 = new java.lang.RuntimeException
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            r0.append(r2)
            java.lang.String r4 = r4.getData()
            r0.append(r4)
            java.lang.String r4 = " reaching EOF"
            r0.append(r4)
            java.lang.String r4 = r0.toString()
            r5.<init>(r4)
            throw r5
        L56:
            char r0 = (char) r0
            r5.append(r0)
        L5a:
            int r0 = r4.read()
            boolean r1 = identStart(r0)
            if (r1 == 0) goto L6b
            r4.unread()
            matchGJIdent(r4, r5)
            goto L75
        L6b:
            if (r0 != r3) goto L71
            r4.unread()
            return
        L71:
            r5 = 59
            if (r0 != r5) goto L76
        L75:
            return
        L76:
            java.lang.RuntimeException r5 = new java.lang.RuntimeException
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            r1.append(r2)
            java.lang.String r4 = r4.getData()
            r1.append(r4)
            java.lang.String r4 = " read "
            r1.append(r4)
            char r4 = (char) r0
            r1.append(r4)
            java.lang.String r4 = r1.toString()
            r5.<init>(r4)
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sun.org.apache.bcel.internal.classfile.Signature.matchGJIdent(com.sun.org.apache.bcel.internal.classfile.Signature$MyByteArrayInputStream, java.lang.StringBuffer):void");
    }

    private static final void matchIdent(MyByteArrayInputStream myByteArrayInputStream, StringBuffer stringBuffer) {
        int read = myByteArrayInputStream.read();
        if (read == -1) {
            throw new RuntimeException("Illegal signature: " + myByteArrayInputStream.getData() + " no ident, reaching EOF");
        }
        if (identStart(read)) {
            StringBuffer stringBuffer2 = new StringBuffer();
            int read2 = myByteArrayInputStream.read();
            while (true) {
                stringBuffer2.append((char) read2);
                read2 = myByteArrayInputStream.read();
                if (read2 == -1 || (!Character.isJavaIdentifierPart((char) read2) && read2 != 47)) {
                    break;
                }
            }
            stringBuffer.append(stringBuffer2.toString().replace('/', '.'));
            if (read2 != -1) {
                myByteArrayInputStream.unread();
                return;
            }
            return;
        }
        StringBuffer stringBuffer3 = new StringBuffer();
        int i = 1;
        while (true) {
            char c = (char) read;
            if (!Character.isJavaIdentifierPart(c)) {
                break;
            }
            stringBuffer3.append(c);
            i++;
            read = myByteArrayInputStream.read();
        }
        if (read == 58) {
            myByteArrayInputStream.skip(17);
            stringBuffer.append(stringBuffer3);
            myByteArrayInputStream.read();
            myByteArrayInputStream.unread();
            return;
        }
        for (int i2 = 0; i2 < i; i2++) {
            myByteArrayInputStream.unread();
        }
    }

    public static String translate(String str) {
        StringBuffer stringBuffer = new StringBuffer();
        matchGJIdent(new MyByteArrayInputStream(str), stringBuffer);
        return stringBuffer.toString();
    }

    @Override // com.sun.org.apache.bcel.internal.classfile.Attribute, com.sun.org.apache.bcel.internal.classfile.Node
    public void accept(Visitor visitor) {
        System.err.println("Visiting non-standard Signature object");
        visitor.visitSignature(this);
    }

    @Override // com.sun.org.apache.bcel.internal.classfile.Attribute
    public Attribute copy(ConstantPool constantPool) {
        return (Signature) clone();
    }

    @Override // com.sun.org.apache.bcel.internal.classfile.Attribute
    public final void dump(DataOutputStream dataOutputStream) throws IOException {
        super.dump(dataOutputStream);
        dataOutputStream.writeShort(this.signature_index);
    }

    public final String getSignature() {
        return ((ConstantUtf8) this.constant_pool.getConstant(this.signature_index, (byte) 1)).getBytes();
    }

    public final int getSignatureIndex() {
        return this.signature_index;
    }

    public final void setSignatureIndex(int i) {
        this.signature_index = i;
    }

    @Override // com.sun.org.apache.bcel.internal.classfile.Attribute
    public final String toString() {
        return "Signature(" + getSignature() + MotionUtils.f31762d;
    }

    public Signature(int i, int i2, DataInputStream dataInputStream, ConstantPool constantPool) throws IOException {
        this(i, i2, dataInputStream.readUnsignedShort(), constantPool);
    }

    public Signature(int i, int i2, int i3, ConstantPool constantPool) {
        super((byte) 10, i, i2, constantPool);
        this.signature_index = i3;
    }
}
