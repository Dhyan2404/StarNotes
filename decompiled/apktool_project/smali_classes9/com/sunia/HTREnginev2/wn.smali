.class public final synthetic Lcom/sunia/HTREnginev2/wn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field public final synthetic e:Lcom/onyx/galaxy/note/common/view/BasePopupWindow;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/galaxy/note/common/view/BasePopupWindow;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/wn;->e:Lcom/onyx/galaxy/note/common/view/BasePopupWindow;

    return-void
.end method


# virtual methods
.method public final onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/wn;->e:Lcom/onyx/galaxy/note/common/view/BasePopupWindow;

    invoke-static {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->b(Lcom/onyx/galaxy/note/common/view/BasePopupWindow;Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method
