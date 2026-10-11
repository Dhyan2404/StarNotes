.class public final Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfLink;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PieceOfLink"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u000f\n\u0002\u0010\u0008\n\u0002\u0008\n\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u000e\u001a\u00020\t\u0012\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u000f\u00a2\u0006\u0004\u0008\'\u0010(J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0002J\u0010\u0010\u0007\u001a\u00020\u00002\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005J\u0008\u0010\u0008\u001a\u00020\u0005H\u0016R\u0017\u0010\u000e\u001a\u00020\t8\u0006\u00a2\u0006\u000c\n\u0004\u0008\n\u0010\u000b\u001a\u0004\u0008\u000c\u0010\rR\u0017\u0010\u0014\u001a\u00020\u000f8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0010\u0010\u0011\u001a\u0004\u0008\u0012\u0010\u0013R\"\u0010\u0003\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0015\u0010\u0016\u001a\u0004\u0008\u0017\u0010\u0018\"\u0004\u0008\u0004\u0010\u0019R$\u0010\u0006\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001a\u0010\u001b\u001a\u0004\u0008\u001c\u0010\u001d\"\u0004\u0008\u0007\u0010\u001eR\"\u0010&\u001a\u00020\u001f8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008 \u0010!\u001a\u0004\u0008\"\u0010#\"\u0004\u0008$\u0010%\u00a8\u0006)"
    }
    d2 = {
        "Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfLink;",
        "",
        "Lcom/onyx/engine/sdk/LinkType;",
        "linkType",
        "setLinkType",
        "",
        "targetText",
        "setTargetText",
        "toString",
        "Lcom/onyx/engine/sdk/LinkInfo;",
        "a",
        "Lcom/onyx/engine/sdk/LinkInfo;",
        "getLinkInfo",
        "()Lcom/onyx/engine/sdk/LinkInfo;",
        "linkInfo",
        "Lcom/onyx/android/sdk/reader/api/ReaderPosition;",
        "b",
        "Lcom/onyx/android/sdk/reader/api/ReaderPosition;",
        "getPosition",
        "()Lcom/onyx/android/sdk/reader/api/ReaderPosition;",
        "position",
        "c",
        "Lcom/onyx/engine/sdk/LinkType;",
        "getLinkType",
        "()Lcom/onyx/engine/sdk/LinkType;",
        "(Lcom/onyx/engine/sdk/LinkType;)V",
        "d",
        "Ljava/lang/String;",
        "getTargetText",
        "()Ljava/lang/String;",
        "(Ljava/lang/String;)V",
        "",
        "e",
        "I",
        "getPageNumber",
        "()I",
        "setPageNumber",
        "(I)V",
        "pageNumber",
        "<init>",
        "(Lcom/onyx/engine/sdk/LinkInfo;Lcom/onyx/android/sdk/reader/api/ReaderPosition;)V",
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
.field public final a:Lcom/onyx/engine/sdk/LinkInfo;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Lcom/onyx/android/sdk/reader/api/ReaderPosition;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public c:Lcom/onyx/engine/sdk/LinkType;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public d:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public e:I


# direct methods
.method public constructor <init>(Lcom/onyx/engine/sdk/LinkInfo;Lcom/onyx/android/sdk/reader/api/ReaderPosition;)V
    .locals 1
    .param p1    # Lcom/onyx/engine/sdk/LinkInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/reader/api/ReaderPosition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "linkInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "position"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfLink;->a:Lcom/onyx/engine/sdk/LinkInfo;

    .line 2
    iput-object p2, p0, Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfLink;->b:Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    .line 3
    sget-object p2, Lcom/onyx/engine/sdk/LinkType;->NOT_LOADED:Lcom/onyx/engine/sdk/LinkType;

    iput-object p2, p0, Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfLink;->c:Lcom/onyx/engine/sdk/LinkType;

    .line 4
    invoke-virtual {p1}, Lcom/onyx/engine/sdk/LinkInfo;->getText()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfLink;->d:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/onyx/engine/sdk/LinkInfo;Lcom/onyx/android/sdk/reader/api/ReaderPosition;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 5
    sget-object p2, Lcom/onyx/android/sdk/reader/cbox/utils/CBoxUtils;->INSTANCE:Lcom/onyx/android/sdk/reader/cbox/utils/CBoxUtils;

    invoke-virtual {p1}, Lcom/onyx/engine/sdk/LinkInfo;->getPosition()Lcom/onyx/engine/sdk/PinPosition;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/onyx/android/sdk/reader/cbox/utils/CBoxUtils;->convert(Lcom/onyx/engine/sdk/PinPosition;)Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    move-result-object p2

    .line 6
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfLink;-><init>(Lcom/onyx/engine/sdk/LinkInfo;Lcom/onyx/android/sdk/reader/api/ReaderPosition;)V

    return-void
.end method


# virtual methods
.method public final getLinkInfo()Lcom/onyx/engine/sdk/LinkInfo;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfLink;->a:Lcom/onyx/engine/sdk/LinkInfo;

    return-object p0
.end method

.method public final getLinkType()Lcom/onyx/engine/sdk/LinkType;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfLink;->c:Lcom/onyx/engine/sdk/LinkType;

    return-object p0
.end method

.method public final getPageNumber()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfLink;->e:I

    return p0
.end method

.method public final getPosition()Lcom/onyx/android/sdk/reader/api/ReaderPosition;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfLink;->b:Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    return-object p0
.end method

.method public final getTargetText()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfLink;->d:Ljava/lang/String;

    return-object p0
.end method

.method public final setLinkType(Lcom/onyx/engine/sdk/LinkType;)Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfLink;
    .locals 1
    .param p1    # Lcom/onyx/engine/sdk/LinkType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "linkType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iput-object p1, p0, Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfLink;->c:Lcom/onyx/engine/sdk/LinkType;

    return-object p0
.end method

.method public final setLinkType(Lcom/onyx/engine/sdk/LinkType;)V
    .locals 1
    .param p1    # Lcom/onyx/engine/sdk/LinkType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfLink;->c:Lcom/onyx/engine/sdk/LinkType;

    return-void
.end method

.method public final setPageNumber(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfLink;->e:I

    return-void
.end method

.method public final setTargetText(Ljava/lang/String;)Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfLink;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    iput-object p1, p0, Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfLink;->d:Ljava/lang/String;

    return-object p0
.end method

.method public final setTargetText(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfLink;->d:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PieceOfLink(pageNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfLink;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", linkType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfLink;->c:Lcom/onyx/engine/sdk/LinkType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", linkInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfLink;->a:Lcom/onyx/engine/sdk/LinkInfo;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
