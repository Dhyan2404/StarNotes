.class public final synthetic Lcom/sunia/HTREnginev2/t8f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;

.field public final synthetic f:Lcom/onyx/galaxy/note/editor/event/OverviewSearchEvent;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;Lcom/onyx/galaxy/note/editor/event/OverviewSearchEvent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/t8f;->e:Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/t8f;->f:Lcom/onyx/galaxy/note/editor/event/OverviewSearchEvent;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/t8f;->e:Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/t8f;->f:Lcom/onyx/galaxy/note/editor/event/OverviewSearchEvent;

    invoke-static {v0, p0}, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->E0(Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;Lcom/onyx/galaxy/note/editor/event/OverviewSearchEvent;)V

    return-void
.end method
