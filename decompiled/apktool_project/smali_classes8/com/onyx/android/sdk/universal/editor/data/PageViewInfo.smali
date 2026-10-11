.class public final Lcom/onyx/android/sdk/universal/editor/data/PageViewInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\r\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u0015\u001a\u00020\u0000J\u0006\u0010\u0016\u001a\u00020\u0004R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001a\u0010\t\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u001a\u0010\u000f\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u0006\"\u0004\u0008\u0011\u0010\u0008R\u001a\u0010\u0012\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u000c\"\u0004\u0008\u0014\u0010\u000e\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/data/PageViewInfo;",
        "",
        "()V",
        "colorTheme",
        "",
        "getColorTheme",
        "()I",
        "setColorTheme",
        "(I)V",
        "contentType",
        "",
        "getContentType",
        "()Ljava/lang/String;",
        "setContentType",
        "(Ljava/lang/String;)V",
        "pageIndex",
        "getPageIndex",
        "setPageIndex",
        "pageLabel",
        "getPageLabel",
        "setPageLabel",
        "copy",
        "pageNumber",
        "sdk-universal_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private colorTheme:I

.field private contentType:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private pageIndex:I

.field private pageLabel:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/onyx/android/sdk/universal/editor/data/PageViewInfo;->pageLabel:Ljava/lang/String;

    iput-object v0, p0, Lcom/onyx/android/sdk/universal/editor/data/PageViewInfo;->contentType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final copy()Lcom/onyx/android/sdk/universal/editor/data/PageViewInfo;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/data/PageViewInfo;

    invoke-direct {v0}, Lcom/onyx/android/sdk/universal/editor/data/PageViewInfo;-><init>()V

    iget v1, p0, Lcom/onyx/android/sdk/universal/editor/data/PageViewInfo;->pageIndex:I

    iput v1, v0, Lcom/onyx/android/sdk/universal/editor/data/PageViewInfo;->pageIndex:I

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/data/PageViewInfo;->pageLabel:Ljava/lang/String;

    iput-object v1, v0, Lcom/onyx/android/sdk/universal/editor/data/PageViewInfo;->pageLabel:Ljava/lang/String;

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/data/PageViewInfo;->contentType:Ljava/lang/String;

    iput-object p0, v0, Lcom/onyx/android/sdk/universal/editor/data/PageViewInfo;->contentType:Ljava/lang/String;

    return-object v0
.end method

.method public final getColorTheme()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/universal/editor/data/PageViewInfo;->colorTheme:I

    return p0
.end method

.method public final getContentType()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/data/PageViewInfo;->contentType:Ljava/lang/String;

    return-object p0
.end method

.method public final getPageIndex()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/universal/editor/data/PageViewInfo;->pageIndex:I

    return p0
.end method

.method public final getPageLabel()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/data/PageViewInfo;->pageLabel:Ljava/lang/String;

    return-object p0
.end method

.method public final pageNumber()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/universal/editor/data/PageViewInfo;->pageIndex:I

    add-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final setColorTheme(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/universal/editor/data/PageViewInfo;->colorTheme:I

    return-void
.end method

.method public final setContentType(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/data/PageViewInfo;->contentType:Ljava/lang/String;

    return-void
.end method

.method public final setPageIndex(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/universal/editor/data/PageViewInfo;->pageIndex:I

    return-void
.end method

.method public final setPageLabel(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/data/PageViewInfo;->pageLabel:Ljava/lang/String;

    return-void
.end method
