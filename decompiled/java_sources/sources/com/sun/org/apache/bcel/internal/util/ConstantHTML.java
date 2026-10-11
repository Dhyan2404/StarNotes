package com.sun.org.apache.bcel.internal.util;

import com.google.android.material.motion.MotionUtils;
import com.onegravity.rteditor.converter.ConverterSpannedToHtml;
import com.sun.org.apache.bcel.internal.Constants;
import com.sun.org.apache.bcel.internal.classfile.Constant;
import com.sun.org.apache.bcel.internal.classfile.ConstantClass;
import com.sun.org.apache.bcel.internal.classfile.ConstantFieldref;
import com.sun.org.apache.bcel.internal.classfile.ConstantInterfaceMethodref;
import com.sun.org.apache.bcel.internal.classfile.ConstantMethodref;
import com.sun.org.apache.bcel.internal.classfile.ConstantNameAndType;
import com.sun.org.apache.bcel.internal.classfile.ConstantPool;
import com.sun.org.apache.bcel.internal.classfile.ConstantString;
import com.sun.org.apache.bcel.internal.classfile.Method;
import com.sun.org.apache.bcel.internal.classfile.Utility;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.PrintWriter;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes10.dex */
public final class ConstantHTML implements Constants {
    private String class_name;
    private String class_package;
    private ConstantPool constant_pool;
    private String[] constant_ref;
    private Constant[] constants;
    private PrintWriter file;
    private Method[] methods;

    public ConstantHTML(String str, String str2, String str3, Method[] methodArr, ConstantPool constantPool) throws IOException {
        this.class_name = str2;
        this.class_package = str3;
        this.constant_pool = constantPool;
        this.methods = methodArr;
        this.constants = constantPool.getConstantPool();
        PrintWriter printWriter = new PrintWriter(new FileOutputStream(str + str2 + "_cp.html"));
        this.file = printWriter;
        String[] strArr = new String[this.constants.length];
        this.constant_ref = strArr;
        strArr[0] = "&lt;unknown&gt;";
        printWriter.println("<HTML><BODY BGCOLOR=\"#C0C0C0\"><TABLE BORDER=0>");
        for (int i = 1; i < this.constants.length; i++) {
            if (i % 2 == 0) {
                this.file.print("<TR BGCOLOR=\"#C0C0C0\"><TD>");
            } else {
                this.file.print("<TR BGCOLOR=\"#A0A0A0\"><TD>");
            }
            if (this.constants[i] != null) {
                writeConstant(i);
            }
            this.file.print("</TD></TR>\n");
        }
        this.file.println("</TABLE></BODY></HTML>");
        this.file.close();
    }

    private final int getMethodNumber(String str) {
        for (int i = 0; i < this.methods.length; i++) {
            if ((this.methods[i].getName() + this.methods[i].getSignature()).equals(str)) {
                return i;
            }
        }
        return -1;
    }

