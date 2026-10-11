.class public final Lcom/onyx/galaxy/note/editor/action/audio/RenameAudioLinkShapeNameAction$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/action/audio/RenameAudioLinkShapeNameAction;->l()Lio/reactivex/rxjava3/core/Observable;
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
.field public final synthetic e:Lcom/onyx/galaxy/note/editor/action/audio/RenameAudioLinkShapeNameAction;

.field public final synthetic f:Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/action/audio/RenameAudioLinkShapeNameAction;Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/action/audio/RenameAudioLinkShapeNameAction$f;->e:Lcom/onyx/galaxy/note/editor/action/audio/RenameAudioLinkShapeNameAction;

    iput-object p2, p0, Lcom/onyx/galaxy/note/editor/action/audio/RenameAudioLinkShapeNameAction$f;->f:Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/universal/editor/request/page/FindBoxInfoByNotePageIdRequest;)V
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/universal/editor/request/page/FindBoxInfoByNotePageIdRequest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->Companion:Lcom/onyx/android/sdk/note/common/data/render/RenderContext$Companion;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/request/page/FindBoxInfoByNotePageIdRequest;->getVirtualPageBoxInfo()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getOriginRectFWithMargin()Landroid/graphics/RectF;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Lcom/onyx/android/sdk/base/extension/RectKt;->orEmpty(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext$Companion;->createByViewPort(Landroid/graphics/RectF;)Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    move-result-object p1

    sget-object v0, Lcom/onyx/android/sdk/note/common/utils/ShapeLinkUtils;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/ShapeLinkUtils;

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/action/audio/RenameAudioLinkShapeNameAction$f;->e:Lcom/onyx/galaxy/note/editor/action/audio/RenameAudioLinkShapeNameAction;

    invoke-static {v1}, Lcom/onyx/galaxy/note/editor/action/audio/RenameAudioLinkShapeNameAction;->access$getShape$p(Lcom/onyx/galaxy/note/editor/action/audio/RenameAudioLinkShapeNameAction;)Lcom/onyx/android/sdk/note/common/shape/Shape;

    move-result-object v1

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/action/audio/RenameAudioLinkShapeNameAction$f;->f:Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;

    invoke-virtual {v0, p1, v1, p0}, Lcom/onyx/android/sdk/note/common/utils/ShapeLinkUtils;->resetSize(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Lcom/onyx/android/sdk/note/common/shape/Shape;Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/universal/editor/request/page/FindBoxInfoByNotePageIdRequest;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/action/audio/RenameAudioLinkShapeNameAction$f;->a(Lcom/onyx/android/sdk/universal/editor/request/page/FindBoxInfoByNotePageIdRequest;)V

    return-void
.end method
