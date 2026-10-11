.class public final Lcom/onyx/galaxy/note/editor/handler/ShapesLocationBarEventHandler$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/handler/ShapesLocationBarEventHandler;->l()V
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
.field public final synthetic e:Lcom/onyx/galaxy/note/editor/handler/ShapesLocationBarEventHandler;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/handler/ShapesLocationBarEventHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/handler/ShapesLocationBarEventHandler$c;->e:Lcom/onyx/galaxy/note/editor/handler/ShapesLocationBarEventHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/universal/editor/action/draft/QueryShapeLocationBarInfoAction;)V
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/universal/editor/action/draft/QueryShapeLocationBarInfoAction;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/handler/ShapesLocationBarEventHandler$c;->e:Lcom/onyx/galaxy/note/editor/handler/ShapesLocationBarEventHandler;

    invoke-static {v0}, Lcom/onyx/galaxy/note/editor/handler/ShapesLocationBarEventHandler;->access$getShapesLocationBar$p(Lcom/onyx/galaxy/note/editor/handler/ShapesLocationBarEventHandler;)Lcom/onyx/galaxy/note/editor/view/custom/ShapesLocationBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/view/custom/ShapesLocationBar;->getBinding()Lcom/onyx/galaxy/note/databinding/LayoutShapesLocationBarBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutShapesLocationBarBinding;->next:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/action/draft/QueryShapeLocationBarInfoAction;->getCanNextShape()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/handler/ShapesLocationBarEventHandler$c;->e:Lcom/onyx/galaxy/note/editor/handler/ShapesLocationBarEventHandler;

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/handler/ShapesLocationBarEventHandler;->access$getShapesLocationBar$p(Lcom/onyx/galaxy/note/editor/handler/ShapesLocationBarEventHandler;)Lcom/onyx/galaxy/note/editor/view/custom/ShapesLocationBar;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/custom/ShapesLocationBar;->getBinding()Lcom/onyx/galaxy/note/databinding/LayoutShapesLocationBarBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/LayoutShapesLocationBarBinding;->prev:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/action/draft/QueryShapeLocationBarInfoAction;->getCanPrevShape()Z

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/universal/editor/action/draft/QueryShapeLocationBarInfoAction;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/handler/ShapesLocationBarEventHandler$c;->a(Lcom/onyx/android/sdk/universal/editor/action/draft/QueryShapeLocationBarInfoAction;)V

    return-void
.end method
