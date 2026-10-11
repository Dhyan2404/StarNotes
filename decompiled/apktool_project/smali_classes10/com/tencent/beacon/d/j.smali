.class public Lcom/tencent/beacon/d/j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected a:J

.field protected b:I

.field protected c:[B


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/tencent/beacon/d/j;->a:J

    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/beacon/d/j;->b:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/beacon/d/j;->c:[B

    return-void
.end method
