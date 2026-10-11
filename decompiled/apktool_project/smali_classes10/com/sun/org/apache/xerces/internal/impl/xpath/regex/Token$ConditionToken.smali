.class Lcom/sun/org/apache/xerces/internal/impl/xpath/regex/Token$ConditionToken;
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
    name = "ConditionToken"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x3433353337363532L


# instance fields
.field condition:Lcom/sun/org/apache/xerces/internal/impl/xpath/regex/Token;

.field no:Lcom/sun/org/apache/xerces/internal/impl/xpath/regex/Token;

.field refNumber:I

.field yes:Lcom/sun/org/apache/xerces/internal/impl/xpath/regex/Token;


# direct methods
.method public constructor <init>(ILcom/sun/org/apache/xerces/internal/impl/xpath/regex/Token;Lcom/sun/org/apache/xerces/internal/impl/xpath/regex/Token;Lcom/sun/org/apache/xerces/internal/impl/xpath/regex/Token;)V
    .locals 1

    const/16 v0, 0x1a

    invoke-direct {p0, v0}, Lcom/sun/org/apache/xerces/internal/impl/xpath/regex/Token;-><init>(I)V

    iput p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xpath/regex/Token$ConditionToken;->refNumber:I

    iput-object p2, p0, Lcom/sun/org/apache/xerces/internal/impl/xpath/regex/Token$ConditionToken;->condition:Lcom/sun/org/apache/xerces/internal/impl/xpath/regex/Token;

    iput-object p3, p0, Lcom/sun/org/apache/xerces/internal/impl/xpath/regex/Token$ConditionToken;->yes:Lcom/sun/org/apache/xerces/internal/impl/xpath/regex/Token;

    iput-object p4, p0, Lcom/sun/org/apache/xerces/internal/impl/xpath/regex/Token$ConditionToken;->no:Lcom/sun/org/apache/xerces/internal/impl/xpath/regex/Token;

    return-void
.end method


# virtual methods
.method public getChild(I)Lcom/sun/org/apache/xerces/internal/impl/xpath/regex/Token;
    .locals 2

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xpath/regex/Token$ConditionToken;->yes:Lcom/sun/org/apache/xerces/internal/impl/xpath/regex/Token;

    return-object p0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xpath/regex/Token$ConditionToken;->no:Lcom/sun/org/apache/xerces/internal/impl/xpath/regex/Token;

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Internal Error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public size()I
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xpath/regex/Token$ConditionToken;->no:Lcom/sun/org/apache/xerces/internal/impl/xpath/regex/Token;

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x2

    :goto_0
    return p0
.end method

.method public toString(I)Ljava/lang/String;
    .locals 3

    iget p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xpath/regex/Token$ConditionToken;->refNumber:I

    const-string v0, "(?("

    const-string v1, ")"

    if-lez p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xpath/regex/Token$ConditionToken;->refNumber:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xpath/regex/Token$ConditionToken;->condition:Lcom/sun/org/apache/xerces/internal/impl/xpath/regex/Token;

    iget p1, p1, Lcom/sun/org/apache/xerces/internal/impl/xpath/regex/Token;->type:I

    const/16 v2, 0x8

    if-ne p1, v2, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xpath/regex/Token$ConditionToken;->condition:Lcom/sun/org/apache/xerces/internal/impl/xpath/regex/Token;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "(?"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xpath/regex/Token$ConditionToken;->condition:Lcom/sun/org/apache/xerces/internal/impl/xpath/regex/Token;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xpath/regex/Token$ConditionToken;->no:Lcom/sun/org/apache/xerces/internal/impl/xpath/regex/Token;

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xpath/regex/Token$ConditionToken;->yes:Lcom/sun/org/apache/xerces/internal/impl/xpath/regex/Token;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xpath/regex/Token$ConditionToken;->yes:Lcom/sun/org/apache/xerces/internal/impl/xpath/regex/Token;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "|"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xpath/regex/Token$ConditionToken;->no:Lcom/sun/org/apache/xerces/internal/impl/xpath/regex/Token;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_1
    return-object p0
.end method
