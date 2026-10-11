.class public Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public A:I

.field public B:I

.field public C:I

.field public D:I

.field public E:I

.field public F:I

.field public G:I

.field public H:I

.field public I:I

.field public J:I

.field public K:I

.field public L:I

.field public M:I

.field public N:I

.field public O:I

.field public P:I

.field public Q:Lorg/apache/commons/compress/harmony/unpack200/Segment;

.field public R:Ljava/lang/String;

.field public S:Ljava/lang/String;

.field public T:Ljava/lang/String;

.field public a:[I

.field public b:[I

.field public c:[I

.field public d:[I

.field public e:[I

.field public f:[I

.field public g:[I

.field public h:[I

.field public i:[I

.field public j:[I

.field public k:[I

.field public l:[I

.field public m:[I

.field public n:[I

.field public o:[I

.field public p:[I

.field public q:[I

.field public r:[I

.field public s:[I

.field public t:[I

.field public u:[I

.field public v:I

.field public w:I

.field public x:I

.field public y:I

.field public z:I


# direct methods
.method public constructor <init>([I[I[I[I[I[I[I[I[I[I[I[I[I[I[I[I[I[I[I[I[I)V
    .locals 2

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    iput-object v1, v0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;->a:[I

    move-object v1, p2

    iput-object v1, v0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;->b:[I

    move-object v1, p3

    iput-object v1, v0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;->c:[I

    move-object v1, p4

    iput-object v1, v0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;->d:[I

    move-object v1, p5

    iput-object v1, v0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;->e:[I

    move-object v1, p6

    iput-object v1, v0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;->f:[I

    move-object v1, p7

    iput-object v1, v0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;->g:[I

    move-object v1, p8

    iput-object v1, v0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;->h:[I

    move-object v1, p9

    iput-object v1, v0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;->i:[I

    move-object v1, p10

    iput-object v1, v0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;->j:[I

    move-object v1, p11

    iput-object v1, v0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;->k:[I

    move-object v1, p12

    iput-object v1, v0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;->l:[I

    move-object v1, p13

    iput-object v1, v0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;->m:[I

    move-object/from16 v1, p14

    iput-object v1, v0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;->n:[I

    move-object/from16 v1, p15

    iput-object v1, v0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;->o:[I

    move-object/from16 v1, p16

    iput-object v1, v0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;->p:[I

    move-object/from16 v1, p17

    iput-object v1, v0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;->q:[I

    move-object/from16 v1, p18

    iput-object v1, v0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;->r:[I

    move-object/from16 v1, p19

    iput-object v1, v0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;->s:[I

    move-object/from16 v1, p20

    iput-object v1, v0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;->t:[I

    move-object/from16 v1, p21

    iput-object v1, v0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;->u:[I

    return-void
.end method


# virtual methods
.method public getCurrentClass()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;->R:Ljava/lang/String;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/Error;

    const-string v0, "Current class not set yet"

    invoke-direct {p0, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getNewClass()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;->T:Ljava/lang/String;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/Error;

    const-string v0, "New class not set yet"

    invoke-direct {p0, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getSuperClass()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;->S:Ljava/lang/String;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/Error;

    const-string v0, "SuperClass not set yet"

    invoke-direct {p0, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public globalConstantPool()Lorg/apache/commons/compress/harmony/unpack200/SegmentConstantPool;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;->Q:Lorg/apache/commons/compress/harmony/unpack200/Segment;

    invoke-virtual {p0}, Lorg/apache/commons/compress/harmony/unpack200/Segment;->getConstantPool()Lorg/apache/commons/compress/harmony/unpack200/SegmentConstantPool;

    move-result-object p0

    return-object p0
.end method

.method public nextByte()I
    .locals 3

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;->c:[I

    iget v1, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;->x:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;->x:I

    aget p0, v0, v1

    return p0
.end method

.method public nextCaseCount()I
    .locals 3

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;->a:[I

    iget v1, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;->v:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;->v:I

    aget p0, v0, v1

    return p0
.end method

.method public nextCaseValues()I
    .locals 3

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;->b:[I

    iget v1, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;->w:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;->w:I

    aget p0, v0, v1

    return p0
.end method

.method public nextClassRef()I
    .locals 3

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;->l:[I

    iget v1, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;->G:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;->G:I

    aget p0, v0, v1

    return p0
.end method

.method public nextDoubleRef()I
    .locals 3

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;->j:[I

    iget v1, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;->E:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;->E:I

    aget p0, v0, v1

    return p0
.end method

.method public nextFieldRef()I
    .locals 3

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;->m:[I

    iget v1, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;->H:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;->H:I

    aget p0, v0, v1

    return p0
.end method

.method public nextFloatRef()I
    .locals 3

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;->h:[I

    iget v1, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;->C:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;->C:I

    aget p0, v0, v1

    return p0
.end method

.method public nextIMethodRef()I
    .locals 3

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;->o:[I

    iget v1, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;->J:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;->J:I

    aget p0, v0, v1

    return p0
.end method

.method public nextInitRef()I
    .locals 3

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;->t:[I

    iget v1, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;->O:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;->O:I

    aget p0, v0, v1

    return p0
.end method

.method public nextIntRef()I
    .locals 3

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;->g:[I

    iget v1, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;->B:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;->B:I

    aget p0, v0, v1

    return p0
.end method

.method public nextLabel()I
    .locals 3

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;->f:[I

    iget v1, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;->A:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;->A:I

    aget p0, v0, v1

    return p0
.end method

.method public nextLocal()I
    .locals 3

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;->e:[I

    iget v1, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;->z:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;->z:I

    aget p0, v0, v1

    return p0
.end method

.method public nextLongRef()I
    .locals 3

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;->i:[I

    iget v1, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;->D:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;->D:I

    aget p0, v0, v1

    return p0
.end method

.method public nextMethodRef()I
    .locals 3

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;->n:[I

    iget v1, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;->I:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;->I:I

    aget p0, v0, v1

    return p0
.end method

.method public nextShort()I
    .locals 3

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;->d:[I

    iget v1, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;->y:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;->y:I

    aget p0, v0, v1

    return p0
.end method

.method public nextStringRef()I
    .locals 3

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;->k:[I

    iget v1, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;->F:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;->F:I

    aget p0, v0, v1

    return p0
.end method

.method public nextSuperFieldRef()I
    .locals 3

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;->q:[I

    iget v1, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;->L:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;->L:I

    aget p0, v0, v1

    return p0
.end method

.method public nextSuperMethodRef()I
    .locals 3

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;->s:[I

    iget v1, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;->N:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;->N:I

    aget p0, v0, v1

    return p0
.end method

.method public nextThisFieldRef()I
    .locals 3

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;->p:[I

    iget v1, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;->K:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;->K:I

    aget p0, v0, v1

    return p0
.end method

.method public nextThisMethodRef()I
    .locals 3

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;->r:[I

    iget v1, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;->M:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;->M:I

    aget p0, v0, v1

    return p0
.end method

.method public nextWideByteCode()I
    .locals 3

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;->u:[I

    iget v1, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;->P:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;->P:I

    aget p0, v0, v1

    return p0
.end method

.method public setCurrentClass(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;->R:Ljava/lang/String;

    return-void
.end method

.method public setNewClass(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;->T:Ljava/lang/String;

    return-void
.end method

.method public setSegment(Lorg/apache/commons/compress/harmony/unpack200/Segment;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;->Q:Lorg/apache/commons/compress/harmony/unpack200/Segment;

    return-void
.end method

.method public setSuperClass(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;->S:Ljava/lang/String;

    return-void
.end method
