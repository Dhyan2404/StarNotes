.class public Lcom/tencent/qimei/k/d;
.super Lcom/tencent/qimei/k/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tencent/qimei/k/a<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/qimei/k/a;-><init>()V

    iput-object p1, p0, Lcom/tencent/qimei/k/d;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/tencent/qimei/k/d;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qimei/k/d;->a:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/tencent/qimei/k/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return-object p1

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/tencent/qimei/k/d;->b:Ljava/lang/String;

    return-object p0
.end method
