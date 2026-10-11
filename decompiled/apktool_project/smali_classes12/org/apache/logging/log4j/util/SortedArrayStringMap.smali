.class public Lorg/apache/logging/log4j/util/SortedArrayStringMap;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/logging/log4j/util/IndexedStringMap;


# static fields
.field private static final DEFAULT_INITIAL_CAPACITY:I = 0x4

.field private static final EMPTY:[Ljava/lang/String;

.field private static final FROZEN:Ljava/lang/String; = "Frozen collection cannot be modified"

.field private static final HASHVAL:I = 0x1f

.field private static final PUT_ALL:Lorg/apache/logging/log4j/util/TriConsumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/logging/log4j/util/TriConsumer<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Lorg/apache/logging/log4j/util/StringMap;",
            ">;"
        }
    .end annotation
.end field

.field private static final getObjectInputFilter:Ljava/lang/reflect/Method;

.field private static final newObjectInputFilter:Ljava/lang/reflect/Method;

.field private static final serialVersionUID:J = -0x4fc8376e8c13d424L

.field private static final setObjectInputFilter:Ljava/lang/reflect/Method;


# instance fields
.field private immutable:Z

.field private transient iterating:Z

.field private transient keys:[Ljava/lang/String;

.field private transient size:I

.field private threshold:I

.field private transient values:[Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .locals 10

    new-instance v0, Lcom/sunia/HTREnginev2/rvm;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/rvm;-><init>()V

    sput-object v0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->PUT_ALL:Lorg/apache/logging/log4j/util/TriConsumer;

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/String;

    sput-object v1, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->EMPTY:[Ljava/lang/String;

    const-class v1, Ljava/io/ObjectInputStream;

    invoke-virtual {v1}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v0

    move-object v5, v3

    move-object v6, v5

    :goto_0
    if-ge v4, v2, :cond_2

    aget-object v7, v1, v4

    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "setObjectInputFilter"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    move-object v5, v7

    goto :goto_1

    :cond_0
    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "getObjectInputFilter"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    move-object v6, v7

    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    if-eqz v5, :cond_4

    :try_start_0
    const-string v1, "org.apache.logging.log4j.util.internal.DefaultObjectInputFilter"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v1

    array-length v2, v1

    :goto_2
    if-ge v0, v2, :cond_4

    aget-object v4, v1, v0

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "newInstance"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v7

    invoke-static {v7}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v7
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v7, :cond_3

    move-object v3, v4

    goto :goto_3

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :catch_0
    :cond_4
    :goto_3
    sput-object v3, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->newObjectInputFilter:Ljava/lang/reflect/Method;

    sput-object v5, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->setObjectInputFilter:Ljava/lang/reflect/Method;

    sput-object v6, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->getObjectInputFilter:Ljava/lang/reflect/Method;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x4

    .line 1
    invoke-direct {p0, v0}, Lorg/apache/logging/log4j/util/SortedArrayStringMap;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "initialCapacity"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    sget-object v0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->EMPTY:[Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->keys:[Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->values:[Ljava/lang/Object;

    if-ltz p1, :cond_1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 5
    :cond_0
    invoke-static {p1}, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->ceilingNextPowerOfTwo(I)I

    move-result p1

    iput p1, p0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->threshold:I

    return-void

    .line 6
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Initial capacity must be at least zero but was "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "map"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)V"
        }
    .end annotation

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    sget-object v0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->EMPTY:[Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->keys:[Ljava/lang/String;

    .line 16
    iput-object v0, p0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->values:[Ljava/lang/Object;

    .line 17
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    invoke-static {v0}, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->ceilingNextPowerOfTwo(I)I

    move-result v0

    invoke-direct {p0, v0}, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->resize(I)V

    .line 18
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 19
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(Lorg/apache/logging/log4j/util/ReadOnlyStringMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "other"
        }
    .end annotation

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    sget-object v0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->EMPTY:[Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->keys:[Ljava/lang/String;

    .line 9
    iput-object v0, p0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->values:[Ljava/lang/Object;

    .line 10
    instance-of v0, p1, Lorg/apache/logging/log4j/util/SortedArrayStringMap;

    if-eqz v0, :cond_0

    .line 11
    check-cast p1, Lorg/apache/logging/log4j/util/SortedArrayStringMap;

    invoke-direct {p0, p1}, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->initFrom0(Lorg/apache/logging/log4j/util/SortedArrayStringMap;)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 12
    invoke-interface {p1}, Lorg/apache/logging/log4j/util/ReadOnlyStringMap;->size()I

    move-result v0

    invoke-static {v0}, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->ceilingNextPowerOfTwo(I)I

    move-result v0

    invoke-direct {p0, v0}, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->resize(I)V

    .line 13
    sget-object v0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->PUT_ALL:Lorg/apache/logging/log4j/util/TriConsumer;

    invoke-interface {p1, v0, p0}, Lorg/apache/logging/log4j/util/ReadOnlyStringMap;->forEach(Lorg/apache/logging/log4j/util/TriConsumer;Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static synthetic a(Ljava/lang/String;Ljava/lang/Object;Lorg/apache/logging/log4j/util/StringMap;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->lambda$static$0(Ljava/lang/String;Ljava/lang/Object;Lorg/apache/logging/log4j/util/StringMap;)V

    return-void
.end method

.method private assertNoConcurrentModification()V
    .locals 0

    iget-boolean p0, p0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->iterating:Z

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/util/ConcurrentModificationException;

    invoke-direct {p0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p0
.end method

.method private assertNotFrozen()V
    .locals 1

    iget-boolean p0, p0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->immutable:Z

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Frozen collection cannot be modified"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static ceilingNextPowerOfTwo(I)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "x"
        }
    .end annotation

    const/4 v0, 0x1

    sub-int/2addr p0, v0

    invoke-static {p0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result p0

    rsub-int/lit8 p0, p0, 0x20

    shl-int p0, v0, p0

    return p0
.end method

.method private ensureCapacity()V
    .locals 2

    iget v0, p0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->size:I

    iget v1, p0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->threshold:I

    if-lt v0, v1, :cond_0

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {p0, v1}, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->resize(I)V

    :cond_0
    return-void
.end method

.method private handleSerializationException(Ljava/lang/Throwable;ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "t",
            "i",
            "key"
        }
    .end annotation

    invoke-static {}, Lorg/apache/logging/log4j/status/StatusLogger;->getLogger()Lorg/apache/logging/log4j/status/StatusLogger;

    move-result-object p3

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object p0, p0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->keys:[Ljava/lang/String;

    aget-object p0, p0, p2

    const-string p2, "Ignoring {} for key[{}] (\'{}\')"

    invoke-virtual {p3, p2, p1, v0, p0}, Lorg/apache/logging/log4j/spi/AbstractLogger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method private static hashCode([Ljava/lang/Object;I)I
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "values",
            "length"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, p1, :cond_1

    mul-int/lit8 v0, v0, 0x1f

    .line 4
    aget-object v3, p0, v2

    if-nez v3, :cond_0

    move v3, v1

    goto :goto_1

    :cond_0
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private inflateTable(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "toSize"
        }
    .end annotation

    iput p1, p0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->threshold:I

    new-array v0, p1, [Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->keys:[Ljava/lang/String;

    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->values:[Ljava/lang/Object;

    return-void
.end method

.method private initFrom0(Lorg/apache/logging/log4j/util/SortedArrayStringMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "other"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->keys:[Ljava/lang/String;

    array-length v0, v0

    iget v1, p1, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->size:I

    if-ge v0, v1, :cond_0

    iget v0, p1, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->threshold:I

    new-array v2, v0, [Ljava/lang/String;

    iput-object v2, p0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->keys:[Ljava/lang/String;

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->values:[Ljava/lang/Object;

    :cond_0
    iget-object v0, p1, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->keys:[Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->keys:[Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p1, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->values:[Ljava/lang/Object;

    iget-object v1, p0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->values:[Ljava/lang/Object;

    iget v2, p1, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->size:I

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p1, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->size:I

    iput v0, p0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->size:I

    iget p1, p1, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->threshold:I

    iput p1, p0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->threshold:I

    return-void
.end method

.method private insertAt(ILjava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "index",
            "key",
            "value"
        }
    .end annotation

    invoke-direct {p0}, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->ensureCapacity()V

    iget-object v0, p0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->keys:[Ljava/lang/String;

    add-int/lit8 v1, p1, 0x1

    iget v2, p0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->size:I

    sub-int/2addr v2, p1

    invoke-static {v0, p1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->values:[Ljava/lang/Object;

    iget v2, p0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->size:I

    sub-int/2addr v2, p1

    invoke-static {v0, p1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->keys:[Ljava/lang/String;

    aput-object p2, v0, p1

    iget-object p2, p0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->values:[Ljava/lang/Object;

    aput-object p3, p2, p1

    iget p1, p0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->size:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->size:I

    return-void
.end method

.method private static synthetic lambda$static$0(Ljava/lang/String;Ljava/lang/Object;Lorg/apache/logging/log4j/util/StringMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            "key",
            "value",
            "contextData"
        }
    .end annotation

    invoke-interface {p2, p0, p1}, Lorg/apache/logging/log4j/util/StringMap;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private static marshall(Ljava/lang/Object;)[B
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "obj"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Ljava/io/ObjectOutputStream;

    invoke-direct {v1, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    :try_start_0
    invoke-virtual {v1, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->flush()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v1

    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v0
.end method

.method private merge(Lorg/apache/logging/log4j/util/SortedArrayStringMap;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "other"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->keys:[Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->values:[Ljava/lang/Object;

    iget v2, p1, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->size:I

    iget v3, p0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->size:I

    add-int/2addr v2, v3

    invoke-static {v2}, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->ceilingNextPowerOfTwo(I)I

    move-result v3

    iput v3, p0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->threshold:I

    iget-object v4, p0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->keys:[Ljava/lang/String;

    array-length v4, v4

    if-ge v4, v3, :cond_0

    new-array v4, v3, [Ljava/lang/String;

    iput-object v4, p0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->keys:[Ljava/lang/String;

    new-array v3, v3, [Ljava/lang/Object;

    iput-object v3, p0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->values:[Ljava/lang/Object;

    :cond_0
    invoke-virtual {p1}, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->size()I

    move-result v3

    invoke-virtual {p0}, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->size()I

    move-result v4

    const/4 v5, 0x0

    if-le v3, v4, :cond_1

    iget-object v3, p0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->keys:[Ljava/lang/String;

    iget v4, p1, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->size:I

    iget v6, p0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->size:I

    invoke-static {v0, v5, v3, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->values:[Ljava/lang/Object;

    iget v3, p1, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->size:I

    iget v4, p0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->size:I

    invoke-static {v1, v5, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p1, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->keys:[Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->keys:[Ljava/lang/String;

    iget v3, p1, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->size:I

    invoke-static {v0, v5, v1, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p1, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->values:[Ljava/lang/Object;

    iget-object v1, p0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->values:[Ljava/lang/Object;

    iget v3, p1, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->size:I

    invoke-static {v0, v5, v1, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p1, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->size:I

    iput p1, p0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->size:I

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->keys:[Ljava/lang/String;

    iget v4, p0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->size:I

    invoke-static {v0, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->values:[Ljava/lang/Object;

    iget v3, p0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->size:I

    invoke-static {v1, v5, v0, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p1, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->keys:[Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->keys:[Ljava/lang/String;

    iget v3, p0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->size:I

    iget v4, p1, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->size:I

    invoke-static {v0, v5, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p1, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->values:[Ljava/lang/Object;

    iget-object v1, p0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->values:[Ljava/lang/Object;

    iget v3, p0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->size:I

    iget p1, p1, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->size:I

    invoke-static {v0, v5, v1, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v5, 0x1

    :goto_0
    iget p1, p0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->size:I

    :goto_1
    if-ge p1, v2, :cond_4

    iget-object v0, p0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->keys:[Ljava/lang/String;

    aget-object v0, v0, p1

    invoke-virtual {p0, v0}, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->indexOfKey(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_2

    not-int v0, v0

    iget-object v1, p0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->keys:[Ljava/lang/String;

    aget-object v1, v1, p1

    iget-object v3, p0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->values:[Ljava/lang/Object;

    aget-object v3, v3, p1

    invoke-direct {p0, v0, v1, v3}, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->insertAt(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    :cond_2
    if-eqz v5, :cond_3

    iget-object v1, p0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->keys:[Ljava/lang/String;

    aget-object v3, v1, p1

    aput-object v3, v1, v0

    iget-object v1, p0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->values:[Ljava/lang/Object;

    aget-object v3, v1, p1

    aput-object v3, v1, v0

    :cond_3
    :goto_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_4
    iget-object p1, p0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->keys:[Ljava/lang/String;

    iget v0, p0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->size:I

    const/4 v1, 0x0

    invoke-static {p1, v0, v2, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    iget-object p1, p0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->values:[Ljava/lang/Object;

    iget p0, p0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->size:I

    invoke-static {p1, p0, v2, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    return-void
.end method

.method private nullKeyIndex()I
    .locals 1

    iget v0, p0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->size:I

    if-lez v0, :cond_0

    iget-object p0, p0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->keys:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object p0, p0, v0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "s"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    instance-of v0, p1, Lorg/apache/logging/log4j/util/FilteredObjectInputStream;

    if-nez v0, :cond_1

    sget-object v0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->setObjectInputFilter:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "readObject requires a FilteredObjectInputStream or an ObjectInputStream that accepts an ObjectInputFilter"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    sget-object v0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->EMPTY:[Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->keys:[Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->values:[Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    if-ltz v0, :cond_6

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v1

    if-ltz v1, :cond_5

    if-lez v1, :cond_2

    invoke-direct {p0, v0}, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->inflateTable(I)V

    goto :goto_1

    :cond_2
    iput v0, p0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->threshold:I

    :goto_1
    const/4 v0, 0x0

    :goto_2
    if-ge v0, v1, :cond_4

    iget-object v2, p0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->keys:[Ljava/lang/String;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aput-object v3, v2, v0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    iget-object v4, p0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->values:[Ljava/lang/Object;

    if-nez v3, :cond_3

    move-object v3, v2

    goto :goto_3

    :cond_3
    invoke-static {v3, p1}, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->unmarshall([BLjava/io/ObjectInputStream;)Ljava/lang/Object;

    move-result-object v3

    :goto_3
    aput-object v3, v4, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v3

    iget-object v4, p0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->keys:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-direct {p0, v3, v0, v4}, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->handleSerializationException(Ljava/lang/Throwable;ILjava/lang/String;)V

    iget-object v3, p0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->values:[Ljava/lang/Object;

    aput-object v2, v3, v0

    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    iput v1, p0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->size:I

    return-void

    :cond_5
    new-instance p0, Ljava/io/InvalidObjectException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Illegal mappings count: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    new-instance p0, Ljava/io/InvalidObjectException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Illegal capacity: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private resize(I)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "newCapacity"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->keys:[Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->values:[Ljava/lang/Object;

    new-array v2, p1, [Ljava/lang/String;

    iput-object v2, p0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->keys:[Ljava/lang/String;

    new-array v3, p1, [Ljava/lang/Object;

    iput-object v3, p0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->values:[Ljava/lang/Object;

    iget v3, p0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->size:I

    const/4 v4, 0x0

    invoke-static {v0, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->values:[Ljava/lang/Object;

    iget v2, p0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->size:I

    invoke-static {v1, v4, v0, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput p1, p0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->threshold:I

    return-void
.end method

.method private static unmarshall([BLjava/io/ObjectInputStream;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "data",
            "inputStream"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    instance-of p0, p1, Lorg/apache/logging/log4j/util/FilteredObjectInputStream;

    if-eqz p0, :cond_0

    check-cast p1, Lorg/apache/logging/log4j/util/FilteredObjectInputStream;

    invoke-virtual {p1}, Lorg/apache/logging/log4j/util/FilteredObjectInputStream;->getAllowedClasses()Ljava/util/Collection;

    move-result-object p0

    new-instance p1, Lorg/apache/logging/log4j/util/FilteredObjectInputStream;

    invoke-direct {p1, v0, p0}, Lorg/apache/logging/log4j/util/FilteredObjectInputStream;-><init>(Ljava/io/InputStream;Ljava/util/Collection;)V

    goto :goto_0

    :cond_0
    :try_start_0
    sget-object p0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->getObjectInputFilter:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->newObjectInputFilter:Ljava/lang/reflect/Method;

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    new-instance p1, Ljava/io/ObjectInputStream;

    invoke-direct {p1, v0}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    sget-object v0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->setObjectInputFilter:Ljava/lang/reflect/Method;

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->close()V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->close()V

    throw p0

    :catch_0
    new-instance p0, Ljava/io/StreamCorruptedException;

    const-string p1, "Unable to set ObjectInputFilter on stream"

    invoke-direct {p0, p1}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "s"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    iget-object v0, p0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->keys:[Ljava/lang/String;

    sget-object v1, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->EMPTY:[Ljava/lang/String;

    if-ne v0, v1, :cond_0

    iget v0, p0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->threshold:I

    invoke-static {v0}, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->ceilingNextPowerOfTwo(I)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    goto :goto_0

    :cond_0
    array-length v0, v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    :goto_0
    iget v0, p0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->size:I

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    iget v0, p0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->size:I

    if-lez v0, :cond_1

    const/4 v0, 0x0

    :goto_1
    iget v1, p0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->size:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->keys:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    :try_start_0
    iget-object v1, p0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->values:[Ljava/lang/Object;

    aget-object v1, v1, v0

    invoke-static {v1}, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->marshall(Ljava/lang/Object;)[B

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->keys:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-direct {p0, v1, v0, v2}, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->handleSerializationException(Ljava/lang/Throwable;ILjava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 4

    iget-object v0, p0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->keys:[Ljava/lang/String;

    sget-object v1, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->EMPTY:[Ljava/lang/String;

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->assertNotFrozen()V

    invoke-direct {p0}, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->assertNoConcurrentModification()V

    iget-object v0, p0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->keys:[Ljava/lang/String;

    iget v1, p0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->size:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v2, v1, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    iget-object v0, p0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->values:[Ljava/lang/Object;

    iget v1, p0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->size:I

    invoke-static {v0, v2, v1, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    iput v2, p0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->size:I

    return-void
.end method

.method public containsKey(Ljava/lang/String;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "key"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->indexOfKey(Ljava/lang/String;)I

    move-result p0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "obj"
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/apache/logging/log4j/util/SortedArrayStringMap;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lorg/apache/logging/log4j/util/SortedArrayStringMap;

    invoke-virtual {p0}, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->size()I

    move-result v1

    invoke-virtual {p1}, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->size()I

    move-result v3

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    move v1, v2

    :goto_0
    invoke-virtual {p0}, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->size()I

    move-result v3

    if-ge v1, v3, :cond_5

    iget-object v3, p0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->keys:[Ljava/lang/String;

    aget-object v3, v3, v1

    iget-object v4, p1, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->keys:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    return v2

    :cond_3
    iget-object v3, p0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->values:[Ljava/lang/Object;

    aget-object v3, v3, v1

    iget-object v4, p1, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->values:[Ljava/lang/Object;

    aget-object v4, v4, v1

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    return v2

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    return v0
.end method

.method public forEach(Lorg/apache/logging/log4j/util/BiConsumer;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "action"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/logging/log4j/util/BiConsumer<",
            "Ljava/lang/String;",
            "-TV;>;)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->iterating:Z

    const/4 v0, 0x0

    move v1, v0

    .line 2
    :goto_0
    :try_start_0
    iget v2, p0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->size:I

    if-ge v1, v2, :cond_0

    .line 3
    iget-object v2, p0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->keys:[Ljava/lang/String;

    aget-object v2, v2, v1

    iget-object v3, p0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->values:[Ljava/lang/Object;

    aget-object v3, v3, v1

    invoke-interface {p1, v2, v3}, Lorg/apache/logging/log4j/util/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4
    :cond_0
    iput-boolean v0, p0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->iterating:Z

    return-void

    :catchall_0
    move-exception p1

    iput-boolean v0, p0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->iterating:Z

    throw p1
.end method

.method public forEach(Lorg/apache/logging/log4j/util/TriConsumer;Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "action",
            "state"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/logging/log4j/util/TriConsumer<",
            "Ljava/lang/String;",
            "-TV;TT;>;TT;)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->iterating:Z

    const/4 v0, 0x0

    move v1, v0

    .line 6
    :goto_0
    :try_start_0
    iget v2, p0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->size:I

    if-ge v1, v2, :cond_0

    .line 7
    iget-object v2, p0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->keys:[Ljava/lang/String;

    aget-object v2, v2, v1

    iget-object v3, p0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->values:[Ljava/lang/Object;

    aget-object v3, v3, v1

    invoke-interface {p1, v2, v3, p2}, Lorg/apache/logging/log4j/util/TriConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 8
    :cond_0
    iput-boolean v0, p0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->iterating:Z

    return-void

    :catchall_0
    move-exception p1

    iput-boolean v0, p0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->iterating:Z

    throw p1
.end method

.method public freeze()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->immutable:Z

    return-void
.end method

.method public getKeyAt(I)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "index"
        }
    .end annotation

    if-ltz p1, :cond_1

    iget v0, p0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->size:I

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->keys:[Ljava/lang/String;

    aget-object p0, p0, p1

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getValue(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "key"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TV;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->indexOfKey(Ljava/lang/String;)I

    move-result p1

    if-gez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->values:[Ljava/lang/Object;

    aget-object p0, p0, p1

    return-object p0
.end method

.method public getValueAt(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "index"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(I)TV;"
        }
    .end annotation

    if-ltz p1, :cond_1

    iget v0, p0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->size:I

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->values:[Ljava/lang/Object;

    aget-object p0, p0, p1

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget v0, p0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->size:I

    const/16 v1, 0x47b

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 2
    iget-object v2, p0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->keys:[Ljava/lang/String;

    invoke-static {v2, v0}, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->hashCode([Ljava/lang/Object;I)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 3
    iget-object v0, p0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->values:[Ljava/lang/Object;

    iget p0, p0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->size:I

    invoke-static {v0, p0}, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->hashCode([Ljava/lang/Object;I)I

    move-result p0

    add-int/2addr v1, p0

    return v1
.end method

.method public indexOfKey(Ljava/lang/String;)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "key"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->keys:[Ljava/lang/String;

    sget-object v1, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->EMPTY:[Ljava/lang/String;

    if-ne v0, v1, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    if-nez p1, :cond_1

    invoke-direct {p0}, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->nullKeyIndex()I

    move-result p0

    return p0

    :cond_1
    iget p0, p0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->size:I

    const/4 v1, 0x0

    if-lez p0, :cond_2

    aget-object v2, v0, v1

    if-nez v2, :cond_2

    const/4 v1, 0x1

    :cond_2
    invoke-static {v0, v1, p0, p1}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;IILjava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public isEmpty()Z
    .locals 0

    iget p0, p0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->size:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isFrozen()Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->immutable:Z

    return p0
.end method

.method public putAll(Lorg/apache/logging/log4j/util/ReadOnlyStringMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "source"
        }
    .end annotation

    if-eq p1, p0, :cond_3

    if-eqz p1, :cond_3

    invoke-interface {p1}, Lorg/apache/logging/log4j/util/ReadOnlyStringMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->assertNotFrozen()V

    invoke-direct {p0}, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->assertNoConcurrentModification()V

    instance-of v0, p1, Lorg/apache/logging/log4j/util/SortedArrayStringMap;

    if-eqz v0, :cond_2

    iget v0, p0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->size:I

    if-nez v0, :cond_1

    check-cast p1, Lorg/apache/logging/log4j/util/SortedArrayStringMap;

    invoke-direct {p0, p1}, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->initFrom0(Lorg/apache/logging/log4j/util/SortedArrayStringMap;)V

    goto :goto_0

    :cond_1
    check-cast p1, Lorg/apache/logging/log4j/util/SortedArrayStringMap;

    invoke-direct {p0, p1}, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->merge(Lorg/apache/logging/log4j/util/SortedArrayStringMap;)V

    goto :goto_0

    :cond_2
    sget-object v0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->PUT_ALL:Lorg/apache/logging/log4j/util/TriConsumer;

    invoke-interface {p1, v0, p0}, Lorg/apache/logging/log4j/util/ReadOnlyStringMap;->forEach(Lorg/apache/logging/log4j/util/TriConsumer;Ljava/lang/Object;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public putValue(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "key",
            "value"
        }
    .end annotation

    invoke-direct {p0}, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->assertNotFrozen()V

    invoke-direct {p0}, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->assertNoConcurrentModification()V

    iget-object v0, p0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->keys:[Ljava/lang/String;

    sget-object v1, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->EMPTY:[Ljava/lang/String;

    if-ne v0, v1, :cond_0

    iget v0, p0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->threshold:I

    invoke-direct {p0, v0}, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->inflateTable(I)V

    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->indexOfKey(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_1

    iget-object v1, p0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->keys:[Ljava/lang/String;

    aput-object p1, v1, v0

    iget-object p0, p0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->values:[Ljava/lang/Object;

    aput-object p2, p0, v0

    goto :goto_0

    :cond_1
    not-int v0, v0

    invoke-direct {p0, v0, p1, p2}, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->insertAt(ILjava/lang/String;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public remove(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "key"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->keys:[Ljava/lang/String;

    sget-object v1, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->EMPTY:[Ljava/lang/String;

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->indexOfKey(Ljava/lang/String;)I

    move-result p1

    if-ltz p1, :cond_1

    invoke-direct {p0}, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->assertNotFrozen()V

    invoke-direct {p0}, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->assertNoConcurrentModification()V

    iget-object v0, p0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->keys:[Ljava/lang/String;

    add-int/lit8 v1, p1, 0x1

    iget v2, p0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->size:I

    add-int/lit8 v2, v2, -0x1

    sub-int/2addr v2, p1

    invoke-static {v0, v1, v0, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->values:[Ljava/lang/Object;

    iget v2, p0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->size:I

    add-int/lit8 v2, v2, -0x1

    sub-int/2addr v2, p1

    invoke-static {v0, v1, v0, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->keys:[Ljava/lang/String;

    iget v0, p0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->size:I

    add-int/lit8 v1, v0, -0x1

    const/4 v2, 0x0

    aput-object v2, p1, v1

    iget-object p1, p0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->values:[Ljava/lang/Object;

    add-int/lit8 v1, v0, -0x1

    aput-object v2, p1, v1

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->size:I

    :cond_1
    return-void
.end method

.method public size()I
    .locals 0

    iget p0, p0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->size:I

    return p0
.end method

.method public toMap()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-virtual {p0}, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->getValueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v1}, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->getKeyAt(I)Ljava/lang/String;

    move-result-object v3

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_1

    :cond_0
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->size:I

    if-ge v1, v2, :cond_2

    if-lez v1, :cond_0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v2, p0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->keys:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x3d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->values:[Ljava/lang/Object;

    aget-object v2, v2, v1

    if-ne v2, p0, :cond_1

    const-string v2, "(this map)"

    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
