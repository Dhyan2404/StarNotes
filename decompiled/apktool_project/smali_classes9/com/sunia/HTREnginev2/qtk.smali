.class public final synthetic Lcom/sunia/HTREnginev2/qtk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic e:Lcom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/qtk;->e:Lcom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup;

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/qtk;->e:Lcom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup;

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup;->r(Lcom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup;Landroid/content/DialogInterface;)V

    return-void
.end method
