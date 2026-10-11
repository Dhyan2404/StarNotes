.class public Lcom/tencent/qimei/aa/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/qimei/g/c;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lcom/tencent/qimei/aa/f;


# direct methods
.method public constructor <init>(Lcom/tencent/qimei/aa/f;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qimei/aa/e;->b:Lcom/tencent/qimei/aa/f;

    iput-object p2, p0, Lcom/tencent/qimei/aa/e;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/tencent/qimei/aa/e;->b:Lcom/tencent/qimei/aa/f;

    invoke-static {p0, p1, p2, p3}, Lcom/tencent/qimei/aa/f;->a(Lcom/tencent/qimei/aa/f;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public varargs a(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    .line 2
    iget-object p2, p0, Lcom/tencent/qimei/aa/e;->b:Lcom/tencent/qimei/aa/f;

    iget-object p0, p0, Lcom/tencent/qimei/aa/e;->a:Ljava/lang/String;

    invoke-static {p2, p1, p0}, Lcom/tencent/qimei/aa/f;->a(Lcom/tencent/qimei/aa/f;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
