.class public final Lcom/dropbox/core/DbxAuthFinish;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final AccessTokenReader:Lcom/dropbox/core/json/JsonReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/dropbox/core/json/JsonReader<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final BearerTokenTypeReader:Lcom/dropbox/core/json/JsonReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/dropbox/core/json/JsonReader<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final Reader:Lcom/dropbox/core/json/JsonReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/dropbox/core/json/JsonReader<",
            "Lcom/dropbox/core/DbxAuthFinish;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/Long;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;

.field public final g:Ljava/lang/String;

.field public h:J

.field public final i:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/dropbox/core/DbxAuthFinish$a;

    invoke-direct {v0}, Lcom/dropbox/core/DbxAuthFinish$a;-><init>()V

    sput-object v0, Lcom/dropbox/core/DbxAuthFinish;->Reader:Lcom/dropbox/core/json/JsonReader;

    new-instance v0, Lcom/dropbox/core/DbxAuthFinish$b;

    invoke-direct {v0}, Lcom/dropbox/core/DbxAuthFinish$b;-><init>()V

    sput-object v0, Lcom/dropbox/core/DbxAuthFinish;->BearerTokenTypeReader:Lcom/dropbox/core/json/JsonReader;

    new-instance v0, Lcom/dropbox/core/DbxAuthFinish$c;

    invoke-direct {v0}, Lcom/dropbox/core/DbxAuthFinish$c;-><init>()V

    sput-object v0, Lcom/dropbox/core/DbxAuthFinish;->AccessTokenReader:Lcom/dropbox/core/json/JsonReader;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    .line 2
    invoke-direct/range {v0 .. v8}, Lcom/dropbox/core/DbxAuthFinish;-><init>(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/dropbox/core/DbxAuthFinish;->a:Ljava/lang/String;

    .line 5
    iput-object p2, p0, Lcom/dropbox/core/DbxAuthFinish;->b:Ljava/lang/Long;

    .line 6
    iput-object p3, p0, Lcom/dropbox/core/DbxAuthFinish;->c:Ljava/lang/String;

    .line 7
    iput-object p4, p0, Lcom/dropbox/core/DbxAuthFinish;->d:Ljava/lang/String;

    .line 8
    iput-object p6, p0, Lcom/dropbox/core/DbxAuthFinish;->e:Ljava/lang/String;

    .line 9
    iput-object p5, p0, Lcom/dropbox/core/DbxAuthFinish;->f:Ljava/lang/String;

    .line 10
    iput-object p7, p0, Lcom/dropbox/core/DbxAuthFinish;->g:Ljava/lang/String;

    .line 11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/dropbox/core/DbxAuthFinish;->h:J

    .line 12
    iput-object p8, p0, Lcom/dropbox/core/DbxAuthFinish;->i:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p4

    move-object v6, p3

    move-object v7, p5

    .line 1
    invoke-direct/range {v0 .. v7}, Lcom/dropbox/core/DbxAuthFinish;-><init>(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(J)V
    .locals 0

    iput-wide p1, p0, Lcom/dropbox/core/DbxAuthFinish;->h:J

    return-void
.end method

.method public b(Ljava/lang/String;)Lcom/dropbox/core/DbxAuthFinish;
    .locals 10

    iget-object v0, p0, Lcom/dropbox/core/DbxAuthFinish;->g:Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Lcom/dropbox/core/DbxAuthFinish;

    iget-object v2, p0, Lcom/dropbox/core/DbxAuthFinish;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/dropbox/core/DbxAuthFinish;->b:Ljava/lang/Long;

    iget-object v4, p0, Lcom/dropbox/core/DbxAuthFinish;->c:Ljava/lang/String;

    iget-object v5, p0, Lcom/dropbox/core/DbxAuthFinish;->d:Ljava/lang/String;

    iget-object v6, p0, Lcom/dropbox/core/DbxAuthFinish;->f:Ljava/lang/String;

    iget-object v7, p0, Lcom/dropbox/core/DbxAuthFinish;->e:Ljava/lang/String;

    iget-object v9, p0, Lcom/dropbox/core/DbxAuthFinish;->i:Ljava/lang/String;

    move-object v1, v0

    move-object v8, p1

    invoke-direct/range {v1 .. v9}, Lcom/dropbox/core/DbxAuthFinish;-><init>(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-wide p0, p0, Lcom/dropbox/core/DbxAuthFinish;->h:J

    invoke-virtual {v0, p0, p1}, Lcom/dropbox/core/DbxAuthFinish;->a(J)V

    return-object v0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Already have URL state."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getAccessToken()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/DbxAuthFinish;->a:Ljava/lang/String;

    return-object p0
.end method

.method public getAccountId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/DbxAuthFinish;->e:Ljava/lang/String;

    return-object p0
.end method

.method public getExpiresAt()Ljava/lang/Long;
    .locals 7

    iget-object v0, p0, Lcom/dropbox/core/DbxAuthFinish;->b:Ljava/lang/Long;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-wide v1, p0, Lcom/dropbox/core/DbxAuthFinish;->h:J

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    mul-long/2addr v3, v5

    add-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public getRefreshToken()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/DbxAuthFinish;->c:Ljava/lang/String;

    return-object p0
.end method

.method public getScope()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/DbxAuthFinish;->i:Ljava/lang/String;

    return-object p0
.end method

.method public getTeamId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/DbxAuthFinish;->f:Ljava/lang/String;

    return-object p0
.end method

.method public getUrlState()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/DbxAuthFinish;->g:Ljava/lang/String;

    return-object p0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/DbxAuthFinish;->d:Ljava/lang/String;

    return-object p0
.end method
