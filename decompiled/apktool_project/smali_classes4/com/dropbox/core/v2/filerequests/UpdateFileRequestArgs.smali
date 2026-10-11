.class public Lcom/dropbox/core/v2/filerequests/UpdateFileRequestArgs;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/filerequests/UpdateFileRequestArgs$a;,
        Lcom/dropbox/core/v2/filerequests/UpdateFileRequestArgs$Builder;
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline;

.field public final e:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 17
    sget-object v4, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline;->NO_UPDATE:Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestArgs;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline;Ljava/lang/Boolean;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline;Ljava/lang/Boolean;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_7

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_6

    const-string v0, "[-_0-9a-zA-Z]+"

    .line 3
    invoke-static {v0, p1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 4
    iput-object p1, p0, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestArgs;->a:Ljava/lang/String;

    if-eqz p2, :cond_1

    .line 5
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    if-lt p1, v1, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "String \'title\' is shorter than 1"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 7
    :cond_1
    :goto_0
    iput-object p2, p0, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestArgs;->b:Ljava/lang/String;

    if-eqz p3, :cond_3

    const-string p1, "/(.|[\\r\\n])*"

    .line 8
    invoke-static {p1, p3}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    .line 9
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "String \'destination\' does not match pattern"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 10
    :cond_3
    :goto_1
    iput-object p3, p0, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestArgs;->c:Ljava/lang/String;

    if-eqz p4, :cond_4

    .line 11
    iput-object p4, p0, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestArgs;->d:Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline;

    .line 12
    iput-object p5, p0, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestArgs;->e:Ljava/lang/Boolean;

    return-void

    .line 13
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Required value for \'deadline\' is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 14
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "String \'id\' does not match pattern"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 15
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "String \'id\' is shorter than 1"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 16
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Required value for \'id\' is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static f(Ljava/lang/String;)Lcom/dropbox/core/v2/filerequests/UpdateFileRequestArgs$Builder;
    .locals 1

    new-instance v0, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestArgs$Builder;

    invoke-direct {v0, p0}, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestArgs$Builder;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public a()Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestArgs;->d:Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline;

    return-object p0
.end method

.method public b()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestArgs;->c:Ljava/lang/String;

    return-object p0
.end method

.method public c()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestArgs;->a:Ljava/lang/String;

    return-object p0
.end method

.method public d()Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestArgs;->e:Ljava/lang/Boolean;

    return-object p0
.end method

.method public e()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestArgs;->b:Ljava/lang/String;

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
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    check-cast p1, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestArgs;

    iget-object v2, p0, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestArgs;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestArgs;->a:Ljava/lang/String;

    if-eq v2, v3, :cond_2

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_2
    iget-object v2, p0, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestArgs;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestArgs;->b:Ljava/lang/String;

    if-eq v2, v3, :cond_3

    if-eqz v2, :cond_6

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_3
    iget-object v2, p0, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestArgs;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestArgs;->c:Ljava/lang/String;

    if-eq v2, v3, :cond_4

    if-eqz v2, :cond_6

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_4
    iget-object v2, p0, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestArgs;->d:Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline;

    iget-object v3, p1, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestArgs;->d:Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline;

    if-eq v2, v3, :cond_5

    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_5
    iget-object p0, p0, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestArgs;->e:Ljava/lang/Boolean;

    iget-object p1, p1, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestArgs;->e:Ljava/lang/Boolean;

    if-eq p0, p1, :cond_7

    if-eqz p0, :cond_6

    invoke-virtual {p0, p1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    goto :goto_0

    :cond_6
    move v0, v1

    :cond_7
    :goto_0
    return v0

    :cond_8
    return v1
.end method

.method public g()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestArgs$a;->b:Lcom/dropbox/core/v2/filerequests/UpdateFileRequestArgs$a;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public hashCode()I
    .locals 4

    iget-object v0, p0, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestArgs;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestArgs;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestArgs;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestArgs;->d:Lcom/dropbox/core/v2/filerequests/UpdateFileRequestDeadline;

    iget-object p0, p0, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestArgs;->e:Ljava/lang/Boolean;

    filled-new-array {v0, v1, v2, v3, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestArgs$a;->b:Lcom/dropbox/core/v2/filerequests/UpdateFileRequestArgs$a;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
