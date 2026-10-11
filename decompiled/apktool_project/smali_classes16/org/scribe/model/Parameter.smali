.class public Lorg/scribe/model/Parameter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lorg/scribe/model/Parameter;",
        ">;"
    }
.end annotation


# static fields
.field public static final g:Ljava/lang/String; = "UTF8"


# instance fields
.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/scribe/model/Parameter;->e:Ljava/lang/String;

    iput-object p2, p0, Lorg/scribe/model/Parameter;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public asUrlEncodedPair()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/scribe/model/Parameter;->e:Ljava/lang/String;

    invoke-static {v0}, Lorg/scribe/utils/OAuthEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lorg/scribe/model/Parameter;->f:Ljava/lang/String;

    invoke-static {p0}, Lorg/scribe/utils/OAuthEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lorg/scribe/model/Parameter;

    invoke-virtual {p0, p1}, Lorg/scribe/model/Parameter;->compareTo(Lorg/scribe/model/Parameter;)I

    move-result p0

    return p0
.end method

.method public compareTo(Lorg/scribe/model/Parameter;)I
    .locals 2

    .line 2
    iget-object v0, p0, Lorg/scribe/model/Parameter;->e:Ljava/lang/String;

    iget-object v1, p1, Lorg/scribe/model/Parameter;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object p0, p0, Lorg/scribe/model/Parameter;->f:Ljava/lang/String;

    iget-object p1, p1, Lorg/scribe/model/Parameter;->f:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    :goto_0
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-ne p1, p0, :cond_1

    return v1

    :cond_1
    instance-of v2, p1, Lorg/scribe/model/Parameter;

    if-nez v2, :cond_2

    return v0

    :cond_2
    check-cast p1, Lorg/scribe/model/Parameter;

    iget-object v2, p1, Lorg/scribe/model/Parameter;->e:Ljava/lang/String;

    iget-object v3, p0, Lorg/scribe/model/Parameter;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object p1, p1, Lorg/scribe/model/Parameter;->f:Ljava/lang/String;

    iget-object p0, p0, Lorg/scribe/model/Parameter;->f:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    move v0, v1

    :cond_3
    return v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lorg/scribe/model/Parameter;->e:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget-object p0, p0, Lorg/scribe/model/Parameter;->f:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method
