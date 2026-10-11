.class public final Lcom/dropbox/core/v2/files/WriteMode;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/files/WriteMode$b;,
        Lcom/dropbox/core/v2/files/WriteMode$Tag;
    }
.end annotation


# static fields
.field public static final ADD:Lcom/dropbox/core/v2/files/WriteMode;

.field public static final OVERWRITE:Lcom/dropbox/core/v2/files/WriteMode;


# instance fields
.field public a:Lcom/dropbox/core/v2/files/WriteMode$Tag;

.field public b:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/dropbox/core/v2/files/WriteMode;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/WriteMode;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/files/WriteMode$Tag;->ADD:Lcom/dropbox/core/v2/files/WriteMode$Tag;

    invoke-virtual {v0, v1}, Lcom/dropbox/core/v2/files/WriteMode;->b(Lcom/dropbox/core/v2/files/WriteMode$Tag;)Lcom/dropbox/core/v2/files/WriteMode;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/files/WriteMode;->ADD:Lcom/dropbox/core/v2/files/WriteMode;

    new-instance v0, Lcom/dropbox/core/v2/files/WriteMode;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/WriteMode;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/files/WriteMode$Tag;->OVERWRITE:Lcom/dropbox/core/v2/files/WriteMode$Tag;

    invoke-virtual {v0, v1}, Lcom/dropbox/core/v2/files/WriteMode;->b(Lcom/dropbox/core/v2/files/WriteMode$Tag;)Lcom/dropbox/core/v2/files/WriteMode;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/files/WriteMode;->OVERWRITE:Lcom/dropbox/core/v2/files/WriteMode;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/dropbox/core/v2/files/WriteMode;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/v2/files/WriteMode;->b:Ljava/lang/String;

    return-object p0
.end method

.method public static update(Ljava/lang/String;)Lcom/dropbox/core/v2/files/WriteMode;
    .locals 2

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x9

    if-lt v0, v1, :cond_1

    const-string v0, "[0-9a-f]+"

    invoke-static {v0, p0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/dropbox/core/v2/files/WriteMode;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/WriteMode;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/files/WriteMode$Tag;->UPDATE:Lcom/dropbox/core/v2/files/WriteMode$Tag;

    invoke-virtual {v0, v1, p0}, Lcom/dropbox/core/v2/files/WriteMode;->c(Lcom/dropbox/core/v2/files/WriteMode$Tag;Ljava/lang/String;)Lcom/dropbox/core/v2/files/WriteMode;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "String does not match pattern"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "String is shorter than 9"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Value is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final b(Lcom/dropbox/core/v2/files/WriteMode$Tag;)Lcom/dropbox/core/v2/files/WriteMode;
    .locals 0

    new-instance p0, Lcom/dropbox/core/v2/files/WriteMode;

    invoke-direct {p0}, Lcom/dropbox/core/v2/files/WriteMode;-><init>()V

    iput-object p1, p0, Lcom/dropbox/core/v2/files/WriteMode;->a:Lcom/dropbox/core/v2/files/WriteMode$Tag;

    return-object p0
.end method

.method public final c(Lcom/dropbox/core/v2/files/WriteMode$Tag;Ljava/lang/String;)Lcom/dropbox/core/v2/files/WriteMode;
    .locals 0

    new-instance p0, Lcom/dropbox/core/v2/files/WriteMode;

    invoke-direct {p0}, Lcom/dropbox/core/v2/files/WriteMode;-><init>()V

    iput-object p1, p0, Lcom/dropbox/core/v2/files/WriteMode;->a:Lcom/dropbox/core/v2/files/WriteMode$Tag;

    iput-object p2, p0, Lcom/dropbox/core/v2/files/WriteMode;->b:Ljava/lang/String;

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
    instance-of v2, p1, Lcom/dropbox/core/v2/files/WriteMode;

    if-eqz v2, :cond_6

    check-cast p1, Lcom/dropbox/core/v2/files/WriteMode;

    iget-object v2, p0, Lcom/dropbox/core/v2/files/WriteMode;->a:Lcom/dropbox/core/v2/files/WriteMode$Tag;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/WriteMode;->a:Lcom/dropbox/core/v2/files/WriteMode$Tag;

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    sget-object v3, Lcom/dropbox/core/v2/files/WriteMode$a;->a:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, v3, v2

    if-eq v2, v0, :cond_5

    const/4 v3, 0x2

    if-eq v2, v3, :cond_5

    const/4 v3, 0x3

    if-eq v2, v3, :cond_3

    return v1

    :cond_3
    iget-object p0, p0, Lcom/dropbox/core/v2/files/WriteMode;->b:Ljava/lang/String;

    iget-object p1, p1, Lcom/dropbox/core/v2/files/WriteMode;->b:Ljava/lang/String;

    if-eq p0, p1, :cond_5

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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

.method public getUpdateValue()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/dropbox/core/v2/files/WriteMode;->a:Lcom/dropbox/core/v2/files/WriteMode$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/WriteMode$Tag;->UPDATE:Lcom/dropbox/core/v2/files/WriteMode$Tag;

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/dropbox/core/v2/files/WriteMode;->b:Ljava/lang/String;

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.UPDATE, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/dropbox/core/v2/files/WriteMode;->a:Lcom/dropbox/core/v2/files/WriteMode$Tag;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/dropbox/core/v2/files/WriteMode;->a:Lcom/dropbox/core/v2/files/WriteMode$Tag;

    iget-object p0, p0, Lcom/dropbox/core/v2/files/WriteMode;->b:Ljava/lang/String;

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public isAdd()Z
    .locals 1

    iget-object p0, p0, Lcom/dropbox/core/v2/files/WriteMode;->a:Lcom/dropbox/core/v2/files/WriteMode$Tag;

    sget-object v0, Lcom/dropbox/core/v2/files/WriteMode$Tag;->ADD:Lcom/dropbox/core/v2/files/WriteMode$Tag;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isOverwrite()Z
    .locals 1

    iget-object p0, p0, Lcom/dropbox/core/v2/files/WriteMode;->a:Lcom/dropbox/core/v2/files/WriteMode$Tag;

    sget-object v0, Lcom/dropbox/core/v2/files/WriteMode$Tag;->OVERWRITE:Lcom/dropbox/core/v2/files/WriteMode$Tag;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isUpdate()Z
    .locals 1

    iget-object p0, p0, Lcom/dropbox/core/v2/files/WriteMode;->a:Lcom/dropbox/core/v2/files/WriteMode$Tag;

    sget-object v0, Lcom/dropbox/core/v2/files/WriteMode$Tag;->UPDATE:Lcom/dropbox/core/v2/files/WriteMode$Tag;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public tag()Lcom/dropbox/core/v2/files/WriteMode$Tag;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/v2/files/WriteMode;->a:Lcom/dropbox/core/v2/files/WriteMode$Tag;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/dropbox/core/v2/files/WriteMode$b;->b:Lcom/dropbox/core/v2/files/WriteMode$b;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/dropbox/core/v2/files/WriteMode$b;->b:Lcom/dropbox/core/v2/files/WriteMode$b;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
