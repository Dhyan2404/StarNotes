.class public Lcom/tencent/qimei/l/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qimei/l/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/tencent/qimei/l/b;


# direct methods
.method public constructor <init>(Lcom/tencent/qimei/l/b;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qimei/l/a;->a:Lcom/tencent/qimei/l/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    iget-object p0, p0, Lcom/tencent/qimei/l/a;->a:Lcom/tencent/qimei/l/b;

    invoke-static {p0}, Lcom/tencent/qimei/l/b;->a(Lcom/tencent/qimei/l/b;)V

    return-void
.end method
