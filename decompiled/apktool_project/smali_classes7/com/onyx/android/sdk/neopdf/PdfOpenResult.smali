.class public final Lcom/onyx/android/sdk/neopdf/PdfOpenResult;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0010\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B#\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0007J\t\u0010\u0010\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0011\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u0012\u001a\u00020\u0005H\u00c6\u0003J\'\u0010\u0013\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0005H\u00c6\u0001J\u0013\u0010\u0014\u001a\u00020\u00052\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0016H\u00d6\u0003J\t\u0010\u0017\u001a\u00020\u0003H\u00d6\u0001J\t\u0010\u0018\u001a\u00020\u0019H\u00d6\u0001R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0004\u0010\u0008\"\u0004\u0008\t\u0010\nR\u001a\u0010\u0006\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0008\"\u0004\u0008\u000b\u0010\nR\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/onyx/android/sdk/neopdf/PdfOpenResult;",
        "Ljava/io/Serializable;",
        "openCode",
        "",
        "isLinearized",
        "",
        "isXrefValid",
        "(IZZ)V",
        "()Z",
        "setLinearized",
        "(Z)V",
        "setXrefValid",
        "getOpenCode",
        "()I",
        "setOpenCode",
        "(I)V",
        "component1",
        "component2",
        "component3",
        "copy",
        "equals",
        "other",
        "",
        "hashCode",
        "toString",
        "",
        "sdk-neopdf_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private isLinearized:Z

.field private isXrefValid:Z

.field private openCode:I


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 1
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x7

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/onyx/android/sdk/neopdf/PdfOpenResult;-><init>(IZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(IZZ)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lcom/onyx/android/sdk/neopdf/PdfOpenResult;->openCode:I

    .line 4
    iput-boolean p2, p0, Lcom/onyx/android/sdk/neopdf/PdfOpenResult;->isLinearized:Z

    .line 5
    iput-boolean p3, p0, Lcom/onyx/android/sdk/neopdf/PdfOpenResult;->isXrefValid:Z

    return-void
.end method

.method public synthetic constructor <init>(IZZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p5, p4, 0x1

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    move p1, v0

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    move p2, v0

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    move p3, v0

    .line 6
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcom/onyx/android/sdk/neopdf/PdfOpenResult;-><init>(IZZ)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/onyx/android/sdk/neopdf/PdfOpenResult;IZZILjava/lang/Object;)Lcom/onyx/android/sdk/neopdf/PdfOpenResult;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget p1, p0, Lcom/onyx/android/sdk/neopdf/PdfOpenResult;->openCode:I

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-boolean p2, p0, Lcom/onyx/android/sdk/neopdf/PdfOpenResult;->isLinearized:Z

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-boolean p3, p0, Lcom/onyx/android/sdk/neopdf/PdfOpenResult;->isXrefValid:Z

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/android/sdk/neopdf/PdfOpenResult;->copy(IZZ)Lcom/onyx/android/sdk/neopdf/PdfOpenResult;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/neopdf/PdfOpenResult;->openCode:I

    return p0
.end method

.method public final component2()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/neopdf/PdfOpenResult;->isLinearized:Z

    return p0
.end method

.method public final component3()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/neopdf/PdfOpenResult;->isXrefValid:Z

    return p0
.end method

.method public final copy(IZZ)Lcom/onyx/android/sdk/neopdf/PdfOpenResult;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance p0, Lcom/onyx/android/sdk/neopdf/PdfOpenResult;

    invoke-direct {p0, p1, p2, p3}, Lcom/onyx/android/sdk/neopdf/PdfOpenResult;-><init>(IZZ)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/onyx/android/sdk/neopdf/PdfOpenResult;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/onyx/android/sdk/neopdf/PdfOpenResult;

    iget v1, p0, Lcom/onyx/android/sdk/neopdf/PdfOpenResult;->openCode:I

    iget v3, p1, Lcom/onyx/android/sdk/neopdf/PdfOpenResult;->openCode:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-boolean v1, p0, Lcom/onyx/android/sdk/neopdf/PdfOpenResult;->isLinearized:Z

    iget-boolean v3, p1, Lcom/onyx/android/sdk/neopdf/PdfOpenResult;->isLinearized:Z

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-boolean p0, p0, Lcom/onyx/android/sdk/neopdf/PdfOpenResult;->isXrefValid:Z

    iget-boolean p1, p1, Lcom/onyx/android/sdk/neopdf/PdfOpenResult;->isXrefValid:Z

    if-eq p0, p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getOpenCode()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/neopdf/PdfOpenResult;->openCode:I

    return p0
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Lcom/onyx/android/sdk/neopdf/PdfOpenResult;->openCode:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/onyx/android/sdk/neopdf/PdfOpenResult;->isLinearized:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    move v1, v2

    :cond_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean p0, p0, Lcom/onyx/android/sdk/neopdf/PdfOpenResult;->isXrefValid:Z

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    move v2, p0

    :goto_0
    add-int/2addr v0, v2

    return v0
.end method

.method public final isLinearized()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/neopdf/PdfOpenResult;->isLinearized:Z

    return p0
.end method

.method public final isXrefValid()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/neopdf/PdfOpenResult;->isXrefValid:Z

    return p0
.end method

.method public final setLinearized(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/neopdf/PdfOpenResult;->isLinearized:Z

    return-void
.end method

.method public final setOpenCode(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/neopdf/PdfOpenResult;->openCode:I

    return-void
.end method

.method public final setXrefValid(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/neopdf/PdfOpenResult;->isXrefValid:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PdfOpenResult(openCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/onyx/android/sdk/neopdf/PdfOpenResult;->openCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isLinearized="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/onyx/android/sdk/neopdf/PdfOpenResult;->isLinearized:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isXrefValid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/onyx/android/sdk/neopdf/PdfOpenResult;->isXrefValid:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
