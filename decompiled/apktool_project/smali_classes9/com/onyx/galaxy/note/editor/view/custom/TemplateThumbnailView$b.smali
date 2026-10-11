.class public final Lcom/onyx/galaxy/note/editor/view/custom/TemplateThumbnailView$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/view/custom/TemplateThumbnailView;->r(Ljava/lang/String;Landroid/util/Size;Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;)V
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
.field public final synthetic e:Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;

.field public final synthetic f:Lcom/onyx/galaxy/note/editor/view/custom/TemplateThumbnailView;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;Lcom/onyx/galaxy/note/editor/view/custom/TemplateThumbnailView;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/custom/TemplateThumbnailView$b;->e:Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;

    iput-object p2, p0, Lcom/onyx/galaxy/note/editor/view/custom/TemplateThumbnailView$b;->f:Lcom/onyx/galaxy/note/editor/view/custom/TemplateThumbnailView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/drawable/BitmapDrawable;)V
    .locals 2
    .param p1    # Landroid/graphics/drawable/BitmapDrawable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/base/data/ColorTransformMode;->INSTANCE:Lcom/onyx/android/sdk/base/data/ColorTransformMode;

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/custom/TemplateThumbnailView$b;->e:Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;->getTemplateResourceWrapper()Lcom/onyx/android/sdk/replicator/note/bean/TemplateResourceWrapper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/replicator/note/bean/TemplateResourceWrapper;->getCurColorTransformMode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/data/ColorTransformMode;->loadColorFilter(Ljava/lang/Integer;)Landroid/graphics/ColorFilter;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/custom/TemplateThumbnailView$b;->f:Lcom/onyx/galaxy/note/editor/view/custom/TemplateThumbnailView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/custom/TemplateThumbnailView$b;->f:Lcom/onyx/galaxy/note/editor/view/custom/TemplateThumbnailView;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/custom/TemplateThumbnailView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/custom/TemplateThumbnailView$b;->a(Landroid/graphics/drawable/BitmapDrawable;)V

    return-void
.end method
