.class public final synthetic Lcom/sunia/HTREnginev2/k5j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Action;


# instance fields
.field public final synthetic e:Lcom/onyx/galaxy/note/common/data/EditTagForNoteContext;

.field public final synthetic f:Lcom/onyx/galaxy/note/editor/view/popup/LongPressPopup;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/galaxy/note/common/data/EditTagForNoteContext;Lcom/onyx/galaxy/note/editor/view/popup/LongPressPopup;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/k5j;->e:Lcom/onyx/galaxy/note/common/data/EditTagForNoteContext;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/k5j;->f:Lcom/onyx/galaxy/note/editor/view/popup/LongPressPopup;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/k5j;->e:Lcom/onyx/galaxy/note/common/data/EditTagForNoteContext;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/k5j;->f:Lcom/onyx/galaxy/note/editor/view/popup/LongPressPopup;

    invoke-static {v0, p0}, Lcom/onyx/galaxy/note/editor/view/popup/LongPressPopup;->k(Lcom/onyx/galaxy/note/common/data/EditTagForNoteContext;Lcom/onyx/galaxy/note/editor/view/popup/LongPressPopup;)V

    return-void
.end method
