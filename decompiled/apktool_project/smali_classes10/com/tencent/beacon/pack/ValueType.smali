.class public final Lcom/tencent/beacon/pack/ValueType;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final BYTE:Lcom/tencent/beacon/pack/ValueType;

.field public static final BYTE_VAL:I = 0x1

.field public static final MAP:Lcom/tencent/beacon/pack/ValueType;

.field public static final MAP_VAL:I = 0x0

.field public static final UNKNOWN:Lcom/tencent/beacon/pack/ValueType;

.field public static final UNKNOWN_VAL:I = 0x2

.field private static values:[Lcom/tencent/beacon/pack/ValueType;


# instance fields
.field private t:Ljava/lang/String;

.field private value:I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/tencent/beacon/pack/ValueType;

    const/4 v1, 0x0

    const-string v2, "MAP"

    invoke-direct {v0, v1, v1, v2}, Lcom/tencent/beacon/pack/ValueType;-><init>(IILjava/lang/String;)V

    sput-object v0, Lcom/tencent/beacon/pack/ValueType;->MAP:Lcom/tencent/beacon/pack/ValueType;

    new-instance v0, Lcom/tencent/beacon/pack/ValueType;

    const/4 v1, 0x1

    const-string v2, "BYTE"

    invoke-direct {v0, v1, v1, v2}, Lcom/tencent/beacon/pack/ValueType;-><init>(IILjava/lang/String;)V

    sput-object v0, Lcom/tencent/beacon/pack/ValueType;->BYTE:Lcom/tencent/beacon/pack/ValueType;

    new-instance v0, Lcom/tencent/beacon/pack/ValueType;

    const/4 v1, 0x2

    const-string v2, "UNKNOWN"

    invoke-direct {v0, v1, v1, v2}, Lcom/tencent/beacon/pack/ValueType;-><init>(IILjava/lang/String;)V

    sput-object v0, Lcom/tencent/beacon/pack/ValueType;->UNKNOWN:Lcom/tencent/beacon/pack/ValueType;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/tencent/beacon/pack/ValueType;

    sput-object v0, Lcom/tencent/beacon/pack/ValueType;->values:[Lcom/tencent/beacon/pack/ValueType;

    return-void
.end method

.method private constructor <init>(IILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/tencent/beacon/pack/ValueType;->t:Ljava/lang/String;

    iput p2, p0, Lcom/tencent/beacon/pack/ValueType;->value:I

    sget-object p2, Lcom/tencent/beacon/pack/ValueType;->values:[Lcom/tencent/beacon/pack/ValueType;

    aput-object p0, p2, p1

    return-void
.end method

.method public static convert(I)Lcom/tencent/beacon/pack/ValueType;
    .locals 5

    .line 1
    sget-object v0, Lcom/tencent/beacon/pack/ValueType;->values:[Lcom/tencent/beacon/pack/ValueType;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 2
    invoke-virtual {v3}, Lcom/tencent/beacon/pack/ValueType;->value()I

    move-result v4

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static convert(Ljava/lang/String;)Lcom/tencent/beacon/pack/ValueType;
    .locals 5

    .line 3
    sget-object v0, Lcom/tencent/beacon/pack/ValueType;->values:[Lcom/tencent/beacon/pack/ValueType;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 4
    invoke-virtual {v3}, Lcom/tencent/beacon/pack/ValueType;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/tencent/beacon/pack/ValueType;->t:Ljava/lang/String;

    return-object p0
.end method

.method public value()I
    .locals 0

    iget p0, p0, Lcom/tencent/beacon/pack/ValueType;->value:I

    return p0
.end method
