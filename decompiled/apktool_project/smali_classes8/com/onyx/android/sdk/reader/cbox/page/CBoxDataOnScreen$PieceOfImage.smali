.class public final Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfImage;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PieceOfImage"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\r\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u000c\u001a\u00020\u0007\u0012\u0008\u0008\u0002\u0010\u0012\u001a\u00020\r\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0002J\u0008\u0010\u0006\u001a\u00020\u0005H\u0016R\u0017\u0010\u000c\u001a\u00020\u00078\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010\t\u001a\u0004\u0008\n\u0010\u000bR\u0017\u0010\u0012\u001a\u00020\r8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000e\u0010\u000f\u001a\u0004\u0008\u0010\u0010\u0011R\"\u0010\u0003\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0013\u0010\u0014\u001a\u0004\u0008\u0015\u0010\u0016\"\u0004\u0008\u0004\u0010\u0017\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfImage;",
        "",
        "",
        "pageNumber",
        "setPageNumber",
        "",
        "toString",
        "Lcom/onyx/engine/sdk/ImageInfo;",
        "a",
        "Lcom/onyx/engine/sdk/ImageInfo;",
        "getImageInfo",
        "()Lcom/onyx/engine/sdk/ImageInfo;",
        "imageInfo",
        "Lcom/onyx/android/sdk/reader/api/ReaderPosition;",
        "b",
        "Lcom/onyx/android/sdk/reader/api/ReaderPosition;",
        "getPosition",
        "()Lcom/onyx/android/sdk/reader/api/ReaderPosition;",
        "position",
        "c",
        "I",
        "getPageNumber",
        "()I",
        "(I)V",
        "<init>",
        "(Lcom/onyx/engine/sdk/ImageInfo;Lcom/onyx/android/sdk/reader/api/ReaderPosition;)V",
        "sdk-readercore_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field public final a:Lcom/onyx/engine/sdk/ImageInfo;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Lcom/onyx/android/sdk/reader/api/ReaderPosition;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public c:I


# direct methods
.method public constructor <init>(Lcom/onyx/engine/sdk/ImageInfo;Lcom/onyx/android/sdk/reader/api/ReaderPosition;)V
    .locals 1
    .param p1    # Lcom/onyx/engine/sdk/ImageInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/reader/api/ReaderPosition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "imageInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "position"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfImage;->a:Lcom/onyx/engine/sdk/ImageInfo;

    .line 2
    iput-object p2, p0, Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfImage;->b:Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/onyx/engine/sdk/ImageInfo;Lcom/onyx/android/sdk/reader/api/ReaderPosition;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 3
    sget-object p2, Lcom/onyx/android/sdk/reader/cbox/utils/CBoxUtils;->INSTANCE:Lcom/onyx/android/sdk/reader/cbox/utils/CBoxUtils;

    invoke-virtual {p1}, Lcom/onyx/engine/sdk/ImageInfo;->getPosition()Lcom/onyx/engine/sdk/PinPosition;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/onyx/android/sdk/reader/cbox/utils/CBoxUtils;->convert(Lcom/onyx/engine/sdk/PinPosition;)Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    move-result-object p2

    .line 4
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfImage;-><init>(Lcom/onyx/engine/sdk/ImageInfo;Lcom/onyx/android/sdk/reader/api/ReaderPosition;)V

    return-void
.end method


# virtual methods
.method public final getImageInfo()Lcom/onyx/engine/sdk/ImageInfo;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfImage;->a:Lcom/onyx/engine/sdk/ImageInfo;

    return-object p0
.end method

.method public final getPageNumber()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfImage;->c:I

    return p0
.end method

.method public final getPosition()Lcom/onyx/android/sdk/reader/api/ReaderPosition;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfImage;->b:Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    return-object p0
.end method

.method public final setPageNumber(I)Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfImage;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    iput p1, p0, Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfImage;->c:I

    return-object p0
.end method

.method public final setPageNumber(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfImage;->c:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PieceOfImage(pageNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfImage;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", imageInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfImage;->a:Lcom/onyx/engine/sdk/ImageInfo;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
