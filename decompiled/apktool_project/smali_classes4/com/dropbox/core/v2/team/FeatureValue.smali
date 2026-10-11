.class public final Lcom/dropbox/core/v2/team/FeatureValue;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/team/FeatureValue$b;,
        Lcom/dropbox/core/v2/team/FeatureValue$Tag;
    }
.end annotation


# static fields
.field public static final OTHER:Lcom/dropbox/core/v2/team/FeatureValue;


# instance fields
.field public a:Lcom/dropbox/core/v2/team/FeatureValue$Tag;

.field public b:Lcom/dropbox/core/v2/team/UploadApiRateLimitValue;

.field public c:Lcom/dropbox/core/v2/team/HasTeamSharedDropboxValue;

.field public d:Lcom/dropbox/core/v2/team/HasTeamFileEventsValue;

.field public e:Lcom/dropbox/core/v2/team/HasTeamSelectiveSyncValue;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/dropbox/core/v2/team/FeatureValue;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/FeatureValue;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/team/FeatureValue$Tag;->OTHER:Lcom/dropbox/core/v2/team/FeatureValue$Tag;

    invoke-virtual {v0, v1}, Lcom/dropbox/core/v2/team/FeatureValue;->e(Lcom/dropbox/core/v2/team/FeatureValue$Tag;)Lcom/dropbox/core/v2/team/FeatureValue;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/team/FeatureValue;->OTHER:Lcom/dropbox/core/v2/team/FeatureValue;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/dropbox/core/v2/team/FeatureValue;)Lcom/dropbox/core/v2/team/UploadApiRateLimitValue;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/v2/team/FeatureValue;->b:Lcom/dropbox/core/v2/team/UploadApiRateLimitValue;

    return-object p0
.end method

.method public static synthetic b(Lcom/dropbox/core/v2/team/FeatureValue;)Lcom/dropbox/core/v2/team/HasTeamSharedDropboxValue;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/v2/team/FeatureValue;->c:Lcom/dropbox/core/v2/team/HasTeamSharedDropboxValue;

    return-object p0
.end method

.method public static synthetic c(Lcom/dropbox/core/v2/team/FeatureValue;)Lcom/dropbox/core/v2/team/HasTeamFileEventsValue;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/v2/team/FeatureValue;->d:Lcom/dropbox/core/v2/team/HasTeamFileEventsValue;

    return-object p0
.end method

.method public static synthetic d(Lcom/dropbox/core/v2/team/FeatureValue;)Lcom/dropbox/core/v2/team/HasTeamSelectiveSyncValue;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/v2/team/FeatureValue;->e:Lcom/dropbox/core/v2/team/HasTeamSelectiveSyncValue;

    return-object p0
.end method

