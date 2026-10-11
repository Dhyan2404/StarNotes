.class public final Lcom/onyx/galaxy/note/category/action/import/SaveFilesAsCustomTemplateAction$j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/category/action/import/SaveFilesAsCustomTemplateAction;->u(Lcom/onyx/galaxy/note/category/data/TemplateFileBean;)Lio/reactivex/rxjava3/core/Observable;
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
.field public final synthetic e:Lcom/onyx/galaxy/note/category/data/TemplateFileBean;

.field public final synthetic f:Lcom/onyx/galaxy/note/category/action/import/SaveFilesAsCustomTemplateAction;

.field public final synthetic g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic h:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/category/data/TemplateFileBean;Lcom/onyx/galaxy/note/category/action/import/SaveFilesAsCustomTemplateAction;Ljava/util/Map;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/galaxy/note/category/data/TemplateFileBean;",
            "Lcom/onyx/galaxy/note/category/action/import/SaveFilesAsCustomTemplateAction;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/action/import/SaveFilesAsCustomTemplateAction$j;->e:Lcom/onyx/galaxy/note/category/data/TemplateFileBean;

    iput-object p2, p0, Lcom/onyx/galaxy/note/category/action/import/SaveFilesAsCustomTemplateAction$j;->f:Lcom/onyx/galaxy/note/category/action/import/SaveFilesAsCustomTemplateAction;

    iput-object p3, p0, Lcom/onyx/galaxy/note/category/action/import/SaveFilesAsCustomTemplateAction$j;->g:Ljava/util/Map;

    iput-object p4, p0, Lcom/onyx/galaxy/note/category/action/import/SaveFilesAsCustomTemplateAction$j;->h:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/reader/api/ReaderExportArgs;)Lio/reactivex/rxjava3/core/ObservableSource;
    .locals 3
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderExportArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/reader/api/ReaderExportArgs;",
            ")",
            "Lio/reactivex/rxjava3/core/ObservableSource<",
            "+",
            "Lcom/onyx/android/sdk/reader/request/ExportPagesRequest;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "readerExportArgs"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/onyx/android/sdk/reader/data/ExportPagesArgs;

    iget-object v1, p0, Lcom/onyx/galaxy/note/category/action/import/SaveFilesAsCustomTemplateAction$j;->e:Lcom/onyx/galaxy/note/category/data/TemplateFileBean;

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/category/data/TemplateFileBean;->getSaveFilePath()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, ""

    :cond_0
    iget-object v2, p0, Lcom/onyx/galaxy/note/category/action/import/SaveFilesAsCustomTemplateAction$j;->e:Lcom/onyx/galaxy/note/category/data/TemplateFileBean;

    invoke-virtual {v2}, Lcom/onyx/galaxy/note/category/data/TemplateFileBean;->getPassword()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Lcom/onyx/android/sdk/reader/data/ExportPagesArgs;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/onyx/android/sdk/reader/api/ReaderExportArgs;)V

    new-instance v1, Lcom/onyx/android/sdk/reader/request/ExportPagesRequest;

    iget-object v2, p0, Lcom/onyx/galaxy/note/category/action/import/SaveFilesAsCustomTemplateAction$j;->f:Lcom/onyx/galaxy/note/category/action/import/SaveFilesAsCustomTemplateAction;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v2

    invoke-static {v2}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->readerBundle(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/reader/ReaderBundle;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/onyx/android/sdk/reader/request/ExportPagesRequest;-><init>(Lcom/onyx/android/sdk/reader/ReaderBundle;Lcom/onyx/android/sdk/reader/data/ExportPagesArgs;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/action/import/SaveFilesAsCustomTemplateAction$j;->f:Lcom/onyx/galaxy/note/category/action/import/SaveFilesAsCustomTemplateAction;

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/universal/editor/action/extension/RxBaseAppActionKt;->submitRequestToReader(Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;Lcom/onyx/android/sdk/base/rx/RxBaseRequest;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/category/action/import/SaveFilesAsCustomTemplateAction$j$a;

    iget-object v2, p0, Lcom/onyx/galaxy/note/category/action/import/SaveFilesAsCustomTemplateAction$j;->g:Ljava/util/Map;

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/action/import/SaveFilesAsCustomTemplateAction$j;->h:Ljava/lang/String;

    invoke-direct {v1, v2, p1, p0}, Lcom/onyx/galaxy/note/category/action/import/SaveFilesAsCustomTemplateAction$j$a;-><init>(Ljava/util/Map;Lcom/onyx/android/sdk/reader/api/ReaderExportArgs;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/reader/api/ReaderExportArgs;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/action/import/SaveFilesAsCustomTemplateAction$j;->a(Lcom/onyx/android/sdk/reader/api/ReaderExportArgs;)Lio/reactivex/rxjava3/core/ObservableSource;

    move-result-object p0

    return-object p0
.end method
