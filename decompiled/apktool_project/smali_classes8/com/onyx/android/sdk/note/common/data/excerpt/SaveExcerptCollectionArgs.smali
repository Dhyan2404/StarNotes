.class public final Lcom/onyx/android/sdk/note/common/data/excerpt/SaveExcerptCollectionArgs;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u000f\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0010\u0008\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\n\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008:\u0010;R\"\u0010\t\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\"\u0010\r\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\n\u0010\u0004\u001a\u0004\u0008\u000b\u0010\u0006\"\u0004\u0008\u000c\u0010\u0008R\"\u0010\u0011\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000e\u0010\u0004\u001a\u0004\u0008\u000f\u0010\u0006\"\u0004\u0008\u0010\u0010\u0008R\"\u0010\u0019\u001a\u00020\u00128\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0013\u0010\u0014\u001a\u0004\u0008\u0015\u0010\u0016\"\u0004\u0008\u0017\u0010\u0018R\"\u0010\u001d\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001a\u0010\u0004\u001a\u0004\u0008\u001b\u0010\u0006\"\u0004\u0008\u001c\u0010\u0008R\"\u0010%\u001a\u00020\u001e8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001f\u0010 \u001a\u0004\u0008!\u0010\"\"\u0004\u0008#\u0010$R\"\u0010)\u001a\u00020\u00128\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008&\u0010\u0014\u001a\u0004\u0008\'\u0010\u0016\"\u0004\u0008(\u0010\u0018R\"\u00101\u001a\u00020*8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008+\u0010,\u001a\u0004\u0008-\u0010.\"\u0004\u0008/\u00100R$\u00109\u001a\u0004\u0018\u0001028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u00083\u00104\u001a\u0004\u00085\u00106\"\u0004\u00087\u00108\u00a8\u0006<"
    }
    d2 = {
        "Lcom/onyx/android/sdk/note/common/data/excerpt/SaveExcerptCollectionArgs;",
        "",
        "",
        "a",
        "Ljava/lang/String;",
        "getSourceDocId",
        "()Ljava/lang/String;",
        "setSourceDocId",
        "(Ljava/lang/String;)V",
        "sourceDocId",
        "b",
        "getSourceShapeId",
        "setSourceShapeId",
        "sourceShapeId",
        "c",
        "getSourceExcerptQuote",
        "setSourceExcerptQuote",
        "sourceExcerptQuote",
        "Landroid/graphics/RectF;",
        "d",
        "Landroid/graphics/RectF;",
        "getSourceExcerptQuoteIndicatorAnchorRect",
        "()Landroid/graphics/RectF;",
        "setSourceExcerptQuoteIndicatorAnchorRect",
        "(Landroid/graphics/RectF;)V",
        "sourceExcerptQuoteIndicatorAnchorRect",
        "e",
        "getSourceImgPath",
        "setSourceImgPath",
        "sourceImgPath",
        "Lcom/onyx/android/sdk/base/data/TouchPoint;",
        "f",
        "Lcom/onyx/android/sdk/base/data/TouchPoint;",
        "getDownPoint",
        "()Lcom/onyx/android/sdk/base/data/TouchPoint;",
        "setDownPoint",
        "(Lcom/onyx/android/sdk/base/data/TouchPoint;)V",
        "downPoint",
        "g",
        "getSourceRectF",
        "setSourceRectF",
        "sourceRectF",
        "",
        "h",
        "I",
        "getSourceType",
        "()I",
        "setSourceType",
        "(I)V",
        "sourceType",
        "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
        "i",
        "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
        "getVirtualPageBoxInfo",
        "()Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
        "setVirtualPageBoxInfo",
        "(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V",
        "virtualPageBoxInfo",
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
.field public a:Ljava/lang/String;
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

.field public d:Landroid/graphics/RectF;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public e:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public f:Lcom/onyx/android/sdk/base/data/TouchPoint;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public g:Landroid/graphics/RectF;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public h:I

.field public i:Lcom/onyx/android/sdk/geometry/data/BoxInfo;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 13

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/onyx/android/sdk/note/common/data/excerpt/SaveExcerptCollectionArgs;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/onyx/android/sdk/note/common/data/excerpt/SaveExcerptCollectionArgs;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/onyx/android/sdk/note/common/data/excerpt/SaveExcerptCollectionArgs;->c:Ljava/lang/String;

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/onyx/android/sdk/note/common/data/excerpt/SaveExcerptCollectionArgs;->d:Landroid/graphics/RectF;

    iput-object v0, p0, Lcom/onyx/android/sdk/note/common/data/excerpt/SaveExcerptCollectionArgs;->e:Ljava/lang/String;

    new-instance v0, Lcom/onyx/android/sdk/base/data/TouchPoint;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    const/16 v11, 0x7f

    const/4 v12, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v12}, Lcom/onyx/android/sdk/base/data/TouchPoint;-><init>(FFFFIIJILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v0, p0, Lcom/onyx/android/sdk/note/common/data/excerpt/SaveExcerptCollectionArgs;->f:Lcom/onyx/android/sdk/base/data/TouchPoint;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/note/common/data/excerpt/SaveExcerptCollectionArgs;->g:Landroid/graphics/RectF;

    return-void
.end method


# virtual methods
.method public final getDownPoint()Lcom/onyx/android/sdk/base/data/TouchPoint;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/data/excerpt/SaveExcerptCollectionArgs;->f:Lcom/onyx/android/sdk/base/data/TouchPoint;

    return-object p0
.end method

.method public final getSourceDocId()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/data/excerpt/SaveExcerptCollectionArgs;->a:Ljava/lang/String;

    return-object p0
.end method

.method public final getSourceExcerptQuote()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/data/excerpt/SaveExcerptCollectionArgs;->c:Ljava/lang/String;

    return-object p0
.end method

.method public final getSourceExcerptQuoteIndicatorAnchorRect()Landroid/graphics/RectF;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/data/excerpt/SaveExcerptCollectionArgs;->d:Landroid/graphics/RectF;

    return-object p0
.end method

.method public final getSourceImgPath()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/data/excerpt/SaveExcerptCollectionArgs;->e:Ljava/lang/String;

    return-object p0
.end method

.method public final getSourceRectF()Landroid/graphics/RectF;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/data/excerpt/SaveExcerptCollectionArgs;->g:Landroid/graphics/RectF;

    return-object p0
.end method

.method public final getSourceShapeId()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/data/excerpt/SaveExcerptCollectionArgs;->b:Ljava/lang/String;

    return-object p0
.end method

.method public final getSourceType()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/note/common/data/excerpt/SaveExcerptCollectionArgs;->h:I

    return p0
.end method

.method public final getVirtualPageBoxInfo()Lcom/onyx/android/sdk/geometry/data/BoxInfo;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/data/excerpt/SaveExcerptCollectionArgs;->i:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    return-object p0
.end method

.method public final setDownPoint(Lcom/onyx/android/sdk/base/data/TouchPoint;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/base/data/TouchPoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/note/common/data/excerpt/SaveExcerptCollectionArgs;->f:Lcom/onyx/android/sdk/base/data/TouchPoint;

    return-void
.end method

.method public final setSourceDocId(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/note/common/data/excerpt/SaveExcerptCollectionArgs;->a:Ljava/lang/String;

    return-void
.end method

.method public final setSourceExcerptQuote(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/note/common/data/excerpt/SaveExcerptCollectionArgs;->c:Ljava/lang/String;

    return-void
.end method

.method public final setSourceExcerptQuoteIndicatorAnchorRect(Landroid/graphics/RectF;)V
    .locals 1
    .param p1    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/note/common/data/excerpt/SaveExcerptCollectionArgs;->d:Landroid/graphics/RectF;

    return-void
.end method

.method public final setSourceImgPath(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/note/common/data/excerpt/SaveExcerptCollectionArgs;->e:Ljava/lang/String;

    return-void
.end method

.method public final setSourceRectF(Landroid/graphics/RectF;)V
    .locals 1
    .param p1    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/note/common/data/excerpt/SaveExcerptCollectionArgs;->g:Landroid/graphics/RectF;

    return-void
.end method

.method public final setSourceShapeId(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/note/common/data/excerpt/SaveExcerptCollectionArgs;->b:Ljava/lang/String;

    return-void
.end method

.method public final setSourceType(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/note/common/data/excerpt/SaveExcerptCollectionArgs;->h:I

    return-void
.end method

.method public final setVirtualPageBoxInfo(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/geometry/data/BoxInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/note/common/data/excerpt/SaveExcerptCollectionArgs;->i:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    return-void
.end method