    private void writeConstant(int i) {
        int classIndex;
        int nameAndTypeIndex;
        byte tag = this.constants[i].getTag();
        this.file.println("<H4> <A NAME=cp" + i + ">" + i + "</A> " + Constants.CONSTANT_NAMES[tag] + "</H4>");
        switch (tag) {
            case 7:
                int nameIndex = ((ConstantClass) this.constant_pool.getConstant(i, (byte) 7)).getNameIndex();
                String constantToString = this.constant_pool.constantToString(i, tag);
                String compactClassName = Utility.compactClassName(Utility.compactClassName(constantToString), this.class_package + ".", true);
                this.constant_ref[i] = "<A HREF=\"" + this.class_name + "_cp.html#cp" + i + "\" TARGET=ConstantPool>" + compactClassName + "</A>";
                this.file.println("<P><TT>" + ("<A HREF=\"" + constantToString + ".html\" TARGET=_top>" + compactClassName + "</A>") + "</TT><UL><LI><A HREF=\"#cp" + nameIndex + "\">Name index(" + nameIndex + ")</A></UL>\n");
                return;
            case 8:
                int stringIndex = ((ConstantString) this.constant_pool.getConstant(i, (byte) 8)).getStringIndex();
                this.file.println("<P><TT>" + Class2HTML.toHTML(this.constant_pool.constantToString(i, tag)) + "</TT><UL><LI><A HREF=\"#cp" + stringIndex + "\">Name index(" + stringIndex + ")</A></UL>\n");
                return;
            case 9:
                ConstantFieldref constantFieldref = (ConstantFieldref) this.constant_pool.getConstant(i, (byte) 9);
                int classIndex2 = constantFieldref.getClassIndex();
                int nameAndTypeIndex2 = constantFieldref.getNameAndTypeIndex();
                String constantToString2 = this.constant_pool.constantToString(classIndex2, (byte) 7);
                String compactClassName2 = Utility.compactClassName(Utility.compactClassName(constantToString2), this.class_package + ".", true);
                String constantToString3 = this.constant_pool.constantToString(nameAndTypeIndex2, (byte) 12);
                String str = constantToString2.equals(this.class_name) ? "<A HREF=\"" + constantToString2 + "_methods.html#field" + constantToString3 + "\" TARGET=Methods>" + constantToString3 + "</A>" : "<A HREF=\"" + constantToString2 + ".html\" TARGET=_top>" + compactClassName2 + "</A>." + constantToString3 + "\n";
                this.constant_ref[i] = "<A HREF=\"" + this.class_name + "_cp.html#cp" + classIndex2 + "\" TARGET=Constants>" + compactClassName2 + "</A>.<A HREF=\"" + this.class_name + "_cp.html#cp" + i + "\" TARGET=ConstantPool>" + constantToString3 + "</A>";
                this.file.println("<P><TT>" + str + "</TT><BR>\n<UL><LI><A HREF=\"#cp" + classIndex2 + "\">Class(" + classIndex2 + ")</A><BR>\n<LI><A HREF=\"#cp" + nameAndTypeIndex2 + "\">NameAndType(" + nameAndTypeIndex2 + ")</A></UL>");
                return;
            case 10:
            case 11:
                if (tag == 10) {
                    ConstantMethodref constantMethodref = (ConstantMethodref) this.constant_pool.getConstant(i, (byte) 10);
                    classIndex = constantMethodref.getClassIndex();
                    nameAndTypeIndex = constantMethodref.getNameAndTypeIndex();
                } else {
                    ConstantInterfaceMethodref constantInterfaceMethodref = (ConstantInterfaceMethodref) this.constant_pool.getConstant(i, (byte) 11);
                    classIndex = constantInterfaceMethodref.getClassIndex();
                    nameAndTypeIndex = constantInterfaceMethodref.getNameAndTypeIndex();
                }
                String constantToString4 = this.constant_pool.constantToString(nameAndTypeIndex, (byte) 12);
                String html = Class2HTML.toHTML(constantToString4);
                String constantToString5 = this.constant_pool.constantToString(classIndex, (byte) 7);
                Utility.compactClassName(constantToString5);
                String compactClassName3 = Utility.compactClassName(Utility.compactClassName(constantToString5), this.class_package + ".", true);
                String constantToString6 = this.constant_pool.constantToString(((ConstantNameAndType) this.constant_pool.getConstant(nameAndTypeIndex, (byte) 12)).getSignatureIndex(), (byte) 1);
                String[] methodSignatureArgumentTypes = Utility.methodSignatureArgumentTypes(constantToString6, false);
                String referenceType = Class2HTML.referenceType(Utility.methodSignatureReturnType(constantToString6, false));
                int i2 = nameAndTypeIndex;
                StringBuffer stringBuffer = new StringBuffer(MotionUtils.f31761c);
                for (int i3 = 0; i3 < methodSignatureArgumentTypes.length; i3++) {
                    stringBuffer.append(Class2HTML.referenceType(methodSignatureArgumentTypes[i3]));
                    if (i3 < methodSignatureArgumentTypes.length - 1) {
                        stringBuffer.append(",&nbsp;");
                    }
                }
                stringBuffer.append(MotionUtils.f31762d);
                String stringBuffer2 = stringBuffer.toString();
                String str2 = constantToString5.equals(this.class_name) ? "<A HREF=\"" + this.class_name + "_code.html#method" + getMethodNumber(constantToString4 + constantToString6) + "\" TARGET=Code>" + html + "</A>" : "<A HREF=\"" + constantToString5 + ".html\" TARGET=_top>" + compactClassName3 + "</A>." + html;
                this.constant_ref[i] = referenceType + "&nbsp;<A HREF=\"" + this.class_name + "_cp.html#cp" + classIndex + "\" TARGET=Constants>" + compactClassName3 + "</A>.<A HREF=\"" + this.class_name + "_cp.html#cp" + i + "\" TARGET=ConstantPool>" + html + "</A>&nbsp;" + stringBuffer2;
                this.file.println("<P><TT>" + referenceType + ConverterSpannedToHtml.NBSP + str2 + stringBuffer2 + "&nbsp;</TT>\n<UL><LI><A HREF=\"#cp" + classIndex + "\">Class index(" + classIndex + ")</A>\n<LI><A HREF=\"#cp" + i2 + "\">NameAndType index(" + i2 + ")</A></UL>");
                return;
            case 12:
                ConstantNameAndType constantNameAndType = (ConstantNameAndType) this.constant_pool.getConstant(i, (byte) 12);
                int nameIndex2 = constantNameAndType.getNameIndex();
                int signatureIndex = constantNameAndType.getSignatureIndex();
                this.file.println("<P><TT>" + Class2HTML.toHTML(this.constant_pool.constantToString(i, tag)) + "</TT><UL><LI><A HREF=\"#cp" + nameIndex2 + "\">Name index(" + nameIndex2 + ")</A>\n<LI><A HREF=\"#cp" + signatureIndex + "\">Signature index(" + signatureIndex + ")</A></UL>\n");
                return;
            default:
                this.file.println("<P><TT>" + Class2HTML.toHTML(this.constant_pool.constantToString(i, tag)) + "</TT>\n");
                return;
        }
    }

    public String referenceConstant(int i) {
        return this.constant_ref[i];
    }
}
