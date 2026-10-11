.class public final synthetic Lcom/sunia/HTREnginev2/k7f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field public final synthetic e:Lcom/onyx/galaxy/note/editor/view/adapter/DocExcerptListAdapter;

.field public final synthetic f:Lcom/onyx/android/sdk/ui/MaxLengthInputTextEdit;

.field public final synthetic g:Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/galaxy/note/editor/view/adapter/DocExcerptListAdapter;Lcom/onyx/android/sdk/ui/MaxLengthInputTextEdit;Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/k7f;->e:Lcom/onyx/galaxy/note/editor/view/adapter/DocExcerptListAdapter;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/k7f;->f:Lcom/onyx/android/sdk/ui/MaxLengthInputTextEdit;

    iput-object p3, p0, Lcom/sunia/HTREnginev2/k7f;->g:Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 2

    iget-object v0, p0, Lcom/sunia/HTREnginev2/k7f;->e:Lcom/onyx/galaxy/note/editor/view/adapter/DocExcerptListAdapter;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/k7f;->f:Lcom/onyx/android/sdk/ui/MaxLengthInputTextEdit;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/k7f;->g:Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;

    invoke-static {v0, v1, p0, p1, p2}, Lcom/onyx/galaxy/note/editor/view/adapter/DocExcerptListAdapter;->u(Lcom/onyx/galaxy/note/editor/view/adapter/DocExcerptListAdapter;Lcom/onyx/android/sdk/ui/MaxLengthInputTextEdit;Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;Landroid/view/View;Z)V

    return-void
.end method
