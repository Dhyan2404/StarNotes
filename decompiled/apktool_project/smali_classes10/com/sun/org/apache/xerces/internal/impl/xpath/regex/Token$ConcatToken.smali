.class Lcom/sun/org/apache/xerces/internal/impl/xpath/regex/Token$ConcatToken;
.super Lcom/sun/org/apache/xerces/internal/impl/xpath/regex/Token;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/org/apache/xerces/internal/impl/xpath/regex/Token;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConcatToken"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x3837313733323134L


# instance fields
.field child:Lcom/sun/org/apache/xerces/internal/impl/xpath/regex/Token;

.field child2:Lcom/sun/org/apache/xerces/internal/impl/xpath/regex/Token;


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/xerces/internal/impl/xpath/regex/Token;Lcom/sun/org/apache/xerces/internal/impl/xpath/regex/Token;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sun/org/apache/xerces/internal/impl/xpath/regex/Token;-><init>(I)V

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xpath/regex/Token$ConcatToken;->child:Lcom/sun/org/apache/xerces/internal/impl/xpath/regex/Token;

    iput-object p2, p0, Lcom/sun/org/apache/xerces/internal/impl/xpath/regex/Token$ConcatToken;->child2:Lcom/sun/org/apache/xerces/internal/impl/xpath/regex/Token;

    return-void
.end method


# virtual methods
.method public getChild(I)Lcom/sun/org/apache/xerces/internal/impl/xpath/regex/Token;
    .locals 0

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xpath/regex/Token$ConcatToken;->child:Lcom/sun/org/apache/xerces/internal/impl/xpath/regex/Token;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xpath/regex/Token$ConcatToken;->child2:Lcom/sun/org/apache/xerces/internal/impl/xpath/regex/Token;

    :goto_0
    return-object p0
.end method

.method public size()I
    .locals 0

    const/4 p0, 0x2

    return p0
.end method

.method public toString(I)Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xpath/regex/Token$ConcatToken;->child2:Lcom/sun/org/apache/xerces/internal/impl/xpath/regex/Token;

    iget v1, v0, Lcom/sun/org/apache/xerces/internal/impl/xpath/regex/Token;->type:I

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    invoke-virtual {v0, v3}, Lcom/sun/org/apache/xerces/internal/impl/xpath/regex/Token;->getChild(I)Lcom/sun/org/apache/xerces/internal/impl/xpath/regex/Token;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xpath/regex/Token$ConcatToken;->child:Lcom/sun/org/apache/xerces/internal/impl/xpath/regex/Token;

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xpath/regex/Token$ConcatToken;->child:Lcom/sun/org/apache/xerces/internal/impl/xpath/regex/Token;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/impl/xpath/regex/Token;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "+"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xpath/regex/Token$ConcatToken;->child2:Lcom/sun/org/apache/xerces/internal/impl/xpath/regex/Token;

    iget v1, v0, Lcom/sun/org/apache/xerces/internal/impl/xpath/regex/Token;->type:I

    const/16 v2, 0x9

    if-ne v1, v2, :cond_1

    invoke-virtual {v0, v3}, Lcom/sun/org/apache/xerces/internal/impl/xpath/regex/Token;->getChild(I)Lcom/sun/org/apache/xerces/internal/impl/xpath/regex/Token;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xpath/regex/Token$ConcatToken;->child:Lcom/sun/org/apache/xerces/internal/impl/xpath/regex/Token;

    if-ne v0, v1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xpath/regex/Token$ConcatToken;->child:Lcom/sun/org/apache/xerces/internal/impl/xpath/regex/Token;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/impl/xpath/regex/Token;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "+?"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xpath/regex/Token$ConcatToken;->child:Lcom/sun/org/apache/xerces/internal/impl/xpath/regex/Token;

    invoke-virtual {v1, p1}, Lcom/sun/org/apache/xerces/internal/impl/xpath/regex/Token;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xpath/regex/Token$ConcatToken;->child2:Lcom/sun/org/apache/xerces/internal/impl/xpath/regex/Token;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/impl/xpath/regex/Token;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method
