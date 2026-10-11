.class public final Lcom/alibaba/fastjson2/JSONWriter$Context;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson2/JSONWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Context"
.end annotation


# instance fields
.field public a:Ljava/time/format/DateTimeFormatter;

.field public b:Ljava/lang/String;

.field public c:Ljava/util/Locale;

.field public d:Ljava/util/TimeZone;

.field public e:Z

.field public f:Z

.field public g:Z

.field public h:Z

.field public i:Z

.field public j:Z

.field public k:J

.field public l:Ljava/time/ZoneId;

.field public m:Z

.field public n:Lcom/alibaba/fastjson2/filter/PropertyPreFilter;

.field public o:Lcom/alibaba/fastjson2/filter/PropertyFilter;

.field public p:Lcom/alibaba/fastjson2/filter/NameFilter;

.field public final provider:Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;

.field public q:Lcom/alibaba/fastjson2/filter/ValueFilter;

.field public r:Lcom/alibaba/fastjson2/filter/BeforeFilter;

.field public s:Lcom/alibaba/fastjson2/filter/AfterFilter;

.field public t:Lcom/alibaba/fastjson2/filter/LabelFilter;

.field public u:Lcom/alibaba/fastjson2/filter/ContextValueFilter;

.field public v:Lcom/alibaba/fastjson2/filter/ContextNameFilter;


