package com.sun.org.apache.bcel.internal.util;

import com.google.android.material.motion.MotionUtils;
import com.sun.org.apache.bcel.internal.Constants;
import com.sun.org.apache.bcel.internal.classfile.Attribute;
import com.sun.org.apache.bcel.internal.classfile.Code;
import com.sun.org.apache.bcel.internal.classfile.CodeException;
import com.sun.org.apache.bcel.internal.classfile.ConstantPool;
import com.sun.org.apache.bcel.internal.classfile.ConstantUtf8;
import com.sun.org.apache.bcel.internal.classfile.ConstantValue;
import com.sun.org.apache.bcel.internal.classfile.ExceptionTable;
import com.sun.org.apache.bcel.internal.classfile.InnerClass;
import com.sun.org.apache.bcel.internal.classfile.InnerClasses;
import com.sun.org.apache.bcel.internal.classfile.LineNumber;
import com.sun.org.apache.bcel.internal.classfile.LineNumberTable;
import com.sun.org.apache.bcel.internal.classfile.LocalVariable;
import com.sun.org.apache.bcel.internal.classfile.LocalVariableTable;
import com.sun.org.apache.bcel.internal.classfile.SourceFile;
import com.sun.org.apache.bcel.internal.classfile.Utility;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.PrintWriter;

/* loaded from: classes10.dex */
final class AttributeHTML implements Constants {
    private int attr_count = 0;
    private String class_name;
    private ConstantHTML constant_html;
    private ConstantPool constant_pool;
    private PrintWriter file;

    public AttributeHTML(String str, String str2, ConstantPool constantPool, ConstantHTML constantHTML) throws IOException {
        this.class_name = str2;
        this.constant_pool = constantPool;
        this.constant_html = constantHTML;
        PrintWriter printWriter = new PrintWriter(new FileOutputStream(str + str2 + "_attributes.html"));
        this.file = printWriter;
        printWriter.println("<HTML><BODY BGCOLOR=\"#C0C0C0\"><TABLE BORDER=0>");
    }

    private final String codeLink(int i, int i2) {
        return "<A HREF=\"" + this.class_name + "_code.html#code" + i2 + "@" + i + "\" TARGET=Code>" + i + "</A>";
    }

    public final void close() {
        this.file.println("</TABLE></BODY></HTML>");
        this.file.close();
    }

    public final void writeAttribute(Attribute attribute, String str) throws IOException {
        writeAttribute(attribute, str, 0);
    }

