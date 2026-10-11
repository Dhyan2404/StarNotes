.class public final Lcom/onyx/android/sdk/note/common/data/excerpt/SaveTextExcerptArgs;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u000e\n\u0002\u0008\u000f\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\r\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u00085\u00106R(\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0004\u0010\u0005\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR\"\u0010\u0012\u001a\u00020\u000b8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000c\u0010\r\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011R\"\u0010\u0016\u001a\u00020\u000b8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0013\u0010\r\u001a\u0004\u0008\u0014\u0010\u000f\"\u0004\u0008\u0015\u0010\u0011R\"\u0010\u001a\u001a\u00020\u000b8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0017\u0010\r\u001a\u0004\u0008\u0018\u0010\u000f\"\u0004\u0008\u0019\u0010\u0011R\"\u0010\"\u001a\u00020\u001b8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001c\u0010\u001d\u001a\u0004\u0008\u001e\u0010\u001f\"\u0004\u0008 \u0010!R\"\u0010$\u001a\u00020#8\u0006@\u0006X\u0086.\u00a2\u0006\u0012\n\u0004\u0008$\u0010%\u001a\u0004\u0008&\u0010\'\"\u0004\u0008(\u0010)R\"\u0010+\u001a\u00020*8\u0006@\u0006X\u0086.\u00a2\u0006\u0012\n\u0004\u0008+\u0010,\u001a\u0004\u0008-\u0010.\"\u0004\u0008/\u00100R\"\u00104\u001a\u00020\u000b8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u00081\u0010\r\u001a\u0004\u00082\u0010\u000f\"\u0004\u00083\u0010\u0011\u00a8\u00067"
    }
    d2 = {
        "Lcom/onyx/android/sdk/note/common/data/excerpt/SaveTextExcerptArgs;",
        "",
        "",
        "Landroid/graphics/RectF;",
        "a",
        "Ljava/util/List;",
        "getDisplayRectFList",
        "()Ljava/util/List;",
        "setDisplayRectFList",
        "(Ljava/util/List;)V",
        "displayRectFList",
        "",
        "b",
        "Ljava/lang/String;",
        "getQuote",
        "()Ljava/lang/String;",
        "setQuote",
        "(Ljava/lang/String;)V",
        "quote",
        "c",
        "getStartPosition",
        "setStartPosition",
        "startPosition",
        "d",
        "getEndPosition",
        "setEndPosition",
        "endPosition",
        "Lcom/onyx/android/sdk/replicator/note/data/annotation/WritingMode;",
        "e",
        "Lcom/onyx/android/sdk/replicator/note/data/annotation/WritingMode;",
        "getWritingMode",
        "()Lcom/onyx/android/sdk/replicator/note/data/annotation/WritingMode;",
        "setWritingMode",
        "(Lcom/onyx/android/sdk/replicator/note/data/annotation/WritingMode;)V",
        "writingMode",
        "Lcom/onyx/android/sdk/note/common/data/shape/ExcerptAttr;",
        "excerptAttr",
        "Lcom/onyx/android/sdk/note/common/data/shape/ExcerptAttr;",
        "getExcerptAttr",
        "()Lcom/onyx/android/sdk/note/common/data/shape/ExcerptAttr;",
        "setExcerptAttr",
        "(Lcom/onyx/android/sdk/note/common/data/shape/ExcerptAttr;)V",
        "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
        "virtualPageBoxInfo",
        "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
        "getVirtualPageBoxInfo",
        "()Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
        "setVirtualPageBoxInfo",
        "(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V",
        "f",
        "getImgPath",
        "setImgPath",
        "imgPath",
        "<init>",
        "()V",
        "sdk-note_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/RectF;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public b:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public c:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public d:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public e:Lcom/onyx/android/sdk/replicator/note/data/annotation/WritingMode;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public excerptAttr:Lcom/onyx/android/sdk/note/common/data/shape/ExcerptAttr;

.field public f:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public virtualPageBoxInfo:Lcom/onyx/android/sdk/geometry/data/BoxInfo;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/note/common/data/excerpt/SaveTextExcerptArgs;->a:Ljava/util/List;

    const-string v0, ""

    iput-object v0, p0, Lcom/onyx/android/sdk/note/common/data/excerpt/SaveTextExcerptArgs;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/onyx/android/sdk/note/common/data/excerpt/SaveTextExcerptArgs;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/onyx/android/sdk/note/common/data/excerpt/SaveTextExcerptArgs;->d:Ljava/lang/String;

    sget-object v1, Lcom/onyx/android/sdk/replicator/note/data/annotation/WritingMode;->HORIZONTAL:Lcom/onyx/android/sdk/replicator/note/data/annotation/WritingMode;

    iput-object v1, p0, Lcom/onyx/android/sdk/note/common/data/excerpt/SaveTextExcerptArgs;->e:Lcom/onyx/android/sdk/replicator/note/data/annotation/WritingMode;

    iput-object v0, p0, Lcom/onyx/android/sdk/note/common/data/excerpt/SaveTextExcerptArgs;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getDisplayRectFList()Ljava/util/List;
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

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/data/excerpt/SaveTextExcerptArgs;->a:Ljava/util/List;

    return-object p0
.end method

.method public final getEndPosition()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/data/excerpt/SaveTextExcerptArgs;->d:Ljava/lang/String;

    return-object p0
.end method

.method public final getExcerptAttr()Lcom/onyx/android/sdk/note/common/data/shape/ExcerptAttr;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/data/excerpt/SaveTextExcerptArgs;->excerptAttr:Lcom/onyx/android/sdk/note/common/data/shape/ExcerptAttr;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "excerptAttr"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getImgPath()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/data/excerpt/SaveTextExcerptArgs;->f:Ljava/lang/String;

    return-object p0
.end method

.method public final getQuote()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/data/excerpt/SaveTextExcerptArgs;->b:Ljava/lang/String;

    return-object p0
.end method

.method public final getStartPosition()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/data/excerpt/SaveTextExcerptArgs;->c:Ljava/lang/String;

    return-object p0
.end method

.method public final getVirtualPageBoxInfo()Lcom/onyx/android/sdk/geometry/data/BoxInfo;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/data/excerpt/SaveTextExcerptArgs;->virtualPageBoxInfo:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "virtualPageBoxInfo"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getWritingMode()Lcom/onyx/android/sdk/replicator/note/data/annotation/WritingMode;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/data/excerpt/SaveTextExcerptArgs;->e:Lcom/onyx/android/sdk/replicator/note/data/annotation/WritingMode;

    return-object p0
.end method

.method public final setDisplayRectFList(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/RectF;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/note/common/data/excerpt/SaveTextExcerptArgs;->a:Ljava/util/List;

    return-void
.end method

.method public final setEndPosition(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/note/common/data/excerpt/SaveTextExcerptArgs;->d:Ljava/lang/String;

    return-void
.end method

.method public final setExcerptAttr(Lcom/onyx/android/sdk/note/common/data/shape/ExcerptAttr;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/note/common/data/shape/ExcerptAttr;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/note/common/data/excerpt/SaveTextExcerptArgs;->excerptAttr:Lcom/onyx/android/sdk/note/common/data/shape/ExcerptAttr;

    return-void
.end method

.method public final setImgPath(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/note/common/data/excerpt/SaveTextExcerptArgs;->f:Ljava/lang/String;

    return-void
.end method

.method public final setQuote(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/note/common/data/excerpt/SaveTextExcerptArgs;->b:Ljava/lang/String;

    return-void
.end method

.method public final setStartPosition(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/note/common/data/excerpt/SaveTextExcerptArgs;->c:Ljava/lang/String;

    return-void
.end method

.method public final setVirtualPageBoxInfo(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/geometry/data/BoxInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/note/common/data/excerpt/SaveTextExcerptArgs;->virtualPageBoxInfo:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    return-void
.end method

.method public final setWritingMode(Lcom/onyx/android/sdk/replicator/note/data/annotation/WritingMode;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/replicator/note/data/annotation/WritingMode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/note/common/data/excerpt/SaveTextExcerptArgs;->e:Lcom/onyx/android/sdk/replicator/note/data/annotation/WritingMode;

    return-void
.end method
