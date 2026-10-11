.class public final Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$TextSpacingTrim$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$TextSpacingTrim;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$TextSpacingTrim$Companion;",
        "",
        "()V",
        "valueOf",
        "Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$TextSpacingTrim;",
        "value",
        "",
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
    invoke-direct {p0}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$TextSpacingTrim$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final valueOf(I)Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$TextSpacingTrim;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$TextSpacingTrim;->values()[Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$TextSpacingTrim;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    if-ne v3, p1, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$TextSpacingTrim;->NORMAL:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$TextSpacingTrim;

    return-object p0
.end method
