.class public final Lcom/onyx/galaxy/note/category/action/template/ImportFilesAsCustomPaperAction$c;
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
.field public final synthetic e:Lcom/onyx/galaxy/note/category/action/template/ImportFilesAsCustomPaperAction;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/category/action/template/ImportFilesAsCustomPaperAction;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/action/template/ImportFilesAsCustomPaperAction$c;->e:Lcom/onyx/galaxy/note/category/action/template/ImportFilesAsCustomPaperAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/galaxy/note/category/data/TemplateImportBean;)Lio/reactivex/rxjava3/core/ObservableSource;
    .locals 8
    .param p1    # Lcom/onyx/galaxy/note/category/data/TemplateImportBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/galaxy/note/category/data/TemplateImportBean;",
            ")",
            "Lio/reactivex/rxjava3/core/ObservableSource<",
            "+",
            "Lcom/onyx/galaxy/note/category/data/TemplateImportBean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "origin"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/onyx/android/sdk/universal/docmanager/action/name/GenerateNameAction;

    sget-object v1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v2, Lcom/onyx/galaxy/note/R$string;->custom_paper:I

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getStringSafely(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/onyx/galaxy/note/R$integer;->custom_template_max_length:I

    invoke-virtual {v1, v3}, Lcom/onyx/android/sdk/base/utils/ResManager;->getInteger(I)I

    move-result v3

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/action/template/ImportFilesAsCustomPaperAction$c;->e:Lcom/onyx/galaxy/note/category/action/template/ImportFilesAsCustomPaperAction;

    invoke-static {p0}, Lcom/onyx/galaxy/note/category/action/template/ImportFilesAsCustomPaperAction;->access$getCheckDuplicate$p(Lcom/onyx/galaxy/note/category/action/template/ImportFilesAsCustomPaperAction;)Lkotlin/jvm/functions/Function1;

    move-result-object v4

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/onyx/android/sdk/universal/docmanager/action/name/GenerateNameAction;-><init>(Ljava/lang/String;ILkotlin/jvm/functions/Function1;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    new-instance v0, Lcom/onyx/galaxy/note/category/action/template/ImportFilesAsCustomPaperAction$c$a;

    invoke-direct {v0, p1}, Lcom/onyx/galaxy/note/category/action/template/ImportFilesAsCustomPaperAction$c$a;-><init>(Lcom/onyx/galaxy/note/category/data/TemplateImportBean;)V

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/onyx/galaxy/note/category/data/TemplateImportBean;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/action/template/ImportFilesAsCustomPaperAction$c;->a(Lcom/onyx/galaxy/note/category/data/TemplateImportBean;)Lio/reactivex/rxjava3/core/ObservableSource;

    move-result-object p0

    return-object p0
.end method
