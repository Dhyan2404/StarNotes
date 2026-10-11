.class public final Lcom/onyx/galaxy/note/category/action/ChangeNoteTemplateAction$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/category/action/ChangeNoteTemplateAction;->create()Lio/reactivex/rxjava3/core/Observable;
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
.field public final synthetic e:Lcom/onyx/galaxy/note/category/action/ChangeNoteTemplateAction;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/category/action/ChangeNoteTemplateAction;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/action/ChangeNoteTemplateAction$d;->e:Lcom/onyx/galaxy/note/category/action/ChangeNoteTemplateAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/universal/editor/action/bkground/ApplyTemplateAction;)Lio/reactivex/rxjava3/core/ObservableSource;
    .locals 7
    .param p1    # Lcom/onyx/android/sdk/universal/editor/action/bkground/ApplyTemplateAction;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/universal/editor/action/bkground/ApplyTemplateAction;",
            ")",
            "Lio/reactivex/rxjava3/core/ObservableSource<",
            "+",
            "Lcom/onyx/android/sdk/universal/editor/action/doc/CloseDocumentAction;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lcom/onyx/android/sdk/universal/editor/action/doc/CloseDocumentAction;

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/action/ChangeNoteTemplateAction$d;->e:Lcom/onyx/galaxy/note/category/action/ChangeNoteTemplateAction;

    invoke-static {p0}, Lcom/onyx/galaxy/note/category/action/ChangeNoteTemplateAction;->access$getEditorBundle$p(Lcom/onyx/galaxy/note/category/action/ChangeNoteTemplateAction;)Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lcom/onyx/android/sdk/universal/editor/action/doc/CloseDocumentAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/universal/editor/action/bkground/ApplyTemplateAction;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/action/ChangeNoteTemplateAction$d;->a(Lcom/onyx/android/sdk/universal/editor/action/bkground/ApplyTemplateAction;)Lio/reactivex/rxjava3/core/ObservableSource;

    move-result-object p0

    return-object p0
.end method
