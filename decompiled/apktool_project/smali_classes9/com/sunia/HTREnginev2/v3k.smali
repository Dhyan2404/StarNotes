.class public final synthetic Lcom/sunia/HTREnginev2/v3k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Action;


# instance fields
.field public final synthetic e:Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;

.field public final synthetic f:Lcom/onyx/galaxy/note/common/data/EditTagForNoteContext;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;Lcom/onyx/galaxy/note/common/data/EditTagForNoteContext;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/v3k;->e:Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/v3k;->f:Lcom/onyx/galaxy/note/common/data/EditTagForNoteContext;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/v3k;->e:Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/v3k;->f:Lcom/onyx/galaxy/note/common/data/EditTagForNoteContext;

    invoke-static {v0, p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->H0(Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;Lcom/onyx/galaxy/note/common/data/EditTagForNoteContext;)V

    return-void
.end method
