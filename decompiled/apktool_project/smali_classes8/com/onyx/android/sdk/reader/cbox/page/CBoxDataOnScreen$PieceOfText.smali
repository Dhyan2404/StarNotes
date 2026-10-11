.class public final Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfText;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PieceOfText"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfText$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0016\u0018\u0000  2\u00020\u0001:\u0001 B\u0019\u0012\u0006\u0010\u0010\u001a\u00020\u000b\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u001e\u0010\u001fJ\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0002J\u0011\u0010\u0008\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0005H\u0086\u0002J\u0008\u0010\n\u001a\u00020\tH\u0016R\u0017\u0010\u0010\u001a\u00020\u000b8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000c\u0010\r\u001a\u0004\u0008\u000e\u0010\u000fR\u0017\u0010\u0006\u001a\u00020\u00058\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0011\u0010\u0012\u001a\u0004\u0008\u0013\u0010\u0014R\"\u0010\u0003\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0015\u0010\u0016\u001a\u0004\u0008\u0017\u0010\u0018\"\u0004\u0008\u0004\u0010\u0019R\u0011\u0010\u001b\u001a\u00020\u00028F\u00a2\u0006\u0006\u001a\u0004\u0008\u001a\u0010\u0018R\u0011\u0010\u001d\u001a\u00020\u00028F\u00a2\u0006\u0006\u001a\u0004\u0008\u001c\u0010\u0018\u00a8\u0006!"
    }
    d2 = {
        "Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfText;",
        "",
        "",
        "pageNumber",
        "setPageNumber",
        "Lcom/onyx/android/sdk/reader/api/ReaderPosition;",
        "position",
        "",
        "contains",
        "",
        "toString",
        "Lcom/onyx/engine/sdk/CellOfScreen;",
        "a",
        "Lcom/onyx/engine/sdk/CellOfScreen;",
        "getCellOfScreen",
        "()Lcom/onyx/engine/sdk/CellOfScreen;",
        "cellOfScreen",
        "b",
        "Lcom/onyx/android/sdk/reader/api/ReaderPosition;",
        "getPosition",
        "()Lcom/onyx/android/sdk/reader/api/ReaderPosition;",
        "c",
        "I",
        "getPageNumber",
        "()I",
        "(I)V",
        "getScreenLineNumber",
        "screenLineNumber",
        "getScreenParagraphNumber",
        "screenParagraphNumber",
        "<init>",
        "(Lcom/onyx/engine/sdk/CellOfScreen;Lcom/onyx/android/sdk/reader/api/ReaderPosition;)V",
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
.field public static final Companion:Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfText$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final d:I = 0x186a0

.field public static final e:I = 0x3e8


# instance fields
.field public final a:Lcom/onyx/engine/sdk/CellOfScreen;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Lcom/onyx/android/sdk/reader/api/ReaderPosition;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public c:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfText$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfText$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfText;->Companion:Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfText$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/onyx/engine/sdk/CellOfScreen;Lcom/onyx/android/sdk/reader/api/ReaderPosition;)V
    .locals 1
    .param p1    # Lcom/onyx/engine/sdk/CellOfScreen;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/reader/api/ReaderPosition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "cellOfScreen"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "position"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfText;->a:Lcom/onyx/engine/sdk/CellOfScreen;

    .line 2
    iput-object p2, p0, Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfText;->b:Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/onyx/engine/sdk/CellOfScreen;Lcom/onyx/android/sdk/reader/api/ReaderPosition;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 3
    sget-object p2, Lcom/onyx/android/sdk/reader/cbox/utils/CBoxUtils;->INSTANCE:Lcom/onyx/android/sdk/reader/cbox/utils/CBoxUtils;

    invoke-virtual {p1}, Lcom/onyx/engine/sdk/CellOfScreen;->getPosition()Lcom/onyx/engine/sdk/PinPosition;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/onyx/android/sdk/reader/cbox/utils/CBoxUtils;->convert(Lcom/onyx/engine/sdk/PinPosition;)Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    move-result-object p2

    .line 4
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfText;-><init>(Lcom/onyx/engine/sdk/CellOfScreen;Lcom/onyx/android/sdk/reader/api/ReaderPosition;)V

    return-void
.end method


# virtual methods
.method public final contains(Lcom/onyx/android/sdk/reader/api/ReaderPosition;)Z
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderPosition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "position"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfText;->b:Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    invoke-interface {v0}, Lcom/onyx/android/sdk/reader/api/ReaderPosition;->asInteger()I

    move-result v0

    iget-object v1, p0, Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfText;->b:Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    invoke-interface {v1}, Lcom/onyx/android/sdk/reader/api/ReaderPosition;->asInteger()I

    move-result v1

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfText;->a:Lcom/onyx/engine/sdk/CellOfScreen;

    invoke-virtual {p0}, Lcom/onyx/engine/sdk/CellOfScreen;->getTextLength()I

    move-result p0

    add-int/2addr v1, p0

    invoke-interface {p1}, Lcom/onyx/android/sdk/reader/api/ReaderPosition;->asInteger()I

    move-result p0

    const/4 p1, 0x0

    if-gt v0, p0, :cond_0

    if-ge p0, v1, :cond_0

    const/4 p1, 0x1

    :cond_0
    return p1
.end method

.method public final getCellOfScreen()Lcom/onyx/engine/sdk/CellOfScreen;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfText;->a:Lcom/onyx/engine/sdk/CellOfScreen;

    return-object p0
.end method

.method public final getPageNumber()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfText;->c:I

    return p0
.end method

.method public final getPosition()Lcom/onyx/android/sdk/reader/api/ReaderPosition;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfText;->b:Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    return-object p0
.end method

.method public final getScreenLineNumber()I
    .locals 2

    iget v0, p0, Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfText;->c:I

    const v1, 0x186a0

    mul-int/2addr v0, v1

    iget-object v1, p0, Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfText;->a:Lcom/onyx/engine/sdk/CellOfScreen;

    invoke-virtual {v1}, Lcom/onyx/engine/sdk/CellOfScreen;->getParaNumber()I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    add-int/2addr v0, v1

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfText;->a:Lcom/onyx/engine/sdk/CellOfScreen;

    invoke-virtual {p0}, Lcom/onyx/engine/sdk/CellOfScreen;->getLineNumber()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public final getScreenParagraphNumber()I
    .locals 2

    iget v0, p0, Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfText;->c:I

    const v1, 0x186a0

    mul-int/2addr v0, v1

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfText;->a:Lcom/onyx/engine/sdk/CellOfScreen;

    invoke-virtual {p0}, Lcom/onyx/engine/sdk/CellOfScreen;->getParaNumber()I

    move-result p0

    mul-int/lit16 p0, p0, 0x3e8

    add-int/2addr v0, p0

    return v0
.end method

.method public final setPageNumber(I)Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfText;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    iput p1, p0, Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfText;->c:I

    return-object p0
.end method

.method public final setPageNumber(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfText;->c:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PieceOfText(pageNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfText;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", cellOfScreen="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/cbox/page/CBoxDataOnScreen$PieceOfText;->a:Lcom/onyx/engine/sdk/CellOfScreen;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
