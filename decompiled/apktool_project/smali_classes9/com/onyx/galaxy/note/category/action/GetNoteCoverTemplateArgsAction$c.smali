.class public final Lcom/onyx/galaxy/note/category/action/GetNoteCoverTemplateArgsAction$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/category/action/GetNoteCoverTemplateArgsAction;->create()Lio/reactivex/rxjava3/core/Observable;
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
.field public final synthetic e:Lcom/onyx/galaxy/note/category/action/GetNoteCoverTemplateArgsAction;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/category/action/GetNoteCoverTemplateArgsAction;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/action/GetNoteCoverTemplateArgsAction$c;->e:Lcom/onyx/galaxy/note/category/action/GetNoteCoverTemplateArgsAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;)Lio/reactivex/rxjava3/core/ObservableSource;
    .locals 7
    .param p1    # Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;",
            ")",
            "Lio/reactivex/rxjava3/core/ObservableSource<",
            "+",
            "Lcom/onyx/galaxy/note/editor/action/template/LoadPageTemplateJsonAction;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lcom/onyx/galaxy/note/editor/action/template/LoadPageTemplateJsonAction;

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/action/GetNoteCoverTemplateArgsAction$c;->e:Lcom/onyx/galaxy/note/category/action/GetNoteCoverTemplateArgsAction;

    invoke-static {p0}, Lcom/onyx/galaxy/note/category/action/GetNoteCoverTemplateArgsAction;->access$getEditorBundle$p(Lcom/onyx/galaxy/note/category/action/GetNoteCoverTemplateArgsAction;)Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lcom/onyx/galaxy/note/editor/action/template/LoadPageTemplateJsonAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;IZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/action/GetNoteCoverTemplateArgsAction$c;->a(Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;)Lio/reactivex/rxjava3/core/ObservableSource;

    move-result-object p0

    return-object p0
.end method
