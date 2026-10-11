.class public final Lcom/onyx/galaxy/note/category/action/LoadQuicklyCreateInfoAction$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/category/action/LoadQuicklyCreateInfoAction;->m(Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;)Lio/reactivex/rxjava3/core/Observable;
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

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/action/LoadQuicklyCreateInfoAction$f;->e:Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/universal/editor/action/bkground/LoadCoverByIdAction;)Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;
    .locals 3
    .param p1    # Lcom/onyx/android/sdk/universal/editor/action/bkground/LoadCoverByIdAction;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/action/LoadQuicklyCreateInfoAction$f;->e:Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;

    sget-object v1, Lcom/onyx/android/sdk/universal/ui/data/Templates;->INSTANCE:Lcom/onyx/android/sdk/universal/ui/data/Templates;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/action/bkground/LoadCoverByIdAction;->getCoverModel()Lcom/onyx/android/sdk/replicator/note/db/model/CoverModel;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/universal/ui/data/Templates;->coverModelToJsonBean(Lcom/onyx/android/sdk/replicator/note/db/model/CoverModel;)Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;->setCoverJsonBean(Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/action/LoadQuicklyCreateInfoAction$f;->e:Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/action/bkground/LoadCoverByIdAction;->getCoverModel()Lcom/onyx/android/sdk/replicator/note/db/model/CoverModel;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/onyx/android/sdk/universal/ui/data/Templates;->coverTemplateRect(Lcom/onyx/android/sdk/replicator/note/db/model/CoverModel;)Landroid/graphics/RectF;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;->setCoverRectF(Landroid/graphics/RectF;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/action/LoadQuicklyCreateInfoAction$f;->e:Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/universal/editor/action/bkground/LoadCoverByIdAction;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/action/LoadQuicklyCreateInfoAction$f;->a(Lcom/onyx/android/sdk/universal/editor/action/bkground/LoadCoverByIdAction;)Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;

    move-result-object p0

    return-object p0
.end method
