.class public final Lcom/onyx/galaxy/note/category/action/template/ImportFilesAsCustomPaperAction$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/category/action/template/ImportFilesAsCustomPaperAction;->m(Ljava/util/List;)Lio/reactivex/rxjava3/core/Observable;
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
.field public final synthetic e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic f:Lcom/onyx/galaxy/note/category/action/template/ImportFilesAsCustomPaperAction;


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/onyx/galaxy/note/category/action/template/ImportFilesAsCustomPaperAction;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;",
            ">;",
            "Lcom/onyx/galaxy/note/category/action/template/ImportFilesAsCustomPaperAction;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/action/template/ImportFilesAsCustomPaperAction$d;->e:Ljava/util/List;

    iput-object p2, p0, Lcom/onyx/galaxy/note/category/action/template/ImportFilesAsCustomPaperAction$d;->f:Lcom/onyx/galaxy/note/category/action/template/ImportFilesAsCustomPaperAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/galaxy/note/category/data/TemplateImportBean;)Ljava/lang/Boolean;
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/category/data/TemplateImportBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/action/template/ImportFilesAsCustomPaperAction$d;->e:Ljava/util/List;

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/action/template/ImportFilesAsCustomPaperAction$d;->f:Lcom/onyx/galaxy/note/category/action/template/ImportFilesAsCustomPaperAction;

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/category/action/template/ImportFilesAsCustomPaperAction;->access$saveModel(Lcom/onyx/galaxy/note/category/action/template/ImportFilesAsCustomPaperAction;Lcom/onyx/galaxy/note/category/data/TemplateImportBean;)Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/onyx/galaxy/note/category/data/TemplateImportBean;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/action/template/ImportFilesAsCustomPaperAction$d;->a(Lcom/onyx/galaxy/note/category/data/TemplateImportBean;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
