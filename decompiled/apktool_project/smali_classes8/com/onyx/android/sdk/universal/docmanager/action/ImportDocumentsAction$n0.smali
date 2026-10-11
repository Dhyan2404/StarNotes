.class public final Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction$n0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction;->N(Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;)Lio/reactivex/rxjava3/core/Observable;
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
.field public final synthetic e:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic f:Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction;

.field public final synthetic g:Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;


# direct methods
.method public constructor <init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction;Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction;",
            "Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction$n0;->e:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction$n0;->f:Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction;

    iput-object p3, p0, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction$n0;->g:Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsResultEvent;
    .locals 7
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsResultEvent;

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction$n0;->e:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x1

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lonyx/org/apache/commons/io/FilenameUtils;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v0, "getName(...)"

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction$n0;->f:Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction;

    invoke-static {v0}, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction;->access$getImportArgsList$p(Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction$n0;->g:Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v5

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction$n0;->f:Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction;

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction;->access$getImportArgsList$p(Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v6

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsResultEvent;-><init>(Ljava/lang/String;ZLjava/lang/String;II)V

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction$n0;->a(Ljava/lang/Object;)Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsResultEvent;

    move-result-object p0

    return-object p0
.end method
