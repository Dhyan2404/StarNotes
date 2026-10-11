.class public final Lcom/graphbuilder/math/PascalsTriangle;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/graphbuilder/math/PascalsTriangle$b;
    }
.end annotation


# static fields
.field public static final b:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lcom/graphbuilder/math/PascalsTriangle$b;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Lcom/graphbuilder/math/PascalsTriangle$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/graphbuilder/math/PascalsTriangle$a;

    invoke-direct {v0}, Lcom/graphbuilder/math/PascalsTriangle$a;-><init>()V

    sput-object v0, Lcom/graphbuilder/math/PascalsTriangle;->b:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/graphbuilder/math/PascalsTriangle;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/graphbuilder/math/PascalsTriangle$b;

    iput-object v0, p0, Lcom/graphbuilder/math/PascalsTriangle;->a:Lcom/graphbuilder/math/PascalsTriangle$b;

    return-void
.end method


# virtual methods
.method public nCr(II)D
    .locals 11

    if-ltz p1, :cond_8

    if-ltz p2, :cond_8

    if-le p2, p1, :cond_0

    goto/16 :goto_5

    :cond_0
    iget-object v0, p0, Lcom/graphbuilder/math/PascalsTriangle;->a:Lcom/graphbuilder/math/PascalsTriangle$b;

    invoke-static {v0}, Lcom/graphbuilder/math/PascalsTriangle$b;->a(Lcom/graphbuilder/math/PascalsTriangle$b;)[[D

    move-result-object v0

    array-length v0, v0

    if-lt p1, v0, :cond_6

    iget-object v0, p0, Lcom/graphbuilder/math/PascalsTriangle;->a:Lcom/graphbuilder/math/PascalsTriangle$b;

    invoke-static {v0}, Lcom/graphbuilder/math/PascalsTriangle$b;->a(Lcom/graphbuilder/math/PascalsTriangle$b;)[[D

    move-result-object v0

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    if-le p1, v0, :cond_1

    add-int/lit8 v0, p1, 0x1

    new-array v0, v0, [[D

    goto :goto_0

    :cond_1
    add-int/2addr v0, v1

    new-array v0, v0, [[D

    :goto_0
    const/4 v2, 0x0

    move v3, v2

    :goto_1
    iget-object v4, p0, Lcom/graphbuilder/math/PascalsTriangle;->a:Lcom/graphbuilder/math/PascalsTriangle$b;

    invoke-static {v4}, Lcom/graphbuilder/math/PascalsTriangle$b;->a(Lcom/graphbuilder/math/PascalsTriangle$b;)[[D

    move-result-object v4

    array-length v4, v4

    if-ge v3, v4, :cond_2

    iget-object v4, p0, Lcom/graphbuilder/math/PascalsTriangle;->a:Lcom/graphbuilder/math/PascalsTriangle$b;

    invoke-static {v4}, Lcom/graphbuilder/math/PascalsTriangle$b;->a(Lcom/graphbuilder/math/PascalsTriangle$b;)[[D

    move-result-object v4

    aget-object v4, v4, v3

    aput-object v4, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lcom/graphbuilder/math/PascalsTriangle;->a:Lcom/graphbuilder/math/PascalsTriangle$b;

    invoke-static {v3}, Lcom/graphbuilder/math/PascalsTriangle$b;->a(Lcom/graphbuilder/math/PascalsTriangle$b;)[[D

    move-result-object v3

    array-length v3, v3

    :goto_2
    array-length v4, v0

    if-ge v3, v4, :cond_5

    div-int/lit8 v4, v3, 0x2

    add-int/2addr v4, v1

    new-array v4, v4, [D

    aput-object v4, v0, v3

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    aput-wide v5, v4, v2

    move v4, v1

    :goto_3
    aget-object v5, v0, v3

    array-length v6, v5

    if-ge v4, v6, :cond_4

    add-int/lit8 v6, v3, -0x1

    aget-object v6, v0, v6

    add-int/lit8 v7, v4, -0x1

    aget-wide v7, v6, v7

    array-length v9, v6

    if-ge v4, v9, :cond_3

    aget-wide v9, v6, v4

    add-double/2addr v7, v9

    goto :goto_4

    :cond_3
    const-wide/high16 v9, 0x4000000000000000L    # 2.0

    mul-double/2addr v7, v9

    :goto_4
    aput-wide v7, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_5
    iget-object v1, p0, Lcom/graphbuilder/math/PascalsTriangle;->a:Lcom/graphbuilder/math/PascalsTriangle$b;

    invoke-static {v1, v0}, Lcom/graphbuilder/math/PascalsTriangle$b;->b(Lcom/graphbuilder/math/PascalsTriangle$b;[[D)[[D

    :cond_6
    mul-int/lit8 v0, p2, 0x2

    if-le v0, p1, :cond_7

    sub-int p2, p1, p2

    :cond_7
    iget-object p0, p0, Lcom/graphbuilder/math/PascalsTriangle;->a:Lcom/graphbuilder/math/PascalsTriangle$b;

    invoke-static {p0}, Lcom/graphbuilder/math/PascalsTriangle$b;->a(Lcom/graphbuilder/math/PascalsTriangle$b;)[[D

    move-result-object p0

    aget-object p0, p0, p1

    aget-wide p0, p0, p2

    return-wide p0

    :cond_8
    :goto_5
    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public reset()V
    .locals 5

    iget-object p0, p0, Lcom/graphbuilder/math/PascalsTriangle;->a:Lcom/graphbuilder/math/PascalsTriangle$b;

    const/4 v0, 0x1

    new-array v1, v0, [[D

    new-array v0, v0, [D

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    const/4 v4, 0x0

    aput-wide v2, v0, v4

    aput-object v0, v1, v4

    invoke-static {p0, v1}, Lcom/graphbuilder/math/PascalsTriangle$b;->b(Lcom/graphbuilder/math/PascalsTriangle$b;[[D)[[D

    return-void
.end method
