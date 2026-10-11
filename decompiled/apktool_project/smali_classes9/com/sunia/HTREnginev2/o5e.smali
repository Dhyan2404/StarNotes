.class public final synthetic Lcom/sunia/HTREnginev2/o5e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic e:Lkotlin/jvm/functions/Function0;

.field public final synthetic f:Lcom/onyx/galaxy/note/common/view/CommonProgressDialog;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function0;Lcom/onyx/galaxy/note/common/view/CommonProgressDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/o5e;->e:Lkotlin/jvm/functions/Function0;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/o5e;->f:Lcom/onyx/galaxy/note/common/view/CommonProgressDialog;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/o5e;->e:Lkotlin/jvm/functions/Function0;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/o5e;->f:Lcom/onyx/galaxy/note/common/view/CommonProgressDialog;

    invoke-static {v0, p0, p1}, Lcom/onyx/galaxy/note/common/view/CommonProgressDialog;->a(Lkotlin/jvm/functions/Function0;Lcom/onyx/galaxy/note/common/view/CommonProgressDialog;Landroid/view/View;)V

    return-void
.end method
