.class public Lcom/dropbox/core/v2/files/FileLockMetadata$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/files/FileLockMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field protected created:Ljava/util/Date;

.field protected isLockholder:Ljava/lang/Boolean;

.field protected lockholderAccountId:Ljava/lang/String;

.field protected lockholderName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dropbox/core/v2/files/FileLockMetadata$Builder;->isLockholder:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/dropbox/core/v2/files/FileLockMetadata$Builder;->lockholderName:Ljava/lang/String;

    iput-object v0, p0, Lcom/dropbox/core/v2/files/FileLockMetadata$Builder;->lockholderAccountId:Ljava/lang/String;

    iput-object v0, p0, Lcom/dropbox/core/v2/files/FileLockMetadata$Builder;->created:Ljava/util/Date;

    return-void
.end method


# virtual methods
.method public build()Lcom/dropbox/core/v2/files/FileLockMetadata;
    .locals 4

    new-instance v0, Lcom/dropbox/core/v2/files/FileLockMetadata;

    iget-object v1, p0, Lcom/dropbox/core/v2/files/FileLockMetadata$Builder;->isLockholder:Ljava/lang/Boolean;

    iget-object v2, p0, Lcom/dropbox/core/v2/files/FileLockMetadata$Builder;->lockholderName:Ljava/lang/String;

    iget-object v3, p0, Lcom/dropbox/core/v2/files/FileLockMetadata$Builder;->lockholderAccountId:Ljava/lang/String;

    iget-object p0, p0, Lcom/dropbox/core/v2/files/FileLockMetadata$Builder;->created:Ljava/util/Date;

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/dropbox/core/v2/files/FileLockMetadata;-><init>(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)V

    return-object v0
.end method

.method public withCreated(Ljava/util/Date;)Lcom/dropbox/core/v2/files/FileLockMetadata$Builder;
    .locals 0

    invoke-static {p1}, Lcom/dropbox/core/util/LangUtil;->truncateMillis(Ljava/util/Date;)Ljava/util/Date;

    move-result-object p1

    iput-object p1, p0, Lcom/dropbox/core/v2/files/FileLockMetadata$Builder;->created:Ljava/util/Date;

    return-object p0
.end method

.method public withIsLockholder(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/files/FileLockMetadata$Builder;
    .locals 0

    iput-object p1, p0, Lcom/dropbox/core/v2/files/FileLockMetadata$Builder;->isLockholder:Ljava/lang/Boolean;

    return-object p0
.end method

.method public withLockholderAccountId(Ljava/lang/String;)Lcom/dropbox/core/v2/files/FileLockMetadata$Builder;
    .locals 2

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x28

    if-lt v0, v1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "String \'lockholderAccountId\' is longer than 40"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "String \'lockholderAccountId\' is shorter than 40"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    iput-object p1, p0, Lcom/dropbox/core/v2/files/FileLockMetadata$Builder;->lockholderAccountId:Ljava/lang/String;

    return-object p0
.end method

.method public withLockholderName(Ljava/lang/String;)Lcom/dropbox/core/v2/files/FileLockMetadata$Builder;
    .locals 0

    iput-object p1, p0, Lcom/dropbox/core/v2/files/FileLockMetadata$Builder;->lockholderName:Ljava/lang/String;

    return-object p0
.end method
