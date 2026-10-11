.class public Lcom/dropbox/core/v2/sharing/ShareFolderArgBase;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/sharing/ShareFolderArgBase$a;,
        Lcom/dropbox/core/v2/sharing/ShareFolderArgBase$Builder;
    }
.end annotation


# instance fields
.field public final a:Lcom/dropbox/core/v2/sharing/AclUpdatePolicy;

.field public final b:Z

.field public final c:Lcom/dropbox/core/v2/sharing/MemberPolicy;

.field public final d:Ljava/lang/String;

.field public final e:Lcom/dropbox/core/v2/sharing/SharedLinkPolicy;

.field public final f:Lcom/dropbox/core/v2/sharing/ViewerInfoPolicy;

.field public final g:Lcom/dropbox/core/v2/sharing/AccessInheritance;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 8

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 13
    sget-object v7, Lcom/dropbox/core/v2/sharing/AccessInheritance;->INHERIT:Lcom/dropbox/core/v2/sharing/AccessInheritance;

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/dropbox/core/v2/sharing/ShareFolderArgBase;-><init>(Ljava/lang/String;Lcom/dropbox/core/v2/sharing/AclUpdatePolicy;ZLcom/dropbox/core/v2/sharing/MemberPolicy;Lcom/dropbox/core/v2/sharing/SharedLinkPolicy;Lcom/dropbox/core/v2/sharing/ViewerInfoPolicy;Lcom/dropbox/core/v2/sharing/AccessInheritance;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/dropbox/core/v2/sharing/AclUpdatePolicy;ZLcom/dropbox/core/v2/sharing/MemberPolicy;Lcom/dropbox/core/v2/sharing/SharedLinkPolicy;Lcom/dropbox/core/v2/sharing/ViewerInfoPolicy;Lcom/dropbox/core/v2/sharing/AccessInheritance;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/dropbox/core/v2/sharing/ShareFolderArgBase;->a:Lcom/dropbox/core/v2/sharing/AclUpdatePolicy;

    .line 3
    iput-boolean p3, p0, Lcom/dropbox/core/v2/sharing/ShareFolderArgBase;->b:Z

    .line 4
    iput-object p4, p0, Lcom/dropbox/core/v2/sharing/ShareFolderArgBase;->c:Lcom/dropbox/core/v2/sharing/MemberPolicy;

    if-eqz p1, :cond_2

    const-string p2, "(/(.|[\\r\\n])*)|(ns:[0-9]+(/.*)?)"

    .line 5
    invoke-static {p2, p1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 6
    iput-object p1, p0, Lcom/dropbox/core/v2/sharing/ShareFolderArgBase;->d:Ljava/lang/String;

    .line 7
    iput-object p5, p0, Lcom/dropbox/core/v2/sharing/ShareFolderArgBase;->e:Lcom/dropbox/core/v2/sharing/SharedLinkPolicy;

    .line 8
    iput-object p6, p0, Lcom/dropbox/core/v2/sharing/ShareFolderArgBase;->f:Lcom/dropbox/core/v2/sharing/ViewerInfoPolicy;

    if-eqz p7, :cond_0

    .line 9
    iput-object p7, p0, Lcom/dropbox/core/v2/sharing/ShareFolderArgBase;->g:Lcom/dropbox/core/v2/sharing/AccessInheritance;

    return-void

    .line 10
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Required value for \'accessInheritance\' is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 11
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "String \'path\' does not match pattern"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 12
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Required value for \'path\' is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static h(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/ShareFolderArgBase$Builder;
    .locals 1

    new-instance v0, Lcom/dropbox/core/v2/sharing/ShareFolderArgBase$Builder;

    invoke-direct {v0, p0}, Lcom/dropbox/core/v2/sharing/ShareFolderArgBase$Builder;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public a()Lcom/dropbox/core/v2/sharing/AccessInheritance;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/v2/sharing/ShareFolderArgBase;->g:Lcom/dropbox/core/v2/sharing/AccessInheritance;

    return-object p0
.end method

.method public b()Lcom/dropbox/core/v2/sharing/AclUpdatePolicy;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/v2/sharing/ShareFolderArgBase;->a:Lcom/dropbox/core/v2/sharing/AclUpdatePolicy;

    return-object p0
.end method

.method public c()Z
    .locals 0

    iget-boolean p0, p0, Lcom/dropbox/core/v2/sharing/ShareFolderArgBase;->b:Z

    return p0
.end method

.method public d()Lcom/dropbox/core/v2/sharing/MemberPolicy;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/v2/sharing/ShareFolderArgBase;->c:Lcom/dropbox/core/v2/sharing/MemberPolicy;

    return-object p0
.end method

.method public e()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/v2/sharing/ShareFolderArgBase;->d:Ljava/lang/String;

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

    if-eqz v2, :cond_9

    check-cast p1, Lcom/dropbox/core/v2/sharing/ShareFolderArgBase;

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/ShareFolderArgBase;->d:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/ShareFolderArgBase;->d:Ljava/lang/String;

    if-eq v2, v3, :cond_2

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_2
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/ShareFolderArgBase;->a:Lcom/dropbox/core/v2/sharing/AclUpdatePolicy;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/ShareFolderArgBase;->a:Lcom/dropbox/core/v2/sharing/AclUpdatePolicy;

    if-eq v2, v3, :cond_3

    if-eqz v2, :cond_7

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_3
    iget-boolean v2, p0, Lcom/dropbox/core/v2/sharing/ShareFolderArgBase;->b:Z

    iget-boolean v3, p1, Lcom/dropbox/core/v2/sharing/ShareFolderArgBase;->b:Z

    if-ne v2, v3, :cond_7

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/ShareFolderArgBase;->c:Lcom/dropbox/core/v2/sharing/MemberPolicy;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/ShareFolderArgBase;->c:Lcom/dropbox/core/v2/sharing/MemberPolicy;

    if-eq v2, v3, :cond_4

    if-eqz v2, :cond_7

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_4
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/ShareFolderArgBase;->e:Lcom/dropbox/core/v2/sharing/SharedLinkPolicy;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/ShareFolderArgBase;->e:Lcom/dropbox/core/v2/sharing/SharedLinkPolicy;

    if-eq v2, v3, :cond_5

    if-eqz v2, :cond_7

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_5
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/ShareFolderArgBase;->f:Lcom/dropbox/core/v2/sharing/ViewerInfoPolicy;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/ShareFolderArgBase;->f:Lcom/dropbox/core/v2/sharing/ViewerInfoPolicy;

    if-eq v2, v3, :cond_6

    if-eqz v2, :cond_7

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_6
    iget-object p0, p0, Lcom/dropbox/core/v2/sharing/ShareFolderArgBase;->g:Lcom/dropbox/core/v2/sharing/AccessInheritance;

    iget-object p1, p1, Lcom/dropbox/core/v2/sharing/ShareFolderArgBase;->g:Lcom/dropbox/core/v2/sharing/AccessInheritance;

    if-eq p0, p1, :cond_8

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    goto :goto_0

    :cond_7
    move v0, v1

    :cond_8
    :goto_0
    return v0

    :cond_9
    return v1
.end method

.method public f()Lcom/dropbox/core/v2/sharing/SharedLinkPolicy;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/v2/sharing/ShareFolderArgBase;->e:Lcom/dropbox/core/v2/sharing/SharedLinkPolicy;

    return-object p0
.end method

.method public g()Lcom/dropbox/core/v2/sharing/ViewerInfoPolicy;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/v2/sharing/ShareFolderArgBase;->f:Lcom/dropbox/core/v2/sharing/ViewerInfoPolicy;

    return-object p0
.end method

.method public hashCode()I
    .locals 7

    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/ShareFolderArgBase;->a:Lcom/dropbox/core/v2/sharing/AclUpdatePolicy;

    iget-boolean v1, p0, Lcom/dropbox/core/v2/sharing/ShareFolderArgBase;->b:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/ShareFolderArgBase;->c:Lcom/dropbox/core/v2/sharing/MemberPolicy;

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/ShareFolderArgBase;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/dropbox/core/v2/sharing/ShareFolderArgBase;->e:Lcom/dropbox/core/v2/sharing/SharedLinkPolicy;

    iget-object v5, p0, Lcom/dropbox/core/v2/sharing/ShareFolderArgBase;->f:Lcom/dropbox/core/v2/sharing/ViewerInfoPolicy;

    iget-object v6, p0, Lcom/dropbox/core/v2/sharing/ShareFolderArgBase;->g:Lcom/dropbox/core/v2/sharing/AccessInheritance;

    filled-new-array/range {v0 .. v6}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public i()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/dropbox/core/v2/sharing/ShareFolderArgBase$a;->b:Lcom/dropbox/core/v2/sharing/ShareFolderArgBase$a;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/dropbox/core/v2/sharing/ShareFolderArgBase$a;->b:Lcom/dropbox/core/v2/sharing/ShareFolderArgBase$a;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
