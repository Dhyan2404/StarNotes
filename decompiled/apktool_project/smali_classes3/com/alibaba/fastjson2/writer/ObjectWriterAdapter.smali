.class public Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/alibaba/fastjson2/writer/ObjectWriter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/alibaba/fastjson2/writer/ObjectWriter<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final t:Ljava/lang/String; = "@type"


# instance fields
.field public a:Z

.field public b:Lcom/alibaba/fastjson2/filter/PropertyPreFilter;

.field public c:Lcom/alibaba/fastjson2/filter/PropertyFilter;

.field public d:Lcom/alibaba/fastjson2/filter/NameFilter;

.field public e:Lcom/alibaba/fastjson2/filter/ValueFilter;

.field public final f:Ljava/lang/Class;

.field protected final fieldWriterArray:[Lcom/alibaba/fastjson2/writer/FieldWriter;

.field public final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/fastjson2/writer/FieldWriter;",
            ">;"
        }
    .end annotation
.end field

.field public final h:Ljava/lang/String;

.field public i:[B

.field public j:Ljava/lang/String;

.field public k:[B

.field public l:[C

.field public final m:J

.field public final n:[J

.field public final o:[S

.field public final p:Z

.field public final q:Z

.field public final r:Z

.field public final s:Z

.field protected typeNameHash:J

.field protected typeNameJSONB:[B

.field protected typeNameSymbolCache:J


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;JLjava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/List<",
            "Lcom/alibaba/fastjson2/writer/FieldWriter;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->f:Ljava/lang/Class;

    .line 4
    iput-object p3, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->j:Ljava/lang/String;

    if-eqz p2, :cond_0

    .line 5
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string p2, "@type"

    :cond_1
    iput-object p2, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->h:Ljava/lang/String;

    .line 6
    iput-wide p4, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->m:J

    .line 7
    iput-object p6, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->g:Ljava/util/List;

    const/4 p2, 0x0

    const/4 p4, 0x1

    if-eqz p1, :cond_3

    .line 8
    const-class p5, Ljava/io/Serializable;

    invoke-virtual {p5, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move p1, p2

    goto :goto_1

    :cond_3
    :goto_0
    move p1, p4

    :goto_1
    iput-boolean p1, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->q:Z

    const-string p1, "com.google.common.collect.AbstractMapBasedMultimap$RandomAccessWrappedList"

    .line 9
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    const-string p1, "com.google.common.collect.AbstractMapBasedMultimap$WrappedSet"

    .line 10
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_2

    :cond_4
    move p1, p2

    goto :goto_3

    :cond_5
    :goto_2
    move p1, p4

    :goto_3
    iput-boolean p1, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->s:Z

    .line 11
    invoke-interface {p6}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Lcom/alibaba/fastjson2/writer/FieldWriter;

    iput-object p1, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->fieldWriterArray:[Lcom/alibaba/fastjson2/writer/FieldWriter;

    .line 12
    invoke-interface {p6, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 13
    array-length p3, p1

    const-wide/16 p5, 0x0

    if-ne p3, p4, :cond_6

    aget-object p3, p1, p2

    iget-wide v0, p3, Lcom/alibaba/fastjson2/writer/FieldWriter;->features:J

    const-wide/high16 v2, 0x1000000000000L

    and-long/2addr v0, v2

    cmp-long p3, v0, p5

    if-eqz p3, :cond_6

    move p3, p4

    goto :goto_4

    :cond_6
    move p3, p2

    :goto_4
    iput-boolean p3, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->p:Z

    .line 14
    array-length p1, p1

    new-array p3, p1, [J

    move v0, p2

    move v1, v0

    .line 15
    :goto_5
    iget-object v2, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->fieldWriterArray:[Lcom/alibaba/fastjson2/writer/FieldWriter;

    array-length v3, v2

    if-ge v0, v3, :cond_8

    .line 16
    aget-object v2, v2, v0

    .line 17
    iget-object v3, v2, Lcom/alibaba/fastjson2/writer/FieldWriter;->fieldName:Ljava/lang/String;

    invoke-static {v3}, Lcom/alibaba/fastjson2/util/Fnv;->hashCode64(Ljava/lang/String;)J

    move-result-wide v3

    .line 18
    aput-wide v3, p3, v0

    .line 19
    iget-object v3, v2, Lcom/alibaba/fastjson2/writer/FieldWriter;->method:Ljava/lang/reflect/Method;

    if-eqz v3, :cond_7

    iget-wide v2, v2, Lcom/alibaba/fastjson2/writer/FieldWriter;->features:J

    const-wide/high16 v4, 0x10000000000000L

    and-long/2addr v2, v4

    cmp-long v2, v2, p5

    if-nez v2, :cond_7

    move v1, p4

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 20
    :cond_8
    iput-boolean v1, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->r:Z

    .line 21
    invoke-static {p3, p1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object p4

    iput-object p4, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->n:[J

    .line 22
    invoke-static {p4}, Ljava/util/Arrays;->sort([J)V

    .line 23
    array-length p4, p4

    new-array p4, p4, [S

    iput-object p4, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->o:[S

    :goto_6
    if-ge p2, p1, :cond_9

    .line 24
    aget-wide p4, p3, p2

    .line 25
    iget-object p6, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->n:[J

    invoke-static {p6, p4, p5}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result p4

    .line 26
    iget-object p5, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->o:[S

    int-to-short p6, p2

    aput-short p6, p5, p4

    add-int/lit8 p2, p2, 0x1

    goto :goto_6

    :cond_9
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/util/List<",
            "Lcom/alibaba/fastjson2/writer/FieldWriter;",
            ">;)V"
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v6, p2

    .line 1
    invoke-direct/range {v0 .. v6}, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;JLjava/util/List;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/alibaba/fastjson2/JSONWriter;Lcom/alibaba/fastjson2/SymbolTable;)Z
    .locals 6

    invoke-static {p2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    iget-wide v1, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->typeNameSymbolCache:J

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    const/16 v4, 0x20

    const/4 v5, -0x1

    if-nez v3, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->getTypeNameHash()J

    move-result-wide v1

    invoke-virtual {p2, v1, v2}, Lcom/alibaba/fastjson2/SymbolTable;->getOrdinalByHashCode(J)I

    move-result p2

    if-eq p2, v5, :cond_2

    int-to-long v1, p2

    shl-long/2addr v1, v4

    int-to-long v3, v0

    or-long v0, v1, v3

    iput-wide v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->typeNameSymbolCache:J

    goto :goto_0

    :cond_0
    long-to-int v3, v1

    if-ne v3, v0, :cond_1

    shr-long v0, v1, v4

    long-to-int p2, v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->getTypeNameHash()J

    move-result-wide v1

    invoke-virtual {p2, v1, v2}, Lcom/alibaba/fastjson2/SymbolTable;->getOrdinalByHashCode(J)I

    move-result p2

    if-eq p2, v5, :cond_2

    int-to-long v1, p2

    shl-long/2addr v1, v4

    int-to-long v3, v0

    or-long v0, v1, v3

    iput-wide v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->typeNameSymbolCache:J

    :cond_2
    :goto_0
    if-eq p2, v5, :cond_3

    const/16 p0, -0x6e

    invoke-virtual {p1, p0}, Lcom/alibaba/fastjson2/JSONWriter;->writeRaw(B)V

    neg-int p0, p2

    invoke-virtual {p1, p0}, Lcom/alibaba/fastjson2/JSONWriter;->writeInt32(I)V

    const/4 p0, 0x1

    return p0

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method public errorOnNoneSerializable()V
    .locals 3

    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not support none serializable class "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->f:Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getFeatures()J
    .locals 2

    iget-wide v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->m:J

    return-wide v0
.end method

.method public getFieldWriter(J)Lcom/alibaba/fastjson2/writer/FieldWriter;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->n:[J

    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result p1

    if-gez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p2, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->o:[S

    aget-short p1, p2, p1

    iget-object p0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->fieldWriterArray:[Lcom/alibaba/fastjson2/writer/FieldWriter;

    aget-object p0, p0, p1

    return-object p0
.end method

.method public getFieldWriters()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/alibaba/fastjson2/writer/FieldWriter;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->g:Ljava/util/List;

    return-object p0
.end method

.method public getTypeName()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->j:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->f:Ljava/lang/Class;

    if-eqz v0, :cond_1

    const-class v1, Ljava/lang/Enum;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->f:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isEnum()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->f:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->j:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->f:Ljava/lang/Class;

    invoke-static {v0}, Lcom/alibaba/fastjson2/util/TypeUtils;->getTypeName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->j:Ljava/lang/String;

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->j:Ljava/lang/String;

    return-object p0
.end method

.method public getTypeNameHash()J
    .locals 4

    iget-wide v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->typeNameHash:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->getTypeName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/alibaba/fastjson2/util/Fnv;->hashCode64(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->typeNameHash:J

    :cond_0
    iget-wide v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->typeNameHash:J

    return-wide v0
.end method

.method public getTypeNameJSONB()[B
    .locals 1

    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->typeNameJSONB:[B

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->getTypeName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/alibaba/fastjson2/JSONB;->toBytes(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->typeNameJSONB:[B

    :cond_0
    iget-object p0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->typeNameJSONB:[B

    return-object p0
.end method

.method public final hasFilter(Lcom/alibaba/fastjson2/JSONWriter;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->a:Z

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->r:Z

    invoke-virtual {p1, p0}, Lcom/alibaba/fastjson2/JSONWriter;->hasFilter(Z)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public setNameFilter(Lcom/alibaba/fastjson2/filter/NameFilter;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->d:Lcom/alibaba/fastjson2/filter/NameFilter;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->a:Z

    :cond_0
    return-void
.end method

.method public setPropertyFilter(Lcom/alibaba/fastjson2/filter/PropertyFilter;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->c:Lcom/alibaba/fastjson2/filter/PropertyFilter;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->a:Z

    :cond_0
    return-void
.end method

.method public setPropertyPreFilter(Lcom/alibaba/fastjson2/filter/PropertyPreFilter;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->b:Lcom/alibaba/fastjson2/filter/PropertyPreFilter;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->a:Z

    :cond_0
    return-void
.end method

.method public setValueFilter(Lcom/alibaba/fastjson2/filter/ValueFilter;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->e:Lcom/alibaba/fastjson2/filter/ValueFilter;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->a:Z

    :cond_0
    return-void
.end method

.method public toJSONObject(Ljava/lang/Object;)Lcom/alibaba/fastjson2/JSONObject;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/alibaba/fastjson2/JSONObject;"
        }
    .end annotation

    const-wide/16 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0, v1}, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->toJSONObject(Ljava/lang/Object;J)Lcom/alibaba/fastjson2/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method public toJSONObject(Ljava/lang/Object;J)Lcom/alibaba/fastjson2/JSONObject;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;J)",
            "Lcom/alibaba/fastjson2/JSONObject;"
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/alibaba/fastjson2/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson2/JSONObject;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/fastjson2/writer/FieldWriter;

    .line 4
    invoke-virtual {v2, p1}, Lcom/alibaba/fastjson2/writer/FieldWriter;->getFieldValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 5
    iget-object v4, v2, Lcom/alibaba/fastjson2/writer/FieldWriter;->fieldClass:Ljava/lang/Class;

    .line 6
    iget-wide v5, v2, Lcom/alibaba/fastjson2/writer/FieldWriter;->features:J

    const-wide/high16 v7, 0x2000000000000L

    and-long/2addr v5, v7

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-eqz v5, :cond_3

    .line 7
    instance-of v4, v3, Ljava/util/Map;

    if-eqz v4, :cond_1

    .line 8
    check-cast v3, Ljava/util/Map;

    invoke-virtual {v0, v3}, Ljava/util/AbstractMap;->putAll(Ljava/util/Map;)V

    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {v2}, Lcom/alibaba/fastjson2/writer/FieldWriter;->getInitWriter()Lcom/alibaba/fastjson2/writer/ObjectWriter;

    move-result-object v4

    if-nez v4, :cond_2

    .line 10
    sget-object v4, Lcom/alibaba/fastjson2/JSONFactory;->defaultObjectWriterProvider:Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;

    iget-object v2, v2, Lcom/alibaba/fastjson2/writer/FieldWriter;->fieldClass:Ljava/lang/Class;

    invoke-virtual {v4, v2}, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->getObjectWriter(Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    move-result-object v4

    .line 11
    :cond_2
    invoke-interface {v4}, Lcom/alibaba/fastjson2/writer/ObjectWriter;->getFieldWriters()Ljava/util/List;

    move-result-object v2

    .line 12
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/fastjson2/writer/FieldWriter;

    .line 13
    invoke-virtual {v4, v3}, Lcom/alibaba/fastjson2/writer/FieldWriter;->getFieldValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 14
    iget-object v4, v4, Lcom/alibaba/fastjson2/writer/FieldWriter;->fieldName:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    if-eqz v3, :cond_6

    .line 15
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    .line 16
    const-class v6, Ljava/util/Collection;

    invoke-virtual {v6, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 17
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-class v6, Lcom/alibaba/fastjson2/JSONObject;

    if-eq v4, v6, :cond_6

    const-string v4, "com.alibaba.fastjson.JSONObject"

    .line 18
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 19
    check-cast v3, Ljava/util/Collection;

    .line 20
    new-instance v4, Lcom/alibaba/fastjson2/JSONArray;

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v5

    invoke-direct {v4, v5}, Lcom/alibaba/fastjson2/JSONArray;-><init>(I)V

    .line 21
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    if-ne v5, p1, :cond_4

    move-object v5, v0

    goto :goto_3

    .line 22
    :cond_4
    invoke-static {v5}, Lcom/alibaba/fastjson2/JSON;->toJSON(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 23
    :goto_3
    invoke-virtual {v4, v5}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    move-object v3, v4

    :cond_6
    if-nez v3, :cond_7

    .line 24
    iget-wide v4, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->m:J

    or-long/2addr v4, p2

    sget-object v6, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteNulls:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v9, v6, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v4, v9

    cmp-long v4, v4, v7

    if-nez v4, :cond_7

    goto/16 :goto_0

    :cond_7
    if-ne v3, p1, :cond_8

    move-object v3, v0

    .line 25
    :cond_8
    iget-object v2, v2, Lcom/alibaba/fastjson2/writer/FieldWriter;->fieldName:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_9
    return-object v0
.end method

.method public toMap(Ljava/lang/Object;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/alibaba/fastjson2/JSONObject;

    iget-object v1, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONObject;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->g:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->g:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/fastjson2/writer/FieldWriter;

    iget-object v3, v2, Lcom/alibaba/fastjson2/writer/FieldWriter;->fieldName:Ljava/lang/String;

    invoke-virtual {v2, p1}, Lcom/alibaba/fastjson2/writer/FieldWriter;->getFieldValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->f:Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V
    .locals 13

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide/from16 v5, p5

    iget-boolean v3, v0, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->p:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    iget-object v0, v0, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->fieldWriterArray:[Lcom/alibaba/fastjson2/writer/FieldWriter;

    aget-object v0, v0, v4

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/fastjson2/writer/FieldWriter;->writeValue(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-wide v7, v0, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->m:J

    or-long/2addr v7, v5

    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->getFeatures()J

    move-result-wide v9

    or-long/2addr v7, v9

    sget-object v3, Lcom/alibaba/fastjson2/JSONWriter$Feature;->BeanToArray:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v9, v3, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v9, v7

    const-wide/16 v11, 0x0

    cmp-long v3, v9, v11

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    move v3, v4

    :goto_0
    iget-boolean v9, v1, Lcom/alibaba/fastjson2/JSONWriter;->jsonb:Z

    if-eqz v9, :cond_3

    if-eqz v3, :cond_2

    invoke-virtual/range {p0 .. p6}, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->writeArrayMappingJSONB(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    return-void

    :cond_2
    invoke-virtual/range {p0 .. p6}, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->writeJSONB(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    return-void

    :cond_3
    iget-boolean v9, v0, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->s:Z

    if-eqz v9, :cond_4

    check-cast v2, Ljava/util/Collection;

    sget-object v0, Lcom/sunia/HTREnginev2/dck;->c:Lcom/sunia/HTREnginev2/dck;

    move-object v1, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-wide/from16 v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/sunia/HTREnginev2/dck;->write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    return-void

    :cond_4
    if-eqz v3, :cond_5

    invoke-interface/range {p0 .. p6}, Lcom/alibaba/fastjson2/writer/ObjectWriter;->writeArrayMapping(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    return-void

    :cond_5
    iget-boolean v3, v0, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->q:Z

    if-nez v3, :cond_7

    sget-object v3, Lcom/alibaba/fastjson2/JSONWriter$Feature;->ErrorOnNoneSerializable:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v9, v3, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v9, v7

    cmp-long v3, v9, v11

    if-eqz v3, :cond_6

    invoke-virtual {p0}, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->errorOnNoneSerializable()V

    return-void

    :cond_6
    sget-object v3, Lcom/alibaba/fastjson2/JSONWriter$Feature;->IgnoreNoneSerializable:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v9, v3, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v7, v9

    cmp-long v3, v7, v11

    if-eqz v3, :cond_7

    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeNull()V

    return-void

    :cond_7
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->hasFilter(Lcom/alibaba/fastjson2/JSONWriter;)Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-virtual/range {p0 .. p6}, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->writeWithFilter(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    return-void

    :cond_8
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->startObject()V

    iget-wide v7, v0, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->m:J

    or-long/2addr v7, v5

    sget-object v3, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteClassName:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v9, v3, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v7, v9

    cmp-long v3, v7, v11

    if-nez v3, :cond_9

    invoke-virtual {p1, p2, v5, v6}, Lcom/alibaba/fastjson2/JSONWriter;->isWriteTypeInfo(Ljava/lang/Object;J)Z

    move-result v3

    if-eqz v3, :cond_a

    :cond_9
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->writeTypeInfo(Lcom/alibaba/fastjson2/JSONWriter;)Z

    :cond_a
    iget-object v3, v0, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->g:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    :goto_1
    if-ge v4, v3, :cond_b

    iget-object v5, v0, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->g:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alibaba/fastjson2/writer/FieldWriter;

    invoke-virtual {v5, p1, p2}, Lcom/alibaba/fastjson2/writer/FieldWriter;->write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_b
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->endObject()V

    return-void
.end method

.method public writeArrayMappingJSONB(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V
    .locals 0

    invoke-virtual {p1, p2, p4, p5, p6}, Lcom/alibaba/fastjson2/JSONWriter;->isWriteTypeInfo(Ljava/lang/Object;Ljava/lang/reflect/Type;J)Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->writeClassInfo(Lcom/alibaba/fastjson2/JSONWriter;)V

    :cond_0
    iget-object p3, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->g:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    invoke-virtual {p1, p3}, Lcom/alibaba/fastjson2/JSONWriter;->startArray(I)V

    const/4 p4, 0x0

    :goto_0
    if-ge p4, p3, :cond_1

    iget-object p5, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->g:Ljava/util/List;

    invoke-interface {p5, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lcom/alibaba/fastjson2/writer/FieldWriter;

    invoke-virtual {p5, p1, p2}, Lcom/alibaba/fastjson2/writer/FieldWriter;->writeValue(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;)V

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final writeClassInfo(Lcom/alibaba/fastjson2/JSONWriter;)V
    .locals 3

    iget-object v0, p1, Lcom/alibaba/fastjson2/JSONWriter;->symbolTable:Lcom/alibaba/fastjson2/SymbolTable;

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->a(Lcom/alibaba/fastjson2/JSONWriter;Lcom/alibaba/fastjson2/SymbolTable;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->getTypeNameJSONB()[B

    move-result-object v0

    invoke-virtual {p0}, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->getTypeNameHash()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/alibaba/fastjson2/JSONWriter;->writeTypeName([BJ)Z

    return-void
.end method

.method public writeJSONB(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V
    .locals 7

    iget-wide v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->m:J

    or-long/2addr v0, p5

    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->getFeatures()J

    move-result-wide v2

    or-long/2addr v0, v2

    iget-boolean v2, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->q:Z

    const-wide/16 v3, 0x0

    if-nez v2, :cond_1

    sget-object v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->ErrorOnNoneSerializable:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v5, v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v5, v0

    cmp-long v2, v5, v3

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->errorOnNoneSerializable()V

    return-void

    :cond_0
    sget-object v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->IgnoreNoneSerializable:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v5, v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v5, v0

    cmp-long v2, v5, v3

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeNull()V

    return-void

    :cond_1
    sget-object v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->IgnoreNoneSerializable:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v5, v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v0, v5

    cmp-long v0, v0, v3

    if-eqz v0, :cond_2

    invoke-virtual/range {p0 .. p6}, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->writeWithFilter(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    return-void

    :cond_2
    iget-object p3, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->fieldWriterArray:[Lcom/alibaba/fastjson2/writer/FieldWriter;

    array-length p3, p3

    invoke-virtual {p1, p2, p4, p5, p6}, Lcom/alibaba/fastjson2/JSONWriter;->isWriteTypeInfo(Ljava/lang/Object;Ljava/lang/reflect/Type;J)Z

    move-result p4

    if-eqz p4, :cond_3

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->writeClassInfo(Lcom/alibaba/fastjson2/JSONWriter;)V

    :cond_3
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->startObject()V

    const/4 p4, 0x0

    :goto_0
    if-ge p4, p3, :cond_4

    iget-object p5, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->g:Ljava/util/List;

    invoke-interface {p5, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lcom/alibaba/fastjson2/writer/FieldWriter;

    invoke-virtual {p5, p1, p2}, Lcom/alibaba/fastjson2/writer/FieldWriter;->write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;)Z

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->endObject()V

    return-void
.end method

.method public writeTypeInfo(Lcom/alibaba/fastjson2/JSONWriter;)Z
    .locals 10

    invoke-virtual {p0}, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->getTypeName()Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p1, Lcom/alibaba/fastjson2/JSONWriter;->utf8:Z

    const/16 v2, 0x3a

    const/4 v3, 0x0

    const/16 v4, 0x22

    const/4 v5, 0x1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->k:[B

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->h:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    add-int v7, v1, v6

    add-int/lit8 v8, v7, 0x5

    new-array v8, v8, [B

    aput-byte v4, v8, v3

    iget-object v9, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->h:Ljava/lang/String;

    invoke-virtual {v9, v3, v1, v8, v5}, Ljava/lang/String;->getBytes(II[BI)V

    add-int/lit8 v9, v1, 0x1

    aput-byte v4, v8, v9

    add-int/lit8 v9, v1, 0x2

    aput-byte v2, v8, v9

    add-int/lit8 v2, v1, 0x3

    aput-byte v4, v8, v2

    add-int/lit8 v1, v1, 0x4

    invoke-virtual {v0, v3, v6, v8, v1}, Ljava/lang/String;->getBytes(II[BI)V

    add-int/lit8 v7, v7, 0x4

    aput-byte v4, v8, v7

    iput-object v8, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->k:[B

    :cond_0
    iget-object p0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->k:[B

    invoke-virtual {p1, p0}, Lcom/alibaba/fastjson2/JSONWriter;->writeNameRaw([B)V

    return v5

    :cond_1
    iget-boolean v1, p1, Lcom/alibaba/fastjson2/JSONWriter;->utf16:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->l:[C

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->h:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    add-int v7, v1, v6

    add-int/lit8 v8, v7, 0x5

    new-array v8, v8, [C

    aput-char v4, v8, v3

    iget-object v9, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->h:Ljava/lang/String;

    invoke-virtual {v9, v3, v1, v8, v5}, Ljava/lang/String;->getChars(II[CI)V

    add-int/lit8 v9, v1, 0x1

    aput-char v4, v8, v9

    add-int/lit8 v9, v1, 0x2

    aput-char v2, v8, v9

    add-int/lit8 v2, v1, 0x3

    aput-char v4, v8, v2

    add-int/lit8 v1, v1, 0x4

    invoke-virtual {v0, v3, v6, v8, v1}, Ljava/lang/String;->getChars(II[CI)V

    add-int/lit8 v7, v7, 0x4

    aput-char v4, v8, v7

    iput-object v8, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->l:[C

    :cond_2
    iget-object p0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->l:[C

    invoke-virtual {p1, p0}, Lcom/alibaba/fastjson2/JSONWriter;->writeNameRaw([C)V

    return v5

    :cond_3
    iget-boolean v1, p1, Lcom/alibaba/fastjson2/JSONWriter;->jsonb:Z

    if-eqz v1, :cond_5

    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->i:[B

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->h:Ljava/lang/String;

    invoke-static {v0}, Lcom/alibaba/fastjson2/JSONB;->toBytes(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->i:[B

    :cond_4
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->i:[B

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson2/JSONWriter;->writeRaw([B)V

    iget-object p0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->typeNameJSONB:[B

    invoke-virtual {p1, p0}, Lcom/alibaba/fastjson2/JSONWriter;->writeRaw([B)V

    return v5

    :cond_5
    iget-object p0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->h:Ljava/lang/String;

    invoke-virtual {p1, p0}, Lcom/alibaba/fastjson2/JSONWriter;->writeString(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeColon()V

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson2/JSONWriter;->writeString(Ljava/lang/String;)V

    return v5
.end method

.method public writeWithFilter(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V
    .locals 42

    move-object/from16 v1, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move-wide/from16 v11, p5

    if-nez v10, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeNull()V

    return-void

    :cond_0
    move-object/from16 v13, p4

    invoke-virtual {v9, v10, v13, v11, v12}, Lcom/alibaba/fastjson2/JSONWriter;->isWriteTypeInfo(Ljava/lang/Object;Ljava/lang/reflect/Type;J)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, v9, Lcom/alibaba/fastjson2/JSONWriter;->jsonb:Z

    if-eqz v0, :cond_1

    invoke-virtual/range {p0 .. p1}, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->writeClassInfo(Lcom/alibaba/fastjson2/JSONWriter;)V

    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONWriter;->startObject()V

    goto :goto_0

    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONWriter;->startObject()V

    invoke-virtual/range {p0 .. p1}, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->writeTypeInfo(Lcom/alibaba/fastjson2/JSONWriter;)Z

    goto :goto_0

    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONWriter;->startObject()V

    :goto_0
    iget-object v14, v9, Lcom/alibaba/fastjson2/JSONWriter;->context:Lcom/alibaba/fastjson2/JSONWriter$Context;

    invoke-virtual {v14}, Lcom/alibaba/fastjson2/JSONWriter$Context;->getFeatures()J

    move-result-wide v2

    or-long/2addr v2, v11

    sget-object v0, Lcom/alibaba/fastjson2/JSONWriter$Feature;->IgnoreNonFieldGetter:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v4, v0, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v2, v4

    const-wide/16 v15, 0x0

    cmp-long v0, v2, v15

    const/16 v17, 0x1

    const/16 v18, 0x0

    if-eqz v0, :cond_3

    move/from16 v19, v17

    goto :goto_1

    :cond_3
    move/from16 v19, v18

    :goto_1
    invoke-virtual {v14}, Lcom/alibaba/fastjson2/JSONWriter$Context;->getBeforeFilter()Lcom/alibaba/fastjson2/filter/BeforeFilter;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0, v9, v10}, Lcom/alibaba/fastjson2/filter/BeforeFilter;->writeBefore(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;)V

    :cond_4
    invoke-virtual {v14}, Lcom/alibaba/fastjson2/JSONWriter$Context;->getPropertyPreFilter()Lcom/alibaba/fastjson2/filter/PropertyPreFilter;

    move-result-object v0

    if-nez v0, :cond_5

    iget-object v0, v1, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->b:Lcom/alibaba/fastjson2/filter/PropertyPreFilter;

    :cond_5
    move-object v7, v0

    invoke-virtual {v14}, Lcom/alibaba/fastjson2/JSONWriter$Context;->getNameFilter()Lcom/alibaba/fastjson2/filter/NameFilter;

    move-result-object v0

    if-nez v0, :cond_6

    iget-object v0, v1, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->d:Lcom/alibaba/fastjson2/filter/NameFilter;

    goto :goto_2

    :cond_6
    iget-object v2, v1, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->d:Lcom/alibaba/fastjson2/filter/NameFilter;

    if-eqz v2, :cond_7

    invoke-static {v2, v0}, Lcom/alibaba/fastjson2/filter/NameFilter;->compose(Lcom/alibaba/fastjson2/filter/NameFilter;Lcom/alibaba/fastjson2/filter/NameFilter;)Lcom/alibaba/fastjson2/filter/NameFilter;

    move-result-object v0

    :cond_7
    :goto_2
    move-object v8, v0

    invoke-virtual {v14}, Lcom/alibaba/fastjson2/JSONWriter$Context;->getContextNameFilter()Lcom/alibaba/fastjson2/filter/ContextNameFilter;

    move-result-object v6

    invoke-virtual {v14}, Lcom/alibaba/fastjson2/JSONWriter$Context;->getValueFilter()Lcom/alibaba/fastjson2/filter/ValueFilter;

    move-result-object v0

    if-nez v0, :cond_8

    iget-object v0, v1, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->e:Lcom/alibaba/fastjson2/filter/ValueFilter;

    goto :goto_3

    :cond_8
    iget-object v2, v1, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->e:Lcom/alibaba/fastjson2/filter/ValueFilter;

    if-eqz v2, :cond_9

    invoke-static {v2, v0}, Lcom/alibaba/fastjson2/filter/ValueFilter;->compose(Lcom/alibaba/fastjson2/filter/ValueFilter;Lcom/alibaba/fastjson2/filter/ValueFilter;)Lcom/alibaba/fastjson2/filter/ValueFilter;

    move-result-object v0

    :cond_9
    :goto_3
    move-object v5, v0

    invoke-virtual {v14}, Lcom/alibaba/fastjson2/JSONWriter$Context;->getContextValueFilter()Lcom/alibaba/fastjson2/filter/ContextValueFilter;

    move-result-object v4

    invoke-virtual {v14}, Lcom/alibaba/fastjson2/JSONWriter$Context;->getPropertyFilter()Lcom/alibaba/fastjson2/filter/PropertyFilter;

    move-result-object v0

    if-nez v0, :cond_a

    iget-object v0, v1, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->c:Lcom/alibaba/fastjson2/filter/PropertyFilter;

    :cond_a
    move-object v3, v0

    invoke-virtual {v14}, Lcom/alibaba/fastjson2/JSONWriter$Context;->getLabelFilter()Lcom/alibaba/fastjson2/filter/LabelFilter;

    move-result-object v2

    iget-object v0, v1, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v15

    move/from16 v11, v18

    :goto_4
    if-ge v11, v15, :cond_1f

    iget-object v0, v1, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->g:Ljava/util/List;

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson2/writer/FieldWriter;

    iget-object v12, v0, Lcom/alibaba/fastjson2/writer/FieldWriter;->field:Ljava/lang/reflect/Field;

    if-eqz v19, :cond_b

    iget-object v13, v0, Lcom/alibaba/fastjson2/writer/FieldWriter;->method:Ljava/lang/reflect/Method;

    if-eqz v13, :cond_b

    move-object/from16 v16, v14

    iget-wide v13, v0, Lcom/alibaba/fastjson2/writer/FieldWriter;->features:J

    const-wide/high16 v22, 0x10000000000000L

    and-long v13, v13, v22

    const-wide/16 v20, 0x0

    cmp-long v13, v13, v20

    if-nez v13, :cond_c

    goto :goto_5

    :cond_b
    move-object/from16 v16, v14

    :cond_c
    iget-object v13, v0, Lcom/alibaba/fastjson2/writer/FieldWriter;->fieldName:Ljava/lang/String;

    if-eqz v7, :cond_d

    invoke-interface {v7, v9, v10, v13}, Lcom/alibaba/fastjson2/filter/PropertyPreFilter;->process(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_d

    :goto_5
    move-object v12, v3

    move-object v1, v4

    move-object v13, v5

    move-object/from16 v22, v7

    move-object/from16 v23, v8

    move/from16 v37, v11

    move/from16 v36, v15

    move-object v11, v2

    move-object v15, v6

    :goto_6
    const-wide/16 v5, 0x0

    goto/16 :goto_10

    :cond_d
    if-eqz v2, :cond_e

    iget-object v14, v0, Lcom/alibaba/fastjson2/writer/FieldWriter;->label:Ljava/lang/String;

    if-eqz v14, :cond_e

    invoke-virtual {v14}, Ljava/lang/String;->isEmpty()Z

    move-result v22

    if-nez v22, :cond_e

    invoke-interface {v2, v14}, Lcom/alibaba/fastjson2/filter/LabelFilter;->apply(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_e

    goto :goto_5

    :cond_e
    if-nez v8, :cond_f

    if-nez v3, :cond_f

    if-nez v5, :cond_f

    if-nez v4, :cond_f

    if-nez v6, :cond_f

    invoke-virtual {v0, v9, v10}, Lcom/alibaba/fastjson2/writer/FieldWriter;->write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;)Z

    goto :goto_5

    :cond_f
    :try_start_0
    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson2/writer/FieldWriter;->getFieldValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v14, :cond_10

    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONWriter;->isWriteNulls()Z

    move-result v22

    if-nez v22, :cond_10

    goto :goto_5

    :cond_10
    if-eqz v8, :cond_11

    invoke-interface {v8, v10, v13, v14}, Lcom/alibaba/fastjson2/filter/NameFilter;->process(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v33, v2

    move-object/from16 v2, v22

    goto :goto_7

    :cond_11
    move-object/from16 v33, v2

    move-object v2, v13

    :goto_7
    if-eqz v6, :cond_12

    move-object/from16 v34, v7

    new-instance v7, Lcom/alibaba/fastjson2/filter/BeanContext;

    move-object/from16 v35, v8

    iget-object v8, v1, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->f:Ljava/lang/Class;

    move/from16 v36, v15

    iget-object v15, v0, Lcom/alibaba/fastjson2/writer/FieldWriter;->method:Ljava/lang/reflect/Method;

    move/from16 v37, v11

    iget-object v11, v0, Lcom/alibaba/fastjson2/writer/FieldWriter;->fieldName:Ljava/lang/String;

    iget-object v9, v0, Lcom/alibaba/fastjson2/writer/FieldWriter;->label:Ljava/lang/String;

    iget-object v1, v0, Lcom/alibaba/fastjson2/writer/FieldWriter;->fieldClass:Ljava/lang/Class;

    move-object/from16 v38, v4

    iget-object v4, v0, Lcom/alibaba/fastjson2/writer/FieldWriter;->fieldType:Ljava/lang/reflect/Type;

    move-object/from16 v40, v2

    move-object/from16 v39, v3

    iget-wide v2, v0, Lcom/alibaba/fastjson2/writer/FieldWriter;->features:J

    move-object/from16 v41, v5

    iget-object v5, v0, Lcom/alibaba/fastjson2/writer/FieldWriter;->format:Ljava/lang/String;

    move-object/from16 v22, v7

    move-object/from16 v23, v8

    move-object/from16 v24, v15

    move-object/from16 v25, v12

    move-object/from16 v26, v11

    move-object/from16 v27, v9

    move-object/from16 v28, v1

    move-object/from16 v29, v4

    move-wide/from16 v30, v2

    move-object/from16 v32, v5

    invoke-direct/range {v22 .. v32}, Lcom/alibaba/fastjson2/filter/BeanContext;-><init>(Ljava/lang/Class;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/reflect/Type;JLjava/lang/String;)V

    move-object/from16 v1, v40

    invoke-interface {v6, v7, v10, v1, v14}, Lcom/alibaba/fastjson2/filter/ContextNameFilter;->process(Lcom/alibaba/fastjson2/filter/BeanContext;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_8

    :cond_12
    move-object v1, v2

    move-object/from16 v39, v3

    move-object/from16 v38, v4

    move-object/from16 v41, v5

    move-object/from16 v34, v7

    move-object/from16 v35, v8

    move/from16 v37, v11

    move/from16 v36, v15

    const/4 v7, 0x0

    :goto_8
    move-object/from16 v1, v39

    if-eqz v39, :cond_13

    invoke-interface {v1, v10, v13, v14}, Lcom/alibaba/fastjson2/filter/PropertyFilter;->apply(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_13

    move-object/from16 v9, p1

    move-object v12, v1

    move-object v15, v6

    move-object/from16 v11, v33

    move-object/from16 v22, v34

    move-object/from16 v23, v35

    move-object/from16 v1, v38

    :goto_9
    move-object/from16 v13, v41

    goto/16 :goto_6

    :cond_13
    if-eqz v2, :cond_14

    if-eq v2, v13, :cond_14

    move/from16 v3, v17

    goto :goto_a

    :cond_14
    move/from16 v3, v18

    :goto_a
    move-object/from16 v5, v41

    if-eqz v41, :cond_15

    invoke-interface {v5, v10, v13, v14}, Lcom/alibaba/fastjson2/filter/ValueFilter;->apply(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_b

    :cond_15
    move-object v4, v14

    :goto_b
    if-eqz v38, :cond_18

    if-nez v7, :cond_17

    if-nez v12, :cond_16

    iget-object v7, v0, Lcom/alibaba/fastjson2/writer/FieldWriter;->method:Ljava/lang/reflect/Method;

    if-eqz v7, :cond_16

    move-object/from16 v9, p0

    iget-object v7, v9, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->f:Ljava/lang/Class;

    iget-object v8, v0, Lcom/alibaba/fastjson2/writer/FieldWriter;->fieldName:Ljava/lang/String;

    invoke-static {v7, v8}, Lcom/alibaba/fastjson2/util/BeanUtils;->getDeclaredField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v12

    goto :goto_c

    :cond_16
    move-object/from16 v9, p0

    :goto_c
    move-object/from16 v25, v12

    new-instance v7, Lcom/alibaba/fastjson2/filter/BeanContext;

    iget-object v8, v9, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->f:Ljava/lang/Class;

    iget-object v11, v0, Lcom/alibaba/fastjson2/writer/FieldWriter;->method:Ljava/lang/reflect/Method;

    iget-object v12, v0, Lcom/alibaba/fastjson2/writer/FieldWriter;->fieldName:Ljava/lang/String;

    iget-object v13, v0, Lcom/alibaba/fastjson2/writer/FieldWriter;->label:Ljava/lang/String;

    iget-object v15, v0, Lcom/alibaba/fastjson2/writer/FieldWriter;->fieldClass:Ljava/lang/Class;

    move-object/from16 v39, v1

    iget-object v1, v0, Lcom/alibaba/fastjson2/writer/FieldWriter;->fieldType:Ljava/lang/reflect/Type;

    move-object/from16 v41, v5

    move-object/from16 v40, v6

    iget-wide v5, v0, Lcom/alibaba/fastjson2/writer/FieldWriter;->features:J

    iget-object v9, v0, Lcom/alibaba/fastjson2/writer/FieldWriter;->format:Ljava/lang/String;

    move-object/from16 v22, v7

    move-object/from16 v23, v8

    move-object/from16 v24, v11

    move-object/from16 v26, v12

    move-object/from16 v27, v13

    move-object/from16 v28, v15

    move-object/from16 v29, v1

    move-wide/from16 v30, v5

    move-object/from16 v32, v9

    invoke-direct/range {v22 .. v32}, Lcom/alibaba/fastjson2/filter/BeanContext;-><init>(Ljava/lang/Class;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/reflect/Type;JLjava/lang/String;)V

    goto :goto_d

    :cond_17
    move-object/from16 v39, v1

    move-object/from16 v41, v5

    move-object/from16 v40, v6

    :goto_d
    move-object/from16 v1, v38

    invoke-interface {v1, v7, v10, v2, v4}, Lcom/alibaba/fastjson2/filter/ContextValueFilter;->process(Lcom/alibaba/fastjson2/filter/BeanContext;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_e

    :cond_18
    move-object/from16 v39, v1

    move-object/from16 v41, v5

    move-object/from16 v40, v6

    move-object/from16 v1, v38

    :goto_e
    if-eq v4, v14, :cond_1b

    if-eqz v3, :cond_19

    move-object/from16 v9, p1

    invoke-virtual {v9, v2}, Lcom/alibaba/fastjson2/JSONWriter;->writeName(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeColon()V

    goto :goto_f

    :cond_19
    move-object/from16 v9, p1

    invoke-virtual {v0, v9}, Lcom/alibaba/fastjson2/writer/FieldWriter;->writeFieldName(Lcom/alibaba/fastjson2/JSONWriter;)V

    :goto_f
    if-nez v4, :cond_1a

    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeNull()V

    move-object/from16 v11, v33

    move-object/from16 v22, v34

    move-object/from16 v23, v35

    move-object/from16 v12, v39

    move-object/from16 v15, v40

    goto/16 :goto_9

    :cond_1a
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v9, v2}, Lcom/alibaba/fastjson2/writer/FieldWriter;->getObjectWriter(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    move-result-object v2

    move-object/from16 v11, v33

    move-object/from16 v12, v39

    move-object/from16 v3, p1

    move-object/from16 v13, v41

    move-object/from16 v5, p3

    move-object/from16 v15, v40

    move-object/from16 v6, p4

    move-object/from16 v22, v34

    move-object/from16 v23, v35

    move-wide/from16 v7, p5

    invoke-interface/range {v2 .. v8}, Lcom/alibaba/fastjson2/writer/ObjectWriter;->write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    goto/16 :goto_6

    :cond_1b
    move-object/from16 v9, p1

    move-object/from16 v11, v33

    move-object/from16 v22, v34

    move-object/from16 v23, v35

    move-object/from16 v12, v39

    move-object/from16 v15, v40

    move-object/from16 v13, v41

    if-nez v3, :cond_1c

    invoke-virtual {v0, v9, v10}, Lcom/alibaba/fastjson2/writer/FieldWriter;->write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;)Z

    goto/16 :goto_6

    :cond_1c
    invoke-virtual {v9, v2}, Lcom/alibaba/fastjson2/JSONWriter;->writeName(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeColon()V

    if-nez v14, :cond_1d

    iget-object v2, v0, Lcom/alibaba/fastjson2/writer/FieldWriter;->fieldClass:Ljava/lang/Class;

    invoke-virtual {v0, v9, v2}, Lcom/alibaba/fastjson2/writer/FieldWriter;->getObjectWriter(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    move-result-object v2

    const/4 v4, 0x0

    move-object/from16 v3, p1

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-wide/from16 v7, p5

    invoke-interface/range {v2 .. v8}, Lcom/alibaba/fastjson2/writer/ObjectWriter;->write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    goto/16 :goto_6

    :cond_1d
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v9, v2}, Lcom/alibaba/fastjson2/writer/FieldWriter;->getObjectWriter(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    move-result-object v2

    move-object/from16 v3, p1

    move-object v4, v14

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-wide/from16 v7, p5

    invoke-interface/range {v2 .. v8}, Lcom/alibaba/fastjson2/writer/ObjectWriter;->write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    goto/16 :goto_6

    :catchall_0
    move-exception v0

    move-object v12, v3

    move-object v1, v4

    move-object v13, v5

    move-object/from16 v22, v7

    move-object/from16 v23, v8

    move/from16 v37, v11

    move/from16 v36, v15

    move-object v11, v2

    move-object v15, v6

    move-object v2, v0

    invoke-virtual/range {v16 .. v16}, Lcom/alibaba/fastjson2/JSONWriter$Context;->getFeatures()J

    move-result-wide v3

    sget-object v0, Lcom/alibaba/fastjson2/JSONWriter$Feature;->IgnoreErrorGetter:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v5, v0, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v3, v5

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-eqz v0, :cond_1e

    :goto_10
    add-int/lit8 v0, v37, 0x1

    move-object v4, v1

    move-object v2, v11

    move-object v3, v12

    move-object v5, v13

    move-object v6, v15

    move-object/from16 v14, v16

    move-object/from16 v7, v22

    move-object/from16 v8, v23

    move/from16 v15, v36

    move-object/from16 v1, p0

    move-object/from16 v13, p4

    move v11, v0

    goto/16 :goto_4

    :cond_1e
    throw v2

    :cond_1f
    move-object/from16 v16, v14

    invoke-virtual/range {v16 .. v16}, Lcom/alibaba/fastjson2/JSONWriter$Context;->getAfterFilter()Lcom/alibaba/fastjson2/filter/AfterFilter;

    move-result-object v0

    if-eqz v0, :cond_20

    invoke-virtual {v0, v9, v10}, Lcom/alibaba/fastjson2/filter/AfterFilter;->writeAfter(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;)V

    :cond_20
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONWriter;->endObject()V

    return-void
.end method
