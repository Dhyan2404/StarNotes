.class final Lcom/sun/org/apache/bcel/internal/util/AttributeHTML;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sun/org/apache/bcel/internal/Constants;


# instance fields
.field private attr_count:I

.field private class_name:Ljava/lang/String;

.field private constant_html:Lcom/sun/org/apache/bcel/internal/util/ConstantHTML;

.field private constant_pool:Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;

.field private file:Ljava/io/PrintWriter;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;Lcom/sun/org/apache/bcel/internal/util/ConstantHTML;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sun/org/apache/bcel/internal/util/AttributeHTML;->attr_count:I

    iput-object p2, p0, Lcom/sun/org/apache/bcel/internal/util/AttributeHTML;->class_name:Ljava/lang/String;

    iput-object p3, p0, Lcom/sun/org/apache/bcel/internal/util/AttributeHTML;->constant_pool:Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;

    iput-object p4, p0, Lcom/sun/org/apache/bcel/internal/util/AttributeHTML;->constant_html:Lcom/sun/org/apache/bcel/internal/util/ConstantHTML;

    new-instance p3, Ljava/io/PrintWriter;

    new-instance p4, Ljava/io/FileOutputStream;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_attributes.html"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p4, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {p3, p4}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    iput-object p3, p0, Lcom/sun/org/apache/bcel/internal/util/AttributeHTML;->file:Ljava/io/PrintWriter;

    const-string p0, "<HTML><BODY BGCOLOR=\"#C0C0C0\"><TABLE BORDER=0>"

    invoke-virtual {p3, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method private final codeLink(II)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<A HREF=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/util/AttributeHTML;->class_name:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "_code.html#code"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "@"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "\" TARGET=Code>"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "</A>"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final close()V
    .locals 2

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/util/AttributeHTML;->file:Ljava/io/PrintWriter;

    const-string v1, "</TABLE></BODY></HTML>"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/util/AttributeHTML;->file:Ljava/io/PrintWriter;

    invoke-virtual {p0}, Ljava/io/PrintWriter;->close()V

    return-void
.end method

.method public final writeAttribute(Lcom/sun/org/apache/bcel/internal/classfile/Attribute;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lcom/sun/org/apache/bcel/internal/util/AttributeHTML;->writeAttribute(Lcom/sun/org/apache/bcel/internal/classfile/Attribute;Ljava/lang/String;I)V

    return-void
.end method

.method public final writeAttribute(Lcom/sun/org/apache/bcel/internal/classfile/Attribute;Ljava/lang/String;I)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/classfile/Attribute;->getTag()B

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    .line 3
    :cond_0
    iget v1, p0, Lcom/sun/org/apache/bcel/internal/util/AttributeHTML;->attr_count:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/sun/org/apache/bcel/internal/util/AttributeHTML;->attr_count:I

    .line 4
    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_1

    .line 5
    iget-object v1, p0, Lcom/sun/org/apache/bcel/internal/util/AttributeHTML;->file:Ljava/io/PrintWriter;

    const-string v3, "<TR BGCOLOR=\"#C0C0C0\"><TD>"

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    .line 6
    :cond_1
    iget-object v1, p0, Lcom/sun/org/apache/bcel/internal/util/AttributeHTML;->file:Ljava/io/PrintWriter;

    const-string v3, "<TR BGCOLOR=\"#A0A0A0\"><TD>"

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7
    :goto_0
    iget-object v1, p0, Lcom/sun/org/apache/bcel/internal/util/AttributeHTML;->file:Ljava/io/PrintWriter;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<H4><A NAME=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\">"

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/sun/org/apache/bcel/internal/util/AttributeHTML;->attr_count:I

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " "

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p2, Lcom/sun/org/apache/bcel/internal/Constants;->ATTRIBUTE_NAMES:[Ljava/lang/String;

    aget-object p2, p2, v0

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "</A></H4>"

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p2, "<LI>"

    const-string v1, "<P>"

    const-string v3, ")</A></UL>\n"

    const-string v4, "<UL><LI><A HREF=\""

    const-string v5, "</UL>\n"

    const-string v6, "<UL>"

    const-string v7, "_cp.html#cp"

    const/4 v8, 0x0

    packed-switch v0, :pswitch_data_0

    .line 8
    iget-object p2, p0, Lcom/sun/org/apache/bcel/internal/util/AttributeHTML;->file:Ljava/io/PrintWriter;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/classfile/Attribute;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 9
    :pswitch_0
    check-cast p1, Lcom/sun/org/apache/bcel/internal/classfile/InnerClasses;

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/classfile/InnerClasses;->getInnerClasses()[Lcom/sun/org/apache/bcel/internal/classfile/InnerClass;

    move-result-object p1

    .line 10
    iget-object p2, p0, Lcom/sun/org/apache/bcel/internal/util/AttributeHTML;->file:Ljava/io/PrintWriter;

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 11
    :goto_1
    array-length p2, p1

    if-ge v8, p2, :cond_3

    .line 12
    aget-object p2, p1, v8

    invoke-virtual {p2}, Lcom/sun/org/apache/bcel/internal/classfile/InnerClass;->getInnerNameIndex()I

    move-result p2

    if-lez p2, :cond_2

    .line 13
    iget-object p3, p0, Lcom/sun/org/apache/bcel/internal/util/AttributeHTML;->constant_pool:Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;

    invoke-virtual {p3, p2, v2}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;->getConstant(IB)Lcom/sun/org/apache/bcel/internal/classfile/Constant;

    move-result-object p2

    check-cast p2, Lcom/sun/org/apache/bcel/internal/classfile/ConstantUtf8;

    invoke-virtual {p2}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantUtf8;->getBytes()Ljava/lang/String;

    move-result-object p2

    goto :goto_2

    :cond_2
    const-string p2, "&lt;anonymous&gt;"

    .line 14
    :goto_2
    aget-object p3, p1, v8

    invoke-virtual {p3}, Lcom/sun/org/apache/bcel/internal/classfile/InnerClass;->getInnerAccessFlags()I

    move-result p3

    invoke-static {p3}, Lcom/sun/org/apache/bcel/internal/classfile/Utility;->accessToString(I)Ljava/lang/String;

    move-result-object p3

    .line 15
    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/util/AttributeHTML;->file:Ljava/io/PrintWriter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<LI><FONT COLOR=\"#FF0000\">"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "</FONT> "

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/sun/org/apache/bcel/internal/util/AttributeHTML;->constant_html:Lcom/sun/org/apache/bcel/internal/util/ConstantHTML;

    aget-object v3, p1, v8

    invoke-virtual {v3}, Lcom/sun/org/apache/bcel/internal/classfile/InnerClass;->getInnerClassIndex()I

    move-result v3

    invoke-virtual {p3, v3}, Lcom/sun/org/apache/bcel/internal/util/ConstantHTML;->referenceConstant(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " in&nbsp;class "

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/sun/org/apache/bcel/internal/util/AttributeHTML;->constant_html:Lcom/sun/org/apache/bcel/internal/util/ConstantHTML;

    aget-object v3, p1, v8

    invoke-virtual {v3}, Lcom/sun/org/apache/bcel/internal/classfile/InnerClass;->getOuterClassIndex()I

    move-result v3

    invoke-virtual {p3, v3}, Lcom/sun/org/apache/bcel/internal/util/ConstantHTML;->referenceConstant(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " named "

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "</LI>\n"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 16
    :cond_3
    iget-object p1, p0, Lcom/sun/org/apache/bcel/internal/util/AttributeHTML;->file:Ljava/io/PrintWriter;

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 17
    :pswitch_1
    check-cast p1, Lcom/sun/org/apache/bcel/internal/classfile/LocalVariableTable;

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/classfile/LocalVariableTable;->getLocalVariableTable()[Lcom/sun/org/apache/bcel/internal/classfile/LocalVariable;

    move-result-object p1

    .line 18
    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/util/AttributeHTML;->file:Ljava/io/PrintWriter;

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move v0, v8

    .line 19
    :goto_3
    array-length v1, p1

    if-ge v0, v1, :cond_4

    .line 20
    aget-object v1, p1, v0

    invoke-virtual {v1}, Lcom/sun/org/apache/bcel/internal/classfile/LocalVariable;->getSignatureIndex()I

    move-result v1

    .line 21
    iget-object v3, p0, Lcom/sun/org/apache/bcel/internal/util/AttributeHTML;->constant_pool:Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;

    invoke-virtual {v3, v1, v2}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;->getConstant(IB)Lcom/sun/org/apache/bcel/internal/classfile/Constant;

    move-result-object v1

    check-cast v1, Lcom/sun/org/apache/bcel/internal/classfile/ConstantUtf8;

    invoke-virtual {v1}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantUtf8;->getBytes()Ljava/lang/String;

    move-result-object v1

    .line 22
    invoke-static {v1, v8}, Lcom/sun/org/apache/bcel/internal/classfile/Utility;->signatureToString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 23
    aget-object v3, p1, v0

    invoke-virtual {v3}, Lcom/sun/org/apache/bcel/internal/classfile/LocalVariable;->getStartPC()I

    move-result v3

    .line 24
    aget-object v4, p1, v0

    invoke-virtual {v4}, Lcom/sun/org/apache/bcel/internal/classfile/LocalVariable;->getLength()I

    move-result v4

    add-int/2addr v4, v3

    .line 25
    iget-object v6, p0, Lcom/sun/org/apache/bcel/internal/util/AttributeHTML;->file:Ljava/io/PrintWriter;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/sun/org/apache/bcel/internal/util/Class2HTML;->referenceType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&nbsp;<B>"

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v1, p1, v0

    invoke-virtual {v1}, Lcom/sun/org/apache/bcel/internal/classfile/LocalVariable;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "</B> in slot %"

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v1, p1, v0

    invoke-virtual {v1}, Lcom/sun/org/apache/bcel/internal/classfile/LocalVariable;->getIndex()I

    move-result v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "<BR>Valid from lines "

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "<A HREF=\""

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/sun/org/apache/bcel/internal/util/AttributeHTML;->class_name:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "_code.html#code"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, "@"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, "\" TARGET=Code>"

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "</A> to "

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sun/org/apache/bcel/internal/util/AttributeHTML;->class_name:Ljava/lang/String;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "</A></LI>"

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_3

    .line 26
    :cond_4
    iget-object p1, p0, Lcom/sun/org/apache/bcel/internal/util/AttributeHTML;->file:Ljava/io/PrintWriter;

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 27
    :pswitch_2
    check-cast p1, Lcom/sun/org/apache/bcel/internal/classfile/LineNumberTable;

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/classfile/LineNumberTable;->getLineNumberTable()[Lcom/sun/org/apache/bcel/internal/classfile/LineNumber;

    move-result-object p1

    .line 28
    iget-object p2, p0, Lcom/sun/org/apache/bcel/internal/util/AttributeHTML;->file:Ljava/io/PrintWriter;

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 29
    :goto_4
    array-length p2, p1

    if-ge v8, p2, :cond_9

    .line 30
    iget-object p2, p0, Lcom/sun/org/apache/bcel/internal/util/AttributeHTML;->file:Ljava/io/PrintWriter;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "("

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v0, p1, v8

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/classfile/LineNumber;->getStartPC()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",&nbsp;"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v0, p1, v8

    invoke-virtual {v0}, Lcom/sun/org/apache/bcel/internal/classfile/LineNumber;->getLineNumber()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 31
    array-length p2, p1

    sub-int/2addr p2, v2

    if-ge v8, p2, :cond_5

    .line 32
    iget-object p2, p0, Lcom/sun/org/apache/bcel/internal/util/AttributeHTML;->file:Ljava/io/PrintWriter;

    const-string p3, ", "

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 33
    :pswitch_3
    check-cast p1, Lcom/sun/org/apache/bcel/internal/classfile/ExceptionTable;

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/classfile/ExceptionTable;->getExceptionIndexTable()[I

    move-result-object p1

    .line 34
    iget-object p2, p0, Lcom/sun/org/apache/bcel/internal/util/AttributeHTML;->file:Ljava/io/PrintWriter;

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 35
    :goto_5
    array-length p2, p1

    if-ge v8, p2, :cond_6

    .line 36
    iget-object p2, p0, Lcom/sun/org/apache/bcel/internal/util/AttributeHTML;->file:Ljava/io/PrintWriter;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "<LI><A HREF=\""

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/util/AttributeHTML;->class_name:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v0, p1, v8

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\" TARGET=\"ConstantPool\">Exception class index("

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v0, p1, v8

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")</A>\n"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 37
    :cond_6
    iget-object p1, p0, Lcom/sun/org/apache/bcel/internal/util/AttributeHTML;->file:Ljava/io/PrintWriter;

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 38
    :pswitch_4
    check-cast p1, Lcom/sun/org/apache/bcel/internal/classfile/Code;

    .line 39
    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/util/AttributeHTML;->file:Ljava/io/PrintWriter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<UL><LI>Maximum stack size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/classfile/Code;->getMaxStack()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "</LI>\n<LI>Number of local variables = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/classfile/Code;->getMaxLocals()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "</LI>\n<LI><A HREF=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sun/org/apache/bcel/internal/util/AttributeHTML;->class_name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_code.html#method"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\" TARGET=Code>Byte code</A></LI></UL>\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 40
    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/classfile/Code;->getExceptionTable()[Lcom/sun/org/apache/bcel/internal/classfile/CodeException;

    move-result-object p1

    .line 41
    array-length v0, p1

    if-lez v0, :cond_9

    .line 42
    iget-object v1, p0, Lcom/sun/org/apache/bcel/internal/util/AttributeHTML;->file:Ljava/io/PrintWriter;

    const-string v2, "<P><B>Exceptions handled</B><UL>"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :goto_6
    if-ge v8, v0, :cond_8

    .line 43
    aget-object v1, p1, v8

    invoke-virtual {v1}, Lcom/sun/org/apache/bcel/internal/classfile/CodeException;->getCatchType()I

    move-result v1

    .line 44
    iget-object v2, p0, Lcom/sun/org/apache/bcel/internal/util/AttributeHTML;->file:Ljava/io/PrintWriter;

    invoke-virtual {v2, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    if-eqz v1, :cond_7

    .line 45
    iget-object v2, p0, Lcom/sun/org/apache/bcel/internal/util/AttributeHTML;->file:Ljava/io/PrintWriter;

    iget-object v3, p0, Lcom/sun/org/apache/bcel/internal/util/AttributeHTML;->constant_html:Lcom/sun/org/apache/bcel/internal/util/ConstantHTML;

    invoke-virtual {v3, v1}, Lcom/sun/org/apache/bcel/internal/util/ConstantHTML;->referenceConstant(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_7

    .line 46
    :cond_7
    iget-object v1, p0, Lcom/sun/org/apache/bcel/internal/util/AttributeHTML;->file:Ljava/io/PrintWriter;

    const-string v2, "Any Exception"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 47
    :goto_7
    iget-object v1, p0, Lcom/sun/org/apache/bcel/internal/util/AttributeHTML;->file:Ljava/io/PrintWriter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<BR>(Ranging from lines "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, p1, v8

    invoke-virtual {v3}, Lcom/sun/org/apache/bcel/internal/classfile/CodeException;->getStartPC()I

    move-result v3

    invoke-direct {p0, v3, p3}, Lcom/sun/org/apache/bcel/internal/util/AttributeHTML;->codeLink(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, p1, v8

    invoke-virtual {v3}, Lcom/sun/org/apache/bcel/internal/classfile/CodeException;->getEndPC()I

    move-result v3

    invoke-direct {p0, v3, p3}, Lcom/sun/org/apache/bcel/internal/util/AttributeHTML;->codeLink(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", handled at line "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, p1, v8

    invoke-virtual {v3}, Lcom/sun/org/apache/bcel/internal/classfile/CodeException;->getHandlerPC()I

    move-result v3

    invoke-direct {p0, v3, p3}, Lcom/sun/org/apache/bcel/internal/util/AttributeHTML;->codeLink(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")</LI>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    .line 48
    :cond_8
    iget-object p1, p0, Lcom/sun/org/apache/bcel/internal/util/AttributeHTML;->file:Ljava/io/PrintWriter;

    const-string p2, "</UL>"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_8

    .line 49
    :pswitch_5
    check-cast p1, Lcom/sun/org/apache/bcel/internal/classfile/ConstantValue;

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantValue;->getConstantValueIndex()I

    move-result p1

    .line 50
    iget-object p2, p0, Lcom/sun/org/apache/bcel/internal/util/AttributeHTML;->file:Ljava/io/PrintWriter;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/util/AttributeHTML;->class_name:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\" TARGET=\"ConstantPool\">Constant value index("

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_8

    .line 51
    :pswitch_6
    check-cast p1, Lcom/sun/org/apache/bcel/internal/classfile/SourceFile;

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/classfile/SourceFile;->getSourceFileIndex()I

    move-result p1

    .line 52
    iget-object p2, p0, Lcom/sun/org/apache/bcel/internal/util/AttributeHTML;->file:Ljava/io/PrintWriter;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/util/AttributeHTML;->class_name:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\" TARGET=\"ConstantPool\">Source file index("

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 53
    :cond_9
    :goto_8
    iget-object p1, p0, Lcom/sun/org/apache/bcel/internal/util/AttributeHTML;->file:Ljava/io/PrintWriter;

    const-string p2, "</TD></TR>"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 54
    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/util/AttributeHTML;->file:Ljava/io/PrintWriter;

    invoke-virtual {p0}, Ljava/io/PrintWriter;->flush()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
