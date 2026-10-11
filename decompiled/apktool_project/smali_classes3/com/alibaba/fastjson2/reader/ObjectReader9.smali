.class public Lcom/alibaba/fastjson2/reader/ObjectReader9;
.super Lcom/alibaba/fastjson2/reader/ObjectReaderAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/alibaba/fastjson2/reader/ObjectReaderAdapter<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final A:J

.field public final B:J

.field public final C:J

.field protected final fieldReader0:Lcom/alibaba/fastjson2/reader/FieldReader;

.field protected final fieldReader1:Lcom/alibaba/fastjson2/reader/FieldReader;

.field protected final fieldReader2:Lcom/alibaba/fastjson2/reader/FieldReader;

.field protected final fieldReader3:Lcom/alibaba/fastjson2/reader/FieldReader;

.field protected final fieldReader4:Lcom/alibaba/fastjson2/reader/FieldReader;

.field protected final fieldReader5:Lcom/alibaba/fastjson2/reader/FieldReader;

.field protected final fieldReader6:Lcom/alibaba/fastjson2/reader/FieldReader;

.field protected final fieldReader7:Lcom/alibaba/fastjson2/reader/FieldReader;

.field protected final fieldReader8:Lcom/alibaba/fastjson2/reader/FieldReader;

.field public final l:J

.field public final m:J

.field public final n:J

.field public final o:J

.field protected objectReader0:Lcom/alibaba/fastjson2/reader/ObjectReader;

.field protected objectReader1:Lcom/alibaba/fastjson2/reader/ObjectReader;

.field protected objectReader2:Lcom/alibaba/fastjson2/reader/ObjectReader;

.field protected objectReader3:Lcom/alibaba/fastjson2/reader/ObjectReader;

.field protected objectReader4:Lcom/alibaba/fastjson2/reader/ObjectReader;

.field protected objectReader5:Lcom/alibaba/fastjson2/reader/ObjectReader;

.field protected objectReader6:Lcom/alibaba/fastjson2/reader/ObjectReader;

.field protected objectReader7:Lcom/alibaba/fastjson2/reader/ObjectReader;

.field protected objectReader8:Lcom/alibaba/fastjson2/reader/ObjectReader;

.field public final p:J

.field public final q:J

.field public final r:J

.field public final s:J

.field public final t:J

.field public final u:J

.field public final v:J

.field public final w:J

.field public final x:J

.field public final y:J

.field public final z:J


