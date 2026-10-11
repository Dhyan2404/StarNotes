.class public final Lcom/blankj/utilcode/util/ClickUtils$a;
.super Lcom/blankj/utilcode/util/ClickUtils$OnDebouncingClickListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/blankj/utilcode/util/ClickUtils;->a([Landroid/view/View;ZJLandroid/view/View$OnClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic i:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(ZJLandroid/view/View$OnClickListener;)V
    .locals 0

    iput-object p4, p0, Lcom/blankj/utilcode/util/ClickUtils$a;->i:Landroid/view/View$OnClickListener;

    invoke-direct {p0, p1, p2, p3}, Lcom/blankj/utilcode/util/ClickUtils$OnDebouncingClickListener;-><init>(ZJ)V

    return-void
.end method


# virtual methods
.method public onDebouncingClick(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/blankj/utilcode/util/ClickUtils$a;->i:Landroid/view/View$OnClickListener;

    invoke-interface {p0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    return-void
.end method
