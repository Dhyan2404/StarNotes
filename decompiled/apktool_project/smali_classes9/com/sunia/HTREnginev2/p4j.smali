.class public final synthetic Lcom/sunia/HTREnginev2/p4j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Landroid/view/View;

.field public final synthetic f:Z


# direct methods
.method public synthetic constructor <init>(Landroid/view/View;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/p4j;->e:Landroid/view/View;

    iput-boolean p2, p0, Lcom/sunia/HTREnginev2/p4j;->f:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/p4j;->e:Landroid/view/View;

    iget-boolean p0, p0, Lcom/sunia/HTREnginev2/p4j;->f:Z

    invoke-static {v0, p0}, Lcom/onyx/galaxy/note/account/ui/LoginFragment$initCbPolicy$serviceCS$1;->a(Landroid/view/View;Z)V

    return-void
.end method
