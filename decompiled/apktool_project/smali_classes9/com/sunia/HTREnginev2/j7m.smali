.class public final synthetic Lcom/sunia/HTREnginev2/j7m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic e:Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;

.field public final synthetic f:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/j7m;->e:Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/j7m;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/j7m;->e:Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/j7m;->f:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;->l0(Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method
