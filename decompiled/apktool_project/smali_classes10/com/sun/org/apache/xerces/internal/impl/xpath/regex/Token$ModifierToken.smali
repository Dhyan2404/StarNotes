.class Lcom/sun/org/apache/xerces/internal/impl/xpath/regex/Token$ModifierToken;
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
    name = "ModifierToken"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x2d39313134353336L


# instance fields
.field add:I

.field child:Lcom/sun/org/apache/xerces/internal/impl/xpath/regex/Token;

.field mask:I


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/xerces/internal/impl/xpath/regex/Token;II)V
    .locals 1

    const/16 v0, 0x19

    invoke-direct {p0, v0}, Lcom/sun/org/apache/xerces/internal/impl/xpath/regex/Token;-><init>(I)V

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xpath/regex/Token$ModifierToken;->child:Lcom/sun/org/apache/xerces/internal/impl/xpath/regex/Token;

    iput p2, p0, Lcom/sun/org/apache/xerces/internal/impl/xpath/regex/Token$ModifierToken;->add:I

    iput p3, p0, Lcom/sun/org/apache/xerces/internal/impl/xpath/regex/Token$ModifierToken;->mask:I

    return-void
.end method


# virtual methods
.method public getChild(I)Lcom/sun/org/apache/xerces/internal/impl/xpath/regex/Token;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xpath/regex/Token$ModifierToken;->child:Lcom/sun/org/apache/xerces/internal/impl/xpath/regex/Token;

    return-object p0
.end method

.method public getOptions()I
    .locals 0

    iget p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xpath/regex/Token$ModifierToken;->add:I

    return p0
.end method

.method public getOptionsMask()I
    .locals 0

    iget p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xpath/regex/Token$ModifierToken;->mask:I

    return p0
.end method

.method public size()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public toString(I)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xpath/regex/Token$ModifierToken;->add:I

    const-string v2, ""

    if-nez v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lcom/sun/org/apache/xerces/internal/impl/xpath/regex/REUtil;->createOptionString(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xpath/regex/Token$ModifierToken;->mask:I

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {v1}, Lcom/sun/org/apache/xerces/internal/impl/xpath/regex/REUtil;->createOptionString(I)Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xpath/regex/Token$ModifierToken;->child:Lcom/sun/org/apache/xerces/internal/impl/xpath/regex/Token;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/impl/xpath/regex/Token;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
