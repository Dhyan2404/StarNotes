.class public final synthetic Lcom/sunia/HTREnginev2/wdm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic e:Lcom/onyx/galaxy/note/editor/view/popup/SelectFilePagesPopup;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/galaxy/note/editor/view/popup/SelectFilePagesPopup;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/wdm;->e:Lcom/onyx/galaxy/note/editor/view/popup/SelectFilePagesPopup;

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/wdm;->e:Lcom/onyx/galaxy/note/editor/view/popup/SelectFilePagesPopup;

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/SelectFilePagesPopup;->r(Lcom/onyx/galaxy/note/editor/view/popup/SelectFilePagesPopup;Landroid/content/DialogInterface;)V

    return-void
.end method
