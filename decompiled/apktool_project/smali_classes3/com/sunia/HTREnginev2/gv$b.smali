.class public Lcom/sunia/HTREnginev2/gv$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sunia/HTREnginev2/gv;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/view/View;

.field public final synthetic b:Lcom/sunia/HTREnginev2/gv;


# direct methods
.method public constructor <init>(Lcom/sunia/HTREnginev2/gv;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/sunia/HTREnginev2/gv$b;->b:Lcom/sunia/HTREnginev2/gv;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/gv$b;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 0

    iget-object p1, p0, Lcom/sunia/HTREnginev2/gv$b;->b:Lcom/sunia/HTREnginev2/gv;

    iget-object p1, p1, Lcom/sunia/HTREnginev2/gv;->h:Lcom/sunia/HTREnginev2/gv$d;

    if-nez p1, :cond_0

    const-string p0, "BrowserActionskMenuUi"

    const-string p1, "Cannot trigger menu item listener, it is null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sunia/HTREnginev2/gv$b;->a:Landroid/view/View;

    invoke-interface {p1, p0}, Lcom/sunia/HTREnginev2/gv$d;->a(Landroid/view/View;)V

    return-void
.end method
