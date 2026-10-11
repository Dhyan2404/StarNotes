.class public final synthetic Lcom/sunia/HTREnginev2/oli;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Lcom/onyx/galaxy/note/editor/view/popup/ColorPickPopup;

.field public final synthetic f:Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/galaxy/note/editor/view/popup/ColorPickPopup;Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/oli;->e:Lcom/onyx/galaxy/note/editor/view/popup/ColorPickPopup;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/oli;->f:Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/oli;->e:Lcom/onyx/galaxy/note/editor/view/popup/ColorPickPopup;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/oli;->f:Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;

    invoke-static {v0, p0}, Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout$pickColor$1;->v(Lcom/onyx/galaxy/note/editor/view/popup/ColorPickPopup;Lcom/onyx/galaxy/note/editor/view/InputTextToolLayout;)V

    return-void
.end method