.method public static hasTeamFileEvents(Lcom/dropbox/core/v2/team/HasTeamFileEventsValue;)Lcom/dropbox/core/v2/team/FeatureValue;
    .locals 2

    if-eqz p0, :cond_0

    new-instance v0, Lcom/dropbox/core/v2/team/FeatureValue;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/FeatureValue;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/team/FeatureValue$Tag;->HAS_TEAM_FILE_EVENTS:Lcom/dropbox/core/v2/team/FeatureValue$Tag;

    invoke-virtual {v0, v1, p0}, Lcom/dropbox/core/v2/team/FeatureValue;->f(Lcom/dropbox/core/v2/team/FeatureValue$Tag;Lcom/dropbox/core/v2/team/HasTeamFileEventsValue;)Lcom/dropbox/core/v2/team/FeatureValue;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Value is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static hasTeamSelectiveSync(Lcom/dropbox/core/v2/team/HasTeamSelectiveSyncValue;)Lcom/dropbox/core/v2/team/FeatureValue;
    .locals 2

    if-eqz p0, :cond_0

    new-instance v0, Lcom/dropbox/core/v2/team/FeatureValue;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/FeatureValue;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/team/FeatureValue$Tag;->HAS_TEAM_SELECTIVE_SYNC:Lcom/dropbox/core/v2/team/FeatureValue$Tag;

    invoke-virtual {v0, v1, p0}, Lcom/dropbox/core/v2/team/FeatureValue;->g(Lcom/dropbox/core/v2/team/FeatureValue$Tag;Lcom/dropbox/core/v2/team/HasTeamSelectiveSyncValue;)Lcom/dropbox/core/v2/team/FeatureValue;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Value is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static hasTeamSharedDropbox(Lcom/dropbox/core/v2/team/HasTeamSharedDropboxValue;)Lcom/dropbox/core/v2/team/FeatureValue;
    .locals 2

    if-eqz p0, :cond_0

    new-instance v0, Lcom/dropbox/core/v2/team/FeatureValue;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/FeatureValue;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/team/FeatureValue$Tag;->HAS_TEAM_SHARED_DROPBOX:Lcom/dropbox/core/v2/team/FeatureValue$Tag;

    invoke-virtual {v0, v1, p0}, Lcom/dropbox/core/v2/team/FeatureValue;->h(Lcom/dropbox/core/v2/team/FeatureValue$Tag;Lcom/dropbox/core/v2/team/HasTeamSharedDropboxValue;)Lcom/dropbox/core/v2/team/FeatureValue;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Value is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static uploadApiRateLimit(Lcom/dropbox/core/v2/team/UploadApiRateLimitValue;)Lcom/dropbox/core/v2/team/FeatureValue;
    .locals 2

    if-eqz p0, :cond_0

    new-instance v0, Lcom/dropbox/core/v2/team/FeatureValue;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/FeatureValue;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/team/FeatureValue$Tag;->UPLOAD_API_RATE_LIMIT:Lcom/dropbox/core/v2/team/FeatureValue$Tag;

    invoke-virtual {v0, v1, p0}, Lcom/dropbox/core/v2/team/FeatureValue;->i(Lcom/dropbox/core/v2/team/FeatureValue$Tag;Lcom/dropbox/core/v2/team/UploadApiRateLimitValue;)Lcom/dropbox/core/v2/team/FeatureValue;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Value is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final e(Lcom/dropbox/core/v2/team/FeatureValue$Tag;)Lcom/dropbox/core/v2/team/FeatureValue;
    .locals 0

    new-instance p0, Lcom/dropbox/core/v2/team/FeatureValue;

    invoke-direct {p0}, Lcom/dropbox/core/v2/team/FeatureValue;-><init>()V

    iput-object p1, p0, Lcom/dropbox/core/v2/team/FeatureValue;->a:Lcom/dropbox/core/v2/team/FeatureValue$Tag;

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    :cond_1
    instance-of v2, p1, Lcom/dropbox/core/v2/team/FeatureValue;

    if-eqz v2, :cond_10

    check-cast p1, Lcom/dropbox/core/v2/team/FeatureValue;

    iget-object v2, p0, Lcom/dropbox/core/v2/team/FeatureValue;->a:Lcom/dropbox/core/v2/team/FeatureValue$Tag;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/FeatureValue;->a:Lcom/dropbox/core/v2/team/FeatureValue$Tag;

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    sget-object v3, Lcom/dropbox/core/v2/team/FeatureValue$a;->a:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, v3, v2

    if-eq v2, v0, :cond_d

    const/4 v3, 0x2

    if-eq v2, v3, :cond_a

    const/4 v3, 0x3

    if-eq v2, v3, :cond_7

    const/4 v3, 0x4

    if-eq v2, v3, :cond_4

    const/4 p0, 0x5

    if-eq v2, p0, :cond_3

    return v1

    :cond_3
    return v0

    :cond_4
    iget-object p0, p0, Lcom/dropbox/core/v2/team/FeatureValue;->e:Lcom/dropbox/core/v2/team/HasTeamSelectiveSyncValue;

    iget-object p1, p1, Lcom/dropbox/core/v2/team/FeatureValue;->e:Lcom/dropbox/core/v2/team/HasTeamSelectiveSyncValue;

    if-eq p0, p1, :cond_6

    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/team/HasTeamSelectiveSyncValue;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    goto :goto_0

    :cond_5
    move v0, v1

    :cond_6
    :goto_0
    return v0

    :cond_7
    iget-object p0, p0, Lcom/dropbox/core/v2/team/FeatureValue;->d:Lcom/dropbox/core/v2/team/HasTeamFileEventsValue;

    iget-object p1, p1, Lcom/dropbox/core/v2/team/FeatureValue;->d:Lcom/dropbox/core/v2/team/HasTeamFileEventsValue;

    if-eq p0, p1, :cond_9

    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/team/HasTeamFileEventsValue;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8

    goto :goto_1

    :cond_8
    move v0, v1

    :cond_9
    :goto_1
    return v0

    :cond_a
    iget-object p0, p0, Lcom/dropbox/core/v2/team/FeatureValue;->c:Lcom/dropbox/core/v2/team/HasTeamSharedDropboxValue;

    iget-object p1, p1, Lcom/dropbox/core/v2/team/FeatureValue;->c:Lcom/dropbox/core/v2/team/HasTeamSharedDropboxValue;

    if-eq p0, p1, :cond_c

    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/team/HasTeamSharedDropboxValue;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b

    goto :goto_2

    :cond_b
    move v0, v1

    :cond_c
    :goto_2
    return v0

    :cond_d
    iget-object p0, p0, Lcom/dropbox/core/v2/team/FeatureValue;->b:Lcom/dropbox/core/v2/team/UploadApiRateLimitValue;

    iget-object p1, p1, Lcom/dropbox/core/v2/team/FeatureValue;->b:Lcom/dropbox/core/v2/team/UploadApiRateLimitValue;

    if-eq p0, p1, :cond_f

    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/team/UploadApiRateLimitValue;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_e

    goto :goto_3

    :cond_e
    move v0, v1

    :cond_f
    :goto_3
    return v0

    :cond_10
    return v1
