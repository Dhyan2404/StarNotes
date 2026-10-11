.class public final synthetic Lcom/couchbase/lite/internal/core/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/couchbase/lite/internal/utils/Fn$NonNullFunctionThrows;


# instance fields
.field public final synthetic a:Lcom/couchbase/lite/internal/core/C4KeyPair$NativeImpl;

.field public final synthetic b:B

.field public final synthetic c:I

.field public final synthetic d:[[Ljava/lang/String;

.field public final synthetic e:B

.field public final synthetic f:J


# direct methods
.method public synthetic constructor <init>(Lcom/couchbase/lite/internal/core/C4KeyPair$NativeImpl;BI[[Ljava/lang/String;BJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/couchbase/lite/internal/core/b;->a:Lcom/couchbase/lite/internal/core/C4KeyPair$NativeImpl;

    iput-byte p2, p0, Lcom/couchbase/lite/internal/core/b;->b:B

    iput p3, p0, Lcom/couchbase/lite/internal/core/b;->c:I

    iput-object p4, p0, Lcom/couchbase/lite/internal/core/b;->d:[[Ljava/lang/String;

    iput-byte p5, p0, Lcom/couchbase/lite/internal/core/b;->e:B

    iput-wide p6, p0, Lcom/couchbase/lite/internal/core/b;->f:J

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    iget-object v0, p0, Lcom/couchbase/lite/internal/core/b;->a:Lcom/couchbase/lite/internal/core/C4KeyPair$NativeImpl;

    iget-byte v1, p0, Lcom/couchbase/lite/internal/core/b;->b:B

    iget v2, p0, Lcom/couchbase/lite/internal/core/b;->c:I

    iget-object v3, p0, Lcom/couchbase/lite/internal/core/b;->d:[[Ljava/lang/String;

    iget-byte v4, p0, Lcom/couchbase/lite/internal/core/b;->e:B

    iget-wide v5, p0, Lcom/couchbase/lite/internal/core/b;->f:J

    move-object v7, p1

    check-cast v7, Ljava/lang/Long;

    invoke-static/range {v0 .. v7}, Lcom/couchbase/lite/internal/core/C4KeyPair$Peer;->j(Lcom/couchbase/lite/internal/core/C4KeyPair$NativeImpl;BI[[Ljava/lang/String;BJLjava/lang/Long;)[B

    move-result-object p0

    return-object p0
.end method
