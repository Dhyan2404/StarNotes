.class public Lcom/onyx/android/sdk/reader/impl/ReaderPositionImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/onyx/android/sdk/reader/api/ReaderPosition;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/reader/impl/ReaderPositionImpl$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u000f\u0008\u0016\u0018\u0000 \u001f2\u00020\u0001:\u0001\u001fB\u0007\u00a2\u0006\u0004\u0008\u001d\u0010\u001eJ\u0008\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\u0005\u001a\u00020\u00012\u0006\u0010\u0004\u001a\u00020\u0002H\u0016J\u0008\u0010\u0006\u001a\u00020\u0002H\u0016J\u0010\u0010\u0008\u001a\u00020\u00012\u0006\u0010\u0007\u001a\u00020\u0002H\u0016J\u0008\u0010\n\u001a\u00020\tH\u0016J\u0010\u0010\u000c\u001a\u00020\u00012\u0006\u0010\u000b\u001a\u00020\tH\u0016J\u0010\u0010\u000e\u001a\u00020\u00022\u0006\u0010\r\u001a\u00020\u0001H\u0016J\u0013\u0010\u0012\u001a\u00020\u00112\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u000fH\u0096\u0002J\u0008\u0010\u0013\u001a\u00020\u0001H\u0016R\u0016\u0010\u0004\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0014\u0010\u0015R\u0016\u0010\u0017\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0016\u0010\u0015R\u0016\u0010\u001a\u001a\u00020\t8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0018\u0010\u0019R\u0016\u0010\u001c\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001b\u0010\u0015\u00a8\u0006 "
    }
    d2 = {
        "Lcom/onyx/android/sdk/reader/impl/ReaderPositionImpl;",
        "Lcom/onyx/android/sdk/reader/api/ReaderPosition;",
        "",
        "getPageIndex",
        "pageIndex",
        "fromPageIndex",
        "asInteger",
        "value",
        "fromInteger",
        "",
        "asString",
        "string",
        "fromString",
        "otherPosition",
        "compare",
        "",
        "obj",
        "",
        "equals",
        "copy",
        "a",
        "I",
        "b",
        "intPosition",
        "c",
        "Ljava/lang/String;",
        "strPosition",
        "d",
        "positionType",
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
.field public static final Companion:Lcom/onyx/android/sdk/reader/impl/ReaderPositionImpl$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final POSITION_TYPE_INT:I = 0x1

.field public static final POSITION_TYPE_PAGE_INDEX:I = 0x4

.field public static final POSITION_TYPE_STRING:I = 0x2

.field public static final POSITION_TYPE_UNKNOWN:I

.field public static final e:Lcom/onyx/android/sdk/reader/api/ReaderPosition;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public a:I

.field public b:I

.field public c:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public d:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/reader/impl/ReaderPositionImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/reader/impl/ReaderPositionImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/reader/impl/ReaderPositionImpl;->Companion:Lcom/onyx/android/sdk/reader/impl/ReaderPositionImpl$Companion;

    new-instance v0, Lcom/onyx/android/sdk/reader/impl/ReaderPositionImpl$Companion$dummy$1;

    invoke-direct {v0}, Lcom/onyx/android/sdk/reader/impl/ReaderPositionImpl$Companion$dummy$1;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/reader/impl/ReaderPositionImpl;->e:Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/onyx/android/sdk/reader/impl/ReaderPositionImpl;->a:I

    iput v0, p0, Lcom/onyx/android/sdk/reader/impl/ReaderPositionImpl;->b:I

    const-string v0, ""

    iput-object v0, p0, Lcom/onyx/android/sdk/reader/impl/ReaderPositionImpl;->c:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$getDummy$cp()Lcom/onyx/android/sdk/reader/api/ReaderPosition;
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/reader/impl/ReaderPositionImpl;->e:Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    return-object v0
.end method


# virtual methods
.method public asInteger()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/reader/impl/ReaderPositionImpl;->b:I

    return p0
.end method

.method public asString()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/impl/ReaderPositionImpl;->c:Ljava/lang/String;

    return-object p0
.end method

.method public compare(Lcom/onyx/android/sdk/reader/api/ReaderPosition;)I
    .locals 3
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderPosition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "otherPosition"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Lcom/onyx/android/sdk/reader/impl/ReaderPositionImpl;->d:I

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/base/extension/IntKt;->hasFlag(II)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/onyx/android/sdk/reader/impl/ReaderPositionImpl;->a:I

    invoke-interface {p1}, Lcom/onyx/android/sdk/reader/api/ReaderPosition;->getPageIndex()I

    move-result v2

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v0

    if-nez v0, :cond_3

    iget v2, p0, Lcom/onyx/android/sdk/reader/impl/ReaderPositionImpl;->d:I

    invoke-static {v2, v1}, Lcom/onyx/android/sdk/base/extension/IntKt;->hasFlag(II)Z

    move-result v1

    if-eqz v1, :cond_3

    iget p0, p0, Lcom/onyx/android/sdk/reader/impl/ReaderPositionImpl;->b:I

    invoke-interface {p1}, Lcom/onyx/android/sdk/reader/api/ReaderPosition;->asInteger()I

    move-result p1

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/onyx/android/sdk/reader/impl/ReaderPositionImpl;->d:I

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/base/extension/IntKt;->hasFlag(II)Z

    move-result v0

    if-eqz v0, :cond_1

    iget p0, p0, Lcom/onyx/android/sdk/reader/impl/ReaderPositionImpl;->b:I

    invoke-interface {p1}, Lcom/onyx/android/sdk/reader/api/ReaderPosition;->asInteger()I

    move-result p1

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v0

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/onyx/android/sdk/reader/impl/ReaderPositionImpl;->d:I

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/base/extension/IntKt;->hasFlag(II)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/impl/ReaderPositionImpl;->c:Ljava/lang/String;

    invoke-interface {p1}, Lcom/onyx/android/sdk/reader/api/ReaderPosition;->asString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :cond_3
    :goto_0
    return v0
.end method

.method public copy()Lcom/onyx/android/sdk/reader/api/ReaderPosition;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lcom/onyx/android/sdk/reader/impl/ReaderPositionImpl;

    invoke-direct {v0}, Lcom/onyx/android/sdk/reader/impl/ReaderPositionImpl;-><init>()V

    iget v1, p0, Lcom/onyx/android/sdk/reader/impl/ReaderPositionImpl;->a:I

    iput v1, v0, Lcom/onyx/android/sdk/reader/impl/ReaderPositionImpl;->a:I

    iget v1, p0, Lcom/onyx/android/sdk/reader/impl/ReaderPositionImpl;->b:I

    iput v1, v0, Lcom/onyx/android/sdk/reader/impl/ReaderPositionImpl;->b:I

    iget-object v1, p0, Lcom/onyx/android/sdk/reader/impl/ReaderPositionImpl;->c:Ljava/lang/String;

    iput-object v1, v0, Lcom/onyx/android/sdk/reader/impl/ReaderPositionImpl;->c:Ljava/lang/String;

    iget p0, p0, Lcom/onyx/android/sdk/reader/impl/ReaderPositionImpl;->d:I

    iput p0, v0, Lcom/onyx/android/sdk/reader/impl/ReaderPositionImpl;->d:I

    return-object v0
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
    instance-of v1, p1, Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/impl/ReaderPositionImpl;->asInteger()I

    move-result v1

    check-cast p1, Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    invoke-interface {p1}, Lcom/onyx/android/sdk/reader/api/ReaderPosition;->asInteger()I

    move-result v3

    if-ne v1, v3, :cond_2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/impl/ReaderPositionImpl;->getPageIndex()I

    move-result v1

    invoke-interface {p1}, Lcom/onyx/android/sdk/reader/api/ReaderPosition;->getPageIndex()I

    move-result v3

    if-ne v1, v3, :cond_2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/impl/ReaderPositionImpl;->asString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1}, Lcom/onyx/android/sdk/reader/api/ReaderPosition;->asString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public fromInteger(I)Lcom/onyx/android/sdk/reader/api/ReaderPosition;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget v0, p0, Lcom/onyx/android/sdk/reader/impl/ReaderPositionImpl;->d:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/onyx/android/sdk/reader/impl/ReaderPositionImpl;->d:I

    iput p1, p0, Lcom/onyx/android/sdk/reader/impl/ReaderPositionImpl;->b:I

    return-object p0
.end method

.method public fromPageIndex(I)Lcom/onyx/android/sdk/reader/api/ReaderPosition;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget v0, p0, Lcom/onyx/android/sdk/reader/impl/ReaderPositionImpl;->d:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/onyx/android/sdk/reader/impl/ReaderPositionImpl;->d:I

    iput p1, p0, Lcom/onyx/android/sdk/reader/impl/ReaderPositionImpl;->a:I

    return-object p0
.end method

.method public fromString(Ljava/lang/String;)Lcom/onyx/android/sdk/reader/api/ReaderPosition;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "string"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Lcom/onyx/android/sdk/reader/impl/ReaderPositionImpl;->d:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/onyx/android/sdk/reader/impl/ReaderPositionImpl;->d:I

    iput-object p1, p0, Lcom/onyx/android/sdk/reader/impl/ReaderPositionImpl;->c:Ljava/lang/String;

    return-object p0
.end method

.method public getPageIndex()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/reader/impl/ReaderPositionImpl;->a:I

    return p0
.end method
