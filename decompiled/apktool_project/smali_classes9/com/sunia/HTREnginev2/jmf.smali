.class public final synthetic Lcom/sunia/HTREnginev2/jmf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Lcom/onyx/galaxy/note/editor/view/EditorViewAutoReLocLayout;

.field public final synthetic f:Landroid/view/ViewGroup;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/galaxy/note/editor/view/EditorViewAutoReLocLayout;Landroid/view/ViewGroup;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/jmf;->e:Lcom/onyx/galaxy/note/editor/view/EditorViewAutoReLocLayout;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/jmf;->f:Landroid/view/ViewGroup;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/jmf;->e:Lcom/onyx/galaxy/note/editor/view/EditorViewAutoReLocLayout;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/jmf;->f:Landroid/view/ViewGroup;

    invoke-static {v0, p0}, Lcom/onyx/galaxy/note/editor/view/EditorViewAutoReLocLayout;->d(Lcom/onyx/galaxy/note/editor/view/EditorViewAutoReLocLayout;Landroid/view/ViewGroup;)V

    return-void
.end method
