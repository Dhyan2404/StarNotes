.class public final Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction$m0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


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
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/rxjava3/functions/Consumer;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Ljava/nio/file/Path;",
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
            "Ljava/nio/file/Path;",
            ">;",
            "Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction;",
            "Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction$m0;->e:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction$m0;->f:Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction;

    iput-object p3, p0, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction$m0;->g:Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction$m0;->e:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction$m0;->f:Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction;

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction$m0;->g:Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;

    invoke-static {v0, p0}, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction;->access$createDocumentDir(Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction;Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;)Ljava/nio/file/Path;

    move-result-object p0

    iput-object p0, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction$m0;->a(Ljava/lang/String;)V

    return-void
.end method
