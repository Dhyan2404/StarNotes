.class public final Lcom/onyx/android/sdk/reader/api/ReaderWritingMode$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/android/sdk/reader/api/ReaderWritingMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0014\u0010\u0003\u001a\u00020\u00042\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006J\u0014\u0010\u0008\u001a\u00020\u00042\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/onyx/android/sdk/reader/api/ReaderWritingMode$Companion;",
        "",
        "()V",
        "analysePageWritingModeByBlockRect",
        "Lcom/onyx/android/sdk/reader/api/ReaderWritingMode;",
        "list",
        "",
        "Landroid/graphics/RectF;",
        "analysePageWritingModeByCharRect",
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
    invoke-direct {p0}, Lcom/onyx/android/sdk/reader/api/ReaderWritingMode$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final analysePageWritingModeByBlockRect(Ljava/util/List;)Lcom/onyx/android/sdk/reader/api/ReaderWritingMode;
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroid/graphics/RectF;",
            ">;)",
            "Lcom/onyx/android/sdk/reader/api/ReaderWritingMode;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "list"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/onyx/android/sdk/reader/utils/ReaderSelectionUtils;->INSTANCE:Lcom/onyx/android/sdk/reader/utils/ReaderSelectionUtils;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/utils/ReaderSelectionUtils;->analysePageWritingModeByBlockRect(Ljava/util/List;)Lcom/onyx/android/sdk/reader/api/ReaderWritingMode;

    move-result-object p0

    return-object p0
.end method

.method public final analysePageWritingModeByCharRect(Ljava/util/List;)Lcom/onyx/android/sdk/reader/api/ReaderWritingMode;
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroid/graphics/RectF;",
            ">;)",
            "Lcom/onyx/android/sdk/reader/api/ReaderWritingMode;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "list"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/onyx/android/sdk/reader/utils/ReaderSelectionUtils;->INSTANCE:Lcom/onyx/android/sdk/reader/utils/ReaderSelectionUtils;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/utils/ReaderSelectionUtils;->analysePageWritingModeByCharRect(Ljava/util/List;)Lcom/onyx/android/sdk/reader/api/ReaderWritingMode;

    move-result-object p0

    return-object p0
.end method
