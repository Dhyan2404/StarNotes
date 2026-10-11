.class Lcom/sun/org/apache/xalan/internal/xsltc/compiler/CUP$XPathParser$actions;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final parser:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XPathParser;


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XPathParser;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/CUP$XPathParser$actions;->parser:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XPathParser;

    return-void
.end method


# virtual methods
.method public final CUP$XPathParser$do_action(ILcom/sun/java_cup/internal/runtime/lr_parser;Ljava/util/Stack;I)Lcom/sun/java_cup/internal/runtime/Symbol;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    const/16 v3, 0xc

    const/16 v4, 0x8

    const/16 v5, 0xa

    const/16 v7, 0x19

    const/16 v8, 0x11

    const/16 v9, 0xd

    const/4 v12, -0x1

    const/4 v15, 0x7

    const/16 v14, 0x28

    const/4 v6, 0x0

    const/16 v2, 0x25

    const/4 v10, 0x3

    const/4 v13, 0x1

    const/4 v11, 0x0

    packed-switch p1, :pswitch_data_0

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Invalid action number found in internal parse table"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget-object v0, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/CUP$XPathParser$actions;->parser:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XPathParser;

    const-string v3, "id"

    invoke-virtual {v0, v3}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XPathParser;->getQNameIgnoreDefaultNs(Ljava/lang/String;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;

    move-result-object v0

    new-instance v3, Lcom/sun/java_cup/internal/runtime/Symbol;

    add-int/lit8 v4, p4, 0x0

    invoke-virtual {v1, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v5, v5, Lcom/sun/java_cup/internal/runtime/Symbol;->left:I

    invoke-virtual {v1, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v1, v1, Lcom/sun/java_cup/internal/runtime/Symbol;->right:I

    invoke-direct {v3, v2, v5, v1, v0}, Lcom/sun/java_cup/internal/runtime/Symbol;-><init>(IIILjava/lang/Object;)V

    return-object v3

    :pswitch_1
    iget-object v0, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/CUP$XPathParser$actions;->parser:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XPathParser;

    const-string v3, "self"

    invoke-virtual {v0, v3}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XPathParser;->getQNameIgnoreDefaultNs(Ljava/lang/String;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;

    move-result-object v0

    new-instance v3, Lcom/sun/java_cup/internal/runtime/Symbol;

    add-int/lit8 v4, p4, 0x0

    invoke-virtual {v1, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v5, v5, Lcom/sun/java_cup/internal/runtime/Symbol;->left:I

    invoke-virtual {v1, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v1, v1, Lcom/sun/java_cup/internal/runtime/Symbol;->right:I

    invoke-direct {v3, v2, v5, v1, v0}, Lcom/sun/java_cup/internal/runtime/Symbol;-><init>(IIILjava/lang/Object;)V

    return-object v3

    :pswitch_2
    iget-object v0, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/CUP$XPathParser$actions;->parser:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XPathParser;

    const-string v3, "preceding-sibling"

    invoke-virtual {v0, v3}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XPathParser;->getQNameIgnoreDefaultNs(Ljava/lang/String;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;

    move-result-object v0

    new-instance v3, Lcom/sun/java_cup/internal/runtime/Symbol;

    add-int/lit8 v4, p4, 0x0

    invoke-virtual {v1, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v5, v5, Lcom/sun/java_cup/internal/runtime/Symbol;->left:I

    invoke-virtual {v1, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v1, v1, Lcom/sun/java_cup/internal/runtime/Symbol;->right:I

    invoke-direct {v3, v2, v5, v1, v0}, Lcom/sun/java_cup/internal/runtime/Symbol;-><init>(IIILjava/lang/Object;)V

    return-object v3

    :pswitch_3
    iget-object v0, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/CUP$XPathParser$actions;->parser:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XPathParser;

    const-string v3, "preceding"

    invoke-virtual {v0, v3}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XPathParser;->getQNameIgnoreDefaultNs(Ljava/lang/String;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;

    move-result-object v0

    new-instance v3, Lcom/sun/java_cup/internal/runtime/Symbol;

    add-int/lit8 v4, p4, 0x0

    invoke-virtual {v1, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v5, v5, Lcom/sun/java_cup/internal/runtime/Symbol;->left:I

    invoke-virtual {v1, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v1, v1, Lcom/sun/java_cup/internal/runtime/Symbol;->right:I

    invoke-direct {v3, v2, v5, v1, v0}, Lcom/sun/java_cup/internal/runtime/Symbol;-><init>(IIILjava/lang/Object;)V

    return-object v3

    :pswitch_4
    iget-object v0, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/CUP$XPathParser$actions;->parser:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XPathParser;

    const-string v3, "parent"

    invoke-virtual {v0, v3}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XPathParser;->getQNameIgnoreDefaultNs(Ljava/lang/String;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;

    move-result-object v0

    new-instance v3, Lcom/sun/java_cup/internal/runtime/Symbol;

    add-int/lit8 v4, p4, 0x0

    invoke-virtual {v1, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v5, v5, Lcom/sun/java_cup/internal/runtime/Symbol;->left:I

    invoke-virtual {v1, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v1, v1, Lcom/sun/java_cup/internal/runtime/Symbol;->right:I

    invoke-direct {v3, v2, v5, v1, v0}, Lcom/sun/java_cup/internal/runtime/Symbol;-><init>(IIILjava/lang/Object;)V

    return-object v3

    :pswitch_5
    iget-object v0, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/CUP$XPathParser$actions;->parser:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XPathParser;

    const-string v3, "namespace"

    invoke-virtual {v0, v3}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XPathParser;->getQNameIgnoreDefaultNs(Ljava/lang/String;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;

    move-result-object v0

    new-instance v3, Lcom/sun/java_cup/internal/runtime/Symbol;

    add-int/lit8 v4, p4, 0x0

    invoke-virtual {v1, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v5, v5, Lcom/sun/java_cup/internal/runtime/Symbol;->left:I

    invoke-virtual {v1, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v1, v1, Lcom/sun/java_cup/internal/runtime/Symbol;->right:I

    invoke-direct {v3, v2, v5, v1, v0}, Lcom/sun/java_cup/internal/runtime/Symbol;-><init>(IIILjava/lang/Object;)V

    return-object v3

    :pswitch_6
    iget-object v0, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/CUP$XPathParser$actions;->parser:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XPathParser;

    const-string v3, "following-sibling"

    invoke-virtual {v0, v3}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XPathParser;->getQNameIgnoreDefaultNs(Ljava/lang/String;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;

    move-result-object v0

    new-instance v3, Lcom/sun/java_cup/internal/runtime/Symbol;

    add-int/lit8 v4, p4, 0x0

    invoke-virtual {v1, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v5, v5, Lcom/sun/java_cup/internal/runtime/Symbol;->left:I

    invoke-virtual {v1, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v1, v1, Lcom/sun/java_cup/internal/runtime/Symbol;->right:I

    invoke-direct {v3, v2, v5, v1, v0}, Lcom/sun/java_cup/internal/runtime/Symbol;-><init>(IIILjava/lang/Object;)V

    return-object v3

    :pswitch_7
    iget-object v0, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/CUP$XPathParser$actions;->parser:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XPathParser;

    const-string v3, "following"

    invoke-virtual {v0, v3}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XPathParser;->getQNameIgnoreDefaultNs(Ljava/lang/String;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;

    move-result-object v0

    new-instance v3, Lcom/sun/java_cup/internal/runtime/Symbol;

    add-int/lit8 v4, p4, 0x0

    invoke-virtual {v1, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v5, v5, Lcom/sun/java_cup/internal/runtime/Symbol;->left:I

    invoke-virtual {v1, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v1, v1, Lcom/sun/java_cup/internal/runtime/Symbol;->right:I

    invoke-direct {v3, v2, v5, v1, v0}, Lcom/sun/java_cup/internal/runtime/Symbol;-><init>(IIILjava/lang/Object;)V

    return-object v3

    :pswitch_8
    iget-object v0, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/CUP$XPathParser$actions;->parser:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XPathParser;

    const-string v3, "decendant-or-self"

    invoke-virtual {v0, v3}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XPathParser;->getQNameIgnoreDefaultNs(Ljava/lang/String;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;

    move-result-object v0

    new-instance v3, Lcom/sun/java_cup/internal/runtime/Symbol;

    add-int/lit8 v4, p4, 0x0

    invoke-virtual {v1, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v5, v5, Lcom/sun/java_cup/internal/runtime/Symbol;->left:I

    invoke-virtual {v1, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v1, v1, Lcom/sun/java_cup/internal/runtime/Symbol;->right:I

    invoke-direct {v3, v2, v5, v1, v0}, Lcom/sun/java_cup/internal/runtime/Symbol;-><init>(IIILjava/lang/Object;)V

    return-object v3

    :pswitch_9
    iget-object v0, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/CUP$XPathParser$actions;->parser:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XPathParser;

    const-string v3, "decendant"

    invoke-virtual {v0, v3}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XPathParser;->getQNameIgnoreDefaultNs(Ljava/lang/String;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;

    move-result-object v0

    new-instance v3, Lcom/sun/java_cup/internal/runtime/Symbol;

    add-int/lit8 v4, p4, 0x0

    invoke-virtual {v1, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v5, v5, Lcom/sun/java_cup/internal/runtime/Symbol;->left:I

    invoke-virtual {v1, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v1, v1, Lcom/sun/java_cup/internal/runtime/Symbol;->right:I

    invoke-direct {v3, v2, v5, v1, v0}, Lcom/sun/java_cup/internal/runtime/Symbol;-><init>(IIILjava/lang/Object;)V

    return-object v3

    :pswitch_a
    iget-object v0, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/CUP$XPathParser$actions;->parser:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XPathParser;

    const-string v3, "child"

    invoke-virtual {v0, v3}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XPathParser;->getQNameIgnoreDefaultNs(Ljava/lang/String;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;

    move-result-object v0

    new-instance v3, Lcom/sun/java_cup/internal/runtime/Symbol;

    add-int/lit8 v4, p4, 0x0

    invoke-virtual {v1, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v5, v5, Lcom/sun/java_cup/internal/runtime/Symbol;->left:I

    invoke-virtual {v1, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v1, v1, Lcom/sun/java_cup/internal/runtime/Symbol;->right:I

    invoke-direct {v3, v2, v5, v1, v0}, Lcom/sun/java_cup/internal/runtime/Symbol;-><init>(IIILjava/lang/Object;)V

    return-object v3

    :pswitch_b
    iget-object v0, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/CUP$XPathParser$actions;->parser:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XPathParser;

    const-string v3, "attribute"

    invoke-virtual {v0, v3}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XPathParser;->getQNameIgnoreDefaultNs(Ljava/lang/String;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;

    move-result-object v0

    new-instance v3, Lcom/sun/java_cup/internal/runtime/Symbol;

    add-int/lit8 v4, p4, 0x0

    invoke-virtual {v1, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v5, v5, Lcom/sun/java_cup/internal/runtime/Symbol;->left:I

    invoke-virtual {v1, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v1, v1, Lcom/sun/java_cup/internal/runtime/Symbol;->right:I

    invoke-direct {v3, v2, v5, v1, v0}, Lcom/sun/java_cup/internal/runtime/Symbol;-><init>(IIILjava/lang/Object;)V

    return-object v3

    :pswitch_c
    iget-object v0, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/CUP$XPathParser$actions;->parser:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XPathParser;

    const-string v3, "ancestor-or-self"

    invoke-virtual {v0, v3}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XPathParser;->getQNameIgnoreDefaultNs(Ljava/lang/String;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;

    move-result-object v0

    new-instance v3, Lcom/sun/java_cup/internal/runtime/Symbol;

    add-int/lit8 v4, p4, 0x0

    invoke-virtual {v1, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v5, v5, Lcom/sun/java_cup/internal/runtime/Symbol;->left:I

    invoke-virtual {v1, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v1, v1, Lcom/sun/java_cup/internal/runtime/Symbol;->right:I

    invoke-direct {v3, v2, v5, v1, v0}, Lcom/sun/java_cup/internal/runtime/Symbol;-><init>(IIILjava/lang/Object;)V

    return-object v3

    :pswitch_d
    iget-object v0, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/CUP$XPathParser$actions;->parser:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XPathParser;

    const-string v3, "child"

    invoke-virtual {v0, v3}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XPathParser;->getQNameIgnoreDefaultNs(Ljava/lang/String;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;

    move-result-object v0

    new-instance v3, Lcom/sun/java_cup/internal/runtime/Symbol;

    add-int/lit8 v4, p4, 0x0

    invoke-virtual {v1, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v5, v5, Lcom/sun/java_cup/internal/runtime/Symbol;->left:I

    invoke-virtual {v1, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v1, v1, Lcom/sun/java_cup/internal/runtime/Symbol;->right:I

    invoke-direct {v3, v2, v5, v1, v0}, Lcom/sun/java_cup/internal/runtime/Symbol;-><init>(IIILjava/lang/Object;)V

    return-object v3

    :pswitch_e
    iget-object v0, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/CUP$XPathParser$actions;->parser:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XPathParser;

    const-string v3, "key"

    invoke-virtual {v0, v3}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XPathParser;->getQNameIgnoreDefaultNs(Ljava/lang/String;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;

    move-result-object v0

    new-instance v3, Lcom/sun/java_cup/internal/runtime/Symbol;

    add-int/lit8 v4, p4, 0x0

    invoke-virtual {v1, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v5, v5, Lcom/sun/java_cup/internal/runtime/Symbol;->left:I

    invoke-virtual {v1, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v1, v1, Lcom/sun/java_cup/internal/runtime/Symbol;->right:I

    invoke-direct {v3, v2, v5, v1, v0}, Lcom/sun/java_cup/internal/runtime/Symbol;-><init>(IIILjava/lang/Object;)V

    return-object v3

    :pswitch_f
    iget-object v0, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/CUP$XPathParser$actions;->parser:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XPathParser;

    const-string v3, "mod"

    invoke-virtual {v0, v3}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XPathParser;->getQNameIgnoreDefaultNs(Ljava/lang/String;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;

    move-result-object v0

    new-instance v3, Lcom/sun/java_cup/internal/runtime/Symbol;

    add-int/lit8 v4, p4, 0x0

    invoke-virtual {v1, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v5, v5, Lcom/sun/java_cup/internal/runtime/Symbol;->left:I

    invoke-virtual {v1, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v1, v1, Lcom/sun/java_cup/internal/runtime/Symbol;->right:I

    invoke-direct {v3, v2, v5, v1, v0}, Lcom/sun/java_cup/internal/runtime/Symbol;-><init>(IIILjava/lang/Object;)V

    return-object v3

    :pswitch_10
    iget-object v0, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/CUP$XPathParser$actions;->parser:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XPathParser;

    const-string v3, "div"

    invoke-virtual {v0, v3}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XPathParser;->getQNameIgnoreDefaultNs(Ljava/lang/String;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;

    move-result-object v0

    new-instance v3, Lcom/sun/java_cup/internal/runtime/Symbol;

    add-int/lit8 v4, p4, 0x0

    invoke-virtual {v1, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v5, v5, Lcom/sun/java_cup/internal/runtime/Symbol;->left:I

    invoke-virtual {v1, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v1, v1, Lcom/sun/java_cup/internal/runtime/Symbol;->right:I

    invoke-direct {v3, v2, v5, v1, v0}, Lcom/sun/java_cup/internal/runtime/Symbol;-><init>(IIILjava/lang/Object;)V

    return-object v3

    :pswitch_11
    add-int/lit8 v3, p4, 0x0

    invoke-virtual {v1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v4, v4, Lcom/sun/java_cup/internal/runtime/Symbol;->left:I

    invoke-virtual {v1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v4, v4, Lcom/sun/java_cup/internal/runtime/Symbol;->right:I

    invoke-virtual {v1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget-object v4, v4, Lcom/sun/java_cup/internal/runtime/Symbol;->value:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    iget-object v0, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/CUP$XPathParser$actions;->parser:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XPathParser;

    invoke-virtual {v0, v4}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XPathParser;->getQNameIgnoreDefaultNs(Ljava/lang/String;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;

    move-result-object v0

    new-instance v4, Lcom/sun/java_cup/internal/runtime/Symbol;

    invoke-virtual {v1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v5, v5, Lcom/sun/java_cup/internal/runtime/Symbol;->left:I

    invoke-virtual {v1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v1, v1, Lcom/sun/java_cup/internal/runtime/Symbol;->right:I

    invoke-direct {v4, v2, v5, v1, v0}, Lcom/sun/java_cup/internal/runtime/Symbol;-><init>(IIILjava/lang/Object;)V

    return-object v4

    :pswitch_12
    add-int/lit8 v0, p4, 0x0

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v2, v2, Lcom/sun/java_cup/internal/runtime/Symbol;->left:I

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v2, v2, Lcom/sun/java_cup/internal/runtime/Symbol;->right:I

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget-object v2, v2, Lcom/sun/java_cup/internal/runtime/Symbol;->value:Ljava/lang/Object;

    check-cast v2, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;

    new-instance v3, Lcom/sun/java_cup/internal/runtime/Symbol;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v4, v4, Lcom/sun/java_cup/internal/runtime/Symbol;->left:I

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v0, v0, Lcom/sun/java_cup/internal/runtime/Symbol;->right:I

    const/16 v1, 0x1a

    invoke-direct {v3, v1, v4, v0, v2}, Lcom/sun/java_cup/internal/runtime/Symbol;-><init>(IIILjava/lang/Object;)V

    return-object v3

    :pswitch_13
    new-instance v0, Lcom/sun/java_cup/internal/runtime/Symbol;

    add-int/lit8 v2, p4, 0x0

    invoke-virtual {v1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v3, v3, Lcom/sun/java_cup/internal/runtime/Symbol;->left:I

    invoke-virtual {v1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v1, v1, Lcom/sun/java_cup/internal/runtime/Symbol;->right:I

    const/16 v2, 0x1a

    invoke-direct {v0, v2, v3, v1, v6}, Lcom/sun/java_cup/internal/runtime/Symbol;-><init>(IIILjava/lang/Object;)V

    return-object v0

    :pswitch_14
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, v15}, Ljava/lang/Integer;-><init>(I)V

    new-instance v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    add-int/lit8 v3, p4, 0x0

    invoke-virtual {v1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v4, v4, Lcom/sun/java_cup/internal/runtime/Symbol;->left:I

    invoke-virtual {v1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v1, v1, Lcom/sun/java_cup/internal/runtime/Symbol;->right:I

    invoke-direct {v2, v7, v4, v1, v0}, Lcom/sun/java_cup/internal/runtime/Symbol;-><init>(IIILjava/lang/Object;)V

    return-object v2

    :pswitch_15
    add-int/lit8 v2, p4, -0x1

    invoke-virtual {v1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v3, v3, Lcom/sun/java_cup/internal/runtime/Symbol;->left:I

    invoke-virtual {v1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v3, v3, Lcom/sun/java_cup/internal/runtime/Symbol;->right:I

    invoke-virtual {v1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget-object v2, v2, Lcom/sun/java_cup/internal/runtime/Symbol;->value:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v0, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/CUP$XPathParser$actions;->parser:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XPathParser;

    const-string v3, "name"

    invoke-virtual {v0, v3}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XPathParser;->getQNameIgnoreDefaultNs(Ljava/lang/String;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;

    move-result-object v0

    new-instance v3, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/EqualityExpr;

    new-instance v4, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/NameCall;

    invoke-direct {v4, v0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/NameCall;-><init>(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;)V

    new-instance v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/LiteralExpr;

    invoke-direct {v0, v2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/LiteralExpr;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v11, v4, v0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/EqualityExpr;-><init>(ILcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;)V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    new-instance v2, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Predicate;

    invoke-direct {v2, v3}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Predicate;-><init>(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;)V

    invoke-virtual {v0, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    new-instance v2, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Step;

    invoke-direct {v2, v10, v15, v0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Step;-><init>(IILjava/util/Vector;)V

    new-instance v0, Lcom/sun/java_cup/internal/runtime/Symbol;

    add-int/lit8 v3, p4, -0x3

    invoke-virtual {v1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v3, v3, Lcom/sun/java_cup/internal/runtime/Symbol;->left:I

    add-int/lit8 v4, p4, 0x0

    invoke-virtual {v1, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v1, v1, Lcom/sun/java_cup/internal/runtime/Symbol;->right:I

    invoke-direct {v0, v7, v3, v1, v2}, Lcom/sun/java_cup/internal/runtime/Symbol;-><init>(IIILjava/lang/Object;)V

    return-object v0

    :pswitch_16
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, v4}, Ljava/lang/Integer;-><init>(I)V

    new-instance v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    add-int/lit8 v3, p4, 0x0

    invoke-virtual {v1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v4, v4, Lcom/sun/java_cup/internal/runtime/Symbol;->left:I

    invoke-virtual {v1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v1, v1, Lcom/sun/java_cup/internal/runtime/Symbol;->right:I

    invoke-direct {v2, v7, v4, v1, v0}, Lcom/sun/java_cup/internal/runtime/Symbol;-><init>(IIILjava/lang/Object;)V

    return-object v2

    :pswitch_17
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, v10}, Ljava/lang/Integer;-><init>(I)V

    new-instance v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    add-int/lit8 v3, p4, 0x0

    invoke-virtual {v1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v4, v4, Lcom/sun/java_cup/internal/runtime/Symbol;->left:I

    invoke-virtual {v1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v1, v1, Lcom/sun/java_cup/internal/runtime/Symbol;->right:I

    invoke-direct {v2, v7, v4, v1, v0}, Lcom/sun/java_cup/internal/runtime/Symbol;-><init>(IIILjava/lang/Object;)V

    return-object v2

    :pswitch_18
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, v12}, Ljava/lang/Integer;-><init>(I)V

    new-instance v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    add-int/lit8 v3, p4, 0x0

    invoke-virtual {v1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v4, v4, Lcom/sun/java_cup/internal/runtime/Symbol;->left:I

    invoke-virtual {v1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v1, v1, Lcom/sun/java_cup/internal/runtime/Symbol;->right:I

    invoke-direct {v2, v7, v4, v1, v0}, Lcom/sun/java_cup/internal/runtime/Symbol;-><init>(IIILjava/lang/Object;)V

    return-object v2

    :pswitch_19
    add-int/lit8 v0, p4, 0x0

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v2, v2, Lcom/sun/java_cup/internal/runtime/Symbol;->left:I

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v2, v2, Lcom/sun/java_cup/internal/runtime/Symbol;->right:I

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget-object v2, v2, Lcom/sun/java_cup/internal/runtime/Symbol;->value:Ljava/lang/Object;

    new-instance v3, Lcom/sun/java_cup/internal/runtime/Symbol;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v4, v4, Lcom/sun/java_cup/internal/runtime/Symbol;->left:I

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v0, v0, Lcom/sun/java_cup/internal/runtime/Symbol;->right:I

    invoke-direct {v3, v7, v4, v0, v2}, Lcom/sun/java_cup/internal/runtime/Symbol;-><init>(IIILjava/lang/Object;)V

    return-object v3

    :pswitch_1a
    add-int/lit8 v0, p4, 0x0

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v2, v2, Lcom/sun/java_cup/internal/runtime/Symbol;->left:I

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v2, v2, Lcom/sun/java_cup/internal/runtime/Symbol;->right:I

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget-object v2, v2, Lcom/sun/java_cup/internal/runtime/Symbol;->value:Ljava/lang/Object;

    check-cast v2, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    new-instance v3, Lcom/sun/java_cup/internal/runtime/Symbol;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v4, v4, Lcom/sun/java_cup/internal/runtime/Symbol;->left:I

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v0, v0, Lcom/sun/java_cup/internal/runtime/Symbol;->right:I

    invoke-direct {v3, v10, v4, v0, v2}, Lcom/sun/java_cup/internal/runtime/Symbol;-><init>(IIILjava/lang/Object;)V

    return-object v3

    :pswitch_1b
    add-int/lit8 v0, p4, 0x0

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v2, v2, Lcom/sun/java_cup/internal/runtime/Symbol;->left:I

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v2, v2, Lcom/sun/java_cup/internal/runtime/Symbol;->right:I

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget-object v2, v2, Lcom/sun/java_cup/internal/runtime/Symbol;->value:Ljava/lang/Object;

    check-cast v2, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;

    new-instance v3, Lcom/sun/java_cup/internal/runtime/Symbol;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v4, v4, Lcom/sun/java_cup/internal/runtime/Symbol;->left:I

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v0, v0, Lcom/sun/java_cup/internal/runtime/Symbol;->right:I

    const/16 v1, 0x27

    invoke-direct {v3, v1, v4, v0, v2}, Lcom/sun/java_cup/internal/runtime/Symbol;-><init>(IIILjava/lang/Object;)V

    return-object v3

    :pswitch_1c
    add-int/lit8 v0, p4, 0x0

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v2, v2, Lcom/sun/java_cup/internal/runtime/Symbol;->left:I

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v2, v2, Lcom/sun/java_cup/internal/runtime/Symbol;->right:I

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget-object v2, v2, Lcom/sun/java_cup/internal/runtime/Symbol;->value:Ljava/lang/Object;

    check-cast v2, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;

    new-instance v3, Lcom/sun/java_cup/internal/runtime/Symbol;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v4, v4, Lcom/sun/java_cup/internal/runtime/Symbol;->left:I

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v0, v0, Lcom/sun/java_cup/internal/runtime/Symbol;->right:I

    const/16 v1, 0x26

    invoke-direct {v3, v1, v4, v0, v2}, Lcom/sun/java_cup/internal/runtime/Symbol;-><init>(IIILjava/lang/Object;)V

    return-object v3

    :pswitch_1d
    add-int/lit8 v0, p4, -0x2

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v2, v2, Lcom/sun/java_cup/internal/runtime/Symbol;->left:I

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v2, v2, Lcom/sun/java_cup/internal/runtime/Symbol;->right:I

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget-object v2, v2, Lcom/sun/java_cup/internal/runtime/Symbol;->value:Ljava/lang/Object;

    check-cast v2, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    add-int/lit8 v3, p4, 0x0

    invoke-virtual {v1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v4, v4, Lcom/sun/java_cup/internal/runtime/Symbol;->left:I

    invoke-virtual {v1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v4, v4, Lcom/sun/java_cup/internal/runtime/Symbol;->right:I

    invoke-virtual {v1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget-object v4, v4, Lcom/sun/java_cup/internal/runtime/Symbol;->value:Ljava/lang/Object;

    check-cast v4, Ljava/util/Vector;

    invoke-virtual {v4, v2, v11}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    new-instance v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v0, v0, Lcom/sun/java_cup/internal/runtime/Symbol;->left:I

    invoke-virtual {v1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v1, v1, Lcom/sun/java_cup/internal/runtime/Symbol;->right:I

    const/16 v3, 0x24

    invoke-direct {v2, v3, v0, v1, v4}, Lcom/sun/java_cup/internal/runtime/Symbol;-><init>(IIILjava/lang/Object;)V

    return-object v2

    :pswitch_1e
    add-int/lit8 v0, p4, 0x0

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v2, v2, Lcom/sun/java_cup/internal/runtime/Symbol;->left:I

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v2, v2, Lcom/sun/java_cup/internal/runtime/Symbol;->right:I

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget-object v2, v2, Lcom/sun/java_cup/internal/runtime/Symbol;->value:Ljava/lang/Object;

    check-cast v2, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    invoke-virtual {v3, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    new-instance v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v4, v4, Lcom/sun/java_cup/internal/runtime/Symbol;->left:I

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v0, v0, Lcom/sun/java_cup/internal/runtime/Symbol;->right:I

    const/16 v1, 0x24

    invoke-direct {v2, v1, v4, v0, v3}, Lcom/sun/java_cup/internal/runtime/Symbol;-><init>(IIILjava/lang/Object;)V

    return-object v2

    :pswitch_1f
    add-int/lit8 v2, p4, -0x3

    invoke-virtual {v1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v3, v3, Lcom/sun/java_cup/internal/runtime/Symbol;->left:I

    invoke-virtual {v1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v3, v3, Lcom/sun/java_cup/internal/runtime/Symbol;->right:I

    invoke-virtual {v1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget-object v3, v3, Lcom/sun/java_cup/internal/runtime/Symbol;->value:Ljava/lang/Object;

    check-cast v3, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;

    add-int/lit8 v4, p4, -0x1

    invoke-virtual {v1, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v5, v5, Lcom/sun/java_cup/internal/runtime/Symbol;->left:I

    invoke-virtual {v1, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v5, v5, Lcom/sun/java_cup/internal/runtime/Symbol;->right:I

    invoke-virtual {v1, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget-object v4, v4, Lcom/sun/java_cup/internal/runtime/Symbol;->value:Ljava/lang/Object;

    check-cast v4, Ljava/util/Vector;

    iget-object v5, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/CUP$XPathParser$actions;->parser:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XPathParser;

    const-string v6, "concat"

    invoke-virtual {v5, v6}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XPathParser;->getQNameIgnoreDefaultNs(Ljava/lang/String;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;

    move-result-object v5

    if-ne v3, v5, :cond_0

    new-instance v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/ConcatCall;

    invoke-direct {v0, v3, v4}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/ConcatCall;-><init>(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;Ljava/util/Vector;)V

    goto/16 :goto_1

    :cond_0
    iget-object v5, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/CUP$XPathParser$actions;->parser:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XPathParser;

    const-string v6, "number"

    invoke-virtual {v5, v6}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XPathParser;->getQNameIgnoreDefaultNs(Ljava/lang/String;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;

    move-result-object v5

    if-ne v3, v5, :cond_1

    new-instance v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/NumberCall;

    invoke-direct {v0, v3, v4}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/NumberCall;-><init>(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;Ljava/util/Vector;)V

    goto/16 :goto_1

    :cond_1
    iget-object v5, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/CUP$XPathParser$actions;->parser:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XPathParser;

    const-string v6, "document"

    invoke-virtual {v5, v6}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XPathParser;->getQNameIgnoreDefaultNs(Ljava/lang/String;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;

    move-result-object v5

    if-ne v3, v5, :cond_2

    iget-object v0, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/CUP$XPathParser$actions;->parser:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XPathParser;

    invoke-virtual {v0, v13}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XPathParser;->setMultiDocument(Z)V

    new-instance v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/DocumentCall;

    invoke-direct {v0, v3, v4}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/DocumentCall;-><init>(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;Ljava/util/Vector;)V

    goto/16 :goto_1

    :cond_2
    iget-object v5, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/CUP$XPathParser$actions;->parser:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XPathParser;

    const-string v6, "string"

    invoke-virtual {v5, v6}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XPathParser;->getQNameIgnoreDefaultNs(Ljava/lang/String;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;

    move-result-object v5

    if-ne v3, v5, :cond_3

    new-instance v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/StringCall;

    invoke-direct {v0, v3, v4}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/StringCall;-><init>(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;Ljava/util/Vector;)V

    goto/16 :goto_1

    :cond_3
    iget-object v5, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/CUP$XPathParser$actions;->parser:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XPathParser;

    const-string v6, "boolean"

    invoke-virtual {v5, v6}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XPathParser;->getQNameIgnoreDefaultNs(Ljava/lang/String;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;

    move-result-object v5

    if-ne v3, v5, :cond_4

    new-instance v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/BooleanCall;

    invoke-direct {v0, v3, v4}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/BooleanCall;-><init>(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;Ljava/util/Vector;)V

    goto/16 :goto_1

    :cond_4
    iget-object v5, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/CUP$XPathParser$actions;->parser:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XPathParser;

    const-string v6, "name"

    invoke-virtual {v5, v6}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XPathParser;->getQNameIgnoreDefaultNs(Ljava/lang/String;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;

    move-result-object v5

    if-ne v3, v5, :cond_5

    new-instance v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/NameCall;

    invoke-direct {v0, v3, v4}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/NameCall;-><init>(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;Ljava/util/Vector;)V

    goto/16 :goto_1

    :cond_5
    iget-object v5, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/CUP$XPathParser$actions;->parser:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XPathParser;

    const-string v6, "generate-id"

    invoke-virtual {v5, v6}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XPathParser;->getQNameIgnoreDefaultNs(Ljava/lang/String;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;

    move-result-object v5

    if-ne v3, v5, :cond_6

    new-instance v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/GenerateIdCall;

    invoke-direct {v0, v3, v4}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/GenerateIdCall;-><init>(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;Ljava/util/Vector;)V

    goto/16 :goto_1

    :cond_6
    iget-object v5, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/CUP$XPathParser$actions;->parser:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XPathParser;

    const-string v6, "not"

    invoke-virtual {v5, v6}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XPathParser;->getQNameIgnoreDefaultNs(Ljava/lang/String;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;

    move-result-object v5

    if-ne v3, v5, :cond_7

    new-instance v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/NotCall;

    invoke-direct {v0, v3, v4}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/NotCall;-><init>(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;Ljava/util/Vector;)V

    goto/16 :goto_1

    :cond_7
    iget-object v5, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/CUP$XPathParser$actions;->parser:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XPathParser;

    const-string v6, "format-number"

    invoke-virtual {v5, v6}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XPathParser;->getQNameIgnoreDefaultNs(Ljava/lang/String;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;

    move-result-object v5

    if-ne v3, v5, :cond_8

    new-instance v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FormatNumberCall;

    invoke-direct {v0, v3, v4}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FormatNumberCall;-><init>(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;Ljava/util/Vector;)V

    goto/16 :goto_1

    :cond_8
    iget-object v5, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/CUP$XPathParser$actions;->parser:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XPathParser;

    const-string v6, "unparsed-entity-uri"

    invoke-virtual {v5, v6}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XPathParser;->getQNameIgnoreDefaultNs(Ljava/lang/String;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;

    move-result-object v5

    if-ne v3, v5, :cond_9

    new-instance v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/UnparsedEntityUriCall;

    invoke-direct {v0, v3, v4}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/UnparsedEntityUriCall;-><init>(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;Ljava/util/Vector;)V

    goto/16 :goto_1

    :cond_9
    iget-object v5, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/CUP$XPathParser$actions;->parser:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XPathParser;

    const-string v6, "key"

    invoke-virtual {v5, v6}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XPathParser;->getQNameIgnoreDefaultNs(Ljava/lang/String;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;

    move-result-object v5

    if-ne v3, v5, :cond_a

    new-instance v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/KeyCall;

    invoke-direct {v0, v3, v4}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/KeyCall;-><init>(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;Ljava/util/Vector;)V

    goto/16 :goto_1

    :cond_a
    iget-object v5, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/CUP$XPathParser$actions;->parser:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XPathParser;

    const-string v6, "id"

    invoke-virtual {v5, v6}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XPathParser;->getQNameIgnoreDefaultNs(Ljava/lang/String;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;

    move-result-object v5

    if-ne v3, v5, :cond_b

    new-instance v5, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/KeyCall;

    invoke-direct {v5, v3, v4}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/KeyCall;-><init>(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;Ljava/util/Vector;)V

    iget-object v0, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/CUP$XPathParser$actions;->parser:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XPathParser;

    invoke-virtual {v0, v13}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XPathParser;->setHasIdCall(Z)V

    move-object v0, v5

    goto/16 :goto_1

    :cond_b
    iget-object v5, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/CUP$XPathParser$actions;->parser:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XPathParser;

    const-string v6, "ceiling"

    invoke-virtual {v5, v6}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XPathParser;->getQNameIgnoreDefaultNs(Ljava/lang/String;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;

    move-result-object v5

    if-ne v3, v5, :cond_c

    new-instance v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/CeilingCall;

    invoke-direct {v0, v3, v4}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/CeilingCall;-><init>(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;Ljava/util/Vector;)V

    goto/16 :goto_1

    :cond_c
    iget-object v5, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/CUP$XPathParser$actions;->parser:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XPathParser;

    const-string v6, "round"

    invoke-virtual {v5, v6}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XPathParser;->getQNameIgnoreDefaultNs(Ljava/lang/String;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;

    move-result-object v5

    if-ne v3, v5, :cond_d

    new-instance v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/RoundCall;

    invoke-direct {v0, v3, v4}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/RoundCall;-><init>(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;Ljava/util/Vector;)V

    goto/16 :goto_1

    :cond_d
    iget-object v5, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/CUP$XPathParser$actions;->parser:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XPathParser;

    const-string v6, "floor"

    invoke-virtual {v5, v6}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XPathParser;->getQNameIgnoreDefaultNs(Ljava/lang/String;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;

    move-result-object v5

    if-ne v3, v5, :cond_e

    new-instance v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FloorCall;

    invoke-direct {v0, v3, v4}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FloorCall;-><init>(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;Ljava/util/Vector;)V

    goto/16 :goto_1

    :cond_e
    iget-object v5, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/CUP$XPathParser$actions;->parser:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XPathParser;

    const-string v6, "contains"

    invoke-virtual {v5, v6}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XPathParser;->getQNameIgnoreDefaultNs(Ljava/lang/String;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;

    move-result-object v5

    if-ne v3, v5, :cond_f

    new-instance v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/ContainsCall;

    invoke-direct {v0, v3, v4}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/ContainsCall;-><init>(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;Ljava/util/Vector;)V

    goto/16 :goto_1

    :cond_f
    iget-object v5, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/CUP$XPathParser$actions;->parser:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XPathParser;

    const-string v6, "string-length"

    invoke-virtual {v5, v6}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XPathParser;->getQNameIgnoreDefaultNs(Ljava/lang/String;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;

    move-result-object v5

    if-ne v3, v5, :cond_10

    new-instance v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/StringLengthCall;

    invoke-direct {v0, v3, v4}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/StringLengthCall;-><init>(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;Ljava/util/Vector;)V

    goto/16 :goto_1

    :cond_10
    iget-object v5, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/CUP$XPathParser$actions;->parser:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XPathParser;

    const-string v6, "starts-with"

    invoke-virtual {v5, v6}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XPathParser;->getQNameIgnoreDefaultNs(Ljava/lang/String;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;

    move-result-object v5

    if-ne v3, v5, :cond_11

    new-instance v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/StartsWithCall;

    invoke-direct {v0, v3, v4}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/StartsWithCall;-><init>(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;Ljava/util/Vector;)V

    goto/16 :goto_1

    :cond_11
    iget-object v5, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/CUP$XPathParser$actions;->parser:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XPathParser;

    const-string v6, "function-available"

    invoke-virtual {v5, v6}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XPathParser;->getQNameIgnoreDefaultNs(Ljava/lang/String;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;

    move-result-object v5

    if-ne v3, v5, :cond_12

    new-instance v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionAvailableCall;

    invoke-direct {v0, v3, v4}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionAvailableCall;-><init>(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;Ljava/util/Vector;)V

    goto/16 :goto_1

    :cond_12
    iget-object v5, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/CUP$XPathParser$actions;->parser:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XPathParser;

    const-string v6, "element-available"

    invoke-virtual {v5, v6}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XPathParser;->getQNameIgnoreDefaultNs(Ljava/lang/String;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;

    move-result-object v5

    if-ne v3, v5, :cond_13

    new-instance v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/ElementAvailableCall;

    invoke-direct {v0, v3, v4}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/ElementAvailableCall;-><init>(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;Ljava/util/Vector;)V

    goto/16 :goto_1

    :cond_13
    iget-object v5, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/CUP$XPathParser$actions;->parser:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XPathParser;

    const-string v6, "local-name"

    invoke-virtual {v5, v6}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XPathParser;->getQNameIgnoreDefaultNs(Ljava/lang/String;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;

    move-result-object v5

    if-ne v3, v5, :cond_14

    new-instance v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/LocalNameCall;

    invoke-direct {v0, v3, v4}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/LocalNameCall;-><init>(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;Ljava/util/Vector;)V

    goto :goto_1

    :cond_14
    iget-object v5, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/CUP$XPathParser$actions;->parser:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XPathParser;

    const-string v6, "lang"

    invoke-virtual {v5, v6}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XPathParser;->getQNameIgnoreDefaultNs(Ljava/lang/String;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;

    move-result-object v5

    if-ne v3, v5, :cond_15

    new-instance v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/LangCall;

    invoke-direct {v0, v3, v4}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/LangCall;-><init>(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;Ljava/util/Vector;)V

    goto :goto_1

    :cond_15
    iget-object v5, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/CUP$XPathParser$actions;->parser:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XPathParser;

    const-string v6, "namespace-uri"

    invoke-virtual {v5, v6}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XPathParser;->getQNameIgnoreDefaultNs(Ljava/lang/String;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;

    move-result-object v5

    if-ne v3, v5, :cond_16

    new-instance v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/NamespaceUriCall;

    invoke-direct {v0, v3, v4}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/NamespaceUriCall;-><init>(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;Ljava/util/Vector;)V

    goto :goto_1

    :cond_16
    iget-object v5, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/CUP$XPathParser$actions;->parser:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XPathParser;

    const-string v6, "xsltc"

    const-string v7, "cast"

    const-string v8, "http://xml.apache.org/xalan/xsltc"

    invoke-virtual {v5, v8, v6, v7}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XPathParser;->getQName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;

    move-result-object v5

    if-ne v3, v5, :cond_17

    new-instance v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/CastCall;

    invoke-direct {v0, v3, v4}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/CastCall;-><init>(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;Ljava/util/Vector;)V

    goto :goto_1

    :cond_17
    invoke-virtual {v3}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v5

    const-string v6, "nodeset"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_19

    invoke-virtual {v3}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v5

    const-string v6, "node-set"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18

    goto :goto_0

    :cond_18
    new-instance v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionCall;

    invoke-direct {v0, v3, v4}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionCall;-><init>(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;Ljava/util/Vector;)V

    goto :goto_1

    :cond_19
    :goto_0
    iget-object v0, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/CUP$XPathParser$actions;->parser:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XPathParser;

    invoke-virtual {v0, v13}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XPathParser;->setCallsNodeset(Z)V

    new-instance v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionCall;

    invoke-direct {v0, v3, v4}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionCall;-><init>(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;Ljava/util/Vector;)V

    :goto_1
    new-instance v3, Lcom/sun/java_cup/internal/runtime/Symbol;

    invoke-virtual {v1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v2, v2, Lcom/sun/java_cup/internal/runtime/Symbol;->left:I

    add-int/lit8 v4, p4, 0x0

    invoke-virtual {v1, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v1, v1, Lcom/sun/java_cup/internal/runtime/Symbol;->right:I

    const/16 v4, 0x10

    invoke-direct {v3, v4, v2, v1, v0}, Lcom/sun/java_cup/internal/runtime/Symbol;-><init>(IIILjava/lang/Object;)V

    return-object v3

    :pswitch_20
    add-int/lit8 v2, p4, -0x2

    invoke-virtual {v1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v3, v3, Lcom/sun/java_cup/internal/runtime/Symbol;->left:I

    invoke-virtual {v1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v3, v3, Lcom/sun/java_cup/internal/runtime/Symbol;->right:I

    invoke-virtual {v1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget-object v3, v3, Lcom/sun/java_cup/internal/runtime/Symbol;->value:Ljava/lang/Object;

    check-cast v3, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;

    iget-object v4, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/CUP$XPathParser$actions;->parser:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XPathParser;

    const-string v5, "current"

    invoke-virtual {v4, v5}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XPathParser;->getQNameIgnoreDefaultNs(Ljava/lang/String;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;

    move-result-object v4

    if-ne v3, v4, :cond_1a

    new-instance v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/CurrentCall;

    invoke-direct {v0, v3}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/CurrentCall;-><init>(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;)V

    goto/16 :goto_2

    :cond_1a
    iget-object v4, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/CUP$XPathParser$actions;->parser:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XPathParser;

    const-string v5, "number"

    invoke-virtual {v4, v5}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XPathParser;->getQNameIgnoreDefaultNs(Ljava/lang/String;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;

    move-result-object v4

    if-ne v3, v4, :cond_1b

    new-instance v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/NumberCall;

    sget-object v4, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XPathParser;->EmptyArgs:Ljava/util/Vector;

    invoke-direct {v0, v3, v4}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/NumberCall;-><init>(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;Ljava/util/Vector;)V

    goto/16 :goto_2

    :cond_1b
    iget-object v4, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/CUP$XPathParser$actions;->parser:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XPathParser;

    const-string v5, "string"

    invoke-virtual {v4, v5}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XPathParser;->getQNameIgnoreDefaultNs(Ljava/lang/String;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;

    move-result-object v4

    if-ne v3, v4, :cond_1c

    new-instance v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/StringCall;

    sget-object v4, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XPathParser;->EmptyArgs:Ljava/util/Vector;

    invoke-direct {v0, v3, v4}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/StringCall;-><init>(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;Ljava/util/Vector;)V

    goto/16 :goto_2

    :cond_1c
    iget-object v4, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/CUP$XPathParser$actions;->parser:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XPathParser;

    const-string v5, "concat"

    invoke-virtual {v4, v5}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XPathParser;->getQNameIgnoreDefaultNs(Ljava/lang/String;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;

    move-result-object v4

    if-ne v3, v4, :cond_1d

    new-instance v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/ConcatCall;

    sget-object v4, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XPathParser;->EmptyArgs:Ljava/util/Vector;

    invoke-direct {v0, v3, v4}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/ConcatCall;-><init>(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;Ljava/util/Vector;)V

    goto/16 :goto_2

    :cond_1d
    iget-object v4, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/CUP$XPathParser$actions;->parser:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XPathParser;

    const-string v5, "true"

    invoke-virtual {v4, v5}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XPathParser;->getQNameIgnoreDefaultNs(Ljava/lang/String;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;

    move-result-object v4

    if-ne v3, v4, :cond_1e

    new-instance v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/BooleanExpr;

    invoke-direct {v0, v13}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/BooleanExpr;-><init>(Z)V

    goto/16 :goto_2

    :cond_1e
    iget-object v4, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/CUP$XPathParser$actions;->parser:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XPathParser;

    const-string v5, "false"

    invoke-virtual {v4, v5}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XPathParser;->getQNameIgnoreDefaultNs(Ljava/lang/String;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;

    move-result-object v4

    if-ne v3, v4, :cond_1f

    new-instance v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/BooleanExpr;

    invoke-direct {v0, v11}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/BooleanExpr;-><init>(Z)V

    goto/16 :goto_2

    :cond_1f
    iget-object v4, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/CUP$XPathParser$actions;->parser:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XPathParser;

    const-string v5, "name"

    invoke-virtual {v4, v5}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XPathParser;->getQNameIgnoreDefaultNs(Ljava/lang/String;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;

    move-result-object v4

    if-ne v3, v4, :cond_20

    new-instance v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/NameCall;

    invoke-direct {v0, v3}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/NameCall;-><init>(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;)V

    goto/16 :goto_2

    :cond_20
    iget-object v4, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/CUP$XPathParser$actions;->parser:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XPathParser;

    const-string v5, "generate-id"

    invoke-virtual {v4, v5}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XPathParser;->getQNameIgnoreDefaultNs(Ljava/lang/String;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;

    move-result-object v4

    if-ne v3, v4, :cond_21

    new-instance v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/GenerateIdCall;

    sget-object v4, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XPathParser;->EmptyArgs:Ljava/util/Vector;

    invoke-direct {v0, v3, v4}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/GenerateIdCall;-><init>(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;Ljava/util/Vector;)V

    goto :goto_2

    :cond_21
    iget-object v4, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/CUP$XPathParser$actions;->parser:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XPathParser;

    const-string v5, "string-length"

    invoke-virtual {v4, v5}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XPathParser;->getQNameIgnoreDefaultNs(Ljava/lang/String;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;

    move-result-object v4

    if-ne v3, v4, :cond_22

    new-instance v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/StringLengthCall;

    sget-object v4, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XPathParser;->EmptyArgs:Ljava/util/Vector;

    invoke-direct {v0, v3, v4}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/StringLengthCall;-><init>(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;Ljava/util/Vector;)V

    goto :goto_2

    :cond_22
    iget-object v4, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/CUP$XPathParser$actions;->parser:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XPathParser;

    const-string v5, "position"

    invoke-virtual {v4, v5}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XPathParser;->getQNameIgnoreDefaultNs(Ljava/lang/String;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;

    move-result-object v4

    if-ne v3, v4, :cond_23

    new-instance v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/PositionCall;

    invoke-direct {v0, v3}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/PositionCall;-><init>(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;)V

    goto :goto_2

    :cond_23
    iget-object v4, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/CUP$XPathParser$actions;->parser:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XPathParser;

    const-string v5, "last"

    invoke-virtual {v4, v5}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XPathParser;->getQNameIgnoreDefaultNs(Ljava/lang/String;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;

    move-result-object v4

    if-ne v3, v4, :cond_24

    new-instance v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/LastCall;

    invoke-direct {v0, v3}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/LastCall;-><init>(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;)V

    goto :goto_2

    :cond_24
    iget-object v4, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/CUP$XPathParser$actions;->parser:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XPathParser;

    const-string v5, "local-name"

    invoke-virtual {v4, v5}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XPathParser;->getQNameIgnoreDefaultNs(Ljava/lang/String;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;

    move-result-object v4

    if-ne v3, v4, :cond_25

    new-instance v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/LocalNameCall;

    invoke-direct {v0, v3}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/LocalNameCall;-><init>(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;)V

    goto :goto_2

    :cond_25
    iget-object v0, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/CUP$XPathParser$actions;->parser:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XPathParser;

    const-string v4, "namespace-uri"

    invoke-virtual {v0, v4}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XPathParser;->getQNameIgnoreDefaultNs(Ljava/lang/String;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;

    move-result-object v0

    if-ne v3, v0, :cond_26

    new-instance v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/NamespaceUriCall;

    invoke-direct {v0, v3}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/NamespaceUriCall;-><init>(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;)V

    goto :goto_2

    :cond_26
    new-instance v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionCall;

    sget-object v4, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XPathParser;->EmptyArgs:Ljava/util/Vector;

    invoke-direct {v0, v3, v4}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FunctionCall;-><init>(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;Ljava/util/Vector;)V

    :goto_2
    new-instance v3, Lcom/sun/java_cup/internal/runtime/Symbol;

    invoke-virtual {v1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v2, v2, Lcom/sun/java_cup/internal/runtime/Symbol;->left:I

    add-int/lit8 v4, p4, 0x0

    invoke-virtual {v1, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v1, v1, Lcom/sun/java_cup/internal/runtime/Symbol;->right:I

    const/16 v4, 0x10

    invoke-direct {v3, v4, v2, v1, v0}, Lcom/sun/java_cup/internal/runtime/Symbol;-><init>(IIILjava/lang/Object;)V

    return-object v3

    :pswitch_21
    add-int/lit8 v2, p4, 0x0

    invoke-virtual {v1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v3, v3, Lcom/sun/java_cup/internal/runtime/Symbol;->left:I

    invoke-virtual {v1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v3, v3, Lcom/sun/java_cup/internal/runtime/Symbol;->right:I

    invoke-virtual {v1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget-object v3, v3, Lcom/sun/java_cup/internal/runtime/Symbol;->value:Ljava/lang/Object;

    check-cast v3, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;

    iget-object v0, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/CUP$XPathParser$actions;->parser:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XPathParser;

    invoke-virtual {v0, v3}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XPathParser;->lookupName(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;

    move-result-object v0

    if-eqz v0, :cond_29

    instance-of v4, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Variable;

    if-eqz v4, :cond_27

    new-instance v6, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/VariableRef;

    move-object v4, v0

    check-cast v4, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Variable;

    invoke-direct {v6, v4}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/VariableRef;-><init>(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Variable;)V

    goto :goto_3

    :cond_27
    instance-of v4, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Param;

    if-eqz v4, :cond_28

    new-instance v6, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/ParameterRef;

    move-object v4, v0

    check-cast v4, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Param;

    invoke-direct {v6, v4}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/ParameterRef;-><init>(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Param;)V

    goto :goto_3

    :cond_28
    new-instance v6, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/UnresolvedRef;

    invoke-direct {v6, v3}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/UnresolvedRef;-><init>(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;)V

    :cond_29
    :goto_3
    if-nez v0, :cond_2a

    new-instance v6, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/UnresolvedRef;

    invoke-direct {v6, v3}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/UnresolvedRef;-><init>(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;)V

    :cond_2a
    new-instance v0, Lcom/sun/java_cup/internal/runtime/Symbol;

    add-int/lit8 v3, p4, -0x1

    invoke-virtual {v1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v3, v3, Lcom/sun/java_cup/internal/runtime/Symbol;->left:I

    invoke-virtual {v1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v1, v1, Lcom/sun/java_cup/internal/runtime/Symbol;->right:I

    const/16 v2, 0xf

    invoke-direct {v0, v2, v3, v1, v6}, Lcom/sun/java_cup/internal/runtime/Symbol;-><init>(IIILjava/lang/Object;)V

    return-object v0

    :pswitch_22
    add-int/lit8 v0, p4, 0x0

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v2, v2, Lcom/sun/java_cup/internal/runtime/Symbol;->left:I

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v2, v2, Lcom/sun/java_cup/internal/runtime/Symbol;->right:I

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget-object v2, v2, Lcom/sun/java_cup/internal/runtime/Symbol;->value:Ljava/lang/Object;

    check-cast v2, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    new-instance v3, Lcom/sun/java_cup/internal/runtime/Symbol;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v4, v4, Lcom/sun/java_cup/internal/runtime/Symbol;->left:I

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v0, v0, Lcom/sun/java_cup/internal/runtime/Symbol;->right:I

    invoke-direct {v3, v8, v4, v0, v2}, Lcom/sun/java_cup/internal/runtime/Symbol;-><init>(IIILjava/lang/Object;)V

    return-object v3

    :pswitch_23
    add-int/lit8 v0, p4, 0x0

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v2, v2, Lcom/sun/java_cup/internal/runtime/Symbol;->left:I

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v2, v2, Lcom/sun/java_cup/internal/runtime/Symbol;->right:I

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget-object v2, v2, Lcom/sun/java_cup/internal/runtime/Symbol;->value:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Double;

    new-instance v3, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/RealExpr;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/RealExpr;-><init>(D)V

    new-instance v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v4, v4, Lcom/sun/java_cup/internal/runtime/Symbol;->left:I

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v0, v0, Lcom/sun/java_cup/internal/runtime/Symbol;->right:I

    invoke-direct {v2, v8, v4, v0, v3}, Lcom/sun/java_cup/internal/runtime/Symbol;-><init>(IIILjava/lang/Object;)V

    return-object v2

    :pswitch_24
    add-int/lit8 v0, p4, 0x0

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v2, v2, Lcom/sun/java_cup/internal/runtime/Symbol;->left:I

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v2, v2, Lcom/sun/java_cup/internal/runtime/Symbol;->right:I

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget-object v2, v2, Lcom/sun/java_cup/internal/runtime/Symbol;->value:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/32 v5, -0x80000000

    cmp-long v5, v3, v5

    if-ltz v5, :cond_2f

    const-wide/32 v5, 0x7fffffff

    cmp-long v5, v3, v5

    if-lez v5, :cond_2b

    goto :goto_4

    :cond_2b
    invoke-virtual {v2}, Ljava/lang/Long;->doubleValue()D

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmpl-double v3, v3, v5

    if-nez v3, :cond_2c

    new-instance v3, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/RealExpr;

    invoke-virtual {v2}, Ljava/lang/Long;->doubleValue()D

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/RealExpr;-><init>(D)V

    goto :goto_5

    :cond_2c
    invoke-virtual {v2}, Ljava/lang/Long;->intValue()I

    move-result v3

    if-nez v3, :cond_2d

    new-instance v3, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/IntExpr;

    invoke-virtual {v2}, Ljava/lang/Long;->intValue()I

    move-result v2

    invoke-direct {v3, v2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/IntExpr;-><init>(I)V

    goto :goto_5

    :cond_2d
    invoke-virtual {v2}, Ljava/lang/Long;->doubleValue()D

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmpl-double v3, v3, v5

    if-nez v3, :cond_2e

    new-instance v3, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/RealExpr;

    invoke-virtual {v2}, Ljava/lang/Long;->doubleValue()D

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/RealExpr;-><init>(D)V

    goto :goto_5

    :cond_2e
    new-instance v3, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/IntExpr;

    invoke-virtual {v2}, Ljava/lang/Long;->intValue()I

    move-result v2

    invoke-direct {v3, v2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/IntExpr;-><init>(I)V

    goto :goto_5

    :cond_2f
    :goto_4
    new-instance v2, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/RealExpr;

    long-to-double v3, v3

    invoke-direct {v2, v3, v4}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/RealExpr;-><init>(D)V

    move-object v3, v2

    :goto_5
    new-instance v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v4, v4, Lcom/sun/java_cup/internal/runtime/Symbol;->left:I

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v0, v0, Lcom/sun/java_cup/internal/runtime/Symbol;->right:I

    invoke-direct {v2, v8, v4, v0, v3}, Lcom/sun/java_cup/internal/runtime/Symbol;-><init>(IIILjava/lang/Object;)V

    return-object v2

    :pswitch_25
    add-int/lit8 v2, p4, 0x0

    invoke-virtual {v1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v3, v3, Lcom/sun/java_cup/internal/runtime/Symbol;->left:I

    invoke-virtual {v1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v3, v3, Lcom/sun/java_cup/internal/runtime/Symbol;->right:I

    invoke-virtual {v1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget-object v3, v3, Lcom/sun/java_cup/internal/runtime/Symbol;->value:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    const/16 v4, 0x3a

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    if-lez v4, :cond_30

    invoke-virtual {v3, v11, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    iget-object v0, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/CUP$XPathParser$actions;->parser:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XPathParser;

    iget-object v0, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XPathParser;->_symbolTable:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;

    invoke-virtual {v0, v4}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;->lookupNamespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :cond_30
    new-instance v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/LiteralExpr;

    if-nez v6, :cond_31

    invoke-direct {v0, v3}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/LiteralExpr;-><init>(Ljava/lang/String;)V

    goto :goto_6

    :cond_31
    invoke-direct {v0, v3, v6}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/LiteralExpr;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_6
    new-instance v3, Lcom/sun/java_cup/internal/runtime/Symbol;

    invoke-virtual {v1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v4, v4, Lcom/sun/java_cup/internal/runtime/Symbol;->left:I

    invoke-virtual {v1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v1, v1, Lcom/sun/java_cup/internal/runtime/Symbol;->right:I

    invoke-direct {v3, v8, v4, v1, v0}, Lcom/sun/java_cup/internal/runtime/Symbol;-><init>(IIILjava/lang/Object;)V

    return-object v3

    :pswitch_26
    add-int/lit8 v0, p4, -0x1

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v2, v2, Lcom/sun/java_cup/internal/runtime/Symbol;->left:I

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v2, v2, Lcom/sun/java_cup/internal/runtime/Symbol;->right:I

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget-object v0, v0, Lcom/sun/java_cup/internal/runtime/Symbol;->value:Ljava/lang/Object;

    check-cast v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    new-instance v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    add-int/lit8 v3, p4, -0x2

    invoke-virtual {v1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v3, v3, Lcom/sun/java_cup/internal/runtime/Symbol;->left:I

    add-int/lit8 v4, p4, 0x0

    invoke-virtual {v1, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v1, v1, Lcom/sun/java_cup/internal/runtime/Symbol;->right:I

    invoke-direct {v2, v8, v3, v1, v0}, Lcom/sun/java_cup/internal/runtime/Symbol;-><init>(IIILjava/lang/Object;)V

    return-object v2

    :pswitch_27
    add-int/lit8 v0, p4, 0x0

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v2, v2, Lcom/sun/java_cup/internal/runtime/Symbol;->left:I

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v2, v2, Lcom/sun/java_cup/internal/runtime/Symbol;->right:I

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget-object v2, v2, Lcom/sun/java_cup/internal/runtime/Symbol;->value:Ljava/lang/Object;

    check-cast v2, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    new-instance v3, Lcom/sun/java_cup/internal/runtime/Symbol;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v4, v4, Lcom/sun/java_cup/internal/runtime/Symbol;->left:I

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v0, v0, Lcom/sun/java_cup/internal/runtime/Symbol;->right:I

    invoke-direct {v3, v8, v4, v0, v2}, Lcom/sun/java_cup/internal/runtime/Symbol;-><init>(IIILjava/lang/Object;)V

    return-object v3

    :pswitch_28
    add-int/lit8 v0, p4, -0x1

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v2, v2, Lcom/sun/java_cup/internal/runtime/Symbol;->left:I

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v2, v2, Lcom/sun/java_cup/internal/runtime/Symbol;->right:I

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget-object v2, v2, Lcom/sun/java_cup/internal/runtime/Symbol;->value:Ljava/lang/Object;

    check-cast v2, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    add-int/lit8 v3, p4, 0x0

    invoke-virtual {v1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v4, v4, Lcom/sun/java_cup/internal/runtime/Symbol;->left:I

    invoke-virtual {v1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v4, v4, Lcom/sun/java_cup/internal/runtime/Symbol;->right:I

    invoke-virtual {v1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget-object v4, v4, Lcom/sun/java_cup/internal/runtime/Symbol;->value:Ljava/lang/Object;

    check-cast v4, Ljava/util/Vector;

    new-instance v5, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FilterExpr;

    invoke-direct {v5, v2, v4}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FilterExpr;-><init>(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;Ljava/util/Vector;)V

    new-instance v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v0, v0, Lcom/sun/java_cup/internal/runtime/Symbol;->left:I

    invoke-virtual {v1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v1, v1, Lcom/sun/java_cup/internal/runtime/Symbol;->right:I

    const/4 v3, 0x6

    invoke-direct {v2, v3, v0, v1, v5}, Lcom/sun/java_cup/internal/runtime/Symbol;-><init>(IIILjava/lang/Object;)V

    return-object v2

    :pswitch_29
    add-int/lit8 v0, p4, 0x0

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v2, v2, Lcom/sun/java_cup/internal/runtime/Symbol;->left:I

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v2, v2, Lcom/sun/java_cup/internal/runtime/Symbol;->right:I

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget-object v2, v2, Lcom/sun/java_cup/internal/runtime/Symbol;->value:Ljava/lang/Object;

    check-cast v2, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    new-instance v3, Lcom/sun/java_cup/internal/runtime/Symbol;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v4, v4, Lcom/sun/java_cup/internal/runtime/Symbol;->left:I

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v0, v0, Lcom/sun/java_cup/internal/runtime/Symbol;->right:I

    const/4 v1, 0x6

    invoke-direct {v3, v1, v4, v0, v2}, Lcom/sun/java_cup/internal/runtime/Symbol;-><init>(IIILjava/lang/Object;)V

    return-object v3

    :pswitch_2a
    new-instance v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Step;

    invoke-direct {v0, v5, v12, v6}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Step;-><init>(IILjava/util/Vector;)V

    new-instance v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    add-int/lit8 v3, p4, 0x0

    invoke-virtual {v1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v4, v4, Lcom/sun/java_cup/internal/runtime/Symbol;->left:I

    invoke-virtual {v1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v1, v1, Lcom/sun/java_cup/internal/runtime/Symbol;->right:I

    const/16 v3, 0x14

    invoke-direct {v2, v3, v4, v1, v0}, Lcom/sun/java_cup/internal/runtime/Symbol;-><init>(IIILjava/lang/Object;)V

    return-object v2

    :pswitch_2b
    new-instance v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Step;

    invoke-direct {v0, v9, v12, v6}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Step;-><init>(IILjava/util/Vector;)V

    new-instance v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    add-int/lit8 v3, p4, 0x0

    invoke-virtual {v1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v4, v4, Lcom/sun/java_cup/internal/runtime/Symbol;->left:I

    invoke-virtual {v1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v1, v1, Lcom/sun/java_cup/internal/runtime/Symbol;->right:I

    const/16 v3, 0x14

    invoke-direct {v2, v3, v4, v1, v0}, Lcom/sun/java_cup/internal/runtime/Symbol;-><init>(IIILjava/lang/Object;)V

    return-object v2

    :pswitch_2c
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, v9}, Ljava/lang/Integer;-><init>(I)V

    new-instance v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    add-int/lit8 v3, p4, 0x0

    invoke-virtual {v1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v4, v4, Lcom/sun/java_cup/internal/runtime/Symbol;->left:I

    invoke-virtual {v1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v1, v1, Lcom/sun/java_cup/internal/runtime/Symbol;->right:I

    invoke-direct {v2, v14, v4, v1, v0}, Lcom/sun/java_cup/internal/runtime/Symbol;-><init>(IIILjava/lang/Object;)V

    return-object v2

    :pswitch_2d
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, v3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    add-int/lit8 v3, p4, 0x0

    invoke-virtual {v1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v4, v4, Lcom/sun/java_cup/internal/runtime/Symbol;->left:I

    invoke-virtual {v1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v1, v1, Lcom/sun/java_cup/internal/runtime/Symbol;->right:I

    invoke-direct {v2, v14, v4, v1, v0}, Lcom/sun/java_cup/internal/runtime/Symbol;-><init>(IIILjava/lang/Object;)V

    return-object v2

    :pswitch_2e
    new-instance v0, Ljava/lang/Integer;

    const/16 v2, 0xb

    invoke-direct {v0, v2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    add-int/lit8 v3, p4, 0x0

    invoke-virtual {v1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v4, v4, Lcom/sun/java_cup/internal/runtime/Symbol;->left:I

    invoke-virtual {v1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v1, v1, Lcom/sun/java_cup/internal/runtime/Symbol;->right:I

    invoke-direct {v2, v14, v4, v1, v0}, Lcom/sun/java_cup/internal/runtime/Symbol;-><init>(IIILjava/lang/Object;)V

    return-object v2

    :pswitch_2f
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, v5}, Ljava/lang/Integer;-><init>(I)V

    new-instance v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    add-int/lit8 v3, p4, 0x0

    invoke-virtual {v1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v4, v4, Lcom/sun/java_cup/internal/runtime/Symbol;->left:I

    invoke-virtual {v1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v1, v1, Lcom/sun/java_cup/internal/runtime/Symbol;->right:I

    invoke-direct {v2, v14, v4, v1, v0}, Lcom/sun/java_cup/internal/runtime/Symbol;-><init>(IIILjava/lang/Object;)V

    return-object v2

    :pswitch_30
    new-instance v0, Ljava/lang/Integer;

    const/16 v2, 0x9

    invoke-direct {v0, v2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    add-int/lit8 v3, p4, 0x0

    invoke-virtual {v1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v4, v4, Lcom/sun/java_cup/internal/runtime/Symbol;->left:I

    invoke-virtual {v1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v1, v1, Lcom/sun/java_cup/internal/runtime/Symbol;->right:I

    invoke-direct {v2, v14, v4, v1, v0}, Lcom/sun/java_cup/internal/runtime/Symbol;-><init>(IIILjava/lang/Object;)V

    return-object v2

    :pswitch_31
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, v15}, Ljava/lang/Integer;-><init>(I)V

    new-instance v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    add-int/lit8 v3, p4, 0x0

    invoke-virtual {v1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v4, v4, Lcom/sun/java_cup/internal/runtime/Symbol;->left:I

    invoke-virtual {v1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v1, v1, Lcom/sun/java_cup/internal/runtime/Symbol;->right:I

    invoke-direct {v2, v14, v4, v1, v0}, Lcom/sun/java_cup/internal/runtime/Symbol;-><init>(IIILjava/lang/Object;)V

    return-object v2

    :pswitch_32
    new-instance v0, Ljava/lang/Integer;

    const/4 v2, 0x6

    invoke-direct {v0, v2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    add-int/lit8 v3, p4, 0x0

    invoke-virtual {v1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v4, v4, Lcom/sun/java_cup/internal/runtime/Symbol;->left:I

    invoke-virtual {v1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v1, v1, Lcom/sun/java_cup/internal/runtime/Symbol;->right:I

    invoke-direct {v2, v14, v4, v1, v0}, Lcom/sun/java_cup/internal/runtime/Symbol;-><init>(IIILjava/lang/Object;)V

    return-object v2

    :pswitch_33
    new-instance v0, Ljava/lang/Integer;

    const/4 v2, 0x5

    invoke-direct {v0, v2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    add-int/lit8 v3, p4, 0x0

    invoke-virtual {v1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v4, v4, Lcom/sun/java_cup/internal/runtime/Symbol;->left:I

    invoke-virtual {v1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v1, v1, Lcom/sun/java_cup/internal/runtime/Symbol;->right:I

    invoke-direct {v2, v14, v4, v1, v0}, Lcom/sun/java_cup/internal/runtime/Symbol;-><init>(IIILjava/lang/Object;)V

    return-object v2

    :pswitch_34
    new-instance v0, Ljava/lang/Integer;

    const/4 v2, 0x4

    invoke-direct {v0, v2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    add-int/lit8 v3, p4, 0x0

    invoke-virtual {v1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v4, v4, Lcom/sun/java_cup/internal/runtime/Symbol;->left:I

    invoke-virtual {v1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v1, v1, Lcom/sun/java_cup/internal/runtime/Symbol;->right:I

    invoke-direct {v2, v14, v4, v1, v0}, Lcom/sun/java_cup/internal/runtime/Symbol;-><init>(IIILjava/lang/Object;)V

    return-object v2

    :pswitch_35
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, v10}, Ljava/lang/Integer;-><init>(I)V

    new-instance v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    add-int/lit8 v3, p4, 0x0

    invoke-virtual {v1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v4, v4, Lcom/sun/java_cup/internal/runtime/Symbol;->left:I

    invoke-virtual {v1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v1, v1, Lcom/sun/java_cup/internal/runtime/Symbol;->right:I

    invoke-direct {v2, v14, v4, v1, v0}, Lcom/sun/java_cup/internal/runtime/Symbol;-><init>(IIILjava/lang/Object;)V

    return-object v2

    :pswitch_36
    new-instance v0, Ljava/lang/Integer;

    const/4 v2, 0x2

    invoke-direct {v0, v2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    add-int/lit8 v3, p4, 0x0

    invoke-virtual {v1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v4, v4, Lcom/sun/java_cup/internal/runtime/Symbol;->left:I

    invoke-virtual {v1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v1, v1, Lcom/sun/java_cup/internal/runtime/Symbol;->right:I

    invoke-direct {v2, v14, v4, v1, v0}, Lcom/sun/java_cup/internal/runtime/Symbol;-><init>(IIILjava/lang/Object;)V

    return-object v2

    :pswitch_37
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, v13}, Ljava/lang/Integer;-><init>(I)V

    new-instance v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    add-int/lit8 v3, p4, 0x0

    invoke-virtual {v1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v4, v4, Lcom/sun/java_cup/internal/runtime/Symbol;->left:I

    invoke-virtual {v1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v1, v1, Lcom/sun/java_cup/internal/runtime/Symbol;->right:I

    invoke-direct {v2, v14, v4, v1, v0}, Lcom/sun/java_cup/internal/runtime/Symbol;-><init>(IIILjava/lang/Object;)V

    return-object v2

    :pswitch_38
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, v11}, Ljava/lang/Integer;-><init>(I)V

    new-instance v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    add-int/lit8 v3, p4, 0x0

    invoke-virtual {v1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v4, v4, Lcom/sun/java_cup/internal/runtime/Symbol;->left:I

    invoke-virtual {v1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v1, v1, Lcom/sun/java_cup/internal/runtime/Symbol;->right:I

    invoke-direct {v2, v14, v4, v1, v0}, Lcom/sun/java_cup/internal/runtime/Symbol;-><init>(IIILjava/lang/Object;)V

    return-object v2

    :pswitch_39
    new-instance v0, Ljava/lang/Integer;

    const/4 v2, 0x2

    invoke-direct {v0, v2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    add-int/lit8 v3, p4, 0x0

    invoke-virtual {v1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v4, v4, Lcom/sun/java_cup/internal/runtime/Symbol;->left:I

    invoke-virtual {v1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v1, v1, Lcom/sun/java_cup/internal/runtime/Symbol;->right:I

    const/16 v3, 0x29

    invoke-direct {v2, v3, v4, v1, v0}, Lcom/sun/java_cup/internal/runtime/Symbol;-><init>(IIILjava/lang/Object;)V

    return-object v2

    :pswitch_3a
    add-int/lit8 v0, p4, -0x1

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v2, v2, Lcom/sun/java_cup/internal/runtime/Symbol;->left:I

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v2, v2, Lcom/sun/java_cup/internal/runtime/Symbol;->right:I

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget-object v2, v2, Lcom/sun/java_cup/internal/runtime/Symbol;->value:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    new-instance v3, Lcom/sun/java_cup/internal/runtime/Symbol;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v0, v0, Lcom/sun/java_cup/internal/runtime/Symbol;->left:I

    add-int/lit8 v4, p4, 0x0

    invoke-virtual {v1, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v1, v1, Lcom/sun/java_cup/internal/runtime/Symbol;->right:I

    const/16 v4, 0x29

    invoke-direct {v3, v4, v0, v1, v2}, Lcom/sun/java_cup/internal/runtime/Symbol;-><init>(IIILjava/lang/Object;)V

    return-object v3

    :pswitch_3b
    add-int/lit8 v0, p4, 0x0

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v2, v2, Lcom/sun/java_cup/internal/runtime/Symbol;->left:I

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v2, v2, Lcom/sun/java_cup/internal/runtime/Symbol;->right:I

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget-object v2, v2, Lcom/sun/java_cup/internal/runtime/Symbol;->value:Ljava/lang/Object;

    check-cast v2, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    new-instance v3, Lcom/sun/java_cup/internal/runtime/Symbol;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v4, v4, Lcom/sun/java_cup/internal/runtime/Symbol;->left:I

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v0, v0, Lcom/sun/java_cup/internal/runtime/Symbol;->right:I

    invoke-direct {v3, v15, v4, v0, v2}, Lcom/sun/java_cup/internal/runtime/Symbol;-><init>(IIILjava/lang/Object;)V

    return-object v3

    :pswitch_3c
    add-int/lit8 v2, p4, -0x1

    invoke-virtual {v1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v3, v3, Lcom/sun/java_cup/internal/runtime/Symbol;->left:I

    invoke-virtual {v1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v3, v3, Lcom/sun/java_cup/internal/runtime/Symbol;->right:I

    invoke-virtual {v1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget-object v3, v3, Lcom/sun/java_cup/internal/runtime/Symbol;->value:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    add-int/lit8 v4, p4, 0x0

    invoke-virtual {v1, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v5, v5, Lcom/sun/java_cup/internal/runtime/Symbol;->left:I

    invoke-virtual {v1, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v5, v5, Lcom/sun/java_cup/internal/runtime/Symbol;->right:I

    invoke-virtual {v1, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget-object v5, v5, Lcom/sun/java_cup/internal/runtime/Symbol;->value:Ljava/lang/Object;

    new-instance v7, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Step;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iget-object v0, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/CUP$XPathParser$actions;->parser:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XPathParser;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v0, v3, v5}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XPathParser;->findNodeType(ILjava/lang/Object;)I

    move-result v0

    invoke-direct {v7, v8, v0, v6}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Step;-><init>(IILjava/util/Vector;)V

    new-instance v0, Lcom/sun/java_cup/internal/runtime/Symbol;

    invoke-virtual {v1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v2, v2, Lcom/sun/java_cup/internal/runtime/Symbol;->left:I

    invoke-virtual {v1, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v1, v1, Lcom/sun/java_cup/internal/runtime/Symbol;->right:I

    invoke-direct {v0, v15, v2, v1, v7}, Lcom/sun/java_cup/internal/runtime/Symbol;-><init>(IIILjava/lang/Object;)V

    return-object v0

    :pswitch_3d
    add-int/lit8 v2, p4, -0x2

    invoke-virtual {v1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v3, v3, Lcom/sun/java_cup/internal/runtime/Symbol;->left:I

    invoke-virtual {v1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v3, v3, Lcom/sun/java_cup/internal/runtime/Symbol;->right:I

    invoke-virtual {v1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget-object v3, v3, Lcom/sun/java_cup/internal/runtime/Symbol;->value:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    add-int/lit8 v4, p4, -0x1

    invoke-virtual {v1, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v5, v5, Lcom/sun/java_cup/internal/runtime/Symbol;->left:I

    invoke-virtual {v1, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v5, v5, Lcom/sun/java_cup/internal/runtime/Symbol;->right:I

    invoke-virtual {v1, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget-object v4, v4, Lcom/sun/java_cup/internal/runtime/Symbol;->value:Ljava/lang/Object;

    add-int/lit8 v5, p4, 0x0

    invoke-virtual {v1, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v6, v6, Lcom/sun/java_cup/internal/runtime/Symbol;->left:I

    invoke-virtual {v1, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v6, v6, Lcom/sun/java_cup/internal/runtime/Symbol;->right:I

    invoke-virtual {v1, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget-object v6, v6, Lcom/sun/java_cup/internal/runtime/Symbol;->value:Ljava/lang/Object;

    check-cast v6, Ljava/util/Vector;

    new-instance v7, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Step;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iget-object v0, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/CUP$XPathParser$actions;->parser:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XPathParser;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v0, v3, v4}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XPathParser;->findNodeType(ILjava/lang/Object;)I

    move-result v0

    invoke-direct {v7, v8, v0, v6}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Step;-><init>(IILjava/util/Vector;)V

    new-instance v0, Lcom/sun/java_cup/internal/runtime/Symbol;

    invoke-virtual {v1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v2, v2, Lcom/sun/java_cup/internal/runtime/Symbol;->left:I

    invoke-virtual {v1, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v1, v1, Lcom/sun/java_cup/internal/runtime/Symbol;->right:I

    invoke-direct {v0, v15, v2, v1, v7}, Lcom/sun/java_cup/internal/runtime/Symbol;-><init>(IIILjava/lang/Object;)V

    return-object v0

    :pswitch_3e
    add-int/lit8 v2, p4, -0x1

    invoke-virtual {v1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v3, v3, Lcom/sun/java_cup/internal/runtime/Symbol;->left:I

    invoke-virtual {v1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v3, v3, Lcom/sun/java_cup/internal/runtime/Symbol;->right:I

    invoke-virtual {v1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget-object v3, v3, Lcom/sun/java_cup/internal/runtime/Symbol;->value:Ljava/lang/Object;

    add-int/lit8 v4, p4, 0x0

    invoke-virtual {v1, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v5, v5, Lcom/sun/java_cup/internal/runtime/Symbol;->left:I

    invoke-virtual {v1, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v5, v5, Lcom/sun/java_cup/internal/runtime/Symbol;->right:I

    invoke-virtual {v1, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget-object v5, v5, Lcom/sun/java_cup/internal/runtime/Symbol;->value:Ljava/lang/Object;

    check-cast v5, Ljava/util/Vector;

    instance-of v6, v3, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Step;

    if-eqz v6, :cond_32

    check-cast v3, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Step;

    invoke-virtual {v3, v5}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Step;->addPredicates(Ljava/util/Vector;)V

    goto :goto_7

    :cond_32
    new-instance v6, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Step;

    iget-object v0, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/CUP$XPathParser$actions;->parser:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XPathParser;

    invoke-virtual {v0, v10, v3}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XPathParser;->findNodeType(ILjava/lang/Object;)I

    move-result v0

    invoke-direct {v6, v10, v0, v5}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Step;-><init>(IILjava/util/Vector;)V

    move-object v3, v6

    :goto_7
    new-instance v0, Lcom/sun/java_cup/internal/runtime/Symbol;

    invoke-virtual {v1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v2, v2, Lcom/sun/java_cup/internal/runtime/Symbol;->left:I

    invoke-virtual {v1, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v1, v1, Lcom/sun/java_cup/internal/runtime/Symbol;->right:I

    invoke-direct {v0, v15, v2, v1, v3}, Lcom/sun/java_cup/internal/runtime/Symbol;-><init>(IIILjava/lang/Object;)V

    return-object v0

    :pswitch_3f
    add-int/lit8 v2, p4, 0x0

    invoke-virtual {v1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v3, v3, Lcom/sun/java_cup/internal/runtime/Symbol;->left:I

    invoke-virtual {v1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v3, v3, Lcom/sun/java_cup/internal/runtime/Symbol;->right:I

    invoke-virtual {v1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget-object v3, v3, Lcom/sun/java_cup/internal/runtime/Symbol;->value:Ljava/lang/Object;

    instance-of v4, v3, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Step;

    if-eqz v4, :cond_33

    check-cast v3, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Step;

    goto :goto_8

    :cond_33
    new-instance v4, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Step;

    iget-object v0, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/CUP$XPathParser$actions;->parser:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XPathParser;

    invoke-virtual {v0, v10, v3}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XPathParser;->findNodeType(ILjava/lang/Object;)I

    move-result v0

    invoke-direct {v4, v10, v0, v6}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Step;-><init>(IILjava/util/Vector;)V

    move-object v3, v4

    :goto_8
    new-instance v0, Lcom/sun/java_cup/internal/runtime/Symbol;

    invoke-virtual {v1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v4, v4, Lcom/sun/java_cup/internal/runtime/Symbol;->left:I

    invoke-virtual {v1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v1, v1, Lcom/sun/java_cup/internal/runtime/Symbol;->right:I

    invoke-direct {v0, v15, v4, v1, v3}, Lcom/sun/java_cup/internal/runtime/Symbol;-><init>(IIILjava/lang/Object;)V

    return-object v0

    :pswitch_40
    add-int/lit8 v2, p4, 0x0

    invoke-virtual {v1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v3, v3, Lcom/sun/java_cup/internal/runtime/Symbol;->left:I

    invoke-virtual {v1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v3, v3, Lcom/sun/java_cup/internal/runtime/Symbol;->right:I

    invoke-virtual {v1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget-object v3, v3, Lcom/sun/java_cup/internal/runtime/Symbol;->value:Ljava/lang/Object;

    check-cast v3, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    instance-of v4, v3, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Step;

    if-eqz v4, :cond_34

    iget-object v4, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/CUP$XPathParser$actions;->parser:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XPathParser;

    move-object v5, v3

    check-cast v5, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Step;

    invoke-virtual {v5}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Step;->getAxis()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XPathParser;->isElementAxis(I)Z

    move-result v4

    if-eqz v4, :cond_34

    move v12, v13

    :cond_34
    new-instance v4, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Step;

    const/4 v5, 0x5

    invoke-direct {v4, v5, v12, v6}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Step;-><init>(IILjava/util/Vector;)V

    new-instance v5, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/AbsoluteLocationPath;

    iget-object v0, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/CUP$XPathParser$actions;->parser:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XPathParser;

    check-cast v3, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/RelativeLocationPath;

    invoke-virtual {v0, v4, v3}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XPathParser;->insertStep(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Step;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/RelativeLocationPath;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/RelativeLocationPath;

    move-result-object v0

    invoke-direct {v5, v0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/AbsoluteLocationPath;-><init>(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;)V

    new-instance v0, Lcom/sun/java_cup/internal/runtime/Symbol;

    add-int/lit8 v3, p4, -0x1

    invoke-virtual {v1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v3, v3, Lcom/sun/java_cup/internal/runtime/Symbol;->left:I

    invoke-virtual {v1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v1, v1, Lcom/sun/java_cup/internal/runtime/Symbol;->right:I

    const/16 v2, 0x18

    invoke-direct {v0, v2, v3, v1, v5}, Lcom/sun/java_cup/internal/runtime/Symbol;-><init>(IIILjava/lang/Object;)V

    return-object v0

    :pswitch_41
    add-int/lit8 v0, p4, -0x2

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v2, v2, Lcom/sun/java_cup/internal/runtime/Symbol;->left:I

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v2, v2, Lcom/sun/java_cup/internal/runtime/Symbol;->right:I

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget-object v2, v2, Lcom/sun/java_cup/internal/runtime/Symbol;->value:Ljava/lang/Object;

    check-cast v2, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    add-int/lit8 v3, p4, 0x0

    invoke-virtual {v1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v4, v4, Lcom/sun/java_cup/internal/runtime/Symbol;->left:I

    invoke-virtual {v1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v4, v4, Lcom/sun/java_cup/internal/runtime/Symbol;->right:I

    invoke-virtual {v1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget-object v4, v4, Lcom/sun/java_cup/internal/runtime/Symbol;->value:Ljava/lang/Object;

    check-cast v4, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    check-cast v4, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Step;

    invoke-virtual {v4}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Step;->getAxis()I

    move-result v5

    invoke-virtual {v4}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Step;->getNodeType()I

    move-result v7

    invoke-virtual {v4}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Step;->getPredicates()Ljava/util/Vector;

    move-result-object v8

    if-ne v5, v10, :cond_39

    const/4 v9, 0x2

    if-eq v7, v9, :cond_38

    if-nez v8, :cond_36

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Step;->setAxis(I)V

    instance-of v5, v2, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Step;

    if-eqz v5, :cond_35

    move-object v5, v2

    check-cast v5, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Step;

    invoke-virtual {v5}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Step;->isAbbreviatedDot()Z

    move-result v5

    if-eqz v5, :cond_35

    goto :goto_c

    :cond_35
    check-cast v2, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/RelativeLocationPath;

    new-instance v5, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/ParentLocationPath;

    invoke-direct {v5, v2, v4}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/ParentLocationPath;-><init>(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/RelativeLocationPath;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;)V

    :goto_9
    move-object v4, v5

    goto :goto_c

    :cond_36
    instance-of v5, v2, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Step;

    if-eqz v5, :cond_37

    move-object v5, v2

    check-cast v5, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Step;

    invoke-virtual {v5}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Step;->isAbbreviatedDot()Z

    move-result v5

    if-eqz v5, :cond_37

    new-instance v2, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Step;

    const/4 v5, 0x5

    invoke-direct {v2, v5, v13, v6}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Step;-><init>(IILjava/util/Vector;)V

    new-instance v5, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/ParentLocationPath;

    invoke-direct {v5, v2, v4}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/ParentLocationPath;-><init>(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/RelativeLocationPath;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;)V

    goto :goto_9

    :cond_37
    const/4 v5, 0x5

    check-cast v2, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/RelativeLocationPath;

    new-instance v7, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Step;

    invoke-direct {v7, v5, v13, v6}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Step;-><init>(IILjava/util/Vector;)V

    new-instance v5, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/ParentLocationPath;

    invoke-direct {v5, v7, v4}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/ParentLocationPath;-><init>(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/RelativeLocationPath;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;)V

    new-instance v4, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/ParentLocationPath;

    invoke-direct {v4, v2, v5}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/ParentLocationPath;-><init>(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/RelativeLocationPath;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;)V

    goto :goto_c

    :cond_38
    move v8, v9

    goto :goto_a

    :cond_39
    const/4 v8, 0x2

    :goto_a
    if-eq v5, v8, :cond_3b

    if-ne v7, v8, :cond_3a

    goto :goto_b

    :cond_3a
    check-cast v2, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/RelativeLocationPath;

    new-instance v5, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Step;

    const/4 v7, 0x5

    invoke-direct {v5, v7, v12, v6}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Step;-><init>(IILjava/util/Vector;)V

    new-instance v6, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/ParentLocationPath;

    invoke-direct {v6, v5, v4}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/ParentLocationPath;-><init>(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/RelativeLocationPath;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;)V

    new-instance v4, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/ParentLocationPath;

    invoke-direct {v4, v2, v6}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/ParentLocationPath;-><init>(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/RelativeLocationPath;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;)V

    goto :goto_c

    :cond_3b
    :goto_b
    const/4 v7, 0x5

    check-cast v2, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/RelativeLocationPath;

    new-instance v5, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Step;

    invoke-direct {v5, v7, v13, v6}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Step;-><init>(IILjava/util/Vector;)V

    new-instance v6, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/ParentLocationPath;

    invoke-direct {v6, v5, v4}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/ParentLocationPath;-><init>(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/RelativeLocationPath;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;)V

    new-instance v4, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/ParentLocationPath;

    invoke-direct {v4, v2, v6}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/ParentLocationPath;-><init>(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/RelativeLocationPath;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;)V

    :goto_c
    new-instance v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v0, v0, Lcom/sun/java_cup/internal/runtime/Symbol;->left:I

    invoke-virtual {v1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v1, v1, Lcom/sun/java_cup/internal/runtime/Symbol;->right:I

    const/16 v3, 0x16

    invoke-direct {v2, v3, v0, v1, v4}, Lcom/sun/java_cup/internal/runtime/Symbol;-><init>(IIILjava/lang/Object;)V

    return-object v2

    :pswitch_42
    add-int/lit8 v0, p4, 0x0

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v2, v2, Lcom/sun/java_cup/internal/runtime/Symbol;->left:I

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v2, v2, Lcom/sun/java_cup/internal/runtime/Symbol;->right:I

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget-object v2, v2, Lcom/sun/java_cup/internal/runtime/Symbol;->value:Ljava/lang/Object;

    check-cast v2, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    new-instance v3, Lcom/sun/java_cup/internal/runtime/Symbol;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v4, v4, Lcom/sun/java_cup/internal/runtime/Symbol;->left:I

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v0, v0, Lcom/sun/java_cup/internal/runtime/Symbol;->right:I

    const/16 v1, 0x17

    invoke-direct {v3, v1, v4, v0, v2}, Lcom/sun/java_cup/internal/runtime/Symbol;-><init>(IIILjava/lang/Object;)V

    return-object v3

    :pswitch_43
    add-int/lit8 v0, p4, 0x0

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v2, v2, Lcom/sun/java_cup/internal/runtime/Symbol;->left:I

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v2, v2, Lcom/sun/java_cup/internal/runtime/Symbol;->right:I

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget-object v2, v2, Lcom/sun/java_cup/internal/runtime/Symbol;->value:Ljava/lang/Object;

    check-cast v2, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    new-instance v3, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/AbsoluteLocationPath;

    invoke-direct {v3, v2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/AbsoluteLocationPath;-><init>(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;)V

    new-instance v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    add-int/lit8 v4, p4, -0x1

    invoke-virtual {v1, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v4, v4, Lcom/sun/java_cup/internal/runtime/Symbol;->left:I

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v0, v0, Lcom/sun/java_cup/internal/runtime/Symbol;->right:I

    const/16 v1, 0x17

    invoke-direct {v2, v1, v4, v0, v3}, Lcom/sun/java_cup/internal/runtime/Symbol;-><init>(IIILjava/lang/Object;)V

    return-object v2

    :pswitch_44
    new-instance v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/AbsoluteLocationPath;

    invoke-direct {v0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/AbsoluteLocationPath;-><init>()V

    new-instance v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    add-int/lit8 v3, p4, 0x0

    invoke-virtual {v1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v4, v4, Lcom/sun/java_cup/internal/runtime/Symbol;->left:I

    invoke-virtual {v1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v1, v1, Lcom/sun/java_cup/internal/runtime/Symbol;->right:I

    const/16 v3, 0x17

    invoke-direct {v2, v3, v4, v1, v0}, Lcom/sun/java_cup/internal/runtime/Symbol;-><init>(IIILjava/lang/Object;)V

    return-object v2

    :pswitch_45
    add-int/lit8 v0, p4, 0x0

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v2, v2, Lcom/sun/java_cup/internal/runtime/Symbol;->left:I

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v2, v2, Lcom/sun/java_cup/internal/runtime/Symbol;->right:I

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget-object v2, v2, Lcom/sun/java_cup/internal/runtime/Symbol;->value:Ljava/lang/Object;

    check-cast v2, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    new-instance v3, Lcom/sun/java_cup/internal/runtime/Symbol;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v4, v4, Lcom/sun/java_cup/internal/runtime/Symbol;->left:I

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v0, v0, Lcom/sun/java_cup/internal/runtime/Symbol;->right:I

    const/16 v1, 0x15

    invoke-direct {v3, v1, v4, v0, v2}, Lcom/sun/java_cup/internal/runtime/Symbol;-><init>(IIILjava/lang/Object;)V

    return-object v3

    :pswitch_46
    add-int/lit8 v0, p4, -0x2

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v2, v2, Lcom/sun/java_cup/internal/runtime/Symbol;->left:I

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v2, v2, Lcom/sun/java_cup/internal/runtime/Symbol;->right:I

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget-object v2, v2, Lcom/sun/java_cup/internal/runtime/Symbol;->value:Ljava/lang/Object;

    check-cast v2, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    add-int/lit8 v3, p4, 0x0

    invoke-virtual {v1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v4, v4, Lcom/sun/java_cup/internal/runtime/Symbol;->left:I

    invoke-virtual {v1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v4, v4, Lcom/sun/java_cup/internal/runtime/Symbol;->right:I

    invoke-virtual {v1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget-object v4, v4, Lcom/sun/java_cup/internal/runtime/Symbol;->value:Ljava/lang/Object;

    check-cast v4, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    instance-of v5, v2, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Step;

    if-eqz v5, :cond_3c

    move-object v5, v2

    check-cast v5, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Step;

    invoke-virtual {v5}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Step;->isAbbreviatedDot()Z

    move-result v5

    if-eqz v5, :cond_3c

    move-object v2, v4

    goto :goto_d

    :cond_3c
    move-object v5, v4

    check-cast v5, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Step;

    invoke-virtual {v5}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Step;->isAbbreviatedDot()Z

    move-result v5

    if-eqz v5, :cond_3d

    goto :goto_d

    :cond_3d
    new-instance v5, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/ParentLocationPath;

    check-cast v2, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/RelativeLocationPath;

    invoke-direct {v5, v2, v4}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/ParentLocationPath;-><init>(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/RelativeLocationPath;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;)V

    move-object v2, v5

    :goto_d
    new-instance v4, Lcom/sun/java_cup/internal/runtime/Symbol;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v0, v0, Lcom/sun/java_cup/internal/runtime/Symbol;->left:I

    invoke-virtual {v1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v1, v1, Lcom/sun/java_cup/internal/runtime/Symbol;->right:I

    const/16 v3, 0x15

    invoke-direct {v4, v3, v0, v1, v2}, Lcom/sun/java_cup/internal/runtime/Symbol;-><init>(IIILjava/lang/Object;)V

    return-object v4

    :pswitch_47
    add-int/lit8 v0, p4, 0x0

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v2, v2, Lcom/sun/java_cup/internal/runtime/Symbol;->left:I

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v2, v2, Lcom/sun/java_cup/internal/runtime/Symbol;->right:I

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget-object v2, v2, Lcom/sun/java_cup/internal/runtime/Symbol;->value:Ljava/lang/Object;

    check-cast v2, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    new-instance v3, Lcom/sun/java_cup/internal/runtime/Symbol;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v4, v4, Lcom/sun/java_cup/internal/runtime/Symbol;->left:I

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v0, v0, Lcom/sun/java_cup/internal/runtime/Symbol;->right:I

    const/16 v1, 0x15

    invoke-direct {v3, v1, v4, v0, v2}, Lcom/sun/java_cup/internal/runtime/Symbol;-><init>(IIILjava/lang/Object;)V

    return-object v3

    :pswitch_48
    add-int/lit8 v0, p4, 0x0

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v2, v2, Lcom/sun/java_cup/internal/runtime/Symbol;->left:I

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v2, v2, Lcom/sun/java_cup/internal/runtime/Symbol;->right:I

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget-object v2, v2, Lcom/sun/java_cup/internal/runtime/Symbol;->value:Ljava/lang/Object;

    check-cast v2, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    new-instance v3, Lcom/sun/java_cup/internal/runtime/Symbol;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v4, v4, Lcom/sun/java_cup/internal/runtime/Symbol;->left:I

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v0, v0, Lcom/sun/java_cup/internal/runtime/Symbol;->right:I

    const/4 v1, 0x4

    invoke-direct {v3, v1, v4, v0, v2}, Lcom/sun/java_cup/internal/runtime/Symbol;-><init>(IIILjava/lang/Object;)V

    return-object v3

    :pswitch_49
    add-int/lit8 v0, p4, 0x0

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v2, v2, Lcom/sun/java_cup/internal/runtime/Symbol;->left:I

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v2, v2, Lcom/sun/java_cup/internal/runtime/Symbol;->right:I

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget-object v2, v2, Lcom/sun/java_cup/internal/runtime/Symbol;->value:Ljava/lang/Object;

    check-cast v2, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    new-instance v3, Lcom/sun/java_cup/internal/runtime/Symbol;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v4, v4, Lcom/sun/java_cup/internal/runtime/Symbol;->left:I

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v0, v0, Lcom/sun/java_cup/internal/runtime/Symbol;->right:I

    const/4 v1, 0x4

    invoke-direct {v3, v1, v4, v0, v2}, Lcom/sun/java_cup/internal/runtime/Symbol;-><init>(IIILjava/lang/Object;)V

    return-object v3

    :pswitch_4a
    add-int/lit8 v2, p4, -0x2

    invoke-virtual {v1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v3, v3, Lcom/sun/java_cup/internal/runtime/Symbol;->left:I

    invoke-virtual {v1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v3, v3, Lcom/sun/java_cup/internal/runtime/Symbol;->right:I

    invoke-virtual {v1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget-object v3, v3, Lcom/sun/java_cup/internal/runtime/Symbol;->value:Ljava/lang/Object;

    check-cast v3, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    add-int/lit8 v4, p4, 0x0

    invoke-virtual {v1, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v5, v5, Lcom/sun/java_cup/internal/runtime/Symbol;->left:I

    invoke-virtual {v1, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v5, v5, Lcom/sun/java_cup/internal/runtime/Symbol;->right:I

    invoke-virtual {v1, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget-object v5, v5, Lcom/sun/java_cup/internal/runtime/Symbol;->value:Ljava/lang/Object;

    check-cast v5, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    instance-of v7, v5, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Step;

    if-eqz v7, :cond_3e

    iget-object v0, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/CUP$XPathParser$actions;->parser:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XPathParser;

    move-object v7, v5

    check-cast v7, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Step;

    invoke-virtual {v7}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Step;->getAxis()I

    move-result v7

    invoke-virtual {v0, v7}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XPathParser;->isElementAxis(I)Z

    move-result v0

    if-eqz v0, :cond_3e

    move v12, v13

    :cond_3e
    new-instance v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Step;

    const/4 v7, 0x5

    invoke-direct {v0, v7, v12, v6}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Step;-><init>(IILjava/util/Vector;)V

    new-instance v6, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FilterParentPath;

    invoke-direct {v6, v3, v0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FilterParentPath;-><init>(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;)V

    new-instance v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FilterParentPath;

    invoke-direct {v0, v6, v5}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FilterParentPath;-><init>(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;)V

    instance-of v3, v3, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/KeyCall;

    if-nez v3, :cond_3f

    invoke-virtual {v0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FilterParentPath;->setDescendantAxis()V

    :cond_3f
    new-instance v3, Lcom/sun/java_cup/internal/runtime/Symbol;

    invoke-virtual {v1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v2, v2, Lcom/sun/java_cup/internal/runtime/Symbol;->left:I

    invoke-virtual {v1, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v1, v1, Lcom/sun/java_cup/internal/runtime/Symbol;->right:I

    const/16 v4, 0x13

    invoke-direct {v3, v4, v2, v1, v0}, Lcom/sun/java_cup/internal/runtime/Symbol;-><init>(IIILjava/lang/Object;)V

    return-object v3

    :pswitch_4b
    add-int/lit8 v0, p4, -0x2

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v2, v2, Lcom/sun/java_cup/internal/runtime/Symbol;->left:I

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v2, v2, Lcom/sun/java_cup/internal/runtime/Symbol;->right:I

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget-object v2, v2, Lcom/sun/java_cup/internal/runtime/Symbol;->value:Ljava/lang/Object;

    check-cast v2, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    add-int/lit8 v3, p4, 0x0

    invoke-virtual {v1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v4, v4, Lcom/sun/java_cup/internal/runtime/Symbol;->left:I

    invoke-virtual {v1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v4, v4, Lcom/sun/java_cup/internal/runtime/Symbol;->right:I

    invoke-virtual {v1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget-object v4, v4, Lcom/sun/java_cup/internal/runtime/Symbol;->value:Ljava/lang/Object;

    check-cast v4, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    new-instance v5, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FilterParentPath;

    invoke-direct {v5, v2, v4}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/FilterParentPath;-><init>(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;)V

    new-instance v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v0, v0, Lcom/sun/java_cup/internal/runtime/Symbol;->left:I

    invoke-virtual {v1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v1, v1, Lcom/sun/java_cup/internal/runtime/Symbol;->right:I

    const/16 v3, 0x13

    invoke-direct {v2, v3, v0, v1, v5}, Lcom/sun/java_cup/internal/runtime/Symbol;-><init>(IIILjava/lang/Object;)V

    return-object v2

    :pswitch_4c
    add-int/lit8 v0, p4, 0x0

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v2, v2, Lcom/sun/java_cup/internal/runtime/Symbol;->left:I

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v2, v2, Lcom/sun/java_cup/internal/runtime/Symbol;->right:I

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget-object v2, v2, Lcom/sun/java_cup/internal/runtime/Symbol;->value:Ljava/lang/Object;

    check-cast v2, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    new-instance v3, Lcom/sun/java_cup/internal/runtime/Symbol;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v4, v4, Lcom/sun/java_cup/internal/runtime/Symbol;->left:I

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v0, v0, Lcom/sun/java_cup/internal/runtime/Symbol;->right:I

    const/16 v1, 0x13

    invoke-direct {v3, v1, v4, v0, v2}, Lcom/sun/java_cup/internal/runtime/Symbol;-><init>(IIILjava/lang/Object;)V

    return-object v3

    :pswitch_4d
    add-int/lit8 v0, p4, 0x0

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v2, v2, Lcom/sun/java_cup/internal/runtime/Symbol;->left:I

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v2, v2, Lcom/sun/java_cup/internal/runtime/Symbol;->right:I

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget-object v2, v2, Lcom/sun/java_cup/internal/runtime/Symbol;->value:Ljava/lang/Object;

    check-cast v2, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    new-instance v3, Lcom/sun/java_cup/internal/runtime/Symbol;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v4, v4, Lcom/sun/java_cup/internal/runtime/Symbol;->left:I

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v0, v0, Lcom/sun/java_cup/internal/runtime/Symbol;->right:I

    const/16 v1, 0x13

    invoke-direct {v3, v1, v4, v0, v2}, Lcom/sun/java_cup/internal/runtime/Symbol;-><init>(IIILjava/lang/Object;)V

    return-object v3

    :pswitch_4e
    add-int/lit8 v0, p4, -0x2

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v2, v2, Lcom/sun/java_cup/internal/runtime/Symbol;->left:I

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v2, v2, Lcom/sun/java_cup/internal/runtime/Symbol;->right:I

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget-object v2, v2, Lcom/sun/java_cup/internal/runtime/Symbol;->value:Ljava/lang/Object;

    check-cast v2, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    add-int/lit8 v3, p4, 0x0

    invoke-virtual {v1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v4, v4, Lcom/sun/java_cup/internal/runtime/Symbol;->left:I

    invoke-virtual {v1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v4, v4, Lcom/sun/java_cup/internal/runtime/Symbol;->right:I

    invoke-virtual {v1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget-object v4, v4, Lcom/sun/java_cup/internal/runtime/Symbol;->value:Ljava/lang/Object;

    check-cast v4, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    new-instance v5, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/UnionPathExpr;

    invoke-direct {v5, v2, v4}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/UnionPathExpr;-><init>(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;)V

    new-instance v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v0, v0, Lcom/sun/java_cup/internal/runtime/Symbol;->left:I

    invoke-virtual {v1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v1, v1, Lcom/sun/java_cup/internal/runtime/Symbol;->right:I

    const/16 v3, 0x12

    invoke-direct {v2, v3, v0, v1, v5}, Lcom/sun/java_cup/internal/runtime/Symbol;-><init>(IIILjava/lang/Object;)V

    return-object v2

    :pswitch_4f
    add-int/lit8 v0, p4, 0x0

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v2, v2, Lcom/sun/java_cup/internal/runtime/Symbol;->left:I

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v2, v2, Lcom/sun/java_cup/internal/runtime/Symbol;->right:I

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget-object v2, v2, Lcom/sun/java_cup/internal/runtime/Symbol;->value:Ljava/lang/Object;

    check-cast v2, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    new-instance v3, Lcom/sun/java_cup/internal/runtime/Symbol;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v4, v4, Lcom/sun/java_cup/internal/runtime/Symbol;->left:I

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v0, v0, Lcom/sun/java_cup/internal/runtime/Symbol;->right:I

    const/16 v1, 0x12

    invoke-direct {v3, v1, v4, v0, v2}, Lcom/sun/java_cup/internal/runtime/Symbol;-><init>(IIILjava/lang/Object;)V

    return-object v3

    :pswitch_50
    add-int/lit8 v0, p4, 0x0

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v2, v2, Lcom/sun/java_cup/internal/runtime/Symbol;->left:I

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v2, v2, Lcom/sun/java_cup/internal/runtime/Symbol;->right:I

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget-object v2, v2, Lcom/sun/java_cup/internal/runtime/Symbol;->value:Ljava/lang/Object;

    check-cast v2, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    new-instance v3, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/UnaryOpExpr;

    invoke-direct {v3, v2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/UnaryOpExpr;-><init>(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;)V

    new-instance v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    add-int/lit8 v4, p4, -0x1

    invoke-virtual {v1, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v4, v4, Lcom/sun/java_cup/internal/runtime/Symbol;->left:I

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v0, v0, Lcom/sun/java_cup/internal/runtime/Symbol;->right:I

    const/16 v1, 0xe

    invoke-direct {v2, v1, v4, v0, v3}, Lcom/sun/java_cup/internal/runtime/Symbol;-><init>(IIILjava/lang/Object;)V

    return-object v2

    :pswitch_51
    add-int/lit8 v0, p4, 0x0

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v2, v2, Lcom/sun/java_cup/internal/runtime/Symbol;->left:I

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v2, v2, Lcom/sun/java_cup/internal/runtime/Symbol;->right:I

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget-object v2, v2, Lcom/sun/java_cup/internal/runtime/Symbol;->value:Ljava/lang/Object;

    check-cast v2, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    new-instance v3, Lcom/sun/java_cup/internal/runtime/Symbol;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v4, v4, Lcom/sun/java_cup/internal/runtime/Symbol;->left:I

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v0, v0, Lcom/sun/java_cup/internal/runtime/Symbol;->right:I

    const/16 v1, 0xe

    invoke-direct {v3, v1, v4, v0, v2}, Lcom/sun/java_cup/internal/runtime/Symbol;-><init>(IIILjava/lang/Object;)V

    return-object v3

    :pswitch_52
    add-int/lit8 v0, p4, -0x2

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v2, v2, Lcom/sun/java_cup/internal/runtime/Symbol;->left:I

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v2, v2, Lcom/sun/java_cup/internal/runtime/Symbol;->right:I

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget-object v2, v2, Lcom/sun/java_cup/internal/runtime/Symbol;->value:Ljava/lang/Object;

    check-cast v2, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    add-int/lit8 v3, p4, 0x0

    invoke-virtual {v1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v4, v4, Lcom/sun/java_cup/internal/runtime/Symbol;->left:I

    invoke-virtual {v1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v4, v4, Lcom/sun/java_cup/internal/runtime/Symbol;->right:I

    invoke-virtual {v1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget-object v4, v4, Lcom/sun/java_cup/internal/runtime/Symbol;->value:Ljava/lang/Object;

    check-cast v4, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    new-instance v5, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/BinOpExpr;

    const/4 v6, 0x4

    invoke-direct {v5, v6, v2, v4}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/BinOpExpr;-><init>(ILcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;)V

    new-instance v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v0, v0, Lcom/sun/java_cup/internal/runtime/Symbol;->left:I

    invoke-virtual {v1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v1, v1, Lcom/sun/java_cup/internal/runtime/Symbol;->right:I

    invoke-direct {v2, v9, v0, v1, v5}, Lcom/sun/java_cup/internal/runtime/Symbol;-><init>(IIILjava/lang/Object;)V

    return-object v2

    :pswitch_53
    add-int/lit8 v0, p4, -0x2

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v2, v2, Lcom/sun/java_cup/internal/runtime/Symbol;->left:I

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v2, v2, Lcom/sun/java_cup/internal/runtime/Symbol;->right:I

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget-object v2, v2, Lcom/sun/java_cup/internal/runtime/Symbol;->value:Ljava/lang/Object;

    check-cast v2, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    add-int/lit8 v3, p4, 0x0

    invoke-virtual {v1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v4, v4, Lcom/sun/java_cup/internal/runtime/Symbol;->left:I

    invoke-virtual {v1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v4, v4, Lcom/sun/java_cup/internal/runtime/Symbol;->right:I

    invoke-virtual {v1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget-object v4, v4, Lcom/sun/java_cup/internal/runtime/Symbol;->value:Ljava/lang/Object;

    check-cast v4, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    new-instance v5, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/BinOpExpr;

    invoke-direct {v5, v10, v2, v4}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/BinOpExpr;-><init>(ILcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;)V

    new-instance v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v0, v0, Lcom/sun/java_cup/internal/runtime/Symbol;->left:I

    invoke-virtual {v1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v1, v1, Lcom/sun/java_cup/internal/runtime/Symbol;->right:I

    invoke-direct {v2, v9, v0, v1, v5}, Lcom/sun/java_cup/internal/runtime/Symbol;-><init>(IIILjava/lang/Object;)V

    return-object v2

    :pswitch_54
    add-int/lit8 v0, p4, -0x2

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v2, v2, Lcom/sun/java_cup/internal/runtime/Symbol;->left:I

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v2, v2, Lcom/sun/java_cup/internal/runtime/Symbol;->right:I

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget-object v2, v2, Lcom/sun/java_cup/internal/runtime/Symbol;->value:Ljava/lang/Object;

    check-cast v2, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    add-int/lit8 v3, p4, 0x0

    invoke-virtual {v1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v4, v4, Lcom/sun/java_cup/internal/runtime/Symbol;->left:I

    invoke-virtual {v1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v4, v4, Lcom/sun/java_cup/internal/runtime/Symbol;->right:I

    invoke-virtual {v1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget-object v4, v4, Lcom/sun/java_cup/internal/runtime/Symbol;->value:Ljava/lang/Object;

    check-cast v4, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    new-instance v5, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/BinOpExpr;

    const/4 v6, 0x2

    invoke-direct {v5, v6, v2, v4}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/BinOpExpr;-><init>(ILcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;)V

    new-instance v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v0, v0, Lcom/sun/java_cup/internal/runtime/Symbol;->left:I

    invoke-virtual {v1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v1, v1, Lcom/sun/java_cup/internal/runtime/Symbol;->right:I

    invoke-direct {v2, v9, v0, v1, v5}, Lcom/sun/java_cup/internal/runtime/Symbol;-><init>(IIILjava/lang/Object;)V

    return-object v2

    :pswitch_55
    add-int/lit8 v0, p4, 0x0

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v2, v2, Lcom/sun/java_cup/internal/runtime/Symbol;->left:I

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v2, v2, Lcom/sun/java_cup/internal/runtime/Symbol;->right:I

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget-object v2, v2, Lcom/sun/java_cup/internal/runtime/Symbol;->value:Ljava/lang/Object;

    check-cast v2, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    new-instance v3, Lcom/sun/java_cup/internal/runtime/Symbol;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v4, v4, Lcom/sun/java_cup/internal/runtime/Symbol;->left:I

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v0, v0, Lcom/sun/java_cup/internal/runtime/Symbol;->right:I

    invoke-direct {v3, v9, v4, v0, v2}, Lcom/sun/java_cup/internal/runtime/Symbol;-><init>(IIILjava/lang/Object;)V

    return-object v3

    :pswitch_56
    add-int/lit8 v0, p4, -0x2

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v2, v2, Lcom/sun/java_cup/internal/runtime/Symbol;->left:I

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v2, v2, Lcom/sun/java_cup/internal/runtime/Symbol;->right:I

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget-object v2, v2, Lcom/sun/java_cup/internal/runtime/Symbol;->value:Ljava/lang/Object;

    check-cast v2, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    add-int/lit8 v4, p4, 0x0

    invoke-virtual {v1, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v5, v5, Lcom/sun/java_cup/internal/runtime/Symbol;->left:I

    invoke-virtual {v1, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v5, v5, Lcom/sun/java_cup/internal/runtime/Symbol;->right:I

    invoke-virtual {v1, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget-object v5, v5, Lcom/sun/java_cup/internal/runtime/Symbol;->value:Ljava/lang/Object;

    check-cast v5, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    new-instance v6, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/BinOpExpr;

    invoke-direct {v6, v13, v2, v5}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/BinOpExpr;-><init>(ILcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;)V

    new-instance v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v0, v0, Lcom/sun/java_cup/internal/runtime/Symbol;->left:I

    invoke-virtual {v1, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v1, v1, Lcom/sun/java_cup/internal/runtime/Symbol;->right:I

    invoke-direct {v2, v3, v0, v1, v6}, Lcom/sun/java_cup/internal/runtime/Symbol;-><init>(IIILjava/lang/Object;)V

    return-object v2

    :pswitch_57
    add-int/lit8 v0, p4, -0x2

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v2, v2, Lcom/sun/java_cup/internal/runtime/Symbol;->left:I

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v2, v2, Lcom/sun/java_cup/internal/runtime/Symbol;->right:I

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget-object v2, v2, Lcom/sun/java_cup/internal/runtime/Symbol;->value:Ljava/lang/Object;

    check-cast v2, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    add-int/lit8 v4, p4, 0x0

    invoke-virtual {v1, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v5, v5, Lcom/sun/java_cup/internal/runtime/Symbol;->left:I

    invoke-virtual {v1, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v5, v5, Lcom/sun/java_cup/internal/runtime/Symbol;->right:I

    invoke-virtual {v1, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget-object v5, v5, Lcom/sun/java_cup/internal/runtime/Symbol;->value:Ljava/lang/Object;

    check-cast v5, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    new-instance v6, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/BinOpExpr;

    invoke-direct {v6, v11, v2, v5}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/BinOpExpr;-><init>(ILcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;)V

    new-instance v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v0, v0, Lcom/sun/java_cup/internal/runtime/Symbol;->left:I

    invoke-virtual {v1, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v1, v1, Lcom/sun/java_cup/internal/runtime/Symbol;->right:I

    invoke-direct {v2, v3, v0, v1, v6}, Lcom/sun/java_cup/internal/runtime/Symbol;-><init>(IIILjava/lang/Object;)V

    return-object v2

    :pswitch_58
    add-int/lit8 v0, p4, 0x0

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v2, v2, Lcom/sun/java_cup/internal/runtime/Symbol;->left:I

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v2, v2, Lcom/sun/java_cup/internal/runtime/Symbol;->right:I

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget-object v2, v2, Lcom/sun/java_cup/internal/runtime/Symbol;->value:Ljava/lang/Object;

    check-cast v2, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    new-instance v4, Lcom/sun/java_cup/internal/runtime/Symbol;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v5, v5, Lcom/sun/java_cup/internal/runtime/Symbol;->left:I

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v0, v0, Lcom/sun/java_cup/internal/runtime/Symbol;->right:I

    invoke-direct {v4, v3, v5, v0, v2}, Lcom/sun/java_cup/internal/runtime/Symbol;-><init>(IIILjava/lang/Object;)V

    return-object v4

    :pswitch_59
    add-int/lit8 v0, p4, -0x2

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v2, v2, Lcom/sun/java_cup/internal/runtime/Symbol;->left:I

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v2, v2, Lcom/sun/java_cup/internal/runtime/Symbol;->right:I

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget-object v2, v2, Lcom/sun/java_cup/internal/runtime/Symbol;->value:Ljava/lang/Object;

    check-cast v2, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    add-int/lit8 v3, p4, 0x0

    invoke-virtual {v1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v4, v4, Lcom/sun/java_cup/internal/runtime/Symbol;->left:I

    invoke-virtual {v1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v4, v4, Lcom/sun/java_cup/internal/runtime/Symbol;->right:I

    invoke-virtual {v1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget-object v4, v4, Lcom/sun/java_cup/internal/runtime/Symbol;->value:Ljava/lang/Object;

    check-cast v4, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    new-instance v5, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/RelationalExpr;

    const/4 v6, 0x4

    invoke-direct {v5, v6, v2, v4}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/RelationalExpr;-><init>(ILcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;)V

    new-instance v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v0, v0, Lcom/sun/java_cup/internal/runtime/Symbol;->left:I

    invoke-virtual {v1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v1, v1, Lcom/sun/java_cup/internal/runtime/Symbol;->right:I

    const/16 v3, 0xb

    invoke-direct {v2, v3, v0, v1, v5}, Lcom/sun/java_cup/internal/runtime/Symbol;-><init>(IIILjava/lang/Object;)V

    return-object v2

    :pswitch_5a
    add-int/lit8 v0, p4, -0x2

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v2, v2, Lcom/sun/java_cup/internal/runtime/Symbol;->left:I

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v2, v2, Lcom/sun/java_cup/internal/runtime/Symbol;->right:I

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget-object v2, v2, Lcom/sun/java_cup/internal/runtime/Symbol;->value:Ljava/lang/Object;

    check-cast v2, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    add-int/lit8 v3, p4, 0x0

    invoke-virtual {v1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v4, v4, Lcom/sun/java_cup/internal/runtime/Symbol;->left:I

    invoke-virtual {v1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v4, v4, Lcom/sun/java_cup/internal/runtime/Symbol;->right:I

    invoke-virtual {v1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget-object v4, v4, Lcom/sun/java_cup/internal/runtime/Symbol;->value:Ljava/lang/Object;

    check-cast v4, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    new-instance v5, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/RelationalExpr;

    const/4 v6, 0x5

    invoke-direct {v5, v6, v2, v4}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/RelationalExpr;-><init>(ILcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;)V

    new-instance v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v0, v0, Lcom/sun/java_cup/internal/runtime/Symbol;->left:I

    invoke-virtual {v1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v1, v1, Lcom/sun/java_cup/internal/runtime/Symbol;->right:I

    const/16 v3, 0xb

    invoke-direct {v2, v3, v0, v1, v5}, Lcom/sun/java_cup/internal/runtime/Symbol;-><init>(IIILjava/lang/Object;)V

    return-object v2

    :pswitch_5b
    add-int/lit8 v0, p4, -0x2

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v2, v2, Lcom/sun/java_cup/internal/runtime/Symbol;->left:I

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v2, v2, Lcom/sun/java_cup/internal/runtime/Symbol;->right:I

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget-object v2, v2, Lcom/sun/java_cup/internal/runtime/Symbol;->value:Ljava/lang/Object;

    check-cast v2, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    add-int/lit8 v3, p4, 0x0

    invoke-virtual {v1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v4, v4, Lcom/sun/java_cup/internal/runtime/Symbol;->left:I

    invoke-virtual {v1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v4, v4, Lcom/sun/java_cup/internal/runtime/Symbol;->right:I

    invoke-virtual {v1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget-object v4, v4, Lcom/sun/java_cup/internal/runtime/Symbol;->value:Ljava/lang/Object;

    check-cast v4, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    new-instance v5, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/RelationalExpr;

    const/4 v6, 0x2

    invoke-direct {v5, v6, v2, v4}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/RelationalExpr;-><init>(ILcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;)V

    new-instance v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v0, v0, Lcom/sun/java_cup/internal/runtime/Symbol;->left:I

    invoke-virtual {v1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v1, v1, Lcom/sun/java_cup/internal/runtime/Symbol;->right:I

    const/16 v3, 0xb

    invoke-direct {v2, v3, v0, v1, v5}, Lcom/sun/java_cup/internal/runtime/Symbol;-><init>(IIILjava/lang/Object;)V

    return-object v2

    :pswitch_5c
    add-int/lit8 v0, p4, -0x2

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v2, v2, Lcom/sun/java_cup/internal/runtime/Symbol;->left:I

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v2, v2, Lcom/sun/java_cup/internal/runtime/Symbol;->right:I

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget-object v2, v2, Lcom/sun/java_cup/internal/runtime/Symbol;->value:Ljava/lang/Object;

    check-cast v2, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    add-int/lit8 v3, p4, 0x0

    invoke-virtual {v1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v4, v4, Lcom/sun/java_cup/internal/runtime/Symbol;->left:I

    invoke-virtual {v1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v4, v4, Lcom/sun/java_cup/internal/runtime/Symbol;->right:I

    invoke-virtual {v1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget-object v4, v4, Lcom/sun/java_cup/internal/runtime/Symbol;->value:Ljava/lang/Object;

    check-cast v4, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    new-instance v5, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/RelationalExpr;

    invoke-direct {v5, v10, v2, v4}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/RelationalExpr;-><init>(ILcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;)V

    new-instance v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v0, v0, Lcom/sun/java_cup/internal/runtime/Symbol;->left:I

    invoke-virtual {v1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v1, v1, Lcom/sun/java_cup/internal/runtime/Symbol;->right:I

    const/16 v3, 0xb

    invoke-direct {v2, v3, v0, v1, v5}, Lcom/sun/java_cup/internal/runtime/Symbol;-><init>(IIILjava/lang/Object;)V

    return-object v2

    :pswitch_5d
    add-int/lit8 v0, p4, 0x0

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v2, v2, Lcom/sun/java_cup/internal/runtime/Symbol;->left:I

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v2, v2, Lcom/sun/java_cup/internal/runtime/Symbol;->right:I

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget-object v2, v2, Lcom/sun/java_cup/internal/runtime/Symbol;->value:Ljava/lang/Object;

    check-cast v2, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    new-instance v3, Lcom/sun/java_cup/internal/runtime/Symbol;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v4, v4, Lcom/sun/java_cup/internal/runtime/Symbol;->left:I

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v0, v0, Lcom/sun/java_cup/internal/runtime/Symbol;->right:I

    const/16 v1, 0xb

    invoke-direct {v3, v1, v4, v0, v2}, Lcom/sun/java_cup/internal/runtime/Symbol;-><init>(IIILjava/lang/Object;)V

    return-object v3

    :pswitch_5e
    add-int/lit8 v0, p4, -0x2

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v2, v2, Lcom/sun/java_cup/internal/runtime/Symbol;->left:I

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v2, v2, Lcom/sun/java_cup/internal/runtime/Symbol;->right:I

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget-object v2, v2, Lcom/sun/java_cup/internal/runtime/Symbol;->value:Ljava/lang/Object;

    check-cast v2, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    add-int/lit8 v3, p4, 0x0

    invoke-virtual {v1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v4, v4, Lcom/sun/java_cup/internal/runtime/Symbol;->left:I

    invoke-virtual {v1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v4, v4, Lcom/sun/java_cup/internal/runtime/Symbol;->right:I

    invoke-virtual {v1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget-object v4, v4, Lcom/sun/java_cup/internal/runtime/Symbol;->value:Ljava/lang/Object;

    check-cast v4, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    new-instance v6, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/EqualityExpr;

    invoke-direct {v6, v13, v2, v4}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/EqualityExpr;-><init>(ILcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;)V

    new-instance v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v0, v0, Lcom/sun/java_cup/internal/runtime/Symbol;->left:I

    invoke-virtual {v1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v1, v1, Lcom/sun/java_cup/internal/runtime/Symbol;->right:I

    invoke-direct {v2, v5, v0, v1, v6}, Lcom/sun/java_cup/internal/runtime/Symbol;-><init>(IIILjava/lang/Object;)V

    return-object v2

    :pswitch_5f
    add-int/lit8 v0, p4, -0x2

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v2, v2, Lcom/sun/java_cup/internal/runtime/Symbol;->left:I

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v2, v2, Lcom/sun/java_cup/internal/runtime/Symbol;->right:I

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget-object v2, v2, Lcom/sun/java_cup/internal/runtime/Symbol;->value:Ljava/lang/Object;

    check-cast v2, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    add-int/lit8 v3, p4, 0x0

    invoke-virtual {v1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v4, v4, Lcom/sun/java_cup/internal/runtime/Symbol;->left:I

    invoke-virtual {v1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v4, v4, Lcom/sun/java_cup/internal/runtime/Symbol;->right:I

    invoke-virtual {v1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget-object v4, v4, Lcom/sun/java_cup/internal/runtime/Symbol;->value:Ljava/lang/Object;

    check-cast v4, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    new-instance v6, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/EqualityExpr;

    invoke-direct {v6, v11, v2, v4}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/EqualityExpr;-><init>(ILcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;)V

    new-instance v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v0, v0, Lcom/sun/java_cup/internal/runtime/Symbol;->left:I

    invoke-virtual {v1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v1, v1, Lcom/sun/java_cup/internal/runtime/Symbol;->right:I

    invoke-direct {v2, v5, v0, v1, v6}, Lcom/sun/java_cup/internal/runtime/Symbol;-><init>(IIILjava/lang/Object;)V

    return-object v2

    :pswitch_60
    add-int/lit8 v0, p4, 0x0

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v2, v2, Lcom/sun/java_cup/internal/runtime/Symbol;->left:I

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v2, v2, Lcom/sun/java_cup/internal/runtime/Symbol;->right:I

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget-object v2, v2, Lcom/sun/java_cup/internal/runtime/Symbol;->value:Ljava/lang/Object;

    check-cast v2, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    new-instance v3, Lcom/sun/java_cup/internal/runtime/Symbol;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v4, v4, Lcom/sun/java_cup/internal/runtime/Symbol;->left:I

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v0, v0, Lcom/sun/java_cup/internal/runtime/Symbol;->right:I

    invoke-direct {v3, v5, v4, v0, v2}, Lcom/sun/java_cup/internal/runtime/Symbol;-><init>(IIILjava/lang/Object;)V

    return-object v3

    :pswitch_61
    add-int/lit8 v0, p4, -0x2

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v2, v2, Lcom/sun/java_cup/internal/runtime/Symbol;->left:I

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v2, v2, Lcom/sun/java_cup/internal/runtime/Symbol;->right:I

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget-object v2, v2, Lcom/sun/java_cup/internal/runtime/Symbol;->value:Ljava/lang/Object;

    check-cast v2, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    add-int/lit8 v3, p4, 0x0

    invoke-virtual {v1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v4, v4, Lcom/sun/java_cup/internal/runtime/Symbol;->left:I

    invoke-virtual {v1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v4, v4, Lcom/sun/java_cup/internal/runtime/Symbol;->right:I

    invoke-virtual {v1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget-object v4, v4, Lcom/sun/java_cup/internal/runtime/Symbol;->value:Ljava/lang/Object;

    check-cast v4, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    new-instance v5, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/LogicalExpr;

    invoke-direct {v5, v13, v2, v4}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/LogicalExpr;-><init>(ILcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;)V

    new-instance v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v0, v0, Lcom/sun/java_cup/internal/runtime/Symbol;->left:I

    invoke-virtual {v1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v1, v1, Lcom/sun/java_cup/internal/runtime/Symbol;->right:I

    const/16 v3, 0x9

    invoke-direct {v2, v3, v0, v1, v5}, Lcom/sun/java_cup/internal/runtime/Symbol;-><init>(IIILjava/lang/Object;)V

    return-object v2

    :pswitch_62
    add-int/lit8 v0, p4, 0x0

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v2, v2, Lcom/sun/java_cup/internal/runtime/Symbol;->left:I

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v2, v2, Lcom/sun/java_cup/internal/runtime/Symbol;->right:I

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget-object v2, v2, Lcom/sun/java_cup/internal/runtime/Symbol;->value:Ljava/lang/Object;

    check-cast v2, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    new-instance v3, Lcom/sun/java_cup/internal/runtime/Symbol;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v4, v4, Lcom/sun/java_cup/internal/runtime/Symbol;->left:I

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v0, v0, Lcom/sun/java_cup/internal/runtime/Symbol;->right:I

    const/16 v1, 0x9

    invoke-direct {v3, v1, v4, v0, v2}, Lcom/sun/java_cup/internal/runtime/Symbol;-><init>(IIILjava/lang/Object;)V

    return-object v3

    :pswitch_63
    add-int/lit8 v0, p4, -0x2

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v2, v2, Lcom/sun/java_cup/internal/runtime/Symbol;->left:I

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v2, v2, Lcom/sun/java_cup/internal/runtime/Symbol;->right:I

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget-object v2, v2, Lcom/sun/java_cup/internal/runtime/Symbol;->value:Ljava/lang/Object;

    check-cast v2, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    add-int/lit8 v3, p4, 0x0

    invoke-virtual {v1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v5, v5, Lcom/sun/java_cup/internal/runtime/Symbol;->left:I

    invoke-virtual {v1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v5, v5, Lcom/sun/java_cup/internal/runtime/Symbol;->right:I

    invoke-virtual {v1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget-object v5, v5, Lcom/sun/java_cup/internal/runtime/Symbol;->value:Ljava/lang/Object;

    check-cast v5, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    new-instance v6, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/LogicalExpr;

    invoke-direct {v6, v11, v2, v5}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/LogicalExpr;-><init>(ILcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;)V

    new-instance v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v0, v0, Lcom/sun/java_cup/internal/runtime/Symbol;->left:I

    invoke-virtual {v1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v1, v1, Lcom/sun/java_cup/internal/runtime/Symbol;->right:I

    invoke-direct {v2, v4, v0, v1, v6}, Lcom/sun/java_cup/internal/runtime/Symbol;-><init>(IIILjava/lang/Object;)V

    return-object v2

    :pswitch_64
    add-int/lit8 v0, p4, 0x0

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v2, v2, Lcom/sun/java_cup/internal/runtime/Symbol;->left:I

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v2, v2, Lcom/sun/java_cup/internal/runtime/Symbol;->right:I

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget-object v2, v2, Lcom/sun/java_cup/internal/runtime/Symbol;->value:Ljava/lang/Object;

    check-cast v2, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    new-instance v3, Lcom/sun/java_cup/internal/runtime/Symbol;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v5, v5, Lcom/sun/java_cup/internal/runtime/Symbol;->left:I

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v0, v0, Lcom/sun/java_cup/internal/runtime/Symbol;->right:I

    invoke-direct {v3, v4, v5, v0, v2}, Lcom/sun/java_cup/internal/runtime/Symbol;-><init>(IIILjava/lang/Object;)V

    return-object v3

    :pswitch_65
    add-int/lit8 v0, p4, 0x0

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v2, v2, Lcom/sun/java_cup/internal/runtime/Symbol;->left:I

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v2, v2, Lcom/sun/java_cup/internal/runtime/Symbol;->right:I

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget-object v2, v2, Lcom/sun/java_cup/internal/runtime/Symbol;->value:Ljava/lang/Object;

    check-cast v2, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    new-instance v3, Lcom/sun/java_cup/internal/runtime/Symbol;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v4, v4, Lcom/sun/java_cup/internal/runtime/Symbol;->left:I

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v0, v0, Lcom/sun/java_cup/internal/runtime/Symbol;->right:I

    const/4 v1, 0x2

    invoke-direct {v3, v1, v4, v0, v2}, Lcom/sun/java_cup/internal/runtime/Symbol;-><init>(IIILjava/lang/Object;)V

    return-object v3

    :pswitch_66
    add-int/lit8 v0, p4, -0x1

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v2, v2, Lcom/sun/java_cup/internal/runtime/Symbol;->left:I

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v2, v2, Lcom/sun/java_cup/internal/runtime/Symbol;->right:I

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget-object v0, v0, Lcom/sun/java_cup/internal/runtime/Symbol;->value:Ljava/lang/Object;

    check-cast v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    new-instance v2, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Predicate;

    invoke-direct {v2, v0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Predicate;-><init>(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;)V

    new-instance v0, Lcom/sun/java_cup/internal/runtime/Symbol;

    add-int/lit8 v3, p4, -0x2

    invoke-virtual {v1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v3, v3, Lcom/sun/java_cup/internal/runtime/Symbol;->left:I

    add-int/lit8 v4, p4, 0x0

    invoke-virtual {v1, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v1, v1, Lcom/sun/java_cup/internal/runtime/Symbol;->right:I

    const/4 v4, 0x5

    invoke-direct {v0, v4, v3, v1, v2}, Lcom/sun/java_cup/internal/runtime/Symbol;-><init>(IIILjava/lang/Object;)V

    return-object v0

    :pswitch_67
    add-int/lit8 v0, p4, -0x1

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v2, v2, Lcom/sun/java_cup/internal/runtime/Symbol;->left:I

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v2, v2, Lcom/sun/java_cup/internal/runtime/Symbol;->right:I

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget-object v2, v2, Lcom/sun/java_cup/internal/runtime/Symbol;->value:Ljava/lang/Object;

    check-cast v2, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    add-int/lit8 v3, p4, 0x0

    invoke-virtual {v1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v4, v4, Lcom/sun/java_cup/internal/runtime/Symbol;->left:I

    invoke-virtual {v1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v4, v4, Lcom/sun/java_cup/internal/runtime/Symbol;->right:I

    invoke-virtual {v1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget-object v4, v4, Lcom/sun/java_cup/internal/runtime/Symbol;->value:Ljava/lang/Object;

    check-cast v4, Ljava/util/Vector;

    invoke-virtual {v4, v2, v11}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    new-instance v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v0, v0, Lcom/sun/java_cup/internal/runtime/Symbol;->left:I

    invoke-virtual {v1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v1, v1, Lcom/sun/java_cup/internal/runtime/Symbol;->right:I

    const/16 v3, 0x23

    invoke-direct {v2, v3, v0, v1, v4}, Lcom/sun/java_cup/internal/runtime/Symbol;-><init>(IIILjava/lang/Object;)V

    return-object v2

    :pswitch_68
    add-int/lit8 v0, p4, 0x0

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v2, v2, Lcom/sun/java_cup/internal/runtime/Symbol;->left:I

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v2, v2, Lcom/sun/java_cup/internal/runtime/Symbol;->right:I

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget-object v2, v2, Lcom/sun/java_cup/internal/runtime/Symbol;->value:Ljava/lang/Object;

    check-cast v2, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    invoke-virtual {v3, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    new-instance v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v4, v4, Lcom/sun/java_cup/internal/runtime/Symbol;->left:I

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v0, v0, Lcom/sun/java_cup/internal/runtime/Symbol;->right:I

    const/16 v1, 0x23

    invoke-direct {v2, v1, v4, v0, v3}, Lcom/sun/java_cup/internal/runtime/Symbol;-><init>(IIILjava/lang/Object;)V

    return-object v2

    :pswitch_69
    new-instance v0, Ljava/lang/Integer;

    const/4 v2, 0x2

    invoke-direct {v0, v2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    add-int/lit8 v3, p4, -0x1

    invoke-virtual {v1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v3, v3, Lcom/sun/java_cup/internal/runtime/Symbol;->left:I

    add-int/lit8 v4, p4, 0x0

    invoke-virtual {v1, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v1, v1, Lcom/sun/java_cup/internal/runtime/Symbol;->right:I

    const/16 v4, 0x2a

    invoke-direct {v2, v4, v3, v1, v0}, Lcom/sun/java_cup/internal/runtime/Symbol;-><init>(IIILjava/lang/Object;)V

    return-object v2

    :pswitch_6a
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, v10}, Ljava/lang/Integer;-><init>(I)V

    new-instance v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    add-int/lit8 v3, p4, -0x1

    invoke-virtual {v1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v3, v3, Lcom/sun/java_cup/internal/runtime/Symbol;->left:I

    add-int/lit8 v4, p4, 0x0

    invoke-virtual {v1, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v1, v1, Lcom/sun/java_cup/internal/runtime/Symbol;->right:I

    const/16 v4, 0x2a

    invoke-direct {v2, v4, v3, v1, v0}, Lcom/sun/java_cup/internal/runtime/Symbol;-><init>(IIILjava/lang/Object;)V

    return-object v2

    :pswitch_6b
    new-instance v0, Ljava/lang/Integer;

    const/4 v2, 0x2

    invoke-direct {v0, v2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    add-int/lit8 v3, p4, 0x0

    invoke-virtual {v1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v4, v4, Lcom/sun/java_cup/internal/runtime/Symbol;->left:I

    invoke-virtual {v1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v1, v1, Lcom/sun/java_cup/internal/runtime/Symbol;->right:I

    const/16 v3, 0x2a

    invoke-direct {v2, v3, v4, v1, v0}, Lcom/sun/java_cup/internal/runtime/Symbol;-><init>(IIILjava/lang/Object;)V

    return-object v2

    :pswitch_6c
    add-int/lit8 v0, p4, 0x0

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v2, v2, Lcom/sun/java_cup/internal/runtime/Symbol;->left:I

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v2, v2, Lcom/sun/java_cup/internal/runtime/Symbol;->right:I

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget-object v2, v2, Lcom/sun/java_cup/internal/runtime/Symbol;->value:Ljava/lang/Object;

    check-cast v2, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;

    new-instance v3, Lcom/sun/java_cup/internal/runtime/Symbol;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v4, v4, Lcom/sun/java_cup/internal/runtime/Symbol;->left:I

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v0, v0, Lcom/sun/java_cup/internal/runtime/Symbol;->right:I

    const/16 v1, 0x22

    invoke-direct {v3, v1, v4, v0, v2}, Lcom/sun/java_cup/internal/runtime/Symbol;-><init>(IIILjava/lang/Object;)V

    return-object v3

    :pswitch_6d
    new-instance v0, Lcom/sun/java_cup/internal/runtime/Symbol;

    add-int/lit8 v2, p4, 0x0

    invoke-virtual {v1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v3, v3, Lcom/sun/java_cup/internal/runtime/Symbol;->left:I

    invoke-virtual {v1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v1, v1, Lcom/sun/java_cup/internal/runtime/Symbol;->right:I

    const/16 v2, 0x22

    invoke-direct {v0, v2, v3, v1, v6}, Lcom/sun/java_cup/internal/runtime/Symbol;-><init>(IIILjava/lang/Object;)V

    return-object v0

    :pswitch_6e
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, v15}, Ljava/lang/Integer;-><init>(I)V

    new-instance v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    add-int/lit8 v3, p4, 0x0

    invoke-virtual {v1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v4, v4, Lcom/sun/java_cup/internal/runtime/Symbol;->left:I

    invoke-virtual {v1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v1, v1, Lcom/sun/java_cup/internal/runtime/Symbol;->right:I

    const/16 v3, 0x21

    invoke-direct {v2, v3, v4, v1, v0}, Lcom/sun/java_cup/internal/runtime/Symbol;-><init>(IIILjava/lang/Object;)V

    return-object v2

    :pswitch_6f
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, v4}, Ljava/lang/Integer;-><init>(I)V

    new-instance v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    add-int/lit8 v3, p4, 0x0

    invoke-virtual {v1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v4, v4, Lcom/sun/java_cup/internal/runtime/Symbol;->left:I

    invoke-virtual {v1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v1, v1, Lcom/sun/java_cup/internal/runtime/Symbol;->right:I

    const/16 v3, 0x21

    invoke-direct {v2, v3, v4, v1, v0}, Lcom/sun/java_cup/internal/runtime/Symbol;-><init>(IIILjava/lang/Object;)V

    return-object v2

    :pswitch_70
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, v10}, Ljava/lang/Integer;-><init>(I)V

    new-instance v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    add-int/lit8 v3, p4, 0x0

    invoke-virtual {v1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v4, v4, Lcom/sun/java_cup/internal/runtime/Symbol;->left:I

    invoke-virtual {v1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v1, v1, Lcom/sun/java_cup/internal/runtime/Symbol;->right:I

    const/16 v3, 0x21

    invoke-direct {v2, v3, v4, v1, v0}, Lcom/sun/java_cup/internal/runtime/Symbol;-><init>(IIILjava/lang/Object;)V

    return-object v2

    :pswitch_71
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, v12}, Ljava/lang/Integer;-><init>(I)V

    new-instance v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    add-int/lit8 v3, p4, 0x0

    invoke-virtual {v1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v4, v4, Lcom/sun/java_cup/internal/runtime/Symbol;->left:I

    invoke-virtual {v1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v1, v1, Lcom/sun/java_cup/internal/runtime/Symbol;->right:I

    const/16 v3, 0x21

    invoke-direct {v2, v3, v4, v1, v0}, Lcom/sun/java_cup/internal/runtime/Symbol;-><init>(IIILjava/lang/Object;)V

    return-object v2

    :pswitch_72
    add-int/lit8 v0, p4, 0x0

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v2, v2, Lcom/sun/java_cup/internal/runtime/Symbol;->left:I

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v2, v2, Lcom/sun/java_cup/internal/runtime/Symbol;->right:I

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget-object v2, v2, Lcom/sun/java_cup/internal/runtime/Symbol;->value:Ljava/lang/Object;

    new-instance v3, Lcom/sun/java_cup/internal/runtime/Symbol;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v4, v4, Lcom/sun/java_cup/internal/runtime/Symbol;->left:I

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v0, v0, Lcom/sun/java_cup/internal/runtime/Symbol;->right:I

    const/16 v1, 0x21

    invoke-direct {v3, v1, v4, v0, v2}, Lcom/sun/java_cup/internal/runtime/Symbol;-><init>(IIILjava/lang/Object;)V

    return-object v3

    :pswitch_73
    add-int/lit8 v0, p4, -0x2

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v2, v2, Lcom/sun/java_cup/internal/runtime/Symbol;->left:I

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v2, v2, Lcom/sun/java_cup/internal/runtime/Symbol;->right:I

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget-object v2, v2, Lcom/sun/java_cup/internal/runtime/Symbol;->value:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    add-int/lit8 v2, p4, -0x1

    invoke-virtual {v1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v3, v3, Lcom/sun/java_cup/internal/runtime/Symbol;->left:I

    invoke-virtual {v1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v3, v3, Lcom/sun/java_cup/internal/runtime/Symbol;->right:I

    invoke-virtual {v1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget-object v2, v2, Lcom/sun/java_cup/internal/runtime/Symbol;->value:Ljava/lang/Object;

    check-cast v2, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/StepPattern;

    add-int/lit8 v3, p4, 0x0

    invoke-virtual {v1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v4, v4, Lcom/sun/java_cup/internal/runtime/Symbol;->left:I

    invoke-virtual {v1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v4, v4, Lcom/sun/java_cup/internal/runtime/Symbol;->right:I

    invoke-virtual {v1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget-object v4, v4, Lcom/sun/java_cup/internal/runtime/Symbol;->value:Ljava/lang/Object;

    check-cast v4, Ljava/util/Vector;

    invoke-virtual {v2, v4}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/StepPattern;->setPredicates(Ljava/util/Vector;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/StepPattern;

    move-result-object v2

    check-cast v2, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/ProcessingInstructionPattern;

    new-instance v4, Lcom/sun/java_cup/internal/runtime/Symbol;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v0, v0, Lcom/sun/java_cup/internal/runtime/Symbol;->left:I

    invoke-virtual {v1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v1, v1, Lcom/sun/java_cup/internal/runtime/Symbol;->right:I

    const/16 v3, 0x20

    invoke-direct {v4, v3, v0, v1, v2}, Lcom/sun/java_cup/internal/runtime/Symbol;-><init>(IIILjava/lang/Object;)V

    return-object v4

    :pswitch_74
    add-int/lit8 v0, p4, -0x1

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v2, v2, Lcom/sun/java_cup/internal/runtime/Symbol;->left:I

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v2, v2, Lcom/sun/java_cup/internal/runtime/Symbol;->right:I

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget-object v2, v2, Lcom/sun/java_cup/internal/runtime/Symbol;->value:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    add-int/lit8 v2, p4, 0x0

    invoke-virtual {v1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v3, v3, Lcom/sun/java_cup/internal/runtime/Symbol;->left:I

    invoke-virtual {v1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v3, v3, Lcom/sun/java_cup/internal/runtime/Symbol;->right:I

    invoke-virtual {v1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget-object v3, v3, Lcom/sun/java_cup/internal/runtime/Symbol;->value:Ljava/lang/Object;

    check-cast v3, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/StepPattern;

    new-instance v4, Lcom/sun/java_cup/internal/runtime/Symbol;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v0, v0, Lcom/sun/java_cup/internal/runtime/Symbol;->left:I

    invoke-virtual {v1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v1, v1, Lcom/sun/java_cup/internal/runtime/Symbol;->right:I

    const/16 v2, 0x20

    invoke-direct {v4, v2, v0, v1, v3}, Lcom/sun/java_cup/internal/runtime/Symbol;-><init>(IIILjava/lang/Object;)V

    return-object v4

    :pswitch_75
    add-int/lit8 v2, p4, -0x2

    invoke-virtual {v1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v3, v3, Lcom/sun/java_cup/internal/runtime/Symbol;->left:I

    invoke-virtual {v1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v3, v3, Lcom/sun/java_cup/internal/runtime/Symbol;->right:I

    invoke-virtual {v1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget-object v3, v3, Lcom/sun/java_cup/internal/runtime/Symbol;->value:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    add-int/lit8 v4, p4, -0x1

    invoke-virtual {v1, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v5, v5, Lcom/sun/java_cup/internal/runtime/Symbol;->left:I

    invoke-virtual {v1, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v5, v5, Lcom/sun/java_cup/internal/runtime/Symbol;->right:I

    invoke-virtual {v1, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget-object v4, v4, Lcom/sun/java_cup/internal/runtime/Symbol;->value:Ljava/lang/Object;

    add-int/lit8 v5, p4, 0x0

    invoke-virtual {v1, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v6, v6, Lcom/sun/java_cup/internal/runtime/Symbol;->left:I

    invoke-virtual {v1, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v6, v6, Lcom/sun/java_cup/internal/runtime/Symbol;->right:I

    invoke-virtual {v1, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget-object v6, v6, Lcom/sun/java_cup/internal/runtime/Symbol;->value:Ljava/lang/Object;

    check-cast v6, Ljava/util/Vector;

    iget-object v0, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/CUP$XPathParser$actions;->parser:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XPathParser;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v0, v3, v4, v6}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XPathParser;->createStepPattern(ILjava/lang/Object;Ljava/util/Vector;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/StepPattern;

    move-result-object v0

    new-instance v3, Lcom/sun/java_cup/internal/runtime/Symbol;

    invoke-virtual {v1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v2, v2, Lcom/sun/java_cup/internal/runtime/Symbol;->left:I

    invoke-virtual {v1, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v1, v1, Lcom/sun/java_cup/internal/runtime/Symbol;->right:I

    const/16 v4, 0x20

    invoke-direct {v3, v4, v2, v1, v0}, Lcom/sun/java_cup/internal/runtime/Symbol;-><init>(IIILjava/lang/Object;)V

    return-object v3

    :pswitch_76
    add-int/lit8 v2, p4, -0x1

    invoke-virtual {v1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v3, v3, Lcom/sun/java_cup/internal/runtime/Symbol;->left:I

    invoke-virtual {v1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v3, v3, Lcom/sun/java_cup/internal/runtime/Symbol;->right:I

    invoke-virtual {v1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget-object v3, v3, Lcom/sun/java_cup/internal/runtime/Symbol;->value:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    add-int/lit8 v4, p4, 0x0

    invoke-virtual {v1, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v5, v5, Lcom/sun/java_cup/internal/runtime/Symbol;->left:I

    invoke-virtual {v1, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v5, v5, Lcom/sun/java_cup/internal/runtime/Symbol;->right:I

    invoke-virtual {v1, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget-object v5, v5, Lcom/sun/java_cup/internal/runtime/Symbol;->value:Ljava/lang/Object;

    iget-object v0, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/CUP$XPathParser$actions;->parser:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XPathParser;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v0, v3, v5, v6}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XPathParser;->createStepPattern(ILjava/lang/Object;Ljava/util/Vector;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/StepPattern;

    move-result-object v0

    new-instance v3, Lcom/sun/java_cup/internal/runtime/Symbol;

    invoke-virtual {v1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v2, v2, Lcom/sun/java_cup/internal/runtime/Symbol;->left:I

    invoke-virtual {v1, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v1, v1, Lcom/sun/java_cup/internal/runtime/Symbol;->right:I

    const/16 v4, 0x20

    invoke-direct {v3, v4, v2, v1, v0}, Lcom/sun/java_cup/internal/runtime/Symbol;-><init>(IIILjava/lang/Object;)V

    return-object v3

    :pswitch_77
    add-int/lit8 v0, p4, -0x1

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v2, v2, Lcom/sun/java_cup/internal/runtime/Symbol;->left:I

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v2, v2, Lcom/sun/java_cup/internal/runtime/Symbol;->right:I

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget-object v2, v2, Lcom/sun/java_cup/internal/runtime/Symbol;->value:Ljava/lang/Object;

    check-cast v2, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/StepPattern;

    add-int/lit8 v3, p4, 0x0

    invoke-virtual {v1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v4, v4, Lcom/sun/java_cup/internal/runtime/Symbol;->left:I

    invoke-virtual {v1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v4, v4, Lcom/sun/java_cup/internal/runtime/Symbol;->right:I

    invoke-virtual {v1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget-object v4, v4, Lcom/sun/java_cup/internal/runtime/Symbol;->value:Ljava/lang/Object;

    check-cast v4, Ljava/util/Vector;

    invoke-virtual {v2, v4}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/StepPattern;->setPredicates(Ljava/util/Vector;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/StepPattern;

    move-result-object v2

    check-cast v2, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/ProcessingInstructionPattern;

    new-instance v4, Lcom/sun/java_cup/internal/runtime/Symbol;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v0, v0, Lcom/sun/java_cup/internal/runtime/Symbol;->left:I

    invoke-virtual {v1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v1, v1, Lcom/sun/java_cup/internal/runtime/Symbol;->right:I

    const/16 v3, 0x20

    invoke-direct {v4, v3, v0, v1, v2}, Lcom/sun/java_cup/internal/runtime/Symbol;-><init>(IIILjava/lang/Object;)V

    return-object v4

    :pswitch_78
    add-int/lit8 v0, p4, 0x0

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v2, v2, Lcom/sun/java_cup/internal/runtime/Symbol;->left:I

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v2, v2, Lcom/sun/java_cup/internal/runtime/Symbol;->right:I

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget-object v2, v2, Lcom/sun/java_cup/internal/runtime/Symbol;->value:Ljava/lang/Object;

    check-cast v2, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/StepPattern;

    new-instance v3, Lcom/sun/java_cup/internal/runtime/Symbol;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v4, v4, Lcom/sun/java_cup/internal/runtime/Symbol;->left:I

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v0, v0, Lcom/sun/java_cup/internal/runtime/Symbol;->right:I

    const/16 v1, 0x20

    invoke-direct {v3, v1, v4, v0, v2}, Lcom/sun/java_cup/internal/runtime/Symbol;-><init>(IIILjava/lang/Object;)V

    return-object v3

    :pswitch_79
    add-int/lit8 v2, p4, -0x1

    invoke-virtual {v1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v3, v3, Lcom/sun/java_cup/internal/runtime/Symbol;->left:I

    invoke-virtual {v1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v3, v3, Lcom/sun/java_cup/internal/runtime/Symbol;->right:I

    invoke-virtual {v1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget-object v3, v3, Lcom/sun/java_cup/internal/runtime/Symbol;->value:Ljava/lang/Object;

    add-int/lit8 v4, p4, 0x0

    invoke-virtual {v1, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v5, v5, Lcom/sun/java_cup/internal/runtime/Symbol;->left:I

    invoke-virtual {v1, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v5, v5, Lcom/sun/java_cup/internal/runtime/Symbol;->right:I

    invoke-virtual {v1, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget-object v5, v5, Lcom/sun/java_cup/internal/runtime/Symbol;->value:Ljava/lang/Object;

    check-cast v5, Ljava/util/Vector;

    iget-object v0, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/CUP$XPathParser$actions;->parser:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XPathParser;

    invoke-virtual {v0, v10, v3, v5}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XPathParser;->createStepPattern(ILjava/lang/Object;Ljava/util/Vector;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/StepPattern;

    move-result-object v0

    new-instance v3, Lcom/sun/java_cup/internal/runtime/Symbol;

    invoke-virtual {v1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v2, v2, Lcom/sun/java_cup/internal/runtime/Symbol;->left:I

    invoke-virtual {v1, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v1, v1, Lcom/sun/java_cup/internal/runtime/Symbol;->right:I

    const/16 v4, 0x20

    invoke-direct {v3, v4, v2, v1, v0}, Lcom/sun/java_cup/internal/runtime/Symbol;-><init>(IIILjava/lang/Object;)V

    return-object v3

    :pswitch_7a
    add-int/lit8 v2, p4, 0x0

    invoke-virtual {v1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v3, v3, Lcom/sun/java_cup/internal/runtime/Symbol;->left:I

    invoke-virtual {v1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v3, v3, Lcom/sun/java_cup/internal/runtime/Symbol;->right:I

    invoke-virtual {v1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget-object v3, v3, Lcom/sun/java_cup/internal/runtime/Symbol;->value:Ljava/lang/Object;

    iget-object v0, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/CUP$XPathParser$actions;->parser:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XPathParser;

    invoke-virtual {v0, v10, v3, v6}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XPathParser;->createStepPattern(ILjava/lang/Object;Ljava/util/Vector;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/StepPattern;

    move-result-object v0

    new-instance v3, Lcom/sun/java_cup/internal/runtime/Symbol;

    invoke-virtual {v1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v4, v4, Lcom/sun/java_cup/internal/runtime/Symbol;->left:I

    invoke-virtual {v1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v1, v1, Lcom/sun/java_cup/internal/runtime/Symbol;->right:I

    const/16 v2, 0x20

    invoke-direct {v3, v2, v4, v1, v0}, Lcom/sun/java_cup/internal/runtime/Symbol;-><init>(IIILjava/lang/Object;)V

    return-object v3

    :pswitch_7b
    add-int/lit8 v0, p4, -0x2

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v2, v2, Lcom/sun/java_cup/internal/runtime/Symbol;->left:I

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v2, v2, Lcom/sun/java_cup/internal/runtime/Symbol;->right:I

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget-object v2, v2, Lcom/sun/java_cup/internal/runtime/Symbol;->value:Ljava/lang/Object;

    check-cast v2, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/StepPattern;

    add-int/lit8 v3, p4, 0x0

    invoke-virtual {v1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v4, v4, Lcom/sun/java_cup/internal/runtime/Symbol;->left:I

    invoke-virtual {v1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v4, v4, Lcom/sun/java_cup/internal/runtime/Symbol;->right:I

    invoke-virtual {v1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget-object v4, v4, Lcom/sun/java_cup/internal/runtime/Symbol;->value:Ljava/lang/Object;

    check-cast v4, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/RelativePathPattern;

    new-instance v5, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/AncestorPattern;

    invoke-direct {v5, v2, v4}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/AncestorPattern;-><init>(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Pattern;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/RelativePathPattern;)V

    new-instance v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v0, v0, Lcom/sun/java_cup/internal/runtime/Symbol;->left:I

    invoke-virtual {v1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v1, v1, Lcom/sun/java_cup/internal/runtime/Symbol;->right:I

    const/16 v3, 0x1f

    invoke-direct {v2, v3, v0, v1, v5}, Lcom/sun/java_cup/internal/runtime/Symbol;-><init>(IIILjava/lang/Object;)V

    return-object v2

    :pswitch_7c
    add-int/lit8 v0, p4, -0x2

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v2, v2, Lcom/sun/java_cup/internal/runtime/Symbol;->left:I

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v2, v2, Lcom/sun/java_cup/internal/runtime/Symbol;->right:I

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget-object v2, v2, Lcom/sun/java_cup/internal/runtime/Symbol;->value:Ljava/lang/Object;

    check-cast v2, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/StepPattern;

    add-int/lit8 v3, p4, 0x0

    invoke-virtual {v1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v4, v4, Lcom/sun/java_cup/internal/runtime/Symbol;->left:I

    invoke-virtual {v1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v4, v4, Lcom/sun/java_cup/internal/runtime/Symbol;->right:I

    invoke-virtual {v1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget-object v4, v4, Lcom/sun/java_cup/internal/runtime/Symbol;->value:Ljava/lang/Object;

    check-cast v4, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/RelativePathPattern;

    new-instance v5, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/ParentPattern;

    invoke-direct {v5, v2, v4}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/ParentPattern;-><init>(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Pattern;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/RelativePathPattern;)V

    new-instance v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v0, v0, Lcom/sun/java_cup/internal/runtime/Symbol;->left:I

    invoke-virtual {v1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v1, v1, Lcom/sun/java_cup/internal/runtime/Symbol;->right:I

    const/16 v3, 0x1f

    invoke-direct {v2, v3, v0, v1, v5}, Lcom/sun/java_cup/internal/runtime/Symbol;-><init>(IIILjava/lang/Object;)V

    return-object v2

    :pswitch_7d
    add-int/lit8 v0, p4, 0x0

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v2, v2, Lcom/sun/java_cup/internal/runtime/Symbol;->left:I

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v2, v2, Lcom/sun/java_cup/internal/runtime/Symbol;->right:I

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget-object v2, v2, Lcom/sun/java_cup/internal/runtime/Symbol;->value:Ljava/lang/Object;

    check-cast v2, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/StepPattern;

    new-instance v3, Lcom/sun/java_cup/internal/runtime/Symbol;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v4, v4, Lcom/sun/java_cup/internal/runtime/Symbol;->left:I

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v0, v0, Lcom/sun/java_cup/internal/runtime/Symbol;->right:I

    const/16 v1, 0x1f

    invoke-direct {v3, v1, v4, v0, v2}, Lcom/sun/java_cup/internal/runtime/Symbol;-><init>(IIILjava/lang/Object;)V

    return-object v3

    :pswitch_7e
    add-int/lit8 v0, p4, -0x1

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v2, v2, Lcom/sun/java_cup/internal/runtime/Symbol;->left:I

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v2, v2, Lcom/sun/java_cup/internal/runtime/Symbol;->right:I

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget-object v0, v0, Lcom/sun/java_cup/internal/runtime/Symbol;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    new-instance v2, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/ProcessingInstructionPattern;

    invoke-direct {v2, v0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/ProcessingInstructionPattern;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/sun/java_cup/internal/runtime/Symbol;

    add-int/lit8 v3, p4, -0x3

    invoke-virtual {v1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v3, v3, Lcom/sun/java_cup/internal/runtime/Symbol;->left:I

    add-int/lit8 v4, p4, 0x0

    invoke-virtual {v1, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v1, v1, Lcom/sun/java_cup/internal/runtime/Symbol;->right:I

    const/16 v4, 0x1e

    invoke-direct {v0, v4, v3, v1, v2}, Lcom/sun/java_cup/internal/runtime/Symbol;-><init>(IIILjava/lang/Object;)V

    return-object v0

    :pswitch_7f
    add-int/lit8 v0, p4, -0x3

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v2, v2, Lcom/sun/java_cup/internal/runtime/Symbol;->left:I

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v2, v2, Lcom/sun/java_cup/internal/runtime/Symbol;->right:I

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget-object v0, v0, Lcom/sun/java_cup/internal/runtime/Symbol;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    add-int/lit8 v2, p4, -0x1

    invoke-virtual {v1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v3, v3, Lcom/sun/java_cup/internal/runtime/Symbol;->left:I

    invoke-virtual {v1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v3, v3, Lcom/sun/java_cup/internal/runtime/Symbol;->right:I

    invoke-virtual {v1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget-object v2, v2, Lcom/sun/java_cup/internal/runtime/Symbol;->value:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    new-instance v3, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/KeyPattern;

    invoke-direct {v3, v0, v2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/KeyPattern;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/sun/java_cup/internal/runtime/Symbol;

    add-int/lit8 v2, p4, -0x5

    invoke-virtual {v1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v2, v2, Lcom/sun/java_cup/internal/runtime/Symbol;->left:I

    add-int/lit8 v4, p4, 0x0

    invoke-virtual {v1, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v1, v1, Lcom/sun/java_cup/internal/runtime/Symbol;->right:I

    const/16 v4, 0x1b

    invoke-direct {v0, v4, v2, v1, v3}, Lcom/sun/java_cup/internal/runtime/Symbol;-><init>(IIILjava/lang/Object;)V

    return-object v0

    :pswitch_80
    add-int/lit8 v2, p4, -0x1

    invoke-virtual {v1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v3, v3, Lcom/sun/java_cup/internal/runtime/Symbol;->left:I

    invoke-virtual {v1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v3, v3, Lcom/sun/java_cup/internal/runtime/Symbol;->right:I

    invoke-virtual {v1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget-object v2, v2, Lcom/sun/java_cup/internal/runtime/Symbol;->value:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    new-instance v3, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/IdPattern;

    invoke-direct {v3, v2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/IdPattern;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/CUP$XPathParser$actions;->parser:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XPathParser;

    invoke-virtual {v0, v13}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XPathParser;->setHasIdCall(Z)V

    new-instance v0, Lcom/sun/java_cup/internal/runtime/Symbol;

    add-int/lit8 v2, p4, -0x3

    invoke-virtual {v1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v2, v2, Lcom/sun/java_cup/internal/runtime/Symbol;->left:I

    add-int/lit8 v4, p4, 0x0

    invoke-virtual {v1, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v1, v1, Lcom/sun/java_cup/internal/runtime/Symbol;->right:I

    const/16 v4, 0x1b

    invoke-direct {v0, v4, v2, v1, v3}, Lcom/sun/java_cup/internal/runtime/Symbol;-><init>(IIILjava/lang/Object;)V

    return-object v0

    :pswitch_81
    add-int/lit8 v0, p4, 0x0

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v2, v2, Lcom/sun/java_cup/internal/runtime/Symbol;->left:I

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v2, v2, Lcom/sun/java_cup/internal/runtime/Symbol;->right:I

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget-object v2, v2, Lcom/sun/java_cup/internal/runtime/Symbol;->value:Ljava/lang/Object;

    check-cast v2, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/RelativePathPattern;

    new-instance v3, Lcom/sun/java_cup/internal/runtime/Symbol;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v4, v4, Lcom/sun/java_cup/internal/runtime/Symbol;->left:I

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v0, v0, Lcom/sun/java_cup/internal/runtime/Symbol;->right:I

    const/16 v1, 0x1d

    invoke-direct {v3, v1, v4, v0, v2}, Lcom/sun/java_cup/internal/runtime/Symbol;-><init>(IIILjava/lang/Object;)V

    return-object v3

    :pswitch_82
    add-int/lit8 v0, p4, 0x0

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v2, v2, Lcom/sun/java_cup/internal/runtime/Symbol;->left:I

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v2, v2, Lcom/sun/java_cup/internal/runtime/Symbol;->right:I

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget-object v2, v2, Lcom/sun/java_cup/internal/runtime/Symbol;->value:Ljava/lang/Object;

    check-cast v2, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/RelativePathPattern;

    new-instance v3, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/AncestorPattern;

    invoke-direct {v3, v2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/AncestorPattern;-><init>(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/RelativePathPattern;)V

    new-instance v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    add-int/lit8 v4, p4, -0x1

    invoke-virtual {v1, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v4, v4, Lcom/sun/java_cup/internal/runtime/Symbol;->left:I

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v0, v0, Lcom/sun/java_cup/internal/runtime/Symbol;->right:I

    const/16 v1, 0x1d

    invoke-direct {v2, v1, v4, v0, v3}, Lcom/sun/java_cup/internal/runtime/Symbol;-><init>(IIILjava/lang/Object;)V

    return-object v2

    :pswitch_83
    add-int/lit8 v0, p4, -0x2

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v2, v2, Lcom/sun/java_cup/internal/runtime/Symbol;->left:I

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v2, v2, Lcom/sun/java_cup/internal/runtime/Symbol;->right:I

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget-object v2, v2, Lcom/sun/java_cup/internal/runtime/Symbol;->value:Ljava/lang/Object;

    check-cast v2, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/IdKeyPattern;

    add-int/lit8 v3, p4, 0x0

    invoke-virtual {v1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v4, v4, Lcom/sun/java_cup/internal/runtime/Symbol;->left:I

    invoke-virtual {v1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v4, v4, Lcom/sun/java_cup/internal/runtime/Symbol;->right:I

    invoke-virtual {v1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget-object v4, v4, Lcom/sun/java_cup/internal/runtime/Symbol;->value:Ljava/lang/Object;

    check-cast v4, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/RelativePathPattern;

    new-instance v5, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/AncestorPattern;

    invoke-direct {v5, v2, v4}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/AncestorPattern;-><init>(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Pattern;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/RelativePathPattern;)V

    new-instance v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v0, v0, Lcom/sun/java_cup/internal/runtime/Symbol;->left:I

    invoke-virtual {v1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v1, v1, Lcom/sun/java_cup/internal/runtime/Symbol;->right:I

    const/16 v3, 0x1d

    invoke-direct {v2, v3, v0, v1, v5}, Lcom/sun/java_cup/internal/runtime/Symbol;-><init>(IIILjava/lang/Object;)V

    return-object v2

    :pswitch_84
    add-int/lit8 v0, p4, -0x2

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v2, v2, Lcom/sun/java_cup/internal/runtime/Symbol;->left:I

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v2, v2, Lcom/sun/java_cup/internal/runtime/Symbol;->right:I

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget-object v2, v2, Lcom/sun/java_cup/internal/runtime/Symbol;->value:Ljava/lang/Object;

    check-cast v2, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/IdKeyPattern;

    add-int/lit8 v3, p4, 0x0

    invoke-virtual {v1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v4, v4, Lcom/sun/java_cup/internal/runtime/Symbol;->left:I

    invoke-virtual {v1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v4, v4, Lcom/sun/java_cup/internal/runtime/Symbol;->right:I

    invoke-virtual {v1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget-object v4, v4, Lcom/sun/java_cup/internal/runtime/Symbol;->value:Ljava/lang/Object;

    check-cast v4, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/RelativePathPattern;

    new-instance v5, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/ParentPattern;

    invoke-direct {v5, v2, v4}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/ParentPattern;-><init>(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Pattern;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/RelativePathPattern;)V

    new-instance v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v0, v0, Lcom/sun/java_cup/internal/runtime/Symbol;->left:I

    invoke-virtual {v1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v1, v1, Lcom/sun/java_cup/internal/runtime/Symbol;->right:I

    const/16 v3, 0x1d

    invoke-direct {v2, v3, v0, v1, v5}, Lcom/sun/java_cup/internal/runtime/Symbol;-><init>(IIILjava/lang/Object;)V

    return-object v2

    :pswitch_85
    add-int/lit8 v0, p4, 0x0

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v2, v2, Lcom/sun/java_cup/internal/runtime/Symbol;->left:I

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v2, v2, Lcom/sun/java_cup/internal/runtime/Symbol;->right:I

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget-object v2, v2, Lcom/sun/java_cup/internal/runtime/Symbol;->value:Ljava/lang/Object;

    check-cast v2, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/IdKeyPattern;

    new-instance v3, Lcom/sun/java_cup/internal/runtime/Symbol;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v4, v4, Lcom/sun/java_cup/internal/runtime/Symbol;->left:I

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v0, v0, Lcom/sun/java_cup/internal/runtime/Symbol;->right:I

    const/16 v1, 0x1d

    invoke-direct {v3, v1, v4, v0, v2}, Lcom/sun/java_cup/internal/runtime/Symbol;-><init>(IIILjava/lang/Object;)V

    return-object v3

    :pswitch_86
    add-int/lit8 v0, p4, 0x0

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v2, v2, Lcom/sun/java_cup/internal/runtime/Symbol;->left:I

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v2, v2, Lcom/sun/java_cup/internal/runtime/Symbol;->right:I

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget-object v2, v2, Lcom/sun/java_cup/internal/runtime/Symbol;->value:Ljava/lang/Object;

    check-cast v2, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/RelativePathPattern;

    new-instance v3, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/AbsolutePathPattern;

    invoke-direct {v3, v2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/AbsolutePathPattern;-><init>(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/RelativePathPattern;)V

    new-instance v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    add-int/lit8 v4, p4, -0x1

    invoke-virtual {v1, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v4, v4, Lcom/sun/java_cup/internal/runtime/Symbol;->left:I

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v0, v0, Lcom/sun/java_cup/internal/runtime/Symbol;->right:I

    const/16 v1, 0x1d

    invoke-direct {v2, v1, v4, v0, v3}, Lcom/sun/java_cup/internal/runtime/Symbol;-><init>(IIILjava/lang/Object;)V

    return-object v2

    :pswitch_87
    new-instance v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/AbsolutePathPattern;

    invoke-direct {v0, v6}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/AbsolutePathPattern;-><init>(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/RelativePathPattern;)V

    new-instance v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    add-int/lit8 v3, p4, 0x0

    invoke-virtual {v1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v4, v4, Lcom/sun/java_cup/internal/runtime/Symbol;->left:I

    invoke-virtual {v1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v1, v1, Lcom/sun/java_cup/internal/runtime/Symbol;->right:I

    const/16 v3, 0x1d

    invoke-direct {v2, v3, v4, v1, v0}, Lcom/sun/java_cup/internal/runtime/Symbol;-><init>(IIILjava/lang/Object;)V

    return-object v2

    :pswitch_88
    add-int/lit8 v0, p4, -0x2

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v2, v2, Lcom/sun/java_cup/internal/runtime/Symbol;->left:I

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v2, v2, Lcom/sun/java_cup/internal/runtime/Symbol;->right:I

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget-object v2, v2, Lcom/sun/java_cup/internal/runtime/Symbol;->value:Ljava/lang/Object;

    check-cast v2, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Pattern;

    add-int/lit8 v3, p4, 0x0

    invoke-virtual {v1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v4, v4, Lcom/sun/java_cup/internal/runtime/Symbol;->left:I

    invoke-virtual {v1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v4, v4, Lcom/sun/java_cup/internal/runtime/Symbol;->right:I

    invoke-virtual {v1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget-object v4, v4, Lcom/sun/java_cup/internal/runtime/Symbol;->value:Ljava/lang/Object;

    check-cast v4, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Pattern;

    new-instance v5, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/AlternativePattern;

    invoke-direct {v5, v2, v4}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/AlternativePattern;-><init>(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Pattern;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Pattern;)V

    new-instance v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v0, v0, Lcom/sun/java_cup/internal/runtime/Symbol;->left:I

    invoke-virtual {v1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v1, v1, Lcom/sun/java_cup/internal/runtime/Symbol;->right:I

    const/16 v3, 0x1c

    invoke-direct {v2, v3, v0, v1, v5}, Lcom/sun/java_cup/internal/runtime/Symbol;-><init>(IIILjava/lang/Object;)V

    return-object v2

    :pswitch_89
    add-int/lit8 v0, p4, 0x0

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v2, v2, Lcom/sun/java_cup/internal/runtime/Symbol;->left:I

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v2, v2, Lcom/sun/java_cup/internal/runtime/Symbol;->right:I

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget-object v2, v2, Lcom/sun/java_cup/internal/runtime/Symbol;->value:Ljava/lang/Object;

    check-cast v2, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Pattern;

    new-instance v3, Lcom/sun/java_cup/internal/runtime/Symbol;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v4, v4, Lcom/sun/java_cup/internal/runtime/Symbol;->left:I

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v0, v0, Lcom/sun/java_cup/internal/runtime/Symbol;->right:I

    const/16 v1, 0x1c

    invoke-direct {v3, v1, v4, v0, v2}, Lcom/sun/java_cup/internal/runtime/Symbol;-><init>(IIILjava/lang/Object;)V

    return-object v3

    :pswitch_8a
    add-int/lit8 v0, p4, 0x0

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v2, v2, Lcom/sun/java_cup/internal/runtime/Symbol;->left:I

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v2, v2, Lcom/sun/java_cup/internal/runtime/Symbol;->right:I

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget-object v2, v2, Lcom/sun/java_cup/internal/runtime/Symbol;->value:Ljava/lang/Object;

    check-cast v2, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    new-instance v3, Lcom/sun/java_cup/internal/runtime/Symbol;

    add-int/lit8 v4, p4, -0x1

    invoke-virtual {v1, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v4, v4, Lcom/sun/java_cup/internal/runtime/Symbol;->left:I

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v0, v0, Lcom/sun/java_cup/internal/runtime/Symbol;->right:I

    invoke-direct {v3, v13, v4, v0, v2}, Lcom/sun/java_cup/internal/runtime/Symbol;-><init>(IIILjava/lang/Object;)V

    return-object v3

    :pswitch_8b
    add-int/lit8 v0, p4, 0x0

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v2, v2, Lcom/sun/java_cup/internal/runtime/Symbol;->left:I

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v2, v2, Lcom/sun/java_cup/internal/runtime/Symbol;->right:I

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget-object v2, v2, Lcom/sun/java_cup/internal/runtime/Symbol;->value:Ljava/lang/Object;

    check-cast v2, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Pattern;

    new-instance v3, Lcom/sun/java_cup/internal/runtime/Symbol;

    add-int/lit8 v4, p4, -0x1

    invoke-virtual {v1, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v4, v4, Lcom/sun/java_cup/internal/runtime/Symbol;->left:I

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v0, v0, Lcom/sun/java_cup/internal/runtime/Symbol;->right:I

    invoke-direct {v3, v13, v4, v0, v2}, Lcom/sun/java_cup/internal/runtime/Symbol;-><init>(IIILjava/lang/Object;)V

    return-object v3

    :pswitch_8c
    add-int/lit8 v0, p4, -0x1

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v2, v2, Lcom/sun/java_cup/internal/runtime/Symbol;->left:I

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v2, v2, Lcom/sun/java_cup/internal/runtime/Symbol;->right:I

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget-object v2, v2, Lcom/sun/java_cup/internal/runtime/Symbol;->value:Ljava/lang/Object;

    check-cast v2, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;

    new-instance v3, Lcom/sun/java_cup/internal/runtime/Symbol;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v0, v0, Lcom/sun/java_cup/internal/runtime/Symbol;->left:I

    add-int/lit8 v4, p4, 0x0

    invoke-virtual {v1, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/java_cup/internal/runtime/Symbol;

    iget v1, v1, Lcom/sun/java_cup/internal/runtime/Symbol;->right:I

    invoke-direct {v3, v11, v0, v1, v2}, Lcom/sun/java_cup/internal/runtime/Symbol;-><init>(IIILjava/lang/Object;)V

    invoke-virtual/range {p2 .. p2}, Lcom/sun/java_cup/internal/runtime/lr_parser;->done_parsing()V

    return-object v3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8c
        :pswitch_8b
        :pswitch_8a
        :pswitch_89
        :pswitch_88
        :pswitch_87
        :pswitch_86
        :pswitch_85
        :pswitch_84
        :pswitch_83
        :pswitch_82
        :pswitch_81
        :pswitch_80
        :pswitch_7f
        :pswitch_7e
        :pswitch_7d
        :pswitch_7c
        :pswitch_7b
        :pswitch_7a
        :pswitch_79
        :pswitch_78
        :pswitch_77
        :pswitch_76
        :pswitch_75
        :pswitch_74
        :pswitch_73
        :pswitch_72
        :pswitch_71
        :pswitch_70
        :pswitch_6f
        :pswitch_6e
        :pswitch_6d
        :pswitch_6c
        :pswitch_6b
        :pswitch_6a
        :pswitch_69
        :pswitch_68
        :pswitch_67
        :pswitch_66
        :pswitch_65
        :pswitch_64
        :pswitch_63
        :pswitch_62
        :pswitch_61
        :pswitch_60
        :pswitch_5f
        :pswitch_5e
        :pswitch_5d
        :pswitch_5c
        :pswitch_5b
        :pswitch_5a
        :pswitch_59
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
