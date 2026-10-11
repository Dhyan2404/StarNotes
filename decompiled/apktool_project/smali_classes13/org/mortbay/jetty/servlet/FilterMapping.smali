.class public Lorg/mortbay/jetty/servlet/FilterMapping;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field public transient c:Lorg/mortbay/jetty/servlet/FilterHolder;

.field public d:[Ljava/lang/String;

.field public e:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lorg/mortbay/jetty/servlet/FilterMapping;->a:I

    return-void
.end method


# virtual methods
.method public a(I)Z
    .locals 2

    iget p0, p0, Lorg/mortbay/jetty/servlet/FilterMapping;->a:I

    and-int v0, p0, p1

    const/4 v1, 0x1

    if-nez v0, :cond_1

    if-nez p0, :cond_0

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    return v1
.end method

.method public b(Ljava/lang/String;I)Z
    .locals 4

    iget v0, p0, Lorg/mortbay/jetty/servlet/FilterMapping;->a:I

    and-int v1, v0, p2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    if-nez v0, :cond_2

    if-ne p2, v3, :cond_2

    :cond_0
    iget-object p2, p0, Lorg/mortbay/jetty/servlet/FilterMapping;->d:[Ljava/lang/String;

    if-eqz p2, :cond_2

    move p2, v2

    :goto_0
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/FilterMapping;->d:[Ljava/lang/String;

    array-length v1, v0

    if-ge p2, v1, :cond_2

    aget-object v0, v0, p2

    if-eqz v0, :cond_1

    invoke-static {v0, p1, v3}, Lorg/mortbay/jetty/servlet/PathMap;->match(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    return v3

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method

.method public c()Lorg/mortbay/jetty/servlet/FilterHolder;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/servlet/FilterMapping;->c:Lorg/mortbay/jetty/servlet/FilterHolder;

    return-object p0
.end method

.method public d(Lorg/mortbay/jetty/servlet/FilterHolder;)V
    .locals 0

    iput-object p1, p0, Lorg/mortbay/jetty/servlet/FilterMapping;->c:Lorg/mortbay/jetty/servlet/FilterHolder;

    return-void
.end method

.method public getDispatches()I
    .locals 0

    iget p0, p0, Lorg/mortbay/jetty/servlet/FilterMapping;->a:I

    return p0
.end method

.method public getFilterName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/servlet/FilterMapping;->b:Ljava/lang/String;

    return-object p0
.end method

.method public getPathSpecs()[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/servlet/FilterMapping;->d:[Ljava/lang/String;

    return-object p0
.end method

.method public getServletNames()[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/servlet/FilterMapping;->e:[Ljava/lang/String;

    return-object p0
.end method

.method public setDispatches(I)V
    .locals 0

    iput p1, p0, Lorg/mortbay/jetty/servlet/FilterMapping;->a:I

    return-void
.end method

.method public setFilterName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/mortbay/jetty/servlet/FilterMapping;->b:Ljava/lang/String;

    return-void
.end method

.method public setPathSpec(Ljava/lang/String;)V
    .locals 0

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/mortbay/jetty/servlet/FilterMapping;->d:[Ljava/lang/String;

    return-void
.end method

.method public setPathSpecs([Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/mortbay/jetty/servlet/FilterMapping;->d:[Ljava/lang/String;

    return-void
.end method

.method public setServletName(Ljava/lang/String;)V
    .locals 0

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/mortbay/jetty/servlet/FilterMapping;->e:[Ljava/lang/String;

    return-void
.end method

.method public setServletNames([Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/mortbay/jetty/servlet/FilterMapping;->e:[Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "(F="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/mortbay/jetty/servlet/FilterMapping;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lorg/mortbay/jetty/servlet/FilterMapping;->d:[Ljava/lang/String;

    const-string v3, "[]"

    if-nez v2, :cond_0

    move-object v2, v3

    goto :goto_0

    :cond_0
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lorg/mortbay/jetty/servlet/FilterMapping;->e:[Ljava/lang/String;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget p0, p0, Lorg/mortbay/jetty/servlet/FilterMapping;->a:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
