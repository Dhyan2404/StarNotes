.class public final Lcom/onyx/android/sdk/data/common/data/SearchProgressResult;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0008\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u0007\n\u0002\u0008\u000b\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0016\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020\u00132\u0006\u0010!\u001a\u00020\u0013R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001a\u0010\t\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u0006\"\u0004\u0008\u000b\u0010\u0008R\u001a\u0010\u000c\u001a\u00020\rX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011R\u001a\u0010\u0012\u001a\u00020\u0013X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015\"\u0004\u0008\u0016\u0010\u0017R\u001a\u0010\u0018\u001a\u00020\u0013X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0019\u0010\u0015\"\u0004\u0008\u001a\u0010\u0017R\u001a\u0010\u001b\u001a\u00020\rX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001c\u0010\u000f\"\u0004\u0008\u001d\u0010\u0011\u00a8\u0006\""
    }
    d2 = {
        "Lcom/onyx/android/sdk/data/common/data/SearchProgressResult;",
        "",
        "()V",
        "currentSearchId",
        "",
        "getCurrentSearchId",
        "()Ljava/lang/String;",
        "setCurrentSearchId",
        "(Ljava/lang/String;)V",
        "currentSearchName",
        "getCurrentSearchName",
        "setCurrentSearchName",
        "maxSearchCount",
        "",
        "getMaxSearchCount",
        "()I",
        "setMaxSearchCount",
        "(I)V",
        "maxSearchProgress",
        "",
        "getMaxSearchProgress",
        "()F",
        "setMaxSearchProgress",
        "(F)V",
        "searchProgress",
        "getSearchProgress",
        "setSearchProgress",
        "searchedCount",
        "getSearchedCount",
        "setSearchedCount",
        "updateSearchProgress",
        "",
        "totalProgress",
        "deltaProgress",
        "sdk-data_release"
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
.field private currentSearchId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private currentSearchName:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private maxSearchCount:I

.field private maxSearchProgress:F

.field private searchProgress:F

.field private searchedCount:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/onyx/android/sdk/data/common/data/SearchProgressResult;->currentSearchId:Ljava/lang/String;

    iput-object v0, p0, Lcom/onyx/android/sdk/data/common/data/SearchProgressResult;->currentSearchName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getCurrentSearchId()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/data/common/data/SearchProgressResult;->currentSearchId:Ljava/lang/String;

    return-object p0
.end method

.method public final getCurrentSearchName()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/data/common/data/SearchProgressResult;->currentSearchName:Ljava/lang/String;

    return-object p0
.end method

.method public final getMaxSearchCount()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/data/common/data/SearchProgressResult;->maxSearchCount:I

    return p0
.end method

.method public final getMaxSearchProgress()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/data/common/data/SearchProgressResult;->maxSearchProgress:F

    return p0
.end method

.method public final getSearchProgress()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/data/common/data/SearchProgressResult;->searchProgress:F

    return p0
.end method

.method public final getSearchedCount()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/data/common/data/SearchProgressResult;->searchedCount:I

    return p0
.end method

.method public final setCurrentSearchId(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/data/common/data/SearchProgressResult;->currentSearchId:Ljava/lang/String;

    return-void
.end method

.method public final setCurrentSearchName(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/data/common/data/SearchProgressResult;->currentSearchName:Ljava/lang/String;

    return-void
.end method

.method public final setMaxSearchCount(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/data/common/data/SearchProgressResult;->maxSearchCount:I

    return-void
.end method

.method public final setMaxSearchProgress(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/data/common/data/SearchProgressResult;->maxSearchProgress:F

    return-void
.end method

.method public final setSearchProgress(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/data/common/data/SearchProgressResult;->searchProgress:F

    return-void
.end method

.method public final setSearchedCount(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/data/common/data/SearchProgressResult;->searchedCount:I

    return-void
.end method

.method public final updateSearchProgress(FF)V
    .locals 1

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    iput p1, p0, Lcom/onyx/android/sdk/data/common/data/SearchProgressResult;->maxSearchProgress:F

    :cond_0
    iget p1, p0, Lcom/onyx/android/sdk/data/common/data/SearchProgressResult;->searchProgress:F

    add-float/2addr p1, p2

    iput p1, p0, Lcom/onyx/android/sdk/data/common/data/SearchProgressResult;->searchProgress:F

    return-void
.end method
