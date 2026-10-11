.class public Lcom/dropbox/core/v2/team/DateRange;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/team/DateRange$a;,
        Lcom/dropbox/core/v2/team/DateRange$Builder;
    }
.end annotation


# instance fields
.field public final a:Ljava/util/Date;

.field public final b:Ljava/util/Date;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 4
    invoke-direct {p0, v0, v0}, Lcom/dropbox/core/v2/team/DateRange;-><init>(Ljava/util/Date;Ljava/util/Date;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Date;Ljava/util/Date;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/dropbox/core/util/LangUtil;->truncateMillis(Ljava/util/Date;)Ljava/util/Date;

    move-result-object p1

    iput-object p1, p0, Lcom/dropbox/core/v2/team/DateRange;->a:Ljava/util/Date;

    .line 3
    invoke-static {p2}, Lcom/dropbox/core/util/LangUtil;->truncateMillis(Ljava/util/Date;)Ljava/util/Date;

    move-result-object p1

    iput-object p1, p0, Lcom/dropbox/core/v2/team/DateRange;->b:Ljava/util/Date;

    return-void
.end method

.method public static c()Lcom/dropbox/core/v2/team/DateRange$Builder;
    .locals 1

    new-instance v0, Lcom/dropbox/core/v2/team/DateRange$Builder;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/DateRange$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public a()Ljava/util/Date;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/v2/team/DateRange;->b:Ljava/util/Date;

    return-object p0
.end method

.method public b()Ljava/util/Date;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/v2/team/DateRange;->a:Ljava/util/Date;

    return-object p0
.end method

.method public d()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/dropbox/core/v2/team/DateRange$a;->b:Lcom/dropbox/core/v2/team/DateRange$a;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object p0

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

    if-eqz v2, :cond_5

    check-cast p1, Lcom/dropbox/core/v2/team/DateRange;

    iget-object v2, p0, Lcom/dropbox/core/v2/team/DateRange;->a:Ljava/util/Date;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/DateRange;->a:Ljava/util/Date;

    if-eq v2, v3, :cond_2

    if-eqz v2, :cond_3

    invoke-virtual {v2, v3}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    iget-object p0, p0, Lcom/dropbox/core/v2/team/DateRange;->b:Ljava/util/Date;

    iget-object p1, p1, Lcom/dropbox/core/v2/team/DateRange;->b:Ljava/util/Date;

    if-eq p0, p1, :cond_4

    if-eqz p0, :cond_3

    invoke-virtual {p0, p1}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_0

    :cond_3
    move v0, v1

    :cond_4
    :goto_0
    return v0

    :cond_5
    return v1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/dropbox/core/v2/team/DateRange;->a:Ljava/util/Date;

    iget-object p0, p0, Lcom/dropbox/core/v2/team/DateRange;->b:Ljava/util/Date;

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/dropbox/core/v2/team/DateRange$a;->b:Lcom/dropbox/core/v2/team/DateRange$a;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
