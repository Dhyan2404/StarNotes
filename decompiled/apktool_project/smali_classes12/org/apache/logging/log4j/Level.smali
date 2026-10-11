.class public final Lorg/apache/logging/log4j/Level;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lorg/apache/logging/log4j/Level;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static final ALL:Lorg/apache/logging/log4j/Level;

.field public static final CATEGORY:Ljava/lang/String; = "Level"

.field public static final DEBUG:Lorg/apache/logging/log4j/Level;

.field public static final ERROR:Lorg/apache/logging/log4j/Level;

.field public static final FATAL:Lorg/apache/logging/log4j/Level;

.field public static final INFO:Lorg/apache/logging/log4j/Level;

.field private static final LEVELS:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Lorg/apache/logging/log4j/Level;",
            ">;"
        }
    .end annotation
.end field

.field public static final OFF:Lorg/apache/logging/log4j/Level;

.field public static final TRACE:Lorg/apache/logging/log4j/Level;

.field public static final WARN:Lorg/apache/logging/log4j/Level;

.field private static final serialVersionUID:J = 0x18201aL


# instance fields
.field private final intLevel:I

.field private final name:Ljava/lang/String;

.field private final standardLevel:Lorg/apache/logging/log4j/spi/StandardLevel;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lorg/apache/logging/log4j/Level;->LEVELS:Ljava/util/concurrent/ConcurrentMap;

    new-instance v0, Lorg/apache/logging/log4j/Level;

    sget-object v1, Lorg/apache/logging/log4j/spi/StandardLevel;->OFF:Lorg/apache/logging/log4j/spi/StandardLevel;

    invoke-virtual {v1}, Lorg/apache/logging/log4j/spi/StandardLevel;->intLevel()I

    move-result v1

    const-string v2, "OFF"

    invoke-direct {v0, v2, v1}, Lorg/apache/logging/log4j/Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/logging/log4j/Level;->OFF:Lorg/apache/logging/log4j/Level;

    new-instance v0, Lorg/apache/logging/log4j/Level;

    sget-object v1, Lorg/apache/logging/log4j/spi/StandardLevel;->FATAL:Lorg/apache/logging/log4j/spi/StandardLevel;

    invoke-virtual {v1}, Lorg/apache/logging/log4j/spi/StandardLevel;->intLevel()I

    move-result v1

    const-string v2, "FATAL"

    invoke-direct {v0, v2, v1}, Lorg/apache/logging/log4j/Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/logging/log4j/Level;->FATAL:Lorg/apache/logging/log4j/Level;

    new-instance v0, Lorg/apache/logging/log4j/Level;

    sget-object v1, Lorg/apache/logging/log4j/spi/StandardLevel;->ERROR:Lorg/apache/logging/log4j/spi/StandardLevel;

    invoke-virtual {v1}, Lorg/apache/logging/log4j/spi/StandardLevel;->intLevel()I

    move-result v1

    const-string v2, "ERROR"

    invoke-direct {v0, v2, v1}, Lorg/apache/logging/log4j/Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/logging/log4j/Level;->ERROR:Lorg/apache/logging/log4j/Level;

    new-instance v0, Lorg/apache/logging/log4j/Level;

    sget-object v1, Lorg/apache/logging/log4j/spi/StandardLevel;->WARN:Lorg/apache/logging/log4j/spi/StandardLevel;

    invoke-virtual {v1}, Lorg/apache/logging/log4j/spi/StandardLevel;->intLevel()I

    move-result v1

    const-string v2, "WARN"

    invoke-direct {v0, v2, v1}, Lorg/apache/logging/log4j/Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/logging/log4j/Level;->WARN:Lorg/apache/logging/log4j/Level;

    new-instance v0, Lorg/apache/logging/log4j/Level;

    sget-object v1, Lorg/apache/logging/log4j/spi/StandardLevel;->INFO:Lorg/apache/logging/log4j/spi/StandardLevel;

    invoke-virtual {v1}, Lorg/apache/logging/log4j/spi/StandardLevel;->intLevel()I

    move-result v1

    const-string v2, "INFO"

    invoke-direct {v0, v2, v1}, Lorg/apache/logging/log4j/Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/logging/log4j/Level;->INFO:Lorg/apache/logging/log4j/Level;

    new-instance v0, Lorg/apache/logging/log4j/Level;

    sget-object v1, Lorg/apache/logging/log4j/spi/StandardLevel;->DEBUG:Lorg/apache/logging/log4j/spi/StandardLevel;

    invoke-virtual {v1}, Lorg/apache/logging/log4j/spi/StandardLevel;->intLevel()I

    move-result v1

    const-string v2, "DEBUG"

    invoke-direct {v0, v2, v1}, Lorg/apache/logging/log4j/Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/logging/log4j/Level;->DEBUG:Lorg/apache/logging/log4j/Level;

    new-instance v0, Lorg/apache/logging/log4j/Level;

    sget-object v1, Lorg/apache/logging/log4j/spi/StandardLevel;->TRACE:Lorg/apache/logging/log4j/spi/StandardLevel;

    invoke-virtual {v1}, Lorg/apache/logging/log4j/spi/StandardLevel;->intLevel()I

    move-result v1

    const-string v2, "TRACE"

    invoke-direct {v0, v2, v1}, Lorg/apache/logging/log4j/Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/logging/log4j/Level;->TRACE:Lorg/apache/logging/log4j/Level;

    new-instance v0, Lorg/apache/logging/log4j/Level;

    sget-object v1, Lorg/apache/logging/log4j/spi/StandardLevel;->ALL:Lorg/apache/logging/log4j/spi/StandardLevel;

    invoke-virtual {v1}, Lorg/apache/logging/log4j/spi/StandardLevel;->intLevel()I

    move-result v1

    const-string v2, "ALL"

    invoke-direct {v0, v2, v1}, Lorg/apache/logging/log4j/Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/logging/log4j/Level;->ALL:Lorg/apache/logging/log4j/Level;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "name",
            "intLevel"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lorg/apache/logging/log4j/util/Strings;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    if-ltz p2, :cond_1

    iput-object p1, p0, Lorg/apache/logging/log4j/Level;->name:Ljava/lang/String;

    iput p2, p0, Lorg/apache/logging/log4j/Level;->intLevel:I

    invoke-static {p2}, Lorg/apache/logging/log4j/spi/StandardLevel;->getStandardLevel(I)Lorg/apache/logging/log4j/spi/StandardLevel;

    move-result-object p2

    iput-object p2, p0, Lorg/apache/logging/log4j/Level;->standardLevel:Lorg/apache/logging/log4j/spi/StandardLevel;

    sget-object p2, Lorg/apache/logging/log4j/Level;->LEVELS:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p2, p1, p0}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Level "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " has already been defined."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Illegal Level int less than zero."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Illegal null or empty Level name."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static forName(Ljava/lang/String;I)Lorg/apache/logging/log4j/Level;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "name",
            "intValue"
        }
    .end annotation

    sget-object v0, Lorg/apache/logging/log4j/Level;->LEVELS:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/Level;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    new-instance v0, Lorg/apache/logging/log4j/Level;

    invoke-direct {v0, p0, p1}, Lorg/apache/logging/log4j/Level;-><init>(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    sget-object p1, Lorg/apache/logging/log4j/Level;->LEVELS:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/logging/log4j/Level;

    return-object p0
.end method

.method public static getLevel(Ljava/lang/String;)Lorg/apache/logging/log4j/Level;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "name"
        }
    .end annotation

    sget-object v0, Lorg/apache/logging/log4j/Level;->LEVELS:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/logging/log4j/Level;

    return-object p0
