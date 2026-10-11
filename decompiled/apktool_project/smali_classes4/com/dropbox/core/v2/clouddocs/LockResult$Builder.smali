.class public Lcom/dropbox/core/v2/clouddocs/LockResult$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/clouddocs/LockResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field protected expiresAt:J

.field protected fileId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "\"\""

    iput-object v0, p0, Lcom/dropbox/core/v2/clouddocs/LockResult$Builder;->fileId:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/dropbox/core/v2/clouddocs/LockResult$Builder;->expiresAt:J

    return-void
.end method


# virtual methods
.method public build()Lcom/dropbox/core/v2/clouddocs/LockResult;
    .locals 4

    new-instance v0, Lcom/dropbox/core/v2/clouddocs/LockResult;

    iget-object v1, p0, Lcom/dropbox/core/v2/clouddocs/LockResult$Builder;->fileId:Ljava/lang/String;

    iget-wide v2, p0, Lcom/dropbox/core/v2/clouddocs/LockResult$Builder;->expiresAt:J

    invoke-direct {v0, v1, v2, v3}, Lcom/dropbox/core/v2/clouddocs/LockResult;-><init>(Ljava/lang/String;J)V

    return-object v0
.end method

.method public withExpiresAt(Ljava/lang/Long;)Lcom/dropbox/core/v2/clouddocs/LockResult$Builder;
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/dropbox/core/v2/clouddocs/LockResult$Builder;->expiresAt:J

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/dropbox/core/v2/clouddocs/LockResult$Builder;->expiresAt:J

    :goto_0
    return-object p0
.end method

.method public withFileId(Ljava/lang/String;)Lcom/dropbox/core/v2/clouddocs/LockResult$Builder;
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/dropbox/core/v2/clouddocs/LockResult$Builder;->fileId:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p1, "\"\""

    iput-object p1, p0, Lcom/dropbox/core/v2/clouddocs/LockResult$Builder;->fileId:Ljava/lang/String;

    :goto_0
    return-object p0
.end method
