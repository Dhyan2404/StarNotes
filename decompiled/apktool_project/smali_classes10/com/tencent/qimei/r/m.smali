.class public Lcom/tencent/qimei/r/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lcom/tencent/qimei/r/n;


# direct methods
.method public constructor <init>(Lcom/tencent/qimei/r/n;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qimei/r/m;->b:Lcom/tencent/qimei/r/n;

    iput-object p2, p0, Lcom/tencent/qimei/r/m;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/qimei/r/m;->b:Lcom/tencent/qimei/r/n;

    iget-object p0, p0, Lcom/tencent/qimei/r/m;->a:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/tencent/qimei/r/n;->a(Lcom/tencent/qimei/r/n;Ljava/lang/String;)V

    return-void
.end method
