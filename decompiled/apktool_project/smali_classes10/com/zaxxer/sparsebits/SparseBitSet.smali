.class public Lcom/zaxxer/sparsebits/SparseBitSet;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zaxxer/sparsebits/SparseBitSet$XorStrategy;,
        Lcom/zaxxer/sparsebits/SparseBitSet$UpdateStrategy;,
        Lcom/zaxxer/sparsebits/SparseBitSet$SetStrategy;,
        Lcom/zaxxer/sparsebits/SparseBitSet$OrStrategy;,
        Lcom/zaxxer/sparsebits/SparseBitSet$IntersectsStrategy;,
        Lcom/zaxxer/sparsebits/SparseBitSet$FlipStrategy;,
        Lcom/zaxxer/sparsebits/SparseBitSet$EqualsStrategy;,
        Lcom/zaxxer/sparsebits/SparseBitSet$CopyStrategy;,
        Lcom/zaxxer/sparsebits/SparseBitSet$ClearStrategy;,
        Lcom/zaxxer/sparsebits/SparseBitSet$AndNotStrategy;,
        Lcom/zaxxer/sparsebits/SparseBitSet$AndStrategy;,
        Lcom/zaxxer/sparsebits/SparseBitSet$AbstractStrategy;,
        Lcom/zaxxer/sparsebits/SparseBitSet$Cache;,
        Lcom/zaxxer/sparsebits/SparseBitSet$Statistics;
    }
.end annotation


# static fields
.field protected static final INDEX_SIZE:I = 0x1f

.field protected static final LENGTH2:I = 0x20

.field protected static final LENGTH3:I = 0x20

.field protected static final LENGTH4:I = 0x40

.field protected static final LEVEL1:I = 0xf

.field protected static final LEVEL2:I = 0x5

.field protected static final LEVEL3:I = 0x5

.field protected static final LEVEL4:I = 0x6

.field protected static final MASK2:I = 0x1f

.field protected static final MASK3:I = 0x1f

.field protected static final MAX_LENGTH1:I = 0x8000

.field protected static final SHIFT1:I = 0xa

.field protected static final SHIFT2:I = 0x5

.field protected static final SHIFT3:I = 0x6

.field protected static final UNIT:I = 0x10000

