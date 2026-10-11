.class public final synthetic Lcom/sunia/HTREnginev2/ho;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Lcom/onyx/galaxy/note/editor/view/popup/BaseShortcutPopup;

.field public final synthetic f:Z


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/galaxy/note/editor/view/popup/BaseShortcutPopup;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/ho;->e:Lcom/onyx/galaxy/note/editor/view/popup/BaseShortcutPopup;

    iput-boolean p2, p0, Lcom/sunia/HTREnginev2/ho;->f:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/ho;->e:Lcom/onyx/galaxy/note/editor/view/popup/BaseShortcutPopup;

    iget-boolean p0, p0, Lcom/sunia/HTREnginev2/ho;->f:Z

    invoke-static {v0, p0}, Lcom/onyx/galaxy/note/editor/view/popup/BaseShortcutPopup;->k(Lcom/onyx/galaxy/note/editor/view/popup/BaseShortcutPopup;Z)V

    return-void
.end method
