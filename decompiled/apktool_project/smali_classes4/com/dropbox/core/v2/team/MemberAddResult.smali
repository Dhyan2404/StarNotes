.class public final Lcom/dropbox/core/v2/team/MemberAddResult;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/team/MemberAddResult$b;,
        Lcom/dropbox/core/v2/team/MemberAddResult$Tag;
    }
.end annotation


# instance fields
.field public a:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

.field public b:Lcom/dropbox/core/v2/team/TeamMemberInfo;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/String;

.field public k:Ljava/lang/String;

.field public l:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/dropbox/core/v2/team/MemberAddResult;)Lcom/dropbox/core/v2/team/TeamMemberInfo;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->b:Lcom/dropbox/core/v2/team/TeamMemberInfo;

    return-object p0
.end method

.method public static synthetic b(Lcom/dropbox/core/v2/team/MemberAddResult;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->c:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic c(Lcom/dropbox/core/v2/team/MemberAddResult;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->l:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic d(Lcom/dropbox/core/v2/team/MemberAddResult;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->d:Ljava/lang/String;

    return-object p0
.end method

.method public static duplicateExternalMemberId(Ljava/lang/String;)Lcom/dropbox/core/v2/team/MemberAddResult;
    .locals 2

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xff

    if-gt v0, v1, :cond_1

    const-string v0, "^[\'&A-Za-z0-9._%+-]+@[A-Za-z0-9-][A-Za-z0-9.-]*\\.[A-Za-z]{2,15}$"

    invoke-static {v0, p0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/dropbox/core/v2/team/MemberAddResult;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/MemberAddResult;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/team/MemberAddResult$Tag;->DUPLICATE_EXTERNAL_MEMBER_ID:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    invoke-virtual {v0, v1, p0}, Lcom/dropbox/core/v2/team/MemberAddResult;->m(Lcom/dropbox/core/v2/team/MemberAddResult$Tag;Ljava/lang/String;)Lcom/dropbox/core/v2/team/MemberAddResult;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "String does not match pattern"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "String is longer than 255"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Value is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static duplicateMemberPersistentId(Ljava/lang/String;)Lcom/dropbox/core/v2/team/MemberAddResult;
    .locals 2

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xff

    if-gt v0, v1, :cond_1

    const-string v0, "^[\'&A-Za-z0-9._%+-]+@[A-Za-z0-9-][A-Za-z0-9.-]*\\.[A-Za-z]{2,15}$"

    invoke-static {v0, p0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/dropbox/core/v2/team/MemberAddResult;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/MemberAddResult;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/team/MemberAddResult$Tag;->DUPLICATE_MEMBER_PERSISTENT_ID:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    invoke-virtual {v0, v1, p0}, Lcom/dropbox/core/v2/team/MemberAddResult;->n(Lcom/dropbox/core/v2/team/MemberAddResult$Tag;Ljava/lang/String;)Lcom/dropbox/core/v2/team/MemberAddResult;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "String does not match pattern"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "String is longer than 255"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Value is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic e(Lcom/dropbox/core/v2/team/MemberAddResult;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->e:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic f(Lcom/dropbox/core/v2/team/MemberAddResult;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->f:Ljava/lang/String;

    return-object p0
.end method

.method public static freeTeamMemberLimitReached(Ljava/lang/String;)Lcom/dropbox/core/v2/team/MemberAddResult;
    .locals 2

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xff

    if-gt v0, v1, :cond_1

    const-string v0, "^[\'&A-Za-z0-9._%+-]+@[A-Za-z0-9-][A-Za-z0-9.-]*\\.[A-Za-z]{2,15}$"

    invoke-static {v0, p0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/dropbox/core/v2/team/MemberAddResult;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/MemberAddResult;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/team/MemberAddResult$Tag;->FREE_TEAM_MEMBER_LIMIT_REACHED:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    invoke-virtual {v0, v1, p0}, Lcom/dropbox/core/v2/team/MemberAddResult;->o(Lcom/dropbox/core/v2/team/MemberAddResult$Tag;Ljava/lang/String;)Lcom/dropbox/core/v2/team/MemberAddResult;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "String does not match pattern"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "String is longer than 255"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Value is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic g(Lcom/dropbox/core/v2/team/MemberAddResult;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->g:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic h(Lcom/dropbox/core/v2/team/MemberAddResult;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->h:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic i(Lcom/dropbox/core/v2/team/MemberAddResult;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->i:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic j(Lcom/dropbox/core/v2/team/MemberAddResult;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->j:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic k(Lcom/dropbox/core/v2/team/MemberAddResult;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->k:Ljava/lang/String;

    return-object p0
.end method

.method public static persistentIdDisabled(Ljava/lang/String;)Lcom/dropbox/core/v2/team/MemberAddResult;
    .locals 2

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xff

    if-gt v0, v1, :cond_1

    const-string v0, "^[\'&A-Za-z0-9._%+-]+@[A-Za-z0-9-][A-Za-z0-9.-]*\\.[A-Za-z]{2,15}$"

    invoke-static {v0, p0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/dropbox/core/v2/team/MemberAddResult;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/MemberAddResult;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/team/MemberAddResult$Tag;->PERSISTENT_ID_DISABLED:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    invoke-virtual {v0, v1, p0}, Lcom/dropbox/core/v2/team/MemberAddResult;->p(Lcom/dropbox/core/v2/team/MemberAddResult$Tag;Ljava/lang/String;)Lcom/dropbox/core/v2/team/MemberAddResult;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "String does not match pattern"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "String is longer than 255"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Value is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static success(Lcom/dropbox/core/v2/team/TeamMemberInfo;)Lcom/dropbox/core/v2/team/MemberAddResult;
    .locals 2

    if-eqz p0, :cond_0

    new-instance v0, Lcom/dropbox/core/v2/team/MemberAddResult;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/MemberAddResult;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/team/MemberAddResult$Tag;->SUCCESS:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    invoke-virtual {v0, v1, p0}, Lcom/dropbox/core/v2/team/MemberAddResult;->q(Lcom/dropbox/core/v2/team/MemberAddResult$Tag;Lcom/dropbox/core/v2/team/TeamMemberInfo;)Lcom/dropbox/core/v2/team/MemberAddResult;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Value is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static teamLicenseLimit(Ljava/lang/String;)Lcom/dropbox/core/v2/team/MemberAddResult;
    .locals 2

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xff

    if-gt v0, v1, :cond_1

    const-string v0, "^[\'&A-Za-z0-9._%+-]+@[A-Za-z0-9-][A-Za-z0-9.-]*\\.[A-Za-z]{2,15}$"

    invoke-static {v0, p0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/dropbox/core/v2/team/MemberAddResult;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/MemberAddResult;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/team/MemberAddResult$Tag;->TEAM_LICENSE_LIMIT:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    invoke-virtual {v0, v1, p0}, Lcom/dropbox/core/v2/team/MemberAddResult;->r(Lcom/dropbox/core/v2/team/MemberAddResult$Tag;Ljava/lang/String;)Lcom/dropbox/core/v2/team/MemberAddResult;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "String does not match pattern"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "String is longer than 255"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Value is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static userAlreadyOnTeam(Ljava/lang/String;)Lcom/dropbox/core/v2/team/MemberAddResult;
    .locals 2

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xff

    if-gt v0, v1, :cond_1

    const-string v0, "^[\'&A-Za-z0-9._%+-]+@[A-Za-z0-9-][A-Za-z0-9.-]*\\.[A-Za-z]{2,15}$"

    invoke-static {v0, p0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/dropbox/core/v2/team/MemberAddResult;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/MemberAddResult;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/team/MemberAddResult$Tag;->USER_ALREADY_ON_TEAM:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    invoke-virtual {v0, v1, p0}, Lcom/dropbox/core/v2/team/MemberAddResult;->s(Lcom/dropbox/core/v2/team/MemberAddResult$Tag;Ljava/lang/String;)Lcom/dropbox/core/v2/team/MemberAddResult;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "String does not match pattern"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "String is longer than 255"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Value is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static userAlreadyPaired(Ljava/lang/String;)Lcom/dropbox/core/v2/team/MemberAddResult;
    .locals 2

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xff

    if-gt v0, v1, :cond_1

    const-string v0, "^[\'&A-Za-z0-9._%+-]+@[A-Za-z0-9-][A-Za-z0-9.-]*\\.[A-Za-z]{2,15}$"

    invoke-static {v0, p0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/dropbox/core/v2/team/MemberAddResult;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/MemberAddResult;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/team/MemberAddResult$Tag;->USER_ALREADY_PAIRED:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    invoke-virtual {v0, v1, p0}, Lcom/dropbox/core/v2/team/MemberAddResult;->t(Lcom/dropbox/core/v2/team/MemberAddResult$Tag;Ljava/lang/String;)Lcom/dropbox/core/v2/team/MemberAddResult;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "String does not match pattern"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "String is longer than 255"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Value is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static userCreationFailed(Ljava/lang/String;)Lcom/dropbox/core/v2/team/MemberAddResult;
    .locals 2

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xff

    if-gt v0, v1, :cond_1

    const-string v0, "^[\'&A-Za-z0-9._%+-]+@[A-Za-z0-9-][A-Za-z0-9.-]*\\.[A-Za-z]{2,15}$"

    invoke-static {v0, p0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/dropbox/core/v2/team/MemberAddResult;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/MemberAddResult;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/team/MemberAddResult$Tag;->USER_CREATION_FAILED:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    invoke-virtual {v0, v1, p0}, Lcom/dropbox/core/v2/team/MemberAddResult;->u(Lcom/dropbox/core/v2/team/MemberAddResult$Tag;Ljava/lang/String;)Lcom/dropbox/core/v2/team/MemberAddResult;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "String does not match pattern"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "String is longer than 255"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Value is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static userMigrationFailed(Ljava/lang/String;)Lcom/dropbox/core/v2/team/MemberAddResult;
    .locals 2

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xff

    if-gt v0, v1, :cond_1

    const-string v0, "^[\'&A-Za-z0-9._%+-]+@[A-Za-z0-9-][A-Za-z0-9.-]*\\.[A-Za-z]{2,15}$"

    invoke-static {v0, p0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/dropbox/core/v2/team/MemberAddResult;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/MemberAddResult;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/team/MemberAddResult$Tag;->USER_MIGRATION_FAILED:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    invoke-virtual {v0, v1, p0}, Lcom/dropbox/core/v2/team/MemberAddResult;->v(Lcom/dropbox/core/v2/team/MemberAddResult$Tag;Ljava/lang/String;)Lcom/dropbox/core/v2/team/MemberAddResult;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "String does not match pattern"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "String is longer than 255"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Value is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static userOnAnotherTeam(Ljava/lang/String;)Lcom/dropbox/core/v2/team/MemberAddResult;
    .locals 2

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xff

    if-gt v0, v1, :cond_1

    const-string v0, "^[\'&A-Za-z0-9._%+-]+@[A-Za-z0-9-][A-Za-z0-9.-]*\\.[A-Za-z]{2,15}$"

    invoke-static {v0, p0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/dropbox/core/v2/team/MemberAddResult;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/MemberAddResult;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/team/MemberAddResult$Tag;->USER_ON_ANOTHER_TEAM:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    invoke-virtual {v0, v1, p0}, Lcom/dropbox/core/v2/team/MemberAddResult;->w(Lcom/dropbox/core/v2/team/MemberAddResult$Tag;Ljava/lang/String;)Lcom/dropbox/core/v2/team/MemberAddResult;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "String does not match pattern"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "String is longer than 255"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Value is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
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
    instance-of v2, p1, Lcom/dropbox/core/v2/team/MemberAddResult;

    if-eqz v2, :cond_19

    check-cast p1, Lcom/dropbox/core/v2/team/MemberAddResult;

    iget-object v2, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->a:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/MemberAddResult;->a:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    sget-object v3, Lcom/dropbox/core/v2/team/MemberAddResult$a;->a:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, v3, v2

    packed-switch v2, :pswitch_data_0

    return v1

    :pswitch_0
    iget-object p0, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->l:Ljava/lang/String;

    iget-object p1, p1, Lcom/dropbox/core/v2/team/MemberAddResult;->l:Ljava/lang/String;

    if-eq p0, p1, :cond_4

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_0

    :cond_3
    move v0, v1

    :cond_4
    :goto_0
    return v0

    :pswitch_1
    iget-object p0, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->k:Ljava/lang/String;

    iget-object p1, p1, Lcom/dropbox/core/v2/team/MemberAddResult;->k:Ljava/lang/String;

    if-eq p0, p1, :cond_6

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    goto :goto_1

    :cond_5
    move v0, v1

    :cond_6
    :goto_1
    return v0

    :pswitch_2
    iget-object p0, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->j:Ljava/lang/String;

    iget-object p1, p1, Lcom/dropbox/core/v2/team/MemberAddResult;->j:Ljava/lang/String;

    if-eq p0, p1, :cond_8

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    goto :goto_2

    :cond_7
    move v0, v1

    :cond_8
    :goto_2
    return v0

    :pswitch_3
    iget-object p0, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->i:Ljava/lang/String;

    iget-object p1, p1, Lcom/dropbox/core/v2/team/MemberAddResult;->i:Ljava/lang/String;

    if-eq p0, p1, :cond_a

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_9

    goto :goto_3

    :cond_9
    move v0, v1

    :cond_a
    :goto_3
    return v0

    :pswitch_4
    iget-object p0, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->h:Ljava/lang/String;

    iget-object p1, p1, Lcom/dropbox/core/v2/team/MemberAddResult;->h:Ljava/lang/String;

    if-eq p0, p1, :cond_c

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b

    goto :goto_4

    :cond_b
    move v0, v1

    :cond_c
    :goto_4
    return v0

    :pswitch_5
    iget-object p0, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->g:Ljava/lang/String;

    iget-object p1, p1, Lcom/dropbox/core/v2/team/MemberAddResult;->g:Ljava/lang/String;

    if-eq p0, p1, :cond_e

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_d

    goto :goto_5

    :cond_d
    move v0, v1

    :cond_e
    :goto_5
    return v0

    :pswitch_6
    iget-object p0, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->f:Ljava/lang/String;

    iget-object p1, p1, Lcom/dropbox/core/v2/team/MemberAddResult;->f:Ljava/lang/String;

    if-eq p0, p1, :cond_10

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f

    goto :goto_6

    :cond_f
    move v0, v1

    :cond_10
    :goto_6
    return v0

    :pswitch_7
    iget-object p0, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->e:Ljava/lang/String;

    iget-object p1, p1, Lcom/dropbox/core/v2/team/MemberAddResult;->e:Ljava/lang/String;

    if-eq p0, p1, :cond_12

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_11

    goto :goto_7

    :cond_11
    move v0, v1

    :cond_12
    :goto_7
    return v0

    :pswitch_8
    iget-object p0, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->d:Ljava/lang/String;

    iget-object p1, p1, Lcom/dropbox/core/v2/team/MemberAddResult;->d:Ljava/lang/String;

    if-eq p0, p1, :cond_14

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_13

    goto :goto_8

    :cond_13
    move v0, v1

    :cond_14
    :goto_8
    return v0

    :pswitch_9
    iget-object p0, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->c:Ljava/lang/String;

    iget-object p1, p1, Lcom/dropbox/core/v2/team/MemberAddResult;->c:Ljava/lang/String;

    if-eq p0, p1, :cond_16

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_15

    goto :goto_9

    :cond_15
    move v0, v1

    :cond_16
    :goto_9
    return v0

    :pswitch_a
    iget-object p0, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->b:Lcom/dropbox/core/v2/team/TeamMemberInfo;

    iget-object p1, p1, Lcom/dropbox/core/v2/team/MemberAddResult;->b:Lcom/dropbox/core/v2/team/TeamMemberInfo;

    if-eq p0, p1, :cond_18

    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/team/TeamMemberInfo;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_17

    goto :goto_a

    :cond_17
    move v0, v1

    :cond_18
    :goto_a
    return v0

    :cond_19
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getDuplicateExternalMemberIdValue()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->a:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/MemberAddResult$Tag;->DUPLICATE_EXTERNAL_MEMBER_ID:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->i:Ljava/lang/String;

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.DUPLICATE_EXTERNAL_MEMBER_ID, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->a:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDuplicateMemberPersistentIdValue()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->a:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/MemberAddResult$Tag;->DUPLICATE_MEMBER_PERSISTENT_ID:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->j:Ljava/lang/String;

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.DUPLICATE_MEMBER_PERSISTENT_ID, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->a:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getFreeTeamMemberLimitReachedValue()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->a:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/MemberAddResult$Tag;->FREE_TEAM_MEMBER_LIMIT_REACHED:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->d:Ljava/lang/String;

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.FREE_TEAM_MEMBER_LIMIT_REACHED, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->a:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getPersistentIdDisabledValue()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->a:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/MemberAddResult$Tag;->PERSISTENT_ID_DISABLED:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->k:Ljava/lang/String;

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.PERSISTENT_ID_DISABLED, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->a:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSuccessValue()Lcom/dropbox/core/v2/team/TeamMemberInfo;
    .locals 3

    iget-object v0, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->a:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/MemberAddResult$Tag;->SUCCESS:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->b:Lcom/dropbox/core/v2/team/TeamMemberInfo;

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.SUCCESS, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->a:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getTeamLicenseLimitValue()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->a:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/MemberAddResult$Tag;->TEAM_LICENSE_LIMIT:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->c:Ljava/lang/String;

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.TEAM_LICENSE_LIMIT, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->a:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getUserAlreadyOnTeamValue()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->a:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/MemberAddResult$Tag;->USER_ALREADY_ON_TEAM:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->e:Ljava/lang/String;

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.USER_ALREADY_ON_TEAM, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->a:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getUserAlreadyPairedValue()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->a:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/MemberAddResult$Tag;->USER_ALREADY_PAIRED:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->g:Ljava/lang/String;

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.USER_ALREADY_PAIRED, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->a:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getUserCreationFailedValue()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->a:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/MemberAddResult$Tag;->USER_CREATION_FAILED:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->l:Ljava/lang/String;

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.USER_CREATION_FAILED, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->a:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getUserMigrationFailedValue()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->a:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/MemberAddResult$Tag;->USER_MIGRATION_FAILED:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->h:Ljava/lang/String;

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.USER_MIGRATION_FAILED, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->a:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getUserOnAnotherTeamValue()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->a:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/MemberAddResult$Tag;->USER_ON_ANOTHER_TEAM:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->f:Ljava/lang/String;

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.USER_ON_ANOTHER_TEAM, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->a:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hashCode()I
    .locals 12

    iget-object v0, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->a:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    iget-object v1, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->b:Lcom/dropbox/core/v2/team/TeamMemberInfo;

    iget-object v2, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->e:Ljava/lang/String;

    iget-object v5, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->f:Ljava/lang/String;

    iget-object v6, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->g:Ljava/lang/String;

    iget-object v7, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->h:Ljava/lang/String;

    iget-object v8, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->i:Ljava/lang/String;

    iget-object v9, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->j:Ljava/lang/String;

    iget-object v10, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->k:Ljava/lang/String;

    iget-object v11, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->l:Ljava/lang/String;

    filled-new-array/range {v0 .. v11}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public isDuplicateExternalMemberId()Z
    .locals 1

    iget-object p0, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->a:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    sget-object v0, Lcom/dropbox/core/v2/team/MemberAddResult$Tag;->DUPLICATE_EXTERNAL_MEMBER_ID:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isDuplicateMemberPersistentId()Z
    .locals 1

    iget-object p0, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->a:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    sget-object v0, Lcom/dropbox/core/v2/team/MemberAddResult$Tag;->DUPLICATE_MEMBER_PERSISTENT_ID:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isFreeTeamMemberLimitReached()Z
    .locals 1

    iget-object p0, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->a:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    sget-object v0, Lcom/dropbox/core/v2/team/MemberAddResult$Tag;->FREE_TEAM_MEMBER_LIMIT_REACHED:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isPersistentIdDisabled()Z
    .locals 1

    iget-object p0, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->a:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    sget-object v0, Lcom/dropbox/core/v2/team/MemberAddResult$Tag;->PERSISTENT_ID_DISABLED:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSuccess()Z
    .locals 1

    iget-object p0, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->a:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    sget-object v0, Lcom/dropbox/core/v2/team/MemberAddResult$Tag;->SUCCESS:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isTeamLicenseLimit()Z
    .locals 1

    iget-object p0, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->a:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    sget-object v0, Lcom/dropbox/core/v2/team/MemberAddResult$Tag;->TEAM_LICENSE_LIMIT:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isUserAlreadyOnTeam()Z
    .locals 1

    iget-object p0, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->a:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    sget-object v0, Lcom/dropbox/core/v2/team/MemberAddResult$Tag;->USER_ALREADY_ON_TEAM:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isUserAlreadyPaired()Z
    .locals 1

    iget-object p0, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->a:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    sget-object v0, Lcom/dropbox/core/v2/team/MemberAddResult$Tag;->USER_ALREADY_PAIRED:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isUserCreationFailed()Z
    .locals 1

    iget-object p0, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->a:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    sget-object v0, Lcom/dropbox/core/v2/team/MemberAddResult$Tag;->USER_CREATION_FAILED:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isUserMigrationFailed()Z
    .locals 1

    iget-object p0, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->a:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    sget-object v0, Lcom/dropbox/core/v2/team/MemberAddResult$Tag;->USER_MIGRATION_FAILED:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isUserOnAnotherTeam()Z
    .locals 1

    iget-object p0, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->a:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    sget-object v0, Lcom/dropbox/core/v2/team/MemberAddResult$Tag;->USER_ON_ANOTHER_TEAM:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final l(Lcom/dropbox/core/v2/team/MemberAddResult$Tag;)Lcom/dropbox/core/v2/team/MemberAddResult;
    .locals 0

    new-instance p0, Lcom/dropbox/core/v2/team/MemberAddResult;

    invoke-direct {p0}, Lcom/dropbox/core/v2/team/MemberAddResult;-><init>()V

    iput-object p1, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->a:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    return-object p0
.end method

.method public final m(Lcom/dropbox/core/v2/team/MemberAddResult$Tag;Ljava/lang/String;)Lcom/dropbox/core/v2/team/MemberAddResult;
    .locals 0

    new-instance p0, Lcom/dropbox/core/v2/team/MemberAddResult;

    invoke-direct {p0}, Lcom/dropbox/core/v2/team/MemberAddResult;-><init>()V

    iput-object p1, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->a:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    iput-object p2, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->i:Ljava/lang/String;

    return-object p0
.end method

.method public final n(Lcom/dropbox/core/v2/team/MemberAddResult$Tag;Ljava/lang/String;)Lcom/dropbox/core/v2/team/MemberAddResult;
    .locals 0

    new-instance p0, Lcom/dropbox/core/v2/team/MemberAddResult;

    invoke-direct {p0}, Lcom/dropbox/core/v2/team/MemberAddResult;-><init>()V

    iput-object p1, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->a:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    iput-object p2, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->j:Ljava/lang/String;

    return-object p0
.end method

.method public final o(Lcom/dropbox/core/v2/team/MemberAddResult$Tag;Ljava/lang/String;)Lcom/dropbox/core/v2/team/MemberAddResult;
    .locals 0

    new-instance p0, Lcom/dropbox/core/v2/team/MemberAddResult;

    invoke-direct {p0}, Lcom/dropbox/core/v2/team/MemberAddResult;-><init>()V

    iput-object p1, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->a:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    iput-object p2, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->d:Ljava/lang/String;

    return-object p0
.end method

.method public final p(Lcom/dropbox/core/v2/team/MemberAddResult$Tag;Ljava/lang/String;)Lcom/dropbox/core/v2/team/MemberAddResult;
    .locals 0

    new-instance p0, Lcom/dropbox/core/v2/team/MemberAddResult;

    invoke-direct {p0}, Lcom/dropbox/core/v2/team/MemberAddResult;-><init>()V

    iput-object p1, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->a:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    iput-object p2, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->k:Ljava/lang/String;

    return-object p0
.end method

.method public final q(Lcom/dropbox/core/v2/team/MemberAddResult$Tag;Lcom/dropbox/core/v2/team/TeamMemberInfo;)Lcom/dropbox/core/v2/team/MemberAddResult;
    .locals 0

    new-instance p0, Lcom/dropbox/core/v2/team/MemberAddResult;

    invoke-direct {p0}, Lcom/dropbox/core/v2/team/MemberAddResult;-><init>()V

    iput-object p1, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->a:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    iput-object p2, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->b:Lcom/dropbox/core/v2/team/TeamMemberInfo;

    return-object p0
.end method

.method public final r(Lcom/dropbox/core/v2/team/MemberAddResult$Tag;Ljava/lang/String;)Lcom/dropbox/core/v2/team/MemberAddResult;
    .locals 0

    new-instance p0, Lcom/dropbox/core/v2/team/MemberAddResult;

    invoke-direct {p0}, Lcom/dropbox/core/v2/team/MemberAddResult;-><init>()V

    iput-object p1, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->a:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    iput-object p2, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->c:Ljava/lang/String;

    return-object p0
.end method

.method public final s(Lcom/dropbox/core/v2/team/MemberAddResult$Tag;Ljava/lang/String;)Lcom/dropbox/core/v2/team/MemberAddResult;
    .locals 0

    new-instance p0, Lcom/dropbox/core/v2/team/MemberAddResult;

    invoke-direct {p0}, Lcom/dropbox/core/v2/team/MemberAddResult;-><init>()V

    iput-object p1, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->a:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    iput-object p2, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->e:Ljava/lang/String;

    return-object p0
.end method

.method public final t(Lcom/dropbox/core/v2/team/MemberAddResult$Tag;Ljava/lang/String;)Lcom/dropbox/core/v2/team/MemberAddResult;
    .locals 0

    new-instance p0, Lcom/dropbox/core/v2/team/MemberAddResult;

    invoke-direct {p0}, Lcom/dropbox/core/v2/team/MemberAddResult;-><init>()V

    iput-object p1, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->a:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    iput-object p2, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->g:Ljava/lang/String;

    return-object p0
.end method

.method public tag()Lcom/dropbox/core/v2/team/MemberAddResult$Tag;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->a:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/dropbox/core/v2/team/MemberAddResult$b;->b:Lcom/dropbox/core/v2/team/MemberAddResult$b;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/dropbox/core/v2/team/MemberAddResult$b;->b:Lcom/dropbox/core/v2/team/MemberAddResult$b;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final u(Lcom/dropbox/core/v2/team/MemberAddResult$Tag;Ljava/lang/String;)Lcom/dropbox/core/v2/team/MemberAddResult;
    .locals 0

    new-instance p0, Lcom/dropbox/core/v2/team/MemberAddResult;

    invoke-direct {p0}, Lcom/dropbox/core/v2/team/MemberAddResult;-><init>()V

    iput-object p1, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->a:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    iput-object p2, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->l:Ljava/lang/String;

    return-object p0
.end method

.method public final v(Lcom/dropbox/core/v2/team/MemberAddResult$Tag;Ljava/lang/String;)Lcom/dropbox/core/v2/team/MemberAddResult;
    .locals 0

    new-instance p0, Lcom/dropbox/core/v2/team/MemberAddResult;

    invoke-direct {p0}, Lcom/dropbox/core/v2/team/MemberAddResult;-><init>()V

    iput-object p1, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->a:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    iput-object p2, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->h:Ljava/lang/String;

    return-object p0
.end method

.method public final w(Lcom/dropbox/core/v2/team/MemberAddResult$Tag;Ljava/lang/String;)Lcom/dropbox/core/v2/team/MemberAddResult;
    .locals 0

    new-instance p0, Lcom/dropbox/core/v2/team/MemberAddResult;

    invoke-direct {p0}, Lcom/dropbox/core/v2/team/MemberAddResult;-><init>()V

    iput-object p1, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->a:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    iput-object p2, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->f:Ljava/lang/String;

    return-object p0
.end method
