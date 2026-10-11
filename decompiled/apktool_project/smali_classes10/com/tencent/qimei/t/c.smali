.class public Lcom/tencent/qimei/t/c;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 5

    invoke-static {p0}, Lcom/tencent/qimei/l/g;->b(Ljava/lang/String;)Lcom/tencent/qimei/l/g;

    move-result-object v0

    const-string v1, "is_first"

    invoke-virtual {v0, v1}, Lcom/tencent/qimei/l/g;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/tencent/qimei/w/b;->a:Ljava/util/Random;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {}, Lcom/tencent/qimei/d/a;->a()Lcom/tencent/qimei/d/a;

    move-result-object v1

    mul-int/lit16 v2, v0, 0x3e8

    int-to-long v2, v2

    new-instance v4, Lcom/tencent/qimei/t/b;

    invoke-direct {v4, p0, v0}, Lcom/tencent/qimei/t/b;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, v2, v3, v4}, Lcom/tencent/qimei/d/a;->a(JLjava/lang/Runnable;)V

    return-void
.end method
