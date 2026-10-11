.class public final Lorg/apache/poi/poifs/nio/CleanerUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/poifs/nio/CleanerUtil$BufferCleaner;
    }
.end annotation

.annotation build Lorg/apache/poi/util/SuppressForbidden;
    value = "uses java.security features deprecated in java 17 - no other option though"
.end annotation


# static fields
.field private static final CLEANER:Lorg/apache/poi/poifs/nio/CleanerUtil$BufferCleaner;

.field private static final LOG:Lorg/apache/logging/log4j/Logger;

.field public static final UNMAP_NOT_SUPPORTED_REASON:Ljava/lang/String;

.field public static final UNMAP_SUPPORTED:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const-class v0, Lorg/apache/poi/poifs/nio/FileBackedDataSource;

    invoke-static {v0}, Lorg/apache/logging/log4j/LogManager;->getLogger(Ljava/lang/Class;)Lorg/apache/logging/log4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/poifs/nio/CleanerUtil;->LOG:Lorg/apache/logging/log4j/Logger;

    new-instance v0, Lcom/sunia/HTREnginev2/oud;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/oud;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lorg/apache/poi/poifs/nio/CleanerUtil$BufferCleaner;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Lorg/apache/poi/poifs/nio/CleanerUtil$BufferCleaner;

    sput-object v0, Lorg/apache/poi/poifs/nio/CleanerUtil;->CLEANER:Lorg/apache/poi/poifs/nio/CleanerUtil$BufferCleaner;

    const/4 v0, 0x1

    sput-boolean v0, Lorg/apache/poi/poifs/nio/CleanerUtil;->UNMAP_SUPPORTED:Z

    sput-object v2, Lorg/apache/poi/poifs/nio/CleanerUtil;->UNMAP_NOT_SUPPORTED_REASON:Ljava/lang/String;

    goto :goto_0

    :cond_0
    sput-object v2, Lorg/apache/poi/poifs/nio/CleanerUtil;->CLEANER:Lorg/apache/poi/poifs/nio/CleanerUtil$BufferCleaner;

    const/4 v1, 0x0

    sput-boolean v1, Lorg/apache/poi/poifs/nio/CleanerUtil;->UNMAP_SUPPORTED:Z

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/poifs/nio/CleanerUtil;->UNMAP_NOT_SUPPORTED_REASON:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lorg/apache/poi/poifs/nio/CleanerUtil;->unmapHackImpl()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic b(Ljava/lang/Class;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/nio/ByteBuffer;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lorg/apache/poi/poifs/nio/CleanerUtil;->lambda$newBufferCleaner$1(Ljava/lang/Class;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public static synthetic c(Ljava/lang/reflect/Method;Ljava/nio/ByteBuffer;Ljava/lang/reflect/Method;)Ljava/lang/Throwable;
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/apache/poi/poifs/nio/CleanerUtil;->lambda$null$0(Ljava/lang/reflect/Method;Ljava/nio/ByteBuffer;Ljava/lang/reflect/Method;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method public static getCleaner()Lorg/apache/poi/poifs/nio/CleanerUtil$BufferCleaner;
    .locals 1

    sget-object v0, Lorg/apache/poi/poifs/nio/CleanerUtil;->CLEANER:Lorg/apache/poi/poifs/nio/CleanerUtil$BufferCleaner;

    return-object v0
.end method

.method private static synthetic lambda$newBufferCleaner$1(Ljava/lang/Class;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/nio/ByteBuffer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, p3}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance p0, Lcom/sunia/HTREnginev2/pud;

    invoke-direct {p0, p1, p3, p2}, Lcom/sunia/HTREnginev2/pud;-><init>(Ljava/lang/reflect/Method;Ljava/nio/ByteBuffer;Ljava/lang/reflect/Method;)V

    invoke-static {p0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Throwable;

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Unable to unmap the mapped buffer"

    invoke-direct {p1, p2, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "buffer is not an instance of "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "unmapping only works with direct buffers"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static synthetic lambda$null$0(Ljava/lang/reflect/Method;Ljava/nio/ByteBuffer;Ljava/lang/reflect/Method;)Ljava/lang/Throwable;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    new-array v1, v0, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    new-array p1, v0, [Ljava/lang/Object;

    invoke-virtual {p2, p0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    const/4 p0, 0x0

    return-object p0

    :catchall_0
    move-exception p0

    return-object p0
.end method

.method private static newBufferCleaner(Ljava/lang/Class;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)Lorg/apache/poi/poifs/nio/CleanerUtil$BufferCleaner;
    .locals 1

    new-instance v0, Lcom/sunia/HTREnginev2/nud;

    invoke-direct {v0, p0, p1, p2}, Lcom/sunia/HTREnginev2/nud;-><init>(Ljava/lang/Class;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    return-object v0
.end method

.method private static unmapHackImpl()Ljava/lang/Object;
    .locals 6
    .annotation build Lorg/apache/poi/util/SuppressForbidden;
        value = "Java 9 Jigsaw allows access to sun.misc.Cleaner, so setAccessible works"
    .end annotation

    :try_start_0
    const-string v0, "sun.nio.ch.DirectBuffer"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "cleaner"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    const-string v4, "sun.misc.Cleaner"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const-string v5, "clean"

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-static {v0, v1, v2}, Lorg/apache/poi/poifs/nio/CleanerUtil;->newBufferCleaner(Ljava/lang/Class;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)Lorg/apache/poi/poifs/nio/CleanerUtil$BufferCleaner;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-object v1, Lorg/apache/poi/poifs/nio/CleanerUtil;->LOG:Lorg/apache/logging/log4j/Logger;

    invoke-interface {v1}, Lorg/apache/logging/log4j/Logger;->atError()Lorg/apache/logging/log4j/LogBuilder;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/apache/logging/log4j/LogBuilder;->withThrowable(Ljava/lang/Throwable;)Lorg/apache/logging/log4j/LogBuilder;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/logging/log4j/LogBuilder;->log()V

    const/4 v0, 0x0

    return-object v0
.end method