.end method

.method public final f(Lcom/dropbox/core/v2/team/FeatureValue$Tag;Lcom/dropbox/core/v2/team/HasTeamFileEventsValue;)Lcom/dropbox/core/v2/team/FeatureValue;
    .locals 0

    new-instance p0, Lcom/dropbox/core/v2/team/FeatureValue;

    invoke-direct {p0}, Lcom/dropbox/core/v2/team/FeatureValue;-><init>()V

    iput-object p1, p0, Lcom/dropbox/core/v2/team/FeatureValue;->a:Lcom/dropbox/core/v2/team/FeatureValue$Tag;

    iput-object p2, p0, Lcom/dropbox/core/v2/team/FeatureValue;->d:Lcom/dropbox/core/v2/team/HasTeamFileEventsValue;

    return-object p0
.end method

.method public final g(Lcom/dropbox/core/v2/team/FeatureValue$Tag;Lcom/dropbox/core/v2/team/HasTeamSelectiveSyncValue;)Lcom/dropbox/core/v2/team/FeatureValue;
    .locals 0

    new-instance p0, Lcom/dropbox/core/v2/team/FeatureValue;

    invoke-direct {p0}, Lcom/dropbox/core/v2/team/FeatureValue;-><init>()V

    iput-object p1, p0, Lcom/dropbox/core/v2/team/FeatureValue;->a:Lcom/dropbox/core/v2/team/FeatureValue$Tag;

    iput-object p2, p0, Lcom/dropbox/core/v2/team/FeatureValue;->e:Lcom/dropbox/core/v2/team/HasTeamSelectiveSyncValue;

    return-object p0
.end method

