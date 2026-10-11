.class Lcom/sun/org/apache/xerces/internal/impl/xpath/regex/Token$ClosureToken;
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
    name = "ClosureToken"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x3133303839373139L


# instance fields
.field child:Lcom/sun/org/apache/xerces/internal/impl/xpath/regex/Token;

.field max:I

.field min:I


# direct methods
.method public constructor <init>(ILcom/sun/org/apache/xerces/internal/impl/xpath/regex/Token;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xerces/internal/impl/xpath/regex/Token;-><init>(I)V

    iput-object p2, p0, Lcom/sun/org/apache/xerces/internal/impl/xpath/regex/Token$ClosureToken;->child:Lcom/sun/org/apache/xerces/internal/impl/xpath/regex/Token;

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/impl/xpath/regex/Token$ClosureToken;->setMin(I)V

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/impl/xpath/regex/Token$ClosureToken;->setMax(I)V

    return-void
.end method


# virtual methods
.method public getChild(I)Lcom/sun/org/apache/xerces/internal/impl/xpath/regex/Token;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xpath/regex/Token$ClosureToken;->child:Lcom/sun/org/apache/xerces/internal/impl/xpath/regex/Token;

    return-object p0
.end method

.method public final getMax()I
    .locals 0

    iget p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xpath/regex/Token$ClosureToken;->max:I

    return p0
.end method

.method public final getMin()I
    .locals 0

    iget p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xpath/regex/Token$ClosureToken;->min:I

    return p0
.end method

.method public final setMax(I)V
    .locals 0

    iput p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xpath/regex/Token$ClosureToken;->max:I

    return-void
.end method

.method public final setMin(I)V
    .locals 0

    iput p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xpath/regex/Token$ClosureToken;->min:I

    return-void
.end method

.method public size()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public toString(I)Ljava/lang/String;
    .locals 6

    iget v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xpath/regex/Token;->type:I

    const/4 v1, 0x3

    const-string v2, ","

    const-string v3, ", "

    const-string v4, "{"

    if-ne v0, v1, :cond_4

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/impl/xpath/regex/Token$ClosureToken;->getMin()I

    move-result v0

    if-gez v0, :cond_0

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/impl/xpath/regex/Token$ClosureToken;->getMax()I

    move-result v0

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xpath/regex/Token$ClosureToken;->child:Lcom/sun/org/apache/xerces/internal/impl/xpath/regex/Token;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/impl/xpath/regex/Token;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "*"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/impl/xpath/regex/Token$ClosureToken;->getMin()I

    move-result v0

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/impl/xpath/regex/Token$ClosureToken;->getMax()I

    move-result v1

    const-string v5, "}"

    if-ne v0, v1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xpath/regex/Token$ClosureToken;->child:Lcom/sun/org/apache/xerces/internal/impl/xpath/regex/Token;

    invoke-virtual {v1, p1}, Lcom/sun/org/apache/xerces/internal/impl/xpath/regex/Token;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/impl/xpath/regex/Token$ClosureToken;->getMin()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/impl/xpath/regex/Token$ClosureToken;->getMin()I

    move-result v0

    if-ltz v0, :cond_2

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/impl/xpath/regex/Token$ClosureToken;->getMax()I

    move-result v0

    if-ltz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xpath/regex/Token$ClosureToken;->child:Lcom/sun/org/apache/xerces/internal/impl/xpath/regex/Token;

    invoke-virtual {v1, p1}, Lcom/sun/org/apache/xerces/internal/impl/xpath/regex/Token;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/impl/xpath/regex/Token$ClosureToken;->getMin()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/impl/xpath/regex/Token$ClosureToken;->getMax()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/impl/xpath/regex/Token$ClosureToken;->getMin()I

    move-result v0

    if-ltz v0, :cond_3

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/impl/xpath/regex/Token$ClosureToken;->getMax()I

    move-result v0

    if-gez v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xpath/regex/Token$ClosureToken;->child:Lcom/sun/org/apache/xerces/internal/impl/xpath/regex/Token;

    invoke-virtual {v1, p1}, Lcom/sun/org/apache/xerces/internal/impl/xpath/regex/Token;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/impl/xpath/regex/Token$ClosureToken;->getMin()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ",}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    :cond_3
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Token#toString(): CLOSURE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/impl/xpath/regex/Token$ClosureToken;->getMin()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/impl/xpath/regex/Token$ClosureToken;->getMax()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/impl/xpath/regex/Token$ClosureToken;->getMin()I

    move-result v0

    if-gez v0, :cond_5

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/impl/xpath/regex/Token$ClosureToken;->getMax()I

    move-result v0

    if-gez v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xpath/regex/Token$ClosureToken;->child:Lcom/sun/org/apache/xerces/internal/impl/xpath/regex/Token;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/impl/xpath/regex/Token;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "*?"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/impl/xpath/regex/Token$ClosureToken;->getMin()I

    move-result v0

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/impl/xpath/regex/Token$ClosureToken;->getMax()I

    move-result v1

    const-string v5, "}?"

    if-ne v0, v1, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xpath/regex/Token$ClosureToken;->child:Lcom/sun/org/apache/xerces/internal/impl/xpath/regex/Token;

    invoke-virtual {v1, p1}, Lcom/sun/org/apache/xerces/internal/impl/xpath/regex/Token;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/impl/xpath/regex/Token$ClosureToken;->getMin()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_6
    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/impl/xpath/regex/Token$ClosureToken;->getMin()I

    move-result v0

    if-ltz v0, :cond_7

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/impl/xpath/regex/Token$ClosureToken;->getMax()I

    move-result v0

    if-ltz v0, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xpath/regex/Token$ClosureToken;->child:Lcom/sun/org/apache/xerces/internal/impl/xpath/regex/Token;

    invoke-virtual {v1, p1}, Lcom/sun/org/apache/xerces/internal/impl/xpath/regex/Token;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/impl/xpath/regex/Token$ClosureToken;->getMin()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/impl/xpath/regex/Token$ClosureToken;->getMax()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_7
    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/impl/xpath/regex/Token$ClosureToken;->getMin()I

    move-result v0

    if-ltz v0, :cond_8

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/impl/xpath/regex/Token$ClosureToken;->getMax()I

    move-result v0

    if-gez v0, :cond_8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xpath/regex/Token$ClosureToken;->child:Lcom/sun/org/apache/xerces/internal/impl/xpath/regex/Token;

    invoke-virtual {v1, p1}, Lcom/sun/org/apache/xerces/internal/impl/xpath/regex/Token;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/impl/xpath/regex/Token$ClosureToken;->getMin()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ",}?"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_8
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Token#toString(): NONGREEDYCLOSURE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/impl/xpath/regex/Token$ClosureToken;->getMin()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/impl/xpath/regex/Token$ClosureToken;->getMax()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
