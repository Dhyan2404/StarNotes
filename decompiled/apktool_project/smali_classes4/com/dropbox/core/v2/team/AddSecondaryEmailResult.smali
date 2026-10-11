.class public final Lcom/dropbox/core/v2/team/AddSecondaryEmailResult;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/team/AddSecondaryEmailResult$b;,
        Lcom/dropbox/core/v2/team/AddSecondaryEmailResult$Tag;
    }
.end annotation


# static fields
.field public static final OTHER:Lcom/dropbox/core/v2/team/AddSecondaryEmailResult;


# instance fields
.field public a:Lcom/dropbox/core/v2/team/AddSecondaryEmailResult$Tag;

.field public b:Lcom/dropbox/core/v2/secondaryemails/SecondaryEmail;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/dropbox/core/v2/team/AddSecondaryEmailResult;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/AddSecondaryEmailResult;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/team/AddSecondaryEmailResult$Tag;->OTHER:Lcom/dropbox/core/v2/team/AddSecondaryEmailResult$Tag;

    invoke-virtual {v0, v1}, Lcom/dropbox/core/v2/team/AddSecondaryEmailResult;->j(Lcom/dropbox/core/v2/team/AddSecondaryEmailResult$Tag;)Lcom/dropbox/core/v2/team/AddSecondaryEmailResult;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/team/AddSecondaryEmailResult;->OTHER:Lcom/dropbox/core/v2/team/AddSecondaryEmailResult;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/dropbox/core/v2/team/AddSecondaryEmailResult;)Lcom/dropbox/core/v2/secondaryemails/SecondaryEmail;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/v2/team/AddSecondaryEmailResult;->b:Lcom/dropbox/core/v2/secondaryemails/SecondaryEmail;

    return-object p0
.end method

.method public static alreadyOwnedByUser(Ljava/lang/String;)Lcom/dropbox/core/v2/team/AddSecondaryEmailResult;
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

    new-instance v0, Lcom/dropbox/core/v2/team/AddSecondaryEmailResult;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/AddSecondaryEmailResult;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/team/AddSecondaryEmailResult$Tag;->ALREADY_OWNED_BY_USER:Lcom/dropbox/core/v2/team/AddSecondaryEmailResult$Tag;

    invoke-virtual {v0, v1, p0}, Lcom/dropbox/core/v2/team/AddSecondaryEmailResult;->k(Lcom/dropbox/core/v2/team/AddSecondaryEmailResult$Tag;Ljava/lang/String;)Lcom/dropbox/core/v2/team/AddSecondaryEmailResult;

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

.method public static alreadyPending(Ljava/lang/String;)Lcom/dropbox/core/v2/team/AddSecondaryEmailResult;
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

    new-instance v0, Lcom/dropbox/core/v2/team/AddSecondaryEmailResult;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/AddSecondaryEmailResult;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/team/AddSecondaryEmailResult$Tag;->ALREADY_PENDING:Lcom/dropbox/core/v2/team/AddSecondaryEmailResult$Tag;

    invoke-virtual {v0, v1, p0}, Lcom/dropbox/core/v2/team/AddSecondaryEmailResult;->l(Lcom/dropbox/core/v2/team/AddSecondaryEmailResult$Tag;Ljava/lang/String;)Lcom/dropbox/core/v2/team/AddSecondaryEmailResult;

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

