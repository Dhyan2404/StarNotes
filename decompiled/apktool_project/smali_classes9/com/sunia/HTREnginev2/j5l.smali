.class public final synthetic Lcom/sunia/HTREnginev2/j5l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Landroid/widget/PopupWindow;

.field public final synthetic f:Z


# direct methods
.method public synthetic constructor <init>(Landroid/widget/PopupWindow;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/j5l;->e:Landroid/widget/PopupWindow;

    iput-boolean p2, p0, Lcom/sunia/HTREnginev2/j5l;->f:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/j5l;->e:Landroid/widget/PopupWindow;

    iget-boolean p0, p0, Lcom/sunia/HTREnginev2/j5l;->f:Z

    invoke-static {v0, p0}, Lcom/onyx/galaxy/note/common/extension/PopupWindowKt;->a(Landroid/widget/PopupWindow;Z)V

    return-void
.end method
