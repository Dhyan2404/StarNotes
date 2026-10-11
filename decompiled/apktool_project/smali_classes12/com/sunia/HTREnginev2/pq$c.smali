.class public Lcom/sunia/HTREnginev2/pq$c;
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

    iput-object p1, p0, Lcom/sunia/HTREnginev2/pq$c;->b:Lcom/sunia/HTREnginev2/pq;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/pq$c;->a:[[D

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public value(DD)D
    .locals 10

    const/4 v0, 0x4

    new-array v1, v0, [D

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    aput-wide v3, v1, v2

    const/4 v5, 0x1

    aput-wide v3, v1, v5

    const/4 v3, 0x2

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    aput-wide v6, v1, v3

    const/4 v4, 0x3

    aput-wide p1, v1, v4

    mul-double p1, p3, p3

    mul-double v8, p1, p3

    new-array v0, v0, [D

    aput-wide v6, v0, v2

    aput-wide p3, v0, v5

    aput-wide p1, v0, v3

    aput-wide v8, v0, v4

    iget-object p1, p0, Lcom/sunia/HTREnginev2/pq$c;->b:Lcom/sunia/HTREnginev2/pq;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/pq$c;->a:[[D

    invoke-static {p1, v1, v0, p0}, Lcom/sunia/HTREnginev2/pq;->a(Lcom/sunia/HTREnginev2/pq;[D[D[[D)D

    move-result-wide p0

    return-wide p0
.end method
