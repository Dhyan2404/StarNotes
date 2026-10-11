.class public final synthetic Lcom/sunia/HTREnginev2/f7f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic e:Lcom/chad/library/adapter4/viewholder/DataBindingHolder;


# direct methods
.method public synthetic constructor <init>(Lcom/chad/library/adapter4/viewholder/DataBindingHolder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/f7f;->e:Lcom/chad/library/adapter4/viewholder/DataBindingHolder;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/f7f;->e:Lcom/chad/library/adapter4/viewholder/DataBindingHolder;

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/adapter/DocExcerptListAdapter;->q(Lcom/chad/library/adapter4/viewholder/DataBindingHolder;Landroid/view/View;)V

    return-void
.end method
