.class public abstract Lorg/scribe/services/Base64Encoder;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Lorg/scribe/services/Base64Encoder;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lorg/scribe/services/Base64Encoder;
    .locals 1

    invoke-static {}, Lorg/scribe/services/CommonsEncoder;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/scribe/services/CommonsEncoder;

    invoke-direct {v0}, Lorg/scribe/services/CommonsEncoder;-><init>()V

    return-object v0

    :cond_0
    new-instance v0, Lorg/scribe/services/DatatypeConverterEncoder;

    invoke-direct {v0}, Lorg/scribe/services/DatatypeConverterEncoder;-><init>()V

    return-object v0
.end method

.method public static declared-synchronized getInstance()Lorg/scribe/services/Base64Encoder;
    .locals 2

    const-class v0, Lorg/scribe/services/Base64Encoder;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lorg/scribe/services/Base64Encoder;->a:Lorg/scribe/services/Base64Encoder;

    if-nez v1, :cond_0

    invoke-static {}, Lorg/scribe/services/Base64Encoder;->a()Lorg/scribe/services/Base64Encoder;

    move-result-object v1

    sput-object v1, Lorg/scribe/services/Base64Encoder;->a:Lorg/scribe/services/Base64Encoder;

    :cond_0
    sget-object v1, Lorg/scribe/services/Base64Encoder;->a:Lorg/scribe/services/Base64Encoder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static type()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lorg/scribe/services/Base64Encoder;->getInstance()Lorg/scribe/services/Base64Encoder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/scribe/services/Base64Encoder;->getType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract encode([B)Ljava/lang/String;
.end method

.method public abstract getType()Ljava/lang/String;
.end method
