.class public final Lcom/onyx/android/sdk/universal/editor/action/render/RenderPageThumbnailAction$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/action/render/RenderPageThumbnailAction;->l()Lio/reactivex/rxjava3/core/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/rxjava3/functions/Consumer;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/onyx/android/sdk/universal/editor/action/render/RenderPageThumbnailAction;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/action/render/RenderPageThumbnailAction;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/render/RenderPageThumbnailAction$c;->e:Lcom/onyx/android/sdk/universal/editor/action/render/RenderPageThumbnailAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 3

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/render/RenderPageThumbnailAction$c;->e:Lcom/onyx/android/sdk/universal/editor/action/render/RenderPageThumbnailAction;

    sget-object v1, Lcom/onyx/android/sdk/base/utils/BitmapUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/BitmapUtils;

    invoke-static {v0}, Lcom/onyx/android/sdk/universal/editor/action/render/RenderPageThumbnailAction;->access$getArgs$p(Lcom/onyx/android/sdk/universal/editor/action/render/RenderPageThumbnailAction;)Lcom/onyx/android/sdk/universal/editor/data/RenderPageThumbnailArgs;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/android/sdk/universal/editor/data/RenderPageThumbnailArgs;->getBoxInfo()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getBox()Landroid/graphics/RectF;

    move-result-object v2

    invoke-static {v2}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->copy(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/base/utils/BitmapUtils;->createBitmapOrNull(Landroid/graphics/RectF;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/universal/editor/action/render/RenderPageThumbnailAction;->setBitmap(Landroid/graphics/Bitmap;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/render/RenderPageThumbnailAction$c;->e:Lcom/onyx/android/sdk/universal/editor/action/render/RenderPageThumbnailAction;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/render/RenderPageThumbnailAction;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/base/extension/BitmapKt;->clear(Landroid/graphics/Bitmap;I)V

    :cond_0
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/render/RenderPageThumbnailAction$c;->a(I)V

    return-void
.end method
