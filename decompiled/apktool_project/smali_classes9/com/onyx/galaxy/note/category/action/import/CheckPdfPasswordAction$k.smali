.class public final Lcom/onyx/galaxy/note/category/action/import/CheckPdfPasswordAction$k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/category/action/import/CheckPdfPasswordAction;->v(Landroid/net/Uri;Ljava/lang/String;)Lio/reactivex/rxjava3/core/Observable;
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
.field public final synthetic e:Lcom/onyx/galaxy/note/category/action/import/CheckPdfPasswordAction;

.field public final synthetic f:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/category/action/import/CheckPdfPasswordAction;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/galaxy/note/category/action/import/CheckPdfPasswordAction;",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/action/import/CheckPdfPasswordAction$k;->e:Lcom/onyx/galaxy/note/category/action/import/CheckPdfPasswordAction;

    iput-object p2, p0, Lcom/onyx/galaxy/note/category/action/import/CheckPdfPasswordAction$k;->f:Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/galaxy/note/category/action/import/CheckPdfPasswordAction;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/category/action/import/CheckPdfPasswordAction;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/category/action/import/CheckPdfPasswordAction$k;->e:Lcom/onyx/galaxy/note/category/action/import/CheckPdfPasswordAction;

    invoke-static {p1}, Lcom/onyx/galaxy/note/category/action/import/CheckPdfPasswordAction;->access$getPasswordMap$p(Lcom/onyx/galaxy/note/category/action/import/CheckPdfPasswordAction;)Ljava/util/Map;

    move-result-object p1

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/action/import/CheckPdfPasswordAction$k;->e:Lcom/onyx/galaxy/note/category/action/import/CheckPdfPasswordAction;

    invoke-static {v0}, Lcom/onyx/galaxy/note/category/action/import/CheckPdfPasswordAction;->access$getCurrentDocumentBean$p(Lcom/onyx/galaxy/note/category/action/import/CheckPdfPasswordAction;)Lcom/onyx/android/sdk/filepicker/DocumentBean;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "currentDocumentBean"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    iget-object p0, p0, Lcom/onyx/galaxy/note/category/action/import/CheckPdfPasswordAction$k;->f:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object p0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    invoke-interface {p1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/onyx/galaxy/note/category/action/import/CheckPdfPasswordAction;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/action/import/CheckPdfPasswordAction$k;->a(Lcom/onyx/galaxy/note/category/action/import/CheckPdfPasswordAction;)V

    return-void
.end method
