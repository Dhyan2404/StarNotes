.class public final Lcom/onyx/android/sdk/universal/editor/action/InsertPdfPagesAction$r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/action/InsertPdfPagesAction;->s(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/rxjava3/core/Observable;
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

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nInsertPdfPagesAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 InsertPdfPagesAction.kt\ncom/onyx/android/sdk/universal/editor/action/InsertPdfPagesAction$savePageAsPdf$2\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,155:1\n1#2:156\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nInsertPdfPagesAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 InsertPdfPagesAction.kt\ncom/onyx/android/sdk/universal/editor/action/InsertPdfPagesAction$savePageAsPdf$2\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,155:1\n1#2:156\n*E\n"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/onyx/android/sdk/universal/editor/action/InsertPdfPagesAction;

.field public final synthetic f:Lcom/onyx/android/sdk/reader/api/ReaderExportArgs;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/action/InsertPdfPagesAction;Lcom/onyx/android/sdk/reader/api/ReaderExportArgs;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/InsertPdfPagesAction$r;->e:Lcom/onyx/android/sdk/universal/editor/action/InsertPdfPagesAction;

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/action/InsertPdfPagesAction$r;->f:Lcom/onyx/android/sdk/reader/api/ReaderExportArgs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Lcom/onyx/android/sdk/universal/editor/action/InsertPdfPagesAction;
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/InsertPdfPagesAction$r;->e:Lcom/onyx/android/sdk/universal/editor/action/InsertPdfPagesAction;

    invoke-static {p1}, Lcom/onyx/android/sdk/universal/editor/action/InsertPdfPagesAction;->access$getInsertPageArgs$p(Lcom/onyx/android/sdk/universal/editor/action/InsertPdfPagesAction;)Lcom/onyx/android/sdk/universal/editor/data/InsertPageArgs;

    move-result-object p1

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/InsertPdfPagesAction$r;->f:Lcom/onyx/android/sdk/reader/api/ReaderExportArgs;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/reader/api/ReaderExportArgs;->getOutputPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/universal/editor/data/InsertPageArgs;->setTemplatePath(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/InsertPdfPagesAction$r;->e:Lcom/onyx/android/sdk/universal/editor/action/InsertPdfPagesAction;

    invoke-static {p1}, Lcom/onyx/android/sdk/universal/editor/action/InsertPdfPagesAction;->access$getInsertPageArgs$p(Lcom/onyx/android/sdk/universal/editor/action/InsertPdfPagesAction;)Lcom/onyx/android/sdk/universal/editor/data/InsertPageArgs;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/data/InsertPageArgs;->getTemplatePageIndexList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/InsertPdfPagesAction$r;->e:Lcom/onyx/android/sdk/universal/editor/action/InsertPdfPagesAction;

    invoke-static {v0}, Lcom/onyx/android/sdk/universal/editor/action/InsertPdfPagesAction;->access$getInsertPageArgs$p(Lcom/onyx/android/sdk/universal/editor/action/InsertPdfPagesAction;)Lcom/onyx/android/sdk/universal/editor/data/InsertPageArgs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/data/InsertPageArgs;->getTemplatePageIndexList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/InsertPdfPagesAction$r;->e:Lcom/onyx/android/sdk/universal/editor/action/InsertPdfPagesAction;

    invoke-static {v0}, Lcom/onyx/android/sdk/universal/editor/action/InsertPdfPagesAction;->access$getInsertPageArgs$p(Lcom/onyx/android/sdk/universal/editor/action/InsertPdfPagesAction;)Lcom/onyx/android/sdk/universal/editor/data/InsertPageArgs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/data/InsertPageArgs;->getTemplatePageIndexList()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/InsertPdfPagesAction$r;->e:Lcom/onyx/android/sdk/universal/editor/action/InsertPdfPagesAction;

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/InsertPdfPagesAction$r;->a(Ljava/lang/Object;)Lcom/onyx/android/sdk/universal/editor/action/InsertPdfPagesAction;

    move-result-object p0

    return-object p0
.end method
