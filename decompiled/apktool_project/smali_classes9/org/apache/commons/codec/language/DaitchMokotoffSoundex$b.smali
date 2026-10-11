.class public final Lorg/apache/commons/codec/language/DaitchMokotoffSoundex$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/codec/language/DaitchMokotoffSoundex;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:Ljava/lang/StringBuilder;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/codec/language/DaitchMokotoffSoundex$b;->a:Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lorg/apache/commons/codec/language/DaitchMokotoffSoundex$b;->c:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lorg/apache/commons/codec/language/DaitchMokotoffSoundex$b;->b:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lorg/apache/commons/codec/language/DaitchMokotoffSoundex$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/apache/commons/codec/language/DaitchMokotoffSoundex$b;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lorg/apache/commons/codec/language/DaitchMokotoffSoundex$b;
    .locals 3

    new-instance v0, Lorg/apache/commons/codec/language/DaitchMokotoffSoundex$b;

    invoke-direct {v0}, Lorg/apache/commons/codec/language/DaitchMokotoffSoundex$b;-><init>()V

    iget-object v1, v0, Lorg/apache/commons/codec/language/DaitchMokotoffSoundex$b;->a:Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/commons/codec/language/DaitchMokotoffSoundex$b;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lorg/apache/commons/codec/language/DaitchMokotoffSoundex$b;->c:Ljava/lang/String;

    iput-object p0, v0, Lorg/apache/commons/codec/language/DaitchMokotoffSoundex$b;->c:Ljava/lang/String;

    return-object v0
.end method

.method public b()V
    .locals 2

    :goto_0
    iget-object v0, p0, Lorg/apache/commons/codec/language/DaitchMokotoffSoundex$b;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const/4 v1, 0x6

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lorg/apache/commons/codec/language/DaitchMokotoffSoundex$b;->a:Ljava/lang/StringBuilder;

    const/16 v1, 0x30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/codec/language/DaitchMokotoffSoundex$b;->b:Ljava/lang/String;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public c(Ljava/lang/String;Z)V
    .locals 2

    iget-object v0, p0, Lorg/apache/commons/codec/language/DaitchMokotoffSoundex$b;->c:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p2, 0x1

    :goto_1
    if-eqz p2, :cond_3

    iget-object p2, p0, Lorg/apache/commons/codec/language/DaitchMokotoffSoundex$b;->a:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result p2

    const/4 v0, 0x6

    if-ge p2, v0, :cond_3

    iget-object p2, p0, Lorg/apache/commons/codec/language/DaitchMokotoffSoundex$b;->a:Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lorg/apache/commons/codec/language/DaitchMokotoffSoundex$b;->a:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result p2

    if-le p2, v0, :cond_2

    iget-object p2, p0, Lorg/apache/commons/codec/language/DaitchMokotoffSoundex$b;->a:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    :cond_2
    const/4 p2, 0x0

    iput-object p2, p0, Lorg/apache/commons/codec/language/DaitchMokotoffSoundex$b;->b:Ljava/lang/String;

    :cond_3
    iput-object p1, p0, Lorg/apache/commons/codec/language/DaitchMokotoffSoundex$b;->c:Ljava/lang/String;

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    instance-of v0, p1, Lorg/apache/commons/codec/language/DaitchMokotoffSoundex$b;

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    invoke-virtual {p0}, Lorg/apache/commons/codec/language/DaitchMokotoffSoundex$b;->toString()Ljava/lang/String;

    move-result-object p0

    check-cast p1, Lorg/apache/commons/codec/language/DaitchMokotoffSoundex$b;

    invoke-virtual {p1}, Lorg/apache/commons/codec/language/DaitchMokotoffSoundex$b;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public hashCode()I
    .locals 0

    invoke-virtual {p0}, Lorg/apache/commons/codec/language/DaitchMokotoffSoundex$b;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/codec/language/DaitchMokotoffSoundex$b;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/codec/language/DaitchMokotoffSoundex$b;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/codec/language/DaitchMokotoffSoundex$b;->b:Ljava/lang/String;

    :cond_0
    iget-object p0, p0, Lorg/apache/commons/codec/language/DaitchMokotoffSoundex$b;->b:Ljava/lang/String;

    return-object p0
.end method
