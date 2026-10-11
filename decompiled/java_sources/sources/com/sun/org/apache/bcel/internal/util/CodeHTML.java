package com.sun.org.apache.bcel.internal.util;

import com.onegravity.rteditor.converter.ConverterSpannedToHtml;
import com.sun.org.apache.bcel.internal.Constants;
import com.sun.org.apache.bcel.internal.classfile.Attribute;
import com.sun.org.apache.bcel.internal.classfile.Code;
import com.sun.org.apache.bcel.internal.classfile.CodeException;
import com.sun.org.apache.bcel.internal.classfile.ConstantPool;
import com.sun.org.apache.bcel.internal.classfile.LocalVariable;
import com.sun.org.apache.bcel.internal.classfile.LocalVariableTable;
import com.sun.org.apache.bcel.internal.classfile.Method;
import com.sun.org.apache.bcel.internal.classfile.Utility;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.BitSet;

/* loaded from: classes10.dex */
final class CodeHTML implements Constants {
    private static boolean wide;
    private String class_name;
    private ConstantHTML constant_html;
    private ConstantPool constant_pool;
    private PrintWriter file;
    private BitSet goto_set;
    private Method[] methods;

    public CodeHTML(String str, String str2, Method[] methodArr, ConstantPool constantPool, ConstantHTML constantHTML) throws IOException {
        this.class_name = str2;
        this.methods = methodArr;
        this.constant_pool = constantPool;
        this.constant_html = constantHTML;
        PrintWriter printWriter = new PrintWriter(new FileOutputStream(str + str2 + "_code.html"));
        this.file = printWriter;
        printWriter.println("<HTML><BODY BGCOLOR=\"#C0C0C0\">");
        for (int i = 0; i < methodArr.length; i++) {
            writeMethod(methodArr[i], i);
        }
        this.file.println("</BODY></HTML>");
        this.file.close();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:82:0x03e4  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x0417  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x041f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final java.lang.String codeToHTML(com.sun.org.apache.bcel.internal.util.ByteSequence r22, int r23) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 1406
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sun.org.apache.bcel.internal.util.CodeHTML.codeToHTML(com.sun.org.apache.bcel.internal.util.ByteSequence, int):java.lang.String");
    }

    private final void findGotos(ByteSequence byteSequence, Method method, Code code) throws IOException {
        this.goto_set = new BitSet(byteSequence.available());
        if (code != null) {
            CodeException[] exceptionTable = code.getExceptionTable();
            int length = exceptionTable.length;
            for (int i = 0; i < length; i++) {
                this.goto_set.set(exceptionTable[i].getStartPC());
                this.goto_set.set(exceptionTable[i].getEndPC());
                this.goto_set.set(exceptionTable[i].getHandlerPC());
            }
            Attribute[] attributes = code.getAttributes();
            int i2 = 0;
            while (true) {
                if (i2 >= attributes.length) {
                    break;
                }
                if (attributes[i2].getTag() == 5) {
                    LocalVariable[] localVariableTable = ((LocalVariableTable) attributes[i2]).getLocalVariableTable();
                    for (int i3 = 0; i3 < localVariableTable.length; i3++) {
                        int startPC = localVariableTable[i3].getStartPC();
                        int length2 = localVariableTable[i3].getLength() + startPC;
                        this.goto_set.set(startPC);
                        this.goto_set.set(length2);
                    }
                } else {
                    i2++;
                }
            }
        }
        while (byteSequence.available() > 0) {
            int readUnsignedByte = byteSequence.readUnsignedByte();
            if (readUnsignedByte == 170 || readUnsignedByte == 171) {
                int index = byteSequence.getIndex() % 4;
                int i4 = index == 0 ? 0 : 4 - index;
                for (int i5 = 0; i5 < i4; i5++) {
                    byteSequence.readByte();
                }
                int readInt = byteSequence.readInt();
                if (readUnsignedByte == 170) {
                    int readInt2 = byteSequence.readInt();
                    int readInt3 = byteSequence.readInt();
                    int index2 = ((byteSequence.getIndex() - 12) - i4) - 1;
                    this.goto_set.set(readInt + index2);
                    for (int i6 = 0; i6 < (readInt3 - readInt2) + 1; i6++) {
                        this.goto_set.set(byteSequence.readInt() + index2);
                    }
                } else {
                    int readInt4 = byteSequence.readInt();
                    int index3 = ((byteSequence.getIndex() - 8) - i4) - 1;
                    this.goto_set.set(readInt + index3);
                    for (int i7 = 0; i7 < readInt4; i7++) {
                        byteSequence.readInt();
                        this.goto_set.set(byteSequence.readInt() + index3);
                    }
                }
            } else {
                switch (readUnsignedByte) {
                    case 153:
                    case 154:
                    case 155:
                    case 156:
                    case 157:
                    case 158:
                    case 159:
                    case 160:
                    case 161:
                    case 162:
                    case 163:
                    case 164:
                    case 165:
                    case 166:
                    case 167:
                    case 168:
                        break;
                    default:
                        switch (readUnsignedByte) {
                            case 198:
                            case 199:
                                break;
                            case 200:
                            case 201:
                                this.goto_set.set((byteSequence.getIndex() + byteSequence.readInt()) - 1);
                                continue;
                            default:
                                byteSequence.unreadByte();
                                codeToHTML(byteSequence, 0);
                                continue;
                        }
                }
                this.goto_set.set((byteSequence.getIndex() + byteSequence.readShort()) - 1);
            }
        }
    }

