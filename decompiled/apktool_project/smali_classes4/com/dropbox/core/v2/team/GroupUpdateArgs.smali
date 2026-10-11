.class public Lcom/dropbox/core/v2/team/GroupUpdateArgs;
.super Lcom/sunia/HTREnginev2/jji;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/team/GroupUpdateArgs$a;,
        Lcom/dropbox/core/v2/team/GroupUpdateArgs$Builder;
    }
.end annotation


# instance fields
.field public final b:Lcom/dropbox/core/v2/team/GroupSelector;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Lcom/dropbox/core/v2/teamcommon/GroupManagementType;


# direct methods
.method public constructor <init>(Lcom/dropbox/core/v2/team/GroupSelector;)V
    .locals 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 7
    invoke-direct/range {v0 .. v5}, Lcom/dropbox/core/v2/team/GroupUpdateArgs;-><init>(Lcom/dropbox/core/v2/team/GroupSelector;ZLjava/lang/String;Ljava/lang/String;Lcom/dropbox/core/v2/teamcommon/GroupManagementType;)V

    return-void
.end method

.method public constructor <init>(Lcom/dropbox/core/v2/team/GroupSelector;ZLjava/lang/String;Ljava/lang/String;Lcom/dropbox/core/v2/teamcommon/GroupManagementType;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Lcom/sunia/HTREnginev2/jji;-><init>(Z)V

    if-eqz p1, :cond_0

    .line 2
    iput-object p1, p0, Lcom/dropbox/core/v2/team/GroupUpdateArgs;->b:Lcom/dropbox/core/v2/team/GroupSelector;

    .line 3
    iput-object p3, p0, Lcom/dropbox/core/v2/team/GroupUpdateArgs;->c:Ljava/lang/String;

    .line 4
    iput-object p4, p0, Lcom/dropbox/core/v2/team/GroupUpdateArgs;->d:Ljava/lang/String;

    .line 5
    iput-object p5, p0, Lcom/dropbox/core/v2/team/GroupUpdateArgs;->e:Lcom/dropbox/core/v2/teamcommon/GroupManagementType;

    return-void

    .line 6
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Required value for \'group\' is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static g(Lcom/dropbox/core/v2/team/GroupSelector;)Lcom/dropbox/core/v2/team/GroupUpdateArgs$Builder;
    .locals 1

    new-instance v0, Lcom/dropbox/core/v2/team/GroupUpdateArgs$Builder;

    invoke-direct {v0, p0}, Lcom/dropbox/core/v2/team/GroupUpdateArgs$Builder;-><init>(Lcom/dropbox/core/v2/team/GroupSelector;)V

    return-object v0
.end method


# virtual methods
.method public a()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sunia/HTREnginev2/jji;->a:Z

    return p0
.end method

.method public b()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/dropbox/core/v2/team/GroupUpdateArgs$a;->b:Lcom/dropbox/core/v2/team/GroupUpdateArgs$a;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public c()Lcom/dropbox/core/v2/team/GroupSelector;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/v2/team/GroupUpdateArgs;->b:Lcom/dropbox/core/v2/team/GroupSelector;

    return-object p0
.end method

.method public d()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/v2/team/GroupUpdateArgs;->d:Ljava/lang/String;

    return-object p0
.end method

.method public e()Lcom/dropbox/core/v2/teamcommon/GroupManagementType;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/v2/team/GroupUpdateArgs;->e:Lcom/dropbox/core/v2/teamcommon/GroupManagementType;

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

    if-eqz v2, :cond_7

    check-cast p1, Lcom/dropbox/core/v2/team/GroupUpdateArgs;

    iget-object v2, p0, Lcom/dropbox/core/v2/team/GroupUpdateArgs;->b:Lcom/dropbox/core/v2/team/GroupSelector;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/GroupUpdateArgs;->b:Lcom/dropbox/core/v2/team/GroupSelector;

    if-eq v2, v3, :cond_2

    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/team/GroupSelector;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_2
    iget-boolean v2, p0, Lcom/sunia/HTREnginev2/jji;->a:Z

    iget-boolean v3, p1, Lcom/sunia/HTREnginev2/jji;->a:Z

    if-ne v2, v3, :cond_5

    iget-object v2, p0, Lcom/dropbox/core/v2/team/GroupUpdateArgs;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/GroupUpdateArgs;->c:Ljava/lang/String;

    if-eq v2, v3, :cond_3

    if-eqz v2, :cond_5

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_3
    iget-object v2, p0, Lcom/dropbox/core/v2/team/GroupUpdateArgs;->d:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/GroupUpdateArgs;->d:Ljava/lang/String;

    if-eq v2, v3, :cond_4

    if-eqz v2, :cond_5

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    iget-object p0, p0, Lcom/dropbox/core/v2/team/GroupUpdateArgs;->e:Lcom/dropbox/core/v2/teamcommon/GroupManagementType;

    iget-object p1, p1, Lcom/dropbox/core/v2/team/GroupUpdateArgs;->e:Lcom/dropbox/core/v2/teamcommon/GroupManagementType;

    if-eq p0, p1, :cond_6

    if-eqz p0, :cond_5

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    goto :goto_0

    :cond_5
    move v0, v1

    :cond_6
    :goto_0
    return v0

    :cond_7
    return v1
.end method

.method public f()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/v2/team/GroupUpdateArgs;->c:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 4

    iget-object v0, p0, Lcom/dropbox/core/v2/team/GroupUpdateArgs;->b:Lcom/dropbox/core/v2/team/GroupSelector;

    iget-object v1, p0, Lcom/dropbox/core/v2/team/GroupUpdateArgs;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/dropbox/core/v2/team/GroupUpdateArgs;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/dropbox/core/v2/team/GroupUpdateArgs;->e:Lcom/dropbox/core/v2/teamcommon/GroupManagementType;

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    invoke-super {p0}, Lcom/sunia/HTREnginev2/jji;->hashCode()I

    move-result p0

    mul-int/lit8 p0, p0, 0x1f

    add-int/2addr p0, v0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/dropbox/core/v2/team/GroupUpdateArgs$a;->b:Lcom/dropbox/core/v2/team/GroupUpdateArgs$a;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
