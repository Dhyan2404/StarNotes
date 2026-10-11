.class public Lcom/github/mikephil/charting/utils/ObjectPool;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/mikephil/charting/utils/ObjectPool$Poolable;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/github/mikephil/charting/utils/ObjectPool$Poolable;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static g:I


# instance fields
.field public a:I

.field public b:I

.field public c:[Ljava/lang/Object;

.field public d:I

.field public e:Lcom/github/mikephil/charting/utils/ObjectPool$Poolable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public f:F


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(ILcom/github/mikephil/charting/utils/ObjectPool$Poolable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-lez p1, :cond_0

    iput p1, p0, Lcom/github/mikephil/charting/utils/ObjectPool;->b:I

    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Lcom/github/mikephil/charting/utils/ObjectPool;->c:[Ljava/lang/Object;

    const/4 p1, 0x0

    iput p1, p0, Lcom/github/mikephil/charting/utils/ObjectPool;->d:I

    iput-object p2, p0, Lcom/github/mikephil/charting/utils/ObjectPool;->e:Lcom/github/mikephil/charting/utils/ObjectPool$Poolable;

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lcom/github/mikephil/charting/utils/ObjectPool;->f:F

    invoke-virtual {p0}, Lcom/github/mikephil/charting/utils/ObjectPool;->a()V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Object Pool must be instantiated with a capacity greater than 0!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static declared-synchronized create(ILcom/github/mikephil/charting/utils/ObjectPool$Poolable;)Lcom/github/mikephil/charting/utils/ObjectPool;
    .locals 2

    const-class v0, Lcom/github/mikephil/charting/utils/ObjectPool;

    monitor-enter v0

    :try_start_0
    new-instance v1, Lcom/github/mikephil/charting/utils/ObjectPool;

    invoke-direct {v1, p0, p1}, Lcom/github/mikephil/charting/utils/ObjectPool;-><init>(ILcom/github/mikephil/charting/utils/ObjectPool$Poolable;)V

    sget p0, Lcom/github/mikephil/charting/utils/ObjectPool;->g:I

    iput p0, v1, Lcom/github/mikephil/charting/utils/ObjectPool;->a:I

    add-int/lit8 p0, p0, 0x1

    sput p0, Lcom/github/mikephil/charting/utils/ObjectPool;->g:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget v0, p0, Lcom/github/mikephil/charting/utils/ObjectPool;->f:F

    invoke-virtual {p0, v0}, Lcom/github/mikephil/charting/utils/ObjectPool;->b(F)V

    return-void
.end method

.method public final b(F)V
    .locals 4

    iget v0, p0, Lcom/github/mikephil/charting/utils/ObjectPool;->b:I

    int-to-float v1, v0

    mul-float/2addr v1, p1

    float-to-int p1, v1

    const/4 v1, 0x1

    if-ge p1, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    if-le p1, v0, :cond_1

    goto :goto_0

    :cond_1
    move v0, p1

    :goto_0
    const/4 p1, 0x0

    :goto_1
    if-ge p1, v0, :cond_2

    iget-object v2, p0, Lcom/github/mikephil/charting/utils/ObjectPool;->c:[Ljava/lang/Object;

    iget-object v3, p0, Lcom/github/mikephil/charting/utils/ObjectPool;->e:Lcom/github/mikephil/charting/utils/ObjectPool$Poolable;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/utils/ObjectPool$Poolable;->instantiate()Lcom/github/mikephil/charting/utils/ObjectPool$Poolable;

    move-result-object v3

    aput-object v3, v2, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_2
    sub-int/2addr v0, v1

    iput v0, p0, Lcom/github/mikephil/charting/utils/ObjectPool;->d:I

    return-void
.end method

.method public final c()V
    .locals 4

    iget v0, p0, Lcom/github/mikephil/charting/utils/ObjectPool;->b:I

    mul-int/lit8 v1, v0, 0x2

    iput v1, p0, Lcom/github/mikephil/charting/utils/ObjectPool;->b:I

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v3, p0, Lcom/github/mikephil/charting/utils/ObjectPool;->c:[Ljava/lang/Object;

    aget-object v3, v3, v2

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iput-object v1, p0, Lcom/github/mikephil/charting/utils/ObjectPool;->c:[Ljava/lang/Object;

    return-void
.end method

.method public declared-synchronized get()Lcom/github/mikephil/charting/utils/ObjectPool$Poolable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/github/mikephil/charting/utils/ObjectPool;->d:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/github/mikephil/charting/utils/ObjectPool;->f:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/github/mikephil/charting/utils/ObjectPool;->a()V

    :cond_0
    iget-object v0, p0, Lcom/github/mikephil/charting/utils/ObjectPool;->c:[Ljava/lang/Object;

    iget v1, p0, Lcom/github/mikephil/charting/utils/ObjectPool;->d:I

    aget-object v0, v0, v1

    check-cast v0, Lcom/github/mikephil/charting/utils/ObjectPool$Poolable;

    sget v2, Lcom/github/mikephil/charting/utils/ObjectPool$Poolable;->NO_OWNER:I

    iput v2, v0, Lcom/github/mikephil/charting/utils/ObjectPool$Poolable;->e:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/github/mikephil/charting/utils/ObjectPool;->d:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getPoolCapacity()I
    .locals 0

    iget-object p0, p0, Lcom/github/mikephil/charting/utils/ObjectPool;->c:[Ljava/lang/Object;

    array-length p0, p0

    return p0
.end method

.method public getPoolCount()I
    .locals 0

    iget p0, p0, Lcom/github/mikephil/charting/utils/ObjectPool;->d:I

    add-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public getPoolId()I
    .locals 0

    iget p0, p0, Lcom/github/mikephil/charting/utils/ObjectPool;->a:I

    return p0
.end method

.method public getReplenishPercentage()F
    .locals 0

    iget p0, p0, Lcom/github/mikephil/charting/utils/ObjectPool;->f:F

    return p0
.end method

.method public declared-synchronized recycle(Lcom/github/mikephil/charting/utils/ObjectPool$Poolable;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget v0, p1, Lcom/github/mikephil/charting/utils/ObjectPool$Poolable;->e:I

    sget v1, Lcom/github/mikephil/charting/utils/ObjectPool$Poolable;->NO_OWNER:I

    if-eq v0, v1, :cond_1

    .line 2
    iget v1, p0, Lcom/github/mikephil/charting/utils/ObjectPool;->a:I

    if-ne v0, v1, :cond_0

    .line 3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The object passed is already stored in this pool!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The object to recycle already belongs to poolId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/github/mikephil/charting/utils/ObjectPool$Poolable;->e:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ".  Object cannot belong to two different pool instances simultaneously!"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5
    :cond_1
    iget v0, p0, Lcom/github/mikephil/charting/utils/ObjectPool;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/github/mikephil/charting/utils/ObjectPool;->d:I

    .line 6
    iget-object v1, p0, Lcom/github/mikephil/charting/utils/ObjectPool;->c:[Ljava/lang/Object;

    array-length v1, v1

    if-lt v0, v1, :cond_2

    .line 7
    invoke-virtual {p0}, Lcom/github/mikephil/charting/utils/ObjectPool;->c()V

    .line 8
    :cond_2
    iget v0, p0, Lcom/github/mikephil/charting/utils/ObjectPool;->a:I

    iput v0, p1, Lcom/github/mikephil/charting/utils/ObjectPool$Poolable;->e:I

    .line 9
    iget-object v0, p0, Lcom/github/mikephil/charting/utils/ObjectPool;->c:[Ljava/lang/Object;

    iget v1, p0, Lcom/github/mikephil/charting/utils/ObjectPool;->d:I

    aput-object p1, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized recycle(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    monitor-enter p0

    .line 11
    :goto_0
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/github/mikephil/charting/utils/ObjectPool;->d:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/github/mikephil/charting/utils/ObjectPool;->b:I

    if-le v0, v1, :cond_0

    .line 12
    invoke-virtual {p0}, Lcom/github/mikephil/charting/utils/ObjectPool;->c()V

    goto :goto_0

    .line 13
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_3

    .line 14
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/mikephil/charting/utils/ObjectPool$Poolable;

    .line 15
    iget v3, v2, Lcom/github/mikephil/charting/utils/ObjectPool$Poolable;->e:I

    sget v4, Lcom/github/mikephil/charting/utils/ObjectPool$Poolable;->NO_OWNER:I

    if-eq v3, v4, :cond_2

    .line 16
    iget p1, p0, Lcom/github/mikephil/charting/utils/ObjectPool;->a:I

    if-ne v3, p1, :cond_1

    .line 17
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The object passed is already stored in this pool!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 18
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The object to recycle already belongs to poolId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v2, Lcom/github/mikephil/charting/utils/ObjectPool$Poolable;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ".  Object cannot belong to two different pool instances simultaneously!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 19
    :cond_2
    iget v3, p0, Lcom/github/mikephil/charting/utils/ObjectPool;->a:I

    iput v3, v2, Lcom/github/mikephil/charting/utils/ObjectPool$Poolable;->e:I

    .line 20
    iget-object v3, p0, Lcom/github/mikephil/charting/utils/ObjectPool;->c:[Ljava/lang/Object;

    iget v4, p0, Lcom/github/mikephil/charting/utils/ObjectPool;->d:I

    add-int/lit8 v4, v4, 0x1

    add-int/2addr v4, v1

    aput-object v2, v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 21
    :cond_3
    iget p1, p0, Lcom/github/mikephil/charting/utils/ObjectPool;->d:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/github/mikephil/charting/utils/ObjectPool;->d:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setReplenishPercentage(F)V
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, p1, v0

    if-lez v1, :cond_0

    :goto_0
    move p1, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-gez v1, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    iput p1, p0, Lcom/github/mikephil/charting/utils/ObjectPool;->f:F

    return-void
.end method
