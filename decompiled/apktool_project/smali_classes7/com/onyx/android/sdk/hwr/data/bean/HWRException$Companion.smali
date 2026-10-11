.class public final Lcom/onyx/android/sdk/hwr/data/bean/HWRException$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/android/sdk/hwr/data/bean/HWRException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0018\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008J\u0018\u0010\u0003\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\n2\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008J\u0010\u0010\u0003\u001a\u00020\u00042\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008J\u0018\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\u000c2\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008J\u0013\u0010\r\u001a\u00020\u000e2\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0008H\u0086\u0008\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/onyx/android/sdk/hwr/data/bean/HWRException$Companion;",
        "",
        "()V",
        "of",
        "Lcom/onyx/android/sdk/hwr/data/bean/HWRException;",
        "type",
        "Lcom/onyx/android/sdk/hwr/data/bean/HWRException$ExceptionType;",
        "message",
        "",
        "code",
        "",
        "e",
        "",
        "throwInitRecognizerFailException",
        "",
        "sdk-hwr_release"
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
    invoke-direct {p0}, Lcom/onyx/android/sdk/hwr/data/bean/HWRException$Companion;-><init>()V

    return-void
.end method

.method public static synthetic throwInitRecognizerFailException$default(Lcom/onyx/android/sdk/hwr/data/bean/HWRException$Companion;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const-string p1, ""

    :cond_0
    const-string p2, "message"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p2, Lcom/onyx/android/sdk/hwr/data/bean/HWRException$ExceptionType;->RECOGNIZER_INIT_FAIL:Lcom/onyx/android/sdk/hwr/data/bean/HWRException$ExceptionType;

    invoke-virtual {p0, p2, p1}, Lcom/onyx/android/sdk/hwr/data/bean/HWRException$Companion;->of(Lcom/onyx/android/sdk/hwr/data/bean/HWRException$ExceptionType;Ljava/lang/String;)Lcom/onyx/android/sdk/hwr/data/bean/HWRException;

    move-result-object p0

    throw p0
.end method


# virtual methods
.method public final of(ILjava/lang/String;)Lcom/onyx/android/sdk/hwr/data/bean/HWRException;
    .locals 1
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 10
    new-instance p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRException;

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/onyx/android/sdk/hwr/data/bean/HWRException;-><init>(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 11
    sget-object p2, Lcom/onyx/android/sdk/hwr/data/bean/HWRException$ExceptionType;->UNDEFINED:Lcom/onyx/android/sdk/hwr/data/bean/HWRException$ExceptionType;

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/hwr/data/bean/HWRException;->setType(Lcom/onyx/android/sdk/hwr/data/bean/HWRException$ExceptionType;)V

    .line 12
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/hwr/data/bean/HWRException;->setCode(I)V

    return-object p0
.end method

.method public final of(Lcom/onyx/android/sdk/hwr/data/bean/HWRException$ExceptionType;Ljava/lang/String;)Lcom/onyx/android/sdk/hwr/data/bean/HWRException;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/hwr/data/bean/HWRException$ExceptionType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "type"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    new-instance p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRException;

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/onyx/android/sdk/hwr/data/bean/HWRException;-><init>(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/hwr/data/bean/HWRException;->setType(Lcom/onyx/android/sdk/hwr/data/bean/HWRException$ExceptionType;)V

    .line 6
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/hwr/data/bean/HWRException;->setCode(I)V

    return-object p0
.end method

.method public final of(Ljava/lang/String;)Lcom/onyx/android/sdk/hwr/data/bean/HWRException;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRException;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/onyx/android/sdk/hwr/data/bean/HWRException;-><init>(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 2
    sget-object p1, Lcom/onyx/android/sdk/hwr/data/bean/HWRException$ExceptionType;->UNDEFINED:Lcom/onyx/android/sdk/hwr/data/bean/HWRException$ExceptionType;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/hwr/data/bean/HWRException;->setType(Lcom/onyx/android/sdk/hwr/data/bean/HWRException$ExceptionType;)V

    .line 3
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/hwr/data/bean/HWRException;->setCode(I)V

    return-object p0
.end method

.method public final of(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/onyx/android/sdk/hwr/data/bean/HWRException;
    .locals 1
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "e"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    new-instance p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRException;

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/onyx/android/sdk/hwr/data/bean/HWRException;-><init>(Ljava/lang/Throwable;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 8
    sget-object p1, Lcom/onyx/android/sdk/hwr/data/bean/HWRException$ExceptionType;->UNDEFINED:Lcom/onyx/android/sdk/hwr/data/bean/HWRException$ExceptionType;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/hwr/data/bean/HWRException;->setType(Lcom/onyx/android/sdk/hwr/data/bean/HWRException$ExceptionType;)V

    .line 9
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/hwr/data/bean/HWRException;->setCode(I)V

    return-object p0
.end method

.method public final throwInitRecognizerFailException(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/hwr/data/bean/HWRException$ExceptionType;->RECOGNIZER_INIT_FAIL:Lcom/onyx/android/sdk/hwr/data/bean/HWRException$ExceptionType;

    invoke-virtual {p0, v0, p1}, Lcom/onyx/android/sdk/hwr/data/bean/HWRException$Companion;->of(Lcom/onyx/android/sdk/hwr/data/bean/HWRException$ExceptionType;Ljava/lang/String;)Lcom/onyx/android/sdk/hwr/data/bean/HWRException;

    move-result-object p0

    throw p0
.end method
