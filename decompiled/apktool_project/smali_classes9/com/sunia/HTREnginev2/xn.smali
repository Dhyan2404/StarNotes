.class public final synthetic Lcom/sunia/HTREnginev2/xn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# instance fields
.field public final synthetic e:Lcom/onyx/galaxy/note/common/view/BasePopupWindow;

.field public final synthetic f:Landroid/widget/PopupWindow$OnDismissListener;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/galaxy/note/common/view/BasePopupWindow;Landroid/widget/PopupWindow$OnDismissListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/xn;->e:Lcom/onyx/galaxy/note/common/view/BasePopupWindow;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/xn;->f:Landroid/widget/PopupWindow$OnDismissListener;

    return-void
.end method


# virtual methods
.method public final onDismiss()V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/xn;->e:Lcom/onyx/galaxy/note/common/view/BasePopupWindow;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/xn;->f:Landroid/widget/PopupWindow$OnDismissListener;

    invoke-static {v0, p0}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->c(Lcom/onyx/galaxy/note/common/view/BasePopupWindow;Landroid/widget/PopupWindow$OnDismissListener;)V

    return-void
.end method
