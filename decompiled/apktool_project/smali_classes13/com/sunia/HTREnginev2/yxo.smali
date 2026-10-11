.class public Lcom/sunia/HTREnginev2/yxo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lorg/jsoup/nodes/TextNode;

.field public b:I

.field public c:I


# direct methods
.method public constructor <init>(Lorg/jsoup/nodes/TextNode;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/yxo;->a:Lorg/jsoup/nodes/TextNode;

    iput p2, p0, Lcom/sunia/HTREnginev2/yxo;->b:I

    iput p3, p0, Lcom/sunia/HTREnginev2/yxo;->c:I

    return-void
.end method


# virtual methods
.method public a(IZ)Z
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    iget p2, p0, Lcom/sunia/HTREnginev2/yxo;->b:I

    if-lt p1, p2, :cond_0

    iget p0, p0, Lcom/sunia/HTREnginev2/yxo;->c:I

    if-ge p1, p0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :cond_1
    iget p2, p0, Lcom/sunia/HTREnginev2/yxo;->b:I

    if-lt p1, p2, :cond_2

    iget p0, p0, Lcom/sunia/HTREnginev2/yxo;->c:I

    if-gt p1, p0, :cond_2

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_1
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sunia/HTREnginev2/yxo;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/sunia/HTREnginev2/yxo;->c:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
