.class public abstract Lcom/blankj/utilcode/util/ClickUtils$OnDebouncingClickListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/blankj/utilcode/util/ClickUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "OnDebouncingClickListener"
.end annotation


# static fields
.field public static g:Z = true

.field public static final h:Ljava/lang/Runnable;


# instance fields
.field public e:J

.field public f:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/blankj/utilcode/util/ClickUtils$OnDebouncingClickListener$a;

    invoke-direct {v0}, Lcom/blankj/utilcode/util/ClickUtils$OnDebouncingClickListener$a;-><init>()V

    sput-object v0, Lcom/blankj/utilcode/util/ClickUtils$OnDebouncingClickListener;->h:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x1

    const-wide/16 v1, 0x3e8

    .line 1
    invoke-direct {p0, v0, v1, v2}, Lcom/blankj/utilcode/util/ClickUtils$OnDebouncingClickListener;-><init>(ZJ)V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 1

    const/4 v0, 0x1

    .line 3
    invoke-direct {p0, v0, p1, p2}, Lcom/blankj/utilcode/util/ClickUtils$OnDebouncingClickListener;-><init>(ZJ)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 2

    const-wide/16 v0, 0x3e8

    .line 2
    invoke-direct {p0, p1, v0, v1}, Lcom/blankj/utilcode/util/ClickUtils$OnDebouncingClickListener;-><init>(ZJ)V

    return-void
.end method

.method public constructor <init>(ZJ)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-boolean p1, p0, Lcom/blankj/utilcode/util/ClickUtils$OnDebouncingClickListener;->f:Z

    .line 6
    iput-wide p2, p0, Lcom/blankj/utilcode/util/ClickUtils$OnDebouncingClickListener;->e:J

    return-void
.end method

.method public static synthetic a(Z)Z
    .locals 0

    sput-boolean p0, Lcom/blankj/utilcode/util/ClickUtils$OnDebouncingClickListener;->g:Z

    return p0
.end method

.method public static b(Landroid/view/View;J)Z
    .locals 0
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p0, p1, p2}, Lcom/blankj/utilcode/util/b;->E0(Landroid/view/View;J)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-boolean v0, p0, Lcom/blankj/utilcode/util/ClickUtils$OnDebouncingClickListener;->f:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/blankj/utilcode/util/ClickUtils$OnDebouncingClickListener;->g:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/blankj/utilcode/util/ClickUtils$OnDebouncingClickListener;->g:Z

    sget-object v0, Lcom/blankj/utilcode/util/ClickUtils$OnDebouncingClickListener;->h:Ljava/lang/Runnable;

    iget-wide v1, p0, Lcom/blankj/utilcode/util/ClickUtils$OnDebouncingClickListener;->e:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-virtual {p0, p1}, Lcom/blankj/utilcode/util/ClickUtils$OnDebouncingClickListener;->onDebouncingClick(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/blankj/utilcode/util/ClickUtils$OnDebouncingClickListener;->e:J

    invoke-static {p1, v0, v1}, Lcom/blankj/utilcode/util/ClickUtils$OnDebouncingClickListener;->b(Landroid/view/View;J)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/blankj/utilcode/util/ClickUtils$OnDebouncingClickListener;->onDebouncingClick(Landroid/view/View;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public abstract onDebouncingClick(Landroid/view/View;)V
.end method
