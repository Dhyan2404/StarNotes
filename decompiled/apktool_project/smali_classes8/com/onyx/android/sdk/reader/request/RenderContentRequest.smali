.class public final Lcom/onyx/android/sdk/reader/request/RenderContentRequest;
.super Lcom/onyx/android/sdk/reader/request/RxBaseReaderRequest;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRenderContentRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RenderContentRequest.kt\ncom/onyx/android/sdk/reader/request/RenderContentRequest\n+ 2 _Sequences.kt\nkotlin/sequences/SequencesKt___SequencesKt\n+ 3 Debug.kt\ncom/onyx/android/sdk/base/utils/Debug\n+ 4 measureTime.kt\nkotlin/time/MeasureTimeKt\n+ 5 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,168:1\n1313#2,2:169\n98#3,4:171\n98#3,4:187\n79#4,5:175\n113#4,7:180\n1#5:191\n*S KotlinDebug\n*F\n+ 1 RenderContentRequest.kt\ncom/onyx/android/sdk/reader/request/RenderContentRequest\n*L\n41#1:169,2\n90#1:171,4\n116#1:187,4\n112#1:175,5\n112#1:180,7\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010!\n\u0002\u0008\n\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010+\u001a\u00020\u0002\u0012\u0006\u0010#\u001a\u00020\u001d\u00a2\u0006\u0004\u0008,\u0010-J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\t\u001a\u00020\u00082\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J \u0010\u000e\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\u000cH\u0002J&\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u000f2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\u000cH\u0002J\u001a\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0007\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u000cH\u0002J\"\u0010\u0017\u001a\u0004\u0018\u00010\u00122\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0014\u001a\u00020\u000c2\u0006\u0010\u0016\u001a\u00020\u0015H\u0002J\u0018\u0010\u0018\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J\u0018\u0010\u0019\u001a\u00020\u00152\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J\u0016\u0010\u001b\u001a\u00020\u00082\u000c\u0010\u001a\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u000fH\u0002J\u0018\u0010\u001c\u001a\u00020\u00152\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\u0006H\u0002R\"\u0010#\u001a\u00020\u001d8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\t\u0010\u001e\u001a\u0004\u0008\u001f\u0010 \"\u0004\u0008!\u0010\"R(\u0010*\u001a\u0008\u0012\u0004\u0012\u00020\u00060$8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0013\u0010%\u001a\u0004\u0008&\u0010\'\"\u0004\u0008(\u0010)\u00a8\u0006."
    }
    d2 = {
        "Lcom/onyx/android/sdk/reader/request/RenderContentRequest;",
        "Lcom/onyx/android/sdk/reader/request/RxBaseReaderRequest;",
        "Lcom/onyx/android/sdk/reader/ReaderBundle;",
        "bundle",
        "",
        "execute",
        "Lcom/onyx/android/sdk/geometry/data/SliceInfo;",
        "sliceInfo",
        "",
        "f",
        "Lcom/onyx/android/sdk/reader/Reader;",
        "reader",
        "Landroid/graphics/RectF;",
        "drawDisplayRectF",
        "m",
        "Lkotlin/time/TimedValue;",
        "n",
        "rectF",
        "Landroid/graphics/Bitmap;",
        "g",
        "displayRect",
        "",
        "cacheKey",
        "l",
        "o",
        "j",
        "renderResult",
        "k",
        "i",
        "Lcom/onyx/android/sdk/reader/data/ReaderRenderArgs;",
        "Lcom/onyx/android/sdk/reader/data/ReaderRenderArgs;",
        "getReaderRenderArgs",
        "()Lcom/onyx/android/sdk/reader/data/ReaderRenderArgs;",
        "setReaderRenderArgs",
        "(Lcom/onyx/android/sdk/reader/data/ReaderRenderArgs;)V",
        "readerRenderArgs",
        "",
        "Ljava/util/List;",
        "getOutputSliceList",
        "()Ljava/util/List;",
        "setOutputSliceList",
        "(Ljava/util/List;)V",
        "outputSliceList",
        "readerBundle",
        "<init>",
        "(Lcom/onyx/android/sdk/reader/ReaderBundle;Lcom/onyx/android/sdk/reader/data/ReaderRenderArgs;)V",
        "sdk-reader_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nRenderContentRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RenderContentRequest.kt\ncom/onyx/android/sdk/reader/request/RenderContentRequest\n+ 2 _Sequences.kt\nkotlin/sequences/SequencesKt___SequencesKt\n+ 3 Debug.kt\ncom/onyx/android/sdk/base/utils/Debug\n+ 4 measureTime.kt\nkotlin/time/MeasureTimeKt\n+ 5 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,168:1\n1313#2,2:169\n98#3,4:171\n98#3,4:187\n79#4,5:175\n113#4,7:180\n1#5:191\n*S KotlinDebug\n*F\n+ 1 RenderContentRequest.kt\ncom/onyx/android/sdk/reader/request/RenderContentRequest\n*L\n41#1:169,2\n90#1:171,4\n116#1:187,4\n112#1:175,5\n112#1:180,7\n*E\n"
    }
