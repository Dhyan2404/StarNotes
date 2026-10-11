.class public final Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$PageMargin$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$PageMargin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$PageMargin$Companion;",
        "",
        "()V",
        "copy",
        "Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$PageMargin;",
        "pageMargin",
        "sdk-readercore_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$PageMargin$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final copy(Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$PageMargin;)Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$PageMargin;
    .locals 4
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$PageMargin;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance p0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$PageMargin;

    sget-object v0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;->Companion:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage$Companion;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$PageMargin;->getLeftMargin()Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;->getPercent()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage$Companion;->create(I)Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;

    move-result-object v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$PageMargin;->getBottomMargin()Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;->getPercent()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage$Companion;->create(I)Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;

    move-result-object v2

    invoke-virtual {p1}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$PageMargin;->getRightMargin()Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;->getPercent()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage$Companion;->create(I)Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;

    move-result-object v3

    invoke-virtual {p1}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$PageMargin;->getTopMargin()Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;->getPercent()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage$Companion;->create(I)Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;

    move-result-object p1

    invoke-direct {p0, v1, v2, v3, p1}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$PageMargin;-><init>(Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;)V

    return-object p0
.end method