# direct methods
.method public varargs constructor <init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;JLjava/util/function/Supplier;Ljava/util/function/Function;[Lcom/alibaba/fastjson2/reader/FieldReader;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/function/Supplier<",
            "TT;>;",
            "Ljava/util/function/Function;",
            "[",
            "Lcom/alibaba/fastjson2/reader/FieldReader;",
            ")V"
        }
    .end annotation

    move-object v12, p0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-wide/from16 v4, p4

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v11, p8

    invoke-direct/range {v0 .. v11}, Lcom/alibaba/fastjson2/reader/ObjectReaderAdapter;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;JLjava/util/function/Supplier;Ljava/util/function/Function;[Ljava/lang/Class;[Ljava/lang/String;Ljava/lang/Class;[Lcom/alibaba/fastjson2/reader/FieldReader;)V

    const/4 v0, 0x0

    aget-object v0, p8, v0

    iput-object v0, v12, Lcom/alibaba/fastjson2/reader/ObjectReader9;->fieldReader0:Lcom/alibaba/fastjson2/reader/FieldReader;

    const/4 v1, 0x1

    aget-object v1, p8, v1

    iput-object v1, v12, Lcom/alibaba/fastjson2/reader/ObjectReader9;->fieldReader1:Lcom/alibaba/fastjson2/reader/FieldReader;

    const/4 v2, 0x2

    aget-object v2, p8, v2

    iput-object v2, v12, Lcom/alibaba/fastjson2/reader/ObjectReader9;->fieldReader2:Lcom/alibaba/fastjson2/reader/FieldReader;

    const/4 v3, 0x3

    aget-object v3, p8, v3

    iput-object v3, v12, Lcom/alibaba/fastjson2/reader/ObjectReader9;->fieldReader3:Lcom/alibaba/fastjson2/reader/FieldReader;

    const/4 v4, 0x4

    aget-object v4, p8, v4

    iput-object v4, v12, Lcom/alibaba/fastjson2/reader/ObjectReader9;->fieldReader4:Lcom/alibaba/fastjson2/reader/FieldReader;

    const/4 v5, 0x5

    aget-object v5, p8, v5

    iput-object v5, v12, Lcom/alibaba/fastjson2/reader/ObjectReader9;->fieldReader5:Lcom/alibaba/fastjson2/reader/FieldReader;

    const/4 v6, 0x6

    aget-object v6, p8, v6

    iput-object v6, v12, Lcom/alibaba/fastjson2/reader/ObjectReader9;->fieldReader6:Lcom/alibaba/fastjson2/reader/FieldReader;

    const/4 v7, 0x7

    aget-object v7, p8, v7

    iput-object v7, v12, Lcom/alibaba/fastjson2/reader/ObjectReader9;->fieldReader7:Lcom/alibaba/fastjson2/reader/FieldReader;

    const/16 v8, 0x8

    aget-object v8, p8, v8

    iput-object v8, v12, Lcom/alibaba/fastjson2/reader/ObjectReader9;->fieldReader8:Lcom/alibaba/fastjson2/reader/FieldReader;

    iget-wide v9, v0, Lcom/alibaba/fastjson2/reader/FieldReader;->f:J

    iput-wide v9, v12, Lcom/alibaba/fastjson2/reader/ObjectReader9;->l:J

    iget-wide v9, v1, Lcom/alibaba/fastjson2/reader/FieldReader;->f:J

    iput-wide v9, v12, Lcom/alibaba/fastjson2/reader/ObjectReader9;->m:J

    iget-wide v9, v2, Lcom/alibaba/fastjson2/reader/FieldReader;->f:J

    iput-wide v9, v12, Lcom/alibaba/fastjson2/reader/ObjectReader9;->n:J

    iget-wide v9, v3, Lcom/alibaba/fastjson2/reader/FieldReader;->f:J

    iput-wide v9, v12, Lcom/alibaba/fastjson2/reader/ObjectReader9;->o:J

    iget-wide v9, v4, Lcom/alibaba/fastjson2/reader/FieldReader;->f:J

    iput-wide v9, v12, Lcom/alibaba/fastjson2/reader/ObjectReader9;->p:J

    iget-wide v9, v5, Lcom/alibaba/fastjson2/reader/FieldReader;->f:J

    iput-wide v9, v12, Lcom/alibaba/fastjson2/reader/ObjectReader9;->q:J

    iget-wide v9, v6, Lcom/alibaba/fastjson2/reader/FieldReader;->f:J

    iput-wide v9, v12, Lcom/alibaba/fastjson2/reader/ObjectReader9;->r:J

    iget-wide v9, v7, Lcom/alibaba/fastjson2/reader/FieldReader;->f:J

    iput-wide v9, v12, Lcom/alibaba/fastjson2/reader/ObjectReader9;->s:J

    iget-wide v9, v8, Lcom/alibaba/fastjson2/reader/FieldReader;->f:J

    iput-wide v9, v12, Lcom/alibaba/fastjson2/reader/ObjectReader9;->t:J

    iget-wide v9, v0, Lcom/alibaba/fastjson2/reader/FieldReader;->g:J

    iput-wide v9, v12, Lcom/alibaba/fastjson2/reader/ObjectReader9;->u:J

    iget-wide v0, v1, Lcom/alibaba/fastjson2/reader/FieldReader;->g:J

    iput-wide v0, v12, Lcom/alibaba/fastjson2/reader/ObjectReader9;->v:J

    iget-wide v0, v2, Lcom/alibaba/fastjson2/reader/FieldReader;->g:J

    iput-wide v0, v12, Lcom/alibaba/fastjson2/reader/ObjectReader9;->w:J

    iget-wide v0, v3, Lcom/alibaba/fastjson2/reader/FieldReader;->g:J

    iput-wide v0, v12, Lcom/alibaba/fastjson2/reader/ObjectReader9;->x:J

    iget-wide v0, v4, Lcom/alibaba/fastjson2/reader/FieldReader;->g:J

    iput-wide v0, v12, Lcom/alibaba/fastjson2/reader/ObjectReader9;->y:J

    iget-wide v0, v5, Lcom/alibaba/fastjson2/reader/FieldReader;->g:J

    iput-wide v0, v12, Lcom/alibaba/fastjson2/reader/ObjectReader9;->z:J

    iget-wide v0, v6, Lcom/alibaba/fastjson2/reader/FieldReader;->g:J

    iput-wide v0, v12, Lcom/alibaba/fastjson2/reader/ObjectReader9;->A:J

    iget-wide v0, v7, Lcom/alibaba/fastjson2/reader/FieldReader;->g:J

    iput-wide v0, v12, Lcom/alibaba/fastjson2/reader/ObjectReader9;->B:J

    iget-wide v0, v8, Lcom/alibaba/fastjson2/reader/FieldReader;->g:J

    iput-wide v0, v12, Lcom/alibaba/fastjson2/reader/ObjectReader9;->C:J

    return-void
.end method


# virtual methods
.method public getFieldReader(J)Lcom/alibaba/fastjson2/reader/FieldReader;
    .locals 2

    iget-wide v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader9;->l:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader9;->fieldReader0:Lcom/alibaba/fastjson2/reader/FieldReader;

    return-object p0

    :cond_0
    iget-wide v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader9;->m:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader9;->fieldReader1:Lcom/alibaba/fastjson2/reader/FieldReader;

    return-object p0

    :cond_1
    iget-wide v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader9;->n:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_2

    iget-object p0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader9;->fieldReader2:Lcom/alibaba/fastjson2/reader/FieldReader;

    return-object p0

    :cond_2
    iget-wide v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader9;->o:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_3

    iget-object p0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader9;->fieldReader3:Lcom/alibaba/fastjson2/reader/FieldReader;

    return-object p0

    :cond_3
    iget-wide v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader9;->p:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_4

    iget-object p0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader9;->fieldReader4:Lcom/alibaba/fastjson2/reader/FieldReader;

    return-object p0

    :cond_4
    iget-wide v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader9;->q:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_5

    iget-object p0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader9;->fieldReader5:Lcom/alibaba/fastjson2/reader/FieldReader;

    return-object p0

    :cond_5
    iget-wide v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader9;->r:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_6

    iget-object p0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader9;->fieldReader6:Lcom/alibaba/fastjson2/reader/FieldReader;

    return-object p0

    :cond_6
    iget-wide v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader9;->s:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_7

    iget-object p0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader9;->fieldReader7:Lcom/alibaba/fastjson2/reader/FieldReader;

    return-object p0

    :cond_7
    iget-wide v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader9;->t:J

    cmp-long p1, p1, v0

    if-nez p1, :cond_8

    iget-object p0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader9;->fieldReader8:Lcom/alibaba/fastjson2/reader/FieldReader;

    return-object p0

    :cond_8
    const/4 p0, 0x0

    return-object p0
.end method

.method public getFieldReaderLCase(J)Lcom/alibaba/fastjson2/reader/FieldReader;
    .locals 2

    iget-wide v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader9;->u:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader9;->fieldReader0:Lcom/alibaba/fastjson2/reader/FieldReader;

    return-object p0

    :cond_0
    iget-wide v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader9;->v:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader9;->fieldReader1:Lcom/alibaba/fastjson2/reader/FieldReader;

    return-object p0

    :cond_1
    iget-wide v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader9;->w:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_2

    iget-object p0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader9;->fieldReader2:Lcom/alibaba/fastjson2/reader/FieldReader;

    return-object p0

    :cond_2
    iget-wide v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader9;->x:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_3

    iget-object p0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader9;->fieldReader3:Lcom/alibaba/fastjson2/reader/FieldReader;

    return-object p0

    :cond_3
    iget-wide v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader9;->y:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_4

    iget-object p0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader9;->fieldReader4:Lcom/alibaba/fastjson2/reader/FieldReader;

    return-object p0

    :cond_4
    iget-wide v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader9;->z:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_5

    iget-object p0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader9;->fieldReader5:Lcom/alibaba/fastjson2/reader/FieldReader;

    return-object p0

    :cond_5
    iget-wide v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader9;->A:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_6

    iget-object p0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader9;->fieldReader6:Lcom/alibaba/fastjson2/reader/FieldReader;

    return-object p0

    :cond_6
    iget-wide v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader9;->B:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_7

    iget-object p0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader9;->fieldReader7:Lcom/alibaba/fastjson2/reader/FieldReader;

    return-object p0

    :cond_7
    iget-wide v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader9;->C:J

    cmp-long p1, p1, v0

    if-nez p1, :cond_8

    iget-object p0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader9;->fieldReader8:Lcom/alibaba/fastjson2/reader/FieldReader;

    return-object p0

    :cond_8
    const/4 p0, 0x0

    return-object p0
.end method
