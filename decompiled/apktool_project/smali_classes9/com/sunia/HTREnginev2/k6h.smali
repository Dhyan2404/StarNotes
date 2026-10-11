.class public final synthetic Lcom/sunia/HTREnginev2/k6h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# instance fields
.field public final synthetic e:Lcom/onyx/galaxy/note/common/view/GuideTipsPopup;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/galaxy/note/common/view/GuideTipsPopup;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/k6h;->e:Lcom/onyx/galaxy/note/common/view/GuideTipsPopup;

    return-void
.end method


# virtual methods
.method public final onDismiss()V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/k6h;->e:Lcom/onyx/galaxy/note/common/view/GuideTipsPopup;

    invoke-static {p0}, Lcom/onyx/galaxy/note/common/view/GuideTipsPopup;->b(Lcom/onyx/galaxy/note/common/view/GuideTipsPopup;)V

    return-void
.end method
