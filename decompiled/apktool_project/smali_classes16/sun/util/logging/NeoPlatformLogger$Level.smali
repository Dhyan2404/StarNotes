.class public final enum Lsun/util/logging/NeoPlatformLogger$Level;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/util/logging/NeoPlatformLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Level"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lsun/util/logging/NeoPlatformLogger$Level;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lsun/util/logging/NeoPlatformLogger$Level;

.field public static final enum ALL:Lsun/util/logging/NeoPlatformLogger$Level;

.field public static final enum ASSERT:Lsun/util/logging/NeoPlatformLogger$Level;

.field public static final enum CONFIG:Lsun/util/logging/NeoPlatformLogger$Level;

.field public static final enum FINE:Lsun/util/logging/NeoPlatformLogger$Level;

.field public static final enum FINER:Lsun/util/logging/NeoPlatformLogger$Level;

.field public static final enum FINEST:Lsun/util/logging/NeoPlatformLogger$Level;

.field public static final enum INFO:Lsun/util/logging/NeoPlatformLogger$Level;

.field private static final LEVEL_VALUES:[I

.field public static final enum OFF:Lsun/util/logging/NeoPlatformLogger$Level;

.field public static final enum SEVERE:Lsun/util/logging/NeoPlatformLogger$Level;

.field private static final SEVERITY_ALL:I = -0x80000000

.field private static final SEVERITY_CONFIG:I = 0x2bc

.field private static final SEVERITY_FINE:I = 0x1f4

.field private static final SEVERITY_FINER:I = 0x190

.field private static final SEVERITY_FINEST:I = 0x12c

.field private static final SEVERITY_INFO:I = 0x320

.field private static final SEVERITY_OFF:I = 0x7fffffff

.field private static final SEVERITY_SEVERE:I = 0x3e8

.field private static final SEVERITY_WARNING:I = 0x384

.field public static final enum WARNING:Lsun/util/logging/NeoPlatformLogger$Level;


# instance fields
.field final systemLevel:I


# direct methods
.method public static constructor <clinit>()V
    .locals 13

    new-instance v0, Lsun/util/logging/NeoPlatformLogger$Level;

    const-string v1, "ALL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lsun/util/logging/NeoPlatformLogger$Level;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lsun/util/logging/NeoPlatformLogger$Level;->ALL:Lsun/util/logging/NeoPlatformLogger$Level;

    new-instance v1, Lsun/util/logging/NeoPlatformLogger$Level;

    const-string v2, "FINEST"

    const/4 v3, 0x1

    const/4 v4, 0x2

    invoke-direct {v1, v2, v3, v4}, Lsun/util/logging/NeoPlatformLogger$Level;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lsun/util/logging/NeoPlatformLogger$Level;->FINEST:Lsun/util/logging/NeoPlatformLogger$Level;

    new-instance v2, Lsun/util/logging/NeoPlatformLogger$Level;

    const-string v3, "FINER"

    invoke-direct {v2, v3, v4, v4}, Lsun/util/logging/NeoPlatformLogger$Level;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lsun/util/logging/NeoPlatformLogger$Level;->FINER:Lsun/util/logging/NeoPlatformLogger$Level;

    new-instance v3, Lsun/util/logging/NeoPlatformLogger$Level;

    const-string v5, "FINE"

    const/4 v6, 0x3

    invoke-direct {v3, v5, v6, v4}, Lsun/util/logging/NeoPlatformLogger$Level;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lsun/util/logging/NeoPlatformLogger$Level;->FINE:Lsun/util/logging/NeoPlatformLogger$Level;

    new-instance v4, Lsun/util/logging/NeoPlatformLogger$Level;

    const-string v5, "CONFIG"

    const/4 v7, 0x4

    invoke-direct {v4, v5, v7, v6}, Lsun/util/logging/NeoPlatformLogger$Level;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lsun/util/logging/NeoPlatformLogger$Level;->CONFIG:Lsun/util/logging/NeoPlatformLogger$Level;

    new-instance v5, Lsun/util/logging/NeoPlatformLogger$Level;

    const-string v6, "INFO"

    const/4 v8, 0x5

    invoke-direct {v5, v6, v8, v7}, Lsun/util/logging/NeoPlatformLogger$Level;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lsun/util/logging/NeoPlatformLogger$Level;->INFO:Lsun/util/logging/NeoPlatformLogger$Level;

    new-instance v6, Lsun/util/logging/NeoPlatformLogger$Level;

    const-string v8, "WARNING"

    const/4 v9, 0x6

    invoke-direct {v6, v8, v9, v7}, Lsun/util/logging/NeoPlatformLogger$Level;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lsun/util/logging/NeoPlatformLogger$Level;->WARNING:Lsun/util/logging/NeoPlatformLogger$Level;

    new-instance v7, Lsun/util/logging/NeoPlatformLogger$Level;

    const-string v8, "SEVERE"

    const/4 v10, 0x7

    invoke-direct {v7, v8, v10, v9}, Lsun/util/logging/NeoPlatformLogger$Level;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lsun/util/logging/NeoPlatformLogger$Level;->SEVERE:Lsun/util/logging/NeoPlatformLogger$Level;

    new-instance v8, Lsun/util/logging/NeoPlatformLogger$Level;

    const-string v9, "ASSERT"

    const/16 v11, 0x8

    invoke-direct {v8, v9, v11, v10}, Lsun/util/logging/NeoPlatformLogger$Level;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lsun/util/logging/NeoPlatformLogger$Level;->ASSERT:Lsun/util/logging/NeoPlatformLogger$Level;

    new-instance v9, Lsun/util/logging/NeoPlatformLogger$Level;

    const-string v10, "OFF"

    const/16 v12, 0x9

    invoke-direct {v9, v10, v12, v11}, Lsun/util/logging/NeoPlatformLogger$Level;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lsun/util/logging/NeoPlatformLogger$Level;->OFF:Lsun/util/logging/NeoPlatformLogger$Level;

    filled-new-array/range {v0 .. v9}, [Lsun/util/logging/NeoPlatformLogger$Level;

    move-result-object v0

    sput-object v0, Lsun/util/logging/NeoPlatformLogger$Level;->$VALUES:[Lsun/util/logging/NeoPlatformLogger$Level;

    new-array v0, v12, [I

    fill-array-data v0, :array_0

    sput-object v0, Lsun/util/logging/NeoPlatformLogger$Level;->LEVEL_VALUES:[I

    return-void

    :array_0
    .array-data 4
        -0x80000000
        0x12c
        0x190
        0x1f4
        0x2bc
        0x320
        0x384
        0x3e8
        0x7fffffff
    .end array-data
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lsun/util/logging/NeoPlatformLogger$Level;->systemLevel:I

    return-void
.end method

.method public static valueOf(I)Lsun/util/logging/NeoPlatformLogger$Level;
    .locals 3

    const/high16 v0, -0x80000000

    if-eq p0, v0, :cond_9

    const/16 v0, 0x12c

    if-eq p0, v0, :cond_8

    const/16 v0, 0x190

    if-eq p0, v0, :cond_7

    const/16 v0, 0x1f4

    if-eq p0, v0, :cond_6

    const/16 v0, 0x2bc

    if-eq p0, v0, :cond_5

    const/16 v0, 0x320

    if-eq p0, v0, :cond_4

    const/16 v0, 0x384

    if-eq p0, v0, :cond_3

    const/16 v0, 0x3e8

    if-eq p0, v0, :cond_2

    const v0, 0x7fffffff

    if-eq p0, v0, :cond_1

    .line 2
    sget-object v0, Lsun/util/logging/NeoPlatformLogger$Level;->LEVEL_VALUES:[I

    array-length v1, v0

    add-int/lit8 v1, v1, -0x2

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, p0}, Ljava/util/Arrays;->binarySearch([IIII)I

    move-result p0

    .line 3
    invoke-static {}, Lsun/util/logging/NeoPlatformLogger$Level;->values()[Lsun/util/logging/NeoPlatformLogger$Level;

    move-result-object v0

    if-ltz p0, :cond_0

    goto :goto_0

    :cond_0
    neg-int p0, p0

    add-int/lit8 p0, p0, -0x1

    :goto_0
    aget-object p0, v0, p0

    return-object p0

    .line 4
    :cond_1
    sget-object p0, Lsun/util/logging/NeoPlatformLogger$Level;->OFF:Lsun/util/logging/NeoPlatformLogger$Level;

    return-object p0

    .line 5
    :cond_2
    sget-object p0, Lsun/util/logging/NeoPlatformLogger$Level;->SEVERE:Lsun/util/logging/NeoPlatformLogger$Level;

    return-object p0

    .line 6
    :cond_3
    sget-object p0, Lsun/util/logging/NeoPlatformLogger$Level;->WARNING:Lsun/util/logging/NeoPlatformLogger$Level;

    return-object p0

    .line 7
    :cond_4
    sget-object p0, Lsun/util/logging/NeoPlatformLogger$Level;->INFO:Lsun/util/logging/NeoPlatformLogger$Level;

    return-object p0

    .line 8
    :cond_5
    sget-object p0, Lsun/util/logging/NeoPlatformLogger$Level;->CONFIG:Lsun/util/logging/NeoPlatformLogger$Level;

    return-object p0

    .line 9
    :cond_6
    sget-object p0, Lsun/util/logging/NeoPlatformLogger$Level;->FINE:Lsun/util/logging/NeoPlatformLogger$Level;

    return-object p0

    .line 10
    :cond_7
    sget-object p0, Lsun/util/logging/NeoPlatformLogger$Level;->FINER:Lsun/util/logging/NeoPlatformLogger$Level;

    return-object p0

    .line 11
    :cond_8
    sget-object p0, Lsun/util/logging/NeoPlatformLogger$Level;->FINEST:Lsun/util/logging/NeoPlatformLogger$Level;

    return-object p0

    .line 12
    :cond_9
    sget-object p0, Lsun/util/logging/NeoPlatformLogger$Level;->ALL:Lsun/util/logging/NeoPlatformLogger$Level;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lsun/util/logging/NeoPlatformLogger$Level;
    .locals 1

    .line 1
    const-class v0, Lsun/util/logging/NeoPlatformLogger$Level;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lsun/util/logging/NeoPlatformLogger$Level;

    return-object p0
.end method

.method public static values()[Lsun/util/logging/NeoPlatformLogger$Level;
    .locals 1

    sget-object v0, Lsun/util/logging/NeoPlatformLogger$Level;->$VALUES:[Lsun/util/logging/NeoPlatformLogger$Level;

    invoke-virtual {v0}, [Lsun/util/logging/NeoPlatformLogger$Level;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lsun/util/logging/NeoPlatformLogger$Level;

    return-object v0
.end method


# virtual methods
.method public intValue()I
    .locals 1

    sget-object v0, Lsun/util/logging/NeoPlatformLogger$Level;->LEVEL_VALUES:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    return p0
.end method

.method public systemLevel()I
    .locals 0

    iget p0, p0, Lsun/util/logging/NeoPlatformLogger$Level;->systemLevel:I

    return p0
.end method
