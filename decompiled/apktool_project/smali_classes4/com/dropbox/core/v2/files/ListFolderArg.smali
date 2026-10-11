.class public Lcom/dropbox/core/v2/files/ListFolderArg;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/files/ListFolderArg$a;,
        Lcom/dropbox/core/v2/files/ListFolderArg$Builder;
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Z

.field public final c:Z

.field public final d:Z

.field public final e:Z

.field public final f:Z

.field public final g:Ljava/lang/Long;

.field public final h:Lcom/dropbox/core/v2/files/SharedLink;

.field public final i:Lcom/dropbox/core/v2/fileproperties/TemplateFilterBase;

.field public final j:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 11

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    move-object v0, p0

    move-object v1, p1

    .line 19
    invoke-direct/range {v0 .. v10}, Lcom/dropbox/core/v2/files/ListFolderArg;-><init>(Ljava/lang/String;ZZZZZLjava/lang/Long;Lcom/dropbox/core/v2/files/SharedLink;Lcom/dropbox/core/v2/fileproperties/TemplateFilterBase;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZZZZZLjava/lang/Long;Lcom/dropbox/core/v2/files/SharedLink;Lcom/dropbox/core/v2/fileproperties/TemplateFilterBase;Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_4

    const-string v0, "(/(.|[\\r\\n])*)?|id:.*|(ns:[0-9]+(/.*)?)"

    .line 2
    invoke-static {v0, p1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3
    iput-object p1, p0, Lcom/dropbox/core/v2/files/ListFolderArg;->a:Ljava/lang/String;

    .line 4
    iput-boolean p2, p0, Lcom/dropbox/core/v2/files/ListFolderArg;->b:Z

    .line 5
    iput-boolean p3, p0, Lcom/dropbox/core/v2/files/ListFolderArg;->c:Z

    .line 6
    iput-boolean p4, p0, Lcom/dropbox/core/v2/files/ListFolderArg;->d:Z

    .line 7
    iput-boolean p5, p0, Lcom/dropbox/core/v2/files/ListFolderArg;->e:Z

    .line 8
    iput-boolean p6, p0, Lcom/dropbox/core/v2/files/ListFolderArg;->f:Z

    if-eqz p7, :cond_2

    .line 9
    invoke-virtual {p7}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    const-wide/16 p3, 0x1

    cmp-long p1, p1, p3

    if-ltz p1, :cond_1

    .line 10
    invoke-virtual {p7}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    const-wide/16 p3, 0x7d0

    cmp-long p1, p1, p3

    if-gtz p1, :cond_0

    goto :goto_0

    .line 11
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Number \'limit\' is larger than 2000L"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 12
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Number \'limit\' is smaller than 1L"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 13
    :cond_2
    :goto_0
    iput-object p7, p0, Lcom/dropbox/core/v2/files/ListFolderArg;->g:Ljava/lang/Long;

    .line 14
    iput-object p8, p0, Lcom/dropbox/core/v2/files/ListFolderArg;->h:Lcom/dropbox/core/v2/files/SharedLink;

    .line 15
    iput-object p9, p0, Lcom/dropbox/core/v2/files/ListFolderArg;->i:Lcom/dropbox/core/v2/fileproperties/TemplateFilterBase;

    .line 16
    iput-boolean p10, p0, Lcom/dropbox/core/v2/files/ListFolderArg;->j:Z

    return-void

    .line 17
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "String \'path\' does not match pattern"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 18
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Required value for \'path\' is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static k(Ljava/lang/String;)Lcom/dropbox/core/v2/files/ListFolderArg$Builder;
    .locals 1

    new-instance v0, Lcom/dropbox/core/v2/files/ListFolderArg$Builder;

    invoke-direct {v0, p0}, Lcom/dropbox/core/v2/files/ListFolderArg$Builder;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public a()Z
    .locals 0

    iget-boolean p0, p0, Lcom/dropbox/core/v2/files/ListFolderArg;->d:Z

    return p0
.end method

.method public b()Z
    .locals 0

    iget-boolean p0, p0, Lcom/dropbox/core/v2/files/ListFolderArg;->e:Z

    return p0
.end method

.method public c()Z
    .locals 0

    iget-boolean p0, p0, Lcom/dropbox/core/v2/files/ListFolderArg;->c:Z

    return p0
.end method

.method public d()Z
    .locals 0

    iget-boolean p0, p0, Lcom/dropbox/core/v2/files/ListFolderArg;->f:Z

    return p0
.end method

.method public e()Z
    .locals 0

    iget-boolean p0, p0, Lcom/dropbox/core/v2/files/ListFolderArg;->j:Z

    return p0
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

    if-eqz v2, :cond_7

    check-cast p1, Lcom/dropbox/core/v2/files/ListFolderArg;

    iget-object v2, p0, Lcom/dropbox/core/v2/files/ListFolderArg;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/ListFolderArg;->a:Ljava/lang/String;

    if-eq v2, v3, :cond_2

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_2
    iget-boolean v2, p0, Lcom/dropbox/core/v2/files/ListFolderArg;->b:Z

    iget-boolean v3, p1, Lcom/dropbox/core/v2/files/ListFolderArg;->b:Z

    if-ne v2, v3, :cond_6

    iget-boolean v2, p0, Lcom/dropbox/core/v2/files/ListFolderArg;->c:Z

    iget-boolean v3, p1, Lcom/dropbox/core/v2/files/ListFolderArg;->c:Z

    if-ne v2, v3, :cond_6

    iget-boolean v2, p0, Lcom/dropbox/core/v2/files/ListFolderArg;->d:Z

    iget-boolean v3, p1, Lcom/dropbox/core/v2/files/ListFolderArg;->d:Z

    if-ne v2, v3, :cond_6

    iget-boolean v2, p0, Lcom/dropbox/core/v2/files/ListFolderArg;->e:Z

    iget-boolean v3, p1, Lcom/dropbox/core/v2/files/ListFolderArg;->e:Z

    if-ne v2, v3, :cond_6

    iget-boolean v2, p0, Lcom/dropbox/core/v2/files/ListFolderArg;->f:Z

    iget-boolean v3, p1, Lcom/dropbox/core/v2/files/ListFolderArg;->f:Z

    if-ne v2, v3, :cond_6

    iget-object v2, p0, Lcom/dropbox/core/v2/files/ListFolderArg;->g:Ljava/lang/Long;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/ListFolderArg;->g:Ljava/lang/Long;

    if-eq v2, v3, :cond_3

    if-eqz v2, :cond_6

    invoke-virtual {v2, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_3
    iget-object v2, p0, Lcom/dropbox/core/v2/files/ListFolderArg;->h:Lcom/dropbox/core/v2/files/SharedLink;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/ListFolderArg;->h:Lcom/dropbox/core/v2/files/SharedLink;

    if-eq v2, v3, :cond_4

    if-eqz v2, :cond_6

    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/files/SharedLink;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_4
    iget-object v2, p0, Lcom/dropbox/core/v2/files/ListFolderArg;->i:Lcom/dropbox/core/v2/fileproperties/TemplateFilterBase;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/ListFolderArg;->i:Lcom/dropbox/core/v2/fileproperties/TemplateFilterBase;

    if-eq v2, v3, :cond_5

    if-eqz v2, :cond_6

    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/fileproperties/TemplateFilterBase;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_5
    iget-boolean p0, p0, Lcom/dropbox/core/v2/files/ListFolderArg;->j:Z

    iget-boolean p1, p1, Lcom/dropbox/core/v2/files/ListFolderArg;->j:Z

    if-ne p0, p1, :cond_6

    goto :goto_0

    :cond_6
    move v0, v1

    :goto_0
    return v0

    :cond_7
    return v1
.end method

.method public f()Lcom/dropbox/core/v2/fileproperties/TemplateFilterBase;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/v2/files/ListFolderArg;->i:Lcom/dropbox/core/v2/fileproperties/TemplateFilterBase;

    return-object p0
.end method

.method public g()Ljava/lang/Long;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/v2/files/ListFolderArg;->g:Ljava/lang/Long;

    return-object p0
.end method

.method public h()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/v2/files/ListFolderArg;->a:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 10

    iget-object v0, p0, Lcom/dropbox/core/v2/files/ListFolderArg;->a:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/dropbox/core/v2/files/ListFolderArg;->b:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-boolean v2, p0, Lcom/dropbox/core/v2/files/ListFolderArg;->c:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-boolean v3, p0, Lcom/dropbox/core/v2/files/ListFolderArg;->d:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iget-boolean v4, p0, Lcom/dropbox/core/v2/files/ListFolderArg;->e:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iget-boolean v5, p0, Lcom/dropbox/core/v2/files/ListFolderArg;->f:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iget-object v6, p0, Lcom/dropbox/core/v2/files/ListFolderArg;->g:Ljava/lang/Long;

    iget-object v7, p0, Lcom/dropbox/core/v2/files/ListFolderArg;->h:Lcom/dropbox/core/v2/files/SharedLink;

    iget-object v8, p0, Lcom/dropbox/core/v2/files/ListFolderArg;->i:Lcom/dropbox/core/v2/fileproperties/TemplateFilterBase;

    iget-boolean p0, p0, Lcom/dropbox/core/v2/files/ListFolderArg;->j:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    filled-new-array/range {v0 .. v9}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public i()Z
    .locals 0

    iget-boolean p0, p0, Lcom/dropbox/core/v2/files/ListFolderArg;->b:Z

    return p0
.end method

.method public j()Lcom/dropbox/core/v2/files/SharedLink;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/v2/files/ListFolderArg;->h:Lcom/dropbox/core/v2/files/SharedLink;

    return-object p0
.end method

.method public l()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/dropbox/core/v2/files/ListFolderArg$a;->b:Lcom/dropbox/core/v2/files/ListFolderArg$a;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/dropbox/core/v2/files/ListFolderArg$a;->b:Lcom/dropbox/core/v2/files/ListFolderArg$a;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