.method public getHasTeamFileEventsValue()Lcom/dropbox/core/v2/team/HasTeamFileEventsValue;
    .locals 3

    iget-object v0, p0, Lcom/dropbox/core/v2/team/FeatureValue;->a:Lcom/dropbox/core/v2/team/FeatureValue$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/FeatureValue$Tag;->HAS_TEAM_FILE_EVENTS:Lcom/dropbox/core/v2/team/FeatureValue$Tag;

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/dropbox/core/v2/team/FeatureValue;->d:Lcom/dropbox/core/v2/team/HasTeamFileEventsValue;

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.HAS_TEAM_FILE_EVENTS, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/dropbox/core/v2/team/FeatureValue;->a:Lcom/dropbox/core/v2/team/FeatureValue$Tag;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getHasTeamSelectiveSyncValue()Lcom/dropbox/core/v2/team/HasTeamSelectiveSyncValue;
    .locals 3

    iget-object v0, p0, Lcom/dropbox/core/v2/team/FeatureValue;->a:Lcom/dropbox/core/v2/team/FeatureValue$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/FeatureValue$Tag;->HAS_TEAM_SELECTIVE_SYNC:Lcom/dropbox/core/v2/team/FeatureValue$Tag;

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/dropbox/core/v2/team/FeatureValue;->e:Lcom/dropbox/core/v2/team/HasTeamSelectiveSyncValue;

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.HAS_TEAM_SELECTIVE_SYNC, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/dropbox/core/v2/team/FeatureValue;->a:Lcom/dropbox/core/v2/team/FeatureValue$Tag;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getHasTeamSharedDropboxValue()Lcom/dropbox/core/v2/team/HasTeamSharedDropboxValue;
    .locals 3

    iget-object v0, p0, Lcom/dropbox/core/v2/team/FeatureValue;->a:Lcom/dropbox/core/v2/team/FeatureValue$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/FeatureValue$Tag;->HAS_TEAM_SHARED_DROPBOX:Lcom/dropbox/core/v2/team/FeatureValue$Tag;

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/dropbox/core/v2/team/FeatureValue;->c:Lcom/dropbox/core/v2/team/HasTeamSharedDropboxValue;

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.HAS_TEAM_SHARED_DROPBOX, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/dropbox/core/v2/team/FeatureValue;->a:Lcom/dropbox/core/v2/team/FeatureValue$Tag;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getUploadApiRateLimitValue()Lcom/dropbox/core/v2/team/UploadApiRateLimitValue;
    .locals 3

    iget-object v0, p0, Lcom/dropbox/core/v2/team/FeatureValue;->a:Lcom/dropbox/core/v2/team/FeatureValue$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/FeatureValue$Tag;->UPLOAD_API_RATE_LIMIT:Lcom/dropbox/core/v2/team/FeatureValue$Tag;

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/dropbox/core/v2/team/FeatureValue;->b:Lcom/dropbox/core/v2/team/UploadApiRateLimitValue;

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.UPLOAD_API_RATE_LIMIT, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/dropbox/core/v2/team/FeatureValue;->a:Lcom/dropbox/core/v2/team/FeatureValue$Tag;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final h(Lcom/dropbox/core/v2/team/FeatureValue$Tag;Lcom/dropbox/core/v2/team/HasTeamSharedDropboxValue;)Lcom/dropbox/core/v2/team/FeatureValue;
    .locals 0

    new-instance p0, Lcom/dropbox/core/v2/team/FeatureValue;

    invoke-direct {p0}, Lcom/dropbox/core/v2/team/FeatureValue;-><init>()V

    iput-object p1, p0, Lcom/dropbox/core/v2/team/FeatureValue;->a:Lcom/dropbox/core/v2/team/FeatureValue$Tag;

    iput-object p2, p0, Lcom/dropbox/core/v2/team/FeatureValue;->c:Lcom/dropbox/core/v2/team/HasTeamSharedDropboxValue;

    return-object p0
.end method

