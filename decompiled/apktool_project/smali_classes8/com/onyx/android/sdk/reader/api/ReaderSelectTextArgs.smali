.class public final Lcom/onyx/android/sdk/reader/api/ReaderSelectTextArgs;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0002\u0008\u000c\n\u0002\u0010 \n\u0002\u0008\u0007\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u00002\u00020\u0001BE\u0012\u0006\u0010\t\u001a\u00020\u0002\u0012\u0006\u0010\u0011\u001a\u00020\n\u0012\u0008\u0008\u0002\u0010\u0015\u001a\u00020\u0012\u0012\u0008\u0008\u0002\u0010\u001a\u001a\u00020\u0012\u0012\u0008\u0008\u0002\u0010\u001d\u001a\u00020\u0012\u0012\u000e\u0008\u0002\u0010&\u001a\u0008\u0012\u0004\u0012\u00020\n0\u001f\u00a2\u0006\u0004\u0008-\u0010.R\"\u0010\t\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\"\u0010\u0011\u001a\u00020\n8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000b\u0010\u000c\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R\"\u0010\u0015\u001a\u00020\u00128\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0013\u0010\u0014\u001a\u0004\u0008\u0015\u0010\u0016\"\u0004\u0008\u0017\u0010\u0018R\"\u0010\u001a\u001a\u00020\u00128\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0019\u0010\u0014\u001a\u0004\u0008\u001a\u0010\u0016\"\u0004\u0008\u001b\u0010\u0018R\"\u0010\u001d\u001a\u00020\u00128\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001c\u0010\u0014\u001a\u0004\u0008\u001d\u0010\u0016\"\u0004\u0008\u001e\u0010\u0018R(\u0010&\u001a\u0008\u0012\u0004\u0012\u00020\n0\u001f8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008 \u0010!\u001a\u0004\u0008\"\u0010#\"\u0004\u0008$\u0010%R(\u0010,\u001a\u0008\u0012\u0004\u0012\u00020(0\'8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008)\u0010!\u001a\u0004\u0008*\u0010#\"\u0004\u0008+\u0010%\u00a8\u0006/"
    }
    d2 = {
        "Lcom/onyx/android/sdk/reader/api/ReaderSelectTextArgs;",
        "",
        "Lcom/onyx/android/sdk/reader/api/ReaderPosition;",
        "a",
        "Lcom/onyx/android/sdk/reader/api/ReaderPosition;",
        "getPagePosition",
        "()Lcom/onyx/android/sdk/reader/api/ReaderPosition;",
        "setPagePosition",
        "(Lcom/onyx/android/sdk/reader/api/ReaderPosition;)V",
        "pagePosition",
        "Landroid/graphics/RectF;",
        "b",
        "Landroid/graphics/RectF;",
        "getShapeRect",
        "()Landroid/graphics/RectF;",
        "setShapeRect",
        "(Landroid/graphics/RectF;)V",
        "shapeRect",
        "",
        "c",
        "Z",
        "isLine",
        "()Z",
        "setLine",
        "(Z)V",
        "d",
        "isCover",
        "setCover",
        "e",
        "isScreenPage",
        "setScreenPage",
        "",
        "f",
        "Ljava/util/List;",
        "getAllCharRectList",
        "()Ljava/util/List;",
        "setAllCharRectList",
        "(Ljava/util/List;)V",
        "allCharRectList",
        "",
        "Landroid/graphics/Region;",
        "g",
        "getShapeRegionList",
        "setShapeRegionList",
        "shapeRegionList",
        "<init>",
        "(Lcom/onyx/android/sdk/reader/api/ReaderPosition;Landroid/graphics/RectF;ZZZLjava/util/List;)V",
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
.field public a:Lcom/onyx/android/sdk/reader/api/ReaderPosition;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public b:Landroid/graphics/RectF;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public c:Z

.field public d:Z

.field public e:Z

.field public f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Landroid/graphics/RectF;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/Region;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/reader/api/ReaderPosition;Landroid/graphics/RectF;ZZZLjava/util/List;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderPosition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/reader/api/ReaderPosition;",
            "Landroid/graphics/RectF;",
            "ZZZ",
            "Ljava/util/List<",
            "+",
            "Landroid/graphics/RectF;",
            ">;)V"
        }
    .end annotation

    const-string v0, "pagePosition"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "shapeRect"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "allCharRectList"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/onyx/android/sdk/reader/api/ReaderSelectTextArgs;->a:Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    .line 3
    iput-object p2, p0, Lcom/onyx/android/sdk/reader/api/ReaderSelectTextArgs;->b:Landroid/graphics/RectF;

    .line 4
    iput-boolean p3, p0, Lcom/onyx/android/sdk/reader/api/ReaderSelectTextArgs;->c:Z

    .line 5
    iput-boolean p4, p0, Lcom/onyx/android/sdk/reader/api/ReaderSelectTextArgs;->d:Z

    .line 6
    iput-boolean p5, p0, Lcom/onyx/android/sdk/reader/api/ReaderSelectTextArgs;->e:Z

    .line 7
    iput-object p6, p0, Lcom/onyx/android/sdk/reader/api/ReaderSelectTextArgs;->f:Ljava/util/List;

    .line 8
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/reader/api/ReaderSelectTextArgs;->g:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/onyx/android/sdk/reader/api/ReaderPosition;Landroid/graphics/RectF;ZZZLjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 9

    and-int/lit8 v0, p7, 0x4

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move v5, v1

    goto :goto_0

    :cond_0
    move v5, p3

    :goto_0
    and-int/lit8 v0, p7, 0x8

    if-eqz v0, :cond_1

    move v6, v1

    goto :goto_1

    :cond_1
    move v6, p4

    :goto_1
    and-int/lit8 v0, p7, 0x10

    if-eqz v0, :cond_2

    move v7, v1

    goto :goto_2

    :cond_2
    move v7, p5

    :goto_2
    and-int/lit8 v0, p7, 0x20

    if-eqz v0, :cond_3

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v8, v0

    goto :goto_3

    :cond_3
    move-object v8, p6

    :goto_3
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    .line 10
    invoke-direct/range {v2 .. v8}, Lcom/onyx/android/sdk/reader/api/ReaderSelectTextArgs;-><init>(Lcom/onyx/android/sdk/reader/api/ReaderPosition;Landroid/graphics/RectF;ZZZLjava/util/List;)V

    return-void
