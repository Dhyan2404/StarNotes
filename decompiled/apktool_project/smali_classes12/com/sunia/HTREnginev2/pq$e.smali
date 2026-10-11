.class public Lcom/sunia/HTREnginev2/pq$e;
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

    iput-object p1, p0, Lcom/sunia/HTREnginev2/pq$e;->b:Lcom/sunia/HTREnginev2/pq;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/pq$e;->a:[[D

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public value(DD)D
    .locals 11

    mul-double v0, p1, p1

    const/4 v2, 0x4

    new-array v3, v2, [D

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    aput-wide v5, v3, v4

    const/4 v7, 0x1

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    aput-wide v8, v3, v7

    const/4 v10, 0x2

    aput-wide p1, v3, v10

    const/4 p1, 0x3

    aput-wide v0, v3, p1

    mul-double v0, p3, p3

    new-array p2, v2, [D

    aput-wide v5, p2, v4

    aput-wide v8, p2, v7

    aput-wide p3, p2, v10

    aput-wide v0, p2, p1

    iget-object p1, p0, Lcom/sunia/HTREnginev2/pq$e;->b:Lcom/sunia/HTREnginev2/pq;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/pq$e;->a:[[D

    invoke-static {p1, v3, p2, p0}, Lcom/sunia/HTREnginev2/pq;->a(Lcom/sunia/HTREnginev2/pq;[D[D[[D)D

    move-result-wide p0

    return-wide p0
.end method
