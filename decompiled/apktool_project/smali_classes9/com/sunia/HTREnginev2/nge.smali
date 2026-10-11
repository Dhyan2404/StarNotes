.class public final synthetic Lcom/sunia/HTREnginev2/nge;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic e:Lcom/onyx/galaxy/note/category/ui/CreateNotePopup;

.field public final synthetic f:Landroid/view/View;

.field public final synthetic g:Lkotlin/jvm/functions/Function0;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/galaxy/note/category/ui/CreateNotePopup;Landroid/view/View;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/nge;->e:Lcom/onyx/galaxy/note/category/ui/CreateNotePopup;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/nge;->f:Landroid/view/View;

    iput-object p3, p0, Lcom/sunia/HTREnginev2/nge;->g:Lkotlin/jvm/functions/Function0;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/sunia/HTREnginev2/nge;->e:Lcom/onyx/galaxy/note/category/ui/CreateNotePopup;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/nge;->f:Landroid/view/View;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/nge;->g:Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1, p0, p1}, Lcom/onyx/galaxy/note/category/ui/CreateNotePopup;->l(Lcom/onyx/galaxy/note/category/ui/CreateNotePopup;Landroid/view/View;Lkotlin/jvm/functions/Function0;Landroid/view/View;)V

    return-void
.end method
