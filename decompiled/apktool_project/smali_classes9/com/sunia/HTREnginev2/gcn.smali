.class public final synthetic Lcom/sunia/HTREnginev2/gcn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field public final synthetic e:Lcom/onyx/galaxy/note/editor/view/dialog/TextFontImportDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/galaxy/note/editor/view/dialog/TextFontImportDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/gcn;->e:Lcom/onyx/galaxy/note/editor/view/dialog/TextFontImportDialog;

    return-void
.end method


# virtual methods
.method public final onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/gcn;->e:Lcom/onyx/galaxy/note/editor/view/dialog/TextFontImportDialog;

    invoke-static {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/editor/view/dialog/TextFontImportDialog;->a(Lcom/onyx/galaxy/note/editor/view/dialog/TextFontImportDialog;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method
