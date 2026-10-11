.class final Lcom/sun/org/apache/bcel/internal/util/ConstantHTML;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sun/org/apache/bcel/internal/Constants;


# instance fields
.field private class_name:Ljava/lang/String;

.field private class_package:Ljava/lang/String;

.field private constant_pool:Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;

.field private constant_ref:[Ljava/lang/String;

.field private constants:[Lcom/sun/org/apache/bcel/internal/classfile/Constant;

.field private file:Ljava/io/PrintWriter;

.field private methods:[Lcom/sun/org/apache/bcel/internal/classfile/Method;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/sun/org/apache/bcel/internal/classfile/Method;Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/sun/org/apache/bcel/internal/util/ConstantHTML;->class_name:Ljava/lang/String;

    iput-object p3, p0, Lcom/sun/org/apache/bcel/internal/util/ConstantHTML;->class_package:Ljava/lang/String;

    iput-object p5, p0, Lcom/sun/org/apache/bcel/internal/util/ConstantHTML;->constant_pool:Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;

    iput-object p4, p0, Lcom/sun/org/apache/bcel/internal/util/ConstantHTML;->methods:[Lcom/sun/org/apache/bcel/internal/classfile/Method;

    invoke-virtual {p5}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;->getConstantPool()[Lcom/sun/org/apache/bcel/internal/classfile/Constant;

    move-result-object p3

    iput-object p3, p0, Lcom/sun/org/apache/bcel/internal/util/ConstantHTML;->constants:[Lcom/sun/org/apache/bcel/internal/classfile/Constant;

    new-instance p3, Ljava/io/PrintWriter;

    new-instance p4, Ljava/io/FileOutputStream;

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_cp.html"

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p4, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {p3, p4}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    iput-object p3, p0, Lcom/sun/org/apache/bcel/internal/util/ConstantHTML;->file:Ljava/io/PrintWriter;

    iget-object p1, p0, Lcom/sun/org/apache/bcel/internal/util/ConstantHTML;->constants:[Lcom/sun/org/apache/bcel/internal/classfile/Constant;

    array-length p1, p1

    new-array p1, p1, [Ljava/lang/String;

    iput-object p1, p0, Lcom/sun/org/apache/bcel/internal/util/ConstantHTML;->constant_ref:[Ljava/lang/String;

    const/4 p2, 0x0

    const-string p4, "&lt;unknown&gt;"

    aput-object p4, p1, p2

    const-string p1, "<HTML><BODY BGCOLOR=\"#C0C0C0\"><TABLE BORDER=0>"

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p1, 0x1

    :goto_0
    iget-object p2, p0, Lcom/sun/org/apache/bcel/internal/util/ConstantHTML;->constants:[Lcom/sun/org/apache/bcel/internal/classfile/Constant;

    array-length p2, p2

    if-ge p1, p2, :cond_2

    rem-int/lit8 p2, p1, 0x2

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/sun/org/apache/bcel/internal/util/ConstantHTML;->file:Ljava/io/PrintWriter;

    const-string p3, "<TR BGCOLOR=\"#C0C0C0\"><TD>"

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    iget-object p2, p0, Lcom/sun/org/apache/bcel/internal/util/ConstantHTML;->file:Ljava/io/PrintWriter;

    const-string p3, "<TR BGCOLOR=\"#A0A0A0\"><TD>"

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :goto_1
    iget-object p2, p0, Lcom/sun/org/apache/bcel/internal/util/ConstantHTML;->constants:[Lcom/sun/org/apache/bcel/internal/classfile/Constant;

    aget-object p2, p2, p1

    if-eqz p2, :cond_1

    invoke-direct {p0, p1}, Lcom/sun/org/apache/bcel/internal/util/ConstantHTML;->writeConstant(I)V

    :cond_1
    iget-object p2, p0, Lcom/sun/org/apache/bcel/internal/util/ConstantHTML;->file:Ljava/io/PrintWriter;

    const-string p3, "</TD></TR>\n"

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/sun/org/apache/bcel/internal/util/ConstantHTML;->file:Ljava/io/PrintWriter;

    const-string p2, "</TABLE></BODY></HTML>"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/util/ConstantHTML;->file:Ljava/io/PrintWriter;

    invoke-virtual {p0}, Ljava/io/PrintWriter;->close()V

    return-void
.end method

.method private final getMethodNumber(Ljava/lang/String;)I
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/sun/org/apache/bcel/internal/util/ConstantHTML;->methods:[Lcom/sun/org/apache/bcel/internal/classfile/Method;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sun/org/apache/bcel/internal/util/ConstantHTML;->methods:[Lcom/sun/org/apache/bcel/internal/classfile/Method;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/sun/org/apache/bcel/internal/classfile/FieldOrMethod;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sun/org/apache/bcel/internal/util/ConstantHTML;->methods:[Lcom/sun/org/apache/bcel/internal/classfile/Method;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/sun/org/apache/bcel/internal/classfile/FieldOrMethod;->getSignature()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method private writeConstant(I)V
    .locals 26

    move-object/from16 v0, p0

    move/from16 v1, p1

    iget-object v2, v0, Lcom/sun/org/apache/bcel/internal/util/ConstantHTML;->constants:[Lcom/sun/org/apache/bcel/internal/classfile/Constant;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/sun/org/apache/bcel/internal/classfile/Constant;->getTag()B

    move-result v2

    iget-object v3, v0, Lcom/sun/org/apache/bcel/internal/util/ConstantHTML;->file:Ljava/io/PrintWriter;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<H4> <A NAME=cp"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ">"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "</A> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/sun/org/apache/bcel/internal/Constants;->CONSTANT_NAMES:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "</H4>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, ")</A></UL>"

    const-string v4, "</A>.<A HREF=\""

    const-string v5, "\" TARGET=Constants>"

    const-string v6, "</A>."

    const-string v7, ")</A>\n"

    const-string v8, ".html\" TARGET=_top>"

    const-string v9, ")</A></UL>\n"

    const-string v10, "\">Name index("

    const-string v11, "</TT><UL>"

    const-string v12, "\" TARGET=ConstantPool>"

    const-string v13, "."

    const-string v14, "_cp.html#cp"

    const-string v15, "</A>"

    move-object/from16 v18, v8

    const-string v8, "<P><TT>"

    move-object/from16 v19, v3

    const-string v3, "<A HREF=\""

    move-object/from16 v20, v12

    const-string v12, "<LI><A HREF=\"#cp"

    packed-switch v2, :pswitch_data_0

    move v12, v1

    move-object v4, v8

    iget-object v1, v0, Lcom/sun/org/apache/bcel/internal/util/ConstantHTML;->file:Ljava/io/PrintWriter;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/sun/org/apache/bcel/internal/util/ConstantHTML;->constant_pool:Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;

    invoke-virtual {v0, v12, v2}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;->constantToString(IB)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/org/apache/bcel/internal/util/Class2HTML;->toHTML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "</TT>\n"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_4

    :pswitch_0
    iget-object v3, v0, Lcom/sun/org/apache/bcel/internal/util/ConstantHTML;->constant_pool:Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;

    const/16 v4, 0xc

    invoke-virtual {v3, v1, v4}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;->getConstant(IB)Lcom/sun/org/apache/bcel/internal/classfile/Constant;

    move-result-object v3

    check-cast v3, Lcom/sun/org/apache/bcel/internal/classfile/ConstantNameAndType;

    invoke-virtual {v3}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantNameAndType;->getNameIndex()I

    move-result v4

    invoke-virtual {v3}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantNameAndType;->getSignatureIndex()I

    move-result v3

    iget-object v5, v0, Lcom/sun/org/apache/bcel/internal/util/ConstantHTML;->file:Ljava/io/PrintWriter;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/sun/org/apache/bcel/internal/util/ConstantHTML;->constant_pool:Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;

    invoke-virtual {v0, v1, v2}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;->constantToString(IB)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/org/apache/bcel/internal/util/Class2HTML;->toHTML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\">Signature index("

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_4

    :pswitch_1
    const/16 v9, 0xa

    if-ne v2, v9, :cond_0

    iget-object v2, v0, Lcom/sun/org/apache/bcel/internal/util/ConstantHTML;->constant_pool:Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;

    invoke-virtual {v2, v1, v9}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;->getConstant(IB)Lcom/sun/org/apache/bcel/internal/classfile/Constant;

    move-result-object v2

    check-cast v2, Lcom/sun/org/apache/bcel/internal/classfile/ConstantMethodref;

    invoke-virtual {v2}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantCP;->getClassIndex()I

    move-result v9

    invoke-virtual {v2}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantCP;->getNameAndTypeIndex()I

    move-result v2

    goto :goto_0

    :cond_0
    iget-object v2, v0, Lcom/sun/org/apache/bcel/internal/util/ConstantHTML;->constant_pool:Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;

    const/16 v9, 0xb

    invoke-virtual {v2, v1, v9}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;->getConstant(IB)Lcom/sun/org/apache/bcel/internal/classfile/Constant;

    move-result-object v2

    check-cast v2, Lcom/sun/org/apache/bcel/internal/classfile/ConstantInterfaceMethodref;

    invoke-virtual {v2}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantCP;->getClassIndex()I

    move-result v9

    invoke-virtual {v2}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantCP;->getNameAndTypeIndex()I

    move-result v2

    :goto_0
    iget-object v10, v0, Lcom/sun/org/apache/bcel/internal/util/ConstantHTML;->constant_pool:Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;

    const/16 v11, 0xc

    invoke-virtual {v10, v2, v11}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;->constantToString(IB)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/sun/org/apache/bcel/internal/util/Class2HTML;->toHTML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v21, v7

    iget-object v7, v0, Lcom/sun/org/apache/bcel/internal/util/ConstantHTML;->constant_pool:Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;

    move-object/from16 v22, v12

    const/4 v12, 0x7

    invoke-virtual {v7, v9, v12}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;->constantToString(IB)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/sun/org/apache/bcel/internal/classfile/Utility;->compactClassName(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {v7}, Lcom/sun/org/apache/bcel/internal/classfile/Utility;->compactClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v23, v8

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v0, Lcom/sun/org/apache/bcel/internal/util/ConstantHTML;->class_package:Ljava/lang/String;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v8, 0x1

    invoke-static {v12, v1, v8}, Lcom/sun/org/apache/bcel/internal/classfile/Utility;->compactClassName(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    iget-object v12, v0, Lcom/sun/org/apache/bcel/internal/util/ConstantHTML;->constant_pool:Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;

    const/16 v13, 0xc

    invoke-virtual {v12, v2, v13}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;->getConstant(IB)Lcom/sun/org/apache/bcel/internal/classfile/Constant;

    move-result-object v12

    check-cast v12, Lcom/sun/org/apache/bcel/internal/classfile/ConstantNameAndType;

    iget-object v13, v0, Lcom/sun/org/apache/bcel/internal/util/ConstantHTML;->constant_pool:Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;

    invoke-virtual {v12}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantNameAndType;->getSignatureIndex()I

    move-result v12

    invoke-virtual {v13, v12, v8}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;->constantToString(IB)Ljava/lang/String;

    move-result-object v12

    const/4 v8, 0x0

    invoke-static {v12, v8}, Lcom/sun/org/apache/bcel/internal/classfile/Utility;->methodSignatureArgumentTypes(Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v8}, Lcom/sun/org/apache/bcel/internal/classfile/Utility;->methodSignatureReturnType(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/sun/org/apache/bcel/internal/util/Class2HTML;->referenceType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move/from16 v16, v2

    new-instance v2, Ljava/lang/StringBuffer;

    move-object/from16 v24, v4

    const-string v4, "("

    invoke-direct {v2, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    move-object/from16 v25, v5

    const/4 v4, 0x0

    :goto_1
    array-length v5, v13

    if-ge v4, v5, :cond_2

    aget-object v5, v13, v4

    invoke-static {v5}, Lcom/sun/org/apache/bcel/internal/util/Class2HTML;->referenceType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    array-length v5, v13

    const/16 v17, 0x1

    add-int/lit8 v5, v5, -0x1

    if-ge v4, v5, :cond_1

    const-string v5, ",&nbsp;"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    const-string v4, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v4, v0, Lcom/sun/org/apache/bcel/internal/util/ConstantHTML;->class_name:Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/sun/org/apache/bcel/internal/util/ConstantHTML;->class_name:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_code.html#method"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/sun/org/apache/bcel/internal/util/ConstantHTML;->getMethodNumber(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "\" TARGET=Code>"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".html"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\" TARGET=_top>"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_2
    iget-object v4, v0, Lcom/sun/org/apache/bcel/internal/util/ConstantHTML;->constant_ref:[Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "&nbsp;<A HREF=\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/sun/org/apache/bcel/internal/util/ConstantHTML;->class_name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v7, v25

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v24

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lcom/sun/org/apache/bcel/internal/util/ConstantHTML;->class_name:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v12, p1

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v10, v20

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "</A>&nbsp;"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v12

    iget-object v0, v0, Lcom/sun/org/apache/bcel/internal/util/ConstantHTML;->file:Ljava/io/PrintWriter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v4, v23

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "&nbsp;"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&nbsp;</TT>\n<UL>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v5, v22

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\">Class index("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v2, v21

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v2, v16

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "\">NameAndType index("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v2, v19

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_4

    :pswitch_2
    move-object v7, v5

    move-object v5, v12

    move-object/from16 v2, v19

    move-object/from16 v10, v20

    move v12, v1

    move-object v1, v4

    move-object v4, v8

    iget-object v8, v0, Lcom/sun/org/apache/bcel/internal/util/ConstantHTML;->constant_pool:Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;

    const/16 v9, 0x9

    invoke-virtual {v8, v12, v9}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;->getConstant(IB)Lcom/sun/org/apache/bcel/internal/classfile/Constant;

    move-result-object v8

    check-cast v8, Lcom/sun/org/apache/bcel/internal/classfile/ConstantFieldref;

    invoke-virtual {v8}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantCP;->getClassIndex()I

    move-result v9

    invoke-virtual {v8}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantCP;->getNameAndTypeIndex()I

    move-result v8

    iget-object v11, v0, Lcom/sun/org/apache/bcel/internal/util/ConstantHTML;->constant_pool:Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;

    const/4 v2, 0x7

    invoke-virtual {v11, v9, v2}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;->constantToString(IB)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sun/org/apache/bcel/internal/classfile/Utility;->compactClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v22, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v23, v4

    iget-object v4, v0, Lcom/sun/org/apache/bcel/internal/util/ConstantHTML;->class_package:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v11, v4, v5}, Lcom/sun/org/apache/bcel/internal/classfile/Utility;->compactClassName(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lcom/sun/org/apache/bcel/internal/util/ConstantHTML;->constant_pool:Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;

    const/16 v11, 0xc

    invoke-virtual {v5, v8, v11}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;->constantToString(IB)Ljava/lang/String;

    move-result-object v5

    iget-object v11, v0, Lcom/sun/org/apache/bcel/internal/util/ConstantHTML;->class_name:Ljava/lang/String;

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_methods.html#field"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\" TARGET=Methods>"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_4
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, v18

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_3
    iget-object v6, v0, Lcom/sun/org/apache/bcel/internal/util/ConstantHTML;->constant_ref:[Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/sun/org/apache/bcel/internal/util/ConstantHTML;->class_name:Ljava/lang/String;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lcom/sun/org/apache/bcel/internal/util/ConstantHTML;->class_name:Ljava/lang/String;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v12

    iget-object v0, v0, Lcom/sun/org/apache/bcel/internal/util/ConstantHTML;->file:Ljava/io/PrintWriter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v4, v23

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "</TT><BR>\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "<UL>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v5, v22

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\">Class("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")</A><BR>\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\">NameAndType("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v2, v19

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_4

    :pswitch_3
    move-object v4, v8

    move-object v5, v12

    move v12, v1

    iget-object v1, v0, Lcom/sun/org/apache/bcel/internal/util/ConstantHTML;->constant_pool:Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;

    const/16 v3, 0x8

    invoke-virtual {v1, v12, v3}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;->getConstant(IB)Lcom/sun/org/apache/bcel/internal/classfile/Constant;

    move-result-object v1

    check-cast v1, Lcom/sun/org/apache/bcel/internal/classfile/ConstantString;

    invoke-virtual {v1}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantString;->getStringIndex()I

    move-result v1

    iget-object v3, v0, Lcom/sun/org/apache/bcel/internal/util/ConstantHTML;->constant_pool:Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;

    invoke-virtual {v3, v12, v2}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;->constantToString(IB)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sun/org/apache/bcel/internal/util/Class2HTML;->toHTML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, v0, Lcom/sun/org/apache/bcel/internal/util/ConstantHTML;->file:Ljava/io/PrintWriter;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_4

    :pswitch_4
    move-object v4, v8

    move-object v5, v12

    move-object/from16 v6, v20

    move v12, v1

    move-object/from16 v1, v18

    iget-object v7, v0, Lcom/sun/org/apache/bcel/internal/util/ConstantHTML;->constant_pool:Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;

    const/4 v8, 0x7

    invoke-virtual {v7, v12, v8}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;->getConstant(IB)Lcom/sun/org/apache/bcel/internal/classfile/Constant;

    move-result-object v7

    check-cast v7, Lcom/sun/org/apache/bcel/internal/classfile/ConstantClass;

    invoke-virtual {v7}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantClass;->getNameIndex()I

    move-result v7

    iget-object v8, v0, Lcom/sun/org/apache/bcel/internal/util/ConstantHTML;->constant_pool:Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;

    invoke-virtual {v8, v12, v2}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;->constantToString(IB)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sun/org/apache/bcel/internal/classfile/Utility;->compactClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v16, v9

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v17, v10

    iget-object v10, v0, Lcom/sun/org/apache/bcel/internal/util/ConstantHTML;->class_package:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    invoke-static {v8, v9, v10}, Lcom/sun/org/apache/bcel/internal/classfile/Utility;->compactClassName(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/sun/org/apache/bcel/internal/util/ConstantHTML;->constant_ref:[Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/sun/org/apache/bcel/internal/util/ConstantHTML;->class_name:Ljava/lang/String;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v12

    iget-object v0, v0, Lcom/sun/org/apache/bcel/internal/util/ConstantHTML;->file:Ljava/io/PrintWriter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v1, v17

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v1, v16

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public referenceConstant(I)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/util/ConstantHTML;->constant_ref:[Ljava/lang/String;

    aget-object p0, p0, p1

    return-object p0
.end method
