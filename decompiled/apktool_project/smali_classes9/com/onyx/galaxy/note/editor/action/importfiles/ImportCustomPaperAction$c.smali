.class public final Lcom/onyx/galaxy/note/editor/action/importfiles/ImportCustomPaperAction$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/action/importfiles/ImportCustomPaperAction;->create()Lio/reactivex/rxjava3/core/Observable;
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
.field public final synthetic e:Lcom/onyx/galaxy/note/editor/action/importfiles/ImportCustomPaperAction;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/action/importfiles/ImportCustomPaperAction;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/action/importfiles/ImportCustomPaperAction$c;->e:Lcom/onyx/galaxy/note/editor/action/importfiles/ImportCustomPaperAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/galaxy/note/category/action/import/CheckPdfPasswordAction;)V
    .locals 2
    .param p1    # Lcom/onyx/galaxy/note/category/action/import/CheckPdfPasswordAction;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->INSTANCE:Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;

    new-instance v1, Lcom/onyx/galaxy/note/category/event/HandleCustomPaperDocumentsEvent;

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/action/import/CheckPdfPasswordAction;->getResultList()Ljava/util/List;

    move-result-object p1

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/action/importfiles/ImportCustomPaperAction$c;->e:Lcom/onyx/galaxy/note/editor/action/importfiles/ImportCustomPaperAction;

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/action/importfiles/ImportCustomPaperAction;->access$getActivityWeakReference$p(Lcom/onyx/galaxy/note/editor/action/importfiles/ImportCustomPaperAction;)Ljava/lang/ref/WeakReference;

    move-result-object p0

    invoke-direct {v1, p1, p0}, Lcom/onyx/galaxy/note/category/event/HandleCustomPaperDocumentsEvent;-><init>(Ljava/util/List;Ljava/lang/ref/WeakReference;)V

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->postEvent(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/onyx/galaxy/note/category/action/import/CheckPdfPasswordAction;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/action/importfiles/ImportCustomPaperAction$c;->a(Lcom/onyx/galaxy/note/category/action/import/CheckPdfPasswordAction;)V

    return-void
.end method
