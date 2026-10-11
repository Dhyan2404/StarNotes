.class public Lsun/awt/SunHints$Value;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/awt/SunHints;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Value"
.end annotation


# static fields
.field private static ValueObjects:[[Lsun/awt/SunHints$Value;


# instance fields
.field private description:Ljava/lang/String;

.field private index:I

.field private myKey:Lsun/awt/SunHints$Key;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const/16 v0, 0xa

    const/16 v1, 0x8

    filled-new-array {v0, v1}, [I

    move-result-object v0

    const-class v1, Lsun/awt/SunHints$Value;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Lsun/awt/SunHints$Value;

    sput-object v0, Lsun/awt/SunHints$Value;->ValueObjects:[[Lsun/awt/SunHints$Value;

    return-void
.end method

.method public constructor <init>(Lsun/awt/SunHints$Key;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsun/awt/SunHints$Value;->myKey:Lsun/awt/SunHints$Key;

    iput p2, p0, Lsun/awt/SunHints$Value;->index:I

    iput-object p3, p0, Lsun/awt/SunHints$Value;->description:Ljava/lang/String;

    invoke-static {p1, p0}, Lsun/awt/SunHints$Value;->register(Lsun/awt/SunHints$Key;Lsun/awt/SunHints$Value;)V

    return-void
.end method

.method public static get(II)Lsun/awt/SunHints$Value;
    .locals 1

    sget-object v0, Lsun/awt/SunHints$Value;->ValueObjects:[[Lsun/awt/SunHints$Value;

    aget-object p0, v0, p0

    aget-object p0, p0, p1

    return-object p0
.end method

.method private static declared-synchronized register(Lsun/awt/SunHints$Key;Lsun/awt/SunHints$Value;)V
    .locals 3

    const-class v0, Lsun/awt/SunHints$Value;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lsun/awt/SunHints$Key;->getIndex()I

    move-result p0

    invoke-virtual {p1}, Lsun/awt/SunHints$Value;->getIndex()I

    move-result v1

    sget-object v2, Lsun/awt/SunHints$Value;->ValueObjects:[[Lsun/awt/SunHints$Value;

    aget-object p0, v2, p0

    aget-object v2, p0, v1

    if-nez v2, :cond_0

    aput-object p1, p0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :cond_0
    :try_start_1
    new-instance p0, Ljava/lang/InternalError;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "duplicate index: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 0

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final getIndex()I
    .locals 0

    iget p0, p0, Lsun/awt/SunHints$Value;->index:I

    return p0
.end method

.method public final hashCode()I
    .locals 0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final isCompatibleKey(Lsun/awt/SunHints$Key;)Z
    .locals 0

    iget-object p0, p0, Lsun/awt/SunHints$Value;->myKey:Lsun/awt/SunHints$Key;

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lsun/awt/SunHints$Value;->description:Ljava/lang/String;

    return-object p0
.end method
