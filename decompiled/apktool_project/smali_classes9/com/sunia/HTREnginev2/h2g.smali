.class public final synthetic Lcom/sunia/HTREnginev2/h2g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic e:Lcom/onyx/galaxy/note/editor/view/dialog/ExportSpecifiedPagesDialog;

.field public final synthetic f:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

.field public final synthetic g:Lcom/onyx/android/sdk/universal/editor/EditorBundle;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/galaxy/note/editor/view/dialog/ExportSpecifiedPagesDialog;Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/h2g;->e:Lcom/onyx/galaxy/note/editor/view/dialog/ExportSpecifiedPagesDialog;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/h2g;->f:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    iput-object p3, p0, Lcom/sunia/HTREnginev2/h2g;->g:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/sunia/HTREnginev2/h2g;->e:Lcom/onyx/galaxy/note/editor/view/dialog/ExportSpecifiedPagesDialog;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/h2g;->f:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/h2g;->g:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    invoke-static {v0, v1, p0, p1}, Lcom/onyx/galaxy/note/editor/view/dialog/ExportSpecifiedPagesDialog;->u0(Lcom/onyx/galaxy/note/editor/view/dialog/ExportSpecifiedPagesDialog;Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/EditorBundle;Landroid/view/View;)V

    return-void
.end method
