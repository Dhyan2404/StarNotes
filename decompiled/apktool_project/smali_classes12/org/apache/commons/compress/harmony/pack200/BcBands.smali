.class public Lorg/apache/commons/compress/harmony/pack200/BcBands;
.super Lorg/apache/commons/compress/harmony/pack200/BandSet;
.source "SourceFile"


# static fields
.field public static final J:I = 0xc5

.field public static final K:I = 0x2a

.field public static final L:I = 0xc4

.field public static final M:I = 0xb9

.field public static final N:I = 0xaa

.field public static final O:I = 0x84

.field public static final P:I = 0xab

.field public static final Q:I = 0xff


# instance fields
.field public A:Ljava/util/List;

.field public B:Ljava/lang/String;

.field public C:Ljava/lang/String;

.field public D:Ljava/lang/String;

.field public final E:Lorg/apache/commons/compress/harmony/pack200/IntList;

.field public final F:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/objectweb/asm/Label;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public G:I

.field public H:I

.field public final I:Lorg/apache/commons/compress/harmony/pack200/IntList;

.field public final e:Lorg/apache/commons/compress/harmony/pack200/CpBands;

.field public final f:Lorg/apache/commons/compress/harmony/pack200/Segment;

.field public final g:Lorg/apache/commons/compress/harmony/pack200/IntList;

.field public final h:Lorg/apache/commons/compress/harmony/pack200/IntList;

.field public final i:Lorg/apache/commons/compress/harmony/pack200/IntList;

.field public final j:Lorg/apache/commons/compress/harmony/pack200/IntList;

.field public final k:Lorg/apache/commons/compress/harmony/pack200/IntList;

.field public final l:Lorg/apache/commons/compress/harmony/pack200/IntList;

.field public final m:Ljava/util/List;

.field public final n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/compress/harmony/pack200/CPInt;",
            ">;"
        }
    .end annotation
.end field

.field public final o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/compress/harmony/pack200/CPFloat;",
            ">;"
        }
    .end annotation
.end field

.field public final p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/compress/harmony/pack200/CPLong;",
            ">;"
        }
    .end annotation
.end field

.field public final q:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/compress/harmony/pack200/CPDouble;",
            ">;"
        }
    .end annotation
.end field

.field public final r:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/compress/harmony/pack200/CPString;",
            ">;"
        }
    .end annotation
.end field

.field public final s:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/compress/harmony/pack200/CPClass;",
            ">;"
        }
    .end annotation
.end field

.field public final t:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/compress/harmony/pack200/CPMethodOrField;",
            ">;"
        }
    .end annotation
.end field

.field public final u:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/compress/harmony/pack200/CPMethodOrField;",
            ">;"
        }
    .end annotation
.end field

.field public final v:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/compress/harmony/pack200/CPMethodOrField;",
            ">;"
        }
    .end annotation
.end field

.field public w:Ljava/util/List;

.field public final x:Ljava/util/List;

.field public y:Ljava/util/List;

.field public z:Ljava/util/List;


# direct methods
.method public constructor <init>(Lorg/apache/commons/compress/harmony/pack200/CpBands;Lorg/apache/commons/compress/harmony/pack200/Segment;I)V
    .locals 1

    invoke-virtual {p2}, Lorg/apache/commons/compress/harmony/pack200/Segment;->getSegmentHeader()Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;

    move-result-object v0

    invoke-direct {p0, p3, v0}, Lorg/apache/commons/compress/harmony/pack200/BandSet;-><init>(ILorg/apache/commons/compress/harmony/pack200/SegmentHeader;)V

    new-instance p3, Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-direct {p3}, Lorg/apache/commons/compress/harmony/pack200/IntList;-><init>()V

    iput-object p3, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->g:Lorg/apache/commons/compress/harmony/pack200/IntList;

    new-instance p3, Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-direct {p3}, Lorg/apache/commons/compress/harmony/pack200/IntList;-><init>()V

    iput-object p3, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->h:Lorg/apache/commons/compress/harmony/pack200/IntList;

    new-instance p3, Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-direct {p3}, Lorg/apache/commons/compress/harmony/pack200/IntList;-><init>()V

    iput-object p3, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->i:Lorg/apache/commons/compress/harmony/pack200/IntList;

    new-instance p3, Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-direct {p3}, Lorg/apache/commons/compress/harmony/pack200/IntList;-><init>()V

    iput-object p3, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->j:Lorg/apache/commons/compress/harmony/pack200/IntList;

    new-instance p3, Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-direct {p3}, Lorg/apache/commons/compress/harmony/pack200/IntList;-><init>()V

    iput-object p3, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->k:Lorg/apache/commons/compress/harmony/pack200/IntList;

    new-instance p3, Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-direct {p3}, Lorg/apache/commons/compress/harmony/pack200/IntList;-><init>()V

    iput-object p3, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->l:Lorg/apache/commons/compress/harmony/pack200/IntList;

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->m:Ljava/util/List;

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->n:Ljava/util/List;

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->o:Ljava/util/List;

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->p:Ljava/util/List;

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->q:Ljava/util/List;

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->r:Ljava/util/List;

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->s:Ljava/util/List;

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->t:Ljava/util/List;

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->u:Ljava/util/List;

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->v:Ljava/util/List;

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->w:Ljava/util/List;

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->x:Ljava/util/List;

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->y:Ljava/util/List;

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->z:Ljava/util/List;

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->A:Ljava/util/List;

    new-instance p3, Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-direct {p3}, Lorg/apache/commons/compress/harmony/pack200/IntList;-><init>()V

    iput-object p3, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->E:Lorg/apache/commons/compress/harmony/pack200/IntList;

    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    iput-object p3, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->F:Ljava/util/Map;

    new-instance p3, Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-direct {p3}, Lorg/apache/commons/compress/harmony/pack200/IntList;-><init>()V

    iput-object p3, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->I:Lorg/apache/commons/compress/harmony/pack200/IntList;

    iput-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->e:Lorg/apache/commons/compress/harmony/pack200/CpBands;

    iput-object p2, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->f:Lorg/apache/commons/compress/harmony/pack200/Segment;

    return-void