.end method


# virtual methods
.method public final getAllCharRectList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/graphics/RectF;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/api/ReaderSelectTextArgs;->f:Ljava/util/List;

    return-object p0
.end method

.method public final getPagePosition()Lcom/onyx/android/sdk/reader/api/ReaderPosition;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/api/ReaderSelectTextArgs;->a:Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    return-object p0
.end method

.method public final getShapeRect()Landroid/graphics/RectF;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/api/ReaderSelectTextArgs;->b:Landroid/graphics/RectF;

    return-object p0
.end method

.method public final getShapeRegionList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/graphics/Region;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/api/ReaderSelectTextArgs;->g:Ljava/util/List;

    return-object p0
.end method

.method public final isCover()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/reader/api/ReaderSelectTextArgs;->d:Z

    return p0
.end method

.method public final isLine()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/reader/api/ReaderSelectTextArgs;->c:Z

    return p0
.end method

.method public final isScreenPage()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/reader/api/ReaderSelectTextArgs;->e:Z

    return p0
.end method

.method public final setAllCharRectList(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroid/graphics/RectF;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/reader/api/ReaderSelectTextArgs;->f:Ljava/util/List;

    return-void
.end method

.method public final setCover(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/reader/api/ReaderSelectTextArgs;->d:Z

    return-void
.end method

.method public final setLine(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/reader/api/ReaderSelectTextArgs;->c:Z

    return-void
.end method

.method public final setPagePosition(Lcom/onyx/android/sdk/reader/api/ReaderPosition;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderPosition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/reader/api/ReaderSelectTextArgs;->a:Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    return-void
.end method

.method public final setScreenPage(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/reader/api/ReaderSelectTextArgs;->e:Z

    return-void
.end method

.method public final setShapeRect(Landroid/graphics/RectF;)V
    .locals 1
    .param p1    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/reader/api/ReaderSelectTextArgs;->b:Landroid/graphics/RectF;

    return-void
.end method

.method public final setShapeRegionList(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/Region;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/reader/api/ReaderSelectTextArgs;->g:Ljava/util/List;

    return-void
.end method
