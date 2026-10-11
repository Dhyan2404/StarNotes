.class public final Lcom/onyx/galaxy/note/editor/view/dialog/LinkShapeEditDialog$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/view/dialog/LinkShapeEditDialog;->x()V
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
.field public final synthetic e:Lcom/onyx/galaxy/note/editor/view/dialog/LinkShapeEditDialog;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/view/dialog/LinkShapeEditDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/dialog/LinkShapeEditDialog$e;->e:Lcom/onyx/galaxy/note/editor/view/dialog/LinkShapeEditDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/universal/editor/action/link/UpdateLinkShapeAction;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/action/link/UpdateLinkShapeAction;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/dialog/LinkShapeEditDialog$e;->e:Lcom/onyx/galaxy/note/editor/view/dialog/LinkShapeEditDialog;

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/view/dialog/LinkShapeEditDialog;->getUpdatedCallback()Lkotlin/jvm/functions/Function1;

    move-result-object p1

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/dialog/LinkShapeEditDialog$e;->e:Lcom/onyx/galaxy/note/editor/view/dialog/LinkShapeEditDialog;

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/LinkShapeEditDialog;->access$getShapeLinkBean$p(Lcom/onyx/galaxy/note/editor/view/dialog/LinkShapeEditDialog;)Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, "shapeLinkBean"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/universal/editor/action/link/UpdateLinkShapeAction;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/dialog/LinkShapeEditDialog$e;->a(Lcom/onyx/android/sdk/universal/editor/action/link/UpdateLinkShapeAction;)V

    return-void
.end method
