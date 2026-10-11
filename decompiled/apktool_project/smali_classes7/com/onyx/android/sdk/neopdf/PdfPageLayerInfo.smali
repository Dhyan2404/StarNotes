.class public final Lcom/onyx/android/sdk/neopdf/PdfPageLayerInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/neopdf/PdfPageLayerInfo$Layer;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001:\u0001\rB\u0005\u00a2\u0006\u0002\u0010\u0002J\u0013\u0010\t\u001a\u00020\n2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000cH\u0096\u0002R\u0014\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u00068\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0008\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/onyx/android/sdk/neopdf/PdfPageLayerInfo;",
        "Ljava/io/Serializable;",
        "()V",
        "currentLayerId",
        "",
        "layers",
        "",
        "Lcom/onyx/android/sdk/neopdf/PdfPageLayerInfo$Layer;",
        "[Lcom/onyx/android/sdk/neopdf/PdfPageLayerInfo$Layer;",
        "equals",
        "",
        "obj",
        "",
        "Layer",
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
.field public currentLayerId:Ljava/lang/String;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public layers:[Lcom/onyx/android/sdk/neopdf/PdfPageLayerInfo$Layer;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/onyx/android/sdk/neopdf/PdfPageLayerInfo;

    if-nez v1, :cond_1

    return v0

    :cond_1
    iget-object v1, p0, Lcom/onyx/android/sdk/neopdf/PdfPageLayerInfo;->currentLayerId:Ljava/lang/String;

    check-cast p1, Lcom/onyx/android/sdk/neopdf/PdfPageLayerInfo;

    iget-object v2, p1, Lcom/onyx/android/sdk/neopdf/PdfPageLayerInfo;->currentLayerId:Ljava/lang/String;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v0

    :cond_2
    iget-object v1, p0, Lcom/onyx/android/sdk/neopdf/PdfPageLayerInfo;->layers:[Lcom/onyx/android/sdk/neopdf/PdfPageLayerInfo$Layer;

    const/4 v2, 0x1

    if-nez v1, :cond_3

    iget-object v3, p1, Lcom/onyx/android/sdk/neopdf/PdfPageLayerInfo;->layers:[Lcom/onyx/android/sdk/neopdf/PdfPageLayerInfo$Layer;

    if-nez v3, :cond_3

    return v2

    :cond_3
    if-eqz v1, :cond_9

    iget-object v3, p1, Lcom/onyx/android/sdk/neopdf/PdfPageLayerInfo;->layers:[Lcom/onyx/android/sdk/neopdf/PdfPageLayerInfo$Layer;

    if-nez v3, :cond_4

    goto :goto_2

    :cond_4
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    array-length v1, v1

    iget-object v3, p1, Lcom/onyx/android/sdk/neopdf/PdfPageLayerInfo;->layers:[Lcom/onyx/android/sdk/neopdf/PdfPageLayerInfo$Layer;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    array-length v3, v3

    if-eq v1, v3, :cond_5

    return v0

    :cond_5
    iget-object v1, p0, Lcom/onyx/android/sdk/neopdf/PdfPageLayerInfo;->layers:[Lcom/onyx/android/sdk/neopdf/PdfPageLayerInfo$Layer;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    array-length v1, v1

    move v3, v0

    :goto_0
    if-ge v3, v1, :cond_8

    iget-object v4, p0, Lcom/onyx/android/sdk/neopdf/PdfPageLayerInfo;->layers:[Lcom/onyx/android/sdk/neopdf/PdfPageLayerInfo$Layer;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    aget-object v4, v4, v3

    iget-object v4, v4, Lcom/onyx/android/sdk/neopdf/PdfPageLayerInfo$Layer;->id:Ljava/lang/String;

    iget-object v5, p1, Lcom/onyx/android/sdk/neopdf/PdfPageLayerInfo;->layers:[Lcom/onyx/android/sdk/neopdf/PdfPageLayerInfo$Layer;

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    aget-object v5, v5, v3

    iget-object v5, v5, Lcom/onyx/android/sdk/neopdf/PdfPageLayerInfo$Layer;->id:Ljava/lang/String;

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/onyx/android/sdk/neopdf/PdfPageLayerInfo;->layers:[Lcom/onyx/android/sdk/neopdf/PdfPageLayerInfo$Layer;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    aget-object v4, v4, v3

    iget-boolean v4, v4, Lcom/onyx/android/sdk/neopdf/PdfPageLayerInfo$Layer;->visible:Z

    iget-object v5, p1, Lcom/onyx/android/sdk/neopdf/PdfPageLayerInfo;->layers:[Lcom/onyx/android/sdk/neopdf/PdfPageLayerInfo$Layer;

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    aget-object v5, v5, v3

    iget-boolean v5, v5, Lcom/onyx/android/sdk/neopdf/PdfPageLayerInfo$Layer;->visible:Z

    if-eq v4, v5, :cond_6

    goto :goto_1

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_7
    :goto_1
    return v0

    :cond_8
    return v2

    :cond_9
    :goto_2
    return v0
.end method
