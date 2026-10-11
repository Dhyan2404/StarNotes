.class public final Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Percentage"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u000b\u0018\u0000 \u000f2\u00020\u0001:\u0001\u000fB\t\u0008\u0016\u00a2\u0006\u0004\u0008\r\u0010\u000eB\u0011\u0008\u0016\u0012\u0006\u0010\u000c\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\r\u0010\u000bJ\u0013\u0010\u0004\u001a\u00020\u00032\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0001H\u0096\u0002R\"\u0010\u000c\u001a\u00020\u00058\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0006\u0010\u0007\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000b\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;",
        "",
        "o",
        "",
        "equals",
        "",
        "a",
        "I",
        "getPercent",
        "()I",
        "setPercent",
        "(I)V",
        "percent",
        "<init>",
        "()V",
        "Companion",
        "sdk-readercore_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# static fields
.field public static final Companion:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public a:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;->Companion:Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;->a:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    instance-of v1, p1, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;

    if-eqz v1, :cond_0

    iget p0, p0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;->a:I

    check-cast p1, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;

    iget p1, p1, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;->a:I

    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public final getPercent()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;->a:I

    return p0
.end method

.method public final setPercent(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$Percentage;->a:I

    return-void
.end method