.method public static synthetic b(Lcom/dropbox/core/v2/team/AddSecondaryEmailResult;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/v2/team/AddSecondaryEmailResult;->c:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic c(Lcom/dropbox/core/v2/team/AddSecondaryEmailResult;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/v2/team/AddSecondaryEmailResult;->d:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic d(Lcom/dropbox/core/v2/team/AddSecondaryEmailResult;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/v2/team/AddSecondaryEmailResult;->e:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic e(Lcom/dropbox/core/v2/team/AddSecondaryEmailResult;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/v2/team/AddSecondaryEmailResult;->f:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic f(Lcom/dropbox/core/v2/team/AddSecondaryEmailResult;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/v2/team/AddSecondaryEmailResult;->g:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic g(Lcom/dropbox/core/v2/team/AddSecondaryEmailResult;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/v2/team/AddSecondaryEmailResult;->h:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic h(Lcom/dropbox/core/v2/team/AddSecondaryEmailResult;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/v2/team/AddSecondaryEmailResult;->i:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic i(Lcom/dropbox/core/v2/team/AddSecondaryEmailResult;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/v2/team/AddSecondaryEmailResult;->j:Ljava/lang/String;

    return-object p0
.end method

.method public static rateLimited(Ljava/lang/String;)Lcom/dropbox/core/v2/team/AddSecondaryEmailResult;
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

    new-instance v0, Lcom/dropbox/core/v2/team/AddSecondaryEmailResult;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/AddSecondaryEmailResult;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/team/AddSecondaryEmailResult$Tag;->RATE_LIMITED:Lcom/dropbox/core/v2/team/AddSecondaryEmailResult$Tag;

    invoke-virtual {v0, v1, p0}, Lcom/dropbox/core/v2/team/AddSecondaryEmailResult;->m(Lcom/dropbox/core/v2/team/AddSecondaryEmailResult$Tag;Ljava/lang/String;)Lcom/dropbox/core/v2/team/AddSecondaryEmailResult;

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

.method public static reachedLimit(Ljava/lang/String;)Lcom/dropbox/core/v2/team/AddSecondaryEmailResult;
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

    new-instance v0, Lcom/dropbox/core/v2/team/AddSecondaryEmailResult;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/AddSecondaryEmailResult;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/team/AddSecondaryEmailResult$Tag;->REACHED_LIMIT:Lcom/dropbox/core/v2/team/AddSecondaryEmailResult$Tag;

    invoke-virtual {v0, v1, p0}, Lcom/dropbox/core/v2/team/AddSecondaryEmailResult;->n(Lcom/dropbox/core/v2/team/AddSecondaryEmailResult$Tag;Ljava/lang/String;)Lcom/dropbox/core/v2/team/AddSecondaryEmailResult;

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

.method public static success(Lcom/dropbox/core/v2/secondaryemails/SecondaryEmail;)Lcom/dropbox/core/v2/team/AddSecondaryEmailResult;
    .locals 2

    if-eqz p0, :cond_0

    new-instance v0, Lcom/dropbox/core/v2/team/AddSecondaryEmailResult;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/AddSecondaryEmailResult;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/team/AddSecondaryEmailResult$Tag;->SUCCESS:Lcom/dropbox/core/v2/team/AddSecondaryEmailResult$Tag;

    invoke-virtual {v0, v1, p0}, Lcom/dropbox/core/v2/team/AddSecondaryEmailResult;->o(Lcom/dropbox/core/v2/team/AddSecondaryEmailResult$Tag;Lcom/dropbox/core/v2/secondaryemails/SecondaryEmail;)Lcom/dropbox/core/v2/team/AddSecondaryEmailResult;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Value is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static tooManyUpdates(Ljava/lang/String;)Lcom/dropbox/core/v2/team/AddSecondaryEmailResult;
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

    new-instance v0, Lcom/dropbox/core/v2/team/AddSecondaryEmailResult;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/AddSecondaryEmailResult;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/team/AddSecondaryEmailResult$Tag;->TOO_MANY_UPDATES:Lcom/dropbox/core/v2/team/AddSecondaryEmailResult$Tag;

    invoke-virtual {v0, v1, p0}, Lcom/dropbox/core/v2/team/AddSecondaryEmailResult;->p(Lcom/dropbox/core/v2/team/AddSecondaryEmailResult$Tag;Ljava/lang/String;)Lcom/dropbox/core/v2/team/AddSecondaryEmailResult;

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

.method public static transientError(Ljava/lang/String;)Lcom/dropbox/core/v2/team/AddSecondaryEmailResult;
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

    new-instance v0, Lcom/dropbox/core/v2/team/AddSecondaryEmailResult;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/AddSecondaryEmailResult;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/team/AddSecondaryEmailResult$Tag;->TRANSIENT_ERROR:Lcom/dropbox/core/v2/team/AddSecondaryEmailResult$Tag;

    invoke-virtual {v0, v1, p0}, Lcom/dropbox/core/v2/team/AddSecondaryEmailResult;->q(Lcom/dropbox/core/v2/team/AddSecondaryEmailResult$Tag;Ljava/lang/String;)Lcom/dropbox/core/v2/team/AddSecondaryEmailResult;

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

.method public static unavailable(Ljava/lang/String;)Lcom/dropbox/core/v2/team/AddSecondaryEmailResult;
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

    new-instance v0, Lcom/dropbox/core/v2/team/AddSecondaryEmailResult;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/AddSecondaryEmailResult;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/team/AddSecondaryEmailResult$Tag;->UNAVAILABLE:Lcom/dropbox/core/v2/team/AddSecondaryEmailResult$Tag;

    invoke-virtual {v0, v1, p0}, Lcom/dropbox/core/v2/team/AddSecondaryEmailResult;->r(Lcom/dropbox/core/v2/team/AddSecondaryEmailResult$Tag;Ljava/lang/String;)Lcom/dropbox/core/v2/team/AddSecondaryEmailResult;

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

.method public static unknownError(Ljava/lang/String;)Lcom/dropbox/core/v2/team/AddSecondaryEmailResult;
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

    new-instance v0, Lcom/dropbox/core/v2/team/AddSecondaryEmailResult;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/AddSecondaryEmailResult;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/team/AddSecondaryEmailResult$Tag;->UNKNOWN_ERROR:Lcom/dropbox/core/v2/team/AddSecondaryEmailResult$Tag;

    invoke-virtual {v0, v1, p0}, Lcom/dropbox/core/v2/team/AddSecondaryEmailResult;->s(Lcom/dropbox/core/v2/team/AddSecondaryEmailResult$Tag;Ljava/lang/String;)Lcom/dropbox/core/v2/team/AddSecondaryEmailResult;

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
    instance-of v2, p1, Lcom/dropbox/core/v2/team/AddSecondaryEmailResult;

    if-eqz v2, :cond_15

    check-cast p1, Lcom/dropbox/core/v2/team/AddSecondaryEmailResult;

    iget-object v2, p0, Lcom/dropbox/core/v2/team/AddSecondaryEmailResult;->a:Lcom/dropbox/core/v2/team/AddSecondaryEmailResult$Tag;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/AddSecondaryEmailResult;->a:Lcom/dropbox/core/v2/team/AddSecondaryEmailResult$Tag;

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    sget-object v3, Lcom/dropbox/core/v2/team/AddSecondaryEmailResult$a;->a:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, v3, v2

    packed-switch v2, :pswitch_data_0

    return v1

    :pswitch_0
    return v0

    :pswitch_1
    iget-object p0, p0, Lcom/dropbox/core/v2/team/AddSecondaryEmailResult;->j:Ljava/lang/String;

    iget-object p1, p1, Lcom/dropbox/core/v2/team/AddSecondaryEmailResult;->j:Ljava/lang/String;

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

    :pswitch_2
    iget-object p0, p0, Lcom/dropbox/core/v2/team/AddSecondaryEmailResult;->i:Ljava/lang/String;

    iget-object p1, p1, Lcom/dropbox/core/v2/team/AddSecondaryEmailResult;->i:Ljava/lang/String;

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

    :pswitch_3
    iget-object p0, p0, Lcom/dropbox/core/v2/team/AddSecondaryEmailResult;->h:Ljava/lang/String;

    iget-object p1, p1, Lcom/dropbox/core/v2/team/AddSecondaryEmailResult;->h:Ljava/lang/String;

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

    :pswitch_4
    iget-object p0, p0, Lcom/dropbox/core/v2/team/AddSecondaryEmailResult;->g:Ljava/lang/String;

    iget-object p1, p1, Lcom/dropbox/core/v2/team/AddSecondaryEmailResult;->g:Ljava/lang/String;

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

    :pswitch_5
    iget-object p0, p0, Lcom/dropbox/core/v2/team/AddSecondaryEmailResult;->f:Ljava/lang/String;

    iget-object p1, p1, Lcom/dropbox/core/v2/team/AddSecondaryEmailResult;->f:Ljava/lang/String;

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

    :pswitch_6
    iget-object p0, p0, Lcom/dropbox/core/v2/team/AddSecondaryEmailResult;->e:Ljava/lang/String;

    iget-object p1, p1, Lcom/dropbox/core/v2/team/AddSecondaryEmailResult;->e:Ljava/lang/String;

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

    :pswitch_7
    iget-object p0, p0, Lcom/dropbox/core/v2/team/AddSecondaryEmailResult;->d:Ljava/lang/String;

    iget-object p1, p1, Lcom/dropbox/core/v2/team/AddSecondaryEmailResult;->d:Ljava/lang/String;

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

    :pswitch_8
    iget-object p0, p0, Lcom/dropbox/core/v2/team/AddSecondaryEmailResult;->c:Ljava/lang/String;

    iget-object p1, p1, Lcom/dropbox/core/v2/team/AddSecondaryEmailResult;->c:Ljava/lang/String;

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

    :pswitch_9
    iget-object p0, p0, Lcom/dropbox/core/v2/team/AddSecondaryEmailResult;->b:Lcom/dropbox/core/v2/secondaryemails/SecondaryEmail;

    iget-object p1, p1, Lcom/dropbox/core/v2/team/AddSecondaryEmailResult;->b:Lcom/dropbox/core/v2/secondaryemails/SecondaryEmail;

    if-eq p0, p1, :cond_14

    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/secondaryemails/SecondaryEmail;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_13

    goto :goto_8

    :cond_13
    move v0, v1

    :cond_14
    :goto_8
    return v0

    :cond_15
    return v1

    :pswitch_data_0
    .packed-switch 0x1
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

.method public getAlreadyOwnedByUserValue()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/dropbox/core/v2/team/AddSecondaryEmailResult;->a:Lcom/dropbox/core/v2/team/AddSecondaryEmailResult$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/AddSecondaryEmailResult$Tag;->ALREADY_OWNED_BY_USER:Lcom/dropbox/core/v2/team/AddSecondaryEmailResult$Tag;

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/dropbox/core/v2/team/AddSecondaryEmailResult;->e:Ljava/lang/String;

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.ALREADY_OWNED_BY_USER, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/dropbox/core/v2/team/AddSecondaryEmailResult;->a:Lcom/dropbox/core/v2/team/AddSecondaryEmailResult$Tag;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAlreadyPendingValue()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/dropbox/core/v2/team/AddSecondaryEmailResult;->a:Lcom/dropbox/core/v2/team/AddSecondaryEmailResult$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/AddSecondaryEmailResult$Tag;->ALREADY_PENDING:Lcom/dropbox/core/v2/team/AddSecondaryEmailResult$Tag;

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/dropbox/core/v2/team/AddSecondaryEmailResult;->d:Ljava/lang/String;

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.ALREADY_PENDING, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/dropbox/core/v2/team/AddSecondaryEmailResult;->a:Lcom/dropbox/core/v2/team/AddSecondaryEmailResult$Tag;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getRateLimitedValue()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/dropbox/core/v2/team/AddSecondaryEmailResult;->a:Lcom/dropbox/core/v2/team/AddSecondaryEmailResult$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/AddSecondaryEmailResult$Tag;->RATE_LIMITED:Lcom/dropbox/core/v2/team/AddSecondaryEmailResult$Tag;

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/dropbox/core/v2/team/AddSecondaryEmailResult;->j:Ljava/lang/String;

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.RATE_LIMITED, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/dropbox/core/v2/team/AddSecondaryEmailResult;->a:Lcom/dropbox/core/v2/team/AddSecondaryEmailResult$Tag;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getReachedLimitValue()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/dropbox/core/v2/team/AddSecondaryEmailResult;->a:Lcom/dropbox/core/v2/team/AddSecondaryEmailResult$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/AddSecondaryEmailResult$Tag;->REACHED_LIMIT:Lcom/dropbox/core/v2/team/AddSecondaryEmailResult$Tag;

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/dropbox/core/v2/team/AddSecondaryEmailResult;->f:Ljava/lang/String;

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.REACHED_LIMIT, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/dropbox/core/v2/team/AddSecondaryEmailResult;->a:Lcom/dropbox/core/v2/team/AddSecondaryEmailResult$Tag;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSuccessValue()Lcom/dropbox/core/v2/secondaryemails/SecondaryEmail;
    .locals 3

    iget-object v0, p0, Lcom/dropbox/core/v2/team/AddSecondaryEmailResult;->a:Lcom/dropbox/core/v2/team/AddSecondaryEmailResult$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/AddSecondaryEmailResult$Tag;->SUCCESS:Lcom/dropbox/core/v2/team/AddSecondaryEmailResult$Tag;

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/dropbox/core/v2/team/AddSecondaryEmailResult;->b:Lcom/dropbox/core/v2/secondaryemails/SecondaryEmail;

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.SUCCESS, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/dropbox/core/v2/team/AddSecondaryEmailResult;->a:Lcom/dropbox/core/v2/team/AddSecondaryEmailResult$Tag;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getTooManyUpdatesValue()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/dropbox/core/v2/team/AddSecondaryEmailResult;->a:Lcom/dropbox/core/v2/team/AddSecondaryEmailResult$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/AddSecondaryEmailResult$Tag;->TOO_MANY_UPDATES:Lcom/dropbox/core/v2/team/AddSecondaryEmailResult$Tag;

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/dropbox/core/v2/team/AddSecondaryEmailResult;->h:Ljava/lang/String;

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.TOO_MANY_UPDATES, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/dropbox/core/v2/team/AddSecondaryEmailResult;->a:Lcom/dropbox/core/v2/team/AddSecondaryEmailResult$Tag;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getTransientErrorValue()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/dropbox/core/v2/team/AddSecondaryEmailResult;->a:Lcom/dropbox/core/v2/team/AddSecondaryEmailResult$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/AddSecondaryEmailResult$Tag;->TRANSIENT_ERROR:Lcom/dropbox/core/v2/team/AddSecondaryEmailResult$Tag;

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/dropbox/core/v2/team/AddSecondaryEmailResult;->g:Ljava/lang/String;

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.TRANSIENT_ERROR, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/dropbox/core/v2/team/AddSecondaryEmailResult;->a:Lcom/dropbox/core/v2/team/AddSecondaryEmailResult$Tag;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getUnavailableValue()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/dropbox/core/v2/team/AddSecondaryEmailResult;->a:Lcom/dropbox/core/v2/team/AddSecondaryEmailResult$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/AddSecondaryEmailResult$Tag;->UNAVAILABLE:Lcom/dropbox/core/v2/team/AddSecondaryEmailResult$Tag;

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/dropbox/core/v2/team/AddSecondaryEmailResult;->c:Ljava/lang/String;

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.UNAVAILABLE, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/dropbox/core/v2/team/AddSecondaryEmailResult;->a:Lcom/dropbox/core/v2/team/AddSecondaryEmailResult$Tag;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getUnknownErrorValue()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/dropbox/core/v2/team/AddSecondaryEmailResult;->a:Lcom/dropbox/core/v2/team/AddSecondaryEmailResult$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/AddSecondaryEmailResult$Tag;->UNKNOWN_ERROR:Lcom/dropbox/core/v2/team/AddSecondaryEmailResult$Tag;

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/dropbox/core/v2/team/AddSecondaryEmailResult;->i:Ljava/lang/String;

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.UNKNOWN_ERROR, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/dropbox/core/v2/team/AddSecondaryEmailResult;->a:Lcom/dropbox/core/v2/team/AddSecondaryEmailResult$Tag;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hashCode()I
    .locals 10

    iget-object v0, p0, Lcom/dropbox/core/v2/team/AddSecondaryEmailResult;->a:Lcom/dropbox/core/v2/team/AddSecondaryEmailResult$Tag;

    iget-object v1, p0, Lcom/dropbox/core/v2/team/AddSecondaryEmailResult;->b:Lcom/dropbox/core/v2/secondaryemails/SecondaryEmail;

    iget-object v2, p0, Lcom/dropbox/core/v2/team/AddSecondaryEmailResult;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/dropbox/core/v2/team/AddSecondaryEmailResult;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/dropbox/core/v2/team/AddSecondaryEmailResult;->e:Ljava/lang/String;

    iget-object v5, p0, Lcom/dropbox/core/v2/team/AddSecondaryEmailResult;->f:Ljava/lang/String;

    iget-object v6, p0, Lcom/dropbox/core/v2/team/AddSecondaryEmailResult;->g:Ljava/lang/String;

    iget-object v7, p0, Lcom/dropbox/core/v2/team/AddSecondaryEmailResult;->h:Ljava/lang/String;

    iget-object v8, p0, Lcom/dropbox/core/v2/team/AddSecondaryEmailResult;->i:Ljava/lang/String;

    iget-object v9, p0, Lcom/dropbox/core/v2/team/AddSecondaryEmailResult;->j:Ljava/lang/String;

    filled-new-array/range {v0 .. v9}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public isAlreadyOwnedByUser()Z
    .locals 1

    iget-object p0, p0, Lcom/dropbox/core/v2/team/AddSecondaryEmailResult;->a:Lcom/dropbox/core/v2/team/AddSecondaryEmailResult$Tag;

    sget-object v0, Lcom/dropbox/core/v2/team/AddSecondaryEmailResult$Tag;->ALREADY_OWNED_BY_USER:Lcom/dropbox/core/v2/team/AddSecondaryEmailResult$Tag;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isAlreadyPending()Z
    .locals 1

    iget-object p0, p0, Lcom/dropbox/core/v2/team/AddSecondaryEmailResult;->a:Lcom/dropbox/core/v2/team/AddSecondaryEmailResult$Tag;

    sget-object v0, Lcom/dropbox/core/v2/team/AddSecondaryEmailResult$Tag;->ALREADY_PENDING:Lcom/dropbox/core/v2/team/AddSecondaryEmailResult$Tag;

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

    iget-object p0, p0, Lcom/dropbox/core/v2/team/AddSecondaryEmailResult;->a:Lcom/dropbox/core/v2/team/AddSecondaryEmailResult$Tag;

    sget-object v0, Lcom/dropbox/core/v2/team/AddSecondaryEmailResult$Tag;->OTHER:Lcom/dropbox/core/v2/team/AddSecondaryEmailResult$Tag;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isRateLimited()Z
    .locals 1

    iget-object p0, p0, Lcom/dropbox/core/v2/team/AddSecondaryEmailResult;->a:Lcom/dropbox/core/v2/team/AddSecondaryEmailResult$Tag;

    sget-object v0, Lcom/dropbox/core/v2/team/AddSecondaryEmailResult$Tag;->RATE_LIMITED:Lcom/dropbox/core/v2/team/AddSecondaryEmailResult$Tag;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isReachedLimit()Z
    .locals 1

    iget-object p0, p0, Lcom/dropbox/core/v2/team/AddSecondaryEmailResult;->a:Lcom/dropbox/core/v2/team/AddSecondaryEmailResult$Tag;

    sget-object v0, Lcom/dropbox/core/v2/team/AddSecondaryEmailResult$Tag;->REACHED_LIMIT:Lcom/dropbox/core/v2/team/AddSecondaryEmailResult$Tag;

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

    iget-object p0, p0, Lcom/dropbox/core/v2/team/AddSecondaryEmailResult;->a:Lcom/dropbox/core/v2/team/AddSecondaryEmailResult$Tag;

    sget-object v0, Lcom/dropbox/core/v2/team/AddSecondaryEmailResult$Tag;->SUCCESS:Lcom/dropbox/core/v2/team/AddSecondaryEmailResult$Tag;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isTooManyUpdates()Z
    .locals 1

    iget-object p0, p0, Lcom/dropbox/core/v2/team/AddSecondaryEmailResult;->a:Lcom/dropbox/core/v2/team/AddSecondaryEmailResult$Tag;

    sget-object v0, Lcom/dropbox/core/v2/team/AddSecondaryEmailResult$Tag;->TOO_MANY_UPDATES:Lcom/dropbox/core/v2/team/AddSecondaryEmailResult$Tag;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isTransientError()Z
    .locals 1

    iget-object p0, p0, Lcom/dropbox/core/v2/team/AddSecondaryEmailResult;->a:Lcom/dropbox/core/v2/team/AddSecondaryEmailResult$Tag;

    sget-object v0, Lcom/dropbox/core/v2/team/AddSecondaryEmailResult$Tag;->TRANSIENT_ERROR:Lcom/dropbox/core/v2/team/AddSecondaryEmailResult$Tag;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isUnavailable()Z
    .locals 1

    iget-object p0, p0, Lcom/dropbox/core/v2/team/AddSecondaryEmailResult;->a:Lcom/dropbox/core/v2/team/AddSecondaryEmailResult$Tag;

    sget-object v0, Lcom/dropbox/core/v2/team/AddSecondaryEmailResult$Tag;->UNAVAILABLE:Lcom/dropbox/core/v2/team/AddSecondaryEmailResult$Tag;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isUnknownError()Z
    .locals 1

    iget-object p0, p0, Lcom/dropbox/core/v2/team/AddSecondaryEmailResult;->a:Lcom/dropbox/core/v2/team/AddSecondaryEmailResult$Tag;

    sget-object v0, Lcom/dropbox/core/v2/team/AddSecondaryEmailResult$Tag;->UNKNOWN_ERROR:Lcom/dropbox/core/v2/team/AddSecondaryEmailResult$Tag;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final j(Lcom/dropbox/core/v2/team/AddSecondaryEmailResult$Tag;)Lcom/dropbox/core/v2/team/AddSecondaryEmailResult;
    .locals 0

    new-instance p0, Lcom/dropbox/core/v2/team/AddSecondaryEmailResult;

    invoke-direct {p0}, Lcom/dropbox/core/v2/team/AddSecondaryEmailResult;-><init>()V

    iput-object p1, p0, Lcom/dropbox/core/v2/team/AddSecondaryEmailResult;->a:Lcom/dropbox/core/v2/team/AddSecondaryEmailResult$Tag;

    return-object p0
.end method

.method public final k(Lcom/dropbox/core/v2/team/AddSecondaryEmailResult$Tag;Ljava/lang/String;)Lcom/dropbox/core/v2/team/AddSecondaryEmailResult;
    .locals 0

    new-instance p0, Lcom/dropbox/core/v2/team/AddSecondaryEmailResult;

    invoke-direct {p0}, Lcom/dropbox/core/v2/team/AddSecondaryEmailResult;-><init>()V

    iput-object p1, p0, Lcom/dropbox/core/v2/team/AddSecondaryEmailResult;->a:Lcom/dropbox/core/v2/team/AddSecondaryEmailResult$Tag;

    iput-object p2, p0, Lcom/dropbox/core/v2/team/AddSecondaryEmailResult;->e:Ljava/lang/String;

    return-object p0
.end method

.method public final l(Lcom/dropbox/core/v2/team/AddSecondaryEmailResult$Tag;Ljava/lang/String;)Lcom/dropbox/core/v2/team/AddSecondaryEmailResult;
    .locals 0

    new-instance p0, Lcom/dropbox/core/v2/team/AddSecondaryEmailResult;

    invoke-direct {p0}, Lcom/dropbox/core/v2/team/AddSecondaryEmailResult;-><init>()V

    iput-object p1, p0, Lcom/dropbox/core/v2/team/AddSecondaryEmailResult;->a:Lcom/dropbox/core/v2/team/AddSecondaryEmailResult$Tag;

    iput-object p2, p0, Lcom/dropbox/core/v2/team/AddSecondaryEmailResult;->d:Ljava/lang/String;

    return-object p0
.end method

.method public final m(Lcom/dropbox/core/v2/team/AddSecondaryEmailResult$Tag;Ljava/lang/String;)Lcom/dropbox/core/v2/team/AddSecondaryEmailResult;
    .locals 0

    new-instance p0, Lcom/dropbox/core/v2/team/AddSecondaryEmailResult;

    invoke-direct {p0}, Lcom/dropbox/core/v2/team/AddSecondaryEmailResult;-><init>()V

    iput-object p1, p0, Lcom/dropbox/core/v2/team/AddSecondaryEmailResult;->a:Lcom/dropbox/core/v2/team/AddSecondaryEmailResult$Tag;

    iput-object p2, p0, Lcom/dropbox/core/v2/team/AddSecondaryEmailResult;->j:Ljava/lang/String;

    return-object p0
.end method

.method public final n(Lcom/dropbox/core/v2/team/AddSecondaryEmailResult$Tag;Ljava/lang/String;)Lcom/dropbox/core/v2/team/AddSecondaryEmailResult;
    .locals 0

    new-instance p0, Lcom/dropbox/core/v2/team/AddSecondaryEmailResult;

    invoke-direct {p0}, Lcom/dropbox/core/v2/team/AddSecondaryEmailResult;-><init>()V

    iput-object p1, p0, Lcom/dropbox/core/v2/team/AddSecondaryEmailResult;->a:Lcom/dropbox/core/v2/team/AddSecondaryEmailResult$Tag;

    iput-object p2, p0, Lcom/dropbox/core/v2/team/AddSecondaryEmailResult;->f:Ljava/lang/String;

    return-object p0
.end method

.method public final o(Lcom/dropbox/core/v2/team/AddSecondaryEmailResult$Tag;Lcom/dropbox/core/v2/secondaryemails/SecondaryEmail;)Lcom/dropbox/core/v2/team/AddSecondaryEmailResult;
    .locals 0

    new-instance p0, Lcom/dropbox/core/v2/team/AddSecondaryEmailResult;

    invoke-direct {p0}, Lcom/dropbox/core/v2/team/AddSecondaryEmailResult;-><init>()V

    iput-object p1, p0, Lcom/dropbox/core/v2/team/AddSecondaryEmailResult;->a:Lcom/dropbox/core/v2/team/AddSecondaryEmailResult$Tag;

    iput-object p2, p0, Lcom/dropbox/core/v2/team/AddSecondaryEmailResult;->b:Lcom/dropbox/core/v2/secondaryemails/SecondaryEmail;

    return-object p0
.end method

.method public final p(Lcom/dropbox/core/v2/team/AddSecondaryEmailResult$Tag;Ljava/lang/String;)Lcom/dropbox/core/v2/team/AddSecondaryEmailResult;
    .locals 0

    new-instance p0, Lcom/dropbox/core/v2/team/AddSecondaryEmailResult;

    invoke-direct {p0}, Lcom/dropbox/core/v2/team/AddSecondaryEmailResult;-><init>()V

    iput-object p1, p0, Lcom/dropbox/core/v2/team/AddSecondaryEmailResult;->a:Lcom/dropbox/core/v2/team/AddSecondaryEmailResult$Tag;

    iput-object p2, p0, Lcom/dropbox/core/v2/team/AddSecondaryEmailResult;->h:Ljava/lang/String;

    return-object p0
.end method

.method public final q(Lcom/dropbox/core/v2/team/AddSecondaryEmailResult$Tag;Ljava/lang/String;)Lcom/dropbox/core/v2/team/AddSecondaryEmailResult;
    .locals 0

    new-instance p0, Lcom/dropbox/core/v2/team/AddSecondaryEmailResult;

    invoke-direct {p0}, Lcom/dropbox/core/v2/team/AddSecondaryEmailResult;-><init>()V

    iput-object p1, p0, Lcom/dropbox/core/v2/team/AddSecondaryEmailResult;->a:Lcom/dropbox/core/v2/team/AddSecondaryEmailResult$Tag;

    iput-object p2, p0, Lcom/dropbox/core/v2/team/AddSecondaryEmailResult;->g:Ljava/lang/String;

    return-object p0
.end method

.method public final r(Lcom/dropbox/core/v2/team/AddSecondaryEmailResult$Tag;Ljava/lang/String;)Lcom/dropbox/core/v2/team/AddSecondaryEmailResult;
    .locals 0

    new-instance p0, Lcom/dropbox/core/v2/team/AddSecondaryEmailResult;

    invoke-direct {p0}, Lcom/dropbox/core/v2/team/AddSecondaryEmailResult;-><init>()V

    iput-object p1, p0, Lcom/dropbox/core/v2/team/AddSecondaryEmailResult;->a:Lcom/dropbox/core/v2/team/AddSecondaryEmailResult$Tag;

    iput-object p2, p0, Lcom/dropbox/core/v2/team/AddSecondaryEmailResult;->c:Ljava/lang/String;

    return-object p0
.end method

.method public final s(Lcom/dropbox/core/v2/team/AddSecondaryEmailResult$Tag;Ljava/lang/String;)Lcom/dropbox/core/v2/team/AddSecondaryEmailResult;
    .locals 0

    new-instance p0, Lcom/dropbox/core/v2/team/AddSecondaryEmailResult;

    invoke-direct {p0}, Lcom/dropbox/core/v2/team/AddSecondaryEmailResult;-><init>()V

    iput-object p1, p0, Lcom/dropbox/core/v2/team/AddSecondaryEmailResult;->a:Lcom/dropbox/core/v2/team/AddSecondaryEmailResult$Tag;

    iput-object p2, p0, Lcom/dropbox/core/v2/team/AddSecondaryEmailResult;->i:Ljava/lang/String;

    return-object p0
.end method

.method public tag()Lcom/dropbox/core/v2/team/AddSecondaryEmailResult$Tag;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/v2/team/AddSecondaryEmailResult;->a:Lcom/dropbox/core/v2/team/AddSecondaryEmailResult$Tag;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/dropbox/core/v2/team/AddSecondaryEmailResult$b;->b:Lcom/dropbox/core/v2/team/AddSecondaryEmailResult$b;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/dropbox/core/v2/team/AddSecondaryEmailResult$b;->b:Lcom/dropbox/core/v2/team/AddSecondaryEmailResult$b;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
