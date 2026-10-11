.class public Lorg/mortbay/jetty/security/Credential$MD5;
.super Lorg/mortbay/jetty/security/Credential;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mortbay/jetty/security/Credential;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MD5"
.end annotation


# static fields
.field public static final __TYPE:Ljava/lang/String; = "MD5:"

.field public static final __md5Lock:Ljava/lang/Object;

.field public static b:Ljava/security/MessageDigest;


# instance fields
.field public a:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/mortbay/jetty/security/Credential$MD5;->__md5Lock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lorg/mortbay/jetty/security/Credential;-><init>()V

    const-string v0, "MD5:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :cond_0
    const/16 v0, 0x10

    invoke-static {p1, v0}, Lorg/mortbay/util/TypeUtil;->parseBytes(Ljava/lang/String;I)[B

    move-result-object p1

    iput-object p1, p0, Lorg/mortbay/jetty/security/Credential$MD5;->a:[B

    return-void
.end method

.method public static digest(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lorg/mortbay/jetty/security/Credential$MD5;->__md5Lock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    sget-object v2, Lorg/mortbay/jetty/security/Credential$MD5;->b:Ljava/security/MessageDigest;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v2, :cond_0

    :try_start_2
    const-string v2, "MD5"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    sput-object v2, Lorg/mortbay/jetty/security/Credential$MD5;->b:Ljava/security/MessageDigest;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p0

    :try_start_3
    invoke-static {p0}, Lorg/mortbay/log/Log;->warn(Ljava/lang/Throwable;)V

    monitor-exit v1

    return-object v0

    :cond_0
    :goto_0
    sget-object v2, Lorg/mortbay/jetty/security/Credential$MD5;->b:Ljava/security/MessageDigest;

    invoke-virtual {v2}, Ljava/security/MessageDigest;->reset()V

    sget-object v2, Lorg/mortbay/jetty/security/Credential$MD5;->b:Ljava/security/MessageDigest;

    sget-object v3, Lorg/mortbay/util/StringUtil;->__ISO_8859_1:Ljava/lang/String;

    invoke-virtual {p0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/security/MessageDigest;->update([B)V

    sget-object p0, Lorg/mortbay/jetty/security/Credential$MD5;->b:Ljava/security/MessageDigest;

    invoke-virtual {p0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "MD5:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v2, 0x10

    invoke-static {p0, v2}, Lorg/mortbay/util/TypeUtil;->toString([BI)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw p0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    :catch_1
    move-exception p0

    invoke-static {p0}, Lorg/mortbay/log/Log;->warn(Ljava/lang/Throwable;)V

    return-object v0
.end method


# virtual methods
.method public check(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    instance-of v1, p1, Lorg/mortbay/jetty/security/Password;

    const/4 v2, 0x1

    if-nez v1, :cond_6

    instance-of v1, p1, Ljava/lang/String;

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    instance-of v1, p1, Lorg/mortbay/jetty/security/Credential$MD5;

    if-eqz v1, :cond_4

    check-cast p1, Lorg/mortbay/jetty/security/Credential$MD5;

    iget-object v1, p0, Lorg/mortbay/jetty/security/Credential$MD5;->a:[B

    array-length v1, v1

    iget-object v3, p1, Lorg/mortbay/jetty/security/Credential$MD5;->a:[B

    array-length v3, v3

    if-eq v1, v3, :cond_1

    return v0

    :cond_1
    move v1, v0

    :goto_0
    iget-object v3, p0, Lorg/mortbay/jetty/security/Credential$MD5;->a:[B

    array-length v4, v3

    if-ge v1, v4, :cond_3

    aget-byte v3, v3, v1

    iget-object v4, p1, Lorg/mortbay/jetty/security/Credential$MD5;->a:[B

    aget-byte v4, v4, v1

    if-eq v3, v4, :cond_2

    return v0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return v2

    :cond_4
    instance-of v1, p1, Lorg/mortbay/jetty/security/Credential;

    if-eqz v1, :cond_5

    check-cast p1, Lorg/mortbay/jetty/security/Credential;

    invoke-virtual {p1, p0}, Lorg/mortbay/jetty/security/Credential;->check(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_5
    new-instance p0, Ljava/lang/StringBuffer;

    invoke-direct {p0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Can\'t check "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string p1, " against MD5"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;)V

    return v0

    :cond_6
    :goto_1
    sget-object v1, Lorg/mortbay/jetty/security/Credential$MD5;->__md5Lock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    sget-object v3, Lorg/mortbay/jetty/security/Credential$MD5;->b:Ljava/security/MessageDigest;

    if-nez v3, :cond_7

    const-string v3, "MD5"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    sput-object v3, Lorg/mortbay/jetty/security/Credential$MD5;->b:Ljava/security/MessageDigest;

    :cond_7
    sget-object v3, Lorg/mortbay/jetty/security/Credential$MD5;->b:Ljava/security/MessageDigest;

    invoke-virtual {v3}, Ljava/security/MessageDigest;->reset()V

    sget-object v3, Lorg/mortbay/jetty/security/Credential$MD5;->b:Ljava/security/MessageDigest;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v4, Lorg/mortbay/util/StringUtil;->__ISO_8859_1:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/security/MessageDigest;->update([B)V

    sget-object p1, Lorg/mortbay/jetty/security/Credential$MD5;->b:Ljava/security/MessageDigest;

    invoke-virtual {p1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p1

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_b

    :try_start_2
    array-length v1, p1

    iget-object v3, p0, Lorg/mortbay/jetty/security/Credential$MD5;->a:[B

    array-length v3, v3

    if-eq v1, v3, :cond_8

    goto :goto_3

    :cond_8
    move v1, v0

    :goto_2
    array-length v3, p1

    if-ge v1, v3, :cond_a

    aget-byte v3, p1, v1

    iget-object v4, p0, Lorg/mortbay/jetty/security/Credential$MD5;->a:[B

    aget-byte v4, v4, v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    if-eq v3, v4, :cond_9

    return v0

    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_a
    return v2

    :cond_b
    :goto_3
    return v0

    :catchall_0
    move-exception p0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lorg/mortbay/log/Log;->warn(Ljava/lang/Throwable;)V

    return v0
.end method

.method public getDigest()[B
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/security/Credential$MD5;->a:[B

    return-object p0
.end method
