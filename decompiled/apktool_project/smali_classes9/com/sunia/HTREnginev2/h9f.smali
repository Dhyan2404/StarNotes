.class public final synthetic Lcom/sunia/HTREnginev2/h9f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;

.field public final synthetic f:I


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/h9f;->e:Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;

    iput p2, p0, Lcom/sunia/HTREnginev2/h9f;->f:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/h9f;->e:Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;

    iget p0, p0, Lcom/sunia/HTREnginev2/h9f;->f:I

    invoke-static {v0, p0}, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->s0(Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;I)V

    return-void
.end method
