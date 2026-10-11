.class public final synthetic Lcom/sunia/HTREnginev2/tli;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# instance fields
.field public final synthetic e:Lcom/onyx/galaxy/note/editor/view/popup/InsertPagePopup;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/galaxy/note/editor/view/popup/InsertPagePopup;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/tli;->e:Lcom/onyx/galaxy/note/editor/view/popup/InsertPagePopup;

    return-void
.end method


# virtual methods
.method public final onDismiss()V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/tli;->e:Lcom/onyx/galaxy/note/editor/view/popup/InsertPagePopup;

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/view/popup/InsertPagePopup;->q(Lcom/onyx/galaxy/note/editor/view/popup/InsertPagePopup;)V

    return-void
.end method