.end method

.method public static toLevel(Ljava/lang/String;)Lorg/apache/logging/log4j/Level;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "sArg"
        }
    .end annotation

    .line 1
    sget-object v0, Lorg/apache/logging/log4j/Level;->DEBUG:Lorg/apache/logging/log4j/Level;

    invoke-static {p0, v0}, Lorg/apache/logging/log4j/Level;->toLevel(Ljava/lang/String;Lorg/apache/logging/log4j/Level;)Lorg/apache/logging/log4j/Level;

    move-result-object p0

    return-object p0
.end method

.method public static toLevel(Ljava/lang/String;Lorg/apache/logging/log4j/Level;)Lorg/apache/logging/log4j/Level;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "name",
            "defaultLevel"
        }
    .end annotation

    if-nez p0, :cond_0

    return-object p1

    .line 2
    :cond_0
    sget-object v0, Lorg/apache/logging/log4j/Level;->LEVELS:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/logging/log4j/Level;->toUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/logging/log4j/Level;

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    move-object p1, p0

    :goto_0
    return-object p1
.end method

.method private static toUpperCase(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "name"
        }
    .end annotation

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "enumType",
            "name"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Enum<",
            "TT;>;>(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 5
    invoke-static {p0, p1}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/logging/log4j/Level;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "name"
        }
    .end annotation

    const-string v0, "No level name given."

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/logging/log4j/Level;->toUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 3
    sget-object v0, Lorg/apache/logging/log4j/Level;->LEVELS:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/Level;

    if-eqz v0, :cond_0

    return-object v0

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown level constant ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static values()[Lorg/apache/logging/log4j/Level;
    .locals 2

    sget-object v0, Lorg/apache/logging/log4j/Level;->LEVELS:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    new-array v1, v1, [Lorg/apache/logging/log4j/Level;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/logging/log4j/Level;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/apache/logging/log4j/Level;->clone()Lorg/apache/logging/log4j/Level;

    move-result-object p0

    return-object p0
.end method

.method public clone()Lorg/apache/logging/log4j/Level;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 2
    new-instance p0, Ljava/lang/CloneNotSupportedException;

    invoke-direct {p0}, Ljava/lang/CloneNotSupportedException;-><init>()V

    throw p0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "other"
        }
    .end annotation

    .line 1
    check-cast p1, Lorg/apache/logging/log4j/Level;

    invoke-virtual {p0, p1}, Lorg/apache/logging/log4j/Level;->compareTo(Lorg/apache/logging/log4j/Level;)I

    move-result p0

    return p0
.end method

.method public compareTo(Lorg/apache/logging/log4j/Level;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "other"
        }
    .end annotation

    .line 2
    iget p0, p0, Lorg/apache/logging/log4j/Level;->intLevel:I

    iget p1, p1, Lorg/apache/logging/log4j/Level;->intLevel:I

    if-ge p0, p1, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    :cond_0
    if-le p0, p1, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "other"
        }
    .end annotation

    instance-of v0, p1, Lorg/apache/logging/log4j/Level;

    if-eqz v0, :cond_0

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getDeclaringClass()Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lorg/apache/logging/log4j/Level;",
            ">;"
        }
    .end annotation

    const-class p0, Lorg/apache/logging/log4j/Level;

    return-object p0