    public final void writeAttribute(Attribute attribute, String str, int i) throws IOException {
        byte tag = attribute.getTag();
        if (tag == -1) {
            return;
        }
        int i2 = this.attr_count + 1;
        this.attr_count = i2;
        if (i2 % 2 == 0) {
            this.file.print("<TR BGCOLOR=\"#C0C0C0\"><TD>");
        } else {
            this.file.print("<TR BGCOLOR=\"#A0A0A0\"><TD>");
        }
        this.file.println("<H4><A NAME=\"" + str + "\">" + this.attr_count + " " + Constants.ATTRIBUTE_NAMES[tag] + "</A></H4>");
        int i3 = 0;
        switch (tag) {
            case 0:
                int sourceFileIndex = ((SourceFile) attribute).getSourceFileIndex();
                this.file.print("<UL><LI><A HREF=\"" + this.class_name + "_cp.html#cp" + sourceFileIndex + "\" TARGET=\"ConstantPool\">Source file index(" + sourceFileIndex + ")</A></UL>\n");
                break;
            case 1:
                int constantValueIndex = ((ConstantValue) attribute).getConstantValueIndex();
                this.file.print("<UL><LI><A HREF=\"" + this.class_name + "_cp.html#cp" + constantValueIndex + "\" TARGET=\"ConstantPool\">Constant value index(" + constantValueIndex + ")</A></UL>\n");
                break;
            case 2:
                Code code = (Code) attribute;
                this.file.print("<UL><LI>Maximum stack size = " + code.getMaxStack() + "</LI>\n<LI>Number of local variables = " + code.getMaxLocals() + "</LI>\n<LI><A HREF=\"" + this.class_name + "_code.html#method" + i + "\" TARGET=Code>Byte code</A></LI></UL>\n");
                CodeException[] exceptionTable = code.getExceptionTable();
                int length = exceptionTable.length;
                if (length > 0) {
                    this.file.print("<P><B>Exceptions handled</B><UL>");
                    while (i3 < length) {
                        int catchType = exceptionTable[i3].getCatchType();
                        this.file.print("<LI>");
                        if (catchType != 0) {
                            this.file.print(this.constant_html.referenceConstant(catchType));
                        } else {
                            this.file.print("Any Exception");
                        }
                        this.file.print("<BR>(Ranging from lines " + codeLink(exceptionTable[i3].getStartPC(), i) + " to " + codeLink(exceptionTable[i3].getEndPC(), i) + ", handled at line " + codeLink(exceptionTable[i3].getHandlerPC(), i) + ")</LI>");
                        i3++;
                    }
                    this.file.print("</UL>");
                    break;
                }
                break;
            case 3:
                int[] exceptionIndexTable = ((ExceptionTable) attribute).getExceptionIndexTable();
                this.file.print("<UL>");
                while (i3 < exceptionIndexTable.length) {
                    this.file.print("<LI><A HREF=\"" + this.class_name + "_cp.html#cp" + exceptionIndexTable[i3] + "\" TARGET=\"ConstantPool\">Exception class index(" + exceptionIndexTable[i3] + ")</A>\n");
                    i3++;
                }
                this.file.print("</UL>\n");
                break;
            case 4:
                LineNumber[] lineNumberTable = ((LineNumberTable) attribute).getLineNumberTable();
                this.file.print("<P>");
                while (i3 < lineNumberTable.length) {
                    this.file.print(MotionUtils.f31761c + lineNumberTable[i3].getStartPC() + ",&nbsp;" + lineNumberTable[i3].getLineNumber() + MotionUtils.f31762d);
                    if (i3 < lineNumberTable.length - 1) {
                        this.file.print(", ");
                    }
                    i3++;
                }
                break;
            case 5:
                LocalVariable[] localVariableTable = ((LocalVariableTable) attribute).getLocalVariableTable();
                this.file.print("<UL>");
                for (int i4 = 0; i4 < localVariableTable.length; i4++) {
                    String signatureToString = Utility.signatureToString(((ConstantUtf8) this.constant_pool.getConstant(localVariableTable[i4].getSignatureIndex(), (byte) 1)).getBytes(), false);
                    int startPC = localVariableTable[i4].getStartPC();
                    int length2 = localVariableTable[i4].getLength() + startPC;
                    this.file.println("<LI>" + Class2HTML.referenceType(signatureToString) + "&nbsp;<B>" + localVariableTable[i4].getName() + "</B> in slot %" + localVariableTable[i4].getIndex() + "<BR>Valid from lines <A HREF=\"" + this.class_name + "_code.html#code" + i + "@" + startPC + "\" TARGET=Code>" + startPC + "</A> to <A HREF=\"" + this.class_name + "_code.html#code" + i + "@" + length2 + "\" TARGET=Code>" + length2 + "</A></LI>");
                }
                this.file.print("</UL>\n");
                break;
            case 6:
                InnerClass[] innerClasses = ((InnerClasses) attribute).getInnerClasses();
                this.file.print("<UL>");
                while (i3 < innerClasses.length) {
                    int innerNameIndex = innerClasses[i3].getInnerNameIndex();
                    String bytes = innerNameIndex > 0 ? ((ConstantUtf8) this.constant_pool.getConstant(innerNameIndex, (byte) 1)).getBytes() : "&lt;anonymous&gt;";
                    String accessToString = Utility.accessToString(innerClasses[i3].getInnerAccessFlags());
                    this.file.print("<LI><FONT COLOR=\"#FF0000\">" + accessToString + "</FONT> " + this.constant_html.referenceConstant(innerClasses[i3].getInnerClassIndex()) + " in&nbsp;class " + this.constant_html.referenceConstant(innerClasses[i3].getOuterClassIndex()) + " named " + bytes + "</LI>\n");
                    i3++;
                }
                this.file.print("</UL>\n");
                break;
            default:
                this.file.print("<P>" + attribute.toString());
                break;
        }
        this.file.println("</TD></TR>");
        this.file.flush();
    }
}
