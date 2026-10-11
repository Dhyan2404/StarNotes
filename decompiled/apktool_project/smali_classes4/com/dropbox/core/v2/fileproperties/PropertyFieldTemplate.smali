.class public Lcom/dropbox/core/v2/fileproperties/PropertyFieldTemplate;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/fileproperties/PropertyFieldTemplate$a;
    }
.end annotation


# instance fields
.field protected final description:Ljava/lang/String;

.field protected final name:Ljava/lang/String;

.field protected final type:Lcom/dropbox/core/v2/fileproperties/PropertyType;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/v2/fileproperties/PropertyType;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_2

    iput-object p1, p0, Lcom/dropbox/core/v2/fileproperties/PropertyFieldTemplate;->name:Ljava/lang/String;

    if-eqz p2, :cond_1

    iput-object p2, p0, Lcom/dropbox/core/v2/fileproperties/PropertyFieldTemplate;->description:Ljava/lang/String;

    if-eqz p3, :cond_0

    iput-object p3, p0, Lcom/dropbox/core/v2/fileproperties/PropertyFieldTemplate;->type:Lcom/dropbox/core/v2/fileproperties/PropertyType;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Required value for \'type\' is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Required value for \'description\' is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Required value for \'name\' is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

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
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    check-cast p1, Lcom/dropbox/core/v2/fileproperties/PropertyFieldTemplate;

    iget-object v2, p0, Lcom/dropbox/core/v2/fileproperties/PropertyFieldTemplate;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/fileproperties/PropertyFieldTemplate;->name:Ljava/lang/String;

    if-eq v2, v3, :cond_2

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_2
    iget-object v2, p0, Lcom/dropbox/core/v2/fileproperties/PropertyFieldTemplate;->description:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/fileproperties/PropertyFieldTemplate;->description:Ljava/lang/String;

    if-eq v2, v3, :cond_3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    iget-object p0, p0, Lcom/dropbox/core/v2/fileproperties/PropertyFieldTemplate;->type:Lcom/dropbox/core/v2/fileproperties/PropertyType;

    iget-object p1, p1, Lcom/dropbox/core/v2/fileproperties/PropertyFieldTemplate;->type:Lcom/dropbox/core/v2/fileproperties/PropertyType;

    if-eq p0, p1, :cond_5

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_0

    :cond_4
    move v0, v1

    :cond_5
    :goto_0
    return v0

    :cond_6
    return v1
.end method

.method public getDescription()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/v2/fileproperties/PropertyFieldTemplate;->description:Ljava/lang/String;

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/v2/fileproperties/PropertyFieldTemplate;->name:Ljava/lang/String;

    return-object p0
.end method

.method public getType()Lcom/dropbox/core/v2/fileproperties/PropertyType;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/v2/fileproperties/PropertyFieldTemplate;->type:Lcom/dropbox/core/v2/fileproperties/PropertyType;

    return-object p0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/dropbox/core/v2/fileproperties/PropertyFieldTemplate;->name:Ljava/lang/String;

    iget-object v1, p0, Lcom/dropbox/core/v2/fileproperties/PropertyFieldTemplate;->description:Ljava/lang/String;

    iget-object p0, p0, Lcom/dropbox/core/v2/fileproperties/PropertyFieldTemplate;->type:Lcom/dropbox/core/v2/fileproperties/PropertyType;

    filled-new-array {v0, v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/dropbox/core/v2/fileproperties/PropertyFieldTemplate$a;->b:Lcom/dropbox/core/v2/fileproperties/PropertyFieldTemplate$a;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/dropbox/core/v2/fileproperties/PropertyFieldTemplate$a;->b:Lcom/dropbox/core/v2/fileproperties/PropertyFieldTemplate$a;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
