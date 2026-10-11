.class public final Lcom/onyx/galaxy/note/category/action/import/CheckPdfPasswordAction$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/category/action/import/CheckPdfPasswordAction;->create()Lio/reactivex/rxjava3/core/Observable;
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


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/category/action/import/CheckPdfPasswordAction;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/action/import/CheckPdfPasswordAction$f;->e:Lcom/onyx/galaxy/note/category/action/import/CheckPdfPasswordAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .locals 1
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/category/action/import/CheckPdfPasswordAction$f;->e:Lcom/onyx/galaxy/note/category/action/import/CheckPdfPasswordAction;

    invoke-static {p1}, Lcom/onyx/galaxy/note/category/action/import/CheckPdfPasswordAction;->access$getCancelList$p(Lcom/onyx/galaxy/note/category/action/import/CheckPdfPasswordAction;)Ljava/util/List;

    move-result-object p1

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/action/import/CheckPdfPasswordAction$f;->e:Lcom/onyx/galaxy/note/category/action/import/CheckPdfPasswordAction;

    invoke-static {p0}, Lcom/onyx/galaxy/note/category/action/import/CheckPdfPasswordAction;->access$getCurrentDocumentBean$p(Lcom/onyx/galaxy/note/category/action/import/CheckPdfPasswordAction;)Lcom/onyx/android/sdk/filepicker/DocumentBean;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, "currentDocumentBean"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/action/import/CheckPdfPasswordAction$f;->a(Ljava/lang/Throwable;)V

    return-void
.end method
