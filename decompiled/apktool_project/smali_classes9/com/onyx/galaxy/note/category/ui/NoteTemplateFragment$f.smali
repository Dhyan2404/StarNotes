.class public final Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->g1()V
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
.field public final synthetic e:Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;

.field public final synthetic f:Z


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;Z)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment$f;->e:Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;

    iput-boolean p2, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment$f;->f:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 2

    iget-object p1, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment$f;->e:Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;

    invoke-static {p1}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->access$getTemplateViewModel$p(Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;)Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    move-result-object p1

    const-string v0, "templateViewModel"

    const/4 v1, 0x0

    if-nez p1, :cond_0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v1

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->getCustomPaperMultiSelectList()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    iget-object p1, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment$f;->e:Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;

    invoke-static {p1, v1}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->access$togglePaperMultiSelect(Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment$f;->e:Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;

    invoke-static {p1}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->access$getTemplateViewModel$p(Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;)Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    move-result-object p1

    if-nez p1, :cond_1

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, p1

    :goto_0
    iget-boolean p0, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment$f;->f:Z

    invoke-virtual {v1, p0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->loadCustomPaperByDelete(Z)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment$f;->a(Z)V

    return-void
.end method
