.class public final Lcom/onyx/android/sdk/universal/editor/action/render/RenderNotePageThumbnailAction$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/action/render/RenderNotePageThumbnailAction;->l()Lio/reactivex/rxjava3/core/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/rxjava3/functions/Function;"
    }
.end annotation


# instance fields
.field public final synthetic e:Landroid/graphics/Rect;

.field public final synthetic f:Lcom/onyx/android/sdk/universal/editor/action/render/RenderNotePageThumbnailAction;


# direct methods
.method public constructor <init>(Landroid/graphics/Rect;Lcom/onyx/android/sdk/universal/editor/action/render/RenderNotePageThumbnailAction;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/render/RenderNotePageThumbnailAction$b;->e:Landroid/graphics/Rect;

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/action/render/RenderNotePageThumbnailAction$b;->f:Lcom/onyx/android/sdk/universal/editor/action/render/RenderNotePageThumbnailAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/universal/editor/action/render/RenderNotePageThumbnailAction;)Lcom/onyx/android/sdk/universal/editor/action/render/RenderNotePageThumbnailAction;
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/universal/editor/action/render/RenderNotePageThumbnailAction;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/render/RenderNotePageThumbnailAction$b;->e:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/render/RenderNotePageThumbnailAction$b;->e:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    const-string v0, "createBitmap(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/graphics/Bitmap;->eraseColor(I)V

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/render/RenderNotePageThumbnailAction$b;->f:Lcom/onyx/android/sdk/universal/editor/action/render/RenderNotePageThumbnailAction;

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/universal/editor/action/render/RenderNotePageThumbnailAction;->setBitmap(Landroid/graphics/Bitmap;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/render/RenderNotePageThumbnailAction$b;->f:Lcom/onyx/android/sdk/universal/editor/action/render/RenderNotePageThumbnailAction;

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/universal/editor/action/render/RenderNotePageThumbnailAction;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/render/RenderNotePageThumbnailAction$b;->a(Lcom/onyx/android/sdk/universal/editor/action/render/RenderNotePageThumbnailAction;)Lcom/onyx/android/sdk/universal/editor/action/render/RenderNotePageThumbnailAction;

    move-result-object p0

    return-object p0
.end method
