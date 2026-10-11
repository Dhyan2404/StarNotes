.class public final synthetic Lcom/sunia/HTREnginev2/rfm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic e:Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/rfm;->e:Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup;

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/rfm;->e:Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup;

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup;->t(Lcom/onyx/galaxy/note/editor/view/popup/SelectNotePagesPopup;Landroid/content/DialogInterface;)V

    return-void
.end method