.end annotation


# instance fields
.field public f:Lcom/onyx/android/sdk/reader/data/ReaderRenderArgs;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/geometry/data/SliceInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/reader/ReaderBundle;Lcom/onyx/android/sdk/reader/data/ReaderRenderArgs;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/reader/ReaderBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/reader/data/ReaderRenderArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "readerBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "readerRenderArgs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/reader/request/RxBaseReaderRequest;-><init>(Lcom/onyx/android/sdk/reader/ReaderBundle;)V

    iput-object p2, p0, Lcom/onyx/android/sdk/reader/request/RenderContentRequest;->f:Lcom/onyx/android/sdk/reader/data/ReaderRenderArgs;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/reader/request/RenderContentRequest;->g:Ljava/util/List;

    return-void
.end method

.method public static synthetic h(Lcom/onyx/android/sdk/reader/request/RenderContentRequest;Lcom/onyx/android/sdk/geometry/data/SliceInfo;Landroid/graphics/RectF;ILjava/lang/Object;)Landroid/graphics/Bitmap;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->getSliceRectFInPage()Landroid/graphics/RectF;

    move-result-object p2

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/reader/request/RenderContentRequest;->g(Lcom/onyx/android/sdk/geometry/data/SliceInfo;Landroid/graphics/RectF;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public execute(Lcom/onyx/android/sdk/reader/ReaderBundle;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/reader/ReaderBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "bundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/android/sdk/reader/request/RenderContentRequest;->f:Lcom/onyx/android/sdk/reader/data/ReaderRenderArgs;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/reader/data/ReaderRenderArgs;->getSliceInfoList()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->asSequence(Ljava/lang/Iterable;)Lkotlin/sequences/Sequence;

    move-result-object p1

    sget-object v0, Lcom/onyx/android/sdk/reader/request/RenderContentRequest$execute$1;->INSTANCE:Lcom/onyx/android/sdk/reader/request/RenderContentRequest$execute$1;

    invoke-static {p1, v0}, Lkotlin/sequences/SequencesKt;->filter(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object p1

    new-instance v0, Lcom/onyx/android/sdk/reader/request/RenderContentRequest$execute$2;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/reader/request/RenderContentRequest$execute$2;-><init>(Lcom/onyx/android/sdk/reader/request/RenderContentRequest;)V

    invoke-static {p1, v0}, Lkotlin/sequences/SequencesKt;->filter(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object p1

    invoke-interface {p1}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/geometry/data/SliceInfo;

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/reader/request/RenderContentRequest;->f(Lcom/onyx/android/sdk/geometry/data/SliceInfo;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final f(Lcom/onyx/android/sdk/geometry/data/SliceInfo;)Z
    .locals 8

    iget-object v0, p0, Lcom/onyx/android/sdk/reader/request/RenderContentRequest;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->getDataPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/request/RxBaseReaderRequest;->getReaderBundle()Lcom/onyx/android/sdk/reader/ReaderBundle;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {v1, v0, v2, v3, v2}, Lcom/onyx/android/sdk/reader/ReaderBundle;->ensureReaderByPath$default(Lcom/onyx/android/sdk/reader/ReaderBundle;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/onyx/android/sdk/reader/Reader;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-static {p0, p1, v2, v3, v2}, Lcom/onyx/android/sdk/reader/request/RenderContentRequest;->h(Lcom/onyx/android/sdk/reader/request/RenderContentRequest;Lcom/onyx/android/sdk/geometry/data/SliceInfo;Landroid/graphics/RectF;ILjava/lang/Object;)Landroid/graphics/Bitmap;

    return v1

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->getSliceRenderDisplayRectF()Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->getBoxInfo()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->getBoxInfo()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getBox()Landroid/graphics/RectF;

    move-result-object v4

    invoke-static {v4}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->copy(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v4

    iget v5, v2, Landroid/graphics/RectF;->left:F

    iget v6, v2, Landroid/graphics/RectF;->top:F

    invoke-virtual {v4, v5, v6}, Landroid/graphics/RectF;->offsetTo(FF)V

    iget v5, v4, Landroid/graphics/RectF;->left:F

    const/4 v6, 0x0

    cmpg-float v5, v5, v6

    const/4 v7, 0x1

    if-nez v5, :cond_1

    move v5, v7

    goto :goto_0

    :cond_1
    move v5, v1

    :goto_0
    if-eqz v5, :cond_3

    iget v5, v4, Landroid/graphics/RectF;->top:F

    cmpg-float v5, v5, v6

    if-nez v5, :cond_2

    move v5, v7

    goto :goto_1

    :cond_2
    move v5, v1

    :goto_1
    if-eqz v5, :cond_3

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->isHighQuality()Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/onyx/android/sdk/reader/request/RenderContentRequest;->f:Lcom/onyx/android/sdk/reader/data/ReaderRenderArgs;

    invoke-virtual {v5}, Lcom/onyx/android/sdk/reader/data/ReaderRenderArgs;->getEnableDiskCache()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v2}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {v3}, Lcom/onyx/android/sdk/base/extension/StringKt;->isNotBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    move v1, v7

    :cond_3
    if-eqz v1, :cond_4

    invoke-virtual {p0, v0, p1, v4}, Lcom/onyx/android/sdk/reader/request/RenderContentRequest;->m(Lcom/onyx/android/sdk/reader/Reader;Lcom/onyx/android/sdk/geometry/data/SliceInfo;Landroid/graphics/RectF;)Z

    move-result v2

    if-eqz v2, :cond_4

    return v7

    :cond_4
    invoke-virtual {p0, v0, p1, v4}, Lcom/onyx/android/sdk/reader/request/RenderContentRequest;->n(Lcom/onyx/android/sdk/reader/Reader;Lcom/onyx/android/sdk/geometry/data/SliceInfo;Landroid/graphics/RectF;)Lkotlin/time/TimedValue;

    move-result-object v2

    if-eqz v1, :cond_5

    invoke-virtual {p0, v2}, Lcom/onyx/android/sdk/reader/request/RenderContentRequest;->k(Lkotlin/time/TimedValue;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0, v0, p1}, Lcom/onyx/android/sdk/reader/request/RenderContentRequest;->o(Lcom/onyx/android/sdk/reader/Reader;Lcom/onyx/android/sdk/geometry/data/SliceInfo;)V

    :cond_5
    invoke-virtual {v2}, Lkotlin/time/TimedValue;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public final g(Lcom/onyx/android/sdk/geometry/data/SliceInfo;Landroid/graphics/RectF;)Landroid/graphics/Bitmap;
    .locals 0

    sget-object p0, Lcom/onyx/android/sdk/base/utils/BitmapUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/BitmapUtils;

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/base/utils/BitmapUtils;->ensureBitmapNotNull(Landroid/graphics/RectF;)Landroid/graphics/Bitmap;

    move-result-object p0

    const/4 p2, -0x1

    invoke-virtual {p0, p2}, Landroid/graphics/Bitmap;->eraseColor(I)V

    sget-object p2, Lcom/onyx/android/sdk/base/data/bitmap/SafeBitmap;->Companion:Lcom/onyx/android/sdk/base/data/bitmap/SafeBitmap$Companion;

    invoke-virtual {p2, p0}, Lcom/onyx/android/sdk/base/data/bitmap/SafeBitmap$Companion;->create(Landroid/graphics/Bitmap;)Lcom/onyx/android/sdk/base/data/bitmap/SafeBitmap;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->setSafeBitmap(Lcom/onyx/android/sdk/base/data/bitmap/SafeBitmap;)V

    return-object p0
.end method

.method public final getOutputSliceList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/geometry/data/SliceInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/request/RenderContentRequest;->g:Ljava/util/List;

    return-object p0
.end method

.method public final getReaderRenderArgs()Lcom/onyx/android/sdk/reader/data/ReaderRenderArgs;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/request/RenderContentRequest;->f:Lcom/onyx/android/sdk/reader/data/ReaderRenderArgs;

    return-object p0
.end method

.method public final i(Lcom/onyx/android/sdk/reader/Reader;Lcom/onyx/android/sdk/geometry/data/SliceInfo;)Ljava/lang/String;
    .locals 6

    invoke-virtual {p2}, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->getBoxInfo()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/reader/Reader;->getNavigator()Lcom/onyx/android/sdk/reader/api/ReaderNavigator;

    move-result-object v1

    invoke-virtual {v0}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static {v1, v2, v3, v4, v5}, Lcom/onyx/android/sdk/reader/api/ReaderNavigator$DefaultImpls;->positionByPositionString$default(Lcom/onyx/android/sdk/reader/api/ReaderNavigator;Ljava/lang/String;ZILjava/lang/Object;)Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/reader/Reader;->getPlugin()Lcom/onyx/android/sdk/reader/api/ReaderPlugin;

    move-result-object p1

    invoke-static {p1}, Lcom/onyx/android/sdk/base/extension/AnyKt;->toSimpleNameString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", draw success, cacheKey = "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->cacheKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n, sliceState = "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->getState()Lcom/onyx/android/sdk/geometry/data/SliceInfo$State;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\n, drawArgs.path = "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->getDataPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n, drawArgs.position = "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n, page = "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Lcom/onyx/android/sdk/reader/api/ReaderPosition;->getPageIndex()I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " \n, scale = "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getActualScale()F

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, " \n, maxScale = "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/onyx/android/sdk/reader/request/RenderContentRequest;->f:Lcom/onyx/android/sdk/reader/data/ReaderRenderArgs;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/reader/data/ReaderRenderArgs;->getMaxScale()Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " \n, position = "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Lcom/onyx/android/sdk/reader/api/ReaderPosition;->asString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " \n, bitmap.size = "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->getSafeBitmap()Lcom/onyx/android/sdk/base/data/bitmap/SafeBitmap;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/bitmap/SafeBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/onyx/android/sdk/base/extension/BitmapKt;->getSize(Landroid/graphics/Bitmap;)Landroid/util/Size;

    move-result-object v5

    :cond_0
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " \n, bitmap.isValid = "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->getSafeBitmap()Lcom/onyx/android/sdk/base/data/bitmap/SafeBitmap;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/bitmap/SafeBitmap;->isValid()Z

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " \n, isHighQuality = "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->isHighQuality()Z

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " \n, isAbort = "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseRequest;->isAbort()Z

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " \n, sliceCount = "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/request/RenderContentRequest;->f:Lcom/onyx/android/sdk/reader/data/ReaderRenderArgs;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/data/ReaderRenderArgs;->getSliceInfoList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " \n"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final j(Lcom/onyx/android/sdk/reader/Reader;Lcom/onyx/android/sdk/geometry/data/SliceInfo;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/reader/Reader;->getContentDiskCache()Lcom/onyx/android/sdk/reader/Reader$Companion$ReaderContentDiskCache;

    move-result-object p0

    invoke-virtual {p2}, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->getBoxInfo()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->getBoxInfo()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object p2

    invoke-virtual {p2}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getRotation()F

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/reader/Reader$Companion$ReaderContentDiskCache;->getDiskCacheKey(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final k(Lkotlin/time/TimedValue;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/time/TimedValue<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    invoke-virtual {p1}, Lkotlin/time/TimedValue;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Lkotlin/time/TimedValue;->getDuration-UwyO8pc()J

    move-result-wide p0

    invoke-static {p0, p1}, Lkotlin/time/Duration;->getInWholeMilliseconds-impl(J)J

    move-result-wide p0

    const-wide/16 v0, 0x12c

    cmp-long p0, p0, v0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final l(Lcom/onyx/android/sdk/reader/Reader;Landroid/graphics/RectF;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/reader/Reader;->getContentDiskCache()Lcom/onyx/android/sdk/reader/Reader$Companion$ReaderContentDiskCache;

    move-result-object p0

    invoke-virtual {p0, p2, p3}, Lcom/onyx/android/sdk/reader/Reader$Companion$ReaderContentDiskCache;->queryCacheBitmap(Landroid/graphics/RectF;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public final m(Lcom/onyx/android/sdk/reader/Reader;Lcom/onyx/android/sdk/geometry/data/SliceInfo;Landroid/graphics/RectF;)Z
    .locals 4

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/reader/request/RenderContentRequest;->j(Lcom/onyx/android/sdk/reader/Reader;Lcom/onyx/android/sdk/geometry/data/SliceInfo;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p3, v0}, Lcom/onyx/android/sdk/reader/request/RenderContentRequest;->l(Lcom/onyx/android/sdk/reader/Reader;Landroid/graphics/RectF;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p3

    invoke-static {p3}, Lcom/onyx/android/sdk/base/extension/BitmapKt;->isValid(Landroid/graphics/Bitmap;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v2, Lcom/onyx/android/sdk/base/data/bitmap/SafeBitmap;->Companion:Lcom/onyx/android/sdk/base/data/bitmap/SafeBitmap$Companion;

    invoke-virtual {v2, p3}, Lcom/onyx/android/sdk/base/data/bitmap/SafeBitmap$Companion;->create(Landroid/graphics/Bitmap;)Lcom/onyx/android/sdk/base/data/bitmap/SafeBitmap;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->setSafeBitmap(Lcom/onyx/android/sdk/base/data/bitmap/SafeBitmap;)V

    sget-object p3, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-class v2, Lcom/onyx/android/sdk/reader/request/RenderContentRequest;

    invoke-virtual {p3}, Lcom/onyx/android/sdk/base/utils/Debug;->getDebug()Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/reader/request/RenderContentRequest;->i(Lcom/onyx/android/sdk/reader/Reader;Lcom/onyx/android/sdk/geometry/data/SliceInfo;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", hitTestDiskCache = "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x20

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    invoke-virtual {p3, v2, p0, p1}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return v1
.end method

.method public final n(Lcom/onyx/android/sdk/reader/Reader;Lcom/onyx/android/sdk/geometry/data/SliceInfo;Landroid/graphics/RectF;)Lkotlin/time/TimedValue;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/reader/Reader;",
            "Lcom/onyx/android/sdk/geometry/data/SliceInfo;",
            "Landroid/graphics/RectF;",
            ")",
            "Lkotlin/time/TimedValue<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    invoke-virtual/range {p2 .. p2}, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->getBoxInfo()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getOriginRectF()Landroid/graphics/RectF;

    move-result-object v1

    invoke-static {v1}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->copy(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Lcom/onyx/android/sdk/reader/Reader;->getNavigator()Lcom/onyx/android/sdk/reader/api/ReaderNavigator;

    move-result-object v1

    invoke-virtual {v0}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getId()Ljava/lang/String;

    move-result-object v2

    const/4 v15, 0x0

    const/4 v3, 0x2

    const/4 v14, 0x0

    invoke-static {v1, v2, v15, v3, v14}, Lcom/onyx/android/sdk/reader/api/ReaderNavigator$DefaultImpls;->positionByPositionString$default(Lcom/onyx/android/sdk/reader/api/ReaderNavigator;Ljava/lang/String;ZILjava/lang/Object;)Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    move-result-object v1

    move-object/from16 v13, p0

    move-object/from16 v12, p2

    invoke-static {v13, v12, v14, v3, v14}, Lcom/onyx/android/sdk/reader/request/RenderContentRequest;->h(Lcom/onyx/android/sdk/reader/request/RenderContentRequest;Lcom/onyx/android/sdk/geometry/data/SliceInfo;Landroid/graphics/RectF;ILjava/lang/Object;)Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-virtual {v0}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getActualScale()F

    move-result v4

    invoke-virtual {v0}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getRotation()F

    move-result v0

    float-to-int v5, v0

    invoke-static/range {p3 .. p3}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->copy(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v6

    new-instance v0, Lcom/onyx/android/sdk/reader/api/DrawArgs;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x780

    const/16 v19, 0x0

    move-object v2, v0

    move-object v3, v1

    move-object v7, v8

    move-object/from16 v12, v16

    move/from16 v13, v17

    move-object v1, v14

    move/from16 v14, v18

    move-object/from16 v15, v19

    invoke-direct/range {v2 .. v15}, Lcom/onyx/android/sdk/reader/api/DrawArgs;-><init>(Lcom/onyx/android/sdk/reader/api/ReaderPosition;FILandroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Bitmap;Ljava/util/List;Ljava/util/List;Ljava/util/List;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sget-object v2, Lkotlin/time/TimeSource$Monotonic;->INSTANCE:Lkotlin/time/TimeSource$Monotonic;

    invoke-virtual {v2}, Lkotlin/time/TimeSource$Monotonic;->markNow-z9LOYto()J

    move-result-wide v2

    move-object/from16 v4, p1

    invoke-static {v4, v0}, Lcom/onyx/android/sdk/reader/extension/ReaderKt;->safeRender(Lcom/onyx/android/sdk/reader/Reader;Lcom/onyx/android/sdk/reader/api/DrawArgs;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    new-instance v5, Lkotlin/time/TimedValue;

    invoke-static {v2, v3}, Lkotlin/time/TimeSource$Monotonic$ValueTimeMark;->elapsedNow-UwyO8pc(J)J

    move-result-wide v2

    invoke-direct {v5, v0, v2, v3, v1}, Lkotlin/time/TimedValue;-><init>(Ljava/lang/Object;JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v5}, Lkotlin/time/TimedValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-class v1, Lcom/onyx/android/sdk/reader/request/RenderContentRequest;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/utils/Debug;->getDebug()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual/range {p0 .. p2}, Lcom/onyx/android/sdk/reader/request/RenderContentRequest;->i(Lcom/onyx/android/sdk/reader/Reader;Lcom/onyx/android/sdk/geometry/data/SliceInfo;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v3}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-object v5
.end method

.method public final o(Lcom/onyx/android/sdk/reader/Reader;Lcom/onyx/android/sdk/geometry/data/SliceInfo;)V
    .locals 2

    invoke-virtual {p2}, Lcom/onyx/android/sdk/geometry/data/SliceInfo;->getSafeBitmap()Lcom/onyx/android/sdk/base/data/bitmap/SafeBitmap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/bitmap/SafeBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/BitmapKt;->isValid(Landroid/graphics/Bitmap;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/reader/request/RenderContentRequest;->j(Lcom/onyx/android/sdk/reader/Reader;Lcom/onyx/android/sdk/geometry/data/SliceInfo;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/reader/Reader;->getContentDiskCache()Lcom/onyx/android/sdk/reader/Reader$Companion$ReaderContentDiskCache;

    move-result-object p1

    invoke-virtual {p1, p0, v0}, Lcom/onyx/android/sdk/data/utils/ObjectLruCache;->saveOrUpdateAsync(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final setOutputSliceList(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/geometry/data/SliceInfo;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/reader/request/RenderContentRequest;->g:Ljava/util/List;

    return-void
.end method

.method public final setReaderRenderArgs(Lcom/onyx/android/sdk/reader/data/ReaderRenderArgs;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/reader/data/ReaderRenderArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/reader/request/RenderContentRequest;->f:Lcom/onyx/android/sdk/reader/data/ReaderRenderArgs;

    return-void
.end method
