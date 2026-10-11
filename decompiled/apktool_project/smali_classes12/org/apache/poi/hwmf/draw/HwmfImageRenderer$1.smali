.class final Lorg/apache/poi/hwmf/draw/HwmfImageRenderer$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/poi/hwmf/draw/HwmfImageRenderer;->lambda$getEmbeddings$0(Ljava/lang/Iterable;)Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lorg/apache/poi/sl/draw/EmbeddedExtractor$EmbeddedPart;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$embit:Ljava/util/Iterator;

.field final synthetic val$idx:[I


# direct methods
.method public constructor <init>(Ljava/util/Iterator;[I)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/hwmf/draw/HwmfImageRenderer$1;->val$embit:Ljava/util/Iterator;

    iput-object p2, p0, Lorg/apache/poi/hwmf/draw/HwmfImageRenderer$1;->val$idx:[I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hwmf/draw/HwmfImageRenderer$1;->val$embit:Ljava/util/Iterator;

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hwmf/draw/HwmfImageRenderer$1;->next()Lorg/apache/poi/sl/draw/EmbeddedExtractor$EmbeddedPart;

    move-result-object p0

    return-object p0
.end method

.method public next()Lorg/apache/poi/sl/draw/EmbeddedExtractor$EmbeddedPart;
    .locals 6

    .line 2
    new-instance v0, Lorg/apache/poi/sl/draw/EmbeddedExtractor$EmbeddedPart;

    invoke-direct {v0}, Lorg/apache/poi/sl/draw/EmbeddedExtractor$EmbeddedPart;-><init>()V

    .line 3
    iget-object v1, p0, Lorg/apache/poi/hwmf/draw/HwmfImageRenderer$1;->val$embit:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/hwmf/usermodel/HwmfEmbedded;

    .line 4
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/sunia/HTREnginev2/ra;

    invoke-direct {v2, v1}, Lcom/sunia/HTREnginev2/ra;-><init>(Lorg/apache/poi/hwmf/usermodel/HwmfEmbedded;)V

    invoke-virtual {v0, v2}, Lorg/apache/poi/sl/draw/EmbeddedExtractor$EmbeddedPart;->setData(Ljava/util/function/Supplier;)V

    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "embed_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lorg/apache/poi/hwmf/draw/HwmfImageRenderer$1;->val$idx:[I

    const/4 v3, 0x0

    aget v4, p0, v3

    add-int/lit8 v5, v4, 0x1

    aput v5, p0, v3

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lorg/apache/poi/hwmf/usermodel/HwmfEmbedded;->getEmbeddedType()Lorg/apache/poi/hwmf/usermodel/HwmfEmbeddedType;

    move-result-object p0

    iget-object p0, p0, Lorg/apache/poi/hwmf/usermodel/HwmfEmbeddedType;->extension:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/apache/poi/sl/draw/EmbeddedExtractor$EmbeddedPart;->setName(Ljava/lang/String;)V

    return-object v0
.end method
