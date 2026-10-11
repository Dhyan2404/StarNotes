package com.sun.org.apache.bcel.internal.util;

import com.onegravity.rteditor.converter.ConverterSpannedToHtml;
import com.sun.org.apache.bcel.internal.Constants;
import com.sun.org.apache.bcel.internal.classfile.Attribute;
import com.sun.org.apache.bcel.internal.classfile.Code;
import com.sun.org.apache.bcel.internal.classfile.ConstantValue;
import com.sun.org.apache.bcel.internal.classfile.ExceptionTable;
import com.sun.org.apache.bcel.internal.classfile.Field;
import com.sun.org.apache.bcel.internal.classfile.Method;
import com.sun.org.apache.bcel.internal.classfile.Utility;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.PrintWriter;

/* loaded from: classes10.dex */
final class MethodHTML implements Constants {
    private AttributeHTML attribute_html;
    private String class_name;
    private ConstantHTML constant_html;
    private PrintWriter file;

    public MethodHTML(String str, String str2, Method[] methodArr, Field[] fieldArr, ConstantHTML constantHTML, AttributeHTML attributeHTML) throws IOException {
        this.class_name = str2;
        this.attribute_html = attributeHTML;
        this.constant_html = constantHTML;
        PrintWriter printWriter = new PrintWriter(new FileOutputStream(str + str2 + "_methods.html"));
        this.file = printWriter;
        printWriter.println("<HTML><BODY BGCOLOR=\"#C0C0C0\"><TABLE BORDER=0>");
        this.file.println("<TR><TH ALIGN=LEFT>Access&nbsp;flags</TH><TH ALIGN=LEFT>Type</TH><TH ALIGN=LEFT>Field&nbsp;name</TH></TR>");
        for (Field field : fieldArr) {
            writeField(field);
        }
        this.file.println("</TABLE>");
        this.file.println("<TABLE BORDER=0><TR><TH ALIGN=LEFT>Access&nbsp;flags</TH><TH ALIGN=LEFT>Return&nbsp;type</TH><TH ALIGN=LEFT>Method&nbsp;name</TH><TH ALIGN=LEFT>Arguments</TH></TR>");
        for (int i = 0; i < methodArr.length; i++) {
            writeMethod(methodArr[i], i);
        }
        this.file.println("</TABLE></BODY></HTML>");
        this.file.close();
    }

    private void writeField(Field field) throws IOException {
        String signatureToString = Utility.signatureToString(field.getSignature());
        String name = field.getName();
        String replace = Utility.replace(Utility.accessToString(field.getAccessFlags()), " ", ConverterSpannedToHtml.NBSP);
        this.file.print("<TR><TD><FONT COLOR=\"#FF0000\">" + replace + "</FONT></TD>\n<TD>" + Class2HTML.referenceType(signatureToString) + "</TD><TD><A NAME=\"field" + name + "\">" + name + "</A></TD>");
        Attribute[] attributes = field.getAttributes();
        int i = 0;
        for (int i2 = 0; i2 < attributes.length; i2++) {
            this.attribute_html.writeAttribute(attributes[i2], name + "@" + i2);
        }
        while (true) {
            if (i >= attributes.length) {
                break;
            }
            if (attributes[i].getTag() == 1) {
                String constantValue = ((ConstantValue) attributes[i]).toString();
                this.file.print("<TD>= <A HREF=\"" + this.class_name + "_attributes.html#" + name + "@" + i + "\" TARGET=\"Attributes\">" + constantValue + "</TD>\n");
                break;
            }
            i++;
        }
        this.file.println("</TR>");
    }

    private final void writeMethod(Method method, int i) throws IOException {
        String signature = method.getSignature();
        String[] methodSignatureArgumentTypes = Utility.methodSignatureArgumentTypes(signature, false);
        String methodSignatureReturnType = Utility.methodSignatureReturnType(signature, false);
        String name = method.getName();
        String accessToString = Utility.accessToString(method.getAccessFlags());
        Attribute[] attributes = method.getAttributes();
        String replace = Utility.replace(accessToString, " ", ConverterSpannedToHtml.NBSP);
        String html = Class2HTML.toHTML(name);
        this.file.print("<TR VALIGN=TOP><TD><FONT COLOR=\"#FF0000\"><A NAME=method" + i + ">" + replace + "</A></FONT></TD>");
        this.file.print("<TD>" + Class2HTML.referenceType(methodSignatureReturnType) + "</TD><TD><A HREF=" + this.class_name + "_code.html#method" + i + " TARGET=Code>" + html + "</A></TD>\n<TD>(");
        for (int i2 = 0; i2 < methodSignatureArgumentTypes.length; i2++) {
            this.file.print(Class2HTML.referenceType(methodSignatureArgumentTypes[i2]));
            if (i2 < methodSignatureArgumentTypes.length - 1) {
                this.file.print(", ");
            }
        }
        this.file.print(")</TD></TR>");
        for (int i3 = 0; i3 < attributes.length; i3++) {
            this.attribute_html.writeAttribute(attributes[i3], "method" + i + "@" + i3, i);
            byte tag = attributes[i3].getTag();
            if (tag == 3) {
                this.file.print("<TR VALIGN=TOP><TD COLSPAN=2></TD><TH ALIGN=LEFT>throws</TH><TD>");
                int[] exceptionIndexTable = ((ExceptionTable) attributes[i3]).getExceptionIndexTable();
                for (int i4 = 0; i4 < exceptionIndexTable.length; i4++) {
                    this.file.print(this.constant_html.referenceConstant(exceptionIndexTable[i4]));
                    if (i4 < exceptionIndexTable.length - 1) {
                        this.file.print(", ");
                    }
                }
                this.file.println("</TD></TR>");
            } else if (tag == 2) {
                Attribute[] attributes2 = ((Code) attributes[i3]).getAttributes();
                for (int i5 = 0; i5 < attributes2.length; i5++) {
                    this.attribute_html.writeAttribute(attributes2[i5], "method" + i + "@" + i3 + "@" + i5, i);
                }
            }
        }
    }
}
