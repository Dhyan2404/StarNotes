.class Lcom/tencent/beacon/a/c/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/beacon/a/c/b;->a(Landroid/content/Context;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/beacon/a/d/a;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:J


# direct methods
.method public constructor <init>(Lcom/tencent/beacon/a/d/a;Ljava/lang/String;J)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/beacon/a/c/a;->a:Lcom/tencent/beacon/a/d/a;

    iput-object p2, p0, Lcom/tencent/beacon/a/c/a;->b:Ljava/lang/String;

    iput-wide p3, p0, Lcom/tencent/beacon/a/c/a;->c:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/tencent/beacon/a/c/a;->a:Lcom/tencent/beacon/a/d/a;

    invoke-virtual {v0}, Lcom/tencent/beacon/a/d/a;->edit()Lcom/tencent/beacon/a/d/a$a;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/beacon/base/util/b;->a(Landroid/content/SharedPreferences$Editor;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/beacon/a/c/a;->b:Ljava/lang/String;

    iget-wide v2, p0, Lcom/tencent/beacon/a/c/a;->c:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    :cond_0
    return-void
.end method
