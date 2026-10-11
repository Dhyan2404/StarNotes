.class public Lcom/fasterxml/uuid/impl/NameBasedGenerator;
.super Lcom/fasterxml/uuid/StringArgGenerator;
.source "SourceFile"


# static fields
.field public static final NAMESPACE_DNS:Ljava/util/UUID;

.field public static final NAMESPACE_OID:Ljava/util/UUID;

.field public static final NAMESPACE_URL:Ljava/util/UUID;

.field public static final NAMESPACE_X500:Ljava/util/UUID;

.field public static final _utf8:Ljava/nio/charset/Charset;


# instance fields
.field protected final _digester:Ljava/security/MessageDigest;

.field protected final _namespace:Ljava/util/UUID;

.field protected final _type:Lcom/fasterxml/uuid/UUIDType;

.field public final a:Lcom/fasterxml/uuid/impl/LoggerFacade;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/fasterxml/uuid/impl/NameBasedGenerator;->_utf8:Ljava/nio/charset/Charset;

    const-string v0, "6ba7b810-9dad-11d1-80b4-00c04fd430c8"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/fasterxml/uuid/impl/NameBasedGenerator;->NAMESPACE_DNS:Ljava/util/UUID;

    const-string v0, "6ba7b811-9dad-11d1-80b4-00c04fd430c8"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/fasterxml/uuid/impl/NameBasedGenerator;->NAMESPACE_URL:Ljava/util/UUID;

    const-string v0, "6ba7b812-9dad-11d1-80b4-00c04fd430c8"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/fasterxml/uuid/impl/NameBasedGenerator;->NAMESPACE_OID:Ljava/util/UUID;

    const-string v0, "6ba7b814-9dad-11d1-80b4-00c04fd430c8"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/fasterxml/uuid/impl/NameBasedGenerator;->NAMESPACE_X500:Ljava/util/UUID;

    return-void
.end method

.method public constructor <init>(Ljava/util/UUID;Ljava/security/MessageDigest;Lcom/fasterxml/uuid/UUIDType;)V
    .locals 2

    invoke-direct {p0}, Lcom/fasterxml/uuid/StringArgGenerator;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/fasterxml/uuid/impl/LoggerFacade;->getLogger(Ljava/lang/Class;)Lcom/fasterxml/uuid/impl/LoggerFacade;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/uuid/impl/NameBasedGenerator;->a:Lcom/fasterxml/uuid/impl/LoggerFacade;

    iput-object p1, p0, Lcom/fasterxml/uuid/impl/NameBasedGenerator;->_namespace:Ljava/util/UUID;

    if-eqz p2, :cond_3

    if-nez p3, :cond_2

    invoke-virtual {p2}, Ljava/security/MessageDigest;->getAlgorithm()Ljava/lang/String;

    move-result-object p1

    const-string p3, "MD5"

    invoke-virtual {p1, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_0

    sget-object p3, Lcom/fasterxml/uuid/UUIDType;->NAME_BASED_MD5:Lcom/fasterxml/uuid/UUIDType;

    goto :goto_0

    :cond_0
    const-string p3, "SHA"

    invoke-virtual {p1, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_1

    sget-object p3, Lcom/fasterxml/uuid/UUIDType;->NAME_BASED_SHA1:Lcom/fasterxml/uuid/UUIDType;

    goto :goto_0

    :cond_1
    sget-object p3, Lcom/fasterxml/uuid/UUIDType;->NAME_BASED_SHA1:Lcom/fasterxml/uuid/UUIDType;

    const-string v1, "Could not determine type of Digester from \'%s\'; assuming \'SHA-1\' type"

    invoke-virtual {v0, v1, p1}, Lcom/fasterxml/uuid/impl/LoggerFacade;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    :goto_0
    iput-object p2, p0, Lcom/fasterxml/uuid/impl/NameBasedGenerator;->_digester:Ljava/security/MessageDigest;

    iput-object p3, p0, Lcom/fasterxml/uuid/impl/NameBasedGenerator;->_type:Lcom/fasterxml/uuid/UUIDType;

    return-void

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Digester not optional: cannot pass `null`"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public generate(Ljava/lang/String;)Ljava/util/UUID;
    .locals 1

    .line 1
    sget-object v0, Lcom/fasterxml/uuid/impl/NameBasedGenerator;->_utf8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/fasterxml/uuid/impl/NameBasedGenerator;->generate([B)Ljava/util/UUID;

    move-result-object p0

    return-object p0
.end method

.method public generate([B)Ljava/util/UUID;
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/fasterxml/uuid/impl/NameBasedGenerator;->_digester:Ljava/security/MessageDigest;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/fasterxml/uuid/impl/NameBasedGenerator;->_digester:Ljava/security/MessageDigest;

    invoke-virtual {v1}, Ljava/security/MessageDigest;->reset()V

    .line 4
    iget-object v1, p0, Lcom/fasterxml/uuid/impl/NameBasedGenerator;->_namespace:Ljava/util/UUID;

    if-eqz v1, :cond_0

    .line 5
    iget-object v2, p0, Lcom/fasterxml/uuid/impl/NameBasedGenerator;->_digester:Ljava/security/MessageDigest;

    invoke-static {v1}, Lcom/fasterxml/uuid/impl/UUIDUtil;->asByteArray(Ljava/util/UUID;)[B

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/fasterxml/uuid/impl/NameBasedGenerator;->_digester:Ljava/security/MessageDigest;

    invoke-virtual {v1, p1}, Ljava/security/MessageDigest;->update([B)V

    .line 7
    iget-object p1, p0, Lcom/fasterxml/uuid/impl/NameBasedGenerator;->_digester:Ljava/security/MessageDigest;

    invoke-virtual {p1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p1

    .line 8
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    iget-object p0, p0, Lcom/fasterxml/uuid/impl/NameBasedGenerator;->_type:Lcom/fasterxml/uuid/UUIDType;

    invoke-static {p0, p1}, Lcom/fasterxml/uuid/impl/UUIDUtil;->constructUUID(Lcom/fasterxml/uuid/UUIDType;[B)Ljava/util/UUID;

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception p0

    .line 10
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public getNamespace()Ljava/util/UUID;
    .locals 0

    iget-object p0, p0, Lcom/fasterxml/uuid/impl/NameBasedGenerator;->_namespace:Ljava/util/UUID;

    return-object p0
.end method

.method public getType()Lcom/fasterxml/uuid/UUIDType;
    .locals 0

    iget-object p0, p0, Lcom/fasterxml/uuid/impl/NameBasedGenerator;->_type:Lcom/fasterxml/uuid/UUIDType;

    return-object p0
.end method
