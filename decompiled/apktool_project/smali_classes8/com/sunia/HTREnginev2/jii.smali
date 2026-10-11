.class public final synthetic Lcom/sunia/HTREnginev2/jii;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# instance fields
.field public final synthetic e:Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;

.field public final synthetic f:Lkotlin/jvm/internal/Ref$ObjectRef;

.field public final synthetic g:Lkotlin/jvm/internal/Ref$ObjectRef;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/jii;->e:Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/jii;->f:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p3, p0, Lcom/sunia/HTREnginev2/jii;->g:Lkotlin/jvm/internal/Ref$ObjectRef;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/sunia/HTREnginev2/jii;->e:Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/jii;->f:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/jii;->g:Lkotlin/jvm/internal/Ref$ObjectRef;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, v1, p0, p1}, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction;->n(Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
