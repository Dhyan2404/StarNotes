.class public final Lcom/onyx/galaxy/note/category/ui/PaperEditPopup$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/category/ui/PaperEditPopup;->o()V
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
.field public final synthetic e:Lcom/onyx/galaxy/note/category/ui/PaperEditPopup;

.field public final synthetic f:Z


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/category/ui/PaperEditPopup;Z)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/ui/PaperEditPopup$a;->e:Lcom/onyx/galaxy/note/category/ui/PaperEditPopup;

    iput-boolean p2, p0, Lcom/onyx/galaxy/note/category/ui/PaperEditPopup$a;->f:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 1

    iget-object p1, p0, Lcom/onyx/galaxy/note/category/ui/PaperEditPopup$a;->e:Lcom/onyx/galaxy/note/category/ui/PaperEditPopup;

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/ui/PaperEditPopup;->getTemplateViewModel()Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->getCustomPaperMultiSelectList()Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/ui/PaperEditPopup$a;->e:Lcom/onyx/galaxy/note/category/ui/PaperEditPopup;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/ui/PaperEditPopup;->getTemplate()Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;

    :cond_0
    iget-object p1, p0, Lcom/onyx/galaxy/note/category/ui/PaperEditPopup$a;->e:Lcom/onyx/galaxy/note/category/ui/PaperEditPopup;

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/ui/PaperEditPopup;->getTemplateViewModel()Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-boolean p0, p0, Lcom/onyx/galaxy/note/category/ui/PaperEditPopup$a;->f:Z

    invoke-virtual {p1, p0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->loadCustomPaperByDelete(Z)V

    :cond_1
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/ui/PaperEditPopup$a;->a(Z)V

    return-void
.end method