    private void writeMethod(Method method, int i) throws IOException {
        Code code;
        String signature = method.getSignature();
        String[] methodSignatureArgumentTypes = Utility.methodSignatureArgumentTypes(signature, false);
        String methodSignatureReturnType = Utility.methodSignatureReturnType(signature, false);
        String html = Class2HTML.toHTML(method.getName());
        String replace = Utility.replace(Utility.accessToString(method.getAccessFlags()), " ", ConverterSpannedToHtml.NBSP);
        Attribute[] attributes = method.getAttributes();
        this.file.print("<P><B><FONT COLOR=\"#FF0000\">" + replace + "</FONT>&nbsp;<A NAME=method" + i + ">" + Class2HTML.referenceType(methodSignatureReturnType) + "</A>&nbsp<A HREF=\"" + this.class_name + "_methods.html#method" + i + "\" TARGET=Methods>" + html + "</A>(");
        for (int i2 = 0; i2 < methodSignatureArgumentTypes.length; i2++) {
            this.file.print(Class2HTML.referenceType(methodSignatureArgumentTypes[i2]));
            if (i2 < methodSignatureArgumentTypes.length - 1) {
                this.file.print(",&nbsp;");
            }
        }
        this.file.println(")</B></P>");
        byte[] bArr = null;
        Code code2 = null;
        if (attributes.length > 0) {
            this.file.print("<H4>Attributes</H4><UL>\n");
            byte[] bArr2 = null;
            for (int i3 = 0; i3 < attributes.length; i3++) {
                byte tag = attributes[i3].getTag();
                if (tag != -1) {
                    this.file.print("<LI><A HREF=\"" + this.class_name + "_attributes.html#method" + i + "@" + i3 + "\" TARGET=Attributes>" + Constants.ATTRIBUTE_NAMES[tag] + "</A></LI>\n");
                } else {
                    this.file.print("<LI>" + attributes[i3] + "</LI>");
                }
                if (tag == 2) {
                    code2 = (Code) attributes[i3];
                    Attribute[] attributes2 = code2.getAttributes();
                    byte[] code3 = code2.getCode();
                    this.file.print("<UL>");
                    int i4 = 0;
                    while (i4 < attributes2.length) {
                        this.file.print("<LI><A HREF=\"" + this.class_name + "_attributes.html#method" + i + "@" + i3 + "@" + i4 + "\" TARGET=Attributes>" + Constants.ATTRIBUTE_NAMES[attributes2[i4].getTag()] + "</A></LI>\n");
                        i4++;
                        attributes2 = attributes2;
                        code3 = code3;
                    }
                    this.file.print("</UL>");
                    bArr2 = code3;
                }
            }
            this.file.println("</UL>");
            Code code4 = code2;
            bArr = bArr2;
            code = code4;
        } else {
            code = null;
        }
        if (bArr != null) {
            ByteSequence byteSequence = new ByteSequence(bArr);
            byteSequence.mark(byteSequence.available());
            findGotos(byteSequence, method, code);
            byteSequence.reset();
            this.file.println("<TABLE BORDER=0><TR><TH ALIGN=LEFT>Byte<BR>offset</TH><TH ALIGN=LEFT>Instruction</TH><TH ALIGN=LEFT>Argument</TH>");
            while (byteSequence.available() > 0) {
                int index = byteSequence.getIndex();
                String codeToHTML = codeToHTML(byteSequence, i);
                String str = this.goto_set.get(index) ? "<A NAME=code" + i + "@" + index + "></A>" : "";
                this.file.println("<TR VALIGN=TOP><TD>" + (byteSequence.getIndex() == bArr.length ? "<A NAME=code" + i + "@" + bArr.length + ">" + index + "</A>" : "" + index) + "</TD><TD>" + str + codeToHTML + "</TR>");
            }
            this.file.println("<TR><TD> </A></TD></TR>");
            this.file.println("</TABLE>");
        }
    }
}
