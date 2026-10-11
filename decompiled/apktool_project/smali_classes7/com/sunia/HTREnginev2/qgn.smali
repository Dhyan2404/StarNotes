.class public final synthetic Lcom/sunia/HTREnginev2/qgn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field public final synthetic e:I

.field public final synthetic f:Lkotlin/jvm/functions/Function0;


# direct methods
.method public synthetic constructor <init>(ILkotlin/jvm/functions/Function0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/sunia/HTREnginev2/qgn;->e:I

    iput-object p2, p0, Lcom/sunia/HTREnginev2/qgn;->f:Lkotlin/jvm/functions/Function0;

    return-void
.end method


# virtual methods
.method public final onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1

    iget v0, p0, Lcom/sunia/HTREnginev2/qgn;->e:I

    iget-object p0, p0, Lcom/sunia/HTREnginev2/qgn;->f:Lkotlin/jvm/functions/Function0;

    invoke-static {v0, p0, p1, p2, p3}, Lcom/onyx/android/sdk/base/extension/TextViewKt;->a(ILkotlin/jvm/functions/Function0;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method
