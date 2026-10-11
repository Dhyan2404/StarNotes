.class public final Ljdk/internal/misc/NeoUnsafe;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ADDRESS_SIZE:I = 0x0

.field public static final ARRAY_BOOLEAN_BASE_OFFSET:I

.field public static final ARRAY_BOOLEAN_INDEX_SCALE:I

.field public static final ARRAY_BYTE_BASE_OFFSET:I

.field public static final ARRAY_BYTE_INDEX_SCALE:I

.field public static final ARRAY_CHAR_BASE_OFFSET:I

.field public static final ARRAY_CHAR_INDEX_SCALE:I

.field public static final ARRAY_DOUBLE_BASE_OFFSET:I

.field public static final ARRAY_DOUBLE_INDEX_SCALE:I

.field public static final ARRAY_FLOAT_BASE_OFFSET:I

.field public static final ARRAY_FLOAT_INDEX_SCALE:I

.field public static final ARRAY_INT_BASE_OFFSET:I

.field public static final ARRAY_INT_INDEX_SCALE:I

.field public static final ARRAY_LONG_BASE_OFFSET:I

.field public static final ARRAY_LONG_INDEX_SCALE:I

.field public static final ARRAY_OBJECT_BASE_OFFSET:I

.field public static final ARRAY_OBJECT_INDEX_SCALE:I

.field public static final ARRAY_SHORT_BASE_OFFSET:I

.field public static final ARRAY_SHORT_INDEX_SCALE:I

.field public static final INVALID_FIELD_OFFSET:I = -0x1

.field private static final theUnsafe:Ljdk/internal/misc/NeoUnsafe;


