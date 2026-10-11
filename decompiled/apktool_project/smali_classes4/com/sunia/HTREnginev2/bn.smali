.class public final synthetic Lcom/sunia/HTREnginev2/bn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Lcom/hjq/window/draggable/BaseDraggable;


# direct methods
.method public synthetic constructor <init>(Lcom/hjq/window/draggable/BaseDraggable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/bn;->e:Lcom/hjq/window/draggable/BaseDraggable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/bn;->e:Lcom/hjq/window/draggable/BaseDraggable;

    invoke-static {p0}, Lcom/hjq/window/draggable/BaseDraggable;->a(Lcom/hjq/window/draggable/BaseDraggable;)V

    return-void
.end method
