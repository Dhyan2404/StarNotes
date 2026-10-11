.class Lcom/tencent/beacon/base/net/b/a/b/c$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/beacon/base/net/b/a/b/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation


# instance fields
.field public a:I

.field public b:Z

.field public c:Z

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public j:I

.field public k:I

.field public l:I

.field final synthetic m:Lcom/tencent/beacon/base/net/b/a/b/c;


# direct methods
.method public constructor <init>(Lcom/tencent/beacon/base/net/b/a/b/c;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/beacon/base/net/b/a/b/c$d;->m:Lcom/tencent/beacon/base/net/b/a/b/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 0

    iget p0, p0, Lcom/tencent/beacon/base/net/b/a/b/c$d;->h:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public b()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/beacon/base/net/b/a/b/c$d;->h:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/beacon/base/net/b/a/b/c$d;->b:Z

    return-void
.end method

.method public c()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/beacon/base/net/b/a/b/c$d;->h:I

    iput-boolean v0, p0, Lcom/tencent/beacon/base/net/b/a/b/c$d;->b:Z

    return-void
.end method
