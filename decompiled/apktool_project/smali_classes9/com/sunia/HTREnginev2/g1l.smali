.class public final synthetic Lcom/sunia/HTREnginev2/g1l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;

.field public final synthetic f:Landroid/graphics/Point;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;Landroid/graphics/Point;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/g1l;->e:Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/g1l;->f:Landroid/graphics/Point;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/g1l;->e:Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/g1l;->f:Landroid/graphics/Point;

    invoke-static {v0, p0}, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->d(Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;Landroid/graphics/Point;)V

    return-void
.end method
