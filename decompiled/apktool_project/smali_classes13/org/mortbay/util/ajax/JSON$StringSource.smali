.class public Lorg/mortbay/util/ajax/JSON$StringSource;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/mortbay/util/ajax/JSON$Source;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mortbay/util/ajax/JSON;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StringSource"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public b:I

.field public c:[C


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/mortbay/util/ajax/JSON$StringSource;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    iget v0, p0, Lorg/mortbay/util/ajax/JSON$StringSource;->b:I

    iget-object v1, p0, Lorg/mortbay/util/ajax/JSON$StringSource;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mortbay/util/ajax/JSON$StringSource;->c:[C

    const/4 p0, 0x0

    return p0
.end method

.method public next()C
    .locals 3

    iget-object v0, p0, Lorg/mortbay/util/ajax/JSON$StringSource;->a:Ljava/lang/String;

    iget v1, p0, Lorg/mortbay/util/ajax/JSON$StringSource;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/mortbay/util/ajax/JSON$StringSource;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    return p0
.end method

.method public peek()C
    .locals 1

    iget-object v0, p0, Lorg/mortbay/util/ajax/JSON$StringSource;->a:Ljava/lang/String;

    iget p0, p0, Lorg/mortbay/util/ajax/JSON$StringSource;->b:I

    invoke-virtual {v0, p0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    return p0
.end method

.method public scratchBuffer()[C
    .locals 1

    iget-object v0, p0, Lorg/mortbay/util/ajax/JSON$StringSource;->c:[C

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/mortbay/util/ajax/JSON$StringSource;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    new-array v0, v0, [C

    iput-object v0, p0, Lorg/mortbay/util/ajax/JSON$StringSource;->c:[C

    :cond_0
    iget-object p0, p0, Lorg/mortbay/util/ajax/JSON$StringSource;->c:[C

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Lorg/mortbay/util/ajax/JSON$StringSource;->a:Ljava/lang/String;

    const/4 v2, 0x0

    iget v3, p0, Lorg/mortbay/util/ajax/JSON$StringSource;->b:I

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "|||"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/mortbay/util/ajax/JSON$StringSource;->a:Ljava/lang/String;

    iget p0, p0, Lorg/mortbay/util/ajax/JSON$StringSource;->b:I

    invoke-virtual {v1, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
