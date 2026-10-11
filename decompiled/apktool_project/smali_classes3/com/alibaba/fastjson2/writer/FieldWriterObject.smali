.class public Lcom/alibaba/fastjson2/writer/FieldWriterObject;
.super Lcom/alibaba/fastjson2/writer/FieldWriter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/alibaba/fastjson2/writer/FieldWriter<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final v:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<",
            "Lcom/alibaba/fastjson2/writer/FieldWriterObject;",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public volatile r:Ljava/lang/Class;

.field public final s:Z

.field public final t:Z

.field public final u:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const-class v0, Ljava/lang/Class;

    const-string v1, "r"

    const-class v2, Lcom/alibaba/fastjson2/writer/FieldWriterObject;

    invoke-static {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson2/writer/FieldWriterObject;->v:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;)V
    .locals 0

    invoke-direct/range {p0 .. p10}, Lcom/alibaba/fastjson2/writer/FieldWriter;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;)V

    const-wide/high16 p1, 0x2000000000000L

    and-long/2addr p1, p3

    const-wide/16 p3, 0x0

    cmp-long p1, p1, p3

    const/4 p2, 0x1

    const/4 p3, 0x0

    if-eqz p1, :cond_0

    move p1, p2

    goto :goto_0

    :cond_0
    move p1, p3

    :goto_0
    iput-boolean p1, p0, Lcom/alibaba/fastjson2/writer/FieldWriterObject;->s:Z

    const-class p1, Ljava/util/Currency;

    if-ne p8, p1, :cond_1

    iput-object p8, p0, Lcom/alibaba/fastjson2/writer/FieldWriterObject;->r:Ljava/lang/Class;

    sget-object p1, Lcom/sunia/HTREnginev2/eck;->c:Lcom/sunia/HTREnginev2/eck;

    iput-object p1, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->p:Lcom/alibaba/fastjson2/writer/ObjectWriter;

    :cond_1
    invoke-virtual {p8}, Ljava/lang/Class;->isArray()Z

    move-result p1

    if-nez p1, :cond_3

    const-class p1, Ljava/util/Collection;

    invoke-virtual {p1, p8}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-nez p1, :cond_3

    const-class p1, Ljava/util/concurrent/atomic/AtomicLongArray;

    if-eq p8, p1, :cond_3

    const-class p1, Ljava/util/concurrent/atomic/AtomicIntegerArray;

    if-ne p8, p1, :cond_2

    goto :goto_1

    :cond_2
    move p2, p3

    :cond_3
    :goto_1
    iput-boolean p2, p0, Lcom/alibaba/fastjson2/writer/FieldWriterObject;->t:Z

    const-class p1, Ljava/lang/Number;

    invoke-virtual {p1, p8}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/alibaba/fastjson2/writer/FieldWriterObject;->u:Z

    return-void
.end method

