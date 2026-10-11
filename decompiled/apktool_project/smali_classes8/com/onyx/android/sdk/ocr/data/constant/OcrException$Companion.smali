.class public final Lcom/onyx/android/sdk/ocr/data/constant/OcrException$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/android/sdk/ocr/data/constant/OcrException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0003\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\tJ\u0016\u0010\u0007\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\tJ\u001e\u0010\u0007\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\t2\u0006\u0010\u000c\u001a\u00020\rJ\u000e\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\u000fJ\u0016\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u000b\u001a\u00020\tJ(\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\n\u001a\u00020\t2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\t2\u0006\u0010\u000c\u001a\u00020\rR\u0011\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/onyx/android/sdk/ocr/data/constant/OcrException$Companion;",
        "",
        "()V",
        "NONE",
        "Lcom/onyx/android/sdk/ocr/data/constant/OcrException;",
        "getNONE",
        "()Lcom/onyx/android/sdk/ocr/data/constant/OcrException;",
        "of",
        "typeAndMessage",
        "",
        "type",
        "message",
        "code",
        "",
        "e",
        "",
        "sdk-ocr_release"
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
    invoke-direct {p0}, Lcom/onyx/android/sdk/ocr/data/constant/OcrException$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getNONE()Lcom/onyx/android/sdk/ocr/data/constant/OcrException;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {}, Lcom/onyx/android/sdk/ocr/data/constant/OcrException;->access$getNONE$cp()Lcom/onyx/android/sdk/ocr/data/constant/OcrException;

    move-result-object p0

    return-object p0
.end method

.method public final of(Ljava/lang/String;)Lcom/onyx/android/sdk/ocr/data/constant/OcrException;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "typeAndMessage"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p1, p1}, Lcom/onyx/android/sdk/ocr/data/constant/OcrException$Companion;->of(Ljava/lang/String;Ljava/lang/String;)Lcom/onyx/android/sdk/ocr/data/constant/OcrException;

    move-result-object p0

    return-object p0
.end method

.method public final of(Ljava/lang/String;Ljava/lang/String;)Lcom/onyx/android/sdk/ocr/data/constant/OcrException;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, -0x1

    .line 2
    invoke-virtual {p0, p1, p2, v0}, Lcom/onyx/android/sdk/ocr/data/constant/OcrException$Companion;->of(Ljava/lang/String;Ljava/lang/String;I)Lcom/onyx/android/sdk/ocr/data/constant/OcrException;

    move-result-object p0

    return-object p0
.end method

.method public final of(Ljava/lang/String;Ljava/lang/String;I)Lcom/onyx/android/sdk/ocr/data/constant/OcrException;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "type"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "message"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance p0, Lcom/onyx/android/sdk/ocr/data/constant/OcrException;

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/onyx/android/sdk/ocr/data/constant/OcrException;-><init>(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 4
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/ocr/data/constant/OcrException;->setType(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0, p3}, Lcom/onyx/android/sdk/ocr/data/constant/OcrException;->setCode(I)V

    return-object p0
.end method

.method public final of(Ljava/lang/Throwable;)Lcom/onyx/android/sdk/ocr/data/constant/OcrException;
    .locals 3
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getSimpleName(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/onyx/android/sdk/ocr/data/constant/OcrException$Companion;->of(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;I)Lcom/onyx/android/sdk/ocr/data/constant/OcrException;

    move-result-object p0

    return-object p0
.end method

.method public final of(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/onyx/android/sdk/ocr/data/constant/OcrException;
    .locals 2
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getSimpleName(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, -0x1

    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/onyx/android/sdk/ocr/data/constant/OcrException$Companion;->of(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;I)Lcom/onyx/android/sdk/ocr/data/constant/OcrException;

    move-result-object p0

    return-object p0
.end method

.method public final of(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;I)Lcom/onyx/android/sdk/ocr/data/constant/OcrException;
    .locals 1
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "e"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "type"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p3, :cond_0

    const-string p3, ""

    .line 8
    :cond_0
    new-instance p0, Lcom/onyx/android/sdk/ocr/data/constant/OcrException;

    const/4 v0, 0x0

    invoke-direct {p0, p1, p3, v0}, Lcom/onyx/android/sdk/ocr/data/constant/OcrException;-><init>(Ljava/lang/Throwable;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 9
    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/ocr/data/constant/OcrException;->setType(Ljava/lang/String;)V

    .line 10
    invoke-virtual {p0, p4}, Lcom/onyx/android/sdk/ocr/data/constant/OcrException;->setCode(I)V

    return-object p0
.end method