.end method


# virtual methods
.method public finaliseBands()V
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->w:Ljava/util/List;

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/harmony/pack200/BcBands;->l(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->w:Ljava/util/List;

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->y:Ljava/util/List;

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/harmony/pack200/BcBands;->l(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->y:Ljava/util/List;

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->z:Ljava/util/List;

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/harmony/pack200/BcBands;->l(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->z:Ljava/util/List;

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->A:Ljava/util/List;

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/harmony/pack200/BcBands;->m(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->A:Ljava/util/List;

    return-void
.end method

.method public final l(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/commons/compress/harmony/pack200/CPMethodOrField;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/sunia/HTREnginev2/po;

    invoke-direct {p1}, Lcom/sunia/HTREnginev2/po;-><init>()V

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-static {p1, v0}, Ljava/util/stream/Collectors;->mapping(Ljava/util/function/Function;Ljava/util/stream/Collector;)Ljava/util/stream/Collector;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public final m(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/commons/compress/harmony/pack200/CPMethodOrField;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/sunia/HTREnginev2/qo;

    invoke-direct {p1}, Lcom/sunia/HTREnginev2/qo;-><init>()V

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-static {p1, v0}, Ljava/util/stream/Collectors;->mapping(Ljava/util/function/Function;Ljava/util/stream/Collector;)Ljava/util/stream/Collector;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public final n()V
    .locals 3

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->E:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/pack200/IntList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->E:Lorg/apache/commons/compress/harmony/pack200/IntList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/harmony/pack200/IntList;->add(I)Z

    :cond_0
    iget v0, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->H:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->H:I

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->E:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/pack200/IntList;->size()I

    move-result v0

    :goto_0
    iget v1, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->G:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->E:Lorg/apache/commons/compress/harmony/pack200/IntList;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lorg/apache/commons/compress/harmony/pack200/IntList;->add(I)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->E:Lorg/apache/commons/compress/harmony/pack200/IntList;

    iget p0, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->H:I

    invoke-virtual {v0, p0}, Lorg/apache/commons/compress/harmony/pack200/IntList;->add(I)Z

    return-void
.end method

.method public pack(Ljava/io/OutputStream;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    const-string v0, "Writing byte code bands..."

    invoke-static {v0}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->g:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/pack200/IntList;->toArray()[I

    move-result-object v0

    sget-object v1, Lorg/apache/commons/compress/harmony/pack200/Codec;->BYTE1:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    const-string v2, "bcCodes"

    invoke-virtual {p0, v2, v0, v1}, Lorg/apache/commons/compress/harmony/pack200/BandSet;->encodeBandInt(Ljava/lang/String;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Wrote "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v0, v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " bytes from bcCodes["

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->g:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/pack200/IntList;->size()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->h:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v2}, Lorg/apache/commons/compress/harmony/pack200/IntList;->toArray()[I

    move-result-object v2

    sget-object v4, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    const-string v5, "bcCaseCount"

    invoke-virtual {p0, v5, v2, v4}, Lorg/apache/commons/compress/harmony/pack200/BandSet;->encodeBandInt(Ljava/lang/String;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " bytes from bcCaseCount["

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->h:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v2}, Lorg/apache/commons/compress/harmony/pack200/IntList;->size()I

    move-result v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->i:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v2}, Lorg/apache/commons/compress/harmony/pack200/IntList;->toArray()[I

    move-result-object v2

    sget-object v5, Lorg/apache/commons/compress/harmony/pack200/Codec;->DELTA5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    const-string v6, "bcCaseValue"

    invoke-virtual {p0, v6, v2, v5}, Lorg/apache/commons/compress/harmony/pack200/BandSet;->encodeBandInt(Ljava/lang/String;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " bytes from bcCaseValue["

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->i:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v2}, Lorg/apache/commons/compress/harmony/pack200/IntList;->size()I

    move-result v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->j:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v2}, Lorg/apache/commons/compress/harmony/pack200/IntList;->toArray()[I

    move-result-object v2

    const-string v6, "bcByte"

    invoke-virtual {p0, v6, v2, v1}, Lorg/apache/commons/compress/harmony/pack200/BandSet;->encodeBandInt(Ljava/lang/String;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v1, v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " bytes from bcByte["

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->j:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v1}, Lorg/apache/commons/compress/harmony/pack200/IntList;->size()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->k:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v1}, Lorg/apache/commons/compress/harmony/pack200/IntList;->toArray()[I

    move-result-object v1

    const-string v2, "bcShort"

    invoke-virtual {p0, v2, v1, v5}, Lorg/apache/commons/compress/harmony/pack200/BandSet;->encodeBandInt(Ljava/lang/String;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v1, v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " bytes from bcShort["

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->k:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v1}, Lorg/apache/commons/compress/harmony/pack200/IntList;->size()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->l:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v1}, Lorg/apache/commons/compress/harmony/pack200/IntList;->toArray()[I

    move-result-object v1

    const-string v2, "bcLocal"

    invoke-virtual {p0, v2, v1, v4}, Lorg/apache/commons/compress/harmony/pack200/BandSet;->encodeBandInt(Ljava/lang/String;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v1, v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " bytes from bcLocal["

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->l:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v1}, Lorg/apache/commons/compress/harmony/pack200/IntList;->size()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->m:Ljava/util/List;

    invoke-virtual {p0, v1}, Lorg/apache/commons/compress/harmony/pack200/BandSet;->integerListToArray(Ljava/util/List;)[I

    move-result-object v1

    sget-object v2, Lorg/apache/commons/compress/harmony/pack200/Codec;->BRANCH5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    const-string v6, "bcLabel"

    invoke-virtual {p0, v6, v1, v2}, Lorg/apache/commons/compress/harmony/pack200/BandSet;->encodeBandInt(Ljava/lang/String;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v1, v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " bytes from bcLabel["

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->m:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->n:Ljava/util/List;

    invoke-virtual {p0, v1}, Lorg/apache/commons/compress/harmony/pack200/BandSet;->cpEntryListToArray(Ljava/util/List;)[I

    move-result-object v1

    const-string v2, "bcIntref"

    invoke-virtual {p0, v2, v1, v5}, Lorg/apache/commons/compress/harmony/pack200/BandSet;->encodeBandInt(Ljava/lang/String;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v1, v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " bytes from bcIntref["

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->n:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->o:Ljava/util/List;

    invoke-virtual {p0, v1}, Lorg/apache/commons/compress/harmony/pack200/BandSet;->cpEntryListToArray(Ljava/util/List;)[I

    move-result-object v1

    const-string v2, "bcFloatRef"

    invoke-virtual {p0, v2, v1, v5}, Lorg/apache/commons/compress/harmony/pack200/BandSet;->encodeBandInt(Ljava/lang/String;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v1, v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " bytes from bcFloatRef["

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->o:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->p:Ljava/util/List;

    invoke-virtual {p0, v1}, Lorg/apache/commons/compress/harmony/pack200/BandSet;->cpEntryListToArray(Ljava/util/List;)[I

    move-result-object v1

    const-string v2, "bcLongRef"

    invoke-virtual {p0, v2, v1, v5}, Lorg/apache/commons/compress/harmony/pack200/BandSet;->encodeBandInt(Ljava/lang/String;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v1, v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " bytes from bcLongRef["

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->p:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->q:Ljava/util/List;

    invoke-virtual {p0, v1}, Lorg/apache/commons/compress/harmony/pack200/BandSet;->cpEntryListToArray(Ljava/util/List;)[I

    move-result-object v1

    const-string v2, "bcDoubleRef"

    invoke-virtual {p0, v2, v1, v5}, Lorg/apache/commons/compress/harmony/pack200/BandSet;->encodeBandInt(Ljava/lang/String;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v1, v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " bytes from bcDoubleRef["

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->q:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->r:Ljava/util/List;

    invoke-virtual {p0, v1}, Lorg/apache/commons/compress/harmony/pack200/BandSet;->cpEntryListToArray(Ljava/util/List;)[I

    move-result-object v1

    const-string v2, "bcStringRef"

    invoke-virtual {p0, v2, v1, v5}, Lorg/apache/commons/compress/harmony/pack200/BandSet;->encodeBandInt(Ljava/lang/String;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v1, v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " bytes from bcStringRef["

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->r:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->s:Ljava/util/List;

    invoke-virtual {p0, v1}, Lorg/apache/commons/compress/harmony/pack200/BandSet;->cpEntryOrNullListToArray(Ljava/util/List;)[I

    move-result-object v1

    const-string v2, "bcClassRef"

    invoke-virtual {p0, v2, v1, v4}, Lorg/apache/commons/compress/harmony/pack200/BandSet;->encodeBandInt(Ljava/lang/String;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v1, v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " bytes from bcClassRef["

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->s:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->t:Ljava/util/List;

    invoke-virtual {p0, v1}, Lorg/apache/commons/compress/harmony/pack200/BandSet;->cpEntryListToArray(Ljava/util/List;)[I

    move-result-object v1

    const-string v2, "bcFieldRef"

    invoke-virtual {p0, v2, v1, v5}, Lorg/apache/commons/compress/harmony/pack200/BandSet;->encodeBandInt(Ljava/lang/String;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v1, v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " bytes from bcFieldRef["

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->t:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->u:Ljava/util/List;

    invoke-virtual {p0, v1}, Lorg/apache/commons/compress/harmony/pack200/BandSet;->cpEntryListToArray(Ljava/util/List;)[I

    move-result-object v1

    const-string v2, "bcMethodRef"

    invoke-virtual {p0, v2, v1, v4}, Lorg/apache/commons/compress/harmony/pack200/BandSet;->encodeBandInt(Ljava/lang/String;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v1, v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " bytes from bcMethodRef["

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->u:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->v:Ljava/util/List;

    invoke-virtual {p0, v1}, Lorg/apache/commons/compress/harmony/pack200/BandSet;->cpEntryListToArray(Ljava/util/List;)[I

    move-result-object v1

    const-string v2, "bcIMethodRef"

    invoke-virtual {p0, v2, v1, v5}, Lorg/apache/commons/compress/harmony/pack200/BandSet;->encodeBandInt(Ljava/lang/String;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v1, v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " bytes from bcIMethodRef["

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->v:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->w:Ljava/util/List;

    invoke-virtual {p0, v1}, Lorg/apache/commons/compress/harmony/pack200/BandSet;->integerListToArray(Ljava/util/List;)[I

    move-result-object v1

    const-string v2, "bcThisField"

    invoke-virtual {p0, v2, v1, v4}, Lorg/apache/commons/compress/harmony/pack200/BandSet;->encodeBandInt(Ljava/lang/String;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v1, v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " bytes from bcThisField["

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->w:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->x:Ljava/util/List;

    invoke-virtual {p0, v1}, Lorg/apache/commons/compress/harmony/pack200/BandSet;->integerListToArray(Ljava/util/List;)[I

    move-result-object v1

    const-string v2, "bcSuperField"

    invoke-virtual {p0, v2, v1, v4}, Lorg/apache/commons/compress/harmony/pack200/BandSet;->encodeBandInt(Ljava/lang/String;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v1, v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " bytes from bcSuperField["

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->x:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->y:Ljava/util/List;

    invoke-virtual {p0, v1}, Lorg/apache/commons/compress/harmony/pack200/BandSet;->integerListToArray(Ljava/util/List;)[I

    move-result-object v1

    const-string v2, "bcThisMethod"

    invoke-virtual {p0, v2, v1, v4}, Lorg/apache/commons/compress/harmony/pack200/BandSet;->encodeBandInt(Ljava/lang/String;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v1, v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " bytes from bcThisMethod["

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->y:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->z:Ljava/util/List;

    invoke-virtual {p0, v1}, Lorg/apache/commons/compress/harmony/pack200/BandSet;->integerListToArray(Ljava/util/List;)[I

    move-result-object v1

    const-string v2, "bcSuperMethod"

    invoke-virtual {p0, v2, v1, v4}, Lorg/apache/commons/compress/harmony/pack200/BandSet;->encodeBandInt(Ljava/lang/String;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v1, v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " bytes from bcSuperMethod["

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->z:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->A:Ljava/util/List;

    invoke-virtual {p0, v1}, Lorg/apache/commons/compress/harmony/pack200/BandSet;->integerListToArray(Ljava/util/List;)[I

    move-result-object v1

    const-string v2, "bcInitRef"

    invoke-virtual {p0, v2, v1, v4}, Lorg/apache/commons/compress/harmony/pack200/BandSet;->encodeBandInt(Ljava/lang/String;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v1, v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " bytes from bcInitRef["

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->A:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    return-void
.end method

.method public setCurrentClass(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->B:Ljava/lang/String;

    iput-object p2, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->C:Ljava/lang/String;

    return-void
.end method

.method public visitEnd()V
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->E:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v2}, Lorg/apache/commons/compress/harmony/pack200/IntList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->E:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v2, v1}, Lorg/apache/commons/compress/harmony/pack200/IntList;->get(I)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->E:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v2, v1}, Lorg/apache/commons/compress/harmony/pack200/IntList;->remove(I)I

    iget-object v2, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->E:Lorg/apache/commons/compress/harmony/pack200/IntList;

    iget v3, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->H:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->H:I

    invoke-virtual {v2, v1, v3}, Lorg/apache/commons/compress/harmony/pack200/IntList;->add(II)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget v1, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->H:I

    if-eqz v1, :cond_6

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->E:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v2}, Lorg/apache/commons/compress/harmony/pack200/IntList;->size()I

    move-result v2

    if-ne v1, v2, :cond_5

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->m:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_1
    if-ltz v1, :cond_4

    iget-object v2, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->m:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Ljava/lang/Integer;

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    instance-of v3, v2, Lorg/objectweb/asm/Label;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->m:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v3, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->F:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    iget-object v3, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->I:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v3, v1}, Lorg/apache/commons/compress/harmony/pack200/IntList;->get(I)I

    move-result v3

    iget-object v4, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->m:Ljava/util/List;

    iget-object v5, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->E:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v5, v2}, Lorg/apache/commons/compress/harmony/pack200/IntList;->get(I)I

    move-result v2

    iget-object v5, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->E:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v5, v3}, Lorg/apache/commons/compress/harmony/pack200/IntList;->get(I)I

    move-result v3

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v4, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_4
    :goto_2
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->g:Lorg/apache/commons/compress/harmony/pack200/IntList;

    const/16 v2, 0xff

    invoke-virtual {v1, v2}, Lorg/apache/commons/compress/harmony/pack200/IntList;->add(I)Z

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->f:Lorg/apache/commons/compress/harmony/pack200/Segment;

    invoke-virtual {v1}, Lorg/apache/commons/compress/harmony/pack200/Segment;->getClassBands()Lorg/apache/commons/compress/harmony/pack200/ClassBands;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->E:Lorg/apache/commons/compress/harmony/pack200/IntList;

    iget-object v3, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->F:Ljava/util/Map;

    invoke-virtual {v1, v2, v3}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->doBciRenumbering(Lorg/apache/commons/compress/harmony/pack200/IntList;Ljava/util/Map;)V

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->E:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v1}, Lorg/apache/commons/compress/harmony/pack200/IntList;->clear()V

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->F:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    iput v0, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->G:I

    iput v0, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->H:I

    goto :goto_3

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Mistake made with renumbering"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    :goto_3
    return-void
.end method

.method public visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    iget v0, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->G:I

    add-int/lit8 v0, v0, 0x3

    iput v0, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->G:I

    invoke-virtual {p0}, Lorg/apache/commons/compress/harmony/pack200/BcBands;->n()V

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->g:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/pack200/IntList;->size()I

    move-result v0

    const/16 v1, 0x2a

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->g:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/pack200/IntList;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-virtual {v0, v2}, Lorg/apache/commons/compress/harmony/pack200/IntList;->get(I)I

    move-result v0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->g:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/pack200/IntList;->size()I

    move-result v2

    sub-int/2addr v2, v3

    invoke-virtual {v0, v2}, Lorg/apache/commons/compress/harmony/pack200/IntList;->remove(I)I

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->e:Lorg/apache/commons/compress/harmony/pack200/CpBands;

    invoke-virtual {v0, p2, p3, p4}, Lorg/apache/commons/compress/harmony/pack200/CpBands;->getCPField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/commons/compress/harmony/pack200/CPMethodOrField;

    move-result-object p3

    if-eqz v3, :cond_1

    add-int/lit8 p1, p1, 0x7

    :cond_1
    iget-object p4, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->B:Ljava/lang/String;

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    add-int/lit8 p1, p1, 0x18

    iget-object p2, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->w:Ljava/util/List;

    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    if-eqz v3, :cond_3

    add-int/lit8 p1, p1, -0x7

    iget-object p2, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->g:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {p2, v1}, Lorg/apache/commons/compress/harmony/pack200/IntList;->add(I)Z

    :cond_3
    iget-object p2, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->t:Ljava/util/List;

    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    iget-object p0, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->g:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/harmony/pack200/IntList;->add(I)Z

    return-void
.end method

.method public visitIincInsn(II)V
    .locals 3

    const/16 v0, 0x84

    const/16 v1, 0xff

    if-gt p1, v1, :cond_1

    if-le p2, v1, :cond_0

    goto :goto_0

    :cond_0
    iget v2, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->G:I

    add-int/lit8 v2, v2, 0x3

    iput v2, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->G:I

    iget-object v2, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->g:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v2, v0}, Lorg/apache/commons/compress/harmony/pack200/IntList;->add(I)Z

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->l:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v0, p1}, Lorg/apache/commons/compress/harmony/pack200/IntList;->add(I)Z

    iget-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->j:Lorg/apache/commons/compress/harmony/pack200/IntList;

    and-int/2addr p2, v1

    invoke-virtual {p1, p2}, Lorg/apache/commons/compress/harmony/pack200/IntList;->add(I)Z

    goto :goto_1

    :cond_1
    :goto_0
    iget v1, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->G:I

    add-int/lit8 v1, v1, 0x6

    iput v1, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->G:I

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->g:Lorg/apache/commons/compress/harmony/pack200/IntList;

    const/16 v2, 0xc4

    invoke-virtual {v1, v2}, Lorg/apache/commons/compress/harmony/pack200/IntList;->add(I)Z

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->g:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v1, v0}, Lorg/apache/commons/compress/harmony/pack200/IntList;->add(I)Z

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->l:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v0, p1}, Lorg/apache/commons/compress/harmony/pack200/IntList;->add(I)Z

    iget-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->k:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {p1, p2}, Lorg/apache/commons/compress/harmony/pack200/IntList;->add(I)Z

    :goto_1
    invoke-virtual {p0}, Lorg/apache/commons/compress/harmony/pack200/BcBands;->n()V

    return-void
.end method

.method public visitInsn(I)V
    .locals 1

    const/16 v0, 0xca

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->g:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v0, p1}, Lorg/apache/commons/compress/harmony/pack200/IntList;->add(I)Z

    iget p1, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->G:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->G:I

    invoke-virtual {p0}, Lorg/apache/commons/compress/harmony/pack200/BcBands;->n()V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Non-standard bytecode instructions not supported"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public visitIntInsn(II)V
    .locals 1

    const/16 v0, 0x10

    if-eq p1, v0, :cond_1

    const/16 v0, 0x11

    if-eq p1, v0, :cond_0

    const/16 v0, 0xbc

    if-eq p1, v0, :cond_1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->g:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v0, p1}, Lorg/apache/commons/compress/harmony/pack200/IntList;->add(I)Z

    iget-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->k:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {p1, p2}, Lorg/apache/commons/compress/harmony/pack200/IntList;->add(I)Z

    iget p1, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->G:I

    add-int/lit8 p1, p1, 0x3

    iput p1, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->G:I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->g:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v0, p1}, Lorg/apache/commons/compress/harmony/pack200/IntList;->add(I)Z

    iget-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->j:Lorg/apache/commons/compress/harmony/pack200/IntList;

    and-int/lit16 p2, p2, 0xff

    invoke-virtual {p1, p2}, Lorg/apache/commons/compress/harmony/pack200/IntList;->add(I)Z

    iget p1, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->G:I

    add-int/lit8 p1, p1, 0x2

    iput p1, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->G:I

    :goto_0
    invoke-virtual {p0}, Lorg/apache/commons/compress/harmony/pack200/BcBands;->n()V

    return-void
.end method

.method public visitJumpInsn(ILorg/objectweb/asm/Label;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->g:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v0, p1}, Lorg/apache/commons/compress/harmony/pack200/IntList;->add(I)Z

    iget-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->m:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->I:Lorg/apache/commons/compress/harmony/pack200/IntList;

    iget p2, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->G:I

    invoke-virtual {p1, p2}, Lorg/apache/commons/compress/harmony/pack200/IntList;->add(I)Z

    iget p1, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->G:I

    add-int/lit8 p1, p1, 0x3

    iput p1, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->G:I

    invoke-virtual {p0}, Lorg/apache/commons/compress/harmony/pack200/BcBands;->n()V

    return-void
.end method

.method public visitLabel(Lorg/objectweb/asm/Label;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->F:Ljava/util/Map;

    iget p0, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->G:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public visitLdcInsn(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->e:Lorg/apache/commons/compress/harmony/pack200/CpBands;

    invoke-virtual {v0, p1}, Lorg/apache/commons/compress/harmony/pack200/CpBands;->getConstant(Ljava/lang/Object;)Lorg/apache/commons/compress/harmony/pack200/CPConstant;

    move-result-object p1

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->f:Lorg/apache/commons/compress/harmony/pack200/Segment;

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/pack200/Segment;->lastConstantHadWideIndex()Z

    move-result v0

    if-nez v0, :cond_4

    instance-of v0, p1, Lorg/apache/commons/compress/harmony/pack200/CPLong;

    if-nez v0, :cond_4

    instance-of v0, p1, Lorg/apache/commons/compress/harmony/pack200/CPDouble;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->G:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->G:I

    instance-of v0, p1, Lorg/apache/commons/compress/harmony/pack200/CPInt;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->g:Lorg/apache/commons/compress/harmony/pack200/IntList;

    const/16 v1, 0xea

    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/harmony/pack200/IntList;->add(I)Z

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->n:Ljava/util/List;

    check-cast p1, Lorg/apache/commons/compress/harmony/pack200/CPInt;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_1
    instance-of v0, p1, Lorg/apache/commons/compress/harmony/pack200/CPFloat;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->g:Lorg/apache/commons/compress/harmony/pack200/IntList;

    const/16 v1, 0xeb

    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/harmony/pack200/IntList;->add(I)Z

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->o:Ljava/util/List;

    check-cast p1, Lorg/apache/commons/compress/harmony/pack200/CPFloat;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_2
    instance-of v0, p1, Lorg/apache/commons/compress/harmony/pack200/CPString;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->g:Lorg/apache/commons/compress/harmony/pack200/IntList;

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/harmony/pack200/IntList;->add(I)Z

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->r:Ljava/util/List;

    check-cast p1, Lorg/apache/commons/compress/harmony/pack200/CPString;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_3
    instance-of v0, p1, Lorg/apache/commons/compress/harmony/pack200/CPClass;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->g:Lorg/apache/commons/compress/harmony/pack200/IntList;

    const/16 v1, 0xe9

    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/harmony/pack200/IntList;->add(I)Z

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->s:Ljava/util/List;

    check-cast p1, Lorg/apache/commons/compress/harmony/pack200/CPClass;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_4
    :goto_0
    iget v0, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->G:I

    add-int/lit8 v0, v0, 0x3

    iput v0, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->G:I

    instance-of v0, p1, Lorg/apache/commons/compress/harmony/pack200/CPInt;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->g:Lorg/apache/commons/compress/harmony/pack200/IntList;

    const/16 v1, 0xed

    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/harmony/pack200/IntList;->add(I)Z

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->n:Ljava/util/List;

    check-cast p1, Lorg/apache/commons/compress/harmony/pack200/CPInt;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    instance-of v0, p1, Lorg/apache/commons/compress/harmony/pack200/CPFloat;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->g:Lorg/apache/commons/compress/harmony/pack200/IntList;

    const/16 v1, 0xee

    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/harmony/pack200/IntList;->add(I)Z

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->o:Ljava/util/List;

    check-cast p1, Lorg/apache/commons/compress/harmony/pack200/CPFloat;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    instance-of v0, p1, Lorg/apache/commons/compress/harmony/pack200/CPLong;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->g:Lorg/apache/commons/compress/harmony/pack200/IntList;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/harmony/pack200/IntList;->add(I)Z

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->p:Ljava/util/List;

    check-cast p1, Lorg/apache/commons/compress/harmony/pack200/CPLong;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_7
    instance-of v0, p1, Lorg/apache/commons/compress/harmony/pack200/CPDouble;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->g:Lorg/apache/commons/compress/harmony/pack200/IntList;

    const/16 v1, 0xef

    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/harmony/pack200/IntList;->add(I)Z

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->q:Ljava/util/List;

    check-cast p1, Lorg/apache/commons/compress/harmony/pack200/CPDouble;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_8
    instance-of v0, p1, Lorg/apache/commons/compress/harmony/pack200/CPString;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->g:Lorg/apache/commons/compress/harmony/pack200/IntList;

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/harmony/pack200/IntList;->add(I)Z

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->r:Ljava/util/List;

    check-cast p1, Lorg/apache/commons/compress/harmony/pack200/CPString;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_9
    instance-of v0, p1, Lorg/apache/commons/compress/harmony/pack200/CPClass;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->g:Lorg/apache/commons/compress/harmony/pack200/IntList;

    const/16 v1, 0xec

    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/harmony/pack200/IntList;->add(I)Z

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->s:Ljava/util/List;

    check-cast p1, Lorg/apache/commons/compress/harmony/pack200/CPClass;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_a
    :goto_1
    invoke-virtual {p0}, Lorg/apache/commons/compress/harmony/pack200/BcBands;->n()V

    return-void

    :cond_b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Constant should not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public visitLookupSwitchInsn(Lorg/objectweb/asm/Label;[I[Lorg/objectweb/asm/Label;)V
    .locals 3

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->g:Lorg/apache/commons/compress/harmony/pack200/IntList;

    const/16 v1, 0xab

    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/harmony/pack200/IntList;->add(I)Z

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->m:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->I:Lorg/apache/commons/compress/harmony/pack200/IntList;

    iget v0, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->G:I

    invoke-virtual {p1, v0}, Lorg/apache/commons/compress/harmony/pack200/IntList;->add(I)Z

    iget-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->h:Lorg/apache/commons/compress/harmony/pack200/IntList;

    array-length v0, p2

    invoke-virtual {p1, v0}, Lorg/apache/commons/compress/harmony/pack200/IntList;->add(I)Z

    const/4 p1, 0x0

    move v0, p1

    :goto_0
    array-length v1, p3

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->i:Lorg/apache/commons/compress/harmony/pack200/IntList;

    aget v2, p2, v0

    invoke-virtual {v1, v2}, Lorg/apache/commons/compress/harmony/pack200/IntList;->add(I)Z

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->m:Ljava/util/List;

    aget-object v2, p3, v0

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->I:Lorg/apache/commons/compress/harmony/pack200/IntList;

    iget v2, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->G:I

    invoke-virtual {v1, v2}, Lorg/apache/commons/compress/harmony/pack200/IntList;->add(I)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget p3, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->G:I

    add-int/lit8 v0, p3, 0x1

    rem-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 p1, p3, 0x1

    rem-int/lit8 p1, p1, 0x4

    rsub-int/lit8 p1, p1, 0x4

    :goto_1
    add-int/lit8 p1, p1, 0x1

    add-int/lit8 p1, p1, 0x8

    array-length p2, p2

    mul-int/lit8 p2, p2, 0x8

    add-int/2addr p1, p2

    add-int/2addr p3, p1

    iput p3, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->G:I

    invoke-virtual {p0}, Lorg/apache/commons/compress/harmony/pack200/BcBands;->n()V

    return-void
.end method

.method public visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    iget v0, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->G:I

    add-int/lit8 v0, v0, 0x3

    iput v0, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->G:I

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->G:I

    iget-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->e:Lorg/apache/commons/compress/harmony/pack200/CpBands;

    invoke-virtual {p1, p2, p3, p4}, Lorg/apache/commons/compress/harmony/pack200/CpBands;->getCPIMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/commons/compress/harmony/pack200/CPMethodOrField;

    move-result-object p1

    iget-object p2, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->v:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->g:Lorg/apache/commons/compress/harmony/pack200/IntList;

    const/16 p2, 0xb9

    invoke-virtual {p1, p2}, Lorg/apache/commons/compress/harmony/pack200/IntList;->add(I)Z

    goto/16 :goto_2

    :pswitch_1
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->g:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/pack200/IntList;->size()I

    move-result v0

    const/16 v1, 0x2a

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->g:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/pack200/IntList;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-virtual {v0, v2}, Lorg/apache/commons/compress/harmony/pack200/IntList;->get(I)I

    move-result v0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->g:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/pack200/IntList;->size()I

    move-result v2

    sub-int/2addr v2, v3

    invoke-virtual {v0, v2}, Lorg/apache/commons/compress/harmony/pack200/IntList;->remove(I)I

    add-int/lit8 p1, p1, 0x7

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->B:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v2, "<init>"

    if-eqz v0, :cond_2

    add-int/lit8 p1, p1, 0x18

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0xcf

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->A:Ljava/util/List;

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->e:Lorg/apache/commons/compress/harmony/pack200/CpBands;

    invoke-virtual {v0, p2, p3, p4}, Lorg/apache/commons/compress/harmony/pack200/CpBands;->getCPMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/commons/compress/harmony/pack200/CPMethodOrField;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 p1, 0xe6

    goto/16 :goto_1

    :cond_1
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->y:Ljava/util/List;

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->e:Lorg/apache/commons/compress/harmony/pack200/CpBands;

    invoke-virtual {v1, p2, p3, p4}, Lorg/apache/commons/compress/harmony/pack200/CpBands;->getCPMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/commons/compress/harmony/pack200/CPMethodOrField;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->C:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    add-int/lit8 p1, p1, 0x26

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0xdd

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->A:Ljava/util/List;

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->e:Lorg/apache/commons/compress/harmony/pack200/CpBands;

    invoke-virtual {v0, p2, p3, p4}, Lorg/apache/commons/compress/harmony/pack200/CpBands;->getCPMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/commons/compress/harmony/pack200/CPMethodOrField;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 p1, 0xe7

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->z:Ljava/util/List;

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->e:Lorg/apache/commons/compress/harmony/pack200/CpBands;

    invoke-virtual {v1, p2, p3, p4}, Lorg/apache/commons/compress/harmony/pack200/CpBands;->getCPMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/commons/compress/harmony/pack200/CPMethodOrField;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    if-eqz v3, :cond_5

    add-int/lit8 p1, p1, -0x7

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->g:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/harmony/pack200/IntList;->add(I)Z

    :cond_5
    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/16 v0, 0xb7

    if-ne p1, v0, :cond_6

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->D:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->A:Ljava/util/List;

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->e:Lorg/apache/commons/compress/harmony/pack200/CpBands;

    invoke-virtual {v0, p2, p3, p4}, Lorg/apache/commons/compress/harmony/pack200/CpBands;->getCPMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/commons/compress/harmony/pack200/CPMethodOrField;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 p1, 0xe8

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->u:Ljava/util/List;

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->e:Lorg/apache/commons/compress/harmony/pack200/CpBands;

    invoke-virtual {v1, p2, p3, p4}, Lorg/apache/commons/compress/harmony/pack200/CpBands;->getCPMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/commons/compress/harmony/pack200/CPMethodOrField;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    iget-object p2, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->g:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {p2, p1}, Lorg/apache/commons/compress/harmony/pack200/IntList;->add(I)Z

    :goto_2
    invoke-virtual {p0}, Lorg/apache/commons/compress/harmony/pack200/BcBands;->n()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xb6
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public visitMultiANewArrayInsn(Ljava/lang/String;I)V
    .locals 2

    iget v0, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->G:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->G:I

    invoke-virtual {p0}, Lorg/apache/commons/compress/harmony/pack200/BcBands;->n()V

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->g:Lorg/apache/commons/compress/harmony/pack200/IntList;

    const/16 v1, 0xc5

    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/harmony/pack200/IntList;->add(I)Z

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->s:Ljava/util/List;

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->e:Lorg/apache/commons/compress/harmony/pack200/CpBands;

    invoke-virtual {v1, p1}, Lorg/apache/commons/compress/harmony/pack200/CpBands;->getCPClass(Ljava/lang/String;)Lorg/apache/commons/compress/harmony/pack200/CPClass;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->j:Lorg/apache/commons/compress/harmony/pack200/IntList;

    and-int/lit16 p1, p2, 0xff

    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/harmony/pack200/IntList;->add(I)Z

    return-void
.end method

.method public varargs visitTableSwitchInsn(IILorg/objectweb/asm/Label;[Lorg/objectweb/asm/Label;)V
    .locals 2

    iget-object p2, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->g:Lorg/apache/commons/compress/harmony/pack200/IntList;

    const/16 v0, 0xaa

    invoke-virtual {p2, v0}, Lorg/apache/commons/compress/harmony/pack200/IntList;->add(I)Z

    iget-object p2, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->m:Ljava/util/List;

    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->I:Lorg/apache/commons/compress/harmony/pack200/IntList;

    iget p3, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->G:I

    invoke-virtual {p2, p3}, Lorg/apache/commons/compress/harmony/pack200/IntList;->add(I)Z

    iget-object p2, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->i:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {p2, p1}, Lorg/apache/commons/compress/harmony/pack200/IntList;->add(I)Z

    array-length p1, p4

    iget-object p2, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->h:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {p2, p1}, Lorg/apache/commons/compress/harmony/pack200/IntList;->add(I)Z

    const/4 p2, 0x0

    move p3, p2

    :goto_0
    if-ge p3, p1, :cond_0

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->m:Ljava/util/List;

    aget-object v1, p4, p3

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->I:Lorg/apache/commons/compress/harmony/pack200/IntList;

    iget v1, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->G:I

    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/harmony/pack200/IntList;->add(I)Z

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_0
    iget p1, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->G:I

    rem-int/lit8 p3, p1, 0x4

    if-nez p3, :cond_1

    goto :goto_1

    :cond_1
    rem-int/lit8 p2, p1, 0x4

    rsub-int/lit8 p2, p2, 0x4

    :goto_1
    add-int/lit8 p2, p2, 0xc

    array-length p3, p4

    mul-int/lit8 p3, p3, 0x4

    add-int/2addr p2, p3

    add-int/2addr p1, p2

    iput p1, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->G:I

    invoke-virtual {p0}, Lorg/apache/commons/compress/harmony/pack200/BcBands;->n()V

    return-void
.end method

.method public visitTypeInsn(ILjava/lang/String;)V
    .locals 2

    iget v0, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->G:I

    add-int/lit8 v0, v0, 0x3

    iput v0, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->G:I

    invoke-virtual {p0}, Lorg/apache/commons/compress/harmony/pack200/BcBands;->n()V

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->g:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v0, p1}, Lorg/apache/commons/compress/harmony/pack200/IntList;->add(I)Z

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->s:Ljava/util/List;

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->e:Lorg/apache/commons/compress/harmony/pack200/CpBands;

    invoke-virtual {v1, p2}, Lorg/apache/commons/compress/harmony/pack200/CpBands;->getCPClass(Ljava/lang/String;)Lorg/apache/commons/compress/harmony/pack200/CPClass;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v0, 0xbb

    if-ne p1, v0, :cond_0

    iput-object p2, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->D:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public visitVarInsn(II)V
    .locals 2

    const/16 v0, 0xff

    if-le p2, v0, :cond_0

    iget v0, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->G:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->G:I

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->g:Lorg/apache/commons/compress/harmony/pack200/IntList;

    const/16 v1, 0xc4

    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/harmony/pack200/IntList;->add(I)Z

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->g:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v0, p1}, Lorg/apache/commons/compress/harmony/pack200/IntList;->add(I)Z

    iget-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->l:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {p1, p2}, Lorg/apache/commons/compress/harmony/pack200/IntList;->add(I)Z

    goto :goto_1

    :cond_0
    const/4 v0, 0x3

    if-gt p2, v0, :cond_2

    const/16 v0, 0xa9

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    iget v0, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->G:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->G:I

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    goto :goto_1

    :pswitch_0
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->g:Lorg/apache/commons/compress/harmony/pack200/IntList;

    add-int/lit8 p1, p1, 0x11

    add-int/2addr p1, p2

    invoke-virtual {v0, p1}, Lorg/apache/commons/compress/harmony/pack200/IntList;->add(I)Z

    goto :goto_1

    :pswitch_1
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->g:Lorg/apache/commons/compress/harmony/pack200/IntList;

    add-int/lit8 p1, p1, 0xe

    add-int/2addr p1, p2

    invoke-virtual {v0, p1}, Lorg/apache/commons/compress/harmony/pack200/IntList;->add(I)Z

    goto :goto_1

    :pswitch_2
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->g:Lorg/apache/commons/compress/harmony/pack200/IntList;

    add-int/lit8 p1, p1, 0xb

    add-int/2addr p1, p2

    invoke-virtual {v0, p1}, Lorg/apache/commons/compress/harmony/pack200/IntList;->add(I)Z

    goto :goto_1

    :pswitch_3
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->g:Lorg/apache/commons/compress/harmony/pack200/IntList;

    add-int/lit8 p1, p1, 0x8

    add-int/2addr p1, p2

    invoke-virtual {v0, p1}, Lorg/apache/commons/compress/harmony/pack200/IntList;->add(I)Z

    goto :goto_1

    :pswitch_4
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->g:Lorg/apache/commons/compress/harmony/pack200/IntList;

    add-int/lit8 p1, p1, 0x5

    add-int/2addr p1, p2

    invoke-virtual {v0, p1}, Lorg/apache/commons/compress/harmony/pack200/IntList;->add(I)Z

    goto :goto_1

    :cond_2
    :goto_0
    iget v0, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->G:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->G:I

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->g:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v0, p1}, Lorg/apache/commons/compress/harmony/pack200/IntList;->add(I)Z

    iget-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/BcBands;->l:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {p1, p2}, Lorg/apache/commons/compress/harmony/pack200/IntList;->add(I)Z

    :goto_1
    invoke-virtual {p0}, Lorg/apache/commons/compress/harmony/pack200/BcBands;->n()V

    return-void

    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x36
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