.method public static f(Ljava/lang/Class;Ljava/lang/Class;)Z
    .locals 1

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_0

    const-class v0, Ljava/lang/Integer;

    if-eq p1, v0, :cond_7

    :cond_0
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_1

    const-class v0, Ljava/lang/Long;

    if-eq p1, v0, :cond_7

    :cond_1
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_2

    const-class v0, Ljava/lang/Boolean;

    if-eq p1, v0, :cond_7

    :cond_2
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_3

    const-class v0, Ljava/lang/Short;

    if-eq p1, v0, :cond_7

    :cond_3
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_4

    const-class v0, Ljava/lang/Byte;

    if-eq p1, v0, :cond_7

    :cond_4
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_5

    const-class v0, Ljava/lang/Float;

    if-eq p1, v0, :cond_7

    :cond_5
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_6

    const-class v0, Ljava/lang/Double;

    if-eq p1, v0, :cond_7

    :cond_6
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_8

    const-class p0, Ljava/lang/Character;

    if-ne p1, p0, :cond_8

    :cond_7
    const/4 p0, 0x1

    goto :goto_0

    :cond_8
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public final c(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriter;
    .locals 1

    const-class v0, Ljava/util/Map;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->fieldClass:Ljava/lang/Class;

    invoke-virtual {p1, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->fieldType:Ljava/lang/reflect/Type;

    invoke-static {p1, p2}, Lcom/alibaba/fastjson2/writer/ObjectWriterImplMap;->of(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriterImplMap;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {p2}, Lcom/alibaba/fastjson2/writer/ObjectWriterImplMap;->of(Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriterImplMap;

    move-result-object p1

    goto :goto_0

    :cond_1
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/JSONWriter;->getObjectWriter(Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    move-result-object p1

    :goto_0
    sget-object p2, Lcom/alibaba/fastjson2/writer/FieldWriter;->q:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const/4 v0, 0x0

    invoke-static {p2, p0, v0, p1}, Lcom/sunia/HTREnginev2/t4;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    return-object p1
.end method

.method public final d(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriter;
    .locals 3

    const-class v0, Ljava/util/Map;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->fieldClass:Ljava/lang/Class;

    invoke-virtual {p1, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->fieldType:Ljava/lang/reflect/Type;

    invoke-static {p0, p2}, Lcom/alibaba/fastjson2/writer/ObjectWriterImplMap;->of(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriterImplMap;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {p2}, Lcom/alibaba/fastjson2/writer/ObjectWriterImplMap;->of(Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriterImplMap;

    move-result-object p0

    return-object p0

    :cond_1
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->format:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->fieldType:Ljava/lang/reflect/Type;

    iget-object p0, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->fieldClass:Ljava/lang/Class;

    invoke-static {v2, p0, v0, v1, p2}, Lcom/alibaba/fastjson2/writer/FieldWriter;->a(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/String;Ljava/util/Locale;Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    move-result-object v1

    :cond_2
    if-nez v1, :cond_3

    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/JSONWriter;->getObjectWriter(Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    move-result-object v1

    :cond_3
    return-object v1
.end method

.method public final e(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriter;
    .locals 6

    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->format:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v0, p1, Lcom/alibaba/fastjson2/JSONWriter;->context:Lcom/alibaba/fastjson2/JSONWriter$Context;

    iget-wide v2, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->features:J

    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONWriter$Context;->getFeatures()J

    move-result-wide v4

    or-long/2addr v2, v4

    sget-object v4, Lcom/alibaba/fastjson2/JSONWriter$Feature;->FieldBased:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v4, v4, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iget-object v0, v0, Lcom/alibaba/fastjson2/JSONWriter$Context;->provider:Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;

    invoke-virtual {v0, p2, p2, v2}, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->getObjectWriterFromCache(Ljava/lang/reflect/Type;Ljava/lang/Class;Z)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    move-result-object v0

    goto :goto_1

    :cond_1
    move-object v0, v1

    :goto_1
    iget-object v2, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->decimalFormat:Ljava/text/DecimalFormat;

    const-class v3, [Ljava/lang/Float;

    if-ne p2, v3, :cond_3

    if-eqz v2, :cond_2

    new-instance v0, Lcom/sunia/HTREnginev2/jbk;

    const-class v3, Ljava/lang/Float;

    invoke-direct {v0, v3, v2}, Lcom/sunia/HTREnginev2/jbk;-><init>(Ljava/lang/Class;Ljava/text/DecimalFormat;)V

    goto :goto_2

    :cond_2
    sget-object v0, Lcom/sunia/HTREnginev2/jbk;->g:Lcom/sunia/HTREnginev2/jbk;

    goto :goto_2

    :cond_3
    const-class v3, [Ljava/lang/Double;

    if-ne p2, v3, :cond_5

    if-eqz v2, :cond_4

    new-instance v0, Lcom/sunia/HTREnginev2/jbk;

    const-class v3, Ljava/lang/Double;

    invoke-direct {v0, v3, v2}, Lcom/sunia/HTREnginev2/jbk;-><init>(Ljava/lang/Class;Ljava/text/DecimalFormat;)V

    goto :goto_2

    :cond_4
    sget-object v0, Lcom/sunia/HTREnginev2/jbk;->h:Lcom/sunia/HTREnginev2/jbk;

    goto :goto_2

    :cond_5
    const-class v3, [F

    if-ne p2, v3, :cond_7

    if-eqz v2, :cond_6

    new-instance v0, Lcom/sunia/HTREnginev2/kck;

    invoke-direct {v0, v2}, Lcom/sunia/HTREnginev2/kck;-><init>(Ljava/text/DecimalFormat;)V

    goto :goto_2

    :cond_6
    sget-object v0, Lcom/sunia/HTREnginev2/kck;->c:Lcom/sunia/HTREnginev2/kck;

    goto :goto_2

    :cond_7
    const-class v3, [D

    if-ne p2, v3, :cond_9

    if-eqz v2, :cond_8

    new-instance v0, Lcom/sunia/HTREnginev2/hck;

    invoke-direct {v0, v2}, Lcom/sunia/HTREnginev2/hck;-><init>(Ljava/text/DecimalFormat;)V

    goto :goto_2

    :cond_8
    sget-object v0, Lcom/sunia/HTREnginev2/hck;->c:Lcom/sunia/HTREnginev2/hck;

    :cond_9
    :goto_2
    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->fieldType:Ljava/lang/reflect/Type;

    iget-object v2, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->fieldClass:Ljava/lang/Class;

    iget-object v3, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->format:Ljava/lang/String;

    invoke-static {v0, v2, v3, v1, p2}, Lcom/alibaba/fastjson2/writer/FieldWriter;->a(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/String;Ljava/util/Locale;Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    move-result-object v0

    :cond_a
    if-nez v0, :cond_c

    sget-object v0, Lcom/alibaba/fastjson2/writer/FieldWriterObject;->v:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {v0, p0, v1, p2}, Lcom/sunia/HTREnginev2/t4;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/JSONWriter;->getObjectWriter(Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    move-result-object p1

    if-eqz v0, :cond_b

    sget-object p2, Lcom/alibaba/fastjson2/writer/FieldWriter;->q:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {p2, p0, v1, p1}, Lcom/sunia/HTREnginev2/t4;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    :cond_b
    move-object v0, p1

    goto :goto_3

    :cond_c
    iget-object p1, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->p:Lcom/alibaba/fastjson2/writer/ObjectWriter;

    if-nez p1, :cond_d

    sget-object p1, Lcom/alibaba/fastjson2/writer/FieldWriterObject;->v:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {p1, p0, v1, p2}, Lcom/sunia/HTREnginev2/t4;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d

    sget-object p1, Lcom/alibaba/fastjson2/writer/FieldWriter;->q:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {p1, p0, v1, v0}, Lcom/sunia/HTREnginev2/t4;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    :cond_d
    :goto_3
    return-object v0
.end method

.method public getInitWriter()Lcom/alibaba/fastjson2/writer/ObjectWriter;
    .locals 0

    iget-object p0, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->p:Lcom/alibaba/fastjson2/writer/ObjectWriter;

    return-object p0
.end method

.method public getObjectWriter(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriter;
    .locals 3

    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/FieldWriterObject;->r:Ljava/lang/Class;

    if-eqz v0, :cond_8

    iget-object v1, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->p:Lcom/alibaba/fastjson2/writer/ObjectWriter;

    sget-object v2, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider$a;->a:Lcom/alibaba/fastjson2/writer/ObjectWriterProvider$a;

    if-ne v1, v2, :cond_0

    goto :goto_3

    :cond_0
    if-eq v0, p2, :cond_4

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteClassName:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson2/JSONWriter;->isEnabled(Lcom/alibaba/fastjson2/JSONWriter$Feature;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->fieldType:Ljava/lang/reflect/Type;

    instance-of v1, v1, Ljava/lang/Class;

    if-nez v1, :cond_4

    :cond_1
    const-class v1, Ljava/util/Map;

    if-ne v0, v1, :cond_2

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_4

    :cond_2
    const-class v1, Ljava/util/List;

    if-ne v0, v1, :cond_3

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v1, 0x1

    :goto_1
    if-nez v1, :cond_5

    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {v0, p2}, Lcom/alibaba/fastjson2/writer/FieldWriterObject;->f(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v1

    :cond_5
    if-eqz v1, :cond_7

    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->p:Lcom/alibaba/fastjson2/writer/ObjectWriter;

    if-nez v0, :cond_6

    invoke-virtual {p0, p1, p2}, Lcom/alibaba/fastjson2/writer/FieldWriterObject;->c(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    move-result-object p0

    goto :goto_2

    :cond_6
    iget-object p0, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->p:Lcom/alibaba/fastjson2/writer/ObjectWriter;

    :goto_2
    return-object p0

    :cond_7
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/fastjson2/writer/FieldWriterObject;->d(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    move-result-object p0

    return-object p0

    :cond_8
    :goto_3
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/fastjson2/writer/FieldWriterObject;->e(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    move-result-object p0

    return-object p0
.end method

.method public unwrapped()Z
    .locals 0

    iget-boolean p0, p0, Lcom/alibaba/fastjson2/writer/FieldWriterObject;->s:Z

    return p0
.end method

.method public write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;)Z
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson2/JSONWriter;",
            "TT;)Z"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move-object/from16 v1, p2

    iget-wide v2, v0, Lcom/alibaba/fastjson2/writer/FieldWriter;->features:J

    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONWriter;->getFeatures()J

    move-result-wide v4

    or-long/2addr v2, v4

    iget-boolean v4, v0, Lcom/alibaba/fastjson2/writer/FieldWriter;->j:Z

    const/4 v5, 0x0

    const-wide/16 v8, 0x0

    if-nez v4, :cond_0

    sget-object v4, Lcom/alibaba/fastjson2/JSONWriter$Feature;->IgnoreNoneSerializable:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v10, v4, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v10, v2

    cmp-long v4, v10, v8

    if-eqz v4, :cond_0

    return v5

    :cond_0
    :try_start_0
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson2/writer/FieldWriter;->getFieldValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v11, 0x1

    if-nez v10, :cond_9

    sget-object v1, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteNulls:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v12, v1, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v12, v2

    cmp-long v1, v12, v8

    if-eqz v1, :cond_5

    sget-object v1, Lcom/alibaba/fastjson2/JSONWriter$Feature;->NotWriteDefaultValue:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v12, v1, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v12, v2

    cmp-long v1, v12, v8

    if-nez v1, :cond_5

    invoke-virtual/range {p0 .. p1}, Lcom/alibaba/fastjson2/writer/FieldWriter;->writeFieldName(Lcom/alibaba/fastjson2/JSONWriter;)V

    iget-boolean v1, v0, Lcom/alibaba/fastjson2/writer/FieldWriterObject;->t:Z

    if-eqz v1, :cond_1

    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeArrayNull()V

    goto :goto_1

    :cond_1
    iget-boolean v1, v0, Lcom/alibaba/fastjson2/writer/FieldWriterObject;->u:Z

    if-eqz v1, :cond_2

    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeNumberNull()V

    goto :goto_1

    :cond_2
    iget-object v0, v0, Lcom/alibaba/fastjson2/writer/FieldWriter;->fieldClass:Ljava/lang/Class;

    const-class v1, Ljava/lang/Appendable;

    if-eq v0, v1, :cond_4

    const-class v1, Ljava/lang/StringBuffer;

    if-eq v0, v1, :cond_4

    const-class v1, Ljava/lang/StringBuilder;

    if-ne v0, v1, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeNull()V

    goto :goto_1

    :cond_4
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeStringNull()V

    :goto_1
    return v11

    :cond_5
    sget-object v1, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteNullNumberAsZero:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v12, v1, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    sget-object v1, Lcom/alibaba/fastjson2/JSONWriter$Feature;->NullAsDefaultValue:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v14, v1, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    or-long/2addr v12, v14

    and-long/2addr v12, v2

    cmp-long v1, v12, v8

    if-eqz v1, :cond_6

    iget-boolean v1, v0, Lcom/alibaba/fastjson2/writer/FieldWriterObject;->u:Z

    if-eqz v1, :cond_6

    invoke-virtual/range {p0 .. p1}, Lcom/alibaba/fastjson2/writer/FieldWriter;->writeFieldName(Lcom/alibaba/fastjson2/JSONWriter;)V

    invoke-virtual {v7, v5}, Lcom/alibaba/fastjson2/JSONWriter;->writeInt32(I)V

    return v11

    :cond_6
    sget-object v1, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteNullBooleanAsFalse:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v12, v1, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    or-long/2addr v12, v14

    and-long v1, v2, v12

    cmp-long v1, v1, v8

    if-eqz v1, :cond_8

    iget-object v1, v0, Lcom/alibaba/fastjson2/writer/FieldWriter;->fieldClass:Ljava/lang/Class;

    const-class v2, Ljava/lang/Boolean;

    if-eq v1, v2, :cond_7

    const-class v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    if-ne v1, v2, :cond_8

    :cond_7
    invoke-virtual/range {p0 .. p1}, Lcom/alibaba/fastjson2/writer/FieldWriter;->writeFieldName(Lcom/alibaba/fastjson2/JSONWriter;)V

    invoke-virtual {v7, v5}, Lcom/alibaba/fastjson2/JSONWriter;->writeBool(Z)V

    return v11

    :cond_8
    return v5

    :cond_9
    if-ne v10, v1, :cond_a

    iget-object v4, v0, Lcom/alibaba/fastjson2/writer/FieldWriter;->fieldClass:Ljava/lang/Class;

    const-class v6, Ljava/lang/Throwable;

    if-ne v4, v6, :cond_a

    iget-object v4, v0, Lcom/alibaba/fastjson2/writer/FieldWriter;->field:Ljava/lang/reflect/Field;

    if-eqz v4, :cond_a

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v4

    if-ne v4, v6, :cond_a

    return v5

    :cond_a
    sget-object v4, Lcom/alibaba/fastjson2/JSONWriter$Feature;->IgnoreNoneSerializable:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v12, v4, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v12, v2

    cmp-long v4, v12, v8

    if-eqz v4, :cond_b

    instance-of v4, v10, Ljava/io/Serializable;

    if-nez v4, :cond_b

    return v5

    :cond_b
    invoke-virtual {v7, v10}, Lcom/alibaba/fastjson2/JSONWriter;->isRefDetect(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_d

    if-ne v10, v1, :cond_c

    invoke-virtual/range {p0 .. p1}, Lcom/alibaba/fastjson2/writer/FieldWriter;->writeFieldName(Lcom/alibaba/fastjson2/JSONWriter;)V

    const-string v0, ".."

    invoke-virtual {v7, v0}, Lcom/alibaba/fastjson2/JSONWriter;->writeReference(Ljava/lang/String;)V

    return v11

    :cond_c
    invoke-virtual {v7, v0, v10}, Lcom/alibaba/fastjson2/JSONWriter;->setPath(Lcom/alibaba/fastjson2/writer/FieldWriter;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_d

    invoke-virtual/range {p0 .. p1}, Lcom/alibaba/fastjson2/writer/FieldWriter;->writeFieldName(Lcom/alibaba/fastjson2/JSONWriter;)V

    invoke-virtual {v7, v1}, Lcom/alibaba/fastjson2/JSONWriter;->writeReference(Ljava/lang/String;)V

    invoke-virtual {v7, v10}, Lcom/alibaba/fastjson2/JSONWriter;->popPath(Ljava/lang/Object;)V

    return v11

    :cond_d
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v4, [B

    if-ne v1, v4, :cond_e

    check-cast v10, [B

    invoke-virtual {v0, v7, v10}, Lcom/alibaba/fastjson2/writer/FieldWriter;->writeBinary(Lcom/alibaba/fastjson2/JSONWriter;[B)V

    return v11

    :cond_e
    invoke-virtual {v0, v7, v1}, Lcom/alibaba/fastjson2/writer/FieldWriterObject;->getObjectWriter(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    move-result-object v4

    if-eqz v4, :cond_1b

    iget-boolean v1, v0, Lcom/alibaba/fastjson2/writer/FieldWriterObject;->s:Z

    if-eqz v1, :cond_16

    instance-of v1, v10, Ljava/util/Map;

    if-eqz v1, :cond_14

    iget-boolean v0, v7, Lcom/alibaba/fastjson2/JSONWriter;->jsonb:Z

    move-object v1, v10

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_12

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_f

    sget-object v6, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteNulls:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v13, v6, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v13, v2

    cmp-long v6, v13, v8

    if-nez v6, :cond_f

    goto :goto_2

    :cond_f
    invoke-virtual {v7, v5}, Lcom/alibaba/fastjson2/JSONWriter;->writeName(Ljava/lang/String;)V

    if-nez v0, :cond_10

    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeColon()V

    :cond_10
    if-nez v4, :cond_11

    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeNull()V

    goto :goto_2

    :cond_11
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v7, v5}, Lcom/alibaba/fastjson2/JSONWriter;->getObjectWriter(Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    move-result-object v5

    invoke-interface {v5, v7, v4}, Lcom/alibaba/fastjson2/writer/ObjectWriter;->write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;)V

    goto :goto_2

    :cond_12
    if-eqz v12, :cond_13

    invoke-virtual {v7, v10}, Lcom/alibaba/fastjson2/JSONWriter;->popPath(Ljava/lang/Object;)V

    :cond_13
    return v11

    :cond_14
    instance-of v1, v4, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;

    if-eqz v1, :cond_16

    check-cast v4, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;

    iget-object v0, v4, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/fastjson2/writer/FieldWriter;

    invoke-virtual {v1, v7, v10}, Lcom/alibaba/fastjson2/writer/FieldWriter;->write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;)Z

    goto :goto_3

    :cond_15
    return v11

    :cond_16
    invoke-virtual/range {p0 .. p1}, Lcom/alibaba/fastjson2/writer/FieldWriter;->writeFieldName(Lcom/alibaba/fastjson2/JSONWriter;)V

    iget-boolean v1, v7, Lcom/alibaba/fastjson2/JSONWriter;->jsonb:Z

    iget-wide v5, v0, Lcom/alibaba/fastjson2/writer/FieldWriter;->features:J

    sget-object v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->BeanToArray:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v2, v5

    cmp-long v2, v2, v8

    if-eqz v2, :cond_18

    if-eqz v1, :cond_17

    iget-object v3, v0, Lcom/alibaba/fastjson2/writer/FieldWriter;->fieldName:Ljava/lang/String;

    iget-object v8, v0, Lcom/alibaba/fastjson2/writer/FieldWriter;->fieldType:Ljava/lang/reflect/Type;

    move-object v0, v4

    move-object/from16 v1, p1

    move-object v2, v10

    move-object v4, v8

    invoke-interface/range {v0 .. v6}, Lcom/alibaba/fastjson2/writer/ObjectWriter;->writeArrayMappingJSONB(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    goto :goto_4

    :cond_17
    iget-object v3, v0, Lcom/alibaba/fastjson2/writer/FieldWriter;->fieldName:Ljava/lang/String;

    iget-object v8, v0, Lcom/alibaba/fastjson2/writer/FieldWriter;->fieldType:Ljava/lang/reflect/Type;

    move-object v0, v4

    move-object/from16 v1, p1

    move-object v2, v10

    move-object v4, v8

    invoke-interface/range {v0 .. v6}, Lcom/alibaba/fastjson2/writer/ObjectWriter;->writeArrayMapping(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    goto :goto_4

    :cond_18
    if-eqz v1, :cond_19

    iget-object v3, v0, Lcom/alibaba/fastjson2/writer/FieldWriter;->fieldName:Ljava/lang/String;

    iget-object v8, v0, Lcom/alibaba/fastjson2/writer/FieldWriter;->fieldType:Ljava/lang/reflect/Type;

    move-object v0, v4

    move-object/from16 v1, p1

    move-object v2, v10

    move-object v4, v8

    invoke-interface/range {v0 .. v6}, Lcom/alibaba/fastjson2/writer/ObjectWriter;->writeJSONB(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    goto :goto_4

    :cond_19
    iget-object v3, v0, Lcom/alibaba/fastjson2/writer/FieldWriter;->fieldName:Ljava/lang/String;

    iget-object v8, v0, Lcom/alibaba/fastjson2/writer/FieldWriter;->fieldType:Ljava/lang/reflect/Type;

    move-object v0, v4

    move-object/from16 v1, p1

    move-object v2, v10

    move-object v4, v8

    invoke-interface/range {v0 .. v6}, Lcom/alibaba/fastjson2/writer/ObjectWriter;->write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    :goto_4
    if-eqz v12, :cond_1a

    invoke-virtual {v7, v10}, Lcom/alibaba/fastjson2/JSONWriter;->popPath(Ljava/lang/Object;)V

    :cond_1a
    return v11

    :cond_1b
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get objectWriter error : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    move-exception v0

    move-object v1, v0

    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONWriter;->isIgnoreErrorGetter()Z

    move-result v0

    if-eqz v0, :cond_1c

    return v5

    :cond_1c
    throw v1
.end method

.method public writeValue(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson2/JSONWriter;",
            "TT;)V"
        }
    .end annotation

    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson2/writer/FieldWriter;->getFieldValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_0

    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeNull()V

    return-void

    :cond_0
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/fastjson2/writer/FieldWriterObject;->r:Ljava/lang/Class;

    if-nez v1, :cond_1

    iput-object v0, p0, Lcom/alibaba/fastjson2/writer/FieldWriterObject;->r:Ljava/lang/Class;

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson2/writer/FieldWriterObject;->getObjectWriter(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    move-result-object v1

    sget-object v2, Lcom/alibaba/fastjson2/writer/FieldWriter;->q:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const/4 v3, 0x0

    invoke-static {v2, p0, v3, v1}, Lcom/sunia/HTREnginev2/t4;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/alibaba/fastjson2/writer/FieldWriterObject;->r:Ljava/lang/Class;

    if-ne v1, v0, :cond_2

    iget-object v1, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->p:Lcom/alibaba/fastjson2/writer/ObjectWriter;

    goto :goto_0

    :cond_2
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson2/JSONWriter;->getObjectWriter(Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_9

    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->isRefDetect()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {v0}, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->isNotReferenceDetect(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    move v8, v0

    if-eqz v8, :cond_5

    if-ne v7, p2, :cond_4

    const-string p0, ".."

    invoke-virtual {p1, p0}, Lcom/alibaba/fastjson2/JSONWriter;->writeReference(Ljava/lang/String;)V

    return-void

    :cond_4
    iget-object p2, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->fieldName:Ljava/lang/String;

    invoke-virtual {p1, p2, v7}, Lcom/alibaba/fastjson2/JSONWriter;->setPath(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_5

    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/JSONWriter;->writeReference(Ljava/lang/String;)V

    invoke-virtual {p1, v7}, Lcom/alibaba/fastjson2/JSONWriter;->popPath(Ljava/lang/Object;)V

    return-void

    :cond_5
    iget-boolean p2, p1, Lcom/alibaba/fastjson2/JSONWriter;->jsonb:Z

    if-eqz p2, :cond_7

    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->isBeanToArray()Z

    move-result p2

    if-eqz p2, :cond_6

    iget-object v3, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->fieldName:Ljava/lang/String;

    iget-object v4, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->fieldClass:Ljava/lang/Class;

    iget-wide v5, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->features:J

    move-object v0, v1

    move-object v1, p1

    move-object v2, v7

    invoke-interface/range {v0 .. v6}, Lcom/alibaba/fastjson2/writer/ObjectWriter;->writeArrayMappingJSONB(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    goto :goto_2

    :cond_6
    iget-object v3, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->fieldName:Ljava/lang/String;

    iget-object v4, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->fieldClass:Ljava/lang/Class;

    iget-wide v5, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->features:J

    move-object v0, v1

    move-object v1, p1

    move-object v2, v7

    invoke-interface/range {v0 .. v6}, Lcom/alibaba/fastjson2/writer/ObjectWriter;->writeJSONB(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    goto :goto_2

    :cond_7
    iget-object v3, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->fieldName:Ljava/lang/String;

    iget-object v4, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->fieldClass:Ljava/lang/Class;

    iget-wide v5, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->features:J

    move-object v0, v1

    move-object v1, p1

    move-object v2, v7

    invoke-interface/range {v0 .. v6}, Lcom/alibaba/fastjson2/writer/ObjectWriter;->write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    :goto_2
    if-eqz v8, :cond_8

    invoke-virtual {p1, v7}, Lcom/alibaba/fastjson2/JSONWriter;->popPath(Ljava/lang/Object;)V

    :cond_8
    return-void

    :cond_9
    new-instance p0, Lcom/alibaba/fastjson2/JSONException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "get value writer error, valueType : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
