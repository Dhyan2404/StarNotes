.class public final Lonyx/org/apache/commons/io/input/MessageDigestInputStream;
.super Lonyx/org/apache/commons/io/input/ObservableInputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lonyx/org/apache/commons/io/input/MessageDigestInputStream$MessageDigestMaintainingObserver;,
        Lonyx/org/apache/commons/io/input/MessageDigestInputStream$Builder;
    }
.end annotation


# instance fields
.field public final f:Ljava/security/MessageDigest;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljava/security/MessageDigest;)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Lonyx/org/apache/commons/io/input/ObservableInputStream$Observer;

    .line 2
    new-instance v1, Lonyx/org/apache/commons/io/input/MessageDigestInputStream$MessageDigestMaintainingObserver;

    invoke-direct {v1, p2}, Lonyx/org/apache/commons/io/input/MessageDigestInputStream$MessageDigestMaintainingObserver;-><init>(Ljava/security/MessageDigest;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-direct {p0, p1, v0}, Lonyx/org/apache/commons/io/input/ObservableInputStream;-><init>(Ljava/io/InputStream;[Lonyx/org/apache/commons/io/input/ObservableInputStream$Observer;)V

    .line 3
    iput-object p2, p0, Lonyx/org/apache/commons/io/input/MessageDigestInputStream;->f:Ljava/security/MessageDigest;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/io/InputStream;Ljava/security/MessageDigest;Lonyx/org/apache/commons/io/input/MessageDigestInputStream$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lonyx/org/apache/commons/io/input/MessageDigestInputStream;-><init>(Ljava/io/InputStream;Ljava/security/MessageDigest;)V

    return-void
.end method

.method public static builder()Lonyx/org/apache/commons/io/input/MessageDigestInputStream$Builder;
    .locals 1

    new-instance v0, Lonyx/org/apache/commons/io/input/MessageDigestInputStream$Builder;

    invoke-direct {v0}, Lonyx/org/apache/commons/io/input/MessageDigestInputStream$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public getMessageDigest()Ljava/security/MessageDigest;
    .locals 0

    iget-object p0, p0, Lonyx/org/apache/commons/io/input/MessageDigestInputStream;->f:Ljava/security/MessageDigest;

    return-object p0
.end method
