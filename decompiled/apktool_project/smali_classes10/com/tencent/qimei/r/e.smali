.class public Lcom/tencent/qimei/r/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/qimei/g/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/qimei/r/f;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lcom/tencent/qimei/r/f;


# direct methods
.method public constructor <init>(Lcom/tencent/qimei/r/f;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qimei/r/e;->b:Lcom/tencent/qimei/r/f;

    iput-object p2, p0, Lcom/tencent/qimei/r/e;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/tencent/qimei/r/e;->b:Lcom/tencent/qimei/r/f;

    invoke-static {p0, p1, p2, p3}, Lcom/tencent/qimei/r/f;->a(Lcom/tencent/qimei/r/f;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public varargs a(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1

    .line 2
    iget-object p2, p0, Lcom/tencent/qimei/r/e;->b:Lcom/tencent/qimei/r/f;

    iget-object v0, p0, Lcom/tencent/qimei/r/e;->a:Ljava/lang/String;

    invoke-static {p2, p1, v0}, Lcom/tencent/qimei/r/f;->a(Lcom/tencent/qimei/r/f;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/tencent/qimei/r/e;->b:Lcom/tencent/qimei/r/f;

    invoke-static {p0}, Lcom/tencent/qimei/r/f;->b(Lcom/tencent/qimei/r/f;)V

    return-void
.end method
