.class public abstract Lcom/sunia/HTREnginev2/pve;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/chad/library/adapter4/BaseQuickAdapter$OnItemClickListener;
.implements Lcom/chad/library/adapter4/BaseQuickAdapter$OnItemChildClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/chad/library/adapter4/BaseQuickAdapter$OnItemClickListener<",
        "TT;>;",
        "Lcom/chad/library/adapter4/BaseQuickAdapter$OnItemChildClickListener<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final a:J

.field public b:J


# direct methods
.method public constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/sunia/HTREnginev2/pve;->a:J

    return-void
.end method


# virtual methods
.method public onClick(Lcom/chad/library/adapter4/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 6
    .param p1    # Lcom/chad/library/adapter4/BaseQuickAdapter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/chad/library/adapter4/BaseQuickAdapter<",
            "TT;*>;",
            "Landroid/view/View;",
            "I)V"
        }
    .end annotation

    const-string v0, "adapter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "view"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/sunia/HTREnginev2/pve;->b:J

    sub-long v2, v0, v2

    iget-wide v4, p0, Lcom/sunia/HTREnginev2/pve;->a:J

    cmp-long v4, v2, v4

    if-gez v4, :cond_0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    :cond_0
    iput-wide v0, p0, Lcom/sunia/HTREnginev2/pve;->b:J

    invoke-virtual {p0, p1, p2, p3}, Lcom/sunia/HTREnginev2/pve;->onSingleClick(Lcom/chad/library/adapter4/BaseQuickAdapter;Landroid/view/View;I)V

    :cond_1
    return-void
.end method

.method public onItemClick(Lcom/chad/library/adapter4/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 6
    .param p1    # Lcom/chad/library/adapter4/BaseQuickAdapter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/chad/library/adapter4/BaseQuickAdapter<",
            "TT;*>;",
            "Landroid/view/View;",
            "I)V"
        }
    .end annotation

    const-string v0, "adapter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "view"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/sunia/HTREnginev2/pve;->b:J

    sub-long v2, v0, v2

    iget-wide v4, p0, Lcom/sunia/HTREnginev2/pve;->a:J

    cmp-long v4, v2, v4

    if-gez v4, :cond_0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    :cond_0
    iput-wide v0, p0, Lcom/sunia/HTREnginev2/pve;->b:J

    invoke-virtual {p0, p1, p2, p3}, Lcom/sunia/HTREnginev2/pve;->onSingleClick(Lcom/chad/library/adapter4/BaseQuickAdapter;Landroid/view/View;I)V

    :cond_1
    return-void
.end method

.method public abstract onSingleClick(Lcom/chad/library/adapter4/BaseQuickAdapter;Landroid/view/View;I)V
    .param p1    # Lcom/chad/library/adapter4/BaseQuickAdapter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/chad/library/adapter4/BaseQuickAdapter<",
            "TT;*>;",
            "Landroid/view/View;",
            "I)V"
        }
    .end annotation
.end method
