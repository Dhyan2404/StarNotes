.class final Lcom/sun/org/apache/bcel/internal/util/MethodHTML;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sun/org/apache/bcel/internal/Constants;


# instance fields
.field private attribute_html:Lcom/sun/org/apache/bcel/internal/util/AttributeHTML;

.field private class_name:Ljava/lang/String;

.field private constant_html:Lcom/sun/org/apache/bcel/internal/util/ConstantHTML;

.field private file:Ljava/io/PrintWriter;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[Lcom/sun/org/apache/bcel/internal/classfile/Method;[Lcom/sun/org/apache/bcel/internal/classfile/Field;Lcom/sun/org/apache/bcel/internal/util/ConstantHTML;Lcom/sun/org/apache/bcel/internal/util/AttributeHTML;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/sun/org/apache/bcel/internal/util/MethodHTML;->class_name:Ljava/lang/String;

    iput-object p6, p0, Lcom/sun/org/apache/bcel/internal/util/MethodHTML;->attribute_html:Lcom/sun/org/apache/bcel/internal/util/AttributeHTML;

    iput-object p5, p0, Lcom/sun/org/apache/bcel/internal/util/MethodHTML;->constant_html:Lcom/sun/org/apache/bcel/internal/util/ConstantHTML;

    new-instance p5, Ljava/io/PrintWriter;

    new-instance p6, Ljava/io/FileOutputStream;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_methods.html"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p6, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {p5, p6}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    iput-object p5, p0, Lcom/sun/org/apache/bcel/internal/util/MethodHTML;->file:Ljava/io/PrintWriter;

    const-string p1, "<HTML><BODY BGCOLOR=\"#C0C0C0\"><TABLE BORDER=0>"

    invoke-virtual {p5, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sun/org/apache/bcel/internal/util/MethodHTML;->file:Ljava/io/PrintWriter;

    const-string p2, "<TR><TH ALIGN=LEFT>Access&nbsp;flags</TH><TH ALIGN=LEFT>Type</TH><TH ALIGN=LEFT>Field&nbsp;name</TH></TR>"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p1, 0x0

    move p2, p1

    :goto_0
    array-length p5, p4

    if-ge p2, p5, :cond_0

    aget-object p5, p4, p2

    invoke-direct {p0, p5}, Lcom/sun/org/apache/bcel/internal/util/MethodHTML;->writeField(Lcom/sun/org/apache/bcel/internal/classfile/Field;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/sun/org/apache/bcel/internal/util/MethodHTML;->file:Ljava/io/PrintWriter;

    const-string p4, "</TABLE>"

    invoke-virtual {p2, p4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/sun/org/apache/bcel/internal/util/MethodHTML;->file:Ljava/io/PrintWriter;

    const-string p4, "<TABLE BORDER=0><TR><TH ALIGN=LEFT>Access&nbsp;flags</TH><TH ALIGN=LEFT>Return&nbsp;type</TH><TH ALIGN=LEFT>Method&nbsp;name</TH><TH ALIGN=LEFT>Arguments</TH></TR>"

    invoke-virtual {p2, p4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_1
    array-length p2, p3

    if-ge p1, p2, :cond_1

    aget-object p2, p3, p1

    invoke-direct {p0, p2, p1}, Lcom/sun/org/apache/bcel/internal/util/MethodHTML;->writeMethod(Lcom/sun/org/apache/bcel/internal/classfile/Method;I)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/sun/org/apache/bcel/internal/util/MethodHTML;->file:Ljava/io/PrintWriter;

    const-string p2, "</TABLE></BODY></HTML>"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/util/MethodHTML;->file:Ljava/io/PrintWriter;

    invoke-virtual {p0}, Ljava/io/PrintWriter;->close()V

    return-void
.end method

.method private writeField(Lcom/sun/org/apache/bcel/internal/classfile/Field;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/classfile/FieldOrMethod;->getSignature()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/org/apache/bcel/internal/classfile/Utility;->signatureToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/classfile/FieldOrMethod;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/classfile/AccessFlags;->getAccessFlags()I

    move-result v2

    invoke-static {v2}, Lcom/sun/org/apache/bcel/internal/classfile/Utility;->accessToString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, " "

    const-string v4, "&nbsp;"

    invoke-static {v2, v3, v4}, Lcom/sun/org/apache/bcel/internal/classfile/Utility;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sun/org/apache/bcel/internal/util/MethodHTML;->file:Ljava/io/PrintWriter;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<TR><TD><FONT COLOR=\"#FF0000\">"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "</FONT></TD>\n<TD>"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/sun/org/apache/bcel/internal/util/Class2HTML;->referenceType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "</TD><TD><A NAME=\"field"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\">"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "</A></TD>"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/classfile/FieldOrMethod;->getAttributes()[Lcom/sun/org/apache/bcel/internal/classfile/Attribute;

    move-result-object p1

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    array-length v3, p1

    const-string v4, "@"

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Lcom/sun/org/apache/bcel/internal/util/MethodHTML;->attribute_html:Lcom/sun/org/apache/bcel/internal/util/AttributeHTML;

    aget-object v5, p1, v2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v5, v4}, Lcom/sun/org/apache/bcel/internal/util/AttributeHTML;->writeAttribute(Lcom/sun/org/apache/bcel/internal/classfile/Attribute;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    array-length v2, p1

    if-ge v0, v2, :cond_2

    aget-object v2, p1, v0

    invoke-virtual {v2}, Lcom/sun/org/apache/bcel/internal/classfile/Attribute;->getTag()B

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    aget-object p1, p1, v0

    check-cast p1, Lcom/sun/org/apache/bcel/internal/classfile/ConstantValue;

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantValue;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v2, p0, Lcom/sun/org/apache/bcel/internal/util/MethodHTML;->file:Ljava/io/PrintWriter;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<TD>= <A HREF=\""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/sun/org/apache/bcel/internal/util/MethodHTML;->class_name:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "_attributes.html#"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\" TARGET=\"Attributes\">"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "</TD>\n"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/util/MethodHTML;->file:Ljava/io/PrintWriter;

    const-string p1, "</TR>"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method private final writeMethod(Lcom/sun/org/apache/bcel/internal/classfile/Method;I)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/classfile/FieldOrMethod;->getSignature()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sun/org/apache/bcel/internal/classfile/Utility;->methodSignatureArgumentTypes(Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1}, Lcom/sun/org/apache/bcel/internal/classfile/Utility;->methodSignatureReturnType(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/classfile/FieldOrMethod;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/classfile/AccessFlags;->getAccessFlags()I

    move-result v4

    invoke-static {v4}, Lcom/sun/org/apache/bcel/internal/classfile/Utility;->accessToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/classfile/FieldOrMethod;->getAttributes()[Lcom/sun/org/apache/bcel/internal/classfile/Attribute;

    move-result-object p1

    const-string v5, " "

    const-string v6, "&nbsp;"

    invoke-static {v4, v5, v6}, Lcom/sun/org/apache/bcel/internal/classfile/Utility;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3}, Lcom/sun/org/apache/bcel/internal/util/Class2HTML;->toHTML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/sun/org/apache/bcel/internal/util/MethodHTML;->file:Ljava/io/PrintWriter;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "<TR VALIGN=TOP><TD><FONT COLOR=\"#FF0000\"><A NAME=method"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ">"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "</A></FONT></TD>"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/sun/org/apache/bcel/internal/util/MethodHTML;->file:Ljava/io/PrintWriter;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "<TD>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/sun/org/apache/bcel/internal/util/Class2HTML;->referenceType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "</TD><TD>"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "<A HREF="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/util/MethodHTML;->class_name:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_code.html#method"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " TARGET=Code>"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "</A></TD>\n<TD>("

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move v0, v1

    :goto_0
    array-length v3, v2

    const-string v4, ", "

    if-ge v0, v3, :cond_1

    iget-object v3, p0, Lcom/sun/org/apache/bcel/internal/util/MethodHTML;->file:Ljava/io/PrintWriter;

    aget-object v5, v2, v0

    invoke-static {v5}, Lcom/sun/org/apache/bcel/internal/util/Class2HTML;->referenceType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_0

    iget-object v3, p0, Lcom/sun/org/apache/bcel/internal/util/MethodHTML;->file:Ljava/io/PrintWriter;

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/util/MethodHTML;->file:Ljava/io/PrintWriter;

    const-string v2, ")</TD></TR>"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move v0, v1

    :goto_1
    array-length v2, p1

    if-ge v0, v2, :cond_6

    iget-object v2, p0, Lcom/sun/org/apache/bcel/internal/util/MethodHTML;->attribute_html:Lcom/sun/org/apache/bcel/internal/util/AttributeHTML;

    aget-object v3, p1, v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "method"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "@"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v5, p2}, Lcom/sun/org/apache/bcel/internal/util/AttributeHTML;->writeAttribute(Lcom/sun/org/apache/bcel/internal/classfile/Attribute;Ljava/lang/String;I)V

    aget-object v2, p1, v0

    invoke-virtual {v2}, Lcom/sun/org/apache/bcel/internal/classfile/Attribute;->getTag()B

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_4

    iget-object v2, p0, Lcom/sun/org/apache/bcel/internal/util/MethodHTML;->file:Ljava/io/PrintWriter;

    const-string v3, "<TR VALIGN=TOP><TD COLSPAN=2></TD><TH ALIGN=LEFT>throws</TH><TD>"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    aget-object v2, p1, v0

    check-cast v2, Lcom/sun/org/apache/bcel/internal/classfile/ExceptionTable;

    invoke-virtual {v2}, Lcom/sun/org/apache/bcel/internal/classfile/ExceptionTable;->getExceptionIndexTable()[I

    move-result-object v2

    move v3, v1

    :goto_2
    array-length v5, v2

    if-ge v3, v5, :cond_3

    iget-object v5, p0, Lcom/sun/org/apache/bcel/internal/util/MethodHTML;->file:Ljava/io/PrintWriter;

    iget-object v6, p0, Lcom/sun/org/apache/bcel/internal/util/MethodHTML;->constant_html:Lcom/sun/org/apache/bcel/internal/util/ConstantHTML;

    aget v7, v2, v3

    invoke-virtual {v6, v7}, Lcom/sun/org/apache/bcel/internal/util/ConstantHTML;->referenceConstant(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v3, v5, :cond_2

    iget-object v5, p0, Lcom/sun/org/apache/bcel/internal/util/MethodHTML;->file:Ljava/io/PrintWriter;

    invoke-virtual {v5, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    iget-object v2, p0, Lcom/sun/org/apache/bcel/internal/util/MethodHTML;->file:Ljava/io/PrintWriter;

    const-string v3, "</TD></TR>"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_4

    :cond_4
    const/4 v3, 0x2

    if-ne v2, v3, :cond_5

    aget-object v2, p1, v0

    check-cast v2, Lcom/sun/org/apache/bcel/internal/classfile/Code;

    invoke-virtual {v2}, Lcom/sun/org/apache/bcel/internal/classfile/Code;->getAttributes()[Lcom/sun/org/apache/bcel/internal/classfile/Attribute;

    move-result-object v2

    move v3, v1

    :goto_3
    array-length v5, v2

    if-ge v3, v5, :cond_5

    iget-object v5, p0, Lcom/sun/org/apache/bcel/internal/util/MethodHTML;->attribute_html:Lcom/sun/org/apache/bcel/internal/util/AttributeHTML;

    aget-object v8, v2, v3

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v8, v9, p2}, Lcom/sun/org/apache/bcel/internal/util/AttributeHTML;->writeAttribute(Lcom/sun/org/apache/bcel/internal/classfile/Attribute;Ljava/lang/String;I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_5
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    :cond_6
    return-void
.end method
