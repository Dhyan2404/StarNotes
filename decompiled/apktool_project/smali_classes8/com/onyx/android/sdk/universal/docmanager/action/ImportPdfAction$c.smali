.class public final Lcom/onyx/android/sdk/universal/docmanager/action/ImportPdfAction$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/docmanager/action/ImportPdfAction;->l(Landroid/net/Uri;)Lio/reactivex/rxjava3/core/Observable;
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
.field public final synthetic e:Lcom/onyx/android/sdk/universal/docmanager/action/ImportPdfAction;

.field public final synthetic f:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/docmanager/action/ImportPdfAction;Landroid/net/Uri;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/docmanager/action/ImportPdfAction$c;->e:Lcom/onyx/android/sdk/universal/docmanager/action/ImportPdfAction;

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/docmanager/action/ImportPdfAction$c;->f:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/universal/editor/request/CopyDocumentWithUriRequest;)Lcom/onyx/android/sdk/universal/docmanager/action/ImportPdfAction;
    .locals 4
    .param p1    # Lcom/onyx/android/sdk/universal/editor/request/CopyDocumentWithUriRequest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/docmanager/action/ImportPdfAction$c;->e:Lcom/onyx/android/sdk/universal/docmanager/action/ImportPdfAction;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/events/app/ImportPdfResultEvent;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/request/CopyDocumentWithUriRequest;->getDocumentPath()Ljava/lang/String;

    move-result-object p1

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/docmanager/action/ImportPdfAction$c;->e:Lcom/onyx/android/sdk/universal/docmanager/action/ImportPdfAction;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/universal/docmanager/action/ImportPdfAction;->getUriList()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/onyx/android/sdk/universal/docmanager/action/ImportPdfAction$c;->f:Landroid/net/Uri;

    invoke-interface {v2, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    iget-object v3, p0, Lcom/onyx/android/sdk/universal/docmanager/action/ImportPdfAction$c;->e:Lcom/onyx/android/sdk/universal/docmanager/action/ImportPdfAction;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/universal/docmanager/action/ImportPdfAction;->getUriList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v1, p1, v2, v3}, Lcom/onyx/android/sdk/universal/editor/events/app/ImportPdfResultEvent;-><init>(Ljava/lang/String;II)V

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/docmanager/action/ImportPdfAction$c;->e:Lcom/onyx/android/sdk/universal/docmanager/action/ImportPdfAction;

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/universal/editor/request/CopyDocumentWithUriRequest;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/docmanager/action/ImportPdfAction$c;->a(Lcom/onyx/android/sdk/universal/editor/request/CopyDocumentWithUriRequest;)Lcom/onyx/android/sdk/universal/docmanager/action/ImportPdfAction;

    move-result-object p0

    return-object p0
.end method
