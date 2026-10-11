.class public final synthetic Lcom/sunia/HTREnginev2/lkf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Lcom/hjq/window/EasyWindow;


# direct methods
.method public synthetic constructor <init>(Lcom/hjq/window/EasyWindow;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/lkf;->e:Lcom/hjq/window/EasyWindow;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/lkf;->e:Lcom/hjq/window/EasyWindow;

    invoke-static {p0}, Lcom/hjq/window/EasyWindow;->a(Lcom/hjq/window/EasyWindow;)V

    return-void
.end method
