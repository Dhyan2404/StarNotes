.class public final Lcom/blankj/utilcode/util/SizeUtils$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/blankj/utilcode/util/SizeUtils;->forceGetViewSize(Landroid/view/View;Lcom/blankj/utilcode/util/SizeUtils$OnGetSizeListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic e:Lcom/blankj/utilcode/util/SizeUtils$OnGetSizeListener;

.field public final synthetic f:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/blankj/utilcode/util/SizeUtils$OnGetSizeListener;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/blankj/utilcode/util/SizeUtils$a;->e:Lcom/blankj/utilcode/util/SizeUtils$OnGetSizeListener;

    iput-object p2, p0, Lcom/blankj/utilcode/util/SizeUtils$a;->f:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/blankj/utilcode/util/SizeUtils$a;->e:Lcom/blankj/utilcode/util/SizeUtils$OnGetSizeListener;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/blankj/utilcode/util/SizeUtils$a;->f:Landroid/view/View;

    invoke-interface {v0, p0}, Lcom/blankj/utilcode/util/SizeUtils$OnGetSizeListener;->onGetSize(Landroid/view/View;)V

    :cond_0
    return-void
.end method
