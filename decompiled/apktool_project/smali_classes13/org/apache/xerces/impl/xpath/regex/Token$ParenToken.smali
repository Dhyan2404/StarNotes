.class Lorg/apache/xerces/impl/xpath/regex/Token$ParenToken;
.super Lorg/apache/xerces/impl/xpath/regex/Token;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xerces/impl/xpath/regex/Token;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ParenToken"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x526810ed3e634cf8L


# instance fields
.field final child:Lorg/apache/xerces/impl/xpath/regex/Token;

.field final parennumber:I


# direct methods
.method public constructor <init>(ILorg/apache/xerces/impl/xpath/regex/Token;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/xerces/impl/xpath/regex/Token;-><init>(I)V

    iput-object p2, p0, Lorg/apache/xerces/impl/xpath/regex/Token$ParenToken;->child:Lorg/apache/xerces/impl/xpath/regex/Token;

    iput p3, p0, Lorg/apache/xerces/impl/xpath/regex/Token$ParenToken;->parennumber:I

    return-void
.end method


# virtual methods
.method public getChild(I)Lorg/apache/xerces/impl/xpath/regex/Token;
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/impl/xpath/regex/Token$ParenToken;->child:Lorg/apache/xerces/impl/xpath/regex/Token;

    return-object p0
.end method

.method public getParenNumber()I
    .locals 0

    iget p0, p0, Lorg/apache/xerces/impl/xpath/regex/Token$ParenToken;->parennumber:I

    return p0
.end method

.method public size()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public toString(I)Ljava/lang/String;
    .locals 3

    iget v0, p0, Lorg/apache/xerces/impl/xpath/regex/Token;->type:I

    const/4 v1, 0x6

    const-string v2, ")"

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    const/4 p0, 0x0

    goto :goto_1

    :pswitch_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "(?>"

    goto :goto_0

    :pswitch_1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "(?<!"

    goto :goto_0

    :pswitch_2
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "(?<="

    goto :goto_0

    :pswitch_3
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "(?!"

    goto :goto_0

    :pswitch_4
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "(?="

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p0, p0, Lorg/apache/xerces/impl/xpath/regex/Token$ParenToken;->child:Lorg/apache/xerces/impl/xpath/regex/Token;

    invoke-virtual {p0, p1}, Lorg/apache/xerces/impl/xpath/regex/Token;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_0
    iget v0, p0, Lorg/apache/xerces/impl/xpath/regex/Token$ParenToken;->parennumber:I

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "(?:"

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "("

    goto :goto_0

    :goto_1
    return-object p0

    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
