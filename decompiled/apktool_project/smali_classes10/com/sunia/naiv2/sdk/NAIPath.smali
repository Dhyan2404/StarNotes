.class public Lcom/sunia/naiv2/sdk/NAIPath;
.super Lcom/sunia/HTREnginev2/sdk/RecognizePath;
.source "SourceFile"


# instance fields
.field private groupId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sunia/HTREnginev2/sdk/RecognizePath;-><init>()V

    return-void
.end method


# virtual methods
.method public clone()Lcom/sunia/HTREnginev2/sdk/RecognizePath;
    .locals 1

    .line 2
    new-instance v0, Lcom/sunia/naiv2/sdk/NAIPath;

    invoke-direct {v0}, Lcom/sunia/naiv2/sdk/NAIPath;-><init>()V

    .line 3
    invoke-super {p0}, Lcom/sunia/HTREnginev2/sdk/RecognizePath;->clone()Lcom/sunia/HTREnginev2/sdk/RecognizePath;

    .line 4
    iget p0, p0, Lcom/sunia/naiv2/sdk/NAIPath;->groupId:I

    iput p0, v0, Lcom/sunia/naiv2/sdk/NAIPath;->groupId:I

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/sunia/naiv2/sdk/NAIPath;->clone()Lcom/sunia/HTREnginev2/sdk/RecognizePath;

    move-result-object p0

    return-object p0
.end method

.method public getGroupId()I
    .locals 0

    iget p0, p0, Lcom/sunia/naiv2/sdk/NAIPath;->groupId:I

    return p0
.end method

.method public setGroupId(I)V
    .locals 0

    iput p1, p0, Lcom/sunia/naiv2/sdk/NAIPath;->groupId:I

    return-void
.end method