# direct methods
.method public static constructor <clinit>()V
    .locals 11

    invoke-static {}, Ljdk/internal/misc/NeoUnsafe;->registerNatives()V

    new-instance v0, Ljdk/internal/misc/NeoUnsafe;

    invoke-direct {v0}, Ljdk/internal/misc/NeoUnsafe;-><init>()V

    sput-object v0, Ljdk/internal/misc/NeoUnsafe;->theUnsafe:Ljdk/internal/misc/NeoUnsafe;

    const-class v1, [Z

    invoke-virtual {v0, v1}, Ljdk/internal/misc/NeoUnsafe;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result v2

    sput v2, Ljdk/internal/misc/NeoUnsafe;->ARRAY_BOOLEAN_BASE_OFFSET:I

    const-class v2, [B

    invoke-virtual {v0, v2}, Ljdk/internal/misc/NeoUnsafe;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result v3

    sput v3, Ljdk/internal/misc/NeoUnsafe;->ARRAY_BYTE_BASE_OFFSET:I

    const-class v3, [S

    invoke-virtual {v0, v3}, Ljdk/internal/misc/NeoUnsafe;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result v4

    sput v4, Ljdk/internal/misc/NeoUnsafe;->ARRAY_SHORT_BASE_OFFSET:I

    const-class v4, [C

    invoke-virtual {v0, v4}, Ljdk/internal/misc/NeoUnsafe;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result v5

    sput v5, Ljdk/internal/misc/NeoUnsafe;->ARRAY_CHAR_BASE_OFFSET:I

    const-class v5, [I

    invoke-virtual {v0, v5}, Ljdk/internal/misc/NeoUnsafe;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result v6

    sput v6, Ljdk/internal/misc/NeoUnsafe;->ARRAY_INT_BASE_OFFSET:I

    const-class v6, [J

    invoke-virtual {v0, v6}, Ljdk/internal/misc/NeoUnsafe;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result v7

    sput v7, Ljdk/internal/misc/NeoUnsafe;->ARRAY_LONG_BASE_OFFSET:I

    const-class v7, [F

    invoke-virtual {v0, v7}, Ljdk/internal/misc/NeoUnsafe;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result v8

    sput v8, Ljdk/internal/misc/NeoUnsafe;->ARRAY_FLOAT_BASE_OFFSET:I

    const-class v8, [D

    invoke-virtual {v0, v8}, Ljdk/internal/misc/NeoUnsafe;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result v9

    sput v9, Ljdk/internal/misc/NeoUnsafe;->ARRAY_DOUBLE_BASE_OFFSET:I

    const-class v9, [Ljava/lang/Object;

    invoke-virtual {v0, v9}, Ljdk/internal/misc/NeoUnsafe;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result v10

    sput v10, Ljdk/internal/misc/NeoUnsafe;->ARRAY_OBJECT_BASE_OFFSET:I

    invoke-virtual {v0, v1}, Ljdk/internal/misc/NeoUnsafe;->arrayIndexScale(Ljava/lang/Class;)I

    move-result v1

    sput v1, Ljdk/internal/misc/NeoUnsafe;->ARRAY_BOOLEAN_INDEX_SCALE:I

    invoke-virtual {v0, v2}, Ljdk/internal/misc/NeoUnsafe;->arrayIndexScale(Ljava/lang/Class;)I

    move-result v1

    sput v1, Ljdk/internal/misc/NeoUnsafe;->ARRAY_BYTE_INDEX_SCALE:I

    invoke-virtual {v0, v3}, Ljdk/internal/misc/NeoUnsafe;->arrayIndexScale(Ljava/lang/Class;)I

    move-result v1

    sput v1, Ljdk/internal/misc/NeoUnsafe;->ARRAY_SHORT_INDEX_SCALE:I

    invoke-virtual {v0, v4}, Ljdk/internal/misc/NeoUnsafe;->arrayIndexScale(Ljava/lang/Class;)I

    move-result v1

    sput v1, Ljdk/internal/misc/NeoUnsafe;->ARRAY_CHAR_INDEX_SCALE:I

    invoke-virtual {v0, v5}, Ljdk/internal/misc/NeoUnsafe;->arrayIndexScale(Ljava/lang/Class;)I

    move-result v1

    sput v1, Ljdk/internal/misc/NeoUnsafe;->ARRAY_INT_INDEX_SCALE:I

    invoke-virtual {v0, v6}, Ljdk/internal/misc/NeoUnsafe;->arrayIndexScale(Ljava/lang/Class;)I

    move-result v1

    sput v1, Ljdk/internal/misc/NeoUnsafe;->ARRAY_LONG_INDEX_SCALE:I

    invoke-virtual {v0, v7}, Ljdk/internal/misc/NeoUnsafe;->arrayIndexScale(Ljava/lang/Class;)I

    move-result v1

    sput v1, Ljdk/internal/misc/NeoUnsafe;->ARRAY_FLOAT_INDEX_SCALE:I

    invoke-virtual {v0, v8}, Ljdk/internal/misc/NeoUnsafe;->arrayIndexScale(Ljava/lang/Class;)I

    move-result v1

    sput v1, Ljdk/internal/misc/NeoUnsafe;->ARRAY_DOUBLE_INDEX_SCALE:I

    invoke-virtual {v0, v9}, Ljdk/internal/misc/NeoUnsafe;->arrayIndexScale(Ljava/lang/Class;)I

    move-result v0

    sput v0, Ljdk/internal/misc/NeoUnsafe;->ARRAY_OBJECT_INDEX_SCALE:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private alignToHeapWordSize(J)J
    .locals 4

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    add-long/2addr p1, v0

    const-wide/16 v2, 0x1

    sub-long/2addr p1, v2

    and-long p0, p1, v0

    return-wide p0

    :cond_0
    invoke-direct {p0}, Ljdk/internal/misc/NeoUnsafe;->invalidInput()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method private allocateMemory0(J)J
    .locals 0

    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method private allocateMemoryChecks(J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljdk/internal/misc/NeoUnsafe;->checkSize(J)V

    return-void
.end method

.method private allocateUninitializedArray0(Ljava/lang/Class;I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;I)",
            "Ljava/lang/Object;"
        }
    .end annotation

    sget-object p0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p1, p0, :cond_0

    new-array p0, p2, [B

    return-object p0

    :cond_0
    sget-object p0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p1, p0, :cond_1

    new-array p0, p2, [Z

    return-object p0

    :cond_1
    sget-object p0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p1, p0, :cond_2

    new-array p0, p2, [S

    return-object p0

    :cond_2
    sget-object p0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p1, p0, :cond_3

    new-array p0, p2, [C

    return-object p0

    :cond_3
    sget-object p0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p1, p0, :cond_4

    new-array p0, p2, [I

    return-object p0

    :cond_4
    sget-object p0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p1, p0, :cond_5

    new-array p0, p2, [F

    return-object p0

    :cond_5
    sget-object p0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p1, p0, :cond_6

    new-array p0, p2, [J

    return-object p0

    :cond_6
    sget-object p0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p1, p0, :cond_7

    new-array p0, p2, [D

    return-object p0

    :cond_7
    const/4 p0, 0x0

    return-object p0
.end method

.method private arrayBaseOffset0(Ljava/lang/Class;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)I"
        }
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method private arrayIndexScale0(Ljava/lang/Class;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)I"
        }
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method private bool2byte(Z)B
    .locals 0

    return p1
.end method

.method private byte2bool(B)Z
    .locals 0

    if-eqz p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private c2s(C)S
    .locals 0

    int-to-short p0, p1

    return p0
.end method

.method private checkNativeAddress(J)V
    .locals 0

    return-void
.end method

.method private checkOffset(Ljava/lang/Object;J)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long p1, p2, v0

    if-ltz p1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Ljdk/internal/misc/NeoUnsafe;->invalidInput()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method private checkPointer(Ljava/lang/Object;J)V
    .locals 0

    if-nez p1, :cond_0

    invoke-direct {p0, p2, p3}, Ljdk/internal/misc/NeoUnsafe;->checkNativeAddress(J)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Ljdk/internal/misc/NeoUnsafe;->checkOffset(Ljava/lang/Object;J)V

    :goto_0
    return-void
.end method

.method private checkPrimitiveArray(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Ljdk/internal/misc/NeoUnsafe;->invalidInput()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method private checkPrimitivePointer(Ljava/lang/Object;J)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Ljdk/internal/misc/NeoUnsafe;->checkPointer(Ljava/lang/Object;J)V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-direct {p0, p1}, Ljdk/internal/misc/NeoUnsafe;->checkPrimitiveArray(Ljava/lang/Class;)V

    :cond_0
    return-void
.end method

.method private checkSize(J)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-ltz p1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Ljdk/internal/misc/NeoUnsafe;->invalidInput()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method private checkWritebackEnabled()V
    .locals 1

    invoke-static {}, Ljdk/internal/misc/NeoUnsafe;->isWritebackEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "writebackMemory not enabled!"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private checkWritebackMemory(JJ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljdk/internal/misc/NeoUnsafe;->checkNativeAddress(J)V

    invoke-direct {p0, p3, p4}, Ljdk/internal/misc/NeoUnsafe;->checkSize(J)V

    return-void
.end method

.method private static convEndian(ZC)C
    .locals 0

    if-nez p0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-static {p1}, Ljava/lang/Character;->reverseBytes(C)C

    move-result p1

    :goto_0
    return p1
.end method

.method private static convEndian(ZI)I
    .locals 0

    if-nez p0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result p1

    :goto_0
    return p1
.end method

.method private static convEndian(ZJ)J
    .locals 0

    if-nez p0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Long;->reverseBytes(J)J

    move-result-wide p1

    :goto_0
    return-wide p1
.end method

.method private static convEndian(ZS)S
    .locals 0

    if-nez p0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {p1}, Ljava/lang/Short;->reverseBytes(S)S

    move-result p1

    :goto_0
    return p1
.end method

.method private copyMemory0(Ljava/lang/Object;JLjava/lang/Object;JJ)V
    .locals 0

    return-void
.end method

.method private copyMemoryChecks(Ljava/lang/Object;JLjava/lang/Object;JJ)V
    .locals 0

    invoke-direct {p0, p7, p8}, Ljdk/internal/misc/NeoUnsafe;->checkSize(J)V

    invoke-direct {p0, p1, p2, p3}, Ljdk/internal/misc/NeoUnsafe;->checkPrimitivePointer(Ljava/lang/Object;J)V

    invoke-direct {p0, p4, p5, p6}, Ljdk/internal/misc/NeoUnsafe;->checkPrimitivePointer(Ljava/lang/Object;J)V

    return-void
.end method

.method private copySwapMemory0(Ljava/lang/Object;JLjava/lang/Object;JJJ)V
    .locals 0

    return-void
.end method

.method private copySwapMemoryChecks(Ljava/lang/Object;JLjava/lang/Object;JJJ)V
    .locals 2

    invoke-direct {p0, p7, p8}, Ljdk/internal/misc/NeoUnsafe;->checkSize(J)V

    const-wide/16 v0, 0x2

    cmp-long v0, p9, v0

    if-eqz v0, :cond_1

    const-wide/16 v0, 0x4

    cmp-long v0, p9, v0

    if-eqz v0, :cond_1

    const-wide/16 v0, 0x8

    cmp-long v0, p9, v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Ljdk/internal/misc/NeoUnsafe;->invalidInput()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_1
    :goto_0
    rem-long/2addr p7, p9

    const-wide/16 p9, 0x0

    cmp-long p7, p7, p9

    if-nez p7, :cond_2

    invoke-direct {p0, p1, p2, p3}, Ljdk/internal/misc/NeoUnsafe;->checkPrimitivePointer(Ljava/lang/Object;J)V

    invoke-direct {p0, p4, p5, p6}, Ljdk/internal/misc/NeoUnsafe;->checkPrimitivePointer(Ljava/lang/Object;J)V

    return-void

    :cond_2
    invoke-direct {p0}, Ljdk/internal/misc/NeoUnsafe;->invalidInput()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method private defineAnonymousClass0(Ljava/lang/Class;[B[Ljava/lang/Object;)Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;[B[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method private ensureClassInitialized0(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method

.method private freeMemory0(J)V
    .locals 0

    return-void
.end method

.method private freeMemoryChecks(J)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Ljdk/internal/misc/NeoUnsafe;->checkPointer(Ljava/lang/Object;J)V

    return-void
.end method

.method private getLoadAverage0([DI)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public static getUnsafe()Ljdk/internal/misc/NeoUnsafe;
    .locals 1

    sget-object v0, Ljdk/internal/misc/NeoUnsafe;->theUnsafe:Ljdk/internal/misc/NeoUnsafe;

    return-object v0
.end method

.method private invalidInput()Ljava/lang/RuntimeException;
    .locals 0

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    return-object p0
.end method

.method private is32BitClean(J)Z
    .locals 2

    const/16 p0, 0x20

    ushr-long p0, p1, p0

    const-wide/16 v0, 0x0

    cmp-long p0, p0, v0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isWritebackEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static makeInt(BBBB)I
    .locals 2

    .line 3
    invoke-static {p0}, Ljdk/internal/misc/NeoUnsafe;->toUnsignedInt(B)I

    move-result p0

    const/4 v0, 0x0

    const/16 v1, 0x18

    invoke-static {v1, v0}, Ljdk/internal/misc/NeoUnsafe;->pickPos(II)I

    move-result v0

    shl-int/2addr p0, v0

    .line 4
    invoke-static {p1}, Ljdk/internal/misc/NeoUnsafe;->toUnsignedInt(B)I

    move-result p1

    const/16 v0, 0x8

    invoke-static {v1, v0}, Ljdk/internal/misc/NeoUnsafe;->pickPos(II)I

    move-result v0

    shl-int/2addr p1, v0

    or-int/2addr p0, p1

    .line 5
    invoke-static {p2}, Ljdk/internal/misc/NeoUnsafe;->toUnsignedInt(B)I

    move-result p1

    const/16 p2, 0x10

    invoke-static {v1, p2}, Ljdk/internal/misc/NeoUnsafe;->pickPos(II)I

    move-result p2

    shl-int/2addr p1, p2

    or-int/2addr p0, p1

    .line 6
    invoke-static {p3}, Ljdk/internal/misc/NeoUnsafe;->toUnsignedInt(B)I

    move-result p1

    invoke-static {v1, v1}, Ljdk/internal/misc/NeoUnsafe;->pickPos(II)I

    move-result p2

    shl-int/2addr p1, p2

    or-int/2addr p0, p1

    return p0
.end method

.method private static makeInt(SS)I
    .locals 2

    .line 1
    invoke-static {p0}, Ljdk/internal/misc/NeoUnsafe;->toUnsignedInt(S)I

    move-result p0

    const/4 v0, 0x0

    const/16 v1, 0x10

    invoke-static {v1, v0}, Ljdk/internal/misc/NeoUnsafe;->pickPos(II)I

    move-result v0

    shl-int/2addr p0, v0

    .line 2
    invoke-static {p1}, Ljdk/internal/misc/NeoUnsafe;->toUnsignedInt(S)I

    move-result p1

    invoke-static {v1, v1}, Ljdk/internal/misc/NeoUnsafe;->pickPos(II)I

    move-result v0

    shl-int/2addr p1, v0

    or-int/2addr p0, p1

    return p0
.end method

.method private static makeLong(BBBBBBBB)J
    .locals 4

    .line 1
    invoke-static {p0}, Ljdk/internal/misc/NeoUnsafe;->toUnsignedLong(B)J

    move-result-wide v0

    const/4 p0, 0x0

    const/16 v2, 0x38

    invoke-static {v2, p0}, Ljdk/internal/misc/NeoUnsafe;->pickPos(II)I

    move-result p0

    shl-long/2addr v0, p0

    .line 2
    invoke-static {p1}, Ljdk/internal/misc/NeoUnsafe;->toUnsignedLong(B)J

    move-result-wide p0

    const/16 v3, 0x8

    invoke-static {v2, v3}, Ljdk/internal/misc/NeoUnsafe;->pickPos(II)I

    move-result v3

    shl-long/2addr p0, v3

    or-long/2addr p0, v0

    .line 3
    invoke-static {p2}, Ljdk/internal/misc/NeoUnsafe;->toUnsignedLong(B)J

    move-result-wide v0

    const/16 p2, 0x10

    invoke-static {v2, p2}, Ljdk/internal/misc/NeoUnsafe;->pickPos(II)I

    move-result p2

    shl-long/2addr v0, p2

    or-long/2addr p0, v0

    .line 4
    invoke-static {p3}, Ljdk/internal/misc/NeoUnsafe;->toUnsignedLong(B)J

    move-result-wide p2

    const/16 v0, 0x18

    invoke-static {v2, v0}, Ljdk/internal/misc/NeoUnsafe;->pickPos(II)I

    move-result v0

    shl-long/2addr p2, v0

    or-long/2addr p0, p2

    .line 5
    invoke-static {p4}, Ljdk/internal/misc/NeoUnsafe;->toUnsignedLong(B)J

    move-result-wide p2

    const/16 p4, 0x20

    invoke-static {v2, p4}, Ljdk/internal/misc/NeoUnsafe;->pickPos(II)I

    move-result p4

    shl-long/2addr p2, p4

    or-long/2addr p0, p2

    .line 6
    invoke-static {p5}, Ljdk/internal/misc/NeoUnsafe;->toUnsignedLong(B)J

    move-result-wide p2

    const/16 p4, 0x28

    invoke-static {v2, p4}, Ljdk/internal/misc/NeoUnsafe;->pickPos(II)I

    move-result p4

    shl-long/2addr p2, p4

    or-long/2addr p0, p2

    .line 7
    invoke-static {p6}, Ljdk/internal/misc/NeoUnsafe;->toUnsignedLong(B)J

    move-result-wide p2

    const/16 p4, 0x30

    invoke-static {v2, p4}, Ljdk/internal/misc/NeoUnsafe;->pickPos(II)I

    move-result p4

    shl-long/2addr p2, p4

    or-long/2addr p0, p2

    .line 8
    invoke-static {p7}, Ljdk/internal/misc/NeoUnsafe;->toUnsignedLong(B)J

    move-result-wide p2

    invoke-static {v2, v2}, Ljdk/internal/misc/NeoUnsafe;->pickPos(II)I

    move-result p4

    shl-long/2addr p2, p4

    or-long/2addr p0, p2

    return-wide p0
.end method

.method private static makeLong(II)J
    .locals 3

    .line 13
    invoke-static {p0}, Ljdk/internal/misc/NeoUnsafe;->toUnsignedLong(I)J

    move-result-wide v0

    const/4 p0, 0x0

    const/16 v2, 0x20

    invoke-static {v2, p0}, Ljdk/internal/misc/NeoUnsafe;->pickPos(II)I

    move-result p0

    shl-long/2addr v0, p0

    .line 14
    invoke-static {p1}, Ljdk/internal/misc/NeoUnsafe;->toUnsignedLong(I)J

    move-result-wide p0

    invoke-static {v2, v2}, Ljdk/internal/misc/NeoUnsafe;->pickPos(II)I

    move-result v2

    shl-long/2addr p0, v2

    or-long/2addr p0, v0

    return-wide p0
.end method

.method private static makeLong(SSSS)J
    .locals 4

    .line 9
    invoke-static {p0}, Ljdk/internal/misc/NeoUnsafe;->toUnsignedLong(S)J

    move-result-wide v0

    const/4 p0, 0x0

    const/16 v2, 0x30

    invoke-static {v2, p0}, Ljdk/internal/misc/NeoUnsafe;->pickPos(II)I

    move-result p0

    shl-long/2addr v0, p0

    .line 10
    invoke-static {p1}, Ljdk/internal/misc/NeoUnsafe;->toUnsignedLong(S)J

    move-result-wide p0

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljdk/internal/misc/NeoUnsafe;->pickPos(II)I

    move-result v3

    shl-long/2addr p0, v3

    or-long/2addr p0, v0

    .line 11
    invoke-static {p2}, Ljdk/internal/misc/NeoUnsafe;->toUnsignedLong(S)J

    move-result-wide v0

    const/16 p2, 0x20

    invoke-static {v2, p2}, Ljdk/internal/misc/NeoUnsafe;->pickPos(II)I

    move-result p2

    shl-long/2addr v0, p2

    or-long/2addr p0, v0

    .line 12
    invoke-static {p3}, Ljdk/internal/misc/NeoUnsafe;->toUnsignedLong(S)J

    move-result-wide p2

    invoke-static {v2, v2}, Ljdk/internal/misc/NeoUnsafe;->pickPos(II)I

    move-result v0

    shl-long/2addr p2, v0

    or-long/2addr p0, p2

    return-wide p0
.end method

.method private static makeShort(BB)S
    .locals 2

    invoke-static {p0}, Ljdk/internal/misc/NeoUnsafe;->toUnsignedInt(B)I

    move-result p0

    const/4 v0, 0x0

    const/16 v1, 0x8

    invoke-static {v1, v0}, Ljdk/internal/misc/NeoUnsafe;->pickPos(II)I

    move-result v0

    shl-int/2addr p0, v0

    invoke-static {p1}, Ljdk/internal/misc/NeoUnsafe;->toUnsignedInt(B)I

    move-result p1

    invoke-static {v1, v1}, Ljdk/internal/misc/NeoUnsafe;->pickPos(II)I

    move-result v0

    shl-int/2addr p1, v0

    or-int/2addr p0, p1

    int-to-short p0, p0

    return p0
.end method

.method private objectFieldOffset0(Ljava/lang/reflect/Field;)J
    .locals 0

    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method private objectFieldOffset1(Ljava/lang/Class;Ljava/lang/String;)J
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")J"
        }
    .end annotation

    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method private static pick(BB)B
    .locals 0

    .line 1
    return p0
.end method

.method private static pick(II)I
    .locals 0

    .line 2
    return p0
.end method

.method private static pick(SS)S
    .locals 0

    .line 3
    return p0
.end method

.method private static pickPos(II)I
    .locals 0

    return p1
.end method

.method private putIntParts(Ljava/lang/Object;JBBBB)V
    .locals 3

    const-wide/16 v0, 0x0

    add-long/2addr v0, p2

    .line 3
    invoke-static {p4, p7}, Ljdk/internal/misc/NeoUnsafe;->pick(BB)B

    move-result v2

    invoke-virtual {p0, p1, v0, v1, v2}, Ljdk/internal/misc/NeoUnsafe;->putByte(Ljava/lang/Object;JB)V

    const-wide/16 v0, 0x1

    add-long/2addr v0, p2

    .line 4
    invoke-static {p5, p6}, Ljdk/internal/misc/NeoUnsafe;->pick(BB)B

    move-result v2

    invoke-virtual {p0, p1, v0, v1, v2}, Ljdk/internal/misc/NeoUnsafe;->putByte(Ljava/lang/Object;JB)V

    const-wide/16 v0, 0x2

    add-long/2addr v0, p2

    .line 5
    invoke-static {p6, p5}, Ljdk/internal/misc/NeoUnsafe;->pick(BB)B

    move-result p5

    invoke-virtual {p0, p1, v0, v1, p5}, Ljdk/internal/misc/NeoUnsafe;->putByte(Ljava/lang/Object;JB)V

    const-wide/16 p5, 0x3

    add-long/2addr p2, p5

    .line 6
    invoke-static {p7, p4}, Ljdk/internal/misc/NeoUnsafe;->pick(BB)B

    move-result p4

    invoke-virtual {p0, p1, p2, p3, p4}, Ljdk/internal/misc/NeoUnsafe;->putByte(Ljava/lang/Object;JB)V

    return-void
.end method

.method private putIntParts(Ljava/lang/Object;JSS)V
    .locals 3

    const-wide/16 v0, 0x0

    add-long/2addr v0, p2

    .line 1
    invoke-static {p4, p5}, Ljdk/internal/misc/NeoUnsafe;->pick(SS)S

    move-result v2

    invoke-virtual {p0, p1, v0, v1, v2}, Ljdk/internal/misc/NeoUnsafe;->putShort(Ljava/lang/Object;JS)V

    const-wide/16 v0, 0x2

    add-long/2addr p2, v0

    .line 2
    invoke-static {p5, p4}, Ljdk/internal/misc/NeoUnsafe;->pick(SS)S

    move-result p4

    invoke-virtual {p0, p1, p2, p3, p4}, Ljdk/internal/misc/NeoUnsafe;->putShort(Ljava/lang/Object;JS)V

    return-void
.end method

.method private putLongParts(Ljava/lang/Object;JBBBBBBBB)V
    .locals 3

    const-wide/16 v0, 0x0

    add-long/2addr v0, p2

    .line 1
    invoke-static {p4, p11}, Ljdk/internal/misc/NeoUnsafe;->pick(BB)B

    move-result v2

    invoke-virtual {p0, p1, v0, v1, v2}, Ljdk/internal/misc/NeoUnsafe;->putByte(Ljava/lang/Object;JB)V

    const-wide/16 v0, 0x1

    add-long/2addr v0, p2

    .line 2
    invoke-static {p5, p10}, Ljdk/internal/misc/NeoUnsafe;->pick(BB)B

    move-result v2

    invoke-virtual {p0, p1, v0, v1, v2}, Ljdk/internal/misc/NeoUnsafe;->putByte(Ljava/lang/Object;JB)V

    const-wide/16 v0, 0x2

    add-long/2addr v0, p2

    .line 3
    invoke-static {p6, p9}, Ljdk/internal/misc/NeoUnsafe;->pick(BB)B

    move-result v2

    invoke-virtual {p0, p1, v0, v1, v2}, Ljdk/internal/misc/NeoUnsafe;->putByte(Ljava/lang/Object;JB)V

    const-wide/16 v0, 0x3

    add-long/2addr v0, p2

    .line 4
    invoke-static {p7, p8}, Ljdk/internal/misc/NeoUnsafe;->pick(BB)B

    move-result v2

    invoke-virtual {p0, p1, v0, v1, v2}, Ljdk/internal/misc/NeoUnsafe;->putByte(Ljava/lang/Object;JB)V

    const-wide/16 v0, 0x4

    add-long/2addr v0, p2

    .line 5
    invoke-static {p8, p7}, Ljdk/internal/misc/NeoUnsafe;->pick(BB)B

    move-result p7

    invoke-virtual {p0, p1, v0, v1, p7}, Ljdk/internal/misc/NeoUnsafe;->putByte(Ljava/lang/Object;JB)V

    const-wide/16 p7, 0x5

    add-long/2addr p7, p2

    .line 6
    invoke-static {p9, p6}, Ljdk/internal/misc/NeoUnsafe;->pick(BB)B

    move-result p6

    invoke-virtual {p0, p1, p7, p8, p6}, Ljdk/internal/misc/NeoUnsafe;->putByte(Ljava/lang/Object;JB)V

    const-wide/16 p6, 0x6

    add-long/2addr p6, p2

    .line 7
    invoke-static {p10, p5}, Ljdk/internal/misc/NeoUnsafe;->pick(BB)B

    move-result p5

    invoke-virtual {p0, p1, p6, p7, p5}, Ljdk/internal/misc/NeoUnsafe;->putByte(Ljava/lang/Object;JB)V

    const-wide/16 p5, 0x7

    add-long/2addr p2, p5

    .line 8
    invoke-static {p11, p4}, Ljdk/internal/misc/NeoUnsafe;->pick(BB)B

    move-result p4

    invoke-virtual {p0, p1, p2, p3, p4}, Ljdk/internal/misc/NeoUnsafe;->putByte(Ljava/lang/Object;JB)V

    return-void
.end method

.method private putLongParts(Ljava/lang/Object;JII)V
    .locals 3

    const-wide/16 v0, 0x0

    add-long/2addr v0, p2

    .line 13
    invoke-static {p4, p5}, Ljdk/internal/misc/NeoUnsafe;->pick(II)I

    move-result v2

    invoke-virtual {p0, p1, v0, v1, v2}, Ljdk/internal/misc/NeoUnsafe;->putInt(Ljava/lang/Object;JI)V

    const-wide/16 v0, 0x4

    add-long/2addr p2, v0

    .line 14
    invoke-static {p5, p4}, Ljdk/internal/misc/NeoUnsafe;->pick(II)I

    move-result p4

    invoke-virtual {p0, p1, p2, p3, p4}, Ljdk/internal/misc/NeoUnsafe;->putInt(Ljava/lang/Object;JI)V

    return-void
.end method

.method private putLongParts(Ljava/lang/Object;JSSSS)V
    .locals 3

    const-wide/16 v0, 0x0

    add-long/2addr v0, p2

    .line 9
    invoke-static {p4, p7}, Ljdk/internal/misc/NeoUnsafe;->pick(SS)S

    move-result v2

    invoke-virtual {p0, p1, v0, v1, v2}, Ljdk/internal/misc/NeoUnsafe;->putShort(Ljava/lang/Object;JS)V

    const-wide/16 v0, 0x2

    add-long/2addr v0, p2

    .line 10
    invoke-static {p5, p6}, Ljdk/internal/misc/NeoUnsafe;->pick(SS)S

    move-result v2

    invoke-virtual {p0, p1, v0, v1, v2}, Ljdk/internal/misc/NeoUnsafe;->putShort(Ljava/lang/Object;JS)V

    const-wide/16 v0, 0x4

    add-long/2addr v0, p2

    .line 11
    invoke-static {p6, p5}, Ljdk/internal/misc/NeoUnsafe;->pick(SS)S

    move-result p5

    invoke-virtual {p0, p1, v0, v1, p5}, Ljdk/internal/misc/NeoUnsafe;->putShort(Ljava/lang/Object;JS)V

    const-wide/16 p5, 0x6

    add-long/2addr p2, p5

    .line 12
    invoke-static {p7, p4}, Ljdk/internal/misc/NeoUnsafe;->pick(SS)S

    move-result p4

    invoke-virtual {p0, p1, p2, p3, p4}, Ljdk/internal/misc/NeoUnsafe;->putShort(Ljava/lang/Object;JS)V

    return-void
.end method

.method private putShortParts(Ljava/lang/Object;JBB)V
    .locals 3

    const-wide/16 v0, 0x0

    add-long/2addr v0, p2

    invoke-static {p4, p5}, Ljdk/internal/misc/NeoUnsafe;->pick(BB)B

    move-result v2

    invoke-virtual {p0, p1, v0, v1, v2}, Ljdk/internal/misc/NeoUnsafe;->putByte(Ljava/lang/Object;JB)V

    const-wide/16 v0, 0x1

    add-long/2addr p2, v0

    invoke-static {p5, p4}, Ljdk/internal/misc/NeoUnsafe;->pick(BB)B

    move-result p4

    invoke-virtual {p0, p1, p2, p3, p4}, Ljdk/internal/misc/NeoUnsafe;->putByte(Ljava/lang/Object;JB)V

    return-void
.end method

.method private reallocateMemory0(JJ)J
    .locals 0

    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method private reallocateMemoryChecks(JJ)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Ljdk/internal/misc/NeoUnsafe;->checkPointer(Ljava/lang/Object;J)V

    invoke-direct {p0, p3, p4}, Ljdk/internal/misc/NeoUnsafe;->checkSize(J)V

    return-void
.end method

.method private static registerNatives()V
    .locals 0

    return-void
.end method

.method private s2c(S)C
    .locals 0

    int-to-char p0, p1

    return p0
.end method

.method private setMemory0(Ljava/lang/Object;JJB)V
    .locals 0

    return-void
.end method

.method private setMemoryChecks(Ljava/lang/Object;JJB)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Ljdk/internal/misc/NeoUnsafe;->checkPrimitivePointer(Ljava/lang/Object;J)V

    invoke-direct {p0, p4, p5}, Ljdk/internal/misc/NeoUnsafe;->checkSize(J)V

    return-void
.end method

.method private shouldBeInitialized0(Ljava/lang/Class;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method private staticFieldBase0(Ljava/lang/reflect/Field;)Ljava/lang/Object;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method private staticFieldOffset0(Ljava/lang/reflect/Field;)J
    .locals 0

    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method private static throwIllegalAccessError()V
    .locals 1

    new-instance v0, Ljava/lang/IllegalAccessError;

    invoke-direct {v0}, Ljava/lang/IllegalAccessError;-><init>()V

    throw v0
.end method

.method private static throwNoSuchMethodError()V
    .locals 1

    new-instance v0, Ljava/lang/NoSuchMethodError;

    invoke-direct {v0}, Ljava/lang/NoSuchMethodError;-><init>()V

    throw v0
.end method

.method private static toUnsignedInt(B)I
    .locals 0

    .line 1
    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method private static toUnsignedInt(S)I
    .locals 1

    .line 2
    const v0, 0xffff

    and-int/2addr p0, v0

    return p0
.end method

.method private static toUnsignedLong(B)J
    .locals 4

    .line 1
    int-to-long v0, p0

    const-wide/16 v2, 0xff

    and-long/2addr v0, v2

    return-wide v0
.end method

.method private static toUnsignedLong(I)J
    .locals 4

    .line 2
    int-to-long v0, p0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method private static toUnsignedLong(S)J
    .locals 4

    .line 3
    int-to-long v0, p0

    const-wide/32 v2, 0xffff

    and-long/2addr v0, v2

    return-wide v0
.end method

.method private writeback0(J)V
    .locals 0

    return-void
.end method

.method private writebackPostSync0()V
    .locals 0

    return-void
.end method

.method private writebackPreSync0()V
    .locals 0

    return-void
.end method


# virtual methods
.method public addressSize()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public allocateInstance(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public allocateMemory(J)J
    .locals 4

    invoke-direct {p0, p1, p2}, Ljdk/internal/misc/NeoUnsafe;->alignToHeapWordSize(J)J

    move-result-wide p1

    invoke-direct {p0, p1, p2}, Ljdk/internal/misc/NeoUnsafe;->allocateMemoryChecks(J)V

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    return-wide v0

    :cond_0
    invoke-direct {p0, p1, p2}, Ljdk/internal/misc/NeoUnsafe;->allocateMemory0(J)J

    move-result-wide v2

    cmp-long p0, v2, v0

    if-eqz p0, :cond_1

    return-wide v2

    :cond_1
    new-instance p0, Ljava/lang/OutOfMemoryError;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to allocate "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " bytes"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/OutOfMemoryError;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public allocateUninitializedArray(Ljava/lang/Class;I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;I)",
            "Ljava/lang/Object;"
        }
    .end annotation

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_1

    if-ltz p2, :cond_0

    invoke-direct {p0, p1, p2}, Ljdk/internal/misc/NeoUnsafe;->allocateUninitializedArray0(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Negative length"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Component type is not primitive"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Component type is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public arrayBaseOffset(Ljava/lang/Class;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)I"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0, p1}, Ljdk/internal/misc/NeoUnsafe;->arrayBaseOffset0(Ljava/lang/Class;)I

    move-result p0

    return p0
.end method

.method public arrayIndexScale(Ljava/lang/Class;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)I"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0, p1}, Ljdk/internal/misc/NeoUnsafe;->arrayIndexScale0(Ljava/lang/Class;)I

    move-result p0

    return p0
.end method

.method public final compareAndExchangeBoolean(Ljava/lang/Object;JZZ)Z
    .locals 6

    invoke-direct {p0, p4}, Ljdk/internal/misc/NeoUnsafe;->bool2byte(Z)B

    move-result v4

    invoke-direct {p0, p5}, Ljdk/internal/misc/NeoUnsafe;->bool2byte(Z)B

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    invoke-virtual/range {v0 .. v5}, Ljdk/internal/misc/NeoUnsafe;->compareAndExchangeByte(Ljava/lang/Object;JBB)B

    move-result p1

    invoke-direct {p0, p1}, Ljdk/internal/misc/NeoUnsafe;->byte2bool(B)Z

    move-result p0

    return p0
.end method

.method public final compareAndExchangeBooleanAcquire(Ljava/lang/Object;JZZ)Z
    .locals 6

    invoke-direct {p0, p4}, Ljdk/internal/misc/NeoUnsafe;->bool2byte(Z)B

    move-result v4

    invoke-direct {p0, p5}, Ljdk/internal/misc/NeoUnsafe;->bool2byte(Z)B

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    invoke-virtual/range {v0 .. v5}, Ljdk/internal/misc/NeoUnsafe;->compareAndExchangeByteAcquire(Ljava/lang/Object;JBB)B

    move-result p1

    invoke-direct {p0, p1}, Ljdk/internal/misc/NeoUnsafe;->byte2bool(B)Z

    move-result p0

    return p0
.end method

.method public final compareAndExchangeBooleanRelease(Ljava/lang/Object;JZZ)Z
    .locals 6

    invoke-direct {p0, p4}, Ljdk/internal/misc/NeoUnsafe;->bool2byte(Z)B

    move-result v4

    invoke-direct {p0, p5}, Ljdk/internal/misc/NeoUnsafe;->bool2byte(Z)B

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    invoke-virtual/range {v0 .. v5}, Ljdk/internal/misc/NeoUnsafe;->compareAndExchangeByteRelease(Ljava/lang/Object;JBB)B

    move-result p1

    invoke-direct {p0, p1}, Ljdk/internal/misc/NeoUnsafe;->byte2bool(B)Z

    move-result p0

    return p0
.end method

.method public final compareAndExchangeByte(Ljava/lang/Object;JBB)B
    .locals 10

    const-wide/16 v0, -0x4

    and-long/2addr v0, p2

    const-wide/16 v2, 0x3

    and-long/2addr p2, v2

    long-to-int p2, p2

    shl-int/lit8 p2, p2, 0x3

    const/16 p3, 0xff

    shl-int v8, p3, p2

    and-int/lit16 v2, p4, 0xff

    shl-int v9, v2, p2

    and-int/2addr p3, p5

    shl-int/2addr p3, p2

    :cond_0
    invoke-virtual {p0, p1, v0, v1}, Ljdk/internal/misc/NeoUnsafe;->getIntVolatile(Ljava/lang/Object;J)I

    move-result v6

    and-int p5, v6, v8

    if-eq p5, v9, :cond_1

    shr-int p0, p5, p2

    int-to-byte p0, p0

    return p0

    :cond_1
    not-int p5, v8

    and-int/2addr p5, v6

    or-int v7, p5, p3

    move-object v2, p0

    move-object v3, p1

    move-wide v4, v0

    invoke-virtual/range {v2 .. v7}, Ljdk/internal/misc/NeoUnsafe;->weakCompareAndSetInt(Ljava/lang/Object;JII)Z

    move-result p5

    if-eqz p5, :cond_0

    return p4
.end method

.method public final compareAndExchangeByteAcquire(Ljava/lang/Object;JBB)B
    .locals 0

    invoke-virtual/range {p0 .. p5}, Ljdk/internal/misc/NeoUnsafe;->compareAndExchangeByte(Ljava/lang/Object;JBB)B

    move-result p0

    return p0
.end method

.method public final compareAndExchangeByteRelease(Ljava/lang/Object;JBB)B
    .locals 0

    invoke-virtual/range {p0 .. p5}, Ljdk/internal/misc/NeoUnsafe;->compareAndExchangeByte(Ljava/lang/Object;JBB)B

    move-result p0

    return p0
.end method

.method public final compareAndExchangeChar(Ljava/lang/Object;JCC)C
    .locals 6

    invoke-direct {p0, p4}, Ljdk/internal/misc/NeoUnsafe;->c2s(C)S

    move-result v4

    invoke-direct {p0, p5}, Ljdk/internal/misc/NeoUnsafe;->c2s(C)S

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    invoke-virtual/range {v0 .. v5}, Ljdk/internal/misc/NeoUnsafe;->compareAndExchangeShort(Ljava/lang/Object;JSS)S

    move-result p1

    invoke-direct {p0, p1}, Ljdk/internal/misc/NeoUnsafe;->s2c(S)C

    move-result p0

    return p0
.end method

.method public final compareAndExchangeCharAcquire(Ljava/lang/Object;JCC)C
    .locals 6

    invoke-direct {p0, p4}, Ljdk/internal/misc/NeoUnsafe;->c2s(C)S

    move-result v4

    invoke-direct {p0, p5}, Ljdk/internal/misc/NeoUnsafe;->c2s(C)S

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    invoke-virtual/range {v0 .. v5}, Ljdk/internal/misc/NeoUnsafe;->compareAndExchangeShortAcquire(Ljava/lang/Object;JSS)S

    move-result p1

    invoke-direct {p0, p1}, Ljdk/internal/misc/NeoUnsafe;->s2c(S)C

    move-result p0

    return p0
.end method

.method public final compareAndExchangeCharRelease(Ljava/lang/Object;JCC)C
    .locals 6

    invoke-direct {p0, p4}, Ljdk/internal/misc/NeoUnsafe;->c2s(C)S

    move-result v4

    invoke-direct {p0, p5}, Ljdk/internal/misc/NeoUnsafe;->c2s(C)S

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    invoke-virtual/range {v0 .. v5}, Ljdk/internal/misc/NeoUnsafe;->compareAndExchangeShortRelease(Ljava/lang/Object;JSS)S

    move-result p1

    invoke-direct {p0, p1}, Ljdk/internal/misc/NeoUnsafe;->s2c(S)C

    move-result p0

    return p0
.end method

.method public final compareAndExchangeDouble(Ljava/lang/Object;JDD)D
    .locals 8

    invoke-static {p4, p5}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v4

    invoke-static {p6, p7}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v6

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    invoke-virtual/range {v0 .. v7}, Ljdk/internal/misc/NeoUnsafe;->compareAndExchangeLong(Ljava/lang/Object;JJJ)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide p0

    return-wide p0
.end method

.method public final compareAndExchangeDoubleAcquire(Ljava/lang/Object;JDD)D
    .locals 8

    invoke-static {p4, p5}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v4

    invoke-static {p6, p7}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v6

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    invoke-virtual/range {v0 .. v7}, Ljdk/internal/misc/NeoUnsafe;->compareAndExchangeLongAcquire(Ljava/lang/Object;JJJ)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide p0

    return-wide p0
.end method

.method public final compareAndExchangeDoubleRelease(Ljava/lang/Object;JDD)D
    .locals 8

    invoke-static {p4, p5}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v4

    invoke-static {p6, p7}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v6

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    invoke-virtual/range {v0 .. v7}, Ljdk/internal/misc/NeoUnsafe;->compareAndExchangeLongRelease(Ljava/lang/Object;JJJ)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide p0

    return-wide p0
.end method

.method public final compareAndExchangeFloat(Ljava/lang/Object;JFF)F
    .locals 6

    invoke-static {p4}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v4

    invoke-static {p5}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    invoke-virtual/range {v0 .. v5}, Ljdk/internal/misc/NeoUnsafe;->compareAndExchangeInt(Ljava/lang/Object;JII)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    return p0
.end method

.method public final compareAndExchangeFloatAcquire(Ljava/lang/Object;JFF)F
    .locals 6

    invoke-static {p4}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v4

    invoke-static {p5}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    invoke-virtual/range {v0 .. v5}, Ljdk/internal/misc/NeoUnsafe;->compareAndExchangeIntAcquire(Ljava/lang/Object;JII)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    return p0
.end method

.method public final compareAndExchangeFloatRelease(Ljava/lang/Object;JFF)F
    .locals 6

    invoke-static {p4}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v4

    invoke-static {p5}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    invoke-virtual/range {v0 .. v5}, Ljdk/internal/misc/NeoUnsafe;->compareAndExchangeIntRelease(Ljava/lang/Object;JII)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    return p0
.end method

.method public final compareAndExchangeInt(Ljava/lang/Object;JII)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final compareAndExchangeIntAcquire(Ljava/lang/Object;JII)I
    .locals 0

    invoke-virtual/range {p0 .. p5}, Ljdk/internal/misc/NeoUnsafe;->compareAndExchangeInt(Ljava/lang/Object;JII)I

    move-result p0

    return p0
.end method

.method public final compareAndExchangeIntRelease(Ljava/lang/Object;JII)I
    .locals 0

    invoke-virtual/range {p0 .. p5}, Ljdk/internal/misc/NeoUnsafe;->compareAndExchangeInt(Ljava/lang/Object;JII)I

    move-result p0

    return p0
.end method

.method public final compareAndExchangeLong(Ljava/lang/Object;JJJ)J
    .locals 0

    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public final compareAndExchangeLongAcquire(Ljava/lang/Object;JJJ)J
    .locals 0

    invoke-virtual/range {p0 .. p7}, Ljdk/internal/misc/NeoUnsafe;->compareAndExchangeLong(Ljava/lang/Object;JJJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public final compareAndExchangeLongRelease(Ljava/lang/Object;JJJ)J
    .locals 0

    invoke-virtual/range {p0 .. p7}, Ljdk/internal/misc/NeoUnsafe;->compareAndExchangeLong(Ljava/lang/Object;JJJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public final compareAndExchangeObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual/range {p0 .. p5}, Ljdk/internal/misc/NeoUnsafe;->compareAndExchangeReference(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final compareAndExchangeObjectAcquire(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual/range {p0 .. p5}, Ljdk/internal/misc/NeoUnsafe;->compareAndExchangeReferenceAcquire(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final compareAndExchangeObjectRelease(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual/range {p0 .. p5}, Ljdk/internal/misc/NeoUnsafe;->compareAndExchangeReferenceRelease(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final compareAndExchangeReference(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final compareAndExchangeReferenceAcquire(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual/range {p0 .. p5}, Ljdk/internal/misc/NeoUnsafe;->compareAndExchangeReference(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final compareAndExchangeReferenceRelease(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual/range {p0 .. p5}, Ljdk/internal/misc/NeoUnsafe;->compareAndExchangeReference(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final compareAndExchangeShort(Ljava/lang/Object;JSS)S
    .locals 10

    const-wide/16 v0, 0x3

    and-long v2, p2, v0

    cmp-long v0, v2, v0

    if-eqz v0, :cond_2

    const-wide/16 v0, -0x4

    and-long/2addr p2, v0

    long-to-int v0, v2

    shl-int/lit8 v0, v0, 0x3

    const v1, 0xffff

    shl-int v2, v1, v0

    and-int v3, p4, v1

    shl-int/2addr v3, v0

    and-int/2addr p5, v1

    shl-int/2addr p5, v0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Ljdk/internal/misc/NeoUnsafe;->getIntVolatile(Ljava/lang/Object;J)I

    move-result v8

    and-int v1, v8, v2

    if-eq v1, v3, :cond_1

    shr-int p0, v1, v0

    int-to-short p0, p0

    return p0

    :cond_1
    not-int v1, v2

    and-int/2addr v1, v8

    or-int v9, v1, p5

    move-object v4, p0

    move-object v5, p1

    move-wide v6, p2

    invoke-virtual/range {v4 .. v9}, Ljdk/internal/misc/NeoUnsafe;->weakCompareAndSetInt(Ljava/lang/Object;JII)Z

    move-result v1

    if-eqz v1, :cond_0

    return p4

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Update spans the word, not supported"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final compareAndExchangeShortAcquire(Ljava/lang/Object;JSS)S
    .locals 0

    invoke-virtual/range {p0 .. p5}, Ljdk/internal/misc/NeoUnsafe;->compareAndExchangeShort(Ljava/lang/Object;JSS)S

    move-result p0

    return p0
.end method

.method public final compareAndExchangeShortRelease(Ljava/lang/Object;JSS)S
    .locals 0

    invoke-virtual/range {p0 .. p5}, Ljdk/internal/misc/NeoUnsafe;->compareAndExchangeShort(Ljava/lang/Object;JSS)S

    move-result p0

    return p0
.end method

.method public final compareAndSetBoolean(Ljava/lang/Object;JZZ)Z
    .locals 6

    invoke-direct {p0, p4}, Ljdk/internal/misc/NeoUnsafe;->bool2byte(Z)B

    move-result v4

    invoke-direct {p0, p5}, Ljdk/internal/misc/NeoUnsafe;->bool2byte(Z)B

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    invoke-virtual/range {v0 .. v5}, Ljdk/internal/misc/NeoUnsafe;->compareAndSetByte(Ljava/lang/Object;JBB)Z

    move-result p0

    return p0
.end method

.method public final compareAndSetByte(Ljava/lang/Object;JBB)Z
    .locals 0

    invoke-virtual/range {p0 .. p5}, Ljdk/internal/misc/NeoUnsafe;->compareAndExchangeByte(Ljava/lang/Object;JBB)B

    move-result p0

    if-ne p0, p4, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final compareAndSetChar(Ljava/lang/Object;JCC)Z
    .locals 6

    invoke-direct {p0, p4}, Ljdk/internal/misc/NeoUnsafe;->c2s(C)S

    move-result v4

    invoke-direct {p0, p5}, Ljdk/internal/misc/NeoUnsafe;->c2s(C)S

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    invoke-virtual/range {v0 .. v5}, Ljdk/internal/misc/NeoUnsafe;->compareAndSetShort(Ljava/lang/Object;JSS)Z

    move-result p0

    return p0
.end method

.method public final compareAndSetDouble(Ljava/lang/Object;JDD)Z
    .locals 8

    invoke-static {p4, p5}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v4

    invoke-static {p6, p7}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v6

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    invoke-virtual/range {v0 .. v7}, Ljdk/internal/misc/NeoUnsafe;->compareAndSetLong(Ljava/lang/Object;JJJ)Z

    move-result p0

    return p0
.end method

.method public final compareAndSetFloat(Ljava/lang/Object;JFF)Z
    .locals 6

    invoke-static {p4}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v4

    invoke-static {p5}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    invoke-virtual/range {v0 .. v5}, Ljdk/internal/misc/NeoUnsafe;->compareAndSetInt(Ljava/lang/Object;JII)Z

    move-result p0

    return p0
.end method

.method public final compareAndSetInt(Ljava/lang/Object;JII)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final compareAndSetLong(Ljava/lang/Object;JJJ)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final compareAndSetObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual/range {p0 .. p5}, Ljdk/internal/misc/NeoUnsafe;->compareAndSetReference(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final compareAndSetReference(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final compareAndSetShort(Ljava/lang/Object;JSS)Z
    .locals 0

    invoke-virtual/range {p0 .. p5}, Ljdk/internal/misc/NeoUnsafe;->compareAndExchangeShort(Ljava/lang/Object;JSS)S

    move-result p0

    if-ne p0, p4, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public copyMemory(JJJ)V
    .locals 9

    const/4 v1, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-wide v2, p1

    move-wide v5, p3

    move-wide v7, p5

    .line 3
    invoke-virtual/range {v0 .. v8}, Ljdk/internal/misc/NeoUnsafe;->copyMemory(Ljava/lang/Object;JLjava/lang/Object;JJ)V

    return-void
.end method

.method public copyMemory(Ljava/lang/Object;JLjava/lang/Object;JJ)V
    .locals 2

    .line 1
    invoke-direct/range {p0 .. p8}, Ljdk/internal/misc/NeoUnsafe;->copyMemoryChecks(Ljava/lang/Object;JLjava/lang/Object;JJ)V

    const-wide/16 v0, 0x0

    cmp-long v0, p7, v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-direct/range {p0 .. p8}, Ljdk/internal/misc/NeoUnsafe;->copyMemory0(Ljava/lang/Object;JLjava/lang/Object;JJ)V

    return-void
.end method

.method public copySwapMemory(JJJJ)V
    .locals 11

    const/4 v1, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-wide v2, p1

    move-wide v5, p3

    move-wide/from16 v7, p5

    move-wide/from16 v9, p7

    .line 3
    invoke-virtual/range {v0 .. v10}, Ljdk/internal/misc/NeoUnsafe;->copySwapMemory(Ljava/lang/Object;JLjava/lang/Object;JJJ)V

    return-void
.end method

.method public copySwapMemory(Ljava/lang/Object;JLjava/lang/Object;JJJ)V
    .locals 2

    .line 1
    invoke-direct/range {p0 .. p10}, Ljdk/internal/misc/NeoUnsafe;->copySwapMemoryChecks(Ljava/lang/Object;JLjava/lang/Object;JJJ)V

    const-wide/16 v0, 0x0

    cmp-long v0, p7, v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-direct/range {p0 .. p10}, Ljdk/internal/misc/NeoUnsafe;->copySwapMemory0(Ljava/lang/Object;JLjava/lang/Object;JJJ)V

    return-void
.end method

.method public dataCacheLineAlignDown(J)J
    .locals 2

    const-wide/16 v0, 0x0

    and-long p0, p1, v0

    return-wide p0
.end method

.method public dataCacheLineFlushSize()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public defineAnonymousClass(Ljava/lang/Class;[B[Ljava/lang/Object;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;[B[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1, p2, p3}, Ljdk/internal/misc/NeoUnsafe;->defineAnonymousClass0(Ljava/lang/Class;[B[Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_1
    const/4 p0, 0x0

    throw p0
.end method

.method public defineClass(Ljava/lang/String;[BIILjava/lang/ClassLoader;Ljava/security/ProtectionDomain;)Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[BII",
            "Ljava/lang/ClassLoader;",
            "Ljava/security/ProtectionDomain;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-ltz p4, :cond_0

    invoke-virtual/range {p0 .. p6}, Ljdk/internal/misc/NeoUnsafe;->defineClass0(Ljava/lang/String;[BIILjava/lang/ClassLoader;Ljava/security/ProtectionDomain;)Ljava/lang/Class;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw p0
.end method

.method public defineClass0(Ljava/lang/String;[BIILjava/lang/ClassLoader;Ljava/security/ProtectionDomain;)Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[BII",
            "Ljava/lang/ClassLoader;",
            "Ljava/security/ProtectionDomain;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public ensureClassInitialized(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0, p1}, Ljdk/internal/misc/NeoUnsafe;->ensureClassInitialized0(Ljava/lang/Class;)V

    return-void
.end method

.method public freeMemory(J)V
    .locals 2

    invoke-direct {p0, p1, p2}, Ljdk/internal/misc/NeoUnsafe;->freeMemoryChecks(J)V

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1, p2}, Ljdk/internal/misc/NeoUnsafe;->freeMemory0(J)V

    return-void
.end method

.method public fullFence()V
    .locals 0

    return-void
.end method

.method public getAddress(J)J
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0, p1, p2}, Ljdk/internal/misc/NeoUnsafe;->getAddress(Ljava/lang/Object;J)J

    move-result-wide p0

    return-wide p0
.end method

.method public getAddress(Ljava/lang/Object;J)J
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Ljdk/internal/misc/NeoUnsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide p0

    return-wide p0
.end method

.method public final getAndAddByte(Ljava/lang/Object;JB)B
    .locals 7

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Ljdk/internal/misc/NeoUnsafe;->getByteVolatile(Ljava/lang/Object;J)B

    move-result v6

    add-int v0, v6, p4

    int-to-byte v5, v0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v4, v6

    invoke-virtual/range {v0 .. v5}, Ljdk/internal/misc/NeoUnsafe;->weakCompareAndSetByte(Ljava/lang/Object;JBB)Z

    move-result v0

    if-eqz v0, :cond_0

    return v6
.end method

.method public final getAndAddByteAcquire(Ljava/lang/Object;JB)B
    .locals 7

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Ljdk/internal/misc/NeoUnsafe;->getByteAcquire(Ljava/lang/Object;J)B

    move-result v6

    add-int v0, v6, p4

    int-to-byte v5, v0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v4, v6

    invoke-virtual/range {v0 .. v5}, Ljdk/internal/misc/NeoUnsafe;->weakCompareAndSetByteAcquire(Ljava/lang/Object;JBB)Z

    move-result v0

    if-eqz v0, :cond_0

    return v6
.end method

.method public final getAndAddByteRelease(Ljava/lang/Object;JB)B
    .locals 7

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Ljdk/internal/misc/NeoUnsafe;->getByte(Ljava/lang/Object;J)B

    move-result v6

    add-int v0, v6, p4

    int-to-byte v5, v0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v4, v6

    invoke-virtual/range {v0 .. v5}, Ljdk/internal/misc/NeoUnsafe;->weakCompareAndSetByteRelease(Ljava/lang/Object;JBB)Z

    move-result v0

    if-eqz v0, :cond_0

    return v6
.end method

.method public final getAndAddChar(Ljava/lang/Object;JC)C
    .locals 0

    int-to-short p4, p4

    invoke-virtual {p0, p1, p2, p3, p4}, Ljdk/internal/misc/NeoUnsafe;->getAndAddShort(Ljava/lang/Object;JS)S

    move-result p0

    int-to-char p0, p0

    return p0
.end method

.method public final getAndAddCharAcquire(Ljava/lang/Object;JC)C
    .locals 0

    int-to-short p4, p4

    invoke-virtual {p0, p1, p2, p3, p4}, Ljdk/internal/misc/NeoUnsafe;->getAndAddShortAcquire(Ljava/lang/Object;JS)S

    move-result p0

    int-to-char p0, p0

    return p0
.end method

.method public final getAndAddCharRelease(Ljava/lang/Object;JC)C
    .locals 0

    int-to-short p4, p4

    invoke-virtual {p0, p1, p2, p3, p4}, Ljdk/internal/misc/NeoUnsafe;->getAndAddShortRelease(Ljava/lang/Object;JS)S

    move-result p0

    int-to-char p0, p0

    return p0
.end method

.method public final getAndAddDouble(Ljava/lang/Object;JD)D
    .locals 10

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Ljdk/internal/misc/NeoUnsafe;->getLongVolatile(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v8

    add-double v0, v8, p4

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v6

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    invoke-virtual/range {v0 .. v7}, Ljdk/internal/misc/NeoUnsafe;->weakCompareAndSetLong(Ljava/lang/Object;JJJ)Z

    move-result v0

    if-eqz v0, :cond_0

    return-wide v8
.end method

.method public final getAndAddDoubleAcquire(Ljava/lang/Object;JD)D
    .locals 10

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Ljdk/internal/misc/NeoUnsafe;->getLongAcquire(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v8

    add-double v0, v8, p4

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v6

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    invoke-virtual/range {v0 .. v7}, Ljdk/internal/misc/NeoUnsafe;->weakCompareAndSetLongAcquire(Ljava/lang/Object;JJJ)Z

    move-result v0

    if-eqz v0, :cond_0

    return-wide v8
.end method

.method public final getAndAddDoubleRelease(Ljava/lang/Object;JD)D
    .locals 10

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Ljdk/internal/misc/NeoUnsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v8

    add-double v0, v8, p4

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v6

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    invoke-virtual/range {v0 .. v7}, Ljdk/internal/misc/NeoUnsafe;->weakCompareAndSetLongRelease(Ljava/lang/Object;JJJ)Z

    move-result v0

    if-eqz v0, :cond_0

    return-wide v8
.end method

.method public final getAndAddFloat(Ljava/lang/Object;JF)F
    .locals 7

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Ljdk/internal/misc/NeoUnsafe;->getIntVolatile(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v6

    add-float v0, v6, p4

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    invoke-virtual/range {v0 .. v5}, Ljdk/internal/misc/NeoUnsafe;->weakCompareAndSetInt(Ljava/lang/Object;JII)Z

    move-result v0

    if-eqz v0, :cond_0

    return v6
.end method

.method public final getAndAddFloatAcquire(Ljava/lang/Object;JF)F
    .locals 7

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Ljdk/internal/misc/NeoUnsafe;->getIntAcquire(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v6

    add-float v0, v6, p4

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    invoke-virtual/range {v0 .. v5}, Ljdk/internal/misc/NeoUnsafe;->weakCompareAndSetIntAcquire(Ljava/lang/Object;JII)Z

    move-result v0

    if-eqz v0, :cond_0

    return v6
.end method

.method public final getAndAddFloatRelease(Ljava/lang/Object;JF)F
    .locals 7

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Ljdk/internal/misc/NeoUnsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v6

    add-float v0, v6, p4

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    invoke-virtual/range {v0 .. v5}, Ljdk/internal/misc/NeoUnsafe;->weakCompareAndSetIntRelease(Ljava/lang/Object;JII)Z

    move-result v0

    if-eqz v0, :cond_0

    return v6
.end method

.method public final getAndAddInt(Ljava/lang/Object;JI)I
    .locals 7

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Ljdk/internal/misc/NeoUnsafe;->getIntVolatile(Ljava/lang/Object;J)I

    move-result v6

    add-int v5, v6, p4

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v4, v6

    invoke-virtual/range {v0 .. v5}, Ljdk/internal/misc/NeoUnsafe;->weakCompareAndSetInt(Ljava/lang/Object;JII)Z

    move-result v0

    if-eqz v0, :cond_0

    return v6
.end method

.method public final getAndAddIntAcquire(Ljava/lang/Object;JI)I
    .locals 7

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Ljdk/internal/misc/NeoUnsafe;->getIntAcquire(Ljava/lang/Object;J)I

    move-result v6

    add-int v5, v6, p4

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v4, v6

    invoke-virtual/range {v0 .. v5}, Ljdk/internal/misc/NeoUnsafe;->weakCompareAndSetIntAcquire(Ljava/lang/Object;JII)Z

    move-result v0

    if-eqz v0, :cond_0

    return v6
.end method

.method public final getAndAddIntRelease(Ljava/lang/Object;JI)I
    .locals 7

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Ljdk/internal/misc/NeoUnsafe;->getInt(Ljava/lang/Object;J)I

    move-result v6

    add-int v5, v6, p4

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v4, v6

    invoke-virtual/range {v0 .. v5}, Ljdk/internal/misc/NeoUnsafe;->weakCompareAndSetIntRelease(Ljava/lang/Object;JII)Z

    move-result v0

    if-eqz v0, :cond_0

    return v6
.end method

.method public final getAndAddLong(Ljava/lang/Object;JJ)J
    .locals 10

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Ljdk/internal/misc/NeoUnsafe;->getLongVolatile(Ljava/lang/Object;J)J

    move-result-wide v8

    add-long v6, v8, p4

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, v8

    invoke-virtual/range {v0 .. v7}, Ljdk/internal/misc/NeoUnsafe;->weakCompareAndSetLong(Ljava/lang/Object;JJJ)Z

    move-result v0

    if-eqz v0, :cond_0

    return-wide v8
.end method

.method public final getAndAddLongAcquire(Ljava/lang/Object;JJ)J
    .locals 10

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Ljdk/internal/misc/NeoUnsafe;->getLongAcquire(Ljava/lang/Object;J)J

    move-result-wide v8

    add-long v6, v8, p4

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, v8

    invoke-virtual/range {v0 .. v7}, Ljdk/internal/misc/NeoUnsafe;->weakCompareAndSetLongAcquire(Ljava/lang/Object;JJJ)Z

    move-result v0

    if-eqz v0, :cond_0

    return-wide v8
.end method

.method public final getAndAddLongRelease(Ljava/lang/Object;JJ)J
    .locals 10

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Ljdk/internal/misc/NeoUnsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v8

    add-long v6, v8, p4

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, v8

    invoke-virtual/range {v0 .. v7}, Ljdk/internal/misc/NeoUnsafe;->weakCompareAndSetLongRelease(Ljava/lang/Object;JJJ)Z

    move-result v0

    if-eqz v0, :cond_0

    return-wide v8
.end method

.method public final getAndAddShort(Ljava/lang/Object;JS)S
    .locals 7

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Ljdk/internal/misc/NeoUnsafe;->getShortVolatile(Ljava/lang/Object;J)S

    move-result v6

    add-int v0, v6, p4

    int-to-short v5, v0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v4, v6

    invoke-virtual/range {v0 .. v5}, Ljdk/internal/misc/NeoUnsafe;->weakCompareAndSetShort(Ljava/lang/Object;JSS)Z

    move-result v0

    if-eqz v0, :cond_0

    return v6
.end method

.method public final getAndAddShortAcquire(Ljava/lang/Object;JS)S
    .locals 7

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Ljdk/internal/misc/NeoUnsafe;->getShortAcquire(Ljava/lang/Object;J)S

    move-result v6

    add-int v0, v6, p4

    int-to-short v5, v0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v4, v6

    invoke-virtual/range {v0 .. v5}, Ljdk/internal/misc/NeoUnsafe;->weakCompareAndSetShortAcquire(Ljava/lang/Object;JSS)Z

    move-result v0

    if-eqz v0, :cond_0

    return v6
.end method

.method public final getAndAddShortRelease(Ljava/lang/Object;JS)S
    .locals 7

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Ljdk/internal/misc/NeoUnsafe;->getShort(Ljava/lang/Object;J)S

    move-result v6

    add-int v0, v6, p4

    int-to-short v5, v0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v4, v6

    invoke-virtual/range {v0 .. v5}, Ljdk/internal/misc/NeoUnsafe;->weakCompareAndSetShortRelease(Ljava/lang/Object;JSS)Z

    move-result v0

    if-eqz v0, :cond_0

    return v6
.end method

.method public final getAndBitwiseAndBoolean(Ljava/lang/Object;JZ)Z
    .locals 0

    invoke-direct {p0, p4}, Ljdk/internal/misc/NeoUnsafe;->bool2byte(Z)B

    move-result p4

    invoke-virtual {p0, p1, p2, p3, p4}, Ljdk/internal/misc/NeoUnsafe;->getAndBitwiseAndByte(Ljava/lang/Object;JB)B

    move-result p1

    invoke-direct {p0, p1}, Ljdk/internal/misc/NeoUnsafe;->byte2bool(B)Z

    move-result p0

    return p0
.end method

.method public final getAndBitwiseAndBooleanAcquire(Ljava/lang/Object;JZ)Z
    .locals 0

    invoke-direct {p0, p4}, Ljdk/internal/misc/NeoUnsafe;->bool2byte(Z)B

    move-result p4

    invoke-virtual {p0, p1, p2, p3, p4}, Ljdk/internal/misc/NeoUnsafe;->getAndBitwiseAndByteAcquire(Ljava/lang/Object;JB)B

    move-result p1

    invoke-direct {p0, p1}, Ljdk/internal/misc/NeoUnsafe;->byte2bool(B)Z

    move-result p0

    return p0
.end method

.method public final getAndBitwiseAndBooleanRelease(Ljava/lang/Object;JZ)Z
    .locals 0

    invoke-direct {p0, p4}, Ljdk/internal/misc/NeoUnsafe;->bool2byte(Z)B

    move-result p4

    invoke-virtual {p0, p1, p2, p3, p4}, Ljdk/internal/misc/NeoUnsafe;->getAndBitwiseAndByteRelease(Ljava/lang/Object;JB)B

    move-result p1

    invoke-direct {p0, p1}, Ljdk/internal/misc/NeoUnsafe;->byte2bool(B)Z

    move-result p0

    return p0
.end method

.method public final getAndBitwiseAndByte(Ljava/lang/Object;JB)B
    .locals 7

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Ljdk/internal/misc/NeoUnsafe;->getByteVolatile(Ljava/lang/Object;J)B

    move-result v6

    and-int v0, v6, p4

    int-to-byte v5, v0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v4, v6

    invoke-virtual/range {v0 .. v5}, Ljdk/internal/misc/NeoUnsafe;->weakCompareAndSetByte(Ljava/lang/Object;JBB)Z

    move-result v0

    if-eqz v0, :cond_0

    return v6
.end method

.method public final getAndBitwiseAndByteAcquire(Ljava/lang/Object;JB)B
    .locals 7

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Ljdk/internal/misc/NeoUnsafe;->getByte(Ljava/lang/Object;J)B

    move-result v6

    and-int v0, v6, p4

    int-to-byte v5, v0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v4, v6

    invoke-virtual/range {v0 .. v5}, Ljdk/internal/misc/NeoUnsafe;->weakCompareAndSetByteAcquire(Ljava/lang/Object;JBB)Z

    move-result v0

    if-eqz v0, :cond_0

    return v6
.end method

.method public final getAndBitwiseAndByteRelease(Ljava/lang/Object;JB)B
    .locals 7

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Ljdk/internal/misc/NeoUnsafe;->getByte(Ljava/lang/Object;J)B

    move-result v6

    and-int v0, v6, p4

    int-to-byte v5, v0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v4, v6

    invoke-virtual/range {v0 .. v5}, Ljdk/internal/misc/NeoUnsafe;->weakCompareAndSetByteRelease(Ljava/lang/Object;JBB)Z

    move-result v0

    if-eqz v0, :cond_0

    return v6
.end method

.method public final getAndBitwiseAndChar(Ljava/lang/Object;JC)C
    .locals 0

    invoke-direct {p0, p4}, Ljdk/internal/misc/NeoUnsafe;->c2s(C)S

    move-result p4

    invoke-virtual {p0, p1, p2, p3, p4}, Ljdk/internal/misc/NeoUnsafe;->getAndBitwiseAndShort(Ljava/lang/Object;JS)S

    move-result p1

    invoke-direct {p0, p1}, Ljdk/internal/misc/NeoUnsafe;->s2c(S)C

    move-result p0

    return p0
.end method

.method public final getAndBitwiseAndCharAcquire(Ljava/lang/Object;JC)C
    .locals 0

    invoke-direct {p0, p4}, Ljdk/internal/misc/NeoUnsafe;->c2s(C)S

    move-result p4

    invoke-virtual {p0, p1, p2, p3, p4}, Ljdk/internal/misc/NeoUnsafe;->getAndBitwiseAndShortAcquire(Ljava/lang/Object;JS)S

    move-result p1

    invoke-direct {p0, p1}, Ljdk/internal/misc/NeoUnsafe;->s2c(S)C

    move-result p0

    return p0
.end method

.method public final getAndBitwiseAndCharRelease(Ljava/lang/Object;JC)C
    .locals 0

    invoke-direct {p0, p4}, Ljdk/internal/misc/NeoUnsafe;->c2s(C)S

    move-result p4

    invoke-virtual {p0, p1, p2, p3, p4}, Ljdk/internal/misc/NeoUnsafe;->getAndBitwiseAndShortRelease(Ljava/lang/Object;JS)S

    move-result p1

    invoke-direct {p0, p1}, Ljdk/internal/misc/NeoUnsafe;->s2c(S)C

    move-result p0

    return p0
.end method

.method public final getAndBitwiseAndInt(Ljava/lang/Object;JI)I
    .locals 7

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Ljdk/internal/misc/NeoUnsafe;->getIntVolatile(Ljava/lang/Object;J)I

    move-result v6

    and-int v5, v6, p4

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v4, v6

    invoke-virtual/range {v0 .. v5}, Ljdk/internal/misc/NeoUnsafe;->weakCompareAndSetInt(Ljava/lang/Object;JII)Z

    move-result v0

    if-eqz v0, :cond_0

    return v6
.end method

.method public final getAndBitwiseAndIntAcquire(Ljava/lang/Object;JI)I
    .locals 7

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Ljdk/internal/misc/NeoUnsafe;->getInt(Ljava/lang/Object;J)I

    move-result v6

    and-int v5, v6, p4

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v4, v6

    invoke-virtual/range {v0 .. v5}, Ljdk/internal/misc/NeoUnsafe;->weakCompareAndSetIntAcquire(Ljava/lang/Object;JII)Z

    move-result v0

    if-eqz v0, :cond_0

    return v6
.end method

.method public final getAndBitwiseAndIntRelease(Ljava/lang/Object;JI)I
    .locals 7

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Ljdk/internal/misc/NeoUnsafe;->getInt(Ljava/lang/Object;J)I

    move-result v6

    and-int v5, v6, p4

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v4, v6

    invoke-virtual/range {v0 .. v5}, Ljdk/internal/misc/NeoUnsafe;->weakCompareAndSetIntRelease(Ljava/lang/Object;JII)Z

    move-result v0

    if-eqz v0, :cond_0

    return v6
.end method

.method public final getAndBitwiseAndLong(Ljava/lang/Object;JJ)J
    .locals 10

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Ljdk/internal/misc/NeoUnsafe;->getLongVolatile(Ljava/lang/Object;J)J

    move-result-wide v8

    and-long v6, v8, p4

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, v8

    invoke-virtual/range {v0 .. v7}, Ljdk/internal/misc/NeoUnsafe;->weakCompareAndSetLong(Ljava/lang/Object;JJJ)Z

    move-result v0

    if-eqz v0, :cond_0

    return-wide v8
.end method

.method public final getAndBitwiseAndLongAcquire(Ljava/lang/Object;JJ)J
    .locals 10

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Ljdk/internal/misc/NeoUnsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v8

    and-long v6, v8, p4

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, v8

    invoke-virtual/range {v0 .. v7}, Ljdk/internal/misc/NeoUnsafe;->weakCompareAndSetLongAcquire(Ljava/lang/Object;JJJ)Z

    move-result v0

    if-eqz v0, :cond_0

    return-wide v8
.end method

.method public final getAndBitwiseAndLongRelease(Ljava/lang/Object;JJ)J
    .locals 10

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Ljdk/internal/misc/NeoUnsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v8

    and-long v6, v8, p4

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, v8

    invoke-virtual/range {v0 .. v7}, Ljdk/internal/misc/NeoUnsafe;->weakCompareAndSetLongRelease(Ljava/lang/Object;JJJ)Z

    move-result v0

    if-eqz v0, :cond_0

    return-wide v8
.end method

.method public final getAndBitwiseAndShort(Ljava/lang/Object;JS)S
    .locals 7

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Ljdk/internal/misc/NeoUnsafe;->getShortVolatile(Ljava/lang/Object;J)S

    move-result v6

    and-int v0, v6, p4

    int-to-short v5, v0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v4, v6

    invoke-virtual/range {v0 .. v5}, Ljdk/internal/misc/NeoUnsafe;->weakCompareAndSetShort(Ljava/lang/Object;JSS)Z

    move-result v0

    if-eqz v0, :cond_0

    return v6
.end method

.method public final getAndBitwiseAndShortAcquire(Ljava/lang/Object;JS)S
    .locals 7

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Ljdk/internal/misc/NeoUnsafe;->getShort(Ljava/lang/Object;J)S

    move-result v6

    and-int v0, v6, p4

    int-to-short v5, v0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v4, v6

    invoke-virtual/range {v0 .. v5}, Ljdk/internal/misc/NeoUnsafe;->weakCompareAndSetShortAcquire(Ljava/lang/Object;JSS)Z

    move-result v0

    if-eqz v0, :cond_0

    return v6
.end method

.method public final getAndBitwiseAndShortRelease(Ljava/lang/Object;JS)S
    .locals 7

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Ljdk/internal/misc/NeoUnsafe;->getShort(Ljava/lang/Object;J)S

    move-result v6

    and-int v0, v6, p4

    int-to-short v5, v0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v4, v6

    invoke-virtual/range {v0 .. v5}, Ljdk/internal/misc/NeoUnsafe;->weakCompareAndSetShortRelease(Ljava/lang/Object;JSS)Z

    move-result v0

    if-eqz v0, :cond_0

    return v6
.end method

.method public final getAndBitwiseOrBoolean(Ljava/lang/Object;JZ)Z
    .locals 0

    invoke-direct {p0, p4}, Ljdk/internal/misc/NeoUnsafe;->bool2byte(Z)B

    move-result p4

    invoke-virtual {p0, p1, p2, p3, p4}, Ljdk/internal/misc/NeoUnsafe;->getAndBitwiseOrByte(Ljava/lang/Object;JB)B

    move-result p1

    invoke-direct {p0, p1}, Ljdk/internal/misc/NeoUnsafe;->byte2bool(B)Z

    move-result p0

    return p0
.end method

.method public final getAndBitwiseOrBooleanAcquire(Ljava/lang/Object;JZ)Z
    .locals 0

    invoke-direct {p0, p4}, Ljdk/internal/misc/NeoUnsafe;->bool2byte(Z)B

    move-result p4

    invoke-virtual {p0, p1, p2, p3, p4}, Ljdk/internal/misc/NeoUnsafe;->getAndBitwiseOrByteAcquire(Ljava/lang/Object;JB)B

    move-result p1

    invoke-direct {p0, p1}, Ljdk/internal/misc/NeoUnsafe;->byte2bool(B)Z

    move-result p0

    return p0
.end method

.method public final getAndBitwiseOrBooleanRelease(Ljava/lang/Object;JZ)Z
    .locals 0

    invoke-direct {p0, p4}, Ljdk/internal/misc/NeoUnsafe;->bool2byte(Z)B

    move-result p4

    invoke-virtual {p0, p1, p2, p3, p4}, Ljdk/internal/misc/NeoUnsafe;->getAndBitwiseOrByteRelease(Ljava/lang/Object;JB)B

    move-result p1

    invoke-direct {p0, p1}, Ljdk/internal/misc/NeoUnsafe;->byte2bool(B)Z

    move-result p0

    return p0
.end method

.method public final getAndBitwiseOrByte(Ljava/lang/Object;JB)B
    .locals 7

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Ljdk/internal/misc/NeoUnsafe;->getByteVolatile(Ljava/lang/Object;J)B

    move-result v6

    or-int v0, v6, p4

    int-to-byte v5, v0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v4, v6

    invoke-virtual/range {v0 .. v5}, Ljdk/internal/misc/NeoUnsafe;->weakCompareAndSetByte(Ljava/lang/Object;JBB)Z

    move-result v0

    if-eqz v0, :cond_0

    return v6
.end method

.method public final getAndBitwiseOrByteAcquire(Ljava/lang/Object;JB)B
    .locals 7

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Ljdk/internal/misc/NeoUnsafe;->getByte(Ljava/lang/Object;J)B

    move-result v6

    or-int v0, v6, p4

    int-to-byte v5, v0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v4, v6

    invoke-virtual/range {v0 .. v5}, Ljdk/internal/misc/NeoUnsafe;->weakCompareAndSetByteAcquire(Ljava/lang/Object;JBB)Z

    move-result v0

    if-eqz v0, :cond_0

    return v6
.end method

.method public final getAndBitwiseOrByteRelease(Ljava/lang/Object;JB)B
    .locals 7

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Ljdk/internal/misc/NeoUnsafe;->getByte(Ljava/lang/Object;J)B

    move-result v6

    or-int v0, v6, p4

    int-to-byte v5, v0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v4, v6

    invoke-virtual/range {v0 .. v5}, Ljdk/internal/misc/NeoUnsafe;->weakCompareAndSetByteRelease(Ljava/lang/Object;JBB)Z

    move-result v0

    if-eqz v0, :cond_0

    return v6
.end method

.method public final getAndBitwiseOrChar(Ljava/lang/Object;JC)C
    .locals 0

    invoke-direct {p0, p4}, Ljdk/internal/misc/NeoUnsafe;->c2s(C)S

    move-result p4

    invoke-virtual {p0, p1, p2, p3, p4}, Ljdk/internal/misc/NeoUnsafe;->getAndBitwiseOrShort(Ljava/lang/Object;JS)S

    move-result p1

    invoke-direct {p0, p1}, Ljdk/internal/misc/NeoUnsafe;->s2c(S)C

    move-result p0

    return p0
.end method

.method public final getAndBitwiseOrCharAcquire(Ljava/lang/Object;JC)C
    .locals 0

    invoke-direct {p0, p4}, Ljdk/internal/misc/NeoUnsafe;->c2s(C)S

    move-result p4

    invoke-virtual {p0, p1, p2, p3, p4}, Ljdk/internal/misc/NeoUnsafe;->getAndBitwiseOrShortAcquire(Ljava/lang/Object;JS)S

    move-result p1

    invoke-direct {p0, p1}, Ljdk/internal/misc/NeoUnsafe;->s2c(S)C

    move-result p0

    return p0
.end method

.method public final getAndBitwiseOrCharRelease(Ljava/lang/Object;JC)C
    .locals 0

    invoke-direct {p0, p4}, Ljdk/internal/misc/NeoUnsafe;->c2s(C)S

    move-result p4

    invoke-virtual {p0, p1, p2, p3, p4}, Ljdk/internal/misc/NeoUnsafe;->getAndBitwiseOrShortRelease(Ljava/lang/Object;JS)S

    move-result p1

    invoke-direct {p0, p1}, Ljdk/internal/misc/NeoUnsafe;->s2c(S)C

    move-result p0

    return p0
.end method

.method public final getAndBitwiseOrInt(Ljava/lang/Object;JI)I
    .locals 7

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Ljdk/internal/misc/NeoUnsafe;->getIntVolatile(Ljava/lang/Object;J)I

    move-result v6

    or-int v5, v6, p4

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v4, v6

    invoke-virtual/range {v0 .. v5}, Ljdk/internal/misc/NeoUnsafe;->weakCompareAndSetInt(Ljava/lang/Object;JII)Z

    move-result v0

    if-eqz v0, :cond_0

    return v6
.end method

.method public final getAndBitwiseOrIntAcquire(Ljava/lang/Object;JI)I
    .locals 7

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Ljdk/internal/misc/NeoUnsafe;->getInt(Ljava/lang/Object;J)I

    move-result v6

    or-int v5, v6, p4

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v4, v6

    invoke-virtual/range {v0 .. v5}, Ljdk/internal/misc/NeoUnsafe;->weakCompareAndSetIntAcquire(Ljava/lang/Object;JII)Z

    move-result v0

    if-eqz v0, :cond_0

    return v6
.end method

.method public final getAndBitwiseOrIntRelease(Ljava/lang/Object;JI)I
    .locals 7

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Ljdk/internal/misc/NeoUnsafe;->getInt(Ljava/lang/Object;J)I

    move-result v6

    or-int v5, v6, p4

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v4, v6

    invoke-virtual/range {v0 .. v5}, Ljdk/internal/misc/NeoUnsafe;->weakCompareAndSetIntRelease(Ljava/lang/Object;JII)Z

    move-result v0

    if-eqz v0, :cond_0

    return v6
.end method

.method public final getAndBitwiseOrLong(Ljava/lang/Object;JJ)J
    .locals 10

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Ljdk/internal/misc/NeoUnsafe;->getLongVolatile(Ljava/lang/Object;J)J

    move-result-wide v8

    or-long v6, v8, p4

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, v8

    invoke-virtual/range {v0 .. v7}, Ljdk/internal/misc/NeoUnsafe;->weakCompareAndSetLong(Ljava/lang/Object;JJJ)Z

    move-result v0

    if-eqz v0, :cond_0

    return-wide v8
.end method

.method public final getAndBitwiseOrLongAcquire(Ljava/lang/Object;JJ)J
    .locals 10

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Ljdk/internal/misc/NeoUnsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v8

    or-long v6, v8, p4

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, v8

    invoke-virtual/range {v0 .. v7}, Ljdk/internal/misc/NeoUnsafe;->weakCompareAndSetLongAcquire(Ljava/lang/Object;JJJ)Z

    move-result v0

    if-eqz v0, :cond_0

    return-wide v8
.end method

.method public final getAndBitwiseOrLongRelease(Ljava/lang/Object;JJ)J
    .locals 10

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Ljdk/internal/misc/NeoUnsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v8

    or-long v6, v8, p4

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, v8

    invoke-virtual/range {v0 .. v7}, Ljdk/internal/misc/NeoUnsafe;->weakCompareAndSetLongRelease(Ljava/lang/Object;JJJ)Z

    move-result v0

    if-eqz v0, :cond_0

    return-wide v8
.end method

.method public final getAndBitwiseOrShort(Ljava/lang/Object;JS)S
    .locals 7

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Ljdk/internal/misc/NeoUnsafe;->getShortVolatile(Ljava/lang/Object;J)S

    move-result v6

    or-int v0, v6, p4

    int-to-short v5, v0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v4, v6

    invoke-virtual/range {v0 .. v5}, Ljdk/internal/misc/NeoUnsafe;->weakCompareAndSetShort(Ljava/lang/Object;JSS)Z

    move-result v0

    if-eqz v0, :cond_0

    return v6
.end method

.method public final getAndBitwiseOrShortAcquire(Ljava/lang/Object;JS)S
    .locals 7

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Ljdk/internal/misc/NeoUnsafe;->getShort(Ljava/lang/Object;J)S

    move-result v6

    or-int v0, v6, p4

    int-to-short v5, v0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v4, v6

    invoke-virtual/range {v0 .. v5}, Ljdk/internal/misc/NeoUnsafe;->weakCompareAndSetShortAcquire(Ljava/lang/Object;JSS)Z

    move-result v0

    if-eqz v0, :cond_0

    return v6
.end method

.method public final getAndBitwiseOrShortRelease(Ljava/lang/Object;JS)S
    .locals 7

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Ljdk/internal/misc/NeoUnsafe;->getShort(Ljava/lang/Object;J)S

    move-result v6

    or-int v0, v6, p4

    int-to-short v5, v0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v4, v6

    invoke-virtual/range {v0 .. v5}, Ljdk/internal/misc/NeoUnsafe;->weakCompareAndSetShortRelease(Ljava/lang/Object;JSS)Z

    move-result v0

    if-eqz v0, :cond_0

    return v6
.end method

.method public final getAndBitwiseXorBoolean(Ljava/lang/Object;JZ)Z
    .locals 0

    invoke-direct {p0, p4}, Ljdk/internal/misc/NeoUnsafe;->bool2byte(Z)B

    move-result p4

    invoke-virtual {p0, p1, p2, p3, p4}, Ljdk/internal/misc/NeoUnsafe;->getAndBitwiseXorByte(Ljava/lang/Object;JB)B

    move-result p1

    invoke-direct {p0, p1}, Ljdk/internal/misc/NeoUnsafe;->byte2bool(B)Z

    move-result p0

    return p0
.end method

.method public final getAndBitwiseXorBooleanAcquire(Ljava/lang/Object;JZ)Z
    .locals 0

    invoke-direct {p0, p4}, Ljdk/internal/misc/NeoUnsafe;->bool2byte(Z)B

    move-result p4

    invoke-virtual {p0, p1, p2, p3, p4}, Ljdk/internal/misc/NeoUnsafe;->getAndBitwiseXorByteAcquire(Ljava/lang/Object;JB)B

    move-result p1

    invoke-direct {p0, p1}, Ljdk/internal/misc/NeoUnsafe;->byte2bool(B)Z

    move-result p0

    return p0
.end method

.method public final getAndBitwiseXorBooleanRelease(Ljava/lang/Object;JZ)Z
    .locals 0

    invoke-direct {p0, p4}, Ljdk/internal/misc/NeoUnsafe;->bool2byte(Z)B

    move-result p4

    invoke-virtual {p0, p1, p2, p3, p4}, Ljdk/internal/misc/NeoUnsafe;->getAndBitwiseXorByteRelease(Ljava/lang/Object;JB)B

    move-result p1

    invoke-direct {p0, p1}, Ljdk/internal/misc/NeoUnsafe;->byte2bool(B)Z

    move-result p0

    return p0
.end method

.method public final getAndBitwiseXorByte(Ljava/lang/Object;JB)B
    .locals 7

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Ljdk/internal/misc/NeoUnsafe;->getByteVolatile(Ljava/lang/Object;J)B

    move-result v6

    xor-int v0, v6, p4

    int-to-byte v5, v0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v4, v6

    invoke-virtual/range {v0 .. v5}, Ljdk/internal/misc/NeoUnsafe;->weakCompareAndSetByte(Ljava/lang/Object;JBB)Z

    move-result v0

    if-eqz v0, :cond_0

    return v6
.end method

.method public final getAndBitwiseXorByteAcquire(Ljava/lang/Object;JB)B
    .locals 7

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Ljdk/internal/misc/NeoUnsafe;->getByte(Ljava/lang/Object;J)B

    move-result v6

    xor-int v0, v6, p4

    int-to-byte v5, v0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v4, v6

    invoke-virtual/range {v0 .. v5}, Ljdk/internal/misc/NeoUnsafe;->weakCompareAndSetByteAcquire(Ljava/lang/Object;JBB)Z

    move-result v0

    if-eqz v0, :cond_0

    return v6
.end method

.method public final getAndBitwiseXorByteRelease(Ljava/lang/Object;JB)B
    .locals 7

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Ljdk/internal/misc/NeoUnsafe;->getByte(Ljava/lang/Object;J)B

    move-result v6

    xor-int v0, v6, p4

    int-to-byte v5, v0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v4, v6

    invoke-virtual/range {v0 .. v5}, Ljdk/internal/misc/NeoUnsafe;->weakCompareAndSetByteRelease(Ljava/lang/Object;JBB)Z

    move-result v0

    if-eqz v0, :cond_0

    return v6
.end method

.method public final getAndBitwiseXorChar(Ljava/lang/Object;JC)C
    .locals 0

    invoke-direct {p0, p4}, Ljdk/internal/misc/NeoUnsafe;->c2s(C)S

    move-result p4

    invoke-virtual {p0, p1, p2, p3, p4}, Ljdk/internal/misc/NeoUnsafe;->getAndBitwiseXorShort(Ljava/lang/Object;JS)S

    move-result p1

    invoke-direct {p0, p1}, Ljdk/internal/misc/NeoUnsafe;->s2c(S)C

    move-result p0

    return p0
.end method

.method public final getAndBitwiseXorCharAcquire(Ljava/lang/Object;JC)C
    .locals 0

    invoke-direct {p0, p4}, Ljdk/internal/misc/NeoUnsafe;->c2s(C)S

    move-result p4

    invoke-virtual {p0, p1, p2, p3, p4}, Ljdk/internal/misc/NeoUnsafe;->getAndBitwiseXorShortAcquire(Ljava/lang/Object;JS)S

    move-result p1

    invoke-direct {p0, p1}, Ljdk/internal/misc/NeoUnsafe;->s2c(S)C

    move-result p0

    return p0
.end method

.method public final getAndBitwiseXorCharRelease(Ljava/lang/Object;JC)C
    .locals 0

    invoke-direct {p0, p4}, Ljdk/internal/misc/NeoUnsafe;->c2s(C)S

    move-result p4

    invoke-virtual {p0, p1, p2, p3, p4}, Ljdk/internal/misc/NeoUnsafe;->getAndBitwiseXorShortRelease(Ljava/lang/Object;JS)S

    move-result p1

    invoke-direct {p0, p1}, Ljdk/internal/misc/NeoUnsafe;->s2c(S)C

    move-result p0

    return p0
.end method

.method public final getAndBitwiseXorInt(Ljava/lang/Object;JI)I
    .locals 7

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Ljdk/internal/misc/NeoUnsafe;->getIntVolatile(Ljava/lang/Object;J)I

    move-result v6

    xor-int v5, v6, p4

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v4, v6

    invoke-virtual/range {v0 .. v5}, Ljdk/internal/misc/NeoUnsafe;->weakCompareAndSetInt(Ljava/lang/Object;JII)Z

    move-result v0

    if-eqz v0, :cond_0

    return v6
.end method

.method public final getAndBitwiseXorIntAcquire(Ljava/lang/Object;JI)I
    .locals 7

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Ljdk/internal/misc/NeoUnsafe;->getInt(Ljava/lang/Object;J)I

    move-result v6

    xor-int v5, v6, p4

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v4, v6

    invoke-virtual/range {v0 .. v5}, Ljdk/internal/misc/NeoUnsafe;->weakCompareAndSetIntAcquire(Ljava/lang/Object;JII)Z

    move-result v0

    if-eqz v0, :cond_0

    return v6
.end method

.method public final getAndBitwiseXorIntRelease(Ljava/lang/Object;JI)I
    .locals 7

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Ljdk/internal/misc/NeoUnsafe;->getInt(Ljava/lang/Object;J)I

    move-result v6

    xor-int v5, v6, p4

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v4, v6

    invoke-virtual/range {v0 .. v5}, Ljdk/internal/misc/NeoUnsafe;->weakCompareAndSetIntRelease(Ljava/lang/Object;JII)Z

    move-result v0

    if-eqz v0, :cond_0

    return v6
.end method

.method public final getAndBitwiseXorLong(Ljava/lang/Object;JJ)J
    .locals 10

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Ljdk/internal/misc/NeoUnsafe;->getLongVolatile(Ljava/lang/Object;J)J

    move-result-wide v8

    xor-long v6, v8, p4

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, v8

    invoke-virtual/range {v0 .. v7}, Ljdk/internal/misc/NeoUnsafe;->weakCompareAndSetLong(Ljava/lang/Object;JJJ)Z

    move-result v0

    if-eqz v0, :cond_0

    return-wide v8
.end method

.method public final getAndBitwiseXorLongAcquire(Ljava/lang/Object;JJ)J
    .locals 10

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Ljdk/internal/misc/NeoUnsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v8

    xor-long v6, v8, p4

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, v8

    invoke-virtual/range {v0 .. v7}, Ljdk/internal/misc/NeoUnsafe;->weakCompareAndSetLongAcquire(Ljava/lang/Object;JJJ)Z

    move-result v0

    if-eqz v0, :cond_0

    return-wide v8
.end method

.method public final getAndBitwiseXorLongRelease(Ljava/lang/Object;JJ)J
    .locals 10

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Ljdk/internal/misc/NeoUnsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v8

    xor-long v6, v8, p4

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, v8

    invoke-virtual/range {v0 .. v7}, Ljdk/internal/misc/NeoUnsafe;->weakCompareAndSetLongRelease(Ljava/lang/Object;JJJ)Z

    move-result v0

    if-eqz v0, :cond_0

    return-wide v8
.end method

.method public final getAndBitwiseXorShort(Ljava/lang/Object;JS)S
    .locals 7

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Ljdk/internal/misc/NeoUnsafe;->getShortVolatile(Ljava/lang/Object;J)S

    move-result v6

    xor-int v0, v6, p4

    int-to-short v5, v0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v4, v6

    invoke-virtual/range {v0 .. v5}, Ljdk/internal/misc/NeoUnsafe;->weakCompareAndSetShort(Ljava/lang/Object;JSS)Z

    move-result v0

    if-eqz v0, :cond_0

    return v6
.end method

.method public final getAndBitwiseXorShortAcquire(Ljava/lang/Object;JS)S
    .locals 7

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Ljdk/internal/misc/NeoUnsafe;->getShort(Ljava/lang/Object;J)S

    move-result v6

    xor-int v0, v6, p4

    int-to-short v5, v0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v4, v6

    invoke-virtual/range {v0 .. v5}, Ljdk/internal/misc/NeoUnsafe;->weakCompareAndSetShortAcquire(Ljava/lang/Object;JSS)Z

    move-result v0

    if-eqz v0, :cond_0

    return v6
.end method

.method public final getAndBitwiseXorShortRelease(Ljava/lang/Object;JS)S
    .locals 7

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Ljdk/internal/misc/NeoUnsafe;->getShort(Ljava/lang/Object;J)S

    move-result v6

    xor-int v0, v6, p4

    int-to-short v5, v0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v4, v6

    invoke-virtual/range {v0 .. v5}, Ljdk/internal/misc/NeoUnsafe;->weakCompareAndSetShortRelease(Ljava/lang/Object;JSS)Z

    move-result v0

    if-eqz v0, :cond_0

    return v6
.end method

.method public final getAndSetBoolean(Ljava/lang/Object;JZ)Z
    .locals 0

    invoke-direct {p0, p4}, Ljdk/internal/misc/NeoUnsafe;->bool2byte(Z)B

    move-result p4

    invoke-virtual {p0, p1, p2, p3, p4}, Ljdk/internal/misc/NeoUnsafe;->getAndSetByte(Ljava/lang/Object;JB)B

    move-result p1

    invoke-direct {p0, p1}, Ljdk/internal/misc/NeoUnsafe;->byte2bool(B)Z

    move-result p0

    return p0
.end method

.method public final getAndSetBooleanAcquire(Ljava/lang/Object;JZ)Z
    .locals 0

    invoke-direct {p0, p4}, Ljdk/internal/misc/NeoUnsafe;->bool2byte(Z)B

    move-result p4

    invoke-virtual {p0, p1, p2, p3, p4}, Ljdk/internal/misc/NeoUnsafe;->getAndSetByteAcquire(Ljava/lang/Object;JB)B

    move-result p1

    invoke-direct {p0, p1}, Ljdk/internal/misc/NeoUnsafe;->byte2bool(B)Z

    move-result p0

    return p0
.end method

.method public final getAndSetBooleanRelease(Ljava/lang/Object;JZ)Z
    .locals 0

    invoke-direct {p0, p4}, Ljdk/internal/misc/NeoUnsafe;->bool2byte(Z)B

    move-result p4

    invoke-virtual {p0, p1, p2, p3, p4}, Ljdk/internal/misc/NeoUnsafe;->getAndSetByteRelease(Ljava/lang/Object;JB)B

    move-result p1

    invoke-direct {p0, p1}, Ljdk/internal/misc/NeoUnsafe;->byte2bool(B)Z

    move-result p0

    return p0
.end method

.method public final getAndSetByte(Ljava/lang/Object;JB)B
    .locals 7

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Ljdk/internal/misc/NeoUnsafe;->getByteVolatile(Ljava/lang/Object;J)B

    move-result v6

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v4, v6

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Ljdk/internal/misc/NeoUnsafe;->weakCompareAndSetByte(Ljava/lang/Object;JBB)Z

    move-result v0

    if-eqz v0, :cond_0

    return v6
.end method

.method public final getAndSetByteAcquire(Ljava/lang/Object;JB)B
    .locals 7

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Ljdk/internal/misc/NeoUnsafe;->getByteAcquire(Ljava/lang/Object;J)B

    move-result v6

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v4, v6

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Ljdk/internal/misc/NeoUnsafe;->weakCompareAndSetByteAcquire(Ljava/lang/Object;JBB)Z

    move-result v0

    if-eqz v0, :cond_0

    return v6
.end method

.method public final getAndSetByteRelease(Ljava/lang/Object;JB)B
    .locals 7

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Ljdk/internal/misc/NeoUnsafe;->getByte(Ljava/lang/Object;J)B

    move-result v6

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v4, v6

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Ljdk/internal/misc/NeoUnsafe;->weakCompareAndSetByteRelease(Ljava/lang/Object;JBB)Z

    move-result v0

    if-eqz v0, :cond_0

    return v6
.end method

.method public final getAndSetChar(Ljava/lang/Object;JC)C
    .locals 0

    invoke-direct {p0, p4}, Ljdk/internal/misc/NeoUnsafe;->c2s(C)S

    move-result p4

    invoke-virtual {p0, p1, p2, p3, p4}, Ljdk/internal/misc/NeoUnsafe;->getAndSetShort(Ljava/lang/Object;JS)S

    move-result p1

    invoke-direct {p0, p1}, Ljdk/internal/misc/NeoUnsafe;->s2c(S)C

    move-result p0

    return p0
.end method

.method public final getAndSetCharAcquire(Ljava/lang/Object;JC)C
    .locals 0

    invoke-direct {p0, p4}, Ljdk/internal/misc/NeoUnsafe;->c2s(C)S

    move-result p4

    invoke-virtual {p0, p1, p2, p3, p4}, Ljdk/internal/misc/NeoUnsafe;->getAndSetShortAcquire(Ljava/lang/Object;JS)S

    move-result p1

    invoke-direct {p0, p1}, Ljdk/internal/misc/NeoUnsafe;->s2c(S)C

    move-result p0

    return p0
.end method

.method public final getAndSetCharRelease(Ljava/lang/Object;JC)C
    .locals 0

    invoke-direct {p0, p4}, Ljdk/internal/misc/NeoUnsafe;->c2s(C)S

    move-result p4

    invoke-virtual {p0, p1, p2, p3, p4}, Ljdk/internal/misc/NeoUnsafe;->getAndSetShortRelease(Ljava/lang/Object;JS)S

    move-result p1

    invoke-direct {p0, p1}, Ljdk/internal/misc/NeoUnsafe;->s2c(S)C

    move-result p0

    return p0
.end method

.method public final getAndSetDouble(Ljava/lang/Object;JD)D
    .locals 6

    invoke-static {p4, p5}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v4

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    invoke-virtual/range {v0 .. v5}, Ljdk/internal/misc/NeoUnsafe;->getAndSetLong(Ljava/lang/Object;JJ)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide p0

    return-wide p0
.end method

.method public final getAndSetDoubleAcquire(Ljava/lang/Object;JD)D
    .locals 6

    invoke-static {p4, p5}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v4

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    invoke-virtual/range {v0 .. v5}, Ljdk/internal/misc/NeoUnsafe;->getAndSetLongAcquire(Ljava/lang/Object;JJ)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide p0

    return-wide p0
.end method

.method public final getAndSetDoubleRelease(Ljava/lang/Object;JD)D
    .locals 6

    invoke-static {p4, p5}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v4

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    invoke-virtual/range {v0 .. v5}, Ljdk/internal/misc/NeoUnsafe;->getAndSetLongRelease(Ljava/lang/Object;JJ)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide p0

    return-wide p0
.end method

.method public final getAndSetFloat(Ljava/lang/Object;JF)F
    .locals 0

    invoke-static {p4}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p4

    invoke-virtual {p0, p1, p2, p3, p4}, Ljdk/internal/misc/NeoUnsafe;->getAndSetInt(Ljava/lang/Object;JI)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    return p0
.end method

.method public final getAndSetFloatAcquire(Ljava/lang/Object;JF)F
    .locals 0

    invoke-static {p4}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p4

    invoke-virtual {p0, p1, p2, p3, p4}, Ljdk/internal/misc/NeoUnsafe;->getAndSetIntAcquire(Ljava/lang/Object;JI)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    return p0
.end method

.method public final getAndSetFloatRelease(Ljava/lang/Object;JF)F
    .locals 0

    invoke-static {p4}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p4

    invoke-virtual {p0, p1, p2, p3, p4}, Ljdk/internal/misc/NeoUnsafe;->getAndSetIntRelease(Ljava/lang/Object;JI)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    return p0
.end method

.method public final getAndSetInt(Ljava/lang/Object;JI)I
    .locals 7

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Ljdk/internal/misc/NeoUnsafe;->getIntVolatile(Ljava/lang/Object;J)I

    move-result v6

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v4, v6

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Ljdk/internal/misc/NeoUnsafe;->weakCompareAndSetInt(Ljava/lang/Object;JII)Z

    move-result v0

    if-eqz v0, :cond_0

    return v6
.end method

.method public final getAndSetIntAcquire(Ljava/lang/Object;JI)I
    .locals 7

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Ljdk/internal/misc/NeoUnsafe;->getIntAcquire(Ljava/lang/Object;J)I

    move-result v6

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v4, v6

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Ljdk/internal/misc/NeoUnsafe;->weakCompareAndSetIntAcquire(Ljava/lang/Object;JII)Z

    move-result v0

    if-eqz v0, :cond_0

    return v6
.end method

.method public final getAndSetIntRelease(Ljava/lang/Object;JI)I
    .locals 7

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Ljdk/internal/misc/NeoUnsafe;->getInt(Ljava/lang/Object;J)I

    move-result v6

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v4, v6

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Ljdk/internal/misc/NeoUnsafe;->weakCompareAndSetIntRelease(Ljava/lang/Object;JII)Z

    move-result v0

    if-eqz v0, :cond_0

    return v6
.end method

.method public final getAndSetLong(Ljava/lang/Object;JJ)J
    .locals 10

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Ljdk/internal/misc/NeoUnsafe;->getLongVolatile(Ljava/lang/Object;J)J

    move-result-wide v8

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, v8

    move-wide v6, p4

    invoke-virtual/range {v0 .. v7}, Ljdk/internal/misc/NeoUnsafe;->weakCompareAndSetLong(Ljava/lang/Object;JJJ)Z

    move-result v0

    if-eqz v0, :cond_0

    return-wide v8
.end method

.method public final getAndSetLongAcquire(Ljava/lang/Object;JJ)J
    .locals 10

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Ljdk/internal/misc/NeoUnsafe;->getLongAcquire(Ljava/lang/Object;J)J

    move-result-wide v8

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, v8

    move-wide v6, p4

    invoke-virtual/range {v0 .. v7}, Ljdk/internal/misc/NeoUnsafe;->weakCompareAndSetLongAcquire(Ljava/lang/Object;JJJ)Z

    move-result v0

    if-eqz v0, :cond_0

    return-wide v8
.end method

.method public final getAndSetLongRelease(Ljava/lang/Object;JJ)J
    .locals 10

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Ljdk/internal/misc/NeoUnsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v8

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, v8

    move-wide v6, p4

    invoke-virtual/range {v0 .. v7}, Ljdk/internal/misc/NeoUnsafe;->weakCompareAndSetLongRelease(Ljava/lang/Object;JJJ)Z

    move-result v0

    if-eqz v0, :cond_0

    return-wide v8
.end method

.method public final getAndSetObject(Ljava/lang/Object;JLjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Ljdk/internal/misc/NeoUnsafe;->getAndSetReference(Ljava/lang/Object;JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final getAndSetObjectAcquire(Ljava/lang/Object;JLjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Ljdk/internal/misc/NeoUnsafe;->getAndSetReferenceAcquire(Ljava/lang/Object;JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final getAndSetObjectRelease(Ljava/lang/Object;JLjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Ljdk/internal/misc/NeoUnsafe;->getAndSetReferenceRelease(Ljava/lang/Object;JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final getAndSetReference(Ljava/lang/Object;JLjava/lang/Object;)Ljava/lang/Object;
    .locals 7

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Ljdk/internal/misc/NeoUnsafe;->getReferenceVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, v6

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Ljdk/internal/misc/NeoUnsafe;->weakCompareAndSetReference(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object v6
.end method

.method public final getAndSetReferenceAcquire(Ljava/lang/Object;JLjava/lang/Object;)Ljava/lang/Object;
    .locals 7

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Ljdk/internal/misc/NeoUnsafe;->getReferenceAcquire(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, v6

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Ljdk/internal/misc/NeoUnsafe;->weakCompareAndSetReferenceAcquire(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object v6
.end method

.method public final getAndSetReferenceRelease(Ljava/lang/Object;JLjava/lang/Object;)Ljava/lang/Object;
    .locals 7

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Ljdk/internal/misc/NeoUnsafe;->getReference(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, v6

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Ljdk/internal/misc/NeoUnsafe;->weakCompareAndSetReferenceRelease(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object v6
.end method

.method public final getAndSetShort(Ljava/lang/Object;JS)S
    .locals 7

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Ljdk/internal/misc/NeoUnsafe;->getShortVolatile(Ljava/lang/Object;J)S

    move-result v6

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v4, v6

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Ljdk/internal/misc/NeoUnsafe;->weakCompareAndSetShort(Ljava/lang/Object;JSS)Z

    move-result v0

    if-eqz v0, :cond_0

    return v6
.end method

.method public final getAndSetShortAcquire(Ljava/lang/Object;JS)S
    .locals 7

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Ljdk/internal/misc/NeoUnsafe;->getShortAcquire(Ljava/lang/Object;J)S

    move-result v6

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v4, v6

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Ljdk/internal/misc/NeoUnsafe;->weakCompareAndSetShortAcquire(Ljava/lang/Object;JSS)Z

    move-result v0

    if-eqz v0, :cond_0

    return v6
.end method

.method public final getAndSetShortRelease(Ljava/lang/Object;JS)S
    .locals 7

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Ljdk/internal/misc/NeoUnsafe;->getShort(Ljava/lang/Object;J)S

    move-result v6

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v4, v6

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Ljdk/internal/misc/NeoUnsafe;->weakCompareAndSetShortRelease(Ljava/lang/Object;JSS)Z

    move-result v0

    if-eqz v0, :cond_0

    return v6
.end method

.method public getBoolean(Ljava/lang/Object;J)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final getBooleanAcquire(Ljava/lang/Object;J)Z
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Ljdk/internal/misc/NeoUnsafe;->getBooleanVolatile(Ljava/lang/Object;J)Z

    move-result p0

    return p0
.end method

.method public final getBooleanOpaque(Ljava/lang/Object;J)Z
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Ljdk/internal/misc/NeoUnsafe;->getBooleanVolatile(Ljava/lang/Object;J)Z

    move-result p0

    return p0
.end method

.method public getBooleanVolatile(Ljava/lang/Object;J)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getByte(J)B
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0, p1, p2}, Ljdk/internal/misc/NeoUnsafe;->getByte(Ljava/lang/Object;J)B

    move-result p0

    return p0
.end method

.method public getByte(Ljava/lang/Object;J)B
    .locals 0

    .line 1
    const/4 p0, 0x0

    return p0
.end method

.method public final getByteAcquire(Ljava/lang/Object;J)B
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Ljdk/internal/misc/NeoUnsafe;->getByteVolatile(Ljava/lang/Object;J)B

    move-result p0

    return p0
.end method

.method public final getByteOpaque(Ljava/lang/Object;J)B
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Ljdk/internal/misc/NeoUnsafe;->getByteVolatile(Ljava/lang/Object;J)B

    move-result p0

    return p0
.end method

.method public getByteVolatile(Ljava/lang/Object;J)B
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getChar(J)C
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0, p1, p2}, Ljdk/internal/misc/NeoUnsafe;->getChar(Ljava/lang/Object;J)C

    move-result p0

    return p0
.end method

.method public getChar(Ljava/lang/Object;J)C
    .locals 0

    .line 1
    const/16 p0, 0x30

    return p0
.end method

.method public final getCharAcquire(Ljava/lang/Object;J)C
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Ljdk/internal/misc/NeoUnsafe;->getCharVolatile(Ljava/lang/Object;J)C

    move-result p0

    return p0
.end method

.method public final getCharOpaque(Ljava/lang/Object;J)C
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Ljdk/internal/misc/NeoUnsafe;->getCharVolatile(Ljava/lang/Object;J)C

    move-result p0

    return p0
.end method

.method public final getCharUnaligned(Ljava/lang/Object;J)C
    .locals 6

    const-wide/16 v0, 0x1

    and-long v2, p2, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Ljdk/internal/misc/NeoUnsafe;->getChar(Ljava/lang/Object;J)C

    move-result p0

    return p0

    .line 2
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Ljdk/internal/misc/NeoUnsafe;->getByte(Ljava/lang/Object;J)B

    move-result v2

    add-long/2addr p2, v0

    .line 3
    invoke-virtual {p0, p1, p2, p3}, Ljdk/internal/misc/NeoUnsafe;->getByte(Ljava/lang/Object;J)B

    move-result p0

    .line 4
    invoke-static {v2, p0}, Ljdk/internal/misc/NeoUnsafe;->makeShort(BB)S

    move-result p0

    int-to-char p0, p0

    return p0
.end method

.method public final getCharUnaligned(Ljava/lang/Object;JZ)C
    .locals 0

    .line 5
    invoke-virtual {p0, p1, p2, p3}, Ljdk/internal/misc/NeoUnsafe;->getCharUnaligned(Ljava/lang/Object;J)C

    move-result p0

    invoke-static {p4, p0}, Ljdk/internal/misc/NeoUnsafe;->convEndian(ZC)C

    move-result p0

    return p0
.end method

.method public getCharVolatile(Ljava/lang/Object;J)C
    .locals 0

    const/16 p0, 0x30

    return p0
.end method

.method public getDouble(J)D
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0, p1, p2}, Ljdk/internal/misc/NeoUnsafe;->getDouble(Ljava/lang/Object;J)D

    move-result-wide p0

    return-wide p0
.end method

.method public getDouble(Ljava/lang/Object;J)D
    .locals 0

    .line 1
    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public final getDoubleAcquire(Ljava/lang/Object;J)D
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Ljdk/internal/misc/NeoUnsafe;->getDoubleVolatile(Ljava/lang/Object;J)D

    move-result-wide p0

    return-wide p0
.end method

.method public final getDoubleOpaque(Ljava/lang/Object;J)D
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Ljdk/internal/misc/NeoUnsafe;->getDoubleVolatile(Ljava/lang/Object;J)D

    move-result-wide p0

    return-wide p0
.end method

.method public getDoubleVolatile(Ljava/lang/Object;J)D
    .locals 0

    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public getFloat(J)F
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0, p1, p2}, Ljdk/internal/misc/NeoUnsafe;->getFloat(Ljava/lang/Object;J)F

    move-result p0

    return p0
.end method

.method public getFloat(Ljava/lang/Object;J)F
    .locals 0

    .line 1
    const/4 p0, 0x0

    return p0
.end method

.method public final getFloatAcquire(Ljava/lang/Object;J)F
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Ljdk/internal/misc/NeoUnsafe;->getFloatVolatile(Ljava/lang/Object;J)F

    move-result p0

    return p0
.end method

.method public final getFloatOpaque(Ljava/lang/Object;J)F
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Ljdk/internal/misc/NeoUnsafe;->getFloatVolatile(Ljava/lang/Object;J)F

    move-result p0

    return p0
.end method

.method public getFloatVolatile(Ljava/lang/Object;J)F
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getInt(J)I
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0, p1, p2}, Ljdk/internal/misc/NeoUnsafe;->getInt(Ljava/lang/Object;J)I

    move-result p0

    return p0
.end method

.method public getInt(Ljava/lang/Object;J)I
    .locals 0

    .line 1
    const/4 p0, 0x0

    return p0
.end method

.method public final getIntAcquire(Ljava/lang/Object;J)I
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Ljdk/internal/misc/NeoUnsafe;->getIntVolatile(Ljava/lang/Object;J)I

    move-result p0

    return p0
.end method

.method public final getIntOpaque(Ljava/lang/Object;J)I
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Ljdk/internal/misc/NeoUnsafe;->getIntVolatile(Ljava/lang/Object;J)I

    move-result p0

    return p0
.end method

.method public final getIntUnaligned(Ljava/lang/Object;J)I
    .locals 8

    const-wide/16 v0, 0x3

    and-long v2, p2, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Ljdk/internal/misc/NeoUnsafe;->getInt(Ljava/lang/Object;J)I

    move-result p0

    return p0

    :cond_0
    const-wide/16 v2, 0x1

    and-long v6, p2, v2

    cmp-long v4, v6, v4

    const-wide/16 v5, 0x2

    if-nez v4, :cond_1

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Ljdk/internal/misc/NeoUnsafe;->getShort(Ljava/lang/Object;J)S

    move-result v0

    add-long/2addr p2, v5

    .line 3
    invoke-virtual {p0, p1, p2, p3}, Ljdk/internal/misc/NeoUnsafe;->getShort(Ljava/lang/Object;J)S

    move-result p0

    .line 4
    invoke-static {v0, p0}, Ljdk/internal/misc/NeoUnsafe;->makeInt(SS)I

    move-result p0

    return p0

    .line 5
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Ljdk/internal/misc/NeoUnsafe;->getByte(Ljava/lang/Object;J)B

    move-result v4

    add-long/2addr v2, p2

    .line 6
    invoke-virtual {p0, p1, v2, v3}, Ljdk/internal/misc/NeoUnsafe;->getByte(Ljava/lang/Object;J)B

    move-result v2

    add-long/2addr v5, p2

    .line 7
    invoke-virtual {p0, p1, v5, v6}, Ljdk/internal/misc/NeoUnsafe;->getByte(Ljava/lang/Object;J)B

    move-result v3

    add-long/2addr p2, v0

    .line 8
    invoke-virtual {p0, p1, p2, p3}, Ljdk/internal/misc/NeoUnsafe;->getByte(Ljava/lang/Object;J)B

    move-result p0

    .line 9
    invoke-static {v4, v2, v3, p0}, Ljdk/internal/misc/NeoUnsafe;->makeInt(BBBB)I

    move-result p0

    return p0
.end method

.method public final getIntUnaligned(Ljava/lang/Object;JZ)I
    .locals 0

    .line 10
    invoke-virtual {p0, p1, p2, p3}, Ljdk/internal/misc/NeoUnsafe;->getIntUnaligned(Ljava/lang/Object;J)I

    move-result p0

    invoke-static {p4, p0}, Ljdk/internal/misc/NeoUnsafe;->convEndian(ZI)I

    move-result p0

    return p0
.end method

.method public getIntVolatile(Ljava/lang/Object;J)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getLoadAverage([DI)I
    .locals 1

    if-ltz p2, :cond_0

    const/4 v0, 0x3

    if-gt p2, v0, :cond_0

    array-length v0, p1

    if-gt p2, v0, :cond_0

    invoke-direct {p0, p1, p2}, Ljdk/internal/misc/NeoUnsafe;->getLoadAverage0([DI)I

    move-result p0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw p0
.end method

.method public getLong(J)J
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0, p1, p2}, Ljdk/internal/misc/NeoUnsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide p0

    return-wide p0
.end method

.method public getLong(Ljava/lang/Object;J)J
    .locals 0

    .line 1
    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public final getLongAcquire(Ljava/lang/Object;J)J
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Ljdk/internal/misc/NeoUnsafe;->getLongVolatile(Ljava/lang/Object;J)J

    move-result-wide p0

    return-wide p0
.end method

.method public final getLongOpaque(Ljava/lang/Object;J)J
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Ljdk/internal/misc/NeoUnsafe;->getLongVolatile(Ljava/lang/Object;J)J

    move-result-wide p0

    return-wide p0
.end method

.method public final getLongUnaligned(Ljava/lang/Object;J)J
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p1

    const-wide/16 v2, 0x7

    and-long v4, p2, v2

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    .line 1
    invoke-virtual/range {p0 .. p3}, Ljdk/internal/misc/NeoUnsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v4, 0x3

    and-long v8, p2, v4

    cmp-long v8, v8, v6

    const-wide/16 v9, 0x4

    if-nez v8, :cond_1

    .line 2
    invoke-virtual/range {p0 .. p3}, Ljdk/internal/misc/NeoUnsafe;->getInt(Ljava/lang/Object;J)I

    move-result v2

    add-long v3, p2, v9

    .line 3
    invoke-virtual {p0, v1, v3, v4}, Ljdk/internal/misc/NeoUnsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    .line 4
    invoke-static {v2, v0}, Ljdk/internal/misc/NeoUnsafe;->makeLong(II)J

    move-result-wide v0

    return-wide v0

    :cond_1
    const-wide/16 v11, 0x1

    and-long v13, p2, v11

    cmp-long v6, v13, v6

    const-wide/16 v7, 0x6

    const-wide/16 v13, 0x2

    if-nez v6, :cond_2

    .line 5
    invoke-virtual/range {p0 .. p3}, Ljdk/internal/misc/NeoUnsafe;->getShort(Ljava/lang/Object;J)S

    move-result v2

    add-long v3, p2, v13

    .line 6
    invoke-virtual {p0, v1, v3, v4}, Ljdk/internal/misc/NeoUnsafe;->getShort(Ljava/lang/Object;J)S

    move-result v3

    add-long v4, p2, v9

    .line 7
    invoke-virtual {p0, v1, v4, v5}, Ljdk/internal/misc/NeoUnsafe;->getShort(Ljava/lang/Object;J)S

    move-result v4

    add-long v5, p2, v7

    .line 8
    invoke-virtual {p0, v1, v5, v6}, Ljdk/internal/misc/NeoUnsafe;->getShort(Ljava/lang/Object;J)S

    move-result v0

    .line 9
    invoke-static {v2, v3, v4, v0}, Ljdk/internal/misc/NeoUnsafe;->makeLong(SSSS)J

    move-result-wide v0

    return-wide v0

    .line 10
    :cond_2
    invoke-virtual/range {p0 .. p3}, Ljdk/internal/misc/NeoUnsafe;->getByte(Ljava/lang/Object;J)B

    move-result v6

    add-long v11, p2, v11

    .line 11
    invoke-virtual {p0, v1, v11, v12}, Ljdk/internal/misc/NeoUnsafe;->getByte(Ljava/lang/Object;J)B

    move-result v11

    add-long v12, p2, v13

    .line 12
    invoke-virtual {p0, v1, v12, v13}, Ljdk/internal/misc/NeoUnsafe;->getByte(Ljava/lang/Object;J)B

    move-result v12

    add-long v4, p2, v4

    .line 13
    invoke-virtual {p0, v1, v4, v5}, Ljdk/internal/misc/NeoUnsafe;->getByte(Ljava/lang/Object;J)B

    move-result v5

    add-long v9, p2, v9

    .line 14
    invoke-virtual {p0, v1, v9, v10}, Ljdk/internal/misc/NeoUnsafe;->getByte(Ljava/lang/Object;J)B

    move-result v9

    const-wide/16 v13, 0x5

    add-long v13, p2, v13

    .line 15
    invoke-virtual {p0, v1, v13, v14}, Ljdk/internal/misc/NeoUnsafe;->getByte(Ljava/lang/Object;J)B

    move-result v10

    add-long v7, p2, v7

    .line 16
    invoke-virtual {p0, v1, v7, v8}, Ljdk/internal/misc/NeoUnsafe;->getByte(Ljava/lang/Object;J)B

    move-result v8

    add-long v2, p2, v2

    .line 17
    invoke-virtual {p0, v1, v2, v3}, Ljdk/internal/misc/NeoUnsafe;->getByte(Ljava/lang/Object;J)B

    move-result v0

    move v2, v6

    move v3, v11

    move v4, v12

    move v6, v9

    move v7, v10

    move v9, v0

    .line 18
    invoke-static/range {v2 .. v9}, Ljdk/internal/misc/NeoUnsafe;->makeLong(BBBBBBBB)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getLongUnaligned(Ljava/lang/Object;JZ)J
    .locals 0

    .line 19
    invoke-virtual {p0, p1, p2, p3}, Ljdk/internal/misc/NeoUnsafe;->getLongUnaligned(Ljava/lang/Object;J)J

    move-result-wide p0

    invoke-static {p4, p0, p1}, Ljdk/internal/misc/NeoUnsafe;->convEndian(ZJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public getLongVolatile(Ljava/lang/Object;J)J
    .locals 0

    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public final getObject(Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Ljdk/internal/misc/NeoUnsafe;->getReference(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final getObjectAcquire(Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Ljdk/internal/misc/NeoUnsafe;->getReferenceAcquire(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final getObjectOpaque(Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Ljdk/internal/misc/NeoUnsafe;->getReferenceOpaque(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Ljdk/internal/misc/NeoUnsafe;->getReferenceVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getReference(Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getReferenceAcquire(Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Ljdk/internal/misc/NeoUnsafe;->getReferenceVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final getReferenceOpaque(Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Ljdk/internal/misc/NeoUnsafe;->getReferenceVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getReferenceVolatile(Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getShort(J)S
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0, p1, p2}, Ljdk/internal/misc/NeoUnsafe;->getShort(Ljava/lang/Object;J)S

    move-result p0

    return p0
.end method

.method public getShort(Ljava/lang/Object;J)S
    .locals 0

    .line 1
    const/4 p0, 0x0

    return p0
.end method

.method public final getShortAcquire(Ljava/lang/Object;J)S
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Ljdk/internal/misc/NeoUnsafe;->getShortVolatile(Ljava/lang/Object;J)S

    move-result p0

    return p0
.end method

.method public final getShortOpaque(Ljava/lang/Object;J)S
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Ljdk/internal/misc/NeoUnsafe;->getShortVolatile(Ljava/lang/Object;J)S

    move-result p0

    return p0
.end method

.method public final getShortUnaligned(Ljava/lang/Object;J)S
    .locals 6

    const-wide/16 v0, 0x1

    and-long v2, p2, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Ljdk/internal/misc/NeoUnsafe;->getShort(Ljava/lang/Object;J)S

    move-result p0

    return p0

    .line 2
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Ljdk/internal/misc/NeoUnsafe;->getByte(Ljava/lang/Object;J)B

    move-result v2

    add-long/2addr p2, v0

    .line 3
    invoke-virtual {p0, p1, p2, p3}, Ljdk/internal/misc/NeoUnsafe;->getByte(Ljava/lang/Object;J)B

    move-result p0

    .line 4
    invoke-static {v2, p0}, Ljdk/internal/misc/NeoUnsafe;->makeShort(BB)S

    move-result p0

    return p0
.end method

.method public final getShortUnaligned(Ljava/lang/Object;JZ)S
    .locals 0

    .line 5
    invoke-virtual {p0, p1, p2, p3}, Ljdk/internal/misc/NeoUnsafe;->getShortUnaligned(Ljava/lang/Object;J)S

    move-result p0

    invoke-static {p4, p0}, Ljdk/internal/misc/NeoUnsafe;->convEndian(ZS)S

    move-result p0

    return p0
.end method

.method public getShortVolatile(Ljava/lang/Object;J)S
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getUncompressedObject(J)Ljava/lang/Object;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public invokeCleaner(Ljava/nio/ByteBuffer;)V
    .locals 0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "buffer is non-direct"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final isBigEndian()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public loadFence()V
    .locals 0

    return-void
.end method

.method public final loadLoadFence()V
    .locals 0

    invoke-virtual {p0}, Ljdk/internal/misc/NeoUnsafe;->loadFence()V

    return-void
.end method

.method public objectFieldOffset(Ljava/lang/Class;Ljava/lang/String;)J
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")J"
        }
    .end annotation

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 3
    invoke-direct {p0, p1, p2}, Ljdk/internal/misc/NeoUnsafe;->objectFieldOffset1(Ljava/lang/Class;Ljava/lang/String;)J

    move-result-wide p0

    return-wide p0

    :cond_0
    const/4 p0, 0x0

    .line 4
    throw p0
.end method

.method public objectFieldOffset(Ljava/lang/reflect/Field;)J
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-direct {p0, p1}, Ljdk/internal/misc/NeoUnsafe;->objectFieldOffset0(Ljava/lang/reflect/Field;)J

    move-result-wide p0

    return-wide p0
.end method

.method public pageSize()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public park(ZJ)V
    .locals 0

    return-void
.end method

.method public putAddress(JJ)V
    .locals 6

    const/4 v1, 0x0

    move-object v0, p0

    move-wide v2, p1

    move-wide v4, p3

    .line 2
    invoke-virtual/range {v0 .. v5}, Ljdk/internal/misc/NeoUnsafe;->putAddress(Ljava/lang/Object;JJ)V

    return-void
.end method

.method public putAddress(Ljava/lang/Object;JJ)V
    .locals 0

    .line 1
    invoke-virtual/range {p0 .. p5}, Ljdk/internal/misc/NeoUnsafe;->putLong(Ljava/lang/Object;JJ)V

    return-void
.end method

.method public putBoolean(Ljava/lang/Object;JZ)V
    .locals 0

    return-void
.end method

.method public final putBooleanOpaque(Ljava/lang/Object;JZ)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Ljdk/internal/misc/NeoUnsafe;->putBooleanVolatile(Ljava/lang/Object;JZ)V

    return-void
.end method

.method public final putBooleanRelease(Ljava/lang/Object;JZ)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Ljdk/internal/misc/NeoUnsafe;->putBooleanVolatile(Ljava/lang/Object;JZ)V

    return-void
.end method

.method public putBooleanVolatile(Ljava/lang/Object;JZ)V
    .locals 0

    return-void
.end method

.method public putByte(JB)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0, p1, p2, p3}, Ljdk/internal/misc/NeoUnsafe;->putByte(Ljava/lang/Object;JB)V

    return-void
.end method

.method public putByte(Ljava/lang/Object;JB)V
    .locals 0

    .line 1
    return-void
.end method

.method public final putByteOpaque(Ljava/lang/Object;JB)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Ljdk/internal/misc/NeoUnsafe;->putByteVolatile(Ljava/lang/Object;JB)V

    return-void
.end method

.method public final putByteRelease(Ljava/lang/Object;JB)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Ljdk/internal/misc/NeoUnsafe;->putByteVolatile(Ljava/lang/Object;JB)V

    return-void
.end method

.method public putByteVolatile(Ljava/lang/Object;JB)V
    .locals 0

    return-void
.end method

.method public putChar(JC)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0, p1, p2, p3}, Ljdk/internal/misc/NeoUnsafe;->putChar(Ljava/lang/Object;JC)V

    return-void
.end method

.method public putChar(Ljava/lang/Object;JC)V
    .locals 0

    .line 1
    return-void
.end method

.method public final putCharOpaque(Ljava/lang/Object;JC)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Ljdk/internal/misc/NeoUnsafe;->putCharVolatile(Ljava/lang/Object;JC)V

    return-void
.end method

.method public final putCharRelease(Ljava/lang/Object;JC)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Ljdk/internal/misc/NeoUnsafe;->putCharVolatile(Ljava/lang/Object;JC)V

    return-void
.end method

.method public final putCharUnaligned(Ljava/lang/Object;JC)V
    .locals 0

    int-to-short p4, p4

    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, Ljdk/internal/misc/NeoUnsafe;->putShortUnaligned(Ljava/lang/Object;JS)V

    return-void
.end method

.method public final putCharUnaligned(Ljava/lang/Object;JCZ)V
    .locals 0

    .line 2
    invoke-static {p5, p4}, Ljdk/internal/misc/NeoUnsafe;->convEndian(ZC)C

    move-result p4

    invoke-virtual {p0, p1, p2, p3, p4}, Ljdk/internal/misc/NeoUnsafe;->putCharUnaligned(Ljava/lang/Object;JC)V

    return-void
.end method

.method public putCharVolatile(Ljava/lang/Object;JC)V
    .locals 0

    return-void
.end method

.method public putDouble(JD)V
    .locals 6

    const/4 v1, 0x0

    move-object v0, p0

    move-wide v2, p1

    move-wide v4, p3

    .line 2
    invoke-virtual/range {v0 .. v5}, Ljdk/internal/misc/NeoUnsafe;->putDouble(Ljava/lang/Object;JD)V

    return-void
.end method

.method public putDouble(Ljava/lang/Object;JD)V
    .locals 0

    .line 1
    return-void
.end method

.method public final putDoubleOpaque(Ljava/lang/Object;JD)V
    .locals 0

    invoke-virtual/range {p0 .. p5}, Ljdk/internal/misc/NeoUnsafe;->putDoubleVolatile(Ljava/lang/Object;JD)V

    return-void
.end method

.method public final putDoubleRelease(Ljava/lang/Object;JD)V
    .locals 0

    invoke-virtual/range {p0 .. p5}, Ljdk/internal/misc/NeoUnsafe;->putDoubleVolatile(Ljava/lang/Object;JD)V

    return-void
.end method

.method public putDoubleVolatile(Ljava/lang/Object;JD)V
    .locals 0

    return-void
.end method

.method public putFloat(JF)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0, p1, p2, p3}, Ljdk/internal/misc/NeoUnsafe;->putFloat(Ljava/lang/Object;JF)V

    return-void
.end method

.method public putFloat(Ljava/lang/Object;JF)V
    .locals 0

    .line 1
    return-void
.end method

.method public final putFloatOpaque(Ljava/lang/Object;JF)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Ljdk/internal/misc/NeoUnsafe;->putFloatVolatile(Ljava/lang/Object;JF)V

    return-void
.end method

.method public final putFloatRelease(Ljava/lang/Object;JF)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Ljdk/internal/misc/NeoUnsafe;->putFloatVolatile(Ljava/lang/Object;JF)V

    return-void
.end method

.method public putFloatVolatile(Ljava/lang/Object;JF)V
    .locals 0

    return-void
.end method

.method public putInt(JI)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0, p1, p2, p3}, Ljdk/internal/misc/NeoUnsafe;->putInt(Ljava/lang/Object;JI)V

    return-void
.end method

.method public putInt(Ljava/lang/Object;JI)V
    .locals 0

    .line 1
    return-void
.end method

.method public final putIntOpaque(Ljava/lang/Object;JI)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Ljdk/internal/misc/NeoUnsafe;->putIntVolatile(Ljava/lang/Object;JI)V

    return-void
.end method

.method public final putIntRelease(Ljava/lang/Object;JI)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Ljdk/internal/misc/NeoUnsafe;->putIntVolatile(Ljava/lang/Object;JI)V

    return-void
.end method

.method public final putIntUnaligned(Ljava/lang/Object;JI)V
    .locals 9

    const-wide/16 v0, 0x3

    and-long/2addr v0, p2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, Ljdk/internal/misc/NeoUnsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x1

    and-long/2addr v0, p2

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    shr-int/lit8 v0, p4, 0x0

    int-to-short v5, v0

    ushr-int/lit8 p4, p4, 0x10

    int-to-short v6, p4

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    .line 2
    invoke-direct/range {v1 .. v6}, Ljdk/internal/misc/NeoUnsafe;->putIntParts(Ljava/lang/Object;JSS)V

    goto :goto_0

    :cond_1
    ushr-int/lit8 v0, p4, 0x0

    int-to-byte v5, v0

    ushr-int/lit8 v0, p4, 0x8

    int-to-byte v6, v0

    ushr-int/lit8 v0, p4, 0x10

    int-to-byte v7, v0

    ushr-int/lit8 p4, p4, 0x18

    int-to-byte v8, p4

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    .line 3
    invoke-direct/range {v1 .. v8}, Ljdk/internal/misc/NeoUnsafe;->putIntParts(Ljava/lang/Object;JBBBB)V

    :goto_0
    return-void
.end method

.method public final putIntUnaligned(Ljava/lang/Object;JIZ)V
    .locals 0

    .line 4
    invoke-static {p5, p4}, Ljdk/internal/misc/NeoUnsafe;->convEndian(ZI)I

    move-result p4

    invoke-virtual {p0, p1, p2, p3, p4}, Ljdk/internal/misc/NeoUnsafe;->putIntUnaligned(Ljava/lang/Object;JI)V

    return-void
.end method

.method public putIntVolatile(Ljava/lang/Object;JI)V
    .locals 0

    return-void
.end method

.method public putLong(JJ)V
    .locals 6

    const/4 v1, 0x0

    move-object v0, p0

    move-wide v2, p1

    move-wide v4, p3

    .line 2
    invoke-virtual/range {v0 .. v5}, Ljdk/internal/misc/NeoUnsafe;->putLong(Ljava/lang/Object;JJ)V

    return-void
.end method

.method public putLong(Ljava/lang/Object;JJ)V
    .locals 0

    .line 1
    return-void
.end method

.method public final putLongOpaque(Ljava/lang/Object;JJ)V
    .locals 0

    invoke-virtual/range {p0 .. p5}, Ljdk/internal/misc/NeoUnsafe;->putLongVolatile(Ljava/lang/Object;JJ)V

    return-void
.end method

.method public final putLongRelease(Ljava/lang/Object;JJ)V
    .locals 0

    invoke-virtual/range {p0 .. p5}, Ljdk/internal/misc/NeoUnsafe;->putLongVolatile(Ljava/lang/Object;JJ)V

    return-void
.end method

.method public final putLongUnaligned(Ljava/lang/Object;JJ)V
    .locals 12

    const-wide/16 v0, 0x7

    and-long/2addr v0, p2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 1
    invoke-virtual/range {p0 .. p5}, Ljdk/internal/misc/NeoUnsafe;->putLong(Ljava/lang/Object;JJ)V

    goto/16 :goto_0

    :cond_0
    const-wide/16 v0, 0x3

    and-long/2addr v0, p2

    cmp-long v0, v0, v2

    const/16 v1, 0x20

    const/4 v4, 0x0

    if-nez v0, :cond_1

    shr-long v2, p4, v4

    long-to-int v4, v2

    ushr-long v0, p4, v1

    long-to-int v5, v0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    .line 2
    invoke-direct/range {v0 .. v5}, Ljdk/internal/misc/NeoUnsafe;->putLongParts(Ljava/lang/Object;JII)V

    goto :goto_0

    :cond_1
    const-wide/16 v5, 0x1

    and-long/2addr v5, p2

    cmp-long v0, v5, v2

    const/16 v2, 0x30

    const/16 v3, 0x10

    if-nez v0, :cond_2

    ushr-long v4, p4, v4

    long-to-int v0, v4

    int-to-short v4, v0

    ushr-long v5, p4, v3

    long-to-int v0, v5

    int-to-short v5, v0

    ushr-long v0, p4, v1

    long-to-int v0, v0

    int-to-short v6, v0

    ushr-long v0, p4, v2

    long-to-int v0, v0

    int-to-short v7, v0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    .line 3
    invoke-direct/range {v0 .. v7}, Ljdk/internal/misc/NeoUnsafe;->putLongParts(Ljava/lang/Object;JSSSS)V

    goto :goto_0

    :cond_2
    ushr-long v4, p4, v4

    long-to-int v0, v4

    int-to-byte v4, v0

    const/16 v0, 0x8

    ushr-long v5, p4, v0

    long-to-int v0, v5

    int-to-byte v5, v0

    ushr-long v6, p4, v3

    long-to-int v0, v6

    int-to-byte v6, v0

    const/16 v0, 0x18

    ushr-long v7, p4, v0

    long-to-int v0, v7

    int-to-byte v7, v0

    ushr-long v0, p4, v1

    long-to-int v0, v0

    int-to-byte v8, v0

    const/16 v0, 0x28

    ushr-long v0, p4, v0

    long-to-int v0, v0

    int-to-byte v9, v0

    ushr-long v0, p4, v2

    long-to-int v0, v0

    int-to-byte v10, v0

    const/16 v0, 0x38

    ushr-long v0, p4, v0

    long-to-int v0, v0

    int-to-byte v11, v0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    .line 4
    invoke-direct/range {v0 .. v11}, Ljdk/internal/misc/NeoUnsafe;->putLongParts(Ljava/lang/Object;JBBBBBBBB)V

    :goto_0
    return-void
.end method

.method public final putLongUnaligned(Ljava/lang/Object;JJZ)V
    .locals 6

    .line 5
    invoke-static {p6, p4, p5}, Ljdk/internal/misc/NeoUnsafe;->convEndian(ZJ)J

    move-result-wide v4

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    invoke-virtual/range {v0 .. v5}, Ljdk/internal/misc/NeoUnsafe;->putLongUnaligned(Ljava/lang/Object;JJ)V

    return-void
.end method

.method public putLongVolatile(Ljava/lang/Object;JJ)V
    .locals 0

    return-void
.end method

.method public final putObject(Ljava/lang/Object;JLjava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Ljdk/internal/misc/NeoUnsafe;->putReference(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method

.method public final putObjectOpaque(Ljava/lang/Object;JLjava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Ljdk/internal/misc/NeoUnsafe;->putReferenceOpaque(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method

.method public final putObjectRelease(Ljava/lang/Object;JLjava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Ljdk/internal/misc/NeoUnsafe;->putReferenceRelease(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method

.method public final putObjectVolatile(Ljava/lang/Object;JLjava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Ljdk/internal/misc/NeoUnsafe;->putReferenceVolatile(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method

.method public putReference(Ljava/lang/Object;JLjava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public final putReferenceOpaque(Ljava/lang/Object;JLjava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Ljdk/internal/misc/NeoUnsafe;->putReferenceVolatile(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method

.method public final putReferenceRelease(Ljava/lang/Object;JLjava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Ljdk/internal/misc/NeoUnsafe;->putReferenceVolatile(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method

.method public putReferenceVolatile(Ljava/lang/Object;JLjava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public putShort(JS)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0, p1, p2, p3}, Ljdk/internal/misc/NeoUnsafe;->putShort(Ljava/lang/Object;JS)V

    return-void
.end method

.method public putShort(Ljava/lang/Object;JS)V
    .locals 0

    .line 1
    return-void
.end method

.method public final putShortOpaque(Ljava/lang/Object;JS)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Ljdk/internal/misc/NeoUnsafe;->putShortVolatile(Ljava/lang/Object;JS)V

    return-void
.end method

.method public final putShortRelease(Ljava/lang/Object;JS)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Ljdk/internal/misc/NeoUnsafe;->putShortVolatile(Ljava/lang/Object;JS)V

    return-void
.end method

.method public final putShortUnaligned(Ljava/lang/Object;JS)V
    .locals 7

    const-wide/16 v0, 0x1

    and-long/2addr v0, p2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, Ljdk/internal/misc/NeoUnsafe;->putShort(Ljava/lang/Object;JS)V

    goto :goto_0

    :cond_0
    ushr-int/lit8 v0, p4, 0x0

    int-to-byte v5, v0

    ushr-int/lit8 p4, p4, 0x8

    int-to-byte v6, p4

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    .line 2
    invoke-direct/range {v1 .. v6}, Ljdk/internal/misc/NeoUnsafe;->putShortParts(Ljava/lang/Object;JBB)V

    :goto_0
    return-void
.end method

.method public final putShortUnaligned(Ljava/lang/Object;JSZ)V
    .locals 0

    .line 3
    invoke-static {p5, p4}, Ljdk/internal/misc/NeoUnsafe;->convEndian(ZS)S

    move-result p4

    invoke-virtual {p0, p1, p2, p3, p4}, Ljdk/internal/misc/NeoUnsafe;->putShortUnaligned(Ljava/lang/Object;JS)V

    return-void
.end method

.method public putShortVolatile(Ljava/lang/Object;JS)V
    .locals 0

    return-void
.end method

.method public reallocateMemory(JJ)J
    .locals 3

    invoke-direct {p0, p3, p4}, Ljdk/internal/misc/NeoUnsafe;->alignToHeapWordSize(J)J

    move-result-wide p3

    invoke-direct {p0, p1, p2, p3, p4}, Ljdk/internal/misc/NeoUnsafe;->reallocateMemoryChecks(JJ)V

    const-wide/16 v0, 0x0

    cmp-long v2, p3, v0

    if-nez v2, :cond_0

    invoke-virtual {p0, p1, p2}, Ljdk/internal/misc/NeoUnsafe;->freeMemory(J)V

    return-wide v0

    :cond_0
    cmp-long v2, p1, v0

    if-nez v2, :cond_1

    invoke-direct {p0, p3, p4}, Ljdk/internal/misc/NeoUnsafe;->allocateMemory0(J)J

    move-result-wide p0

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Ljdk/internal/misc/NeoUnsafe;->reallocateMemory0(JJ)J

    move-result-wide p0

    :goto_0
    cmp-long p2, p0, v0

    if-eqz p2, :cond_2

    return-wide p0

    :cond_2
    new-instance p0, Ljava/lang/OutOfMemoryError;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unable to allocate "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " bytes"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/OutOfMemoryError;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setMemory(JJB)V
    .locals 7

    const/4 v1, 0x0

    move-object v0, p0

    move-wide v2, p1

    move-wide v4, p3

    move v6, p5

    .line 3
    invoke-virtual/range {v0 .. v6}, Ljdk/internal/misc/NeoUnsafe;->setMemory(Ljava/lang/Object;JJB)V

    return-void
.end method

.method public setMemory(Ljava/lang/Object;JJB)V
    .locals 2

    .line 1
    invoke-direct/range {p0 .. p6}, Ljdk/internal/misc/NeoUnsafe;->setMemoryChecks(Ljava/lang/Object;JJB)V

    const-wide/16 v0, 0x0

    cmp-long v0, p4, v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-direct/range {p0 .. p6}, Ljdk/internal/misc/NeoUnsafe;->setMemory0(Ljava/lang/Object;JJB)V

    return-void
.end method

.method public shouldBeInitialized(Ljava/lang/Class;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0, p1}, Ljdk/internal/misc/NeoUnsafe;->shouldBeInitialized0(Ljava/lang/Class;)Z

    move-result p0

    return p0
.end method

.method public staticFieldBase(Ljava/lang/reflect/Field;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0, p1}, Ljdk/internal/misc/NeoUnsafe;->staticFieldBase0(Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public staticFieldOffset(Ljava/lang/reflect/Field;)J
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0, p1}, Ljdk/internal/misc/NeoUnsafe;->staticFieldOffset0(Ljava/lang/reflect/Field;)J

    move-result-wide p0

    return-wide p0
.end method

.method public storeFence()V
    .locals 0

    return-void
.end method

.method public final storeStoreFence()V
    .locals 0

    invoke-virtual {p0}, Ljdk/internal/misc/NeoUnsafe;->storeFence()V

    return-void
.end method

.method public throwException(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public final unalignedAccess()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public unpark(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public final weakCompareAndSetBoolean(Ljava/lang/Object;JZZ)Z
    .locals 6

    invoke-direct {p0, p4}, Ljdk/internal/misc/NeoUnsafe;->bool2byte(Z)B

    move-result v4

    invoke-direct {p0, p5}, Ljdk/internal/misc/NeoUnsafe;->bool2byte(Z)B

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    invoke-virtual/range {v0 .. v5}, Ljdk/internal/misc/NeoUnsafe;->weakCompareAndSetByte(Ljava/lang/Object;JBB)Z

    move-result p0

    return p0
.end method

.method public final weakCompareAndSetBooleanAcquire(Ljava/lang/Object;JZZ)Z
    .locals 6

    invoke-direct {p0, p4}, Ljdk/internal/misc/NeoUnsafe;->bool2byte(Z)B

    move-result v4

    invoke-direct {p0, p5}, Ljdk/internal/misc/NeoUnsafe;->bool2byte(Z)B

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    invoke-virtual/range {v0 .. v5}, Ljdk/internal/misc/NeoUnsafe;->weakCompareAndSetByteAcquire(Ljava/lang/Object;JBB)Z

    move-result p0

    return p0
.end method

.method public final weakCompareAndSetBooleanPlain(Ljava/lang/Object;JZZ)Z
    .locals 6

    invoke-direct {p0, p4}, Ljdk/internal/misc/NeoUnsafe;->bool2byte(Z)B

    move-result v4

    invoke-direct {p0, p5}, Ljdk/internal/misc/NeoUnsafe;->bool2byte(Z)B

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    invoke-virtual/range {v0 .. v5}, Ljdk/internal/misc/NeoUnsafe;->weakCompareAndSetBytePlain(Ljava/lang/Object;JBB)Z

    move-result p0

    return p0
.end method

.method public final weakCompareAndSetBooleanRelease(Ljava/lang/Object;JZZ)Z
    .locals 6

    invoke-direct {p0, p4}, Ljdk/internal/misc/NeoUnsafe;->bool2byte(Z)B

    move-result v4

    invoke-direct {p0, p5}, Ljdk/internal/misc/NeoUnsafe;->bool2byte(Z)B

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    invoke-virtual/range {v0 .. v5}, Ljdk/internal/misc/NeoUnsafe;->weakCompareAndSetByteRelease(Ljava/lang/Object;JBB)Z

    move-result p0

    return p0
.end method

.method public final weakCompareAndSetByte(Ljava/lang/Object;JBB)Z
    .locals 0

    invoke-virtual/range {p0 .. p5}, Ljdk/internal/misc/NeoUnsafe;->compareAndSetByte(Ljava/lang/Object;JBB)Z

    move-result p0

    return p0
.end method

.method public final weakCompareAndSetByteAcquire(Ljava/lang/Object;JBB)Z
    .locals 0

    invoke-virtual/range {p0 .. p5}, Ljdk/internal/misc/NeoUnsafe;->weakCompareAndSetByte(Ljava/lang/Object;JBB)Z

    move-result p0

    return p0
.end method

.method public final weakCompareAndSetBytePlain(Ljava/lang/Object;JBB)Z
    .locals 0

    invoke-virtual/range {p0 .. p5}, Ljdk/internal/misc/NeoUnsafe;->weakCompareAndSetByte(Ljava/lang/Object;JBB)Z

    move-result p0

    return p0
.end method

.method public final weakCompareAndSetByteRelease(Ljava/lang/Object;JBB)Z
    .locals 0

    invoke-virtual/range {p0 .. p5}, Ljdk/internal/misc/NeoUnsafe;->weakCompareAndSetByte(Ljava/lang/Object;JBB)Z

    move-result p0

    return p0
.end method

.method public final weakCompareAndSetChar(Ljava/lang/Object;JCC)Z
    .locals 6

    invoke-direct {p0, p4}, Ljdk/internal/misc/NeoUnsafe;->c2s(C)S

    move-result v4

    invoke-direct {p0, p5}, Ljdk/internal/misc/NeoUnsafe;->c2s(C)S

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    invoke-virtual/range {v0 .. v5}, Ljdk/internal/misc/NeoUnsafe;->weakCompareAndSetShort(Ljava/lang/Object;JSS)Z

    move-result p0

    return p0
.end method

.method public final weakCompareAndSetCharAcquire(Ljava/lang/Object;JCC)Z
    .locals 6

    invoke-direct {p0, p4}, Ljdk/internal/misc/NeoUnsafe;->c2s(C)S

    move-result v4

    invoke-direct {p0, p5}, Ljdk/internal/misc/NeoUnsafe;->c2s(C)S

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    invoke-virtual/range {v0 .. v5}, Ljdk/internal/misc/NeoUnsafe;->weakCompareAndSetShortAcquire(Ljava/lang/Object;JSS)Z

    move-result p0

    return p0
.end method

.method public final weakCompareAndSetCharPlain(Ljava/lang/Object;JCC)Z
    .locals 6

    invoke-direct {p0, p4}, Ljdk/internal/misc/NeoUnsafe;->c2s(C)S

    move-result v4

    invoke-direct {p0, p5}, Ljdk/internal/misc/NeoUnsafe;->c2s(C)S

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    invoke-virtual/range {v0 .. v5}, Ljdk/internal/misc/NeoUnsafe;->weakCompareAndSetShortPlain(Ljava/lang/Object;JSS)Z

    move-result p0

    return p0
.end method

.method public final weakCompareAndSetCharRelease(Ljava/lang/Object;JCC)Z
    .locals 6

    invoke-direct {p0, p4}, Ljdk/internal/misc/NeoUnsafe;->c2s(C)S

    move-result v4

    invoke-direct {p0, p5}, Ljdk/internal/misc/NeoUnsafe;->c2s(C)S

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    invoke-virtual/range {v0 .. v5}, Ljdk/internal/misc/NeoUnsafe;->weakCompareAndSetShortRelease(Ljava/lang/Object;JSS)Z

    move-result p0

    return p0
.end method

.method public final weakCompareAndSetDouble(Ljava/lang/Object;JDD)Z
    .locals 8

    invoke-static {p4, p5}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v4

    invoke-static {p6, p7}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v6

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    invoke-virtual/range {v0 .. v7}, Ljdk/internal/misc/NeoUnsafe;->weakCompareAndSetLong(Ljava/lang/Object;JJJ)Z

    move-result p0

    return p0
.end method

.method public final weakCompareAndSetDoubleAcquire(Ljava/lang/Object;JDD)Z
    .locals 8

    invoke-static {p4, p5}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v4

    invoke-static {p6, p7}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v6

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    invoke-virtual/range {v0 .. v7}, Ljdk/internal/misc/NeoUnsafe;->weakCompareAndSetLongAcquire(Ljava/lang/Object;JJJ)Z

    move-result p0

    return p0
.end method

.method public final weakCompareAndSetDoublePlain(Ljava/lang/Object;JDD)Z
    .locals 8

    invoke-static {p4, p5}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v4

    invoke-static {p6, p7}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v6

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    invoke-virtual/range {v0 .. v7}, Ljdk/internal/misc/NeoUnsafe;->weakCompareAndSetLongPlain(Ljava/lang/Object;JJJ)Z

    move-result p0

    return p0
.end method

.method public final weakCompareAndSetDoubleRelease(Ljava/lang/Object;JDD)Z
    .locals 8

    invoke-static {p4, p5}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v4

    invoke-static {p6, p7}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v6

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    invoke-virtual/range {v0 .. v7}, Ljdk/internal/misc/NeoUnsafe;->weakCompareAndSetLongRelease(Ljava/lang/Object;JJJ)Z

    move-result p0

    return p0
.end method

.method public final weakCompareAndSetFloat(Ljava/lang/Object;JFF)Z
    .locals 6

    invoke-static {p4}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v4

    invoke-static {p5}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    invoke-virtual/range {v0 .. v5}, Ljdk/internal/misc/NeoUnsafe;->weakCompareAndSetInt(Ljava/lang/Object;JII)Z

    move-result p0

    return p0
.end method

.method public final weakCompareAndSetFloatAcquire(Ljava/lang/Object;JFF)Z
    .locals 6

    invoke-static {p4}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v4

    invoke-static {p5}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    invoke-virtual/range {v0 .. v5}, Ljdk/internal/misc/NeoUnsafe;->weakCompareAndSetIntAcquire(Ljava/lang/Object;JII)Z

    move-result p0

    return p0
.end method

.method public final weakCompareAndSetFloatPlain(Ljava/lang/Object;JFF)Z
    .locals 6

    invoke-static {p4}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v4

    invoke-static {p5}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    invoke-virtual/range {v0 .. v5}, Ljdk/internal/misc/NeoUnsafe;->weakCompareAndSetIntPlain(Ljava/lang/Object;JII)Z

    move-result p0

    return p0
.end method

.method public final weakCompareAndSetFloatRelease(Ljava/lang/Object;JFF)Z
    .locals 6

    invoke-static {p4}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v4

    invoke-static {p5}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    invoke-virtual/range {v0 .. v5}, Ljdk/internal/misc/NeoUnsafe;->weakCompareAndSetIntRelease(Ljava/lang/Object;JII)Z

    move-result p0

    return p0
.end method

.method public final weakCompareAndSetInt(Ljava/lang/Object;JII)Z
    .locals 0

    invoke-virtual/range {p0 .. p5}, Ljdk/internal/misc/NeoUnsafe;->compareAndSetInt(Ljava/lang/Object;JII)Z

    move-result p0

    return p0
.end method

.method public final weakCompareAndSetIntAcquire(Ljava/lang/Object;JII)Z
    .locals 0

    invoke-virtual/range {p0 .. p5}, Ljdk/internal/misc/NeoUnsafe;->compareAndSetInt(Ljava/lang/Object;JII)Z

    move-result p0

    return p0
.end method

.method public final weakCompareAndSetIntPlain(Ljava/lang/Object;JII)Z
    .locals 0

    invoke-virtual/range {p0 .. p5}, Ljdk/internal/misc/NeoUnsafe;->compareAndSetInt(Ljava/lang/Object;JII)Z

    move-result p0

    return p0
.end method

.method public final weakCompareAndSetIntRelease(Ljava/lang/Object;JII)Z
    .locals 0

    invoke-virtual/range {p0 .. p5}, Ljdk/internal/misc/NeoUnsafe;->compareAndSetInt(Ljava/lang/Object;JII)Z

    move-result p0

    return p0
.end method

.method public final weakCompareAndSetLong(Ljava/lang/Object;JJJ)Z
    .locals 0

    invoke-virtual/range {p0 .. p7}, Ljdk/internal/misc/NeoUnsafe;->compareAndSetLong(Ljava/lang/Object;JJJ)Z

    move-result p0

    return p0
.end method

.method public final weakCompareAndSetLongAcquire(Ljava/lang/Object;JJJ)Z
    .locals 0

    invoke-virtual/range {p0 .. p7}, Ljdk/internal/misc/NeoUnsafe;->compareAndSetLong(Ljava/lang/Object;JJJ)Z

    move-result p0

    return p0
.end method

.method public final weakCompareAndSetLongPlain(Ljava/lang/Object;JJJ)Z
    .locals 0

    invoke-virtual/range {p0 .. p7}, Ljdk/internal/misc/NeoUnsafe;->compareAndSetLong(Ljava/lang/Object;JJJ)Z

    move-result p0

    return p0
.end method

.method public final weakCompareAndSetLongRelease(Ljava/lang/Object;JJJ)Z
    .locals 0

    invoke-virtual/range {p0 .. p7}, Ljdk/internal/misc/NeoUnsafe;->compareAndSetLong(Ljava/lang/Object;JJJ)Z

    move-result p0

    return p0
.end method

.method public final weakCompareAndSetObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual/range {p0 .. p5}, Ljdk/internal/misc/NeoUnsafe;->weakCompareAndSetReference(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final weakCompareAndSetObjectAcquire(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual/range {p0 .. p5}, Ljdk/internal/misc/NeoUnsafe;->weakCompareAndSetReferenceAcquire(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final weakCompareAndSetObjectPlain(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual/range {p0 .. p5}, Ljdk/internal/misc/NeoUnsafe;->weakCompareAndSetReferencePlain(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final weakCompareAndSetObjectRelease(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual/range {p0 .. p5}, Ljdk/internal/misc/NeoUnsafe;->weakCompareAndSetReferenceRelease(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final weakCompareAndSetReference(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual/range {p0 .. p5}, Ljdk/internal/misc/NeoUnsafe;->compareAndSetReference(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final weakCompareAndSetReferenceAcquire(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual/range {p0 .. p5}, Ljdk/internal/misc/NeoUnsafe;->compareAndSetReference(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final weakCompareAndSetReferencePlain(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual/range {p0 .. p5}, Ljdk/internal/misc/NeoUnsafe;->compareAndSetReference(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final weakCompareAndSetReferenceRelease(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual/range {p0 .. p5}, Ljdk/internal/misc/NeoUnsafe;->compareAndSetReference(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final weakCompareAndSetShort(Ljava/lang/Object;JSS)Z
    .locals 0

    invoke-virtual/range {p0 .. p5}, Ljdk/internal/misc/NeoUnsafe;->compareAndSetShort(Ljava/lang/Object;JSS)Z

    move-result p0

    return p0
.end method

.method public final weakCompareAndSetShortAcquire(Ljava/lang/Object;JSS)Z
    .locals 0

    invoke-virtual/range {p0 .. p5}, Ljdk/internal/misc/NeoUnsafe;->weakCompareAndSetShort(Ljava/lang/Object;JSS)Z

    move-result p0

    return p0
.end method

.method public final weakCompareAndSetShortPlain(Ljava/lang/Object;JSS)Z
    .locals 0

    invoke-virtual/range {p0 .. p5}, Ljdk/internal/misc/NeoUnsafe;->weakCompareAndSetShort(Ljava/lang/Object;JSS)Z

    move-result p0

    return p0
.end method

.method public final weakCompareAndSetShortRelease(Ljava/lang/Object;JSS)Z
    .locals 0

    invoke-virtual/range {p0 .. p5}, Ljdk/internal/misc/NeoUnsafe;->weakCompareAndSetShort(Ljava/lang/Object;JSS)Z

    move-result p0

    return p0
.end method

.method public writebackMemory(JJ)V
    .locals 2

    invoke-direct {p0}, Ljdk/internal/misc/NeoUnsafe;->checkWritebackEnabled()V

    invoke-direct {p0, p1, p2, p3, p4}, Ljdk/internal/misc/NeoUnsafe;->checkWritebackMemory(JJ)V

    invoke-direct {p0}, Ljdk/internal/misc/NeoUnsafe;->writebackPreSync0()V

    invoke-virtual {p0, p1, p2}, Ljdk/internal/misc/NeoUnsafe;->dataCacheLineAlignDown(J)J

    move-result-wide v0

    add-long/2addr p1, p3

    :goto_0
    cmp-long p3, v0, p1

    if-gez p3, :cond_0

    invoke-direct {p0, v0, v1}, Ljdk/internal/misc/NeoUnsafe;->writeback0(J)V

    invoke-virtual {p0}, Ljdk/internal/misc/NeoUnsafe;->dataCacheLineFlushSize()I

    move-result p3

    int-to-long p3, p3

    add-long/2addr v0, p3

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Ljdk/internal/misc/NeoUnsafe;->writebackPostSync0()V

    return-void
.end method
