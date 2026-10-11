.class public final Lorg/apache/xerces/impl/dv/xs/AbstractDateTimeDV$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xerces/xs/datatypes/XSDateTime;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xerces/impl/dv/xs/AbstractDateTimeDV;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:D

.field public h:I

.field public i:I

.field public j:Ljava/lang/String;

.field public k:Z

.field public l:I

.field public m:I

.field public n:I

.field public o:I

.field public p:I

.field public q:D

.field public r:I

.field public final s:Lorg/apache/xerces/impl/dv/xs/AbstractDateTimeDV;

.field public t:Ljava/lang/String;


# direct methods
.method public constructor <init>(IIIIIDILjava/lang/String;ZLorg/apache/xerces/impl/dv/xs/AbstractDateTimeDV;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p10, 0x1

    iput-boolean p10, p0, Lorg/apache/xerces/impl/dv/xs/AbstractDateTimeDV$a;->k:Z

    iput p1, p0, Lorg/apache/xerces/impl/dv/xs/AbstractDateTimeDV$a;->a:I

    iput p2, p0, Lorg/apache/xerces/impl/dv/xs/AbstractDateTimeDV$a;->b:I

    iput p3, p0, Lorg/apache/xerces/impl/dv/xs/AbstractDateTimeDV$a;->c:I

    iput p4, p0, Lorg/apache/xerces/impl/dv/xs/AbstractDateTimeDV$a;->d:I

    iput p5, p0, Lorg/apache/xerces/impl/dv/xs/AbstractDateTimeDV$a;->e:I

    iput-wide p6, p0, Lorg/apache/xerces/impl/dv/xs/AbstractDateTimeDV$a;->g:D

    iput p8, p0, Lorg/apache/xerces/impl/dv/xs/AbstractDateTimeDV$a;->f:I

    iput-object p11, p0, Lorg/apache/xerces/impl/dv/xs/AbstractDateTimeDV$a;->s:Lorg/apache/xerces/impl/dv/xs/AbstractDateTimeDV;

    iput-object p9, p0, Lorg/apache/xerces/impl/dv/xs/AbstractDateTimeDV$a;->j:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/apache/xerces/impl/dv/xs/AbstractDateTimeDV;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/xerces/impl/dv/xs/AbstractDateTimeDV$a;->k:Z

    iput-object p1, p0, Lorg/apache/xerces/impl/dv/xs/AbstractDateTimeDV$a;->j:Ljava/lang/String;

    iput-object p2, p0, Lorg/apache/xerces/impl/dv/xs/AbstractDateTimeDV$a;->s:Lorg/apache/xerces/impl/dv/xs/AbstractDateTimeDV;

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 13

    new-instance v12, Lorg/apache/xerces/impl/dv/xs/AbstractDateTimeDV$a;

    iget v1, p0, Lorg/apache/xerces/impl/dv/xs/AbstractDateTimeDV$a;->a:I

    iget v2, p0, Lorg/apache/xerces/impl/dv/xs/AbstractDateTimeDV$a;->b:I

    iget v3, p0, Lorg/apache/xerces/impl/dv/xs/AbstractDateTimeDV$a;->c:I

    iget v4, p0, Lorg/apache/xerces/impl/dv/xs/AbstractDateTimeDV$a;->d:I

    iget v5, p0, Lorg/apache/xerces/impl/dv/xs/AbstractDateTimeDV$a;->e:I

    iget-wide v6, p0, Lorg/apache/xerces/impl/dv/xs/AbstractDateTimeDV$a;->g:D

    iget v8, p0, Lorg/apache/xerces/impl/dv/xs/AbstractDateTimeDV$a;->f:I

    iget-object v9, p0, Lorg/apache/xerces/impl/dv/xs/AbstractDateTimeDV$a;->j:Ljava/lang/String;

    iget-boolean v10, p0, Lorg/apache/xerces/impl/dv/xs/AbstractDateTimeDV$a;->k:Z

    iget-object v11, p0, Lorg/apache/xerces/impl/dv/xs/AbstractDateTimeDV$a;->s:Lorg/apache/xerces/impl/dv/xs/AbstractDateTimeDV;

    move-object v0, v12

    invoke-direct/range {v0 .. v11}, Lorg/apache/xerces/impl/dv/xs/AbstractDateTimeDV$a;-><init>(IIIIIDILjava/lang/String;ZLorg/apache/xerces/impl/dv/xs/AbstractDateTimeDV;)V

    iget-object v0, p0, Lorg/apache/xerces/impl/dv/xs/AbstractDateTimeDV$a;->t:Ljava/lang/String;

    iput-object v0, v12, Lorg/apache/xerces/impl/dv/xs/AbstractDateTimeDV$a;->t:Ljava/lang/String;

    iget v0, p0, Lorg/apache/xerces/impl/dv/xs/AbstractDateTimeDV$a;->r:I

    iput v0, v12, Lorg/apache/xerces/impl/dv/xs/AbstractDateTimeDV$a;->r:I

    iget v0, p0, Lorg/apache/xerces/impl/dv/xs/AbstractDateTimeDV$a;->h:I

    iput v0, v12, Lorg/apache/xerces/impl/dv/xs/AbstractDateTimeDV$a;->h:I

    iget v0, p0, Lorg/apache/xerces/impl/dv/xs/AbstractDateTimeDV$a;->i:I

    iput v0, v12, Lorg/apache/xerces/impl/dv/xs/AbstractDateTimeDV$a;->i:I

    iget v0, p0, Lorg/apache/xerces/impl/dv/xs/AbstractDateTimeDV$a;->l:I

    iput v0, v12, Lorg/apache/xerces/impl/dv/xs/AbstractDateTimeDV$a;->l:I

    iget v0, p0, Lorg/apache/xerces/impl/dv/xs/AbstractDateTimeDV$a;->m:I

    iput v0, v12, Lorg/apache/xerces/impl/dv/xs/AbstractDateTimeDV$a;->m:I

    iget v0, p0, Lorg/apache/xerces/impl/dv/xs/AbstractDateTimeDV$a;->n:I

    iput v0, v12, Lorg/apache/xerces/impl/dv/xs/AbstractDateTimeDV$a;->n:I

    iget v0, p0, Lorg/apache/xerces/impl/dv/xs/AbstractDateTimeDV$a;->o:I

    iput v0, v12, Lorg/apache/xerces/impl/dv/xs/AbstractDateTimeDV$a;->o:I

    iget v0, p0, Lorg/apache/xerces/impl/dv/xs/AbstractDateTimeDV$a;->p:I

    iput v0, v12, Lorg/apache/xerces/impl/dv/xs/AbstractDateTimeDV$a;->p:I

    iget-wide v0, p0, Lorg/apache/xerces/impl/dv/xs/AbstractDateTimeDV$a;->q:D

    iput-wide v0, v12, Lorg/apache/xerces/impl/dv/xs/AbstractDateTimeDV$a;->q:D

    return-object v12
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lorg/apache/xerces/impl/dv/xs/AbstractDateTimeDV$a;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lorg/apache/xerces/impl/dv/xs/AbstractDateTimeDV$a;->s:Lorg/apache/xerces/impl/dv/xs/AbstractDateTimeDV;

    check-cast p1, Lorg/apache/xerces/impl/dv/xs/AbstractDateTimeDV$a;

    const/4 v2, 0x1

    invoke-virtual {v0, p0, p1, v2}, Lorg/apache/xerces/impl/dv/xs/AbstractDateTimeDV;->compareDates(Lorg/apache/xerces/impl/dv/xs/AbstractDateTimeDV$a;Lorg/apache/xerces/impl/dv/xs/AbstractDateTimeDV$a;Z)S

    move-result p0

    if-nez p0, :cond_1

    move v1, v2

    :cond_1
    return v1
.end method

.method public getDays()I
    .locals 1

    iget-object v0, p0, Lorg/apache/xerces/impl/dv/xs/AbstractDateTimeDV$a;->s:Lorg/apache/xerces/impl/dv/xs/AbstractDateTimeDV;

    instance-of v0, v0, Lorg/apache/xerces/impl/dv/xs/DurationDV;

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-boolean v0, p0, Lorg/apache/xerces/impl/dv/xs/AbstractDateTimeDV$a;->k:Z

    if-eqz v0, :cond_1

    iget p0, p0, Lorg/apache/xerces/impl/dv/xs/AbstractDateTimeDV$a;->c:I

    goto :goto_0

    :cond_1
    iget p0, p0, Lorg/apache/xerces/impl/dv/xs/AbstractDateTimeDV$a;->n:I

    :goto_0
    return p0
.end method

.method public getDuration()Ljavax/xml/datatype/Duration;
    .locals 1

    iget-object v0, p0, Lorg/apache/xerces/impl/dv/xs/AbstractDateTimeDV$a;->s:Lorg/apache/xerces/impl/dv/xs/AbstractDateTimeDV;

    invoke-virtual {v0, p0}, Lorg/apache/xerces/impl/dv/xs/AbstractDateTimeDV;->getDuration(Lorg/apache/xerces/impl/dv/xs/AbstractDateTimeDV$a;)Ljavax/xml/datatype/Duration;

    move-result-object p0

    return-object p0
.end method

.method public getHours()I
    .locals 1

    iget-object v0, p0, Lorg/apache/xerces/impl/dv/xs/AbstractDateTimeDV$a;->s:Lorg/apache/xerces/impl/dv/xs/AbstractDateTimeDV;

    instance-of v0, v0, Lorg/apache/xerces/impl/dv/xs/DurationDV;

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-boolean v0, p0, Lorg/apache/xerces/impl/dv/xs/AbstractDateTimeDV$a;->k:Z

    if-eqz v0, :cond_1

    iget p0, p0, Lorg/apache/xerces/impl/dv/xs/AbstractDateTimeDV$a;->d:I

    goto :goto_0

    :cond_1
    iget p0, p0, Lorg/apache/xerces/impl/dv/xs/AbstractDateTimeDV$a;->o:I

    :goto_0
    return p0
.end method

.method public getLexicalValue()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/impl/dv/xs/AbstractDateTimeDV$a;->j:Ljava/lang/String;

    return-object p0
.end method

.method public getMinutes()I
    .locals 1

    iget-object v0, p0, Lorg/apache/xerces/impl/dv/xs/AbstractDateTimeDV$a;->s:Lorg/apache/xerces/impl/dv/xs/AbstractDateTimeDV;

    instance-of v0, v0, Lorg/apache/xerces/impl/dv/xs/DurationDV;

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-boolean v0, p0, Lorg/apache/xerces/impl/dv/xs/AbstractDateTimeDV$a;->k:Z

    if-eqz v0, :cond_1

    iget p0, p0, Lorg/apache/xerces/impl/dv/xs/AbstractDateTimeDV$a;->e:I

    goto :goto_0

    :cond_1
    iget p0, p0, Lorg/apache/xerces/impl/dv/xs/AbstractDateTimeDV$a;->p:I

    :goto_0
    return p0
.end method

.method public getMonths()I
    .locals 1

    iget-object v0, p0, Lorg/apache/xerces/impl/dv/xs/AbstractDateTimeDV$a;->s:Lorg/apache/xerces/impl/dv/xs/AbstractDateTimeDV;

    instance-of v0, v0, Lorg/apache/xerces/impl/dv/xs/DurationDV;

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/apache/xerces/impl/dv/xs/AbstractDateTimeDV$a;->a:I

    mul-int/lit8 v0, v0, 0xc

    iget p0, p0, Lorg/apache/xerces/impl/dv/xs/AbstractDateTimeDV$a;->b:I

    add-int/2addr v0, p0

    return v0

    :cond_0
    iget-boolean v0, p0, Lorg/apache/xerces/impl/dv/xs/AbstractDateTimeDV$a;->k:Z

    if-eqz v0, :cond_1

    iget p0, p0, Lorg/apache/xerces/impl/dv/xs/AbstractDateTimeDV$a;->b:I

    goto :goto_0

    :cond_1
    iget p0, p0, Lorg/apache/xerces/impl/dv/xs/AbstractDateTimeDV$a;->m:I

    :goto_0
    return p0
.end method

.method public getSeconds()D
    .locals 4

    iget-object v0, p0, Lorg/apache/xerces/impl/dv/xs/AbstractDateTimeDV$a;->s:Lorg/apache/xerces/impl/dv/xs/AbstractDateTimeDV;

    instance-of v0, v0, Lorg/apache/xerces/impl/dv/xs/DurationDV;

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/apache/xerces/impl/dv/xs/AbstractDateTimeDV$a;->c:I

    mul-int/lit8 v0, v0, 0x18

    mul-int/lit8 v0, v0, 0x3c

    mul-int/lit8 v0, v0, 0x3c

    iget v1, p0, Lorg/apache/xerces/impl/dv/xs/AbstractDateTimeDV$a;->d:I

    mul-int/lit8 v1, v1, 0x3c

    mul-int/lit8 v1, v1, 0x3c

    add-int/2addr v0, v1

    iget v1, p0, Lorg/apache/xerces/impl/dv/xs/AbstractDateTimeDV$a;->e:I

    mul-int/lit8 v1, v1, 0x3c

    add-int/2addr v0, v1

    int-to-double v0, v0

    iget-wide v2, p0, Lorg/apache/xerces/impl/dv/xs/AbstractDateTimeDV$a;->g:D

    add-double/2addr v0, v2

    return-wide v0

    :cond_0
    iget-boolean v0, p0, Lorg/apache/xerces/impl/dv/xs/AbstractDateTimeDV$a;->k:Z

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lorg/apache/xerces/impl/dv/xs/AbstractDateTimeDV$a;->g:D

    goto :goto_0

    :cond_1
    iget-wide v0, p0, Lorg/apache/xerces/impl/dv/xs/AbstractDateTimeDV$a;->q:D

    :goto_0
    return-wide v0
.end method

.method public getTimeZoneHours()I
    .locals 0

    iget p0, p0, Lorg/apache/xerces/impl/dv/xs/AbstractDateTimeDV$a;->h:I

    return p0
.end method

.method public getTimeZoneMinutes()I
    .locals 0

    iget p0, p0, Lorg/apache/xerces/impl/dv/xs/AbstractDateTimeDV$a;->i:I

    return p0
.end method

.method public getXMLGregorianCalendar()Ljavax/xml/datatype/XMLGregorianCalendar;
    .locals 1

    iget-object v0, p0, Lorg/apache/xerces/impl/dv/xs/AbstractDateTimeDV$a;->s:Lorg/apache/xerces/impl/dv/xs/AbstractDateTimeDV;

    invoke-virtual {v0, p0}, Lorg/apache/xerces/impl/dv/xs/AbstractDateTimeDV;->getXMLGregorianCalendar(Lorg/apache/xerces/impl/dv/xs/AbstractDateTimeDV$a;)Ljavax/xml/datatype/XMLGregorianCalendar;

    move-result-object p0

    return-object p0
.end method

.method public getYears()I
    .locals 1

    iget-object v0, p0, Lorg/apache/xerces/impl/dv/xs/AbstractDateTimeDV$a;->s:Lorg/apache/xerces/impl/dv/xs/AbstractDateTimeDV;

    instance-of v0, v0, Lorg/apache/xerces/impl/dv/xs/DurationDV;

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-boolean v0, p0, Lorg/apache/xerces/impl/dv/xs/AbstractDateTimeDV$a;->k:Z

    if-eqz v0, :cond_1

    iget p0, p0, Lorg/apache/xerces/impl/dv/xs/AbstractDateTimeDV$a;->a:I

    goto :goto_0

    :cond_1
    iget p0, p0, Lorg/apache/xerces/impl/dv/xs/AbstractDateTimeDV$a;->l:I

    :goto_0
    return p0
.end method

.method public hasTimeZone()Z
    .locals 0

    iget p0, p0, Lorg/apache/xerces/impl/dv/xs/AbstractDateTimeDV$a;->f:I

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isNormalized()Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/xerces/impl/dv/xs/AbstractDateTimeDV$a;->k:Z

    return p0
.end method

.method public normalize()Lorg/apache/xerces/xs/datatypes/XSDateTime;
    .locals 1

    iget-boolean v0, p0, Lorg/apache/xerces/impl/dv/xs/AbstractDateTimeDV$a;->k:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/xerces/impl/dv/xs/AbstractDateTimeDV$a;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/xerces/impl/dv/xs/AbstractDateTimeDV$a;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/xerces/impl/dv/xs/AbstractDateTimeDV$a;->k:Z

    :cond_0
    return-object p0
.end method

.method public declared-synchronized toString()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/xerces/impl/dv/xs/AbstractDateTimeDV$a;->t:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/xerces/impl/dv/xs/AbstractDateTimeDV$a;->s:Lorg/apache/xerces/impl/dv/xs/AbstractDateTimeDV;

    invoke-virtual {v0, p0}, Lorg/apache/xerces/impl/dv/xs/AbstractDateTimeDV;->dateToString(Lorg/apache/xerces/impl/dv/xs/AbstractDateTimeDV$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xerces/impl/dv/xs/AbstractDateTimeDV$a;->t:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lorg/apache/xerces/impl/dv/xs/AbstractDateTimeDV$a;->t:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
