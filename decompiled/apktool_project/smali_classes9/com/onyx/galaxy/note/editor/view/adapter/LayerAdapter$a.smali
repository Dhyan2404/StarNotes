.class public final Lcom/onyx/galaxy/note/editor/view/adapter/LayerAdapter$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/view/adapter/LayerAdapter;->l(Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;Lcom/chad/library/adapter4/viewholder/DataBindingHolder;)V
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
.field public final synthetic e:Lcom/chad/library/adapter4/viewholder/DataBindingHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/chad/library/adapter4/viewholder/DataBindingHolder<",
            "Lcom/onyx/galaxy/note/databinding/ItemLayerBinding;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/chad/library/adapter4/viewholder/DataBindingHolder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/chad/library/adapter4/viewholder/DataBindingHolder<",
            "Lcom/onyx/galaxy/note/databinding/ItemLayerBinding;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/adapter/LayerAdapter$a;->e:Lcom/chad/library/adapter4/viewholder/DataBindingHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/universal/editor/action/render/RenderNotePageThumbnailAction;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/action/render/RenderNotePageThumbnailAction;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/LayerAdapter$a;->e:Lcom/chad/library/adapter4/viewholder/DataBindingHolder;

    invoke-virtual {p0}, Lcom/chad/library/adapter4/viewholder/DataBindingHolder;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/databinding/ItemLayerBinding;

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/ItemLayerBinding;->image:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/action/render/RenderNotePageThumbnailAction;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/universal/editor/action/render/RenderNotePageThumbnailAction;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/adapter/LayerAdapter$a;->a(Lcom/onyx/android/sdk/universal/editor/action/render/RenderNotePageThumbnailAction;)V

    return-void
.end method
