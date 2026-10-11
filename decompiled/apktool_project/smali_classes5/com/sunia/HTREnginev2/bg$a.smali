.class public Lcom/sunia/HTREnginev2/bg$a;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sunia/HTREnginev2/bg;->r()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/sunia/HTREnginev2/bg;


# direct methods
.method public constructor <init>(Lcom/sunia/HTREnginev2/bg;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/sunia/HTREnginev2/bg$a;->a:Lcom/sunia/HTREnginev2/bg;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/bg$a;->a:Lcom/sunia/HTREnginev2/bg;

    invoke-static {p0, p1}, Lcom/sunia/HTREnginev2/bg;->a(Lcom/sunia/HTREnginev2/bg;Landroid/os/Message;)V

    return-void
.end method
