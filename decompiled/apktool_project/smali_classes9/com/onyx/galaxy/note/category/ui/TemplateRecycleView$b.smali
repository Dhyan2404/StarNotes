.class public final Lcom/onyx/galaxy/note/category/ui/TemplateRecycleView$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/category/ui/TemplateRecycleView;->loadPaperList(Lcom/onyx/android/sdk/replicator/note/bean/TemplateCategory;ILcom/onyx/galaxy/note/category/data/TemplateSourceType;)V
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
.field public final synthetic e:Lcom/onyx/galaxy/note/category/ui/TemplateRecycleView;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/category/ui/TemplateRecycleView;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/ui/TemplateRecycleView$b;->e:Lcom/onyx/galaxy/note/category/ui/TemplateRecycleView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/onyx/galaxy/note/category/ui/TemplateRecycleView;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/galaxy/note/category/ui/TemplateRecycleView$b;->c(Lcom/onyx/galaxy/note/category/ui/TemplateRecycleView;)V

    return-void
.end method

.method public static final c(Lcom/onyx/galaxy/note/category/ui/TemplateRecycleView;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/onyx/galaxy/note/category/ui/TemplateRecycleView;->access$getPaperTemplateAdapter(Lcom/onyx/galaxy/note/category/ui/TemplateRecycleView;)Lcom/onyx/galaxy/note/category/view/adapter/template/PaperAdapter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/adapter/template/PaperAdapter;->notifySelectChange()V

    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/ui/TemplateRecycleView$b;->b(Ljava/util/List;)V

    return-void
.end method

.method public final b(Ljava/util/List;)V
    .locals 2
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;",
            ">;)V"
        }
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/ui/TemplateRecycleView$b;->e:Lcom/onyx/galaxy/note/category/ui/TemplateRecycleView;

    invoke-static {v0}, Lcom/onyx/galaxy/note/category/ui/TemplateRecycleView;->access$getPaperTemplateAdapter(Lcom/onyx/galaxy/note/category/ui/TemplateRecycleView;)Lcom/onyx/galaxy/note/category/view/adapter/template/PaperAdapter;

    move-result-object v0

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/ui/TemplateRecycleView$b;->e:Lcom/onyx/galaxy/note/category/ui/TemplateRecycleView;

    new-instance v1, Lcom/sunia/HTREnginev2/zan;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/zan;-><init>(Lcom/onyx/galaxy/note/category/ui/TemplateRecycleView;)V

    invoke-virtual {v0, p1, v1}, Lcom/chad/library/adapter4/BaseDifferAdapter;->submitList(Ljava/util/List;Ljava/lang/Runnable;)V

    return-void
.end method
