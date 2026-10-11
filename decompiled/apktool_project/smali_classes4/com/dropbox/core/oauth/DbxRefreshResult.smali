.class public Lcom/dropbox/core/oauth/DbxRefreshResult;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final Reader:Lcom/dropbox/core/json/JsonReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/dropbox/core/json/JsonReader<",
            "Lcom/dropbox/core/oauth/DbxRefreshResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:J

.field public c:J

.field public d:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/dropbox/core/oauth/DbxRefreshResult$a;

    invoke-direct {v0}, Lcom/dropbox/core/oauth/DbxRefreshResult$a;-><init>()V

    sput-object v0, Lcom/dropbox/core/oauth/DbxRefreshResult;->Reader:Lcom/dropbox/core/json/JsonReader;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;J)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/dropbox/core/oauth/DbxRefreshResult;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JLjava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 3
    iput-object p1, p0, Lcom/dropbox/core/oauth/DbxRefreshResult;->a:Ljava/lang/String;

    .line 4
    iput-wide p2, p0, Lcom/dropbox/core/oauth/DbxRefreshResult;->b:J

    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/dropbox/core/oauth/DbxRefreshResult;->c:J

    .line 6
    iput-object p4, p0, Lcom/dropbox/core/oauth/DbxRefreshResult;->d:Ljava/lang/String;

    return-void

    .line 7
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "access token can\'t be null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public a(J)V
    .locals 0

    iput-wide p1, p0, Lcom/dropbox/core/oauth/DbxRefreshResult;->c:J

    return-void
.end method

.method public getAccessToken()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/oauth/DbxRefreshResult;->a:Ljava/lang/String;

    return-object p0
.end method

.method public getExpiresAt()Ljava/lang/Long;
    .locals 6

    iget-wide v0, p0, Lcom/dropbox/core/oauth/DbxRefreshResult;->c:J

    iget-wide v2, p0, Lcom/dropbox/core/oauth/DbxRefreshResult;->b:J

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public getScope()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/oauth/DbxRefreshResult;->d:Ljava/lang/String;

    return-object p0
.end method
