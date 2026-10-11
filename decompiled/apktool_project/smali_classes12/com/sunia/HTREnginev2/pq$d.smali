.class public Lcom/sunia/HTREnginev2/pq$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/math3/analysis/BivariateFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sunia/HTREnginev2/pq;-><init>([DZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:[[D

.field public final synthetic b:Lcom/sunia/HTREnginev2/pq;


# direct methods
.method public constructor <init>(Lcom/sunia/HTREnginev2/pq;[[D)V
    .locals 0

    iput-object p1, p0, Lcom/sunia/HTREnginev2/pq$d;->b:Lcom/sunia/HTREnginev2/pq;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/pq$d;->a:[[D

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public value(DD)D
    .locals 10

    mul-double v0, p1, p1

    mul-double v2, v0, p1

    const/4 v4, 0x4

    new-array v5, v4, [D

    const/4 v6, 0x0

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    aput-wide v7, v5, v6

    const/4 v9, 0x1

    aput-wide p1, v5, v9

    const/4 p1, 0x2

    aput-wide v0, v5, p1

    const/4 p2, 0x3

    aput-wide v2, v5, p2

    new-array v0, v4, [D

    const-wide/16 v1, 0x0

    aput-wide v1, v0, v6

    aput-wide v1, v0, v9

    aput-wide v7, v0, p1

    aput-wide p3, v0, p2

    iget-object p1, p0, Lcom/sunia/HTREnginev2/pq$d;->b:Lcom/sunia/HTREnginev2/pq;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/pq$d;->a:[[D

    invoke-static {p1, v5, v0, p0}, Lcom/sunia/HTREnginev2/pq;->a(Lcom/sunia/HTREnginev2/pq;[D[D[[D)D

    move-result-wide p0

    return-wide p0
.end method
