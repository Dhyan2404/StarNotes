.class public Lcom/blankj/utilcode/util/BusUtils$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/blankj/utilcode/util/BusUtils;->l(Ljava/lang/Object;Ljava/lang/Object;Lcom/blankj/utilcode/util/BusUtils$b;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:Ljava/lang/Object;

.field public final synthetic f:Ljava/lang/Object;

.field public final synthetic g:Lcom/blankj/utilcode/util/BusUtils$b;

.field public final synthetic h:Z

.field public final synthetic i:Lcom/blankj/utilcode/util/BusUtils;


# direct methods
.method public constructor <init>(Lcom/blankj/utilcode/util/BusUtils;Ljava/lang/Object;Ljava/lang/Object;Lcom/blankj/utilcode/util/BusUtils$b;Z)V
    .locals 0

    iput-object p1, p0, Lcom/blankj/utilcode/util/BusUtils$a;->i:Lcom/blankj/utilcode/util/BusUtils;

    iput-object p2, p0, Lcom/blankj/utilcode/util/BusUtils$a;->e:Ljava/lang/Object;

    iput-object p3, p0, Lcom/blankj/utilcode/util/BusUtils$a;->f:Ljava/lang/Object;

    iput-object p4, p0, Lcom/blankj/utilcode/util/BusUtils$a;->g:Lcom/blankj/utilcode/util/BusUtils$b;

    iput-boolean p5, p0, Lcom/blankj/utilcode/util/BusUtils$a;->h:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/blankj/utilcode/util/BusUtils$a;->i:Lcom/blankj/utilcode/util/BusUtils;

    iget-object v1, p0, Lcom/blankj/utilcode/util/BusUtils$a;->e:Ljava/lang/Object;

    iget-object v2, p0, Lcom/blankj/utilcode/util/BusUtils$a;->f:Ljava/lang/Object;

    iget-object v3, p0, Lcom/blankj/utilcode/util/BusUtils$a;->g:Lcom/blankj/utilcode/util/BusUtils$b;

    iget-boolean p0, p0, Lcom/blankj/utilcode/util/BusUtils$a;->h:Z

    invoke-static {v0, v1, v2, v3, p0}, Lcom/blankj/utilcode/util/BusUtils;->a(Lcom/blankj/utilcode/util/BusUtils;Ljava/lang/Object;Ljava/lang/Object;Lcom/blankj/utilcode/util/BusUtils$b;Z)V

    return-void
.end method
