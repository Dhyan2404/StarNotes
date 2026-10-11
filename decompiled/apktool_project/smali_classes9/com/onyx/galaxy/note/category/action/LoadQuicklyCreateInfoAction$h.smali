.class public final Lcom/onyx/galaxy/note/category/action/LoadQuicklyCreateInfoAction$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/category/action/LoadQuicklyCreateInfoAction;->n(Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;)Lio/reactivex/rxjava3/core/Observable;
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
.field public final synthetic e:Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/action/LoadQuicklyCreateInfoAction$h;->e:Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/galaxy/note/category/action/template/LoadTemplateByIdAction;)Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;
    .locals 4
    .param p1    # Lcom/onyx/galaxy/note/category/action/template/LoadTemplateByIdAction;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/action/LoadQuicklyCreateInfoAction$h;->e:Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;->getPaperBeanList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/action/LoadQuicklyCreateInfoAction$h;->e:Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;->getPaperBeanList()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    sget-object v1, Lcom/onyx/android/sdk/universal/ui/data/Templates;->INSTANCE:Lcom/onyx/android/sdk/universal/ui/data/Templates;

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/action/template/LoadTemplateByIdAction;->getTemplateModel()Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;

    move-result-object p1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v1, p1, v2, v3, v2}, Lcom/onyx/android/sdk/universal/ui/data/Templates;->toPaperBean$default(Lcom/onyx/android/sdk/universal/ui/data/Templates;Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;Lcom/onyx/android/sdk/genericshape/GeoLayout;ILjava/lang/Object;)Lcom/onyx/android/sdk/replicator/note/bean/PaperBean;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->safeAdd(Ljava/util/Collection;Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/action/LoadQuicklyCreateInfoAction$h;->e:Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/onyx/galaxy/note/category/action/template/LoadTemplateByIdAction;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/action/LoadQuicklyCreateInfoAction$h;->a(Lcom/onyx/galaxy/note/category/action/template/LoadTemplateByIdAction;)Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;

    move-result-object p0

    return-object p0
.end method
