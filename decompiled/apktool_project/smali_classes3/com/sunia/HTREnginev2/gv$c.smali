.class public Lcom/sunia/HTREnginev2/gv$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sunia/HTREnginev2/gv;->f(Landroid/view/View;)Landroidx/browser/browseractions/BrowserActionsFallbackMenuView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:Landroid/widget/TextView;

.field public final synthetic f:Lcom/sunia/HTREnginev2/gv;


# direct methods
.method public constructor <init>(Lcom/sunia/HTREnginev2/gv;Landroid/widget/TextView;)V
    .locals 0

    iput-object p1, p0, Lcom/sunia/HTREnginev2/gv$c;->f:Lcom/sunia/HTREnginev2/gv;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/gv$c;->e:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/sunia/HTREnginev2/gv$c;->e:Landroid/widget/TextView;

    invoke-static {p1}, Landroidx/core/widget/TextViewCompat;->getMaxLines(Landroid/widget/TextView;)I

    move-result p1

    const v0, 0x7fffffff

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/sunia/HTREnginev2/gv$c;->e:Landroid/widget/TextView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    iget-object p0, p0, Lcom/sunia/HTREnginev2/gv$c;->e:Landroid/widget/TextView;

    sget-object p1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/sunia/HTREnginev2/gv$c;->e:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    iget-object p0, p0, Lcom/sunia/HTREnginev2/gv$c;->e:Landroid/widget/TextView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    :goto_0
    return-void
.end method
