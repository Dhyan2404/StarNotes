.class public final Lcom/onyx/android/sdk/reader/api/TocSortArgs;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/reader/api/TocSortArgs$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u000f\u0018\u0000 \u00122\u00020\u0001:\u0001\u0012B\u0013\u0008\u0016\u0012\u0008\u0010\t\u001a\u0004\u0018\u00010\u0002\u00a2\u0006\u0004\u0008\u000f\u0010\u0010B#\u0008\u0016\u0012\u0008\u0010\t\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u000c\u001a\u00020\u0004\u0012\u0006\u0010\u000e\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u000f\u0010\u0011J\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002J\u0006\u0010\u0005\u001a\u00020\u0004J\u0006\u0010\u0006\u001a\u00020\u0004R\u0018\u0010\t\u001a\u0004\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0007\u0010\u0008R\u0016\u0010\u000c\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\n\u0010\u000bR\u0016\u0010\u000e\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\r\u0010\u000b\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/onyx/android/sdk/reader/api/TocSortArgs;",
        "",
        "Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContent;",
        "getToc",
        "",
        "getStartSortId",
        "getEndSortId",
        "a",
        "Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContent;",
        "toc",
        "b",
        "I",
        "startSortId",
        "c",
        "endSortId",
        "<init>",
        "(Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContent;)V",
        "(Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContent;II)V",
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
.field public static final Companion:Lcom/onyx/android/sdk/reader/api/TocSortArgs$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public a:Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContent;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public b:I

.field public c:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/reader/api/TocSortArgs$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/reader/api/TocSortArgs$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/reader/api/TocSortArgs;->Companion:Lcom/onyx/android/sdk/reader/api/TocSortArgs$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContent;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/onyx/android/sdk/reader/api/TocSortArgs;->a:Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContent;

    return-void
.end method

.method public constructor <init>(Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContent;II)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/onyx/android/sdk/reader/api/TocSortArgs;->a:Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContent;

    .line 5
    iput p2, p0, Lcom/onyx/android/sdk/reader/api/TocSortArgs;->b:I

    .line 6
    iput p3, p0, Lcom/onyx/android/sdk/reader/api/TocSortArgs;->c:I

    return-void
.end method


# virtual methods
.method public final getEndSortId()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/reader/api/TocSortArgs;->c:I

    return p0
.end method

.method public final getStartSortId()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/reader/api/TocSortArgs;->b:I

    return p0
.end method

.method public final getToc()Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContent;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/api/TocSortArgs;->a:Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContent;

    return-object p0
.end method
