.class final Lcom/sun/org/apache/bcel/internal/util/CodeHTML;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sun/org/apache/bcel/internal/Constants;


# static fields
.field private static wide:Z


# instance fields
.field private class_name:Ljava/lang/String;

.field private constant_html:Lcom/sun/org/apache/bcel/internal/util/ConstantHTML;

.field private constant_pool:Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;

.field private file:Ljava/io/PrintWriter;

.field private goto_set:Ljava/util/BitSet;

.field private methods:[Lcom/sun/org/apache/bcel/internal/classfile/Method;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[Lcom/sun/org/apache/bcel/internal/classfile/Method;Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;Lcom/sun/org/apache/bcel/internal/util/ConstantHTML;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/sun/org/apache/bcel/internal/util/CodeHTML;->class_name:Ljava/lang/String;

    iput-object p3, p0, Lcom/sun/org/apache/bcel/internal/util/CodeHTML;->methods:[Lcom/sun/org/apache/bcel/internal/classfile/Method;

    iput-object p4, p0, Lcom/sun/org/apache/bcel/internal/util/CodeHTML;->constant_pool:Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;

    iput-object p5, p0, Lcom/sun/org/apache/bcel/internal/util/CodeHTML;->constant_html:Lcom/sun/org/apache/bcel/internal/util/ConstantHTML;

    new-instance p4, Ljava/io/PrintWriter;

    new-instance p5, Ljava/io/FileOutputStream;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_code.html"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p5, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {p4, p5}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    iput-object p4, p0, Lcom/sun/org/apache/bcel/internal/util/CodeHTML;->file:Ljava/io/PrintWriter;

    const-string p1, "<HTML><BODY BGCOLOR=\"#C0C0C0\">"

    invoke-virtual {p4, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p1, 0x0

    :goto_0
    array-length p2, p3

    if-ge p1, p2, :cond_0

    aget-object p2, p3, p1

    invoke-direct {p0, p2, p1}, Lcom/sun/org/apache/bcel/internal/util/CodeHTML;->writeMethod(Lcom/sun/org/apache/bcel/internal/classfile/Method;I)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/sun/org/apache/bcel/internal/util/CodeHTML;->file:Ljava/io/PrintWriter;

    const-string p2, "</BODY></HTML>"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/util/CodeHTML;->file:Ljava/io/PrintWriter;

    invoke-virtual {p0}, Ljava/io/PrintWriter;->close()V

    return-void
.end method

.method private final codeToHTML(Lcom/sun/org/apache/bcel/internal/util/ByteSequence;I)Ljava/lang/String;
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual/range {p1 .. p1}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v2

    int-to-short v2, v2

    new-instance v3, Ljava/lang/StringBuffer;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<TT>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/sun/org/apache/bcel/internal/Constants;->OPCODE_NAMES:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "</TT></TD><TD>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const/16 v4, 0xaa

    if-eq v2, v4, :cond_1

    const/16 v4, 0xab

    if-ne v2, v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    const/4 v6, 0x0

    goto :goto_3

    :cond_1
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/sun/org/apache/bcel/internal/util/ByteSequence;->getIndex()I

    move-result v4

    rem-int/lit8 v4, v4, 0x4

    if-nez v4, :cond_2

    const/4 v4, 0x0

    goto :goto_1

    :cond_2
    rsub-int/lit8 v4, v4, 0x4

    :goto_1
    const/4 v6, 0x0

    :goto_2
    if-ge v6, v4, :cond_3

    invoke-virtual/range {p1 .. p1}, Ljava/io/DataInputStream;->readByte()B

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_3
    invoke-virtual/range {p1 .. p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    :goto_3
    const/16 v7, 0x84

    const-string v8, "%"

    if-eq v2, v7, :cond_e

    const/16 v7, 0xc0

    if-eq v2, v7, :cond_d

    const/16 v7, 0xc1

    if-eq v2, v7, :cond_d

    const-string v7, "</a>"

    const-string v9, "\" TARGET=\"ConstantPool\">"

    const-string v10, "_cp.html#cp"

    const-string v11, "<A HREF=\""

    packed-switch v2, :pswitch_data_0

    packed-switch v2, :pswitch_data_1

    const-string v7, "</A></TD>"

    const-string v9, "</A></TD></TR>\n</TABLE>\n"

    const-string v12, "</TH>"

    const-string v13, "<TH>"

    const-string v14, "<TH>default</TH></TR>\n<TR>"

    const-string v15, "<TABLE BORDER=1><TR>"

    const-string v5, "<A HREF=\"#code"

    move-object/from16 v16, v8

    const-string v8, "</A>"

    move-object/from16 v17, v9

    const-string v9, "<TD><A HREF=\"#code"

    move-object/from16 v18, v7

    const-string v7, "\">"

    move-object/from16 v19, v9

    const-string v9, "@"

    move-object/from16 v20, v14

    const/4 v14, 0x1

    packed-switch v2, :pswitch_data_2

    packed-switch v2, :pswitch_data_3

    packed-switch v2, :pswitch_data_4

    packed-switch v2, :pswitch_data_5

    sget-object v0, Lcom/sun/org/apache/bcel/internal/Constants;->NO_OF_OPERANDS:[S

    aget-short v0, v0, v2

    if-lez v0, :cond_10

    const/4 v5, 0x0

    :goto_4
    sget-object v0, Lcom/sun/org/apache/bcel/internal/Constants;->TYPE_OF_OPERANDS:[[S

    aget-object v0, v0, v2

    array-length v1, v0

    if-ge v5, v1, :cond_10

    aget-short v0, v0, v5

    packed-switch v0, :pswitch_data_6

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "Unreachable default case reached!"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    goto :goto_5

    :pswitch_0
    invoke-virtual/range {p1 .. p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    goto :goto_5

    :pswitch_1
    invoke-virtual/range {p1 .. p1}, Ljava/io/DataInputStream;->readShort()S

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    goto :goto_5

    :pswitch_2
    invoke-virtual/range {p1 .. p1}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    :goto_5
    const-string v0, "&nbsp;"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :pswitch_3
    invoke-virtual/range {p1 .. p1}, Lcom/sun/org/apache/bcel/internal/util/ByteSequence;->getIndex()I

    move-result v0

    invoke-virtual/range {p1 .. p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    add-int/2addr v0, v2

    sub-int/2addr v0, v14

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_e

    :pswitch_4
    invoke-virtual/range {p1 .. p1}, Ljava/io/DataInputStream;->readShort()S

    move-result v1

    invoke-virtual/range {p1 .. p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v0, Lcom/sun/org/apache/bcel/internal/util/CodeHTML;->constant_html:Lcom/sun/org/apache/bcel/internal/util/ConstantHTML;

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/bcel/internal/util/ConstantHTML;->referenceConstant(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "-dimensional"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_e

    :pswitch_5
    sput-boolean v14, Lcom/sun/org/apache/bcel/internal/util/CodeHTML;->wide:Z

    const-string v0, "(wide)"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_e

    :pswitch_6
    invoke-virtual/range {p1 .. p1}, Ljava/io/DataInputStream;->readShort()S

    move-result v1

    iget-object v0, v0, Lcom/sun/org/apache/bcel/internal/util/CodeHTML;->constant_html:Lcom/sun/org/apache/bcel/internal/util/ConstantHTML;

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/bcel/internal/util/ConstantHTML;->referenceConstant(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_e

    :pswitch_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<FONT COLOR=\"#00FF00\">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/sun/org/apache/bcel/internal/Constants;->TYPE_NAMES:[Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "</FONT>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_e

    :pswitch_8
    invoke-virtual/range {p1 .. p1}, Ljava/io/DataInputStream;->readShort()S

    move-result v1

    const/16 v4, 0xb9

    if-ne v2, v4, :cond_4

    invoke-virtual/range {p1 .. p1}, Ljava/io/DataInputStream;->readUnsignedByte()I

    invoke-virtual/range {p1 .. p1}, Ljava/io/DataInputStream;->readUnsignedByte()I

    iget-object v2, v0, Lcom/sun/org/apache/bcel/internal/util/CodeHTML;->constant_pool:Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;

    const/16 v4, 0xb

    invoke-virtual {v2, v1, v4}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;->getConstant(IB)Lcom/sun/org/apache/bcel/internal/classfile/Constant;

    move-result-object v2

    check-cast v2, Lcom/sun/org/apache/bcel/internal/classfile/ConstantInterfaceMethodref;

    invoke-virtual {v2}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantCP;->getClassIndex()I

    move-result v4

    iget-object v5, v0, Lcom/sun/org/apache/bcel/internal/util/CodeHTML;->constant_pool:Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;

    invoke-virtual {v5, v2}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;->constantToString(Lcom/sun/org/apache/bcel/internal/classfile/Constant;)Ljava/lang/String;

    invoke-virtual {v2}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantCP;->getNameAndTypeIndex()I

    move-result v2

    goto :goto_6

    :cond_4
    iget-object v2, v0, Lcom/sun/org/apache/bcel/internal/util/CodeHTML;->constant_pool:Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;

    const/16 v4, 0xa

    invoke-virtual {v2, v1, v4}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;->getConstant(IB)Lcom/sun/org/apache/bcel/internal/classfile/Constant;

    move-result-object v2

    check-cast v2, Lcom/sun/org/apache/bcel/internal/classfile/ConstantMethodref;

    invoke-virtual {v2}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantCP;->getClassIndex()I

    move-result v4

    iget-object v5, v0, Lcom/sun/org/apache/bcel/internal/util/CodeHTML;->constant_pool:Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;

    invoke-virtual {v5, v2}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;->constantToString(Lcom/sun/org/apache/bcel/internal/classfile/Constant;)Ljava/lang/String;

    invoke-virtual {v2}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantCP;->getNameAndTypeIndex()I

    move-result v2

    :goto_6
    invoke-static {v4}, Lcom/sun/org/apache/bcel/internal/util/Class2HTML;->referenceClass(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lcom/sun/org/apache/bcel/internal/util/CodeHTML;->constant_pool:Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;

    const/16 v6, 0xc

    invoke-virtual {v5, v2, v6}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;->getConstant(IB)Lcom/sun/org/apache/bcel/internal/classfile/Constant;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;->constantToString(Lcom/sun/org/apache/bcel/internal/classfile/Constant;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sun/org/apache/bcel/internal/util/Class2HTML;->toHTML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v7, v0, Lcom/sun/org/apache/bcel/internal/util/CodeHTML;->constant_pool:Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;

    invoke-virtual {v7, v2, v6}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;->getConstant(IB)Lcom/sun/org/apache/bcel/internal/classfile/Constant;

    move-result-object v2

    check-cast v2, Lcom/sun/org/apache/bcel/internal/classfile/ConstantNameAndType;

    iget-object v6, v0, Lcom/sun/org/apache/bcel/internal/util/CodeHTML;->constant_pool:Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;

    invoke-virtual {v2}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantNameAndType;->getSignatureIndex()I

    move-result v2

    invoke-virtual {v6, v2, v14}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;->constantToString(IB)Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x0

    invoke-static {v2, v6}, Lcom/sun/org/apache/bcel/internal/classfile/Utility;->methodSignatureArgumentTypes(Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v6}, Lcom/sun/org/apache/bcel/internal/classfile/Utility;->methodSignatureReturnType(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".<A HREF=\""

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/sun/org/apache/bcel/internal/util/CodeHTML;->class_name:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\" TARGET=ConstantPool>"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "("

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v5, 0x0

    :goto_7
    array-length v0, v7

    if-ge v5, v0, :cond_6

    aget-object v0, v7, v5

    invoke-static {v0}, Lcom/sun/org/apache/bcel/internal/util/Class2HTML;->referenceType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    array-length v0, v7

    sub-int/2addr v0, v14

    if-ge v5, v0, :cond_5

    const-string v0, ", "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "):"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/sun/org/apache/bcel/internal/util/Class2HTML;->referenceType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_e

    :pswitch_9
    invoke-virtual/range {p1 .. p1}, Ljava/io/DataInputStream;->readShort()S

    move-result v1

    iget-object v2, v0, Lcom/sun/org/apache/bcel/internal/util/CodeHTML;->constant_pool:Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;

    const/16 v4, 0x9

    invoke-virtual {v2, v1, v4}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;->getConstant(IB)Lcom/sun/org/apache/bcel/internal/classfile/Constant;

    move-result-object v1

    check-cast v1, Lcom/sun/org/apache/bcel/internal/classfile/ConstantFieldref;

    invoke-virtual {v1}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantCP;->getClassIndex()I

    move-result v2

    iget-object v4, v0, Lcom/sun/org/apache/bcel/internal/util/CodeHTML;->constant_pool:Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;

    const/4 v5, 0x7

    invoke-virtual {v4, v2, v5}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;->getConstantString(IB)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/sun/org/apache/bcel/internal/classfile/Utility;->compactClassName(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantCP;->getNameAndTypeIndex()I

    move-result v1

    iget-object v5, v0, Lcom/sun/org/apache/bcel/internal/util/CodeHTML;->constant_pool:Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;

    const/16 v6, 0xc

    invoke-virtual {v5, v1, v6}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;->constantToString(IB)Ljava/lang/String;

    move-result-object v1

    iget-object v5, v0, Lcom/sun/org/apache/bcel/internal/util/CodeHTML;->class_name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/sun/org/apache/bcel/internal/util/CodeHTML;->class_name:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_methods.html#field"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\" TARGET=Methods>"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "</A>\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_e

    :cond_7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v0, Lcom/sun/org/apache/bcel/internal/util/CodeHTML;->constant_html:Lcom/sun/org/apache/bcel/internal/util/ConstantHTML;

    invoke-virtual {v0, v2}, Lcom/sun/org/apache/bcel/internal/util/ConstantHTML;->referenceConstant(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_e

    :pswitch_a
    invoke-virtual/range {p1 .. p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    invoke-virtual/range {p1 .. p1}, Lcom/sun/org/apache/bcel/internal/util/ByteSequence;->getIndex()I

    move-result v2

    add-int/lit8 v2, v2, -0x8

    sub-int/2addr v2, v4

    sub-int/2addr v2, v14

    new-array v4, v0, [I

    add-int/2addr v6, v2

    invoke-virtual {v3, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v5, 0x0

    :goto_8
    if-ge v5, v0, :cond_8

    invoke-virtual/range {p1 .. p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v8

    invoke-virtual/range {p1 .. p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v10

    add-int/2addr v10, v2

    aput v10, v4, v5

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    :cond_8
    move-object/from16 v5, v20

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v5, 0x0

    :goto_9
    if-ge v5, v0, :cond_9

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v8, v19

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v10, v4, v5

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v10, v4, v5

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v10, v18

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v5, v5, 0x1

    goto :goto_9

    :cond_9
    move-object/from16 v8, v19

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v2, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_e

    :pswitch_b
    move-object/from16 v2, v17

    move-object/from16 v10, v18

    move-object/from16 v8, v19

    move-object/from16 v5, v20

    invoke-virtual/range {p1 .. p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    invoke-virtual/range {p1 .. p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v11

    invoke-virtual/range {p1 .. p1}, Lcom/sun/org/apache/bcel/internal/util/ByteSequence;->getIndex()I

    move-result v16

    const/16 v17, 0xc

    add-int/lit8 v16, v16, -0xc

    sub-int v16, v16, v4

    add-int/lit8 v16, v16, -0x1

    add-int v6, v6, v16

    invoke-virtual {v3, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sub-int/2addr v11, v0

    add-int/2addr v11, v14

    new-array v4, v11, [I

    const/4 v14, 0x0

    :goto_a
    if-ge v14, v11, :cond_a

    invoke-virtual/range {p1 .. p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v15

    add-int v15, v16, v15

    aput v15, v4, v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v17, v13

    add-int v13, v0, v14

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v13, v17

    goto :goto_a

    :cond_a
    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v5, 0x0

    :goto_b
    if-ge v5, v11, :cond_b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v12, v4, v5

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v12, v4, v5

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v5, v5, 0x1

    goto :goto_b

    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_e

    :pswitch_c
    invoke-virtual/range {p1 .. p1}, Lcom/sun/org/apache/bcel/internal/util/ByteSequence;->getIndex()I

    move-result v0

    invoke-virtual/range {p1 .. p1}, Ljava/io/DataInputStream;->readShort()S

    move-result v2

    add-int/2addr v0, v2

    sub-int/2addr v0, v14

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_e

    :pswitch_d
    move-object/from16 v16, v8

    :pswitch_e
    sget-boolean v0, Lcom/sun/org/apache/bcel/internal/util/CodeHTML;->wide:Z

    if-eqz v0, :cond_c

    invoke-virtual/range {p1 .. p1}, Ljava/io/DataInputStream;->readShort()S

    move-result v0

    const/4 v1, 0x0

    sput-boolean v1, Lcom/sun/org/apache/bcel/internal/util/CodeHTML;->wide:Z

    goto :goto_c

    :cond_c
    invoke-virtual/range {p1 .. p1}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v0

    :goto_c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v2, v16

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_e

    :pswitch_f
    invoke-virtual/range {p1 .. p1}, Ljava/io/DataInputStream;->readShort()S

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/sun/org/apache/bcel/internal/util/CodeHTML;->class_name:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/sun/org/apache/bcel/internal/util/CodeHTML;->constant_pool:Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;->getConstant(I)Lcom/sun/org/apache/bcel/internal/classfile/Constant;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sun/org/apache/bcel/internal/classfile/Constant;->getTag()B

    move-result v4

    invoke-virtual {v0, v1, v4}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;->constantToString(IB)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/org/apache/bcel/internal/util/Class2HTML;->toHTML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_e

    :pswitch_10
    invoke-virtual/range {p1 .. p1}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/sun/org/apache/bcel/internal/util/CodeHTML;->class_name:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/sun/org/apache/bcel/internal/util/CodeHTML;->constant_pool:Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;->getConstant(I)Lcom/sun/org/apache/bcel/internal/classfile/Constant;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sun/org/apache/bcel/internal/classfile/Constant;->getTag()B

    move-result v4

    invoke-virtual {v0, v1, v4}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;->constantToString(IB)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/org/apache/bcel/internal/util/Class2HTML;->toHTML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_e

    :cond_d
    :pswitch_11
    invoke-virtual/range {p1 .. p1}, Ljava/io/DataInputStream;->readShort()S

    move-result v1

    iget-object v0, v0, Lcom/sun/org/apache/bcel/internal/util/CodeHTML;->constant_html:Lcom/sun/org/apache/bcel/internal/util/ConstantHTML;

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/bcel/internal/util/ConstantHTML;->referenceConstant(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_e

    :cond_e
    move-object v2, v8

    sget-boolean v0, Lcom/sun/org/apache/bcel/internal/util/CodeHTML;->wide:Z

    if-eqz v0, :cond_f

    invoke-virtual/range {p1 .. p1}, Ljava/io/DataInputStream;->readShort()S

    move-result v0

    invoke-virtual/range {p1 .. p1}, Ljava/io/DataInputStream;->readShort()S

    move-result v1

    const/4 v4, 0x0

    sput-boolean v4, Lcom/sun/org/apache/bcel/internal/util/CodeHTML;->wide:Z

    goto :goto_d

    :cond_f
    invoke-virtual/range {p1 .. p1}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v0

    invoke-virtual/range {p1 .. p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v1

    :goto_d
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_10
    :goto_e
    const-string v0, "</TD>"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x12
        :pswitch_10
        :pswitch_f
        :pswitch_f
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x36
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x99
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_e
        :pswitch_b
        :pswitch_a
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0xb2
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0xbb
        :pswitch_11
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0xc4
        :pswitch_5
        :pswitch_4
        :pswitch_c
        :pswitch_c
        :pswitch_3
        :pswitch_3
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x8
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final findGotos(Lcom/sun/org/apache/bcel/internal/util/ByteSequence;Lcom/sun/org/apache/bcel/internal/classfile/Method;Lcom/sun/org/apache/bcel/internal/classfile/Code;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance p2, Ljava/util/BitSet;

    invoke-virtual {p1}, Ljava/io/InputStream;->available()I

    move-result v0

    invoke-direct {p2, v0}, Ljava/util/BitSet;-><init>(I)V

    iput-object p2, p0, Lcom/sun/org/apache/bcel/internal/util/CodeHTML;->goto_set:Ljava/util/BitSet;

    const/4 p2, 0x0

    if-eqz p3, :cond_2

    invoke-virtual {p3}, Lcom/sun/org/apache/bcel/internal/classfile/Code;->getExceptionTable()[Lcom/sun/org/apache/bcel/internal/classfile/CodeException;

    move-result-object v0

    array-length v1, v0

    move v2, p2

    :goto_0
    if-ge v2, v1, :cond_0

    iget-object v3, p0, Lcom/sun/org/apache/bcel/internal/util/CodeHTML;->goto_set:Ljava/util/BitSet;

    aget-object v4, v0, v2

    invoke-virtual {v4}, Lcom/sun/org/apache/bcel/internal/classfile/CodeException;->getStartPC()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/util/BitSet;->set(I)V

    iget-object v3, p0, Lcom/sun/org/apache/bcel/internal/util/CodeHTML;->goto_set:Ljava/util/BitSet;

    aget-object v4, v0, v2

    invoke-virtual {v4}, Lcom/sun/org/apache/bcel/internal/classfile/CodeException;->getEndPC()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/util/BitSet;->set(I)V

    iget-object v3, p0, Lcom/sun/org/apache/bcel/internal/util/CodeHTML;->goto_set:Ljava/util/BitSet;

    aget-object v4, v0, v2

    invoke-virtual {v4}, Lcom/sun/org/apache/bcel/internal/classfile/CodeException;->getHandlerPC()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/util/BitSet;->set(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p3}, Lcom/sun/org/apache/bcel/internal/classfile/Code;->getAttributes()[Lcom/sun/org/apache/bcel/internal/classfile/Attribute;

    move-result-object p3

    move v0, p2

    :goto_1
    array-length v1, p3

    if-ge v0, v1, :cond_2

    aget-object v1, p3, v0

    invoke-virtual {v1}, Lcom/sun/org/apache/bcel/internal/classfile/Attribute;->getTag()B

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    aget-object p3, p3, v0

    check-cast p3, Lcom/sun/org/apache/bcel/internal/classfile/LocalVariableTable;

    invoke-virtual {p3}, Lcom/sun/org/apache/bcel/internal/classfile/LocalVariableTable;->getLocalVariableTable()[Lcom/sun/org/apache/bcel/internal/classfile/LocalVariable;

    move-result-object p3

    move v0, p2

    :goto_2
    array-length v1, p3

    if-ge v0, v1, :cond_2

    aget-object v1, p3, v0

    invoke-virtual {v1}, Lcom/sun/org/apache/bcel/internal/classfile/LocalVariable;->getStartPC()I

    move-result v1

    aget-object v2, p3, v0

    invoke-virtual {v2}, Lcom/sun/org/apache/bcel/internal/classfile/LocalVariable;->getLength()I

    move-result v2

    add-int/2addr v2, v1

    iget-object v3, p0, Lcom/sun/org/apache/bcel/internal/util/CodeHTML;->goto_set:Ljava/util/BitSet;

    invoke-virtual {v3, v1}, Ljava/util/BitSet;->set(I)V

    iget-object v1, p0, Lcom/sun/org/apache/bcel/internal/util/CodeHTML;->goto_set:Ljava/util/BitSet;

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    :goto_3
    invoke-virtual {p1}, Ljava/io/InputStream;->available()I

    move-result p3

    if-lez p3, :cond_7

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result p3

    const/16 v0, 0xaa

    if-eq p3, v0, :cond_3

    const/16 v1, 0xab

    if-eq p3, v1, :cond_3

    packed-switch p3, :pswitch_data_0

    packed-switch p3, :pswitch_data_1

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/util/ByteSequence;->unreadByte()V

    invoke-direct {p0, p1, p2}, Lcom/sun/org/apache/bcel/internal/util/CodeHTML;->codeToHTML(Lcom/sun/org/apache/bcel/internal/util/ByteSequence;I)Ljava/lang/String;

    goto :goto_3

    :pswitch_0
    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/util/ByteSequence;->getIndex()I

    move-result p3

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    add-int/2addr p3, v0

    add-int/lit8 p3, p3, -0x1

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/util/CodeHTML;->goto_set:Ljava/util/BitSet;

    invoke-virtual {v0, p3}, Ljava/util/BitSet;->set(I)V

    goto :goto_3

    :pswitch_1
    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/util/ByteSequence;->getIndex()I

    move-result p3

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readShort()S

    move-result v0

    add-int/2addr p3, v0

    add-int/lit8 p3, p3, -0x1

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/util/CodeHTML;->goto_set:Ljava/util/BitSet;

    invoke-virtual {v0, p3}, Ljava/util/BitSet;->set(I)V

    goto :goto_3

    :cond_3
    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/util/ByteSequence;->getIndex()I

    move-result v1

    rem-int/lit8 v1, v1, 0x4

    if-nez v1, :cond_4

    move v1, p2

    goto :goto_4

    :cond_4
    rsub-int/lit8 v1, v1, 0x4

    :goto_4
    move v2, p2

    :goto_5
    if-ge v2, v1, :cond_5

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_5
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    if-ne p3, v0, :cond_6

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result p3

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/util/ByteSequence;->getIndex()I

    move-result v3

    add-int/lit8 v3, v3, -0xc

    sub-int/2addr v3, v1

    add-int/lit8 v3, v3, -0x1

    add-int/2addr v2, v3

    iget-object v1, p0, Lcom/sun/org/apache/bcel/internal/util/CodeHTML;->goto_set:Ljava/util/BitSet;

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    move v1, p2

    :goto_6
    sub-int v2, v0, p3

    add-int/lit8 v2, v2, 0x1

    if-ge v1, v2, :cond_2

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    add-int/2addr v2, v3

    iget-object v4, p0, Lcom/sun/org/apache/bcel/internal/util/CodeHTML;->goto_set:Ljava/util/BitSet;

    invoke-virtual {v4, v2}, Ljava/util/BitSet;->set(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_6
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result p3

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/util/ByteSequence;->getIndex()I

    move-result v0

    add-int/lit8 v0, v0, -0x8

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    add-int/2addr v2, v0

    iget-object v1, p0, Lcom/sun/org/apache/bcel/internal/util/CodeHTML;->goto_set:Ljava/util/BitSet;

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    move v1, p2

    :goto_7
    if-ge v1, p3, :cond_2

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    add-int/2addr v2, v0

    iget-object v3, p0, Lcom/sun/org/apache/bcel/internal/util/CodeHTML;->goto_set:Ljava/util/BitSet;

    invoke-virtual {v3, v2}, Ljava/util/BitSet;->set(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_7
    return-void

    :pswitch_data_0
    .packed-switch 0x99
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xc6
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private writeMethod(Lcom/sun/org/apache/bcel/internal/classfile/Method;I)V
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual/range {p1 .. p1}, Lcom/sun/org/apache/bcel/internal/classfile/FieldOrMethod;->getSignature()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/sun/org/apache/bcel/internal/classfile/Utility;->methodSignatureArgumentTypes(Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3}, Lcom/sun/org/apache/bcel/internal/classfile/Utility;->methodSignatureReturnType(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/sun/org/apache/bcel/internal/classfile/FieldOrMethod;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sun/org/apache/bcel/internal/util/Class2HTML;->toHTML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lcom/sun/org/apache/bcel/internal/classfile/AccessFlags;->getAccessFlags()I

    move-result v6

    invoke-static {v6}, Lcom/sun/org/apache/bcel/internal/classfile/Utility;->accessToString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, " "

    const-string v8, "&nbsp;"

    invoke-static {v6, v7, v8}, Lcom/sun/org/apache/bcel/internal/classfile/Utility;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lcom/sun/org/apache/bcel/internal/classfile/FieldOrMethod;->getAttributes()[Lcom/sun/org/apache/bcel/internal/classfile/Attribute;

    move-result-object v7

    iget-object v8, v0, Lcom/sun/org/apache/bcel/internal/util/CodeHTML;->file:Ljava/io/PrintWriter;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "<P><B><FONT COLOR=\"#FF0000\">"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "</FONT>&nbsp;"

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "<A NAME=method"

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ">"

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/sun/org/apache/bcel/internal/util/Class2HTML;->referenceType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "</A>&nbsp<A HREF=\""

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/sun/org/apache/bcel/internal/util/CodeHTML;->class_name:Ljava/lang/String;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_methods.html#method"

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\" TARGET=Methods>"

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "</A>("

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move v2, v3

    :goto_0
    array-length v5, v4

    if-ge v2, v5, :cond_1

    iget-object v5, v0, Lcom/sun/org/apache/bcel/internal/util/CodeHTML;->file:Ljava/io/PrintWriter;

    aget-object v8, v4, v2

    invoke-static {v8}, Lcom/sun/org/apache/bcel/internal/util/Class2HTML;->referenceType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    array-length v5, v4

    add-int/lit8 v5, v5, -0x1

    if-ge v2, v5, :cond_0

    iget-object v5, v0, Lcom/sun/org/apache/bcel/internal/util/CodeHTML;->file:Ljava/io/PrintWriter;

    const-string v8, ",&nbsp;"

    invoke-virtual {v5, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v2, v0, Lcom/sun/org/apache/bcel/internal/util/CodeHTML;->file:Ljava/io/PrintWriter;

    const-string v4, ")</B></P>"

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    array-length v2, v7

    const/4 v4, 0x0

    const-string v5, "@"

    if-lez v2, :cond_6

    iget-object v2, v0, Lcom/sun/org/apache/bcel/internal/util/CodeHTML;->file:Ljava/io/PrintWriter;

    const-string v8, "<H4>Attributes</H4><UL>\n"

    invoke-virtual {v2, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move v8, v3

    move-object v2, v4

    :goto_1
    array-length v9, v7

    const-string v10, "</UL>"

    if-ge v8, v9, :cond_5

    aget-object v9, v7, v8

    invoke-virtual {v9}, Lcom/sun/org/apache/bcel/internal/classfile/Attribute;->getTag()B

    move-result v9

    const/4 v11, -0x1

    const-string v12, "</A></LI>\n"

    const-string v13, "\" TARGET=Attributes>"

    const-string v14, "<LI><A HREF=\""

    if-eq v9, v11, :cond_2

    iget-object v11, v0, Lcom/sun/org/apache/bcel/internal/util/CodeHTML;->file:Ljava/io/PrintWriter;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/sun/org/apache/bcel/internal/util/CodeHTML;->class_name:Ljava/lang/String;

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_attributes.html#method"

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/sun/org/apache/bcel/internal/Constants;->ATTRIBUTE_NAMES:[Ljava/lang/String;

    aget-object v3, v3, v9

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    iget-object v3, v0, Lcom/sun/org/apache/bcel/internal/util/CodeHTML;->file:Ljava/io/PrintWriter;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "<LI>"

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v15, v7, v8

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v15, "</LI>"

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :goto_2
    const/4 v3, 0x2

    if-ne v9, v3, :cond_4

    aget-object v2, v7, v8

    move-object v4, v2

    check-cast v4, Lcom/sun/org/apache/bcel/internal/classfile/Code;

    invoke-virtual {v4}, Lcom/sun/org/apache/bcel/internal/classfile/Code;->getAttributes()[Lcom/sun/org/apache/bcel/internal/classfile/Attribute;

    move-result-object v2

    invoke-virtual {v4}, Lcom/sun/org/apache/bcel/internal/classfile/Code;->getCode()[B

    move-result-object v3

    iget-object v9, v0, Lcom/sun/org/apache/bcel/internal/util/CodeHTML;->file:Ljava/io/PrintWriter;

    const-string v11, "<UL>"

    invoke-virtual {v9, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v9, 0x0

    :goto_3
    array-length v11, v2

    if-ge v9, v11, :cond_3

    aget-object v11, v2, v9

    invoke-virtual {v11}, Lcom/sun/org/apache/bcel/internal/classfile/Attribute;->getTag()B

    move-result v11

    iget-object v15, v0, Lcom/sun/org/apache/bcel/internal/util/CodeHTML;->file:Ljava/io/PrintWriter;

    move-object/from16 v16, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v17, v3

    iget-object v3, v0, Lcom/sun/org/apache/bcel/internal/util/CodeHTML;->class_name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_attributes.html#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "method"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/sun/org/apache/bcel/internal/Constants;->ATTRIBUTE_NAMES:[Ljava/lang/String;

    aget-object v3, v3, v11

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v2, v16

    move-object/from16 v3, v17

    goto :goto_3

    :cond_3
    move-object/from16 v17, v3

    iget-object v2, v0, Lcom/sun/org/apache/bcel/internal/util/CodeHTML;->file:Ljava/io/PrintWriter;

    invoke-virtual {v2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v2, v17

    :cond_4
    add-int/lit8 v8, v8, 0x1

    const/4 v3, 0x0

    goto/16 :goto_1

    :cond_5
    iget-object v3, v0, Lcom/sun/org/apache/bcel/internal/util/CodeHTML;->file:Ljava/io/PrintWriter;

    invoke-virtual {v3, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move-object/from16 v18, v4

    move-object v4, v2

    move-object/from16 v2, v18

    goto :goto_4

    :cond_6
    move-object v2, v4

    :goto_4
    if-eqz v4, :cond_a

    new-instance v3, Lcom/sun/org/apache/bcel/internal/util/ByteSequence;

    invoke-direct {v3, v4}, Lcom/sun/org/apache/bcel/internal/util/ByteSequence;-><init>([B)V

    invoke-virtual {v3}, Ljava/io/InputStream;->available()I

    move-result v7

    invoke-virtual {v3, v7}, Ljava/io/InputStream;->mark(I)V

    move-object/from16 v7, p1

    invoke-direct {v0, v3, v7, v2}, Lcom/sun/org/apache/bcel/internal/util/CodeHTML;->findGotos(Lcom/sun/org/apache/bcel/internal/util/ByteSequence;Lcom/sun/org/apache/bcel/internal/classfile/Method;Lcom/sun/org/apache/bcel/internal/classfile/Code;)V

    invoke-virtual {v3}, Ljava/io/InputStream;->reset()V

    iget-object v2, v0, Lcom/sun/org/apache/bcel/internal/util/CodeHTML;->file:Ljava/io/PrintWriter;

    const-string v7, "<TABLE BORDER=0><TR><TH ALIGN=LEFT>Byte<BR>offset</TH><TH ALIGN=LEFT>Instruction</TH><TH ALIGN=LEFT>Argument</TH>"

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_5
    invoke-virtual {v3}, Ljava/io/InputStream;->available()I

    move-result v2

    if-lez v2, :cond_9

    invoke-virtual {v3}, Lcom/sun/org/apache/bcel/internal/util/ByteSequence;->getIndex()I

    move-result v2

    invoke-direct {v0, v3, v1}, Lcom/sun/org/apache/bcel/internal/util/CodeHTML;->codeToHTML(Lcom/sun/org/apache/bcel/internal/util/ByteSequence;I)Ljava/lang/String;

    move-result-object v7

    iget-object v8, v0, Lcom/sun/org/apache/bcel/internal/util/CodeHTML;->goto_set:Ljava/util/BitSet;

    invoke-virtual {v8, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v8

    const-string v9, "<A NAME=code"

    const-string v10, ""

    if-eqz v8, :cond_7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, "></A>"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_6

    :cond_7
    move-object v8, v10

    :goto_6
    invoke-virtual {v3}, Lcom/sun/org/apache/bcel/internal/util/ByteSequence;->getIndex()I

    move-result v11

    array-length v12, v4

    if-ne v11, v12, :cond_8

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v9, v4

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "</A>"

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_7

    :cond_8
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_7
    iget-object v9, v0, Lcom/sun/org/apache/bcel/internal/util/CodeHTML;->file:Ljava/io/PrintWriter;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "<TR VALIGN=TOP><TD>"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "</TD><TD>"

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "</TR>"

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_9
    iget-object v1, v0, Lcom/sun/org/apache/bcel/internal/util/CodeHTML;->file:Ljava/io/PrintWriter;

    const-string v2, "<TR><TD> </A></TD></TR>"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/sun/org/apache/bcel/internal/util/CodeHTML;->file:Ljava/io/PrintWriter;

    const-string v1, "</TABLE>"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_a
    return-void
.end method
