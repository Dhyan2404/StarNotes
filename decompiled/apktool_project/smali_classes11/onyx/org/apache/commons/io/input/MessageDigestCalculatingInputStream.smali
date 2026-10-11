.class public Lonyx/org/apache/commons/io/input/MessageDigestCalculatingInputStream;
.super Lonyx/org/apache/commons/io/input/ObservableInputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lonyx/org/apache/commons/io/input/MessageDigestCalculatingInputStream$MessageDigestMaintainingObserver;,
        Lonyx/org/apache/commons/io/input/MessageDigestCalculatingInputStream$Builder;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final g:Ljava/lang/String; = "MD5"


# instance fields
.field public final f:Ljava/security/MessageDigest;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {}, Lonyx/org/apache/commons/io/input/MessageDigestCalculatingInputStream;->g0()Ljava/security/MessageDigest;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lonyx/org/apache/commons/io/input/MessageDigestCalculatingInputStream;-><init>(Ljava/io/InputStream;Ljava/security/MessageDigest;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4
    invoke-static {p2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lonyx/org/apache/commons/io/input/MessageDigestCalculatingInputStream;-><init>(Ljava/io/InputStream;Ljava/security/MessageDigest;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/security/MessageDigest;)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Lonyx/org/apache/commons/io/input/ObservableInputStream$Observer;

    .line 2
    new-instance v1, Lonyx/org/apache/commons/io/input/MessageDigestCalculatingInputStream$MessageDigestMaintainingObserver;

    invoke-direct {v1, p2}, Lonyx/org/apache/commons/io/input/MessageDigestCalculatingInputStream$MessageDigestMaintainingObserver;-><init>(Ljava/security/MessageDigest;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-direct {p0, p1, v0}, Lonyx/org/apache/commons/io/input/ObservableInputStream;-><init>(Ljava/io/InputStream;[Lonyx/org/apache/commons/io/input/ObservableInputStream$Observer;)V

    .line 3
    iput-object p2, p0, Lonyx/org/apache/commons/io/input/MessageDigestCalculatingInputStream;->f:Ljava/security/MessageDigest;

    return-void
.end method

.method public static builder()Lonyx/org/apache/commons/io/input/MessageDigestCalculatingInputStream$Builder;
    .locals 1

    new-instance v0, Lonyx/org/apache/commons/io/input/MessageDigestCalculatingInputStream$Builder;

    invoke-direct {v0}, Lonyx/org/apache/commons/io/input/MessageDigestCalculatingInputStream$Builder;-><init>()V

    return-object v0
.end method

.method public static g0()Ljava/security/MessageDigest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getMessageDigest()Ljava/security/MessageDigest;
    .locals 0

    iget-object p0, p0, Lonyx/org/apache/commons/io/input/MessageDigestCalculatingInputStream;->f:Ljava/security/MessageDigest;

    return-object p0
.end method
