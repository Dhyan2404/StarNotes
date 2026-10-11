.class public final synthetic Lcom/sunia/HTREnginev2/imm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Action;


# instance fields
.field public final synthetic e:Lcom/onyx/galaxy/note/common/data/EditTagForNoteContext;

.field public final synthetic f:Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/galaxy/note/common/data/EditTagForNoteContext;Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/imm;->e:Lcom/onyx/galaxy/note/common/data/EditTagForNoteContext;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/imm;->f:Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/imm;->e:Lcom/onyx/galaxy/note/common/data/EditTagForNoteContext;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/imm;->f:Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;

    invoke-static {v0, p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;->b(Lcom/onyx/galaxy/note/common/data/EditTagForNoteContext;Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;)V

    return-void
.end method
