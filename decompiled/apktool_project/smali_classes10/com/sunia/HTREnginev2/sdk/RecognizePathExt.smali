.class public Lcom/sunia/HTREnginev2/sdk/RecognizePathExt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private penColor:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clone()Lcom/sunia/HTREnginev2/sdk/RecognizePathExt;
    .locals 1

    .line 2
    new-instance v0, Lcom/sunia/HTREnginev2/sdk/RecognizePathExt;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/sdk/RecognizePathExt;-><init>()V

    .line 3
    iget p0, p0, Lcom/sunia/HTREnginev2/sdk/RecognizePathExt;->penColor:I

    iput p0, v0, Lcom/sunia/HTREnginev2/sdk/RecognizePathExt;->penColor:I

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/sdk/RecognizePathExt;->clone()Lcom/sunia/HTREnginev2/sdk/RecognizePathExt;

    move-result-object p0

    return-object p0
.end method

.method public getPenColor()I
    .locals 0

    iget p0, p0, Lcom/sunia/HTREnginev2/sdk/RecognizePathExt;->penColor:I

    return p0
.end method

.method public setPenColor(I)V
    .locals 0

    iput p1, p0, Lcom/sunia/HTREnginev2/sdk/RecognizePathExt;->penColor:I

    return-void
.end method
