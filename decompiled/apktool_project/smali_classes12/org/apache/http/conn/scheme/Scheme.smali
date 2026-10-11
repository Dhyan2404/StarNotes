.class public final Lorg/apache/http/conn/scheme/Scheme;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation

.annotation build Lorg/apache/http/annotation/Contract;
    threading = .enum Lorg/apache/http/annotation/ThreadingBehavior;->IMMUTABLE:Lorg/apache/http/annotation/ThreadingBehavior;
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lorg/apache/http/conn/scheme/SchemeSocketFactory;

.field public final c:I

.field public final d:Z

.field public e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILorg/apache/http/conn/scheme/SchemeSocketFactory;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Scheme name"

    .line 2
    invoke-static {p1, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-lez p2, :cond_0

    const v2, 0xffff

    if-gt p2, v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    const-string v3, "Port is invalid"

    .line 3
    invoke-static {v2, v3}, Lorg/apache/http/util/Args;->check(ZLjava/lang/String;)V

    const-string v2, "Socket factory"

    .line 4
    invoke-static {p3, v2}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/http/conn/scheme/Scheme;->a:Ljava/lang/String;

    .line 6
    iput p2, p0, Lorg/apache/http/conn/scheme/Scheme;->c:I

    .line 7
    instance-of p1, p3, Lorg/apache/http/conn/scheme/SchemeLayeredSocketFactory;

    if-eqz p1, :cond_1

    .line 8
    iput-boolean v1, p0, Lorg/apache/http/conn/scheme/Scheme;->d:Z

    .line 9
    iput-object p3, p0, Lorg/apache/http/conn/scheme/Scheme;->b:Lorg/apache/http/conn/scheme/SchemeSocketFactory;

    goto :goto_1

    .line 10
    :cond_1
    instance-of p1, p3, Lorg/apache/http/conn/scheme/LayeredSchemeSocketFactory;

    if-eqz p1, :cond_2

    .line 11
    iput-boolean v1, p0, Lorg/apache/http/conn/scheme/Scheme;->d:Z

    .line 12
    new-instance p1, Lcom/sunia/HTREnginev2/w5m;

    check-cast p3, Lorg/apache/http/conn/scheme/LayeredSchemeSocketFactory;

    invoke-direct {p1, p3}, Lcom/sunia/HTREnginev2/w5m;-><init>(Lorg/apache/http/conn/scheme/LayeredSchemeSocketFactory;)V

    iput-object p1, p0, Lorg/apache/http/conn/scheme/Scheme;->b:Lorg/apache/http/conn/scheme/SchemeSocketFactory;

    goto :goto_1

    .line 13
    :cond_2
    iput-boolean v0, p0, Lorg/apache/http/conn/scheme/Scheme;->d:Z

    .line 14
    iput-object p3, p0, Lorg/apache/http/conn/scheme/Scheme;->b:Lorg/apache/http/conn/scheme/SchemeSocketFactory;

    :goto_1
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Scheme name"

    .line 16
    invoke-static {p1, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Socket factory"

    .line 17
    invoke-static {p2, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-lez p3, :cond_0

    const v2, 0xffff

    if-gt p3, v2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    const-string v3, "Port is invalid"

    .line 18
    invoke-static {v2, v3}, Lorg/apache/http/util/Args;->check(ZLjava/lang/String;)V

    .line 19
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/http/conn/scheme/Scheme;->a:Ljava/lang/String;

    .line 20
    instance-of p1, p2, Lorg/apache/http/conn/scheme/LayeredSocketFactory;

    if-eqz p1, :cond_1

    .line 21
    new-instance p1, Lcom/sunia/HTREnginev2/x5m;

    check-cast p2, Lorg/apache/http/conn/scheme/LayeredSocketFactory;

    invoke-direct {p1, p2}, Lcom/sunia/HTREnginev2/x5m;-><init>(Lorg/apache/http/conn/scheme/LayeredSocketFactory;)V

    iput-object p1, p0, Lorg/apache/http/conn/scheme/Scheme;->b:Lorg/apache/http/conn/scheme/SchemeSocketFactory;

    .line 22
    iput-boolean v0, p0, Lorg/apache/http/conn/scheme/Scheme;->d:Z

    goto :goto_1

    .line 23
    :cond_1
    new-instance p1, Lcom/sunia/HTREnginev2/y5m;

    invoke-direct {p1, p2}, Lcom/sunia/HTREnginev2/y5m;-><init>(Lorg/apache/http/conn/scheme/SocketFactory;)V

    iput-object p1, p0, Lorg/apache/http/conn/scheme/Scheme;->b:Lorg/apache/http/conn/scheme/SchemeSocketFactory;

    .line 24
    iput-boolean v1, p0, Lorg/apache/http/conn/scheme/Scheme;->d:Z

    .line 25
    :goto_1
    iput p3, p0, Lorg/apache/http/conn/scheme/Scheme;->c:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/apache/http/conn/scheme/Scheme;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    check-cast p1, Lorg/apache/http/conn/scheme/Scheme;

    iget-object v1, p0, Lorg/apache/http/conn/scheme/Scheme;->a:Ljava/lang/String;

    iget-object v3, p1, Lorg/apache/http/conn/scheme/Scheme;->a:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lorg/apache/http/conn/scheme/Scheme;->c:I

    iget v3, p1, Lorg/apache/http/conn/scheme/Scheme;->c:I

    if-ne v1, v3, :cond_1

    iget-boolean p0, p0, Lorg/apache/http/conn/scheme/Scheme;->d:Z

    iget-boolean p1, p1, Lorg/apache/http/conn/scheme/Scheme;->d:Z

    if-ne p0, p1, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method public final getDefaultPort()I
    .locals 0

    iget p0, p0, Lorg/apache/http/conn/scheme/Scheme;->c:I

    return p0
.end method

.method public final getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/http/conn/scheme/Scheme;->a:Ljava/lang/String;

    return-object p0
.end method

.method public final getSchemeSocketFactory()Lorg/apache/http/conn/scheme/SchemeSocketFactory;
    .locals 0

    iget-object p0, p0, Lorg/apache/http/conn/scheme/Scheme;->b:Lorg/apache/http/conn/scheme/SchemeSocketFactory;

    return-object p0
.end method

.method public final getSocketFactory()Lorg/apache/http/conn/scheme/SocketFactory;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lorg/apache/http/conn/scheme/Scheme;->b:Lorg/apache/http/conn/scheme/SchemeSocketFactory;

    instance-of v1, v0, Lcom/sunia/HTREnginev2/y5m;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/sunia/HTREnginev2/y5m;

    invoke-virtual {v0}, Lcom/sunia/HTREnginev2/y5m;->a()Lorg/apache/http/conn/scheme/SocketFactory;

    move-result-object p0

    return-object p0

    :cond_0
    iget-boolean p0, p0, Lorg/apache/http/conn/scheme/Scheme;->d:Z

    if-eqz p0, :cond_1

    new-instance p0, Lcom/sunia/HTREnginev2/nwi;

    check-cast v0, Lorg/apache/http/conn/scheme/LayeredSchemeSocketFactory;

    invoke-direct {p0, v0}, Lcom/sunia/HTREnginev2/nwi;-><init>(Lorg/apache/http/conn/scheme/LayeredSchemeSocketFactory;)V

    goto :goto_0

    :cond_1
    new-instance p0, Lcom/sunia/HTREnginev2/fvm;

    invoke-direct {p0, v0}, Lcom/sunia/HTREnginev2/fvm;-><init>(Lorg/apache/http/conn/scheme/SchemeSocketFactory;)V

    :goto_0
    return-object p0
.end method

.method public hashCode()I
    .locals 2

    const/16 v0, 0x11

    iget v1, p0, Lorg/apache/http/conn/scheme/Scheme;->c:I

    invoke-static {v0, v1}, Lorg/apache/http/util/LangUtils;->hashCode(II)I

    move-result v0

    iget-object v1, p0, Lorg/apache/http/conn/scheme/Scheme;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/http/util/LangUtils;->hashCode(ILjava/lang/Object;)I

    move-result v0

    iget-boolean p0, p0, Lorg/apache/http/conn/scheme/Scheme;->d:Z

    invoke-static {v0, p0}, Lorg/apache/http/util/LangUtils;->hashCode(IZ)I

    move-result p0

    return p0
.end method

.method public final isLayered()Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/http/conn/scheme/Scheme;->d:Z

    return p0
.end method

.method public final resolvePort(I)I
    .locals 0

    if-gtz p1, :cond_0

    iget p1, p0, Lorg/apache/http/conn/scheme/Scheme;->c:I

    :cond_0
    return p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/apache/http/conn/scheme/Scheme;->e:Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/apache/http/conn/scheme/Scheme;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/http/conn/scheme/Scheme;->c:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/conn/scheme/Scheme;->e:Ljava/lang/String;

    :cond_0
    iget-object p0, p0, Lorg/apache/http/conn/scheme/Scheme;->e:Ljava/lang/String;

    return-object p0
.end method