.method public hashCode()I
    .locals 4

    iget-object v0, p0, Lcom/dropbox/core/v2/team/FeatureValue;->a:Lcom/dropbox/core/v2/team/FeatureValue$Tag;

    iget-object v1, p0, Lcom/dropbox/core/v2/team/FeatureValue;->b:Lcom/dropbox/core/v2/team/UploadApiRateLimitValue;

    iget-object v2, p0, Lcom/dropbox/core/v2/team/FeatureValue;->c:Lcom/dropbox/core/v2/team/HasTeamSharedDropboxValue;

    iget-object v3, p0, Lcom/dropbox/core/v2/team/FeatureValue;->d:Lcom/dropbox/core/v2/team/HasTeamFileEventsValue;

    iget-object p0, p0, Lcom/dropbox/core/v2/team/FeatureValue;->e:Lcom/dropbox/core/v2/team/HasTeamSelectiveSyncValue;

    filled-new-array {v0, v1, v2, v3, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final i(Lcom/dropbox/core/v2/team/FeatureValue$Tag;Lcom/dropbox/core/v2/team/UploadApiRateLimitValue;)Lcom/dropbox/core/v2/team/FeatureValue;
    .locals 0

    new-instance p0, Lcom/dropbox/core/v2/team/FeatureValue;

    invoke-direct {p0}, Lcom/dropbox/core/v2/team/FeatureValue;-><init>()V

    iput-object p1, p0, Lcom/dropbox/core/v2/team/FeatureValue;->a:Lcom/dropbox/core/v2/team/FeatureValue$Tag;

    iput-object p2, p0, Lcom/dropbox/core/v2/team/FeatureValue;->b:Lcom/dropbox/core/v2/team/UploadApiRateLimitValue;

    return-object p0
.end method

.method public isHasTeamFileEvents()Z
    .locals 1

    iget-object p0, p0, Lcom/dropbox/core/v2/team/FeatureValue;->a:Lcom/dropbox/core/v2/team/FeatureValue$Tag;

    sget-object v0, Lcom/dropbox/core/v2/team/FeatureValue$Tag;->HAS_TEAM_FILE_EVENTS:Lcom/dropbox/core/v2/team/FeatureValue$Tag;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isHasTeamSelectiveSync()Z
    .locals 1

    iget-object p0, p0, Lcom/dropbox/core/v2/team/FeatureValue;->a:Lcom/dropbox/core/v2/team/FeatureValue$Tag;

    sget-object v0, Lcom/dropbox/core/v2/team/FeatureValue$Tag;->HAS_TEAM_SELECTIVE_SYNC:Lcom/dropbox/core/v2/team/FeatureValue$Tag;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isHasTeamSharedDropbox()Z
    .locals 1

    iget-object p0, p0, Lcom/dropbox/core/v2/team/FeatureValue;->a:Lcom/dropbox/core/v2/team/FeatureValue$Tag;

    sget-object v0, Lcom/dropbox/core/v2/team/FeatureValue$Tag;->HAS_TEAM_SHARED_DROPBOX:Lcom/dropbox/core/v2/team/FeatureValue$Tag;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isOther()Z
    .locals 1

    iget-object p0, p0, Lcom/dropbox/core/v2/team/FeatureValue;->a:Lcom/dropbox/core/v2/team/FeatureValue$Tag;

    sget-object v0, Lcom/dropbox/core/v2/team/FeatureValue$Tag;->OTHER:Lcom/dropbox/core/v2/team/FeatureValue$Tag;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isUploadApiRateLimit()Z
    .locals 1

    iget-object p0, p0, Lcom/dropbox/core/v2/team/FeatureValue;->a:Lcom/dropbox/core/v2/team/FeatureValue$Tag;

    sget-object v0, Lcom/dropbox/core/v2/team/FeatureValue$Tag;->UPLOAD_API_RATE_LIMIT:Lcom/dropbox/core/v2/team/FeatureValue$Tag;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public tag()Lcom/dropbox/core/v2/team/FeatureValue$Tag;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/v2/team/FeatureValue;->a:Lcom/dropbox/core/v2/team/FeatureValue$Tag;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/dropbox/core/v2/team/FeatureValue$b;->b:Lcom/dropbox/core/v2/team/FeatureValue$b;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/dropbox/core/v2/team/FeatureValue$b;->b:Lcom/dropbox/core/v2/team/FeatureValue$b;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