.end method

.method public getStandardLevel()Lorg/apache/logging/log4j/spi/StandardLevel;
    .locals 0

    iget-object p0, p0, Lorg/apache/logging/log4j/Level;->standardLevel:Lorg/apache/logging/log4j/spi/StandardLevel;

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Lorg/apache/logging/log4j/Level;->name:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    return p0
.end method

.method public intLevel()I
    .locals 0

    iget p0, p0, Lorg/apache/logging/log4j/Level;->intLevel:I

    return p0
.end method

.method public isInRange(Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Level;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "minLevel",
            "maxLevel"
        }
    .end annotation

    iget p0, p0, Lorg/apache/logging/log4j/Level;->intLevel:I

    iget p1, p1, Lorg/apache/logging/log4j/Level;->intLevel:I

    if-lt p0, p1, :cond_0

    iget p1, p2, Lorg/apache/logging/log4j/Level;->intLevel:I

    if-gt p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isLessSpecificThan(Lorg/apache/logging/log4j/Level;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "level"
        }
    .end annotation

    iget p0, p0, Lorg/apache/logging/log4j/Level;->intLevel:I

    iget p1, p1, Lorg/apache/logging/log4j/Level;->intLevel:I

    if-lt p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isMoreSpecificThan(Lorg/apache/logging/log4j/Level;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "level"
        }
    .end annotation

    iget p0, p0, Lorg/apache/logging/log4j/Level;->intLevel:I

    iget p1, p1, Lorg/apache/logging/log4j/Level;->intLevel:I

    if-gt p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public name()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/logging/log4j/Level;->name:Ljava/lang/String;

    return-object p0
.end method

.method public readResolve()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/apache/logging/log4j/Level;->name:Ljava/lang/String;

    invoke-static {p0}, Lorg/apache/logging/log4j/Level;->valueOf(Ljava/lang/String;)Lorg/apache/logging/log4j/Level;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/logging/log4j/Level;->name:Ljava/lang/String;

    return-object p0
.end method