# direct methods
.method public constructor <init>(Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    .line 2
    sget-wide v0, Lcom/alibaba/fastjson2/JSONFactory;->d:J

    iput-wide v0, p0, Lcom/alibaba/fastjson2/JSONWriter$Context;->k:J

    .line 3
    iput-object p1, p0, Lcom/alibaba/fastjson2/JSONWriter$Context;->provider:Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;

    .line 4
    sget-object p1, Lcom/alibaba/fastjson2/JSONFactory;->f:Ljava/time/ZoneId;

    iput-object p1, p0, Lcom/alibaba/fastjson2/JSONWriter$Context;->l:Ljava/time/ZoneId;

    .line 5
    sget-object p1, Lcom/alibaba/fastjson2/JSONFactory;->e:Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 6
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONWriter$Context;->setDateFormat(Ljava/lang/String;)V

    :cond_0
    return-void

    .line 7
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "objectWriterProvider must not null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public varargs constructor <init>(Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;Ljava/lang/String;Lcom/alibaba/fastjson2/filter/Filter;[Lcom/alibaba/fastjson2/JSONWriter$Feature;)V
    .locals 5

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    sget-wide v0, Lcom/alibaba/fastjson2/JSONFactory;->d:J

    iput-wide v0, p0, Lcom/alibaba/fastjson2/JSONWriter$Context;->k:J

    .line 26
    iput-object p1, p0, Lcom/alibaba/fastjson2/JSONWriter$Context;->provider:Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;

    .line 27
    sget-object p1, Lcom/alibaba/fastjson2/JSONFactory;->f:Ljava/time/ZoneId;

    iput-object p1, p0, Lcom/alibaba/fastjson2/JSONWriter$Context;->l:Ljava/time/ZoneId;

    const/4 p1, 0x0

    move v0, p1

    .line 28
    :goto_0
    array-length v1, p4

    if-ge v0, v1, :cond_0

    .line 29
    iget-wide v1, p0, Lcom/alibaba/fastjson2/JSONWriter$Context;->k:J

    aget-object v3, p4, v0

    iget-wide v3, v3, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    or-long/2addr v1, v3

    iput-wide v1, p0, Lcom/alibaba/fastjson2/JSONWriter$Context;->k:J

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 p4, 0x1

    new-array p4, p4, [Lcom/alibaba/fastjson2/filter/Filter;

    aput-object p3, p4, p1

    .line 30
    invoke-virtual {p0, p4}, Lcom/alibaba/fastjson2/JSONWriter$Context;->configFilter([Lcom/alibaba/fastjson2/filter/Filter;)V

    if-nez p2, :cond_1

    .line 31
    sget-object p2, Lcom/alibaba/fastjson2/JSONFactory;->e:Ljava/lang/String;

    :cond_1
    if-eqz p2, :cond_2

    .line 32
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson2/JSONWriter$Context;->setDateFormat(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public varargs constructor <init>(Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;[Lcom/alibaba/fastjson2/JSONWriter$Feature;)V
    .locals 4

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_2

    .line 34
    sget-wide v0, Lcom/alibaba/fastjson2/JSONFactory;->d:J

    iput-wide v0, p0, Lcom/alibaba/fastjson2/JSONWriter$Context;->k:J

    .line 35
    iput-object p1, p0, Lcom/alibaba/fastjson2/JSONWriter$Context;->provider:Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;

    .line 36
    sget-object p1, Lcom/alibaba/fastjson2/JSONFactory;->f:Ljava/time/ZoneId;

    iput-object p1, p0, Lcom/alibaba/fastjson2/JSONWriter$Context;->l:Ljava/time/ZoneId;

    const/4 p1, 0x0

    .line 37
    :goto_0
    array-length v0, p2

    if-ge p1, v0, :cond_0

    .line 38
    iget-wide v0, p0, Lcom/alibaba/fastjson2/JSONWriter$Context;->k:J

    aget-object v2, p2, p1

    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/alibaba/fastjson2/JSONWriter$Context;->k:J

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 39
    :cond_0
    sget-object p1, Lcom/alibaba/fastjson2/JSONFactory;->e:Ljava/lang/String;

    if-eqz p1, :cond_1

    .line 40
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONWriter$Context;->setDateFormat(Ljava/lang/String;)V

    :cond_1
    return-void

    .line 41
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "objectWriterProvider must not null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public varargs constructor <init>(Ljava/lang/String;[Lcom/alibaba/fastjson2/JSONWriter$Feature;)V
    .locals 5

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    sget-wide v0, Lcom/alibaba/fastjson2/JSONFactory;->d:J

    iput-wide v0, p0, Lcom/alibaba/fastjson2/JSONWriter$Context;->k:J

    .line 18
    sget-object v0, Lcom/alibaba/fastjson2/JSONFactory;->defaultObjectWriterProvider:Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;

    iput-object v0, p0, Lcom/alibaba/fastjson2/JSONWriter$Context;->provider:Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;

    .line 19
    sget-object v0, Lcom/alibaba/fastjson2/JSONFactory;->f:Ljava/time/ZoneId;

    iput-object v0, p0, Lcom/alibaba/fastjson2/JSONWriter$Context;->l:Ljava/time/ZoneId;

    const/4 v0, 0x0

    .line 20
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    .line 21
    iget-wide v1, p0, Lcom/alibaba/fastjson2/JSONWriter$Context;->k:J

    aget-object v3, p2, v0

    iget-wide v3, v3, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    or-long/2addr v1, v3

    iput-wide v1, p0, Lcom/alibaba/fastjson2/JSONWriter$Context;->k:J

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    .line 22
    sget-object p1, Lcom/alibaba/fastjson2/JSONFactory;->e:Ljava/lang/String;

    :cond_1
    if-eqz p1, :cond_2

    .line 23
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONWriter$Context;->setDateFormat(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public varargs constructor <init>([Lcom/alibaba/fastjson2/JSONWriter$Feature;)V
    .locals 5

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    sget-wide v0, Lcom/alibaba/fastjson2/JSONFactory;->d:J

    iput-wide v0, p0, Lcom/alibaba/fastjson2/JSONWriter$Context;->k:J

    .line 10
    sget-object v0, Lcom/alibaba/fastjson2/JSONFactory;->defaultObjectWriterProvider:Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;

    iput-object v0, p0, Lcom/alibaba/fastjson2/JSONWriter$Context;->provider:Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;

    .line 11
    sget-object v0, Lcom/alibaba/fastjson2/JSONFactory;->f:Ljava/time/ZoneId;

    iput-object v0, p0, Lcom/alibaba/fastjson2/JSONWriter$Context;->l:Ljava/time/ZoneId;

    .line 12
    sget-object v0, Lcom/alibaba/fastjson2/JSONFactory;->e:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 13
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONWriter$Context;->setDateFormat(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 15
    iget-wide v1, p0, Lcom/alibaba/fastjson2/JSONWriter$Context;->k:J

    aget-object v3, p1, v0

    iget-wide v3, v3, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    or-long/2addr v1, v3

    iput-wide v1, p0, Lcom/alibaba/fastjson2/JSONWriter$Context;->k:J

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public config(Lcom/alibaba/fastjson2/JSONWriter$Feature;Z)V
    .locals 2

    if-eqz p2, :cond_0

    .line 3
    iget-wide v0, p0, Lcom/alibaba/fastjson2/JSONWriter$Context;->k:J

    iget-wide p1, p1, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/alibaba/fastjson2/JSONWriter$Context;->k:J

    goto :goto_0

    .line 4
    :cond_0
    iget-wide v0, p0, Lcom/alibaba/fastjson2/JSONWriter$Context;->k:J

    iget-wide p1, p1, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    not-long p1, p1

    and-long/2addr p1, v0

    iput-wide p1, p0, Lcom/alibaba/fastjson2/JSONWriter$Context;->k:J

    :goto_0
    return-void
.end method

.method public varargs config([Lcom/alibaba/fastjson2/JSONWriter$Feature;)V
    .locals 5

    const/4 v0, 0x0

    .line 1
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 2
    iget-wide v1, p0, Lcom/alibaba/fastjson2/JSONWriter$Context;->k:J

    aget-object v3, p1, v0

    iget-wide v3, v3, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    or-long/2addr v1, v3

    iput-wide v1, p0, Lcom/alibaba/fastjson2/JSONWriter$Context;->k:J

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public varargs configFilter([Lcom/alibaba/fastjson2/filter/Filter;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_c

    aget-object v2, p1, v1

    instance-of v3, v2, Lcom/alibaba/fastjson2/filter/NameFilter;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/alibaba/fastjson2/JSONWriter$Context;->p:Lcom/alibaba/fastjson2/filter/NameFilter;

    if-nez v3, :cond_1

    move-object v3, v2

    check-cast v3, Lcom/alibaba/fastjson2/filter/NameFilter;

    iput-object v3, p0, Lcom/alibaba/fastjson2/JSONWriter$Context;->p:Lcom/alibaba/fastjson2/filter/NameFilter;

    goto :goto_1

    :cond_1
    move-object v4, v2

    check-cast v4, Lcom/alibaba/fastjson2/filter/NameFilter;

    invoke-static {v3, v4}, Lcom/alibaba/fastjson2/filter/NameFilter;->compose(Lcom/alibaba/fastjson2/filter/NameFilter;Lcom/alibaba/fastjson2/filter/NameFilter;)Lcom/alibaba/fastjson2/filter/NameFilter;

    move-result-object v3

    iput-object v3, p0, Lcom/alibaba/fastjson2/JSONWriter$Context;->p:Lcom/alibaba/fastjson2/filter/NameFilter;

    :cond_2
    :goto_1
    instance-of v3, v2, Lcom/alibaba/fastjson2/filter/ValueFilter;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/alibaba/fastjson2/JSONWriter$Context;->q:Lcom/alibaba/fastjson2/filter/ValueFilter;

    if-nez v3, :cond_3

    move-object v3, v2

    check-cast v3, Lcom/alibaba/fastjson2/filter/ValueFilter;

    iput-object v3, p0, Lcom/alibaba/fastjson2/JSONWriter$Context;->q:Lcom/alibaba/fastjson2/filter/ValueFilter;

    goto :goto_2

    :cond_3
    move-object v4, v2

    check-cast v4, Lcom/alibaba/fastjson2/filter/ValueFilter;

    invoke-static {v3, v4}, Lcom/alibaba/fastjson2/filter/ValueFilter;->compose(Lcom/alibaba/fastjson2/filter/ValueFilter;Lcom/alibaba/fastjson2/filter/ValueFilter;)Lcom/alibaba/fastjson2/filter/ValueFilter;

    move-result-object v3

    iput-object v3, p0, Lcom/alibaba/fastjson2/JSONWriter$Context;->q:Lcom/alibaba/fastjson2/filter/ValueFilter;

    :cond_4
    :goto_2
    instance-of v3, v2, Lcom/alibaba/fastjson2/filter/PropertyFilter;

    if-eqz v3, :cond_5

    move-object v3, v2

    check-cast v3, Lcom/alibaba/fastjson2/filter/PropertyFilter;

    iput-object v3, p0, Lcom/alibaba/fastjson2/JSONWriter$Context;->o:Lcom/alibaba/fastjson2/filter/PropertyFilter;

    :cond_5
    instance-of v3, v2, Lcom/alibaba/fastjson2/filter/PropertyPreFilter;

    if-eqz v3, :cond_6

    move-object v3, v2

    check-cast v3, Lcom/alibaba/fastjson2/filter/PropertyPreFilter;

    iput-object v3, p0, Lcom/alibaba/fastjson2/JSONWriter$Context;->n:Lcom/alibaba/fastjson2/filter/PropertyPreFilter;

    :cond_6
    instance-of v3, v2, Lcom/alibaba/fastjson2/filter/BeforeFilter;

    if-eqz v3, :cond_7

    move-object v3, v2

    check-cast v3, Lcom/alibaba/fastjson2/filter/BeforeFilter;

    iput-object v3, p0, Lcom/alibaba/fastjson2/JSONWriter$Context;->r:Lcom/alibaba/fastjson2/filter/BeforeFilter;

    :cond_7
    instance-of v3, v2, Lcom/alibaba/fastjson2/filter/AfterFilter;

    if-eqz v3, :cond_8

    move-object v3, v2

    check-cast v3, Lcom/alibaba/fastjson2/filter/AfterFilter;

    iput-object v3, p0, Lcom/alibaba/fastjson2/JSONWriter$Context;->s:Lcom/alibaba/fastjson2/filter/AfterFilter;

    :cond_8
    instance-of v3, v2, Lcom/alibaba/fastjson2/filter/LabelFilter;

    if-eqz v3, :cond_9

    move-object v3, v2

    check-cast v3, Lcom/alibaba/fastjson2/filter/LabelFilter;

    iput-object v3, p0, Lcom/alibaba/fastjson2/JSONWriter$Context;->t:Lcom/alibaba/fastjson2/filter/LabelFilter;

    :cond_9
    instance-of v3, v2, Lcom/alibaba/fastjson2/filter/ContextValueFilter;

    if-eqz v3, :cond_a

    move-object v3, v2

    check-cast v3, Lcom/alibaba/fastjson2/filter/ContextValueFilter;

    iput-object v3, p0, Lcom/alibaba/fastjson2/JSONWriter$Context;->u:Lcom/alibaba/fastjson2/filter/ContextValueFilter;

    :cond_a
    instance-of v3, v2, Lcom/alibaba/fastjson2/filter/ContextNameFilter;

    if-eqz v3, :cond_b

    check-cast v2, Lcom/alibaba/fastjson2/filter/ContextNameFilter;

    iput-object v2, p0, Lcom/alibaba/fastjson2/JSONWriter$Context;->v:Lcom/alibaba/fastjson2/filter/ContextNameFilter;

    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_c
    iget-object p1, p0, Lcom/alibaba/fastjson2/JSONWriter$Context;->n:Lcom/alibaba/fastjson2/filter/PropertyPreFilter;

    if-nez p1, :cond_d

    iget-object p1, p0, Lcom/alibaba/fastjson2/JSONWriter$Context;->o:Lcom/alibaba/fastjson2/filter/PropertyFilter;

    if-nez p1, :cond_d

    iget-object p1, p0, Lcom/alibaba/fastjson2/JSONWriter$Context;->p:Lcom/alibaba/fastjson2/filter/NameFilter;

    if-nez p1, :cond_d

    iget-object p1, p0, Lcom/alibaba/fastjson2/JSONWriter$Context;->q:Lcom/alibaba/fastjson2/filter/ValueFilter;

    if-nez p1, :cond_d

    iget-object p1, p0, Lcom/alibaba/fastjson2/JSONWriter$Context;->r:Lcom/alibaba/fastjson2/filter/BeforeFilter;

    if-nez p1, :cond_d

    iget-object p1, p0, Lcom/alibaba/fastjson2/JSONWriter$Context;->s:Lcom/alibaba/fastjson2/filter/AfterFilter;

    if-nez p1, :cond_d

    iget-object p1, p0, Lcom/alibaba/fastjson2/JSONWriter$Context;->t:Lcom/alibaba/fastjson2/filter/LabelFilter;

    if-nez p1, :cond_d

    iget-object p1, p0, Lcom/alibaba/fastjson2/JSONWriter$Context;->u:Lcom/alibaba/fastjson2/filter/ContextValueFilter;

    if-nez p1, :cond_d

    iget-object p1, p0, Lcom/alibaba/fastjson2/JSONWriter$Context;->v:Lcom/alibaba/fastjson2/filter/ContextNameFilter;

    if-eqz p1, :cond_e

    :cond_d
    const/4 v0, 0x1

    :cond_e
    iput-boolean v0, p0, Lcom/alibaba/fastjson2/JSONWriter$Context;->m:Z

    return-void
.end method

.method public getAfterFilter()Lcom/alibaba/fastjson2/filter/AfterFilter;
    .locals 0

    iget-object p0, p0, Lcom/alibaba/fastjson2/JSONWriter$Context;->s:Lcom/alibaba/fastjson2/filter/AfterFilter;

    return-object p0
.end method

.method public getBeforeFilter()Lcom/alibaba/fastjson2/filter/BeforeFilter;
    .locals 0

    iget-object p0, p0, Lcom/alibaba/fastjson2/JSONWriter$Context;->r:Lcom/alibaba/fastjson2/filter/BeforeFilter;

    return-object p0
.end method

.method public getContextNameFilter()Lcom/alibaba/fastjson2/filter/ContextNameFilter;
    .locals 0

    iget-object p0, p0, Lcom/alibaba/fastjson2/JSONWriter$Context;->v:Lcom/alibaba/fastjson2/filter/ContextNameFilter;

    return-object p0
.end method

.method public getContextValueFilter()Lcom/alibaba/fastjson2/filter/ContextValueFilter;
    .locals 0

    iget-object p0, p0, Lcom/alibaba/fastjson2/JSONWriter$Context;->u:Lcom/alibaba/fastjson2/filter/ContextValueFilter;

    return-object p0
.end method

.method public getDateFormat()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/alibaba/fastjson2/JSONWriter$Context;->b:Ljava/lang/String;

    return-object p0
.end method

.method public getDateFormatter()Ljava/time/format/DateTimeFormatter;
    .locals 2

    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriter$Context;->a:Ljava/time/format/DateTimeFormatter;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriter$Context;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/alibaba/fastjson2/JSONWriter$Context;->e:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/alibaba/fastjson2/JSONWriter$Context;->f:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/alibaba/fastjson2/JSONWriter$Context;->g:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONWriter$Context;->c:Ljava/util/Locale;

    if-nez v1, :cond_0

    invoke-static {v0}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {v0, v1}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;Ljava/util/Locale;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/alibaba/fastjson2/JSONWriter$Context;->a:Ljava/time/format/DateTimeFormatter;

    :cond_1
    iget-object p0, p0, Lcom/alibaba/fastjson2/JSONWriter$Context;->a:Ljava/time/format/DateTimeFormatter;

    return-object p0
.end method

.method public getFeatures()J
    .locals 2

    iget-wide v0, p0, Lcom/alibaba/fastjson2/JSONWriter$Context;->k:J

    return-wide v0
.end method

.method public getLabelFilter()Lcom/alibaba/fastjson2/filter/LabelFilter;
    .locals 0

    iget-object p0, p0, Lcom/alibaba/fastjson2/JSONWriter$Context;->t:Lcom/alibaba/fastjson2/filter/LabelFilter;

    return-object p0
.end method

.method public getNameFilter()Lcom/alibaba/fastjson2/filter/NameFilter;
    .locals 0

    iget-object p0, p0, Lcom/alibaba/fastjson2/JSONWriter$Context;->p:Lcom/alibaba/fastjson2/filter/NameFilter;

    return-object p0
.end method

.method public getObjectWriter(Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriter;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/alibaba/fastjson2/writer/ObjectWriter<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Lcom/alibaba/fastjson2/JSONWriter$Context;->k:J

    sget-object v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->FieldBased:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object p0, p0, Lcom/alibaba/fastjson2/JSONWriter$Context;->provider:Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;

    invoke-virtual {p0, p1, p1, v0}, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->getObjectWriter(Ljava/lang/reflect/Type;Ljava/lang/Class;Z)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    move-result-object p0

    return-object p0
.end method

.method public getObjectWriter(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriter;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/alibaba/fastjson2/writer/ObjectWriter<",
            "TT;>;"
        }
    .end annotation

    .line 3
    iget-wide v0, p0, Lcom/alibaba/fastjson2/JSONWriter$Context;->k:J

    sget-object v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->FieldBased:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4
    :goto_0
    iget-object p0, p0, Lcom/alibaba/fastjson2/JSONWriter$Context;->provider:Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;

    invoke-virtual {p0, p1, p2, v0}, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->getObjectWriter(Ljava/lang/reflect/Type;Ljava/lang/Class;Z)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    move-result-object p0

    return-object p0
.end method

.method public getPropertyFilter()Lcom/alibaba/fastjson2/filter/PropertyFilter;
    .locals 0

    iget-object p0, p0, Lcom/alibaba/fastjson2/JSONWriter$Context;->o:Lcom/alibaba/fastjson2/filter/PropertyFilter;

    return-object p0
.end method

.method public getPropertyPreFilter()Lcom/alibaba/fastjson2/filter/PropertyPreFilter;
    .locals 0

    iget-object p0, p0, Lcom/alibaba/fastjson2/JSONWriter$Context;->n:Lcom/alibaba/fastjson2/filter/PropertyPreFilter;

    return-object p0
.end method

.method public getProvider()Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;
    .locals 0

    iget-object p0, p0, Lcom/alibaba/fastjson2/JSONWriter$Context;->provider:Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;

    return-object p0
.end method

.method public getValueFilter()Lcom/alibaba/fastjson2/filter/ValueFilter;
    .locals 0

    iget-object p0, p0, Lcom/alibaba/fastjson2/JSONWriter$Context;->q:Lcom/alibaba/fastjson2/filter/ValueFilter;

    return-object p0
.end method

.method public getZoneId()Ljava/time/ZoneId;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriter$Context;->l:Ljava/time/ZoneId;

    if-nez v0, :cond_0

    sget-object v0, Lcom/alibaba/fastjson2/util/DateUtils;->DEFAULT_ZONE_ID:Ljava/time/ZoneId;

    iput-object v0, p0, Lcom/alibaba/fastjson2/JSONWriter$Context;->l:Ljava/time/ZoneId;

    :cond_0
    iget-object p0, p0, Lcom/alibaba/fastjson2/JSONWriter$Context;->l:Ljava/time/ZoneId;

    return-object p0
.end method

.method public isDateFormatHasDay()Z
    .locals 0

    iget-boolean p0, p0, Lcom/alibaba/fastjson2/JSONWriter$Context;->i:Z

    return p0
.end method

.method public isDateFormatHasHour()Z
    .locals 0

    iget-boolean p0, p0, Lcom/alibaba/fastjson2/JSONWriter$Context;->j:Z

    return p0
.end method

.method public isDateFormatISO8601()Z
    .locals 0

    iget-boolean p0, p0, Lcom/alibaba/fastjson2/JSONWriter$Context;->f:Z

    return p0
.end method

.method public isDateFormatMillis()Z
    .locals 0

    iget-boolean p0, p0, Lcom/alibaba/fastjson2/JSONWriter$Context;->e:Z

    return p0
.end method

.method public isDateFormatUnixTime()Z
    .locals 0

    iget-boolean p0, p0, Lcom/alibaba/fastjson2/JSONWriter$Context;->g:Z

    return p0
.end method

.method public isEnabled(J)Z
    .locals 2

    .line 2
    iget-wide v0, p0, Lcom/alibaba/fastjson2/JSONWriter$Context;->k:J

    and-long p0, v0, p1

    const-wide/16 v0, 0x0

    cmp-long p0, p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isEnabled(Lcom/alibaba/fastjson2/JSONWriter$Feature;)Z
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/alibaba/fastjson2/JSONWriter$Context;->k:J

    iget-wide p0, p1, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr p0, v0

    const-wide/16 v0, 0x0

    cmp-long p0, p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isFormatyyyyMMddhhmmss19()Z
    .locals 0

    iget-boolean p0, p0, Lcom/alibaba/fastjson2/JSONWriter$Context;->h:Z

    return p0
.end method

.method public setAfterFilter(Lcom/alibaba/fastjson2/filter/AfterFilter;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/fastjson2/JSONWriter$Context;->s:Lcom/alibaba/fastjson2/filter/AfterFilter;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/alibaba/fastjson2/JSONWriter$Context;->m:Z

    :cond_0
    return-void
.end method

.method public setBeforeFilter(Lcom/alibaba/fastjson2/filter/BeforeFilter;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/fastjson2/JSONWriter$Context;->r:Lcom/alibaba/fastjson2/filter/BeforeFilter;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/alibaba/fastjson2/JSONWriter$Context;->m:Z

    :cond_0
    return-void
.end method

.method public setContextNameFilter(Lcom/alibaba/fastjson2/filter/ContextNameFilter;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/fastjson2/JSONWriter$Context;->v:Lcom/alibaba/fastjson2/filter/ContextNameFilter;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/alibaba/fastjson2/JSONWriter$Context;->m:Z

    :cond_0
    return-void
.end method

.method public setContextValueFilter(Lcom/alibaba/fastjson2/filter/ContextValueFilter;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/fastjson2/JSONWriter$Context;->u:Lcom/alibaba/fastjson2/filter/ContextValueFilter;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/alibaba/fastjson2/JSONWriter$Context;->m:Z

    :cond_0
    return-void
.end method

.method public setDateFormat(Ljava/lang/String;)V
    .locals 6

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriter$Context;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/fastjson2/JSONWriter$Context;->a:Ljava/time/format/DateTimeFormatter;

    :cond_1
    if-eqz p1, :cond_7

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "iso8601"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x4

    goto :goto_0

    :sswitch_1
    const-string v0, "yyyy-MM-ddTHH:mm:ss"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v3, 0x3

    goto :goto_0

    :sswitch_2
    const-string v0, "yyyy-MM-dd HH:mm:ss"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v3, 0x2

    goto :goto_0

    :sswitch_3
    const-string v0, "unixtime"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    move v3, v2

    goto :goto_0

    :sswitch_4
    const-string v0, "millis"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    :cond_6
    move v3, v1

    :goto_0
    packed-switch v3, :pswitch_data_0

    const-string v0, "d"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v2, "H"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    move v3, v0

    move v0, v1

    move v5, v0

    move v4, v2

    goto :goto_1

    :pswitch_0
    move v0, v1

    move v3, v0

    move v4, v3

    move v5, v4

    goto :goto_2

    :pswitch_1
    const-string p1, "yyyy-MM-dd\'T\'HH:mm:ss"

    move v0, v1

    move v5, v0

    move v3, v2

    move v4, v3

    goto :goto_1

    :pswitch_2
    move v0, v1

    move v3, v2

    move v4, v3

    move v5, v4

    move v2, v0

    goto :goto_2

    :pswitch_3
    move v3, v1

    move v4, v3

    move v5, v4

    move v0, v2

    goto :goto_1

    :pswitch_4
    move v0, v1

    move v3, v0

    move v4, v3

    move v5, v4

    move v1, v2

    :goto_1
    move v2, v5

    :goto_2
    iput-boolean v1, p0, Lcom/alibaba/fastjson2/JSONWriter$Context;->e:Z

    iput-boolean v2, p0, Lcom/alibaba/fastjson2/JSONWriter$Context;->f:Z

    iput-boolean v0, p0, Lcom/alibaba/fastjson2/JSONWriter$Context;->g:Z

    iput-boolean v3, p0, Lcom/alibaba/fastjson2/JSONWriter$Context;->i:Z

    iput-boolean v4, p0, Lcom/alibaba/fastjson2/JSONWriter$Context;->j:Z

    iput-boolean v5, p0, Lcom/alibaba/fastjson2/JSONWriter$Context;->h:Z

    :cond_7
    iput-object p1, p0, Lcom/alibaba/fastjson2/JSONWriter$Context;->b:Ljava/lang/String;

    return-void

    :sswitch_data_0
    .sparse-switch
        -0x400565ba -> :sswitch_4
        -0x112ad7ab -> :sswitch_3
        0x4f76f1a0 -> :sswitch_2
        0x6d5d7dd4 -> :sswitch_1
        0x7ce21384 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setLabelFilter(Lcom/alibaba/fastjson2/filter/LabelFilter;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/fastjson2/JSONWriter$Context;->t:Lcom/alibaba/fastjson2/filter/LabelFilter;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/alibaba/fastjson2/JSONWriter$Context;->m:Z

    :cond_0
    return-void
.end method

.method public setNameFilter(Lcom/alibaba/fastjson2/filter/NameFilter;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/fastjson2/JSONWriter$Context;->p:Lcom/alibaba/fastjson2/filter/NameFilter;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/alibaba/fastjson2/JSONWriter$Context;->m:Z

    :cond_0
    return-void
.end method

.method public setPropertyFilter(Lcom/alibaba/fastjson2/filter/PropertyFilter;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/fastjson2/JSONWriter$Context;->o:Lcom/alibaba/fastjson2/filter/PropertyFilter;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/alibaba/fastjson2/JSONWriter$Context;->m:Z

    :cond_0
    return-void
.end method

.method public setPropertyPreFilter(Lcom/alibaba/fastjson2/filter/PropertyPreFilter;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/fastjson2/JSONWriter$Context;->n:Lcom/alibaba/fastjson2/filter/PropertyPreFilter;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/alibaba/fastjson2/JSONWriter$Context;->m:Z

    :cond_0
    return-void
.end method

.method public setTimeZone(Ljava/util/TimeZone;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/fastjson2/JSONWriter$Context;->d:Ljava/util/TimeZone;

    return-void
.end method

.method public setValueFilter(Lcom/alibaba/fastjson2/filter/ValueFilter;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/fastjson2/JSONWriter$Context;->q:Lcom/alibaba/fastjson2/filter/ValueFilter;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/alibaba/fastjson2/JSONWriter$Context;->m:Z

    :cond_0
    return-void
.end method

.method public setZoneId(Ljava/time/ZoneId;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/fastjson2/JSONWriter$Context;->l:Ljava/time/ZoneId;

    return-void
.end method
