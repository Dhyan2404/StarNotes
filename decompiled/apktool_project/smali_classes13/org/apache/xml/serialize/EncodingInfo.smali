.class public Lorg/apache/xml/serialize/EncodingInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xml/serialize/EncodingInfo$a;,
        Lorg/apache/xml/serialize/EncodingInfo$b;
    }
.end annotation


# instance fields
.field public a:[Ljava/lang/Object;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:I

.field public e:Ljava/lang/Object;

.field public f:Ljava/lang/Object;

.field public g:Z

.field public h:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p2, 0x0

    iput-object p2, p0, Lorg/apache/xml/serialize/EncodingInfo;->a:[Ljava/lang/Object;

    iput-object p2, p0, Lorg/apache/xml/serialize/EncodingInfo;->e:Ljava/lang/Object;

    iput-object p2, p0, Lorg/apache/xml/serialize/EncodingInfo;->f:Ljava/lang/Object;

    const/4 p2, 0x0

    iput-boolean p2, p0, Lorg/apache/xml/serialize/EncodingInfo;->g:Z

    iput-boolean p2, p0, Lorg/apache/xml/serialize/EncodingInfo;->h:Z

    iput-object p1, p0, Lorg/apache/xml/serialize/EncodingInfo;->b:Ljava/lang/String;

    invoke-static {p1}, Lorg/apache/xerces/util/EncodingMap;->getIANA2JavaMapping(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/xml/serialize/EncodingInfo;->c:Ljava/lang/String;

    iput p3, p0, Lorg/apache/xml/serialize/EncodingInfo;->d:I

    return-void
.end method

.method public static testJavaEncodingName(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    const/4 v0, 0x5

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0, p0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-void

    :array_0
    .array-data 1
        0x76t
        0x61t
        0x6ct
        0x69t
        0x64t
    .end array-data
.end method


# virtual methods
.method public final a(C)Z
    .locals 6

    iget-object v0, p0, Lorg/apache/xml/serialize/EncodingInfo;->e:Ljava/lang/Object;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-nez v0, :cond_2

    invoke-static {}, Lorg/apache/xml/serialize/EncodingInfo$b;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lorg/apache/xml/serialize/EncodingInfo;->h:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/apache/xml/serialize/EncodingInfo;->a:[Ljava/lang/Object;

    if-nez v0, :cond_0

    new-array v0, v1, [Ljava/lang/Object;

    iput-object v0, p0, Lorg/apache/xml/serialize/EncodingInfo;->a:[Ljava/lang/Object;

    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/apache/xml/serialize/EncodingInfo;->a:[Ljava/lang/Object;

    iget-object v4, p0, Lorg/apache/xml/serialize/EncodingInfo;->c:Ljava/lang/String;

    aput-object v4, v0, v3

    invoke-static {}, Lorg/apache/xml/serialize/EncodingInfo$b;->b()Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v4, p0, Lorg/apache/xml/serialize/EncodingInfo;->a:[Ljava/lang/Object;

    invoke-virtual {v0, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lorg/apache/xml/serialize/EncodingInfo$b;->c()Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-virtual {v4, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {}, Lorg/apache/xml/serialize/EncodingInfo$b;->d()Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-virtual {v4, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xml/serialize/EncodingInfo;->e:Ljava/lang/Object;

    goto :goto_0

    :cond_1
    iput-boolean v1, p0, Lorg/apache/xml/serialize/EncodingInfo;->h:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iput-boolean v1, p0, Lorg/apache/xml/serialize/EncodingInfo;->h:Z

    :cond_2
    :goto_0
    iget-object v0, p0, Lorg/apache/xml/serialize/EncodingInfo;->e:Ljava/lang/Object;

    if-eqz v0, :cond_3

    :try_start_1
    iget-object v0, p0, Lorg/apache/xml/serialize/EncodingInfo;->a:[Ljava/lang/Object;

    new-instance v4, Ljava/lang/Character;

    invoke-direct {v4, p1}, Ljava/lang/Character;-><init>(C)V

    aput-object v4, v0, v3

    invoke-static {}, Lorg/apache/xml/serialize/EncodingInfo$b;->e()Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v4, p0, Lorg/apache/xml/serialize/EncodingInfo;->e:Ljava/lang/Object;

    iget-object v5, p0, Lorg/apache/xml/serialize/EncodingInfo;->a:[Ljava/lang/Object;

    invoke-virtual {v0, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return p0

    :catch_1
    iput-object v2, p0, Lorg/apache/xml/serialize/EncodingInfo;->e:Ljava/lang/Object;

    iput-boolean v3, p0, Lorg/apache/xml/serialize/EncodingInfo;->h:Z

    :cond_3
    iget-object v0, p0, Lorg/apache/xml/serialize/EncodingInfo;->f:Ljava/lang/Object;

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lorg/apache/xml/serialize/EncodingInfo;->g:Z

    if-nez v0, :cond_6

    invoke-static {}, Lorg/apache/xml/serialize/EncodingInfo$a;->a()Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lorg/apache/xml/serialize/EncodingInfo;->a:[Ljava/lang/Object;

    if-nez v0, :cond_5

    new-array v0, v1, [Ljava/lang/Object;

    iput-object v0, p0, Lorg/apache/xml/serialize/EncodingInfo;->a:[Ljava/lang/Object;

    :cond_5
    :try_start_2
    iget-object v0, p0, Lorg/apache/xml/serialize/EncodingInfo;->a:[Ljava/lang/Object;

    iget-object v4, p0, Lorg/apache/xml/serialize/EncodingInfo;->c:Ljava/lang/String;

    aput-object v4, v0, v3

    invoke-static {}, Lorg/apache/xml/serialize/EncodingInfo$a;->b()Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v4, p0, Lorg/apache/xml/serialize/EncodingInfo;->a:[Ljava/lang/Object;

    invoke-virtual {v0, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xml/serialize/EncodingInfo;->f:Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    iput-boolean v1, p0, Lorg/apache/xml/serialize/EncodingInfo;->g:Z

    :cond_6
    :goto_1
    return v3

    :cond_7
    :goto_2
    :try_start_3
    iget-object v0, p0, Lorg/apache/xml/serialize/EncodingInfo;->a:[Ljava/lang/Object;

    new-instance v1, Ljava/lang/Character;

    invoke-direct {v1, p1}, Ljava/lang/Character;-><init>(C)V

    aput-object v1, v0, v3

    invoke-static {}, Lorg/apache/xml/serialize/EncodingInfo$a;->c()Ljava/lang/reflect/Method;

    move-result-object p1

    iget-object v0, p0, Lorg/apache/xml/serialize/EncodingInfo;->f:Ljava/lang/Object;

    iget-object v1, p0, Lorg/apache/xml/serialize/EncodingInfo;->a:[Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    return p0

    :catch_3
    iput-object v2, p0, Lorg/apache/xml/serialize/EncodingInfo;->f:Ljava/lang/Object;

    iput-boolean v3, p0, Lorg/apache/xml/serialize/EncodingInfo;->g:Z

    return v3
.end method

.method public getIANAName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/xml/serialize/EncodingInfo;->b:Ljava/lang/String;

    return-object p0
.end method

.method public getWriter(Ljava/io/OutputStream;)Ljava/io/Writer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/xml/serialize/EncodingInfo;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/OutputStreamWriter;

    iget-object p0, p0, Lorg/apache/xml/serialize/EncodingInfo;->c:Ljava/lang/String;

    invoke-direct {v0, p1, p0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/xml/serialize/EncodingInfo;->b:Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/xerces/util/EncodingMap;->getIANA2JavaMapping(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xml/serialize/EncodingInfo;->c:Ljava/lang/String;

    if-nez v0, :cond_1

    new-instance p0, Ljava/io/OutputStreamWriter;

    const-string v0, "UTF8"

    invoke-direct {p0, p1, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    return-object p0

    :cond_1
    new-instance v0, Ljava/io/OutputStreamWriter;

    iget-object p0, p0, Lorg/apache/xml/serialize/EncodingInfo;->c:Ljava/lang/String;

    invoke-direct {v0, p1, p0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    return-object v0
.end method

.method public isPrintable(C)Z
    .locals 1

    iget v0, p0, Lorg/apache/xml/serialize/EncodingInfo;->d:I

    if-gt p1, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/xml/serialize/EncodingInfo;->a(C)Z

    move-result p0

    return p0
.end method