.field static final ZERO_BLOCK:[J

.field protected static final transient andNotStrategy:Lcom/zaxxer/sparsebits/SparseBitSet$AndNotStrategy;

.field protected static final transient andStrategy:Lcom/zaxxer/sparsebits/SparseBitSet$AndStrategy;

.field protected static final transient clearStrategy:Lcom/zaxxer/sparsebits/SparseBitSet$ClearStrategy;

.field static compactionCountDefault:I = 0x2

.field protected static final transient copyStrategy:Lcom/zaxxer/sparsebits/SparseBitSet$CopyStrategy;

.field protected static final transient flipStrategy:Lcom/zaxxer/sparsebits/SparseBitSet$FlipStrategy;

.field protected static transient intersectsStrategy:Lcom/zaxxer/sparsebits/SparseBitSet$IntersectsStrategy; = null

.field protected static final transient orStrategy:Lcom/zaxxer/sparsebits/SparseBitSet$OrStrategy;

.field private static final serialVersionUID:J = -0x5c77c75b03389788L

.field protected static final transient setStrategy:Lcom/zaxxer/sparsebits/SparseBitSet$SetStrategy;

.field protected static final transient xorStrategy:Lcom/zaxxer/sparsebits/SparseBitSet$XorStrategy;


# instance fields
.field protected transient bits:[[[J

.field protected transient bitsLength:I

.field protected transient cache:Lcom/zaxxer/sparsebits/SparseBitSet$Cache;

.field protected transient compactionCount:I

.field protected transient equalsStrategy:Lcom/zaxxer/sparsebits/SparseBitSet$EqualsStrategy;

.field protected transient spare:[J

.field protected transient updateStrategy:Lcom/zaxxer/sparsebits/SparseBitSet$UpdateStrategy;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x20

    new-array v0, v0, [J

    sput-object v0, Lcom/zaxxer/sparsebits/SparseBitSet;->ZERO_BLOCK:[J

    new-instance v0, Lcom/zaxxer/sparsebits/SparseBitSet$AndStrategy;

    invoke-direct {v0}, Lcom/zaxxer/sparsebits/SparseBitSet$AndStrategy;-><init>()V

    sput-object v0, Lcom/zaxxer/sparsebits/SparseBitSet;->andStrategy:Lcom/zaxxer/sparsebits/SparseBitSet$AndStrategy;

    new-instance v0, Lcom/zaxxer/sparsebits/SparseBitSet$AndNotStrategy;

    invoke-direct {v0}, Lcom/zaxxer/sparsebits/SparseBitSet$AndNotStrategy;-><init>()V

    sput-object v0, Lcom/zaxxer/sparsebits/SparseBitSet;->andNotStrategy:Lcom/zaxxer/sparsebits/SparseBitSet$AndNotStrategy;

    new-instance v0, Lcom/zaxxer/sparsebits/SparseBitSet$ClearStrategy;

    invoke-direct {v0}, Lcom/zaxxer/sparsebits/SparseBitSet$ClearStrategy;-><init>()V

    sput-object v0, Lcom/zaxxer/sparsebits/SparseBitSet;->clearStrategy:Lcom/zaxxer/sparsebits/SparseBitSet$ClearStrategy;

    new-instance v0, Lcom/zaxxer/sparsebits/SparseBitSet$CopyStrategy;

    invoke-direct {v0}, Lcom/zaxxer/sparsebits/SparseBitSet$CopyStrategy;-><init>()V

    sput-object v0, Lcom/zaxxer/sparsebits/SparseBitSet;->copyStrategy:Lcom/zaxxer/sparsebits/SparseBitSet$CopyStrategy;

    new-instance v0, Lcom/zaxxer/sparsebits/SparseBitSet$FlipStrategy;

    invoke-direct {v0}, Lcom/zaxxer/sparsebits/SparseBitSet$FlipStrategy;-><init>()V

    sput-object v0, Lcom/zaxxer/sparsebits/SparseBitSet;->flipStrategy:Lcom/zaxxer/sparsebits/SparseBitSet$FlipStrategy;

    new-instance v0, Lcom/zaxxer/sparsebits/SparseBitSet$IntersectsStrategy;

    invoke-direct {v0}, Lcom/zaxxer/sparsebits/SparseBitSet$IntersectsStrategy;-><init>()V

    sput-object v0, Lcom/zaxxer/sparsebits/SparseBitSet;->intersectsStrategy:Lcom/zaxxer/sparsebits/SparseBitSet$IntersectsStrategy;

    new-instance v0, Lcom/zaxxer/sparsebits/SparseBitSet$OrStrategy;

    invoke-direct {v0}, Lcom/zaxxer/sparsebits/SparseBitSet$OrStrategy;-><init>()V

    sput-object v0, Lcom/zaxxer/sparsebits/SparseBitSet;->orStrategy:Lcom/zaxxer/sparsebits/SparseBitSet$OrStrategy;

    new-instance v0, Lcom/zaxxer/sparsebits/SparseBitSet$SetStrategy;

    invoke-direct {v0}, Lcom/zaxxer/sparsebits/SparseBitSet$SetStrategy;-><init>()V

    sput-object v0, Lcom/zaxxer/sparsebits/SparseBitSet;->setStrategy:Lcom/zaxxer/sparsebits/SparseBitSet$SetStrategy;

    new-instance v0, Lcom/zaxxer/sparsebits/SparseBitSet$XorStrategy;

    invoke-direct {v0}, Lcom/zaxxer/sparsebits/SparseBitSet$XorStrategy;-><init>()V

    sput-object v0, Lcom/zaxxer/sparsebits/SparseBitSet;->xorStrategy:Lcom/zaxxer/sparsebits/SparseBitSet$XorStrategy;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x1

    .line 7
    sget v1, Lcom/zaxxer/sparsebits/SparseBitSet;->compactionCountDefault:I

    invoke-direct {p0, v0, v1}, Lcom/zaxxer/sparsebits/SparseBitSet;-><init>(II)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NegativeArraySizeException;
        }
    .end annotation

    .line 8
    sget v0, Lcom/zaxxer/sparsebits/SparseBitSet;->compactionCountDefault:I

    invoke-direct {p0, p1, v0}, Lcom/zaxxer/sparsebits/SparseBitSet;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NegativeArraySizeException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-ltz p1, :cond_0

    add-int/lit8 p1, p1, -0x1

    .line 2
    invoke-virtual {p0, p1}, Lcom/zaxxer/sparsebits/SparseBitSet;->resize(I)V

    .line 3
    iput p2, p0, Lcom/zaxxer/sparsebits/SparseBitSet;->compactionCount:I

    .line 4
    invoke-virtual {p0}, Lcom/zaxxer/sparsebits/SparseBitSet;->constructorHelper()V

    .line 5
    invoke-virtual {p0}, Lcom/zaxxer/sparsebits/SparseBitSet;->statisticsUpdate()V

    return-void

    .line 6
    :cond_0
    new-instance p0, Ljava/lang/NegativeArraySizeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "(requested capacity="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") < 0"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/NegativeArraySizeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static and(Lcom/zaxxer/sparsebits/SparseBitSet;Lcom/zaxxer/sparsebits/SparseBitSet;)Lcom/zaxxer/sparsebits/SparseBitSet;
    .locals 0

    .line 6
    invoke-virtual {p0}, Lcom/zaxxer/sparsebits/SparseBitSet;->clone()Lcom/zaxxer/sparsebits/SparseBitSet;

    move-result-object p0

    .line 7
    invoke-virtual {p0, p1}, Lcom/zaxxer/sparsebits/SparseBitSet;->and(Lcom/zaxxer/sparsebits/SparseBitSet;)V

    return-object p0
.end method

.method public static andNot(Lcom/zaxxer/sparsebits/SparseBitSet;Lcom/zaxxer/sparsebits/SparseBitSet;)Lcom/zaxxer/sparsebits/SparseBitSet;
    .locals 0

    .line 5
    invoke-virtual {p0}, Lcom/zaxxer/sparsebits/SparseBitSet;->clone()Lcom/zaxxer/sparsebits/SparseBitSet;

    move-result-object p0

    .line 6
    invoke-virtual {p0, p1}, Lcom/zaxxer/sparsebits/SparseBitSet;->andNot(Lcom/zaxxer/sparsebits/SparseBitSet;)V

    return-object p0
.end method

.method public static or(Lcom/zaxxer/sparsebits/SparseBitSet;Lcom/zaxxer/sparsebits/SparseBitSet;)Lcom/zaxxer/sparsebits/SparseBitSet;
    .locals 0

    .line 5
    invoke-virtual {p0}, Lcom/zaxxer/sparsebits/SparseBitSet;->clone()Lcom/zaxxer/sparsebits/SparseBitSet;

    move-result-object p0

    .line 6
    invoke-virtual {p0, p1}, Lcom/zaxxer/sparsebits/SparseBitSet;->or(Lcom/zaxxer/sparsebits/SparseBitSet;)V

    return-object p0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/zaxxer/sparsebits/SparseBitSet;->compactionCount:I

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/zaxxer/sparsebits/SparseBitSet;->resize(I)V

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-eq v1, v0, :cond_2

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v2

    and-int/lit8 v3, v2, 0x1f

    shr-int/lit8 v4, v2, 0x5

    and-int/lit8 v4, v4, 0x1f

    shr-int/lit8 v2, v2, 0xa

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readLong()J

    move-result-wide v5

    iget-object v7, p0, Lcom/zaxxer/sparsebits/SparseBitSet;->bits:[[[J

    aget-object v8, v7, v2

    const/16 v9, 0x20

    if-nez v8, :cond_0

    new-array v8, v9, [[J

    aput-object v8, v7, v2

    :cond_0
    aget-object v2, v8, v4

    if-nez v2, :cond_1

    new-array v2, v9, [J

    aput-object v2, v8, v4

    :cond_1
    aput-wide v5, v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/zaxxer/sparsebits/SparseBitSet;->constructorHelper()V

    invoke-virtual {p0}, Lcom/zaxxer/sparsebits/SparseBitSet;->statisticsUpdate()V

    iget-object v1, p0, Lcom/zaxxer/sparsebits/SparseBitSet;->cache:Lcom/zaxxer/sparsebits/SparseBitSet$Cache;

    iget v1, v1, Lcom/zaxxer/sparsebits/SparseBitSet$Cache;->count:I

    if-ne v0, v1, :cond_4

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result p1

    iget-object p0, p0, Lcom/zaxxer/sparsebits/SparseBitSet;->cache:Lcom/zaxxer/sparsebits/SparseBitSet$Cache;

    iget p0, p0, Lcom/zaxxer/sparsebits/SparseBitSet$Cache;->hash:I

    if-ne p1, p0, :cond_3

    return-void

    :cond_3
    new-instance p0, Ljava/io/IOException;

    const-string p1, "deserialized hashCode mis-match"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Ljava/lang/InternalError;

    const-string p1, "count of entries not consistent"

    invoke-direct {p0, p1}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static throwIndexOutOfBoundsException(II)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation

    const-string v0, ") < 0"

    const-string v1, "(i="

    const-string v2, ""

    if-gez p0, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v2

    :goto_0
    const v4, 0x7fffffff

    const-string v5, ")"

    if-ne p0, v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_1
    const-string v4, ", "

    if-gez p1, :cond_3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v3, v2

    goto :goto_1

    :cond_2
    move-object v3, v4

    :goto_1
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "(j="

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_3
    if-le p0, p1, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_2

    :cond_4
    move-object v2, v4

    :goto_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ") > (j="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_5
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0, v3}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InternalError;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p0 .. p0}, Lcom/zaxxer/sparsebits/SparseBitSet;->statisticsUpdate()V

    invoke-virtual/range {p1 .. p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    iget v2, v0, Lcom/zaxxer/sparsebits/SparseBitSet;->compactionCount:I

    invoke-virtual {v1, v2}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    iget-object v2, v0, Lcom/zaxxer/sparsebits/SparseBitSet;->cache:Lcom/zaxxer/sparsebits/SparseBitSet$Cache;

    iget v2, v2, Lcom/zaxxer/sparsebits/SparseBitSet$Cache;->length:I

    invoke-virtual {v1, v2}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    iget-object v2, v0, Lcom/zaxxer/sparsebits/SparseBitSet;->cache:Lcom/zaxxer/sparsebits/SparseBitSet$Cache;

    iget v2, v2, Lcom/zaxxer/sparsebits/SparseBitSet$Cache;->count:I

    invoke-virtual {v1, v2}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    iget-object v3, v0, Lcom/zaxxer/sparsebits/SparseBitSet;->bits:[[[J

    array-length v4, v3

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-eq v6, v4, :cond_3

    aget-object v7, v3, v6

    if-eqz v7, :cond_2

    move v8, v5

    :goto_1
    const/16 v9, 0x20

    if-eq v8, v9, :cond_2

    aget-object v10, v7, v8

    if-eqz v10, :cond_1

    shl-int/lit8 v11, v6, 0xa

    shl-int/lit8 v12, v8, 0x5

    add-int/2addr v11, v12

    move v12, v5

    :goto_2
    if-eq v12, v9, :cond_1

    aget-wide v13, v10, v12

    const-wide/16 v15, 0x0

    cmp-long v15, v13, v15

    if-eqz v15, :cond_0

    add-int v15, v11, v12

    invoke-virtual {v1, v15}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    invoke-virtual {v1, v13, v14}, Ljava/io/ObjectOutputStream;->writeLong(J)V

    add-int/lit8 v2, v2, -0x1

    :cond_0
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_3
    if-nez v2, :cond_4

    iget-object v0, v0, Lcom/zaxxer/sparsebits/SparseBitSet;->cache:Lcom/zaxxer/sparsebits/SparseBitSet$Cache;

    iget v0, v0, Lcom/zaxxer/sparsebits/SparseBitSet$Cache;->hash:I

    invoke-virtual {v1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    return-void

    :cond_4
    new-instance v0, Ljava/lang/InternalError;

    const-string v1, "count of entries not consistent"

    invoke-direct {v0, v1}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static xor(Lcom/zaxxer/sparsebits/SparseBitSet;Lcom/zaxxer/sparsebits/SparseBitSet;)Lcom/zaxxer/sparsebits/SparseBitSet;
    .locals 0

    .line 5
    invoke-virtual {p0}, Lcom/zaxxer/sparsebits/SparseBitSet;->clone()Lcom/zaxxer/sparsebits/SparseBitSet;

    move-result-object p0

    .line 6
    invoke-virtual {p0, p1}, Lcom/zaxxer/sparsebits/SparseBitSet;->xor(Lcom/zaxxer/sparsebits/SparseBitSet;)V

    return-object p0
.end method


# virtual methods
.method public and(IILcom/zaxxer/sparsebits/SparseBitSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/zaxxer/sparsebits/SparseBitSet;->andStrategy:Lcom/zaxxer/sparsebits/SparseBitSet$AndStrategy;

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/zaxxer/sparsebits/SparseBitSet;->setScanner(IILcom/zaxxer/sparsebits/SparseBitSet;Lcom/zaxxer/sparsebits/SparseBitSet$AbstractStrategy;)V

    return-void
.end method

.method public and(IZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation

    add-int/lit8 v0, p1, 0x1

    const/4 v1, 0x1

    if-lt v0, v1, :cond_1

    if-nez p2, :cond_0

    .line 1
    invoke-virtual {p0, p1}, Lcom/zaxxer/sparsebits/SparseBitSet;->clear(I)V

    :cond_0
    return-void

    .line 2
    :cond_1
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "i="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public and(Lcom/zaxxer/sparsebits/SparseBitSet;)V
    .locals 3

    .line 4
    iget-object v0, p0, Lcom/zaxxer/sparsebits/SparseBitSet;->bits:[[[J

    array-length v0, v0

    iget-object v1, p1, Lcom/zaxxer/sparsebits/SparseBitSet;->bits:[[[J

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/zaxxer/sparsebits/SparseBitSet;->nullify(I)V

    .line 5
    iget v0, p0, Lcom/zaxxer/sparsebits/SparseBitSet;->bitsLength:I

    iget v1, p1, Lcom/zaxxer/sparsebits/SparseBitSet;->bitsLength:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    sget-object v1, Lcom/zaxxer/sparsebits/SparseBitSet;->andStrategy:Lcom/zaxxer/sparsebits/SparseBitSet$AndStrategy;

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0, p1, v1}, Lcom/zaxxer/sparsebits/SparseBitSet;->setScanner(IILcom/zaxxer/sparsebits/SparseBitSet;Lcom/zaxxer/sparsebits/SparseBitSet$AbstractStrategy;)V

    return-void
.end method

.method public andNot(IILcom/zaxxer/sparsebits/SparseBitSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/zaxxer/sparsebits/SparseBitSet;->andNotStrategy:Lcom/zaxxer/sparsebits/SparseBitSet$AndNotStrategy;

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/zaxxer/sparsebits/SparseBitSet;->setScanner(IILcom/zaxxer/sparsebits/SparseBitSet;Lcom/zaxxer/sparsebits/SparseBitSet$AbstractStrategy;)V

    return-void
.end method

.method public andNot(IZ)V
    .locals 2

    add-int/lit8 v0, p1, 0x1

    const/4 v1, 0x1

    if-lt v0, v1, :cond_1

    if-eqz p2, :cond_0

    .line 1
    invoke-virtual {p0, p1}, Lcom/zaxxer/sparsebits/SparseBitSet;->clear(I)V

    :cond_0
    return-void

    .line 2
    :cond_1
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "i="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public andNot(Lcom/zaxxer/sparsebits/SparseBitSet;)V
    .locals 3

    .line 4
    iget v0, p0, Lcom/zaxxer/sparsebits/SparseBitSet;->bitsLength:I

    iget v1, p1, Lcom/zaxxer/sparsebits/SparseBitSet;->bitsLength:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    sget-object v1, Lcom/zaxxer/sparsebits/SparseBitSet;->andNotStrategy:Lcom/zaxxer/sparsebits/SparseBitSet$AndNotStrategy;

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0, p1, v1}, Lcom/zaxxer/sparsebits/SparseBitSet;->setScanner(IILcom/zaxxer/sparsebits/SparseBitSet;Lcom/zaxxer/sparsebits/SparseBitSet$AbstractStrategy;)V

    return-void
.end method

.method public cardinality()I
    .locals 0

    invoke-virtual {p0}, Lcom/zaxxer/sparsebits/SparseBitSet;->statisticsUpdate()V

    iget-object p0, p0, Lcom/zaxxer/sparsebits/SparseBitSet;->cache:Lcom/zaxxer/sparsebits/SparseBitSet$Cache;

    iget p0, p0, Lcom/zaxxer/sparsebits/SparseBitSet$Cache;->cardinality:I

    return p0
.end method

.method public clear()V
    .locals 1

    const/4 v0, 0x0

    .line 8
    invoke-virtual {p0, v0}, Lcom/zaxxer/sparsebits/SparseBitSet;->nullify(I)V

    return-void
.end method

.method public clear(I)V
    .locals 6

    add-int/lit8 v0, p1, 0x1

    const/4 v1, 0x1

    if-lt v0, v1, :cond_3

    .line 1
    iget v0, p0, Lcom/zaxxer/sparsebits/SparseBitSet;->bitsLength:I

    if-lt p1, v0, :cond_0

    return-void

    :cond_0
    shr-int/lit8 v0, p1, 0x6

    .line 2
    iget-object v1, p0, Lcom/zaxxer/sparsebits/SparseBitSet;->bits:[[[J

    shr-int/lit8 v2, v0, 0xa

    aget-object v1, v1, v2

    if-nez v1, :cond_1

    return-void

    :cond_1
    shr-int/lit8 v2, v0, 0x5

    and-int/lit8 v2, v2, 0x1f

    .line 3
    aget-object v1, v1, v2

    if-nez v1, :cond_2

    return-void

    :cond_2
    and-int/lit8 v0, v0, 0x1f

    .line 4
    aget-wide v2, v1, v0

    const-wide/16 v4, 0x1

    shl-long/2addr v4, p1

    not-long v4, v4

    and-long/2addr v2, v4

    aput-wide v2, v1, v0

    .line 5
    iget-object p0, p0, Lcom/zaxxer/sparsebits/SparseBitSet;->cache:Lcom/zaxxer/sparsebits/SparseBitSet$Cache;

    const/4 p1, 0x0

    iput p1, p0, Lcom/zaxxer/sparsebits/SparseBitSet$Cache;->hash:I

    return-void

    .line 6
    :cond_3
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "i="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public clear(II)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 7
    sget-object v1, Lcom/zaxxer/sparsebits/SparseBitSet;->clearStrategy:Lcom/zaxxer/sparsebits/SparseBitSet$ClearStrategy;

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/zaxxer/sparsebits/SparseBitSet;->setScanner(IILcom/zaxxer/sparsebits/SparseBitSet;Lcom/zaxxer/sparsebits/SparseBitSet$AbstractStrategy;)V

    return-void
.end method

.method public clone()Lcom/zaxxer/sparsebits/SparseBitSet;
    .locals 4

    .line 2
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zaxxer/sparsebits/SparseBitSet;

    const/4 v1, 0x0

    .line 3
    iput-object v1, v0, Lcom/zaxxer/sparsebits/SparseBitSet;->bits:[[[J

    const/4 v2, 0x1

    .line 4
    invoke-virtual {v0, v2}, Lcom/zaxxer/sparsebits/SparseBitSet;->resize(I)V

    .line 5
    invoke-virtual {v0}, Lcom/zaxxer/sparsebits/SparseBitSet;->constructorHelper()V

    .line 6
    iput-object v1, v0, Lcom/zaxxer/sparsebits/SparseBitSet;->equalsStrategy:Lcom/zaxxer/sparsebits/SparseBitSet$EqualsStrategy;

    .line 7
    iget v1, p0, Lcom/zaxxer/sparsebits/SparseBitSet;->bitsLength:I

    sget-object v2, Lcom/zaxxer/sparsebits/SparseBitSet;->copyStrategy:Lcom/zaxxer/sparsebits/SparseBitSet$CopyStrategy;

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1, p0, v2}, Lcom/zaxxer/sparsebits/SparseBitSet;->setScanner(IILcom/zaxxer/sparsebits/SparseBitSet;Lcom/zaxxer/sparsebits/SparseBitSet$AbstractStrategy;)V
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 8
    new-instance v0, Ljava/lang/InternalError;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/zaxxer/sparsebits/SparseBitSet;->clone()Lcom/zaxxer/sparsebits/SparseBitSet;

    move-result-object p0

    return-object p0
.end method

.method public final constructorHelper()V
    .locals 1

    const/16 v0, 0x20

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/zaxxer/sparsebits/SparseBitSet;->spare:[J

    new-instance v0, Lcom/zaxxer/sparsebits/SparseBitSet$Cache;

    invoke-direct {v0, p0}, Lcom/zaxxer/sparsebits/SparseBitSet$Cache;-><init>(Lcom/zaxxer/sparsebits/SparseBitSet;)V

    iput-object v0, p0, Lcom/zaxxer/sparsebits/SparseBitSet;->cache:Lcom/zaxxer/sparsebits/SparseBitSet$Cache;

    new-instance v0, Lcom/zaxxer/sparsebits/SparseBitSet$UpdateStrategy;

    invoke-direct {v0, p0}, Lcom/zaxxer/sparsebits/SparseBitSet$UpdateStrategy;-><init>(Lcom/zaxxer/sparsebits/SparseBitSet;)V

    iput-object v0, p0, Lcom/zaxxer/sparsebits/SparseBitSet;->updateStrategy:Lcom/zaxxer/sparsebits/SparseBitSet$UpdateStrategy;

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lcom/zaxxer/sparsebits/SparseBitSet;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lcom/zaxxer/sparsebits/SparseBitSet;

    if-ne p0, p1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    iget-object v0, p0, Lcom/zaxxer/sparsebits/SparseBitSet;->equalsStrategy:Lcom/zaxxer/sparsebits/SparseBitSet$EqualsStrategy;

    if-nez v0, :cond_2

    new-instance v0, Lcom/zaxxer/sparsebits/SparseBitSet$EqualsStrategy;

    invoke-direct {v0}, Lcom/zaxxer/sparsebits/SparseBitSet$EqualsStrategy;-><init>()V

    iput-object v0, p0, Lcom/zaxxer/sparsebits/SparseBitSet;->equalsStrategy:Lcom/zaxxer/sparsebits/SparseBitSet$EqualsStrategy;

    :cond_2
    iget v0, p0, Lcom/zaxxer/sparsebits/SparseBitSet;->bitsLength:I

    iget v2, p1, Lcom/zaxxer/sparsebits/SparseBitSet;->bitsLength:I

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget-object v2, p0, Lcom/zaxxer/sparsebits/SparseBitSet;->equalsStrategy:Lcom/zaxxer/sparsebits/SparseBitSet$EqualsStrategy;

    invoke-virtual {p0, v1, v0, p1, v2}, Lcom/zaxxer/sparsebits/SparseBitSet;->setScanner(IILcom/zaxxer/sparsebits/SparseBitSet;Lcom/zaxxer/sparsebits/SparseBitSet$AbstractStrategy;)V

    iget-object p0, p0, Lcom/zaxxer/sparsebits/SparseBitSet;->equalsStrategy:Lcom/zaxxer/sparsebits/SparseBitSet$EqualsStrategy;

    iget-boolean p0, p0, Lcom/zaxxer/sparsebits/SparseBitSet$EqualsStrategy;->e:Z

    return p0
.end method

.method public flip(I)V
    .locals 6

    add-int/lit8 v0, p1, 0x1

    const/4 v1, 0x1

    if-lt v0, v1, :cond_3

    shr-int/lit8 v0, p1, 0x6

    shr-int/lit8 v1, v0, 0xa

    shr-int/lit8 v2, v0, 0x5

    and-int/lit8 v2, v2, 0x1f

    .line 1
    iget v3, p0, Lcom/zaxxer/sparsebits/SparseBitSet;->bitsLength:I

    if-lt p1, v3, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/zaxxer/sparsebits/SparseBitSet;->resize(I)V

    .line 3
    :cond_0
    iget-object v3, p0, Lcom/zaxxer/sparsebits/SparseBitSet;->bits:[[[J

    aget-object v4, v3, v1

    const/16 v5, 0x20

    if-nez v4, :cond_1

    new-array v4, v5, [[J

    .line 4
    aput-object v4, v3, v1

    .line 5
    :cond_1
    aget-object v1, v4, v2

    if-nez v1, :cond_2

    new-array v1, v5, [J

    .line 6
    aput-object v1, v4, v2

    :cond_2
    and-int/lit8 v0, v0, 0x1f

    .line 7
    aget-wide v2, v1, v0

    const-wide/16 v4, 0x1

    shl-long/2addr v4, p1

    xor-long/2addr v2, v4

    aput-wide v2, v1, v0

    .line 8
    iget-object p0, p0, Lcom/zaxxer/sparsebits/SparseBitSet;->cache:Lcom/zaxxer/sparsebits/SparseBitSet$Cache;

    const/4 p1, 0x0

    iput p1, p0, Lcom/zaxxer/sparsebits/SparseBitSet$Cache;->hash:I

    return-void

    .line 9
    :cond_3
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "i="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public flip(II)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 10
    sget-object v1, Lcom/zaxxer/sparsebits/SparseBitSet;->flipStrategy:Lcom/zaxxer/sparsebits/SparseBitSet$FlipStrategy;

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/zaxxer/sparsebits/SparseBitSet;->setScanner(IILcom/zaxxer/sparsebits/SparseBitSet;Lcom/zaxxer/sparsebits/SparseBitSet$AbstractStrategy;)V

    return-void
.end method

.method public get(II)Lcom/zaxxer/sparsebits/SparseBitSet;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation

    .line 3
    new-instance v0, Lcom/zaxxer/sparsebits/SparseBitSet;

    iget v1, p0, Lcom/zaxxer/sparsebits/SparseBitSet;->compactionCount:I

    invoke-direct {v0, p2, v1}, Lcom/zaxxer/sparsebits/SparseBitSet;-><init>(II)V

    .line 4
    sget-object v1, Lcom/zaxxer/sparsebits/SparseBitSet;->copyStrategy:Lcom/zaxxer/sparsebits/SparseBitSet$CopyStrategy;

    invoke-virtual {v0, p1, p2, p0, v1}, Lcom/zaxxer/sparsebits/SparseBitSet;->setScanner(IILcom/zaxxer/sparsebits/SparseBitSet;Lcom/zaxxer/sparsebits/SparseBitSet$AbstractStrategy;)V

    return-object v0
.end method

.method public get(I)Z
    .locals 6

    add-int/lit8 v0, p1, 0x1

    const/4 v1, 0x1

    if-lt v0, v1, :cond_1

    shr-int/lit8 v0, p1, 0x6

    .line 1
    iget v2, p0, Lcom/zaxxer/sparsebits/SparseBitSet;->bitsLength:I

    if-ge p1, v2, :cond_0

    iget-object p0, p0, Lcom/zaxxer/sparsebits/SparseBitSet;->bits:[[[J

    shr-int/lit8 v2, v0, 0xa

    aget-object p0, p0, v2

    if-eqz p0, :cond_0

    shr-int/lit8 v2, v0, 0x5

    and-int/lit8 v2, v2, 0x1f

    aget-object p0, p0, v2

    if-eqz p0, :cond_0

    and-int/lit8 v0, v0, 0x1f

    aget-wide v2, p0, v0

    const-wide/16 v4, 0x1

    shl-long p0, v4, p1

    and-long/2addr p0, v2

    const-wide/16 v2, 0x0

    cmp-long p0, p0, v2

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 2
    :cond_1
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "i="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public hashCode()I
    .locals 0

    invoke-virtual {p0}, Lcom/zaxxer/sparsebits/SparseBitSet;->statisticsUpdate()V

    iget-object p0, p0, Lcom/zaxxer/sparsebits/SparseBitSet;->cache:Lcom/zaxxer/sparsebits/SparseBitSet$Cache;

    iget p0, p0, Lcom/zaxxer/sparsebits/SparseBitSet$Cache;->hash:I

    return p0
.end method

.method public intersects(IILcom/zaxxer/sparsebits/SparseBitSet;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/zaxxer/sparsebits/SparseBitSet;->intersectsStrategy:Lcom/zaxxer/sparsebits/SparseBitSet$IntersectsStrategy;

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/zaxxer/sparsebits/SparseBitSet;->setScanner(IILcom/zaxxer/sparsebits/SparseBitSet;Lcom/zaxxer/sparsebits/SparseBitSet$AbstractStrategy;)V

    .line 2
    sget-object p0, Lcom/zaxxer/sparsebits/SparseBitSet;->intersectsStrategy:Lcom/zaxxer/sparsebits/SparseBitSet$IntersectsStrategy;

    iget-boolean p0, p0, Lcom/zaxxer/sparsebits/SparseBitSet$IntersectsStrategy;->result:Z

    return p0
.end method

.method public intersects(Lcom/zaxxer/sparsebits/SparseBitSet;)Z
    .locals 3

    .line 3
    iget v0, p0, Lcom/zaxxer/sparsebits/SparseBitSet;->bitsLength:I

    iget v1, p1, Lcom/zaxxer/sparsebits/SparseBitSet;->bitsLength:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    sget-object v1, Lcom/zaxxer/sparsebits/SparseBitSet;->intersectsStrategy:Lcom/zaxxer/sparsebits/SparseBitSet$IntersectsStrategy;

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0, p1, v1}, Lcom/zaxxer/sparsebits/SparseBitSet;->setScanner(IILcom/zaxxer/sparsebits/SparseBitSet;Lcom/zaxxer/sparsebits/SparseBitSet$AbstractStrategy;)V

    .line 4
    sget-object p0, Lcom/zaxxer/sparsebits/SparseBitSet;->intersectsStrategy:Lcom/zaxxer/sparsebits/SparseBitSet$IntersectsStrategy;

    iget-boolean p0, p0, Lcom/zaxxer/sparsebits/SparseBitSet$IntersectsStrategy;->result:Z

    return p0
.end method

.method public isEmpty()Z
    .locals 0

    invoke-virtual {p0}, Lcom/zaxxer/sparsebits/SparseBitSet;->statisticsUpdate()V

    iget-object p0, p0, Lcom/zaxxer/sparsebits/SparseBitSet;->cache:Lcom/zaxxer/sparsebits/SparseBitSet$Cache;

    iget p0, p0, Lcom/zaxxer/sparsebits/SparseBitSet$Cache;->cardinality:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public length()I
    .locals 0

    invoke-virtual {p0}, Lcom/zaxxer/sparsebits/SparseBitSet;->statisticsUpdate()V

    iget-object p0, p0, Lcom/zaxxer/sparsebits/SparseBitSet;->cache:Lcom/zaxxer/sparsebits/SparseBitSet$Cache;

    iget p0, p0, Lcom/zaxxer/sparsebits/SparseBitSet$Cache;->length:I

    return p0
.end method

.method public nextClearBit(I)I
    .locals 12

    if-ltz p1, :cond_8

    shr-int/lit8 v0, p1, 0x6

    and-int/lit8 v1, v0, 0x1f

    shr-int/lit8 v2, v0, 0x5

    and-int/lit8 v2, v2, 0x1f

    shr-int/lit8 v3, v0, 0xa

    const-wide/16 v4, -0x1

    shl-long v6, v4, p1

    iget-object p1, p0, Lcom/zaxxer/sparsebits/SparseBitSet;->bits:[[[J

    array-length v8, p1

    if-ge v3, v8, :cond_6

    aget-object p1, p1, v3

    if-eqz p1, :cond_6

    aget-object p1, p1, v2

    if-eqz p1, :cond_6

    aget-wide v9, p1, v1

    not-long v9, v9

    and-long/2addr v6, v9

    const-wide/16 v9, 0x0

    cmp-long p1, v6, v9

    if-nez p1, :cond_6

    add-int/lit8 v0, v0, 0x1

    and-int/lit8 p1, v0, 0x1f

    shr-int/lit8 v1, v0, 0x5

    and-int/lit8 v1, v1, 0x1f

    shr-int/lit8 v0, v0, 0xa

    move v3, v0

    move v2, v1

    move v1, p1

    :goto_0
    if-eq v3, v8, :cond_5

    iget-object p1, p0, Lcom/zaxxer/sparsebits/SparseBitSet;->bits:[[[J

    aget-object p1, p1, v3

    if-nez p1, :cond_0

    goto :goto_3

    :cond_0
    :goto_1
    const/4 v0, 0x0

    const/16 v6, 0x20

    if-eq v2, v6, :cond_4

    aget-object v7, p1, v2

    if-nez v7, :cond_1

    goto :goto_3

    :cond_1
    :goto_2
    if-eq v1, v6, :cond_3

    aget-wide v4, v7, v1

    not-long v4, v4

    cmp-long v11, v4, v9

    if-eqz v11, :cond_2

    goto :goto_3

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v2, v2, 0x1

    move v1, v0

    goto :goto_1

    :cond_4
    add-int/lit8 v3, v3, 0x1

    move v1, v0

    move v2, v1

    goto :goto_0

    :cond_5
    :goto_3
    move-wide v6, v4

    :cond_6
    shl-int/lit8 p0, v3, 0xa

    shl-int/lit8 p1, v2, 0x5

    add-int/2addr p0, p1

    add-int/2addr p0, v1

    shl-int/lit8 p0, p0, 0x6

    invoke-static {v6, v7}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result p1

    add-int/2addr p0, p1

    const p1, 0x7fffffff

    if-ne p0, p1, :cond_7

    const/4 p0, -0x1

    :cond_7
    return p0

    :cond_8
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "i="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public nextSetBit(I)I
    .locals 12

    if-ltz p1, :cond_7

    shr-int/lit8 v0, p1, 0x6

    and-int/lit8 v1, v0, 0x1f

    shr-int/lit8 v2, v0, 0x5

    and-int/lit8 v2, v2, 0x1f

    shr-int/lit8 v3, v0, 0xa

    iget-object v4, p0, Lcom/zaxxer/sparsebits/SparseBitSet;->bits:[[[J

    array-length v5, v4

    const-wide/16 v6, 0x0

    if-ge v3, v5, :cond_5

    aget-object v4, v4, v3

    if-eqz v4, :cond_0

    aget-object v4, v4, v2

    if-eqz v4, :cond_0

    aget-wide v8, v4, v1

    const-wide/16 v10, -0x1

    shl-long/2addr v10, p1

    and-long/2addr v8, v10

    cmp-long p1, v8, v6

    if-nez p1, :cond_4

    goto :goto_0

    :cond_0
    move-wide v8, v6

    :goto_0
    add-int/lit8 v0, v0, 0x1

    and-int/lit8 p1, v0, 0x1f

    shr-int/lit8 v1, v0, 0x5

    and-int/lit8 v1, v1, 0x1f

    shr-int/lit8 v0, v0, 0xa

    move v3, v0

    move v2, v1

    move v1, p1

    :goto_1
    if-eq v3, v5, :cond_4

    iget-object p1, p0, Lcom/zaxxer/sparsebits/SparseBitSet;->bits:[[[J

    aget-object p1, p1, v3

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    :goto_2
    const/16 v4, 0x20

    if-eq v2, v4, :cond_3

    aget-object v10, p1, v2

    if-eqz v10, :cond_2

    :goto_3
    if-eq v1, v4, :cond_2

    aget-wide v8, v10, v1

    cmp-long v11, v8, v6

    if-eqz v11, :cond_1

    goto :goto_4

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_2
    add-int/lit8 v2, v2, 0x1

    move v1, v0

    goto :goto_2

    :cond_3
    add-int/lit8 v3, v3, 0x1

    move v1, v0

    move v2, v1

    goto :goto_1

    :cond_4
    :goto_4
    move-wide v6, v8

    :cond_5
    if-lt v3, v5, :cond_6

    const/4 p0, -0x1

    goto :goto_5

    :cond_6
    shl-int/lit8 p0, v3, 0xa

    shl-int/lit8 p1, v2, 0x5

    add-int/2addr p0, p1

    add-int/2addr p0, v1

    shl-int/lit8 p0, p0, 0x6

    invoke-static {v6, v7}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result p1

    add-int/2addr p0, p1

    :goto_5
    return p0

    :cond_7
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "i="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final nullify(I)V
    .locals 3

    iget-object v0, p0, Lcom/zaxxer/sparsebits/SparseBitSet;->bits:[[[J

    array-length v0, v0

    if-ge p1, v0, :cond_1

    :goto_0
    if-eq p1, v0, :cond_0

    iget-object v1, p0, Lcom/zaxxer/sparsebits/SparseBitSet;->bits:[[[J

    const/4 v2, 0x0

    aput-object v2, v1, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/zaxxer/sparsebits/SparseBitSet;->cache:Lcom/zaxxer/sparsebits/SparseBitSet$Cache;

    const/4 p1, 0x0

    iput p1, p0, Lcom/zaxxer/sparsebits/SparseBitSet$Cache;->hash:I

    :cond_1
    return-void
.end method

.method public or(IILcom/zaxxer/sparsebits/SparseBitSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/zaxxer/sparsebits/SparseBitSet;->orStrategy:Lcom/zaxxer/sparsebits/SparseBitSet$OrStrategy;

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/zaxxer/sparsebits/SparseBitSet;->setScanner(IILcom/zaxxer/sparsebits/SparseBitSet;Lcom/zaxxer/sparsebits/SparseBitSet$AbstractStrategy;)V

    return-void
.end method

.method public or(IZ)V
    .locals 2

    add-int/lit8 v0, p1, 0x1

    const/4 v1, 0x1

    if-lt v0, v1, :cond_1

    if-eqz p2, :cond_0

    .line 1
    invoke-virtual {p0, p1}, Lcom/zaxxer/sparsebits/SparseBitSet;->set(I)V

    :cond_0
    return-void

    .line 2
    :cond_1
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "i="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public or(Lcom/zaxxer/sparsebits/SparseBitSet;)V
    .locals 3

    .line 4
    iget v0, p1, Lcom/zaxxer/sparsebits/SparseBitSet;->bitsLength:I

    sget-object v1, Lcom/zaxxer/sparsebits/SparseBitSet;->orStrategy:Lcom/zaxxer/sparsebits/SparseBitSet$OrStrategy;

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0, p1, v1}, Lcom/zaxxer/sparsebits/SparseBitSet;->setScanner(IILcom/zaxxer/sparsebits/SparseBitSet;Lcom/zaxxer/sparsebits/SparseBitSet$AbstractStrategy;)V

    return-void
.end method

.method public previousClearBit(I)I
    .locals 20

    move/from16 v0, p1

    const/4 v1, -0x1

    if-gez v0, :cond_1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "i="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    move-object/from16 v2, p0

    iget-object v2, v2, Lcom/zaxxer/sparsebits/SparseBitSet;->bits:[[[J

    array-length v3, v2

    shr-int/lit8 v4, v0, 0x6

    and-int/lit8 v5, v4, 0x1f

    shr-int/lit8 v6, v4, 0x5

    const/16 v7, 0x1f

    and-int/2addr v6, v7

    shr-int/lit8 v4, v4, 0xa

    add-int/lit8 v3, v3, -0x1

    if-le v4, v3, :cond_2

    return v0

    :cond_2
    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    rem-int/lit8 v0, v0, 0x40

    move v4, v3

    move v9, v5

    move v8, v6

    :goto_0
    if-ltz v4, :cond_d

    aget-object v10, v2, v4

    const/16 v11, 0x3f

    if-nez v10, :cond_4

    shl-int/lit8 v1, v4, 0xa

    shl-int/lit8 v2, v8, 0x5

    add-int/2addr v1, v2

    add-int/2addr v1, v9

    shl-int/lit8 v1, v1, 0x6

    if-ne v3, v4, :cond_3

    goto :goto_1

    :cond_3
    move v0, v11

    :goto_1
    add-int/2addr v1, v0

    return v1

    :cond_4
    :goto_2
    if-ltz v8, :cond_c

    aget-object v12, v10, v8

    if-nez v12, :cond_6

    shl-int/lit8 v1, v4, 0xa

    shl-int/lit8 v2, v8, 0x5

    add-int/2addr v1, v2

    add-int/2addr v1, v9

    shl-int/lit8 v1, v1, 0x6

    if-ne v6, v8, :cond_5

    goto :goto_3

    :cond_5
    move v0, v11

    :goto_3
    add-int/2addr v1, v0

    return v1

    :cond_6
    :goto_4
    if-ltz v9, :cond_b

    aget-wide v13, v12, v9

    const-wide/16 v15, 0x0

    cmp-long v17, v13, v15

    if-nez v17, :cond_8

    shl-int/lit8 v1, v4, 0xa

    shl-int/lit8 v2, v8, 0x5

    add-int/2addr v1, v2

    add-int/2addr v1, v9

    shl-int/lit8 v1, v1, 0x6

    if-ne v5, v9, :cond_7

    goto :goto_5

    :cond_7
    move v0, v11

    :goto_5
    add-int/2addr v1, v0

    return v1

    :cond_8
    move/from16 v17, v0

    :goto_6
    if-ltz v17, :cond_a

    const-wide/16 v18, 0x1

    shl-long v18, v18, v17

    and-long v18, v13, v18

    cmp-long v18, v18, v15

    if-nez v18, :cond_9

    shl-int/lit8 v0, v4, 0xa

    shl-int/lit8 v1, v8, 0x5

    add-int/2addr v0, v1

    add-int/2addr v0, v9

    shl-int/lit8 v0, v0, 0x6

    add-int v0, v0, v17

    return v0

    :cond_9
    add-int/lit8 v17, v17, -0x1

    goto :goto_6

    :cond_a
    add-int/lit8 v9, v9, -0x1

    goto :goto_4

    :cond_b
    add-int/lit8 v8, v8, -0x1

    move v9, v7

    goto :goto_2

    :cond_c
    add-int/lit8 v4, v4, -0x1

    move v8, v7

    move v9, v8

    goto :goto_0

    :cond_d
    return v1
.end method

.method public previousSetBit(I)I
    .locals 18

    move/from16 v0, p1

    const/4 v1, -0x1

    if-gez v0, :cond_1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "i="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    move-object/from16 v2, p0

    iget-object v2, v2, Lcom/zaxxer/sparsebits/SparseBitSet;->bits:[[[J

    array-length v3, v2

    shr-int/lit8 v4, v0, 0x6

    shr-int/lit8 v5, v4, 0xa

    const/4 v6, 0x1

    sub-int/2addr v3, v6

    const/16 v7, 0x3f

    const/16 v8, 0x1f

    if-le v5, v3, :cond_2

    move v5, v3

    move v0, v7

    move v3, v8

    move v4, v3

    goto :goto_0

    :cond_2
    shr-int/lit8 v3, v4, 0x5

    and-int/2addr v3, v8

    and-int/2addr v4, v8

    rem-int/lit8 v0, v0, 0x40

    :goto_0
    if-ltz v5, :cond_8

    aget-object v9, v2, v5

    const/4 v10, 0x0

    if-eqz v9, :cond_7

    :goto_1
    if-ltz v3, :cond_7

    aget-object v11, v9, v3

    if-eqz v11, :cond_6

    :goto_2
    if-ltz v4, :cond_6

    aget-wide v12, v11, v4

    const-wide/16 v14, 0x0

    cmp-long v16, v12, v14

    if-eqz v16, :cond_5

    if-eqz v6, :cond_3

    move v6, v0

    goto :goto_3

    :cond_3
    move v6, v7

    :goto_3
    if-ltz v6, :cond_5

    const-wide/16 v16, 0x1

    shl-long v16, v16, v6

    and-long v16, v12, v16

    cmp-long v16, v16, v14

    if-eqz v16, :cond_4

    shl-int/lit8 v0, v5, 0xa

    shl-int/lit8 v1, v3, 0x5

    add-int/2addr v0, v1

    add-int/2addr v0, v4

    shl-int/lit8 v0, v0, 0x6

    add-int/2addr v0, v6

    return v0

    :cond_4
    add-int/lit8 v6, v6, -0x1

    goto :goto_3

    :cond_5
    add-int/lit8 v4, v4, -0x1

    move v6, v10

    goto :goto_2

    :cond_6
    add-int/lit8 v3, v3, -0x1

    move v4, v8

    move v6, v10

    goto :goto_1

    :cond_7
    add-int/lit8 v5, v5, -0x1

    move v3, v8

    move v4, v3

    move v6, v10

    goto :goto_0

    :cond_8
    return v1
.end method

.method public final resize(I)V
    .locals 5

    shr-int/lit8 p1, p1, 0x6

    shr-int/lit8 p1, p1, 0xa

    invoke-static {p1}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    if-lt p1, v0, :cond_1

    shl-int/lit8 v0, v0, 0x1

    :cond_1
    const p1, 0x8000

    if-le v0, p1, :cond_2

    move v0, p1

    :cond_2
    iget-object v1, p0, Lcom/zaxxer/sparsebits/SparseBitSet;->bits:[[[J

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    array-length v3, v1

    goto :goto_0

    :cond_3
    move v3, v2

    :goto_0
    if-ne v0, v3, :cond_4

    if-nez v1, :cond_7

    :cond_4
    new-array v4, v0, [[[J

    if-eqz v3, :cond_5

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v1, v2, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p0, v2}, Lcom/zaxxer/sparsebits/SparseBitSet;->nullify(I)V

    :cond_5
    iput-object v4, p0, Lcom/zaxxer/sparsebits/SparseBitSet;->bits:[[[J

    if-ne v0, p1, :cond_6

    const p1, 0x7fffffff

    goto :goto_1

    :cond_6
    const/high16 p1, 0x10000

    mul-int/2addr p1, v0

    :goto_1
    iput p1, p0, Lcom/zaxxer/sparsebits/SparseBitSet;->bitsLength:I

    :cond_7
    return-void
.end method

.method public set(I)V
    .locals 6

    add-int/lit8 v0, p1, 0x1

    const/4 v1, 0x1

    if-lt v0, v1, :cond_3

    shr-int/lit8 v0, p1, 0x6

    shr-int/lit8 v1, v0, 0xa

    shr-int/lit8 v2, v0, 0x5

    and-int/lit8 v2, v2, 0x1f

    .line 1
    iget v3, p0, Lcom/zaxxer/sparsebits/SparseBitSet;->bitsLength:I

    if-lt p1, v3, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/zaxxer/sparsebits/SparseBitSet;->resize(I)V

    .line 3
    :cond_0
    iget-object v3, p0, Lcom/zaxxer/sparsebits/SparseBitSet;->bits:[[[J

    aget-object v4, v3, v1

    const/16 v5, 0x20

    if-nez v4, :cond_1

    new-array v4, v5, [[J

    .line 4
    aput-object v4, v3, v1

    .line 5
    :cond_1
    aget-object v1, v4, v2

    if-nez v1, :cond_2

    new-array v1, v5, [J

    .line 6
    aput-object v1, v4, v2

    :cond_2
    and-int/lit8 v0, v0, 0x1f

    .line 7
    aget-wide v2, v1, v0

    const-wide/16 v4, 0x1

    shl-long/2addr v4, p1

    or-long/2addr v2, v4

    aput-wide v2, v1, v0

    .line 8
    iget-object p0, p0, Lcom/zaxxer/sparsebits/SparseBitSet;->cache:Lcom/zaxxer/sparsebits/SparseBitSet$Cache;

    const/4 p1, 0x0

    iput p1, p0, Lcom/zaxxer/sparsebits/SparseBitSet$Cache;->hash:I

    return-void

    .line 9
    :cond_3
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "i="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public set(II)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 12
    sget-object v1, Lcom/zaxxer/sparsebits/SparseBitSet;->setStrategy:Lcom/zaxxer/sparsebits/SparseBitSet$SetStrategy;

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/zaxxer/sparsebits/SparseBitSet;->setScanner(IILcom/zaxxer/sparsebits/SparseBitSet;Lcom/zaxxer/sparsebits/SparseBitSet$AbstractStrategy;)V

    return-void
.end method

.method public set(IIZ)V
    .locals 0

    if-eqz p3, :cond_0

    .line 13
    invoke-virtual {p0, p1, p2}, Lcom/zaxxer/sparsebits/SparseBitSet;->set(II)V

    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/zaxxer/sparsebits/SparseBitSet;->clear(II)V

    :goto_0
    return-void
.end method

.method public set(IZ)V
    .locals 0

    if-eqz p2, :cond_0

    .line 10
    invoke-virtual {p0, p1}, Lcom/zaxxer/sparsebits/SparseBitSet;->set(I)V

    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {p0, p1}, Lcom/zaxxer/sparsebits/SparseBitSet;->clear(I)V

    :goto_0
    return-void
.end method

.method public final setScanner(IILcom/zaxxer/sparsebits/SparseBitSet;Lcom/zaxxer/sparsebits/SparseBitSet$AbstractStrategy;)V
    .locals 48
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v10, p4

    invoke-virtual {v10, v3}, Lcom/zaxxer/sparsebits/SparseBitSet$AbstractStrategy;->start(Lcom/zaxxer/sparsebits/SparseBitSet;)Z

    move-result v4

    const/4 v11, 0x0

    if-eqz v4, :cond_0

    iget-object v4, v0, Lcom/zaxxer/sparsebits/SparseBitSet;->cache:Lcom/zaxxer/sparsebits/SparseBitSet$Cache;

    iput v11, v4, Lcom/zaxxer/sparsebits/SparseBitSet$Cache;->hash:I

    :cond_0
    const/4 v12, 0x1

    if-lt v2, v1, :cond_1

    add-int/lit8 v4, v1, 0x1

    if-ge v4, v12, :cond_2

    :cond_1
    invoke-static/range {p1 .. p2}, Lcom/zaxxer/sparsebits/SparseBitSet;->throwIndexOutOfBoundsException(II)V

    :cond_2
    if-ne v1, v2, :cond_3

    return-void

    :cond_3
    invoke-virtual/range {p4 .. p4}, Lcom/zaxxer/sparsebits/SparseBitSet$AbstractStrategy;->properties()I

    move-result v4

    and-int/lit8 v5, v4, 0x1

    if-eqz v5, :cond_4

    move v13, v12

    goto :goto_0

    :cond_4
    move v13, v11

    :goto_0
    and-int/lit8 v5, v4, 0x2

    if-eqz v5, :cond_5

    move v14, v12

    goto :goto_1

    :cond_5
    move v14, v11

    :goto_1
    and-int/lit8 v5, v4, 0x4

    if-eqz v5, :cond_6

    move v15, v12

    goto :goto_2

    :cond_6
    move v15, v11

    :goto_2
    and-int/lit8 v4, v4, 0x8

    if-eqz v4, :cond_7

    move/from16 v16, v12

    goto :goto_3

    :cond_7
    move/from16 v16, v11

    :goto_3
    shr-int/lit8 v4, v1, 0x6

    const-wide/16 v5, -0x1

    shl-long v17, v5, v1

    add-int/lit8 v7, v2, -0x1

    shr-int/lit8 v9, v7, 0x6

    neg-int v7, v2

    ushr-long v19, v5, v7

    iget-object v7, v0, Lcom/zaxxer/sparsebits/SparseBitSet;->bits:[[[J

    array-length v8, v7

    const/16 v21, 0x0

    if-eqz v3, :cond_8

    iget-object v11, v3, Lcom/zaxxer/sparsebits/SparseBitSet;->bits:[[[J

    goto :goto_4

    :cond_8
    move-object/from16 v11, v21

    :goto_4
    if-eqz v11, :cond_9

    iget-object v3, v3, Lcom/zaxxer/sparsebits/SparseBitSet;->bits:[[[J

    array-length v3, v3

    goto :goto_5

    :cond_9
    const/4 v3, 0x0

    :goto_5
    shr-int/lit8 v22, v4, 0xa

    shr-int/lit8 v23, v4, 0x5

    and-int/lit8 v23, v23, 0x1f

    and-int/lit8 v24, v4, 0x1f

    shr-int/lit8 v12, v9, 0xa

    shr-int/lit8 v26, v9, 0x5

    and-int/lit8 v26, v26, 0x1f

    and-int/lit8 v27, v9, 0x1f

    shl-int/lit8 v28, v12, 0x5

    add-int v1, v28, v26

    if-nez v4, :cond_a

    cmp-long v5, v17, v5

    if-nez v5, :cond_a

    const/4 v5, 0x1

    goto :goto_6

    :cond_a
    const/4 v5, 0x0

    :goto_6
    if-nez v23, :cond_b

    const/4 v6, 0x1

    goto :goto_7

    :cond_b
    const/4 v6, 0x0

    :goto_7
    move/from16 p3, v4

    move-object v4, v7

    const/4 v7, 0x0

    const/16 v29, 0x0

    move/from16 v46, v8

    move/from16 v8, p1

    move/from16 p1, v6

    move/from16 v6, v46

    move/from16 v47, v22

    move/from16 v22, v9

    move/from16 v9, v47

    :goto_8
    if-ge v8, v2, :cond_34

    if-ge v9, v6, :cond_c

    aget-object v28, v4, v9

    if-eqz v28, :cond_d

    const/16 v30, 0x1

    goto :goto_9

    :cond_c
    move-object/from16 v28, v21

    :cond_d
    const/16 v30, 0x0

    :goto_9
    if-ge v9, v3, :cond_e

    if-eqz v11, :cond_e

    aget-object v31, v11, v9

    if-eqz v31, :cond_f

    const/16 v32, 0x1

    goto :goto_a

    :cond_e
    move-object/from16 v31, v21

    :cond_f
    const/16 v32, 0x0

    :goto_a
    if-nez v30, :cond_10

    if-nez v32, :cond_10

    if-nez v13, :cond_12

    :cond_10
    if-nez v30, :cond_11

    if-nez v14, :cond_12

    :cond_11
    if-nez v32, :cond_14

    if-eqz v15, :cond_14

    :cond_12
    if-eqz v5, :cond_14

    if-eq v9, v12, :cond_14

    if-ge v9, v6, :cond_13

    aput-object v21, v4, v9

    :cond_13
    move/from16 v30, p1

    move/from16 p3, v1

    move/from16 v39, v3

    move-object/from16 v38, v11

    move/from16 v44, v22

    const/16 v25, 0x1

    move/from16 v22, v12

    move v12, v9

    goto/16 :goto_1d

    :cond_14
    move/from16 v33, v6

    const/16 v25, 0x1

    if-ne v9, v12, :cond_15

    add-int/lit8 v34, v26, 0x1

    move/from16 v6, v34

    goto :goto_b

    :cond_15
    const/16 v6, 0x20

    :goto_b
    move-object/from16 v35, v28

    move/from16 v36, v30

    move/from16 v30, p1

    move/from16 v28, v24

    move/from16 v24, v5

    move/from16 v5, v23

    move-object/from16 v23, v4

    move/from16 v46, v33

    move/from16 v33, v7

    move/from16 v7, v46

    :goto_c
    if-eq v5, v6, :cond_30

    if-eqz v36, :cond_16

    aget-object v4, v35, v5

    if-eqz v4, :cond_17

    move/from16 v37, v25

    goto :goto_d

    :cond_16
    move-object/from16 v4, v21

    :cond_17
    const/16 v37, 0x0

    :goto_d
    if-eqz v32, :cond_18

    aget-object v38, v31, v5

    if-eqz v38, :cond_19

    move/from16 v39, v25

    goto :goto_e

    :cond_18
    move-object/from16 v38, v21

    :cond_19
    const/16 v39, 0x0

    :goto_e
    shl-int/lit8 v40, v9, 0x5

    add-int v2, v40, v5

    if-eq v1, v2, :cond_1a

    move/from16 v40, v25

    goto :goto_f

    :cond_1a
    const/16 v40, 0x0

    :goto_f
    if-nez v37, :cond_1b

    if-nez v39, :cond_1b

    if-nez v13, :cond_1d

    :cond_1b
    if-nez v37, :cond_1c

    if-nez v14, :cond_1d

    :cond_1c
    if-nez v39, :cond_1f

    if-eqz v15, :cond_1f

    :cond_1d
    if-eqz v24, :cond_1f

    if-eqz v40, :cond_1f

    if-eqz v36, :cond_1e

    aput-object v21, v35, v5

    :cond_1e
    move/from16 v45, p3

    move/from16 p3, v1

    move/from16 v39, v3

    move/from16 v34, v6

    move v1, v8

    move-object/from16 v38, v11

    move/from16 v44, v22

    const/16 v2, 0x20

    move v11, v5

    move/from16 v22, v12

    move v12, v9

    goto/16 :goto_1b

    :cond_1f
    shl-int/lit8 v2, v2, 0x5

    if-eqz v40, :cond_20

    const/16 p1, 0x20

    goto :goto_10

    :cond_20
    move/from16 p1, v27

    :goto_10
    if-nez v37, :cond_21

    iget-object v4, v0, Lcom/zaxxer/sparsebits/SparseBitSet;->spare:[J

    :cond_21
    if-nez v39, :cond_22

    sget-object v37, Lcom/zaxxer/sparsebits/SparseBitSet;->ZERO_BLOCK:[J

    goto :goto_11

    :cond_22
    move-object/from16 v37, v38

    :goto_11
    if-eqz v24, :cond_24

    if-eqz v40, :cond_24

    if-eqz v16, :cond_23

    if-nez v39, :cond_23

    invoke-virtual {v10, v4}, Lcom/zaxxer/sparsebits/SparseBitSet$AbstractStrategy;->isZeroBlock([J)Z

    move-result v2

    move/from16 v45, p3

    move/from16 p3, v1

    move/from16 v39, v3

    move/from16 v34, v6

    move/from16 v41, v7

    move v1, v8

    move-object/from16 v38, v11

    move/from16 v44, v22

    move v3, v2

    move v11, v5

    goto :goto_12

    :cond_23
    const/16 v28, 0x0

    const/16 v38, 0x20

    move/from16 v39, v3

    move-object/from16 v3, p4

    move-object/from16 v40, v4

    move v4, v2

    move v2, v5

    move/from16 v5, v28

    move/from16 v34, v6

    move/from16 v6, v38

    move/from16 v42, p3

    move/from16 v41, v7

    move-object/from16 v7, v40

    move/from16 p3, v1

    move v1, v8

    move-object/from16 v8, v37

    invoke-virtual/range {v3 .. v8}, Lcom/zaxxer/sparsebits/SparseBitSet$AbstractStrategy;->block(III[J[J)Z

    move-result v3

    move-object/from16 v38, v11

    move/from16 v44, v22

    move-object/from16 v4, v40

    move/from16 v45, v42

    move v11, v2

    :goto_12
    move/from16 v22, v12

    const/16 v2, 0x20

    move v12, v9

    goto/16 :goto_15

    :cond_24
    move/from16 v42, p3

    move/from16 p3, v1

    move/from16 v39, v3

    move-object/from16 v40, v4

    move/from16 v34, v6

    move/from16 v41, v7

    move v1, v8

    move v8, v5

    if-eqz v24, :cond_25

    const/4 v5, 0x0

    move-object/from16 v3, p4

    move v4, v2

    move/from16 v6, p1

    move-object/from16 v7, v40

    move-object/from16 v38, v11

    move v11, v8

    move-object/from16 v8, v37

    invoke-virtual/range {v3 .. v8}, Lcom/zaxxer/sparsebits/SparseBitSet$AbstractStrategy;->block(III[J[J)Z

    move-result v28

    move/from16 v5, p1

    move-object/from16 v6, v40

    move-object/from16 v7, v37

    move/from16 v2, v22

    move/from16 v22, v12

    move v12, v9

    move-wide/from16 v8, v19

    invoke-virtual/range {v3 .. v9}, Lcom/zaxxer/sparsebits/SparseBitSet$AbstractStrategy;->word(II[J[JJ)Z

    move-result v3

    and-int v3, v28, v3

    move/from16 v44, v2

    move/from16 v45, v42

    const/16 v2, 0x20

    goto/16 :goto_14

    :cond_25
    move-object/from16 v38, v11

    move v11, v8

    move/from16 v8, v22

    move/from16 v22, v12

    move v12, v9

    move/from16 v9, v42

    if-ne v9, v8, :cond_26

    and-long v42, v17, v19

    move-object/from16 v3, p4

    move v4, v2

    move/from16 v5, v28

    move-object/from16 v6, v40

    move-object/from16 v7, v37

    move/from16 v44, v8

    move/from16 v45, v9

    move-wide/from16 v8, v42

    invoke-virtual/range {v3 .. v9}, Lcom/zaxxer/sparsebits/SparseBitSet$AbstractStrategy;->word(II[J[JJ)Z

    move-result v2

    move v3, v2

    const/16 v2, 0x20

    goto :goto_13

    :cond_26
    move/from16 v44, v8

    move/from16 v45, v9

    move-object/from16 v3, p4

    move v4, v2

    move/from16 v5, v28

    move-object/from16 v6, v40

    move-object/from16 v7, v37

    move-wide/from16 v8, v17

    invoke-virtual/range {v3 .. v9}, Lcom/zaxxer/sparsebits/SparseBitSet$AbstractStrategy;->word(II[J[JJ)Z

    move-result v9

    add-int/lit8 v5, v28, 0x1

    move/from16 v6, p1

    move-object/from16 v7, v40

    move-object/from16 v8, v37

    invoke-virtual/range {v3 .. v8}, Lcom/zaxxer/sparsebits/SparseBitSet$AbstractStrategy;->block(III[J[J)Z

    move-result v3

    and-int v24, v9, v3

    move/from16 v5, p1

    const/16 v8, 0x20

    if-eq v5, v8, :cond_27

    move-object/from16 v3, p4

    move v4, v2

    move-object/from16 v6, v40

    move-object/from16 v7, v37

    move v2, v8

    move-wide/from16 v8, v19

    invoke-virtual/range {v3 .. v9}, Lcom/zaxxer/sparsebits/SparseBitSet$AbstractStrategy;->word(II[J[JJ)Z

    move-result v3

    and-int v3, v24, v3

    goto :goto_13

    :cond_27
    move v2, v8

    move/from16 v3, v24

    :goto_13
    move/from16 v24, v25

    :goto_14
    move-object/from16 v4, v40

    if-eqz v3, :cond_28

    invoke-virtual {v10, v4}, Lcom/zaxxer/sparsebits/SparseBitSet$AbstractStrategy;->isZeroBlock([J)Z

    move-result v3

    :cond_28
    :goto_15
    if-eqz v3, :cond_2a

    if-eqz v36, :cond_29

    aput-object v21, v35, v11

    :cond_29
    move/from16 v7, v41

    goto :goto_18

    :cond_2a
    iget-object v3, v0, Lcom/zaxxer/sparsebits/SparseBitSet;->spare:[J

    if-ne v4, v3, :cond_2d

    iget v3, v0, Lcom/zaxxer/sparsebits/SparseBitSet;->bitsLength:I

    if-lt v1, v3, :cond_2b

    invoke-virtual {v0, v1}, Lcom/zaxxer/sparsebits/SparseBitSet;->resize(I)V

    iget-object v3, v0, Lcom/zaxxer/sparsebits/SparseBitSet;->bits:[[[J

    array-length v7, v3

    move-object/from16 v23, v3

    goto :goto_16

    :cond_2b
    move/from16 v7, v41

    :goto_16
    if-nez v35, :cond_2c

    new-array v3, v2, [[J

    aput-object v3, v23, v12

    move-object/from16 v35, v3

    move/from16 v36, v25

    :cond_2c
    aput-object v4, v35, v11

    new-array v3, v2, [J

    iput-object v3, v0, Lcom/zaxxer/sparsebits/SparseBitSet;->spare:[J

    goto :goto_17

    :cond_2d
    move/from16 v7, v41

    :goto_17
    add-int/lit8 v33, v33, 0x1

    :goto_18
    if-eqz v36, :cond_2f

    aget-object v3, v35, v11

    if-nez v3, :cond_2e

    goto :goto_19

    :cond_2e
    const/4 v3, 0x0

    goto :goto_1a

    :cond_2f
    :goto_19
    move/from16 v3, v25

    :goto_1a
    and-int v3, v30, v3

    move/from16 v30, v3

    :goto_1b
    add-int/lit8 v5, v11, 0x1

    move/from16 v2, p2

    move v8, v1

    move v9, v12

    move/from16 v12, v22

    move/from16 v6, v34

    move-object/from16 v11, v38

    move/from16 v3, v39

    move/from16 v22, v44

    const/16 v28, 0x0

    move/from16 v1, p3

    move/from16 p3, v45

    goto/16 :goto_c

    :cond_30
    move/from16 p3, v1

    move/from16 v39, v3

    move/from16 v41, v7

    move-object/from16 v38, v11

    move/from16 v44, v22

    const/16 v2, 0x20

    move v11, v5

    move/from16 v22, v12

    move v12, v9

    if-ne v11, v2, :cond_31

    if-eqz v30, :cond_31

    move/from16 v7, v41

    if-ge v12, v7, :cond_32

    aput-object v21, v23, v12

    goto :goto_1c

    :cond_31
    move/from16 v7, v41

    :cond_32
    move/from16 v1, v29

    add-int/lit8 v29, v1, 0x1

    :goto_1c
    move v6, v7

    move-object/from16 v4, v23

    move/from16 v5, v24

    move/from16 v24, v28

    move/from16 v7, v33

    :goto_1d
    add-int/lit8 v9, v12, 0x1

    shl-int/lit8 v1, v9, 0xa

    shl-int/lit8 v2, v1, 0x6

    if-gez v2, :cond_33

    const v2, 0x7fffffff

    :cond_33
    move v8, v2

    move/from16 v2, p2

    move/from16 v12, v22

    move/from16 p1, v30

    move-object/from16 v11, v38

    move/from16 v3, v39

    move/from16 v22, v44

    const/16 v23, 0x0

    move/from16 v46, v1

    move/from16 v1, p3

    move/from16 p3, v46

    goto/16 :goto_8

    :cond_34
    move/from16 v1, v29

    invoke-virtual {v10, v1, v7}, Lcom/zaxxer/sparsebits/SparseBitSet$AbstractStrategy;->finish(II)V

    return-void
.end method

.method public size()I
    .locals 0

    invoke-virtual {p0}, Lcom/zaxxer/sparsebits/SparseBitSet;->statisticsUpdate()V

    iget-object p0, p0, Lcom/zaxxer/sparsebits/SparseBitSet;->cache:Lcom/zaxxer/sparsebits/SparseBitSet$Cache;

    iget p0, p0, Lcom/zaxxer/sparsebits/SparseBitSet$Cache;->size:I

    return p0
.end method

.method public statistics()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/zaxxer/sparsebits/SparseBitSet;->statistics([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public statistics([Ljava/lang/String;)Ljava/lang/String;
    .locals 11

    .line 2
    invoke-virtual {p0}, Lcom/zaxxer/sparsebits/SparseBitSet;->statisticsUpdate()V

    .line 3
    invoke-static {}, Lcom/zaxxer/sparsebits/SparseBitSet$Statistics;->values()[Lcom/zaxxer/sparsebits/SparseBitSet$Statistics;

    move-result-object v0

    array-length v0, v0

    new-array v1, v0, [Ljava/lang/String;

    .line 4
    sget-object v2, Lcom/zaxxer/sparsebits/SparseBitSet$Statistics;->Size:Lcom/zaxxer/sparsebits/SparseBitSet$Statistics;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    invoke-virtual {p0}, Lcom/zaxxer/sparsebits/SparseBitSet;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 5
    sget-object v2, Lcom/zaxxer/sparsebits/SparseBitSet$Statistics;->Length:Lcom/zaxxer/sparsebits/SparseBitSet$Statistics;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    invoke-virtual {p0}, Lcom/zaxxer/sparsebits/SparseBitSet;->length()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 6
    sget-object v2, Lcom/zaxxer/sparsebits/SparseBitSet$Statistics;->Cardinality:Lcom/zaxxer/sparsebits/SparseBitSet$Statistics;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    invoke-virtual {p0}, Lcom/zaxxer/sparsebits/SparseBitSet;->cardinality()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 7
    sget-object v2, Lcom/zaxxer/sparsebits/SparseBitSet$Statistics;->Total_words:Lcom/zaxxer/sparsebits/SparseBitSet$Statistics;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    iget-object v3, p0, Lcom/zaxxer/sparsebits/SparseBitSet;->cache:Lcom/zaxxer/sparsebits/SparseBitSet$Cache;

    iget v3, v3, Lcom/zaxxer/sparsebits/SparseBitSet$Cache;->count:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 8
    sget-object v2, Lcom/zaxxer/sparsebits/SparseBitSet$Statistics;->Set_array_length:Lcom/zaxxer/sparsebits/SparseBitSet$Statistics;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    iget-object v3, p0, Lcom/zaxxer/sparsebits/SparseBitSet;->bits:[[[J

    array-length v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 9
    sget-object v2, Lcom/zaxxer/sparsebits/SparseBitSet$Statistics;->Set_array_max_length:Lcom/zaxxer/sparsebits/SparseBitSet$Statistics;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    const v3, 0x8000

    .line 10
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 11
    sget-object v2, Lcom/zaxxer/sparsebits/SparseBitSet$Statistics;->Level2_areas:Lcom/zaxxer/sparsebits/SparseBitSet$Statistics;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    iget-object v3, p0, Lcom/zaxxer/sparsebits/SparseBitSet;->cache:Lcom/zaxxer/sparsebits/SparseBitSet$Cache;

    iget v3, v3, Lcom/zaxxer/sparsebits/SparseBitSet$Cache;->a2Count:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 12
    sget-object v2, Lcom/zaxxer/sparsebits/SparseBitSet$Statistics;->Level2_area_length:Lcom/zaxxer/sparsebits/SparseBitSet$Statistics;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    const/16 v3, 0x20

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    .line 13
    sget-object v2, Lcom/zaxxer/sparsebits/SparseBitSet$Statistics;->Level3_blocks:Lcom/zaxxer/sparsebits/SparseBitSet$Statistics;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    iget-object v4, p0, Lcom/zaxxer/sparsebits/SparseBitSet;->cache:Lcom/zaxxer/sparsebits/SparseBitSet$Cache;

    iget v4, v4, Lcom/zaxxer/sparsebits/SparseBitSet$Cache;->a3Count:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    .line 14
    sget-object v2, Lcom/zaxxer/sparsebits/SparseBitSet$Statistics;->Level3_block_length:Lcom/zaxxer/sparsebits/SparseBitSet$Statistics;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    .line 15
    sget-object v2, Lcom/zaxxer/sparsebits/SparseBitSet$Statistics;->Compaction_count_value:Lcom/zaxxer/sparsebits/SparseBitSet$Statistics;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    iget p0, p0, Lcom/zaxxer/sparsebits/SparseBitSet;->compactionCount:I

    .line 16
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v1, v2

    .line 17
    invoke-static {}, Lcom/zaxxer/sparsebits/SparseBitSet$Statistics;->values()[Lcom/zaxxer/sparsebits/SparseBitSet$Statistics;

    move-result-object p0

    array-length v2, p0

    const/4 v4, 0x0

    move v5, v4

    move v6, v5

    :goto_0
    if-ge v5, v2, :cond_0

    aget-object v7, p0, v5

    .line 18
    invoke-virtual {v7}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 19
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    invoke-static {}, Lcom/zaxxer/sparsebits/SparseBitSet$Statistics;->values()[Lcom/zaxxer/sparsebits/SparseBitSet$Statistics;

    move-result-object v2

    array-length v5, v2

    move v7, v4

    :goto_1
    if-ge v7, v5, :cond_2

    aget-object v8, v2, v7

    .line 21
    invoke-virtual {v8}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v9, v4

    .line 22
    :goto_2
    invoke-virtual {v8}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    sub-int v10, v6, v10

    if-eq v9, v10, :cond_1

    .line 23
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_1
    const-string v9, " = "

    .line 24
    invoke-virtual {p0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    aget-object v8, v1, v8

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v8, 0xa

    .line 26
    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_2
    move v2, v4

    .line 27
    :goto_3
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-eq v2, v5, :cond_4

    .line 28
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v5

    const/16 v6, 0x5f

    if-ne v5, v6, :cond_3

    .line 29
    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_4
    if-eqz p1, :cond_5

    .line 30
    array-length v2, p1

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 31
    invoke-static {v1, v4, p1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 32
    :cond_5
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final statisticsUpdate()V
    .locals 4

    iget-object v0, p0, Lcom/zaxxer/sparsebits/SparseBitSet;->cache:Lcom/zaxxer/sparsebits/SparseBitSet$Cache;

    iget v0, v0, Lcom/zaxxer/sparsebits/SparseBitSet$Cache;->hash:I

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/zaxxer/sparsebits/SparseBitSet;->bitsLength:I

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/zaxxer/sparsebits/SparseBitSet;->updateStrategy:Lcom/zaxxer/sparsebits/SparseBitSet$UpdateStrategy;

    const/4 v3, 0x0

    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/zaxxer/sparsebits/SparseBitSet;->setScanner(IILcom/zaxxer/sparsebits/SparseBitSet;Lcom/zaxxer/sparsebits/SparseBitSet$AbstractStrategy;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0xc8

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/zaxxer/sparsebits/SparseBitSet;->nextSetBit(I)I

    move-result v1

    :cond_0
    :goto_0
    if-ltz v1, :cond_4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v2}, Lcom/zaxxer/sparsebits/SparseBitSet;->nextSetBit(I)I

    move-result v2

    iget v3, p0, Lcom/zaxxer/sparsebits/SparseBitSet;->compactionCount:I

    if-lez v3, :cond_3

    if-gez v2, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {p0, v1}, Lcom/zaxxer/sparsebits/SparseBitSet;->nextClearBit(I)I

    move-result v3

    if-gez v3, :cond_2

    const v3, 0x7fffffff

    :cond_2
    iget v4, p0, Lcom/zaxxer/sparsebits/SparseBitSet;->compactionCount:I

    add-int/2addr v1, v4

    if-ge v1, v3, :cond_3

    const-string v1, ".."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v3, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Lcom/zaxxer/sparsebits/SparseBitSet;->nextSetBit(I)I

    move-result v1

    goto :goto_1

    :cond_3
    move v1, v2

    :goto_1
    if-ltz v1, :cond_0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_4
    :goto_2
    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toStringCompaction(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/zaxxer/sparsebits/SparseBitSet;->compactionCount:I

    return-void
.end method

.method public toStringCompaction(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 2
    iget p0, p0, Lcom/zaxxer/sparsebits/SparseBitSet;->compactionCount:I

    sput p0, Lcom/zaxxer/sparsebits/SparseBitSet;->compactionCountDefault:I

    :cond_0
    return-void
.end method

.method public xor(IILcom/zaxxer/sparsebits/SparseBitSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/zaxxer/sparsebits/SparseBitSet;->xorStrategy:Lcom/zaxxer/sparsebits/SparseBitSet$XorStrategy;

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/zaxxer/sparsebits/SparseBitSet;->setScanner(IILcom/zaxxer/sparsebits/SparseBitSet;Lcom/zaxxer/sparsebits/SparseBitSet$AbstractStrategy;)V

    return-void
.end method

.method public xor(IZ)V
    .locals 2

    add-int/lit8 v0, p1, 0x1

    const/4 v1, 0x1

    if-lt v0, v1, :cond_1

    if-eqz p2, :cond_0

    .line 1
    invoke-virtual {p0, p1}, Lcom/zaxxer/sparsebits/SparseBitSet;->flip(I)V

    :cond_0
    return-void

    .line 2
    :cond_1
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "i="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public xor(Lcom/zaxxer/sparsebits/SparseBitSet;)V
    .locals 3

    .line 4
    iget v0, p1, Lcom/zaxxer/sparsebits/SparseBitSet;->bitsLength:I

    sget-object v1, Lcom/zaxxer/sparsebits/SparseBitSet;->xorStrategy:Lcom/zaxxer/sparsebits/SparseBitSet$XorStrategy;

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0, p1, v1}, Lcom/zaxxer/sparsebits/SparseBitSet;->setScanner(IILcom/zaxxer/sparsebits/SparseBitSet;Lcom/zaxxer/sparsebits/SparseBitSet$AbstractStrategy;)V

    return-void
.end method
