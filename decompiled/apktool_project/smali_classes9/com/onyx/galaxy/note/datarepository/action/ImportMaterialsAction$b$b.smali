.class public final Lcom/onyx/galaxy/note/datarepository/action/ImportMaterialsAction$b$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/datarepository/action/ImportMaterialsAction$b;->a(Lcom/onyx/galaxy/note/datarepository/bean/LibraryBean;)Lio/reactivex/rxjava3/core/ObservableSource;
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
.field public final synthetic e:Lcom/onyx/galaxy/note/datarepository/action/ImportMaterialsAction;

.field public final synthetic f:Lcom/onyx/galaxy/note/datarepository/bean/LibraryBean;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/datarepository/action/ImportMaterialsAction;Lcom/onyx/galaxy/note/datarepository/bean/LibraryBean;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/datarepository/action/ImportMaterialsAction$b$b;->e:Lcom/onyx/galaxy/note/datarepository/action/ImportMaterialsAction;

    iput-object p2, p0, Lcom/onyx/galaxy/note/datarepository/action/ImportMaterialsAction$b$b;->f:Lcom/onyx/galaxy/note/datarepository/bean/LibraryBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)Lio/reactivex/rxjava3/core/ObservableSource;
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/galaxy/note/category/data/TemplateFileBean;",
            ">;)",
            "Lio/reactivex/rxjava3/core/ObservableSource<",
            "+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/datarepository/action/ImportMaterialsAction$b$b;->e:Lcom/onyx/galaxy/note/datarepository/action/ImportMaterialsAction;

    iget-object p0, p0, Lcom/onyx/galaxy/note/datarepository/action/ImportMaterialsAction$b$b;->f:Lcom/onyx/galaxy/note/datarepository/bean/LibraryBean;

    invoke-static {v0, p0, p1}, Lcom/onyx/galaxy/note/datarepository/action/ImportMaterialsAction;->access$handleImport(Lcom/onyx/galaxy/note/datarepository/action/ImportMaterialsAction;Lcom/onyx/galaxy/note/datarepository/bean/LibraryBean;Ljava/util/List;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/datarepository/action/ImportMaterialsAction$b$b;->a(Ljava/util/List;)Lio/reactivex/rxjava3/core/ObservableSource;

    move-result-object p0

    return-object p0
.end method
