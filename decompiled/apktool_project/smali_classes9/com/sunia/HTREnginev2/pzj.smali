.class public final synthetic Lcom/sunia/HTREnginev2/pzj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:Lcom/onyx/galaxy/note/editor/view/adapter/NoteOverviewAdapter;

.field public final synthetic g:Landroid/widget/ImageView;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Lcom/onyx/galaxy/note/editor/view/adapter/NoteOverviewAdapter;Landroid/widget/ImageView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/pzj;->e:Ljava/lang/String;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/pzj;->f:Lcom/onyx/galaxy/note/editor/view/adapter/NoteOverviewAdapter;

    iput-object p3, p0, Lcom/sunia/HTREnginev2/pzj;->g:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/sunia/HTREnginev2/pzj;->e:Ljava/lang/String;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/pzj;->f:Lcom/onyx/galaxy/note/editor/view/adapter/NoteOverviewAdapter;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/pzj;->g:Landroid/widget/ImageView;

    invoke-static {v0, v1, p0}, Lcom/onyx/galaxy/note/editor/view/adapter/NoteOverviewAdapter;->q(Ljava/lang/String;Lcom/onyx/galaxy/note/editor/view/adapter/NoteOverviewAdapter;Landroid/widget/ImageView;)V

    return-void
.end method
