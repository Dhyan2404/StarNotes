.class public Lcom/tencent/qimei/p/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/qimei/p/b;->a(Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lcom/tencent/qimei/p/b;


# direct methods
.method public constructor <init>(Lcom/tencent/qimei/p/b;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qimei/p/a;->b:Lcom/tencent/qimei/p/b;

    iput-object p2, p0, Lcom/tencent/qimei/p/a;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/qimei/p/a;->b:Lcom/tencent/qimei/p/b;

    iget-object p0, p0, Lcom/tencent/qimei/p/a;->a:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/tencent/qimei/p/b;->b(Ljava/lang/String;)Z

    return-void
.end method
