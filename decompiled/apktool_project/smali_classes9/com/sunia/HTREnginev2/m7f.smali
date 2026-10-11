.class public final synthetic Lcom/sunia/HTREnginev2/m7f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field public final synthetic e:Lcom/onyx/galaxy/note/editor/view/adapter/DocExcerptListAdapter;

.field public final synthetic f:Lcom/onyx/android/sdk/ui/MaxLengthInputTextEdit;

.field public final synthetic g:Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/galaxy/note/editor/view/adapter/DocExcerptListAdapter;Lcom/onyx/android/sdk/ui/MaxLengthInputTextEdit;Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/m7f;->e:Lcom/onyx/galaxy/note/editor/view/adapter/DocExcerptListAdapter;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/m7f;->f:Lcom/onyx/android/sdk/ui/MaxLengthInputTextEdit;

    iput-object p3, p0, Lcom/sunia/HTREnginev2/m7f;->g:Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;

    return-void
.end method


# virtual methods
.method public final onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 6

    iget-object v0, p0, Lcom/sunia/HTREnginev2/m7f;->e:Lcom/onyx/galaxy/note/editor/view/adapter/DocExcerptListAdapter;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/m7f;->f:Lcom/onyx/android/sdk/ui/MaxLengthInputTextEdit;

    iget-object v2, p0, Lcom/sunia/HTREnginev2/m7f;->g:Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/onyx/galaxy/note/editor/view/adapter/DocExcerptListAdapter;->w(Lcom/onyx/galaxy/note/editor/view/adapter/DocExcerptListAdapter;Lcom/onyx/android/sdk/ui/MaxLengthInputTextEdit;Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method
