.class public final enum Lorg/apache/logging/log4j/spi/StandardLevel;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/logging/log4j/spi/StandardLevel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/logging/log4j/spi/StandardLevel;

.field public static final enum ALL:Lorg/apache/logging/log4j/spi/StandardLevel;

.field public static final enum DEBUG:Lorg/apache/logging/log4j/spi/StandardLevel;

.field public static final enum ERROR:Lorg/apache/logging/log4j/spi/StandardLevel;

.field public static final enum FATAL:Lorg/apache/logging/log4j/spi/StandardLevel;

.field public static final enum INFO:Lorg/apache/logging/log4j/spi/StandardLevel;

.field private static final LEVELSET:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lorg/apache/logging/log4j/spi/StandardLevel;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum OFF:Lorg/apache/logging/log4j/spi/StandardLevel;

.field public static final enum TRACE:Lorg/apache/logging/log4j/spi/StandardLevel;

.field public static final enum WARN:Lorg/apache/logging/log4j/spi/StandardLevel;


# instance fields
.field private final intLevel:I


# direct methods
.method public static constructor <clinit>()V
    .locals 11

    new-instance v0, Lorg/apache/logging/log4j/spi/StandardLevel;

    const-string v1, "OFF"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lorg/apache/logging/log4j/spi/StandardLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/logging/log4j/spi/StandardLevel;->OFF:Lorg/apache/logging/log4j/spi/StandardLevel;

    new-instance v1, Lorg/apache/logging/log4j/spi/StandardLevel;

    const/4 v2, 0x1

    const/16 v3, 0x64

    const-string v4, "FATAL"

    invoke-direct {v1, v4, v2, v3}, Lorg/apache/logging/log4j/spi/StandardLevel;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lorg/apache/logging/log4j/spi/StandardLevel;->FATAL:Lorg/apache/logging/log4j/spi/StandardLevel;

    new-instance v2, Lorg/apache/logging/log4j/spi/StandardLevel;

    const/4 v3, 0x2

    const/16 v4, 0xc8

    const-string v5, "ERROR"

    invoke-direct {v2, v5, v3, v4}, Lorg/apache/logging/log4j/spi/StandardLevel;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lorg/apache/logging/log4j/spi/StandardLevel;->ERROR:Lorg/apache/logging/log4j/spi/StandardLevel;

    new-instance v3, Lorg/apache/logging/log4j/spi/StandardLevel;

    const/4 v4, 0x3

    const/16 v5, 0x12c

    const-string v6, "WARN"

    invoke-direct {v3, v6, v4, v5}, Lorg/apache/logging/log4j/spi/StandardLevel;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lorg/apache/logging/log4j/spi/StandardLevel;->WARN:Lorg/apache/logging/log4j/spi/StandardLevel;

    new-instance v4, Lorg/apache/logging/log4j/spi/StandardLevel;

    const/4 v5, 0x4

    const/16 v6, 0x190

    const-string v7, "INFO"

    invoke-direct {v4, v7, v5, v6}, Lorg/apache/logging/log4j/spi/StandardLevel;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lorg/apache/logging/log4j/spi/StandardLevel;->INFO:Lorg/apache/logging/log4j/spi/StandardLevel;

    new-instance v5, Lorg/apache/logging/log4j/spi/StandardLevel;

    const/4 v6, 0x5

    const/16 v7, 0x1f4

    const-string v8, "DEBUG"

    invoke-direct {v5, v8, v6, v7}, Lorg/apache/logging/log4j/spi/StandardLevel;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lorg/apache/logging/log4j/spi/StandardLevel;->DEBUG:Lorg/apache/logging/log4j/spi/StandardLevel;

    new-instance v6, Lorg/apache/logging/log4j/spi/StandardLevel;

    const/4 v7, 0x6

    const/16 v8, 0x258

    const-string v9, "TRACE"

    invoke-direct {v6, v9, v7, v8}, Lorg/apache/logging/log4j/spi/StandardLevel;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lorg/apache/logging/log4j/spi/StandardLevel;->TRACE:Lorg/apache/logging/log4j/spi/StandardLevel;

    new-instance v7, Lorg/apache/logging/log4j/spi/StandardLevel;

    const/4 v8, 0x7

    const v9, 0x7fffffff

    const-string v10, "ALL"

    invoke-direct {v7, v10, v8, v9}, Lorg/apache/logging/log4j/spi/StandardLevel;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lorg/apache/logging/log4j/spi/StandardLevel;->ALL:Lorg/apache/logging/log4j/spi/StandardLevel;

    filled-new-array/range {v0 .. v7}, [Lorg/apache/logging/log4j/spi/StandardLevel;

    move-result-object v0

    sput-object v0, Lorg/apache/logging/log4j/spi/StandardLevel;->$VALUES:[Lorg/apache/logging/log4j/spi/StandardLevel;

    const-class v0, Lorg/apache/logging/log4j/spi/StandardLevel;

    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    sput-object v0, Lorg/apache/logging/log4j/spi/StandardLevel;->LEVELSET:Ljava/util/EnumSet;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x10
        }
        names = {
            "$enum$name",
            "$enum$ordinal",
            "val"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lorg/apache/logging/log4j/spi/StandardLevel;->intLevel:I

    return-void
.end method

.method public static getStandardLevel(I)Lorg/apache/logging/log4j/spi/StandardLevel;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "intLevel"
        }
    .end annotation

    sget-object v0, Lorg/apache/logging/log4j/spi/StandardLevel;->OFF:Lorg/apache/logging/log4j/spi/StandardLevel;

    sget-object v1, Lorg/apache/logging/log4j/spi/StandardLevel;->LEVELSET:Ljava/util/EnumSet;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/logging/log4j/spi/StandardLevel;

    invoke-virtual {v2}, Lorg/apache/logging/log4j/spi/StandardLevel;->intLevel()I

    move-result v3

    if-le v3, p0, :cond_0

    goto :goto_1

    :cond_0
    move-object v0, v2

    goto :goto_0

    :cond_1
    :goto_1
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/logging/log4j/spi/StandardLevel;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, Lorg/apache/logging/log4j/spi/StandardLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/logging/log4j/spi/StandardLevel;

    return-object p0
.end method

.method public static values()[Lorg/apache/logging/log4j/spi/StandardLevel;
    .locals 1

    sget-object v0, Lorg/apache/logging/log4j/spi/StandardLevel;->$VALUES:[Lorg/apache/logging/log4j/spi/StandardLevel;

    invoke-virtual {v0}, [Lorg/apache/logging/log4j/spi/StandardLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/logging/log4j/spi/StandardLevel;

    return-object v0
.end method


# virtual methods
.method public intLevel()I
    .locals 0

    iget p0, p0, Lorg/apache/logging/log4j/spi/StandardLevel;->intLevel:I

    return p0
.end method
