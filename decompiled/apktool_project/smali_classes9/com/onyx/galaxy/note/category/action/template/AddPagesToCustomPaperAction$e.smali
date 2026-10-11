.class public final Lcom/onyx/galaxy/note/category/action/template/AddPagesToCustomPaperAction$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/category/action/template/AddPagesToCustomPaperAction;->create()Lio/reactivex/rxjava3/core/Observable;
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
.field public final synthetic e:Lcom/onyx/galaxy/note/category/action/template/AddPagesToCustomPaperAction;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/category/action/template/AddPagesToCustomPaperAction;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/action/template/AddPagesToCustomPaperAction$e;->e:Lcom/onyx/galaxy/note/category/action/template/AddPagesToCustomPaperAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/net/Uri;)Lio/reactivex/rxjava3/core/ObservableSource;
    .locals 7
    .param p1    # Landroid/net/Uri;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Lio/reactivex/rxjava3/core/ObservableSource<",
            "+",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/onyx/galaxy/note/category/action/template/ImportFilesAsCustomPaperAction;

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/action/template/AddPagesToCustomPaperAction$e;->e:Lcom/onyx/galaxy/note/category/action/template/AddPagesToCustomPaperAction;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    sget-object v1, Lcom/onyx/galaxy/note/category/data/TemplateFileBean;->Companion:Lcom/onyx/galaxy/note/category/data/TemplateFileBean$Companion;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Lcom/onyx/galaxy/note/category/data/TemplateFileBean$Companion;->createTemplateFileBean$default(Lcom/onyx/galaxy/note/category/data/TemplateFileBean$Companion;Landroid/net/Uri;Ljava/util/List;Ljava/lang/String;ILjava/lang/Object;)Lcom/onyx/galaxy/note/category/data/TemplateFileBean;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/onyx/galaxy/note/category/action/template/ImportFilesAsCustomPaperAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroid/net/Uri;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/action/template/AddPagesToCustomPaperAction$e;->a(Landroid/net/Uri;)Lio/reactivex/rxjava3/core/ObservableSource;

    move-result-object p0

    return-object p0
.end method
