.class public Lorg/apache/xerces/impl/dtd/DTDGrammar;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xerces/xni/XMLDTDHandler;
.implements Lorg/apache/xerces/xni/XMLDTDContentModelHandler;
.implements Lorg/apache/xerces/impl/validation/EntityState;
.implements Lorg/apache/xerces/xni/grammars/Grammar;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xerces/impl/dtd/DTDGrammar$QNameHashtable;,
        Lorg/apache/xerces/impl/dtd/DTDGrammar$a;
    }
.end annotation


# static fields
.field public static final TOP_LEVEL_SCOPE:I = -0x1

.field public static final Z0:I = 0x8

.field public static final a1:I = 0x100

.field public static final b1:I = 0xff

.field public static final c1:I = 0x4

.field public static final d1:S = 0x80s

.field public static final e1:S = -0x81s

.field public static final f1:Z


# instance fields
.field public A0:[[Ljava/lang/String;

.field public B0:Lorg/apache/xerces/impl/dtd/DTDGrammar$QNameHashtable;

.field public C0:Lorg/apache/xerces/impl/dtd/DTDGrammar$QNameHashtable;

.field public D0:Lorg/apache/xerces/impl/dtd/DTDGrammar$QNameHashtable;

.field public E0:Z

.field public final F0:Lorg/apache/xerces/xni/QName;

.field public final G0:Lorg/apache/xerces/xni/QName;

.field public H0:I

.field public I0:I

.field public J:I

.field public J0:Lorg/apache/xerces/impl/dtd/XMLElementDecl;

.field public K0:Lorg/apache/xerces/impl/dtd/XMLEntityDecl;

.field public L0:Lorg/apache/xerces/impl/dtd/XMLSimpleType;

.field public M0:Lorg/apache/xerces/impl/dtd/XMLContentSpec;

.field public N0:Ljava/util/Hashtable;

.field public O:[[Ljava/lang/String;

.field public O0:[S

.field public P0:[I

.field public Q:[[Ljava/lang/String;

.field public Q0:[I

.field public R0:I

.field public S0:[Z

.field public T0:I

.field public U0:[[I

.field public V0:[[I

.field public W0:I

.field public X0:I

.field public Y0:I

.field public Z:[[Ljava/lang/String;

.field public e:Lorg/apache/xerces/util/SymbolTable;

.field public f:I

.field protected final fAttributeDecl:Lorg/apache/xerces/impl/dtd/XMLAttributeDecl;

.field protected fCurrentAttributeIndex:I

.field protected fCurrentElementIndex:I

.field protected fDTDContentModelSource:Lorg/apache/xerces/xni/parser/XMLDTDContentModelSource;

.field protected fDTDSource:Lorg/apache/xerces/xni/parser/XMLDTDSource;

.field protected fGrammarDescription:Lorg/apache/xerces/impl/dtd/XMLDTDDescription;

.field protected fReadingExternalDTD:Z

.field public g:[[Lorg/apache/xerces/xni/QName;

.field public h:[[S

.field public i:[[I

.field public j:[[Lorg/apache/xerces/impl/dtd/models/ContentModelValidator;

.field public k:[[I

.field public k0:[[Ljava/lang/String;

.field public l:[[I

.field public m:I

.field public n:[[Lorg/apache/xerces/xni/QName;

.field public o:Z

.field public p:[[S

.field public q:[[[Ljava/lang/String;

.field public q0:[[Ljava/lang/String;

.field public r:[[S

.field public s:[[Lorg/apache/xerces/impl/dv/DatatypeValidator;

.field public t:[[Ljava/lang/String;

.field public t0:[[Ljava/lang/String;

.field public u:[[Ljava/lang/String;

.field public u0:[[B

.field public v:[[I

.field public v0:[[B

.field public w:I

.field public w0:I

.field public x:[[S

.field public x0:[[Ljava/lang/String;

.field public y:[[Ljava/lang/Object;

.field public y0:[[Ljava/lang/String;

.field public z:[[Ljava/lang/Object;

.field public z0:[[Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/apache/xerces/util/SymbolTable;Lorg/apache/xerces/impl/dtd/XMLDTDDescription;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->fDTDSource:Lorg/apache/xerces/xni/parser/XMLDTDSource;

    iput-object v0, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->fDTDContentModelSource:Lorg/apache/xerces/xni/parser/XMLDTDContentModelSource;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->fReadingExternalDTD:Z

    iput-object v0, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->fGrammarDescription:Lorg/apache/xerces/impl/dtd/XMLDTDDescription;

    iput v1, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->f:I

    const/4 v2, 0x4

    new-array v3, v2, [[Lorg/apache/xerces/xni/QName;

    iput-object v3, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->g:[[Lorg/apache/xerces/xni/QName;

    new-array v3, v2, [[S

    iput-object v3, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->h:[[S

    new-array v3, v2, [[I

    iput-object v3, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->i:[[I

    new-array v3, v2, [[Lorg/apache/xerces/impl/dtd/models/ContentModelValidator;

    iput-object v3, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->j:[[Lorg/apache/xerces/impl/dtd/models/ContentModelValidator;

    new-array v3, v2, [[I

    iput-object v3, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->k:[[I

    new-array v3, v2, [[I

    iput-object v3, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->l:[[I

    iput v1, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->m:I

    new-array v3, v2, [[Lorg/apache/xerces/xni/QName;

    iput-object v3, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->n:[[Lorg/apache/xerces/xni/QName;

    iput-boolean v1, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->o:Z

    new-array v3, v2, [[S

    iput-object v3, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->p:[[S

    new-array v3, v2, [[[Ljava/lang/String;

    iput-object v3, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->q:[[[Ljava/lang/String;

    new-array v3, v2, [[S

    iput-object v3, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->r:[[S

    new-array v3, v2, [[Lorg/apache/xerces/impl/dv/DatatypeValidator;

    iput-object v3, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->s:[[Lorg/apache/xerces/impl/dv/DatatypeValidator;

    new-array v3, v2, [[Ljava/lang/String;

    iput-object v3, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->t:[[Ljava/lang/String;

    new-array v3, v2, [[Ljava/lang/String;

    iput-object v3, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->u:[[Ljava/lang/String;

    new-array v3, v2, [[I

    iput-object v3, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->v:[[I

    iput v1, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->w:I

    new-array v3, v2, [[S

    iput-object v3, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->x:[[S

    new-array v3, v2, [[Ljava/lang/Object;

    iput-object v3, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->y:[[Ljava/lang/Object;

    new-array v3, v2, [[Ljava/lang/Object;

    iput-object v3, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->z:[[Ljava/lang/Object;

    iput v1, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->J:I

    new-array v3, v2, [[Ljava/lang/String;

    iput-object v3, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->O:[[Ljava/lang/String;

    new-array v3, v2, [[Ljava/lang/String;

    iput-object v3, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->Q:[[Ljava/lang/String;

    new-array v3, v2, [[Ljava/lang/String;

    iput-object v3, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->Z:[[Ljava/lang/String;

    new-array v3, v2, [[Ljava/lang/String;

    iput-object v3, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->k0:[[Ljava/lang/String;

    new-array v3, v2, [[Ljava/lang/String;

    iput-object v3, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->q0:[[Ljava/lang/String;

    new-array v3, v2, [[Ljava/lang/String;

    iput-object v3, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->t0:[[Ljava/lang/String;

    new-array v3, v2, [[B

    iput-object v3, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->u0:[[B

    new-array v3, v2, [[B

    iput-object v3, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->v0:[[B

    iput v1, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->w0:I

    new-array v3, v2, [[Ljava/lang/String;

    iput-object v3, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->x0:[[Ljava/lang/String;

    new-array v3, v2, [[Ljava/lang/String;

    iput-object v3, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->y0:[[Ljava/lang/String;

    new-array v3, v2, [[Ljava/lang/String;

    iput-object v3, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->z0:[[Ljava/lang/String;

    new-array v3, v2, [[Ljava/lang/String;

    iput-object v3, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->A0:[[Ljava/lang/String;

    new-instance v3, Lorg/apache/xerces/impl/dtd/DTDGrammar$QNameHashtable;

    invoke-direct {v3}, Lorg/apache/xerces/impl/dtd/DTDGrammar$QNameHashtable;-><init>()V

    iput-object v3, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->B0:Lorg/apache/xerces/impl/dtd/DTDGrammar$QNameHashtable;

    new-instance v3, Lorg/apache/xerces/impl/dtd/DTDGrammar$QNameHashtable;

    invoke-direct {v3}, Lorg/apache/xerces/impl/dtd/DTDGrammar$QNameHashtable;-><init>()V

    iput-object v3, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->C0:Lorg/apache/xerces/impl/dtd/DTDGrammar$QNameHashtable;

    new-instance v3, Lorg/apache/xerces/impl/dtd/DTDGrammar$QNameHashtable;

    invoke-direct {v3}, Lorg/apache/xerces/impl/dtd/DTDGrammar$QNameHashtable;-><init>()V

    iput-object v3, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->D0:Lorg/apache/xerces/impl/dtd/DTDGrammar$QNameHashtable;

    new-instance v3, Lorg/apache/xerces/xni/QName;

    invoke-direct {v3}, Lorg/apache/xerces/xni/QName;-><init>()V

    iput-object v3, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->F0:Lorg/apache/xerces/xni/QName;

    new-instance v3, Lorg/apache/xerces/xni/QName;

    invoke-direct {v3}, Lorg/apache/xerces/xni/QName;-><init>()V

    iput-object v3, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->G0:Lorg/apache/xerces/xni/QName;

    new-instance v3, Lorg/apache/xerces/impl/dtd/XMLAttributeDecl;

    invoke-direct {v3}, Lorg/apache/xerces/impl/dtd/XMLAttributeDecl;-><init>()V

    iput-object v3, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->fAttributeDecl:Lorg/apache/xerces/impl/dtd/XMLAttributeDecl;

    iput v1, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->H0:I

    const/4 v3, -0x1

    iput v3, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->I0:I

    new-instance v4, Lorg/apache/xerces/impl/dtd/XMLElementDecl;

    invoke-direct {v4}, Lorg/apache/xerces/impl/dtd/XMLElementDecl;-><init>()V

    iput-object v4, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->J0:Lorg/apache/xerces/impl/dtd/XMLElementDecl;

    new-instance v4, Lorg/apache/xerces/impl/dtd/XMLEntityDecl;

    invoke-direct {v4}, Lorg/apache/xerces/impl/dtd/XMLEntityDecl;-><init>()V

    iput-object v4, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->K0:Lorg/apache/xerces/impl/dtd/XMLEntityDecl;

    new-instance v4, Lorg/apache/xerces/impl/dtd/XMLSimpleType;

    invoke-direct {v4}, Lorg/apache/xerces/impl/dtd/XMLSimpleType;-><init>()V

    iput-object v4, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->L0:Lorg/apache/xerces/impl/dtd/XMLSimpleType;

    new-instance v4, Lorg/apache/xerces/impl/dtd/XMLContentSpec;

    invoke-direct {v4}, Lorg/apache/xerces/impl/dtd/XMLContentSpec;-><init>()V

    iput-object v4, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->M0:Lorg/apache/xerces/impl/dtd/XMLContentSpec;

    new-instance v4, Ljava/util/Hashtable;

    invoke-direct {v4}, Ljava/util/Hashtable;-><init>()V

    iput-object v4, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->N0:Ljava/util/Hashtable;

    iput-object v0, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->O0:[S

    iput-object v0, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->P0:[I

    iput-object v0, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->Q0:[I

    iput v1, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->R0:I

    new-array v0, v2, [Z

    iput-object v0, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->S0:[Z

    iput v1, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->T0:I

    new-array v0, v2, [[I

    iput-object v0, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->U0:[[I

    new-array v0, v2, [[I

    iput-object v0, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->V0:[[I

    iput v3, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->W0:I

    iput v3, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->X0:I

    iput v3, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->Y0:I

    iput-object p1, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->e:Lorg/apache/xerces/util/SymbolTable;

    iput-object p2, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->fGrammarDescription:Lorg/apache/xerces/impl/dtd/XMLDTDDescription;

    return-void
.end method

.method public static m([[BI)[[B
    .locals 2

    new-array p1, p1, [[B

    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, p1, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1
.end method

.method public static n([[II)[[I
    .locals 2

    new-array p1, p1, [[I

    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, p1, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1
.end method

.method public static o([[Ljava/lang/Object;I)[[Ljava/lang/Object;
    .locals 2

    new-array p1, p1, [[Ljava/lang/Object;

    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, p1, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1
.end method

.method public static p([[Ljava/lang/String;I)[[Ljava/lang/String;
    .locals 2

    new-array p1, p1, [[Ljava/lang/String;

    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, p1, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1
.end method

.method public static q([[Lorg/apache/xerces/impl/dtd/models/ContentModelValidator;I)[[Lorg/apache/xerces/impl/dtd/models/ContentModelValidator;
    .locals 2

    new-array p1, p1, [[Lorg/apache/xerces/impl/dtd/models/ContentModelValidator;

    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, p1, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1
.end method

.method public static r([[Lorg/apache/xerces/impl/dv/DatatypeValidator;I)[[Lorg/apache/xerces/impl/dv/DatatypeValidator;
    .locals 2

    new-array p1, p1, [[Lorg/apache/xerces/impl/dv/DatatypeValidator;

    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, p1, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1
.end method

.method public static s([[Lorg/apache/xerces/xni/QName;I)[[Lorg/apache/xerces/xni/QName;
    .locals 2

    new-array p1, p1, [[Lorg/apache/xerces/xni/QName;

    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, p1, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1
.end method

.method public static t([[SI)[[S
    .locals 2

    new-array p1, p1, [[S

    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, p1, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1
.end method

.method public static u([[[Ljava/lang/String;I)[[[Ljava/lang/String;
    .locals 2

    new-array p1, p1, [[[Ljava/lang/String;

    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, p1, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1
.end method


# virtual methods
.method public final a(Lorg/apache/xerces/impl/dtd/XMLContentSpec;Ljava/lang/StringBuffer;ZI)V
    .locals 8

    iget-short v0, p1, Lorg/apache/xerces/impl/dtd/XMLContentSpec;->type:S

    and-int/lit8 v0, v0, 0xf

    const-string v1, "##any"

    const/4 v2, 0x2

    const/4 v3, 0x3

    const/16 v4, 0x29

    const/16 v5, 0x28

    const/4 v6, 0x0

    const/4 v7, 0x1

    packed-switch v0, :pswitch_data_0

    const-string p0, "???"

    goto :goto_0

    :pswitch_0
    const-string p0, "##local"

    :goto_0
    invoke-virtual {p2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_a

    :pswitch_1
    const-string p0, "##other:uri="

    :goto_1
    invoke-virtual {p2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p0, p1, Lorg/apache/xerces/impl/dtd/XMLContentSpec;->otherValue:Ljava/lang/Object;

    :cond_0
    invoke-virtual {p2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    goto/16 :goto_a

    :pswitch_2
    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p0, p1, Lorg/apache/xerces/impl/dtd/XMLContentSpec;->otherValue:Ljava/lang/Object;

    if-eqz p0, :cond_c

    const-string p0, ":uri="

    goto :goto_1

    :pswitch_3
    if-eqz p3, :cond_1

    invoke-virtual {p2, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_1
    iget-short p4, p1, Lorg/apache/xerces/impl/dtd/XMLContentSpec;->type:S

    iget-object v1, p1, Lorg/apache/xerces/impl/dtd/XMLContentSpec;->otherValue:Ljava/lang/Object;

    check-cast v1, [I

    aget v1, v1, v6

    iget-object v2, p1, Lorg/apache/xerces/impl/dtd/XMLContentSpec;->value:Ljava/lang/Object;

    check-cast v2, [I

    aget v2, v2, v6

    invoke-virtual {p0, v2, p1}, Lorg/apache/xerces/impl/dtd/DTDGrammar;->getContentSpec(ILorg/apache/xerces/impl/dtd/XMLContentSpec;)Z

    iget-short v2, p1, Lorg/apache/xerces/impl/dtd/XMLContentSpec;->type:S

    if-eq v2, p4, :cond_2

    move v6, v7

    :cond_2
    invoke-virtual {p0, p1, p2, v6, v0}, Lorg/apache/xerces/impl/dtd/DTDGrammar;->a(Lorg/apache/xerces/impl/dtd/XMLContentSpec;Ljava/lang/StringBuffer;ZI)V

    const/4 v2, 0x4

    if-ne p4, v2, :cond_3

    const/16 p4, 0x7c

    goto :goto_2

    :cond_3
    const/16 p4, 0x2c

    :goto_2
    invoke-virtual {p2, p4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {p0, v1, p1}, Lorg/apache/xerces/impl/dtd/DTDGrammar;->getContentSpec(ILorg/apache/xerces/impl/dtd/XMLContentSpec;)Z

    invoke-virtual {p0, p1, p2, v7, v0}, Lorg/apache/xerces/impl/dtd/DTDGrammar;->a(Lorg/apache/xerces/impl/dtd/XMLContentSpec;Ljava/lang/StringBuffer;ZI)V

    if-eqz p3, :cond_c

    invoke-virtual {p2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_a

    :pswitch_4
    if-eq p4, v3, :cond_5

    if-eq p4, v2, :cond_5

    if-ne p4, v7, :cond_4

    goto :goto_3

    :cond_4
    iget-object p3, p1, Lorg/apache/xerces/impl/dtd/XMLContentSpec;->value:Ljava/lang/Object;

    check-cast p3, [I

    aget p3, p3, v6

    invoke-virtual {p0, p3, p1}, Lorg/apache/xerces/impl/dtd/DTDGrammar;->getContentSpec(ILorg/apache/xerces/impl/dtd/XMLContentSpec;)Z

    invoke-virtual {p0, p1, p2, v7, v0}, Lorg/apache/xerces/impl/dtd/DTDGrammar;->a(Lorg/apache/xerces/impl/dtd/XMLContentSpec;Ljava/lang/StringBuffer;ZI)V

    goto :goto_4

    :cond_5
    :goto_3
    invoke-virtual {p2, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object p3, p1, Lorg/apache/xerces/impl/dtd/XMLContentSpec;->value:Ljava/lang/Object;

    check-cast p3, [I

    aget p3, p3, v6

    invoke-virtual {p0, p3, p1}, Lorg/apache/xerces/impl/dtd/DTDGrammar;->getContentSpec(ILorg/apache/xerces/impl/dtd/XMLContentSpec;)Z

    invoke-virtual {p0, p1, p2, v7, v0}, Lorg/apache/xerces/impl/dtd/DTDGrammar;->a(Lorg/apache/xerces/impl/dtd/XMLContentSpec;Ljava/lang/StringBuffer;ZI)V

    invoke-virtual {p2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_4
    const/16 p0, 0x2b

    goto :goto_9

    :pswitch_5
    if-eq p4, v3, :cond_7

    if-eq p4, v2, :cond_7

    if-ne p4, v7, :cond_6

    goto :goto_5

    :cond_6
    iget-object p3, p1, Lorg/apache/xerces/impl/dtd/XMLContentSpec;->value:Ljava/lang/Object;

    check-cast p3, [I

    aget p3, p3, v6

    invoke-virtual {p0, p3, p1}, Lorg/apache/xerces/impl/dtd/DTDGrammar;->getContentSpec(ILorg/apache/xerces/impl/dtd/XMLContentSpec;)Z

    invoke-virtual {p0, p1, p2, v7, v0}, Lorg/apache/xerces/impl/dtd/DTDGrammar;->a(Lorg/apache/xerces/impl/dtd/XMLContentSpec;Ljava/lang/StringBuffer;ZI)V

    goto :goto_6

    :cond_7
    :goto_5
    iget-object p3, p1, Lorg/apache/xerces/impl/dtd/XMLContentSpec;->value:Ljava/lang/Object;

    check-cast p3, [I

    aget p3, p3, v6

    invoke-virtual {p0, p3, p1}, Lorg/apache/xerces/impl/dtd/DTDGrammar;->getContentSpec(ILorg/apache/xerces/impl/dtd/XMLContentSpec;)Z

    invoke-virtual {p2, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {p0, p1, p2, v7, v0}, Lorg/apache/xerces/impl/dtd/DTDGrammar;->a(Lorg/apache/xerces/impl/dtd/XMLContentSpec;Ljava/lang/StringBuffer;ZI)V

    invoke-virtual {p2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_6
    const/16 p0, 0x2a

    goto :goto_9

    :pswitch_6
    if-eq p4, v3, :cond_9

    if-eq p4, v2, :cond_9

    if-ne p4, v7, :cond_8

    goto :goto_7

    :cond_8
    iget-object p3, p1, Lorg/apache/xerces/impl/dtd/XMLContentSpec;->value:Ljava/lang/Object;

    check-cast p3, [I

    aget p3, p3, v6

    invoke-virtual {p0, p3, p1}, Lorg/apache/xerces/impl/dtd/DTDGrammar;->getContentSpec(ILorg/apache/xerces/impl/dtd/XMLContentSpec;)Z

    invoke-virtual {p0, p1, p2, v7, v0}, Lorg/apache/xerces/impl/dtd/DTDGrammar;->a(Lorg/apache/xerces/impl/dtd/XMLContentSpec;Ljava/lang/StringBuffer;ZI)V

    goto :goto_8

    :cond_9
    :goto_7
    iget-object p3, p1, Lorg/apache/xerces/impl/dtd/XMLContentSpec;->value:Ljava/lang/Object;

    check-cast p3, [I

    aget p3, p3, v6

    invoke-virtual {p0, p3, p1}, Lorg/apache/xerces/impl/dtd/DTDGrammar;->getContentSpec(ILorg/apache/xerces/impl/dtd/XMLContentSpec;)Z

    invoke-virtual {p2, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {p0, p1, p2, v7, v0}, Lorg/apache/xerces/impl/dtd/DTDGrammar;->a(Lorg/apache/xerces/impl/dtd/XMLContentSpec;Ljava/lang/StringBuffer;ZI)V

    invoke-virtual {p2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_8
    const/16 p0, 0x3f

    :goto_9
    invoke-virtual {p2, p0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_a

    :pswitch_7
    iget-object p0, p1, Lorg/apache/xerces/impl/dtd/XMLContentSpec;->value:Ljava/lang/Object;

    if-nez p0, :cond_a

    iget-object p3, p1, Lorg/apache/xerces/impl/dtd/XMLContentSpec;->otherValue:Ljava/lang/Object;

    if-nez p3, :cond_a

    const-string p0, "#PCDATA"

    goto/16 :goto_0

    :cond_a
    if-nez p0, :cond_b

    iget-object p3, p1, Lorg/apache/xerces/impl/dtd/XMLContentSpec;->otherValue:Ljava/lang/Object;

    if-eqz p3, :cond_b

    const-string p0, "##any:uri="

    goto/16 :goto_1

    :cond_b
    if-nez p0, :cond_0

    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_c
    :goto_a
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public addContentSpecNode(SII)I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/apache/xerces/impl/dtd/DTDGrammar;->createContentSpec()I

    move-result v0

    filled-new-array {p2}, [I

    move-result-object p2

    filled-new-array {p3}, [I

    move-result-object p3

    iget-object v1, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->M0:Lorg/apache/xerces/impl/dtd/XMLContentSpec;

    invoke-virtual {v1, p1, p2, p3}, Lorg/apache/xerces/impl/dtd/XMLContentSpec;->setValues(SLjava/lang/Object;Ljava/lang/Object;)V

    iget-object p1, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->M0:Lorg/apache/xerces/impl/dtd/XMLContentSpec;

    invoke-virtual {p0, v0, p1}, Lorg/apache/xerces/impl/dtd/DTDGrammar;->setContentSpec(ILorg/apache/xerces/impl/dtd/XMLContentSpec;)V

    return v0
.end method

.method public addContentSpecNode(SLjava/lang/String;)I
    .locals 3

    .line 2
    invoke-virtual {p0}, Lorg/apache/xerces/impl/dtd/DTDGrammar;->createContentSpec()I

    move-result v0

    iget-object v1, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->M0:Lorg/apache/xerces/impl/dtd/XMLContentSpec;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, p2, v2}, Lorg/apache/xerces/impl/dtd/XMLContentSpec;->setValues(SLjava/lang/Object;Ljava/lang/Object;)V

    iget-object p1, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->M0:Lorg/apache/xerces/impl/dtd/XMLContentSpec;

    invoke-virtual {p0, v0, p1}, Lorg/apache/xerces/impl/dtd/DTDGrammar;->setContentSpec(ILorg/apache/xerces/impl/dtd/XMLContentSpec;)V

    return v0
.end method

.method public addContentSpecToElement(Lorg/apache/xerces/impl/dtd/XMLElementDecl;)V
    .locals 4

    iget v0, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->R0:I

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    iget-short v0, p1, Lorg/apache/xerces/impl/dtd/XMLElementDecl;->type:S

    if-ne v0, v1, :cond_3

    :cond_0
    iget-object v0, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->P0:[I

    if-eqz v0, :cond_3

    iget-short p1, p1, Lorg/apache/xerces/impl/dtd/XMLElementDecl;->type:S

    if-ne p1, v1, :cond_2

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lorg/apache/xerces/impl/dtd/DTDGrammar;->addUniqueLeafNode(Ljava/lang/String;)I

    move-result p1

    iget-object v0, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->P0:[I

    const/4 v1, 0x0

    aget v2, v0, v1

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    aput p1, v0, v1

    goto :goto_0

    :cond_1
    const/4 v3, 0x4

    invoke-virtual {p0, v3, p1, v2}, Lorg/apache/xerces/impl/dtd/DTDGrammar;->addContentSpecNode(SII)I

    move-result p1

    aput p1, v0, v1

    :cond_2
    :goto_0
    iget p1, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->fCurrentElementIndex:I

    iget-object v0, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->P0:[I

    iget v1, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->R0:I

    aget v0, v0, v1

    invoke-virtual {p0, p1, v0}, Lorg/apache/xerces/impl/dtd/DTDGrammar;->setContentSpecIndex(II)V

    :cond_3
    return-void
.end method

.method public addUniqueLeafNode(Ljava/lang/String;)I
    .locals 4

    invoke-virtual {p0}, Lorg/apache/xerces/impl/dtd/DTDGrammar;->createContentSpec()I

    move-result v0

    iget-object v1, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->M0:Lorg/apache/xerces/impl/dtd/XMLContentSpec;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Lorg/apache/xerces/impl/dtd/XMLContentSpec;->setValues(SLjava/lang/Object;Ljava/lang/Object;)V

    iget-object p1, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->M0:Lorg/apache/xerces/impl/dtd/XMLContentSpec;

    invoke-virtual {p0, v0, p1}, Lorg/apache/xerces/impl/dtd/DTDGrammar;->setContentSpec(ILorg/apache/xerces/impl/dtd/XMLContentSpec;)V

    return v0
.end method

.method public any(Lorg/apache/xerces/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    return-void
.end method

.method public attributeDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lorg/apache/xerces/xni/XMLString;Lorg/apache/xerces/xni/XMLString;Lorg/apache/xerces/xni/Augmentations;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-object p8, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->N0:Ljava/util/Hashtable;

    invoke-virtual {p8, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result p8

    const/4 v0, -0x1

    const/4 v1, 0x0

    if-eqz p8, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/xerces/impl/dtd/DTDGrammar;->createElementDecl()I

    move-result p8

    iput p8, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->fCurrentElementIndex:I

    new-instance p8, Lorg/apache/xerces/impl/dtd/XMLElementDecl;

    invoke-direct {p8}, Lorg/apache/xerces/impl/dtd/XMLElementDecl;-><init>()V

    iget-object v2, p8, Lorg/apache/xerces/impl/dtd/XMLElementDecl;->name:Lorg/apache/xerces/xni/QName;

    invoke-virtual {v2, v1, p1, p1, v1}, Lorg/apache/xerces/xni/QName;->setValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput v0, p8, Lorg/apache/xerces/impl/dtd/XMLElementDecl;->scope:I

    iget-object v2, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->N0:Ljava/util/Hashtable;

    invoke-virtual {v2, p1, p8}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v2, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->fCurrentElementIndex:I

    invoke-virtual {p0, v2, p8}, Lorg/apache/xerces/impl/dtd/DTDGrammar;->setElementDecl(ILorg/apache/xerces/impl/dtd/XMLElementDecl;)V

    :goto_0
    invoke-virtual {p0, p1}, Lorg/apache/xerces/impl/dtd/DTDGrammar;->getElementDeclIndex(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lorg/apache/xerces/impl/dtd/DTDGrammar;->getAttributeDeclIndex(ILjava/lang/String;)I

    move-result p8

    if-eq p8, v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lorg/apache/xerces/impl/dtd/DTDGrammar;->createAttributeDecl()I

    move-result p8

    iput p8, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->fCurrentAttributeIndex:I

    iget-object p8, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->L0:Lorg/apache/xerces/impl/dtd/XMLSimpleType;

    invoke-virtual {p8}, Lorg/apache/xerces/impl/dtd/XMLSimpleType;->clear()V

    const/4 p8, 0x2

    const/4 v0, 0x0

    const/4 v2, 0x1

    if-eqz p5, :cond_4

    const-string v3, "#FIXED"

    invoke-virtual {p5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object p5, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->L0:Lorg/apache/xerces/impl/dtd/XMLSimpleType;

    iput-short v2, p5, Lorg/apache/xerces/impl/dtd/XMLSimpleType;->defaultType:S

    goto :goto_1

    :cond_2
    const-string v3, "#IMPLIED"

    invoke-virtual {p5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object p5, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->L0:Lorg/apache/xerces/impl/dtd/XMLSimpleType;

    iput-short v0, p5, Lorg/apache/xerces/impl/dtd/XMLSimpleType;->defaultType:S

    goto :goto_1

    :cond_3
    const-string v3, "#REQUIRED"

    invoke-virtual {p5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_4

    iget-object p5, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->L0:Lorg/apache/xerces/impl/dtd/XMLSimpleType;

    iput-short p8, p5, Lorg/apache/xerces/impl/dtd/XMLSimpleType;->defaultType:S

    :cond_4
    :goto_1
    iget-object p5, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->L0:Lorg/apache/xerces/impl/dtd/XMLSimpleType;

    if-eqz p6, :cond_5

    invoke-virtual {p6}, Lorg/apache/xerces/xni/XMLString;->toString()Ljava/lang/String;

    move-result-object p6

    goto :goto_2

    :cond_5
    move-object p6, v1

    :goto_2
    iput-object p6, p5, Lorg/apache/xerces/impl/dtd/XMLSimpleType;->defaultValue:Ljava/lang/String;

    iget-object p5, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->L0:Lorg/apache/xerces/impl/dtd/XMLSimpleType;

    if-eqz p7, :cond_6

    invoke-virtual {p7}, Lorg/apache/xerces/xni/XMLString;->toString()Ljava/lang/String;

    move-result-object p6

    goto :goto_3

    :cond_6
    move-object p6, v1

    :goto_3
    iput-object p6, p5, Lorg/apache/xerces/impl/dtd/XMLSimpleType;->nonNormalizedDefaultValue:Ljava/lang/String;

    iget-object p5, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->L0:Lorg/apache/xerces/impl/dtd/XMLSimpleType;

    iput-object p4, p5, Lorg/apache/xerces/impl/dtd/XMLSimpleType;->enumeration:[Ljava/lang/String;

    const-string p4, "CDATA"

    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_7

    iget-object p3, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->L0:Lorg/apache/xerces/impl/dtd/XMLSimpleType;

    iput-short v0, p3, Lorg/apache/xerces/impl/dtd/XMLSimpleType;->type:S

    goto/16 :goto_6

    :cond_7
    const-string p4, "ID"

    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_8

    iget-object p3, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->L0:Lorg/apache/xerces/impl/dtd/XMLSimpleType;

    const/4 p4, 0x3

    :goto_4
    iput-short p4, p3, Lorg/apache/xerces/impl/dtd/XMLSimpleType;->type:S

    goto/16 :goto_6

    :cond_8
    const-string p4, "IDREF"

    invoke-virtual {p3, p4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_9

    iget-object p4, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->L0:Lorg/apache/xerces/impl/dtd/XMLSimpleType;

    const/4 p5, 0x4

    iput-short p5, p4, Lorg/apache/xerces/impl/dtd/XMLSimpleType;->type:S

    const-string p4, "S"

    invoke-virtual {p3, p4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p3

    if-lez p3, :cond_10

    iget-object p3, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->L0:Lorg/apache/xerces/impl/dtd/XMLSimpleType;

    goto :goto_5

    :cond_9
    const-string p4, "ENTITIES"

    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_a

    iget-object p3, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->L0:Lorg/apache/xerces/impl/dtd/XMLSimpleType;

    iput-short v2, p3, Lorg/apache/xerces/impl/dtd/XMLSimpleType;->type:S

    :goto_5
    iput-boolean v2, p3, Lorg/apache/xerces/impl/dtd/XMLSimpleType;->list:Z

    goto :goto_6

    :cond_a
    const-string p4, "ENTITY"

    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_b

    iget-object p3, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->L0:Lorg/apache/xerces/impl/dtd/XMLSimpleType;

    iput-short v2, p3, Lorg/apache/xerces/impl/dtd/XMLSimpleType;->type:S

    goto :goto_6

    :cond_b
    const-string p4, "NMTOKENS"

    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    const/4 p5, 0x5

    if-eqz p4, :cond_c

    iget-object p3, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->L0:Lorg/apache/xerces/impl/dtd/XMLSimpleType;

    iput-short p5, p3, Lorg/apache/xerces/impl/dtd/XMLSimpleType;->type:S

    goto :goto_5

    :cond_c
    const-string p4, "NMTOKEN"

    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_d

    iget-object p3, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->L0:Lorg/apache/xerces/impl/dtd/XMLSimpleType;

    iput-short p5, p3, Lorg/apache/xerces/impl/dtd/XMLSimpleType;->type:S

    goto :goto_6

    :cond_d
    const-string p4, "NOTATION"

    invoke-virtual {p3, p4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_e

    iget-object p3, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->L0:Lorg/apache/xerces/impl/dtd/XMLSimpleType;

    const/4 p4, 0x6

    goto :goto_4

    :cond_e
    const-string p4, "ENUMERATION"

    invoke-virtual {p3, p4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_f

    iget-object p3, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->L0:Lorg/apache/xerces/impl/dtd/XMLSimpleType;

    iput-short p8, p3, Lorg/apache/xerces/impl/dtd/XMLSimpleType;->type:S

    goto :goto_6

    :cond_f
    sget-object p4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance p5, Ljava/lang/StringBuffer;

    invoke-direct {p5}, Ljava/lang/StringBuffer;-><init>()V

    const-string p6, "!!! unknown attribute type "

    invoke-virtual {p5, p6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p5, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p4, p3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_10
    :goto_6
    iget-object p3, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->F0:Lorg/apache/xerces/xni/QName;

    invoke-virtual {p3, v1, p2, p2, v1}, Lorg/apache/xerces/xni/QName;->setValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->fAttributeDecl:Lorg/apache/xerces/impl/dtd/XMLAttributeDecl;

    iget-object p3, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->F0:Lorg/apache/xerces/xni/QName;

    iget-object p4, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->L0:Lorg/apache/xerces/impl/dtd/XMLSimpleType;

    invoke-virtual {p2, p3, p4, v0}, Lorg/apache/xerces/impl/dtd/XMLAttributeDecl;->setValues(Lorg/apache/xerces/xni/QName;Lorg/apache/xerces/impl/dtd/XMLSimpleType;Z)V

    iget p2, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->fCurrentAttributeIndex:I

    iget-object p3, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->fAttributeDecl:Lorg/apache/xerces/impl/dtd/XMLAttributeDecl;

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/xerces/impl/dtd/DTDGrammar;->setAttributeDecl(IILorg/apache/xerces/impl/dtd/XMLAttributeDecl;)V

    iget p1, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->fCurrentAttributeIndex:I

    shr-int/lit8 p2, p1, 0x8

    and-int/lit16 p1, p1, 0xff

    invoke-virtual {p0, p2}, Lorg/apache/xerces/impl/dtd/DTDGrammar;->e(I)V

    iget-object p3, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->V0:[[I

    aget-object p2, p3, p2

    iget-boolean p3, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->fReadingExternalDTD:Z

    if-nez p3, :cond_11

    iget p0, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->T0:I

    if-lez p0, :cond_12

    :cond_11
    move v0, v2

    :cond_12
    aput v0, p2, p1

    return-void
.end method

.method public final b(ILorg/apache/xerces/impl/dtd/XMLContentSpec;)Lorg/apache/xerces/impl/dtd/models/CMNode;
    .locals 3

    invoke-virtual {p0, p1, p2}, Lorg/apache/xerces/impl/dtd/DTDGrammar;->getContentSpec(ILorg/apache/xerces/impl/dtd/XMLContentSpec;)Z

    iget-short p1, p2, Lorg/apache/xerces/impl/dtd/XMLContentSpec;->type:S

    and-int/lit8 v0, p1, 0xf

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    new-instance v0, Lorg/apache/xerces/impl/dtd/models/CMAny;

    iget-object p2, p2, Lorg/apache/xerces/impl/dtd/XMLContentSpec;->otherValue:Ljava/lang/Object;

    check-cast p2, Ljava/lang/String;

    iget v1, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->H0:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->H0:I

    invoke-direct {v0, p1, p2, v1}, Lorg/apache/xerces/impl/dtd/models/CMAny;-><init>(ILjava/lang/String;I)V

    goto/16 :goto_3

    :cond_0
    and-int/lit8 v0, p1, 0xf

    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    new-instance v0, Lorg/apache/xerces/impl/dtd/models/CMAny;

    iget-object p2, p2, Lorg/apache/xerces/impl/dtd/XMLContentSpec;->otherValue:Ljava/lang/Object;

    check-cast p2, Ljava/lang/String;

    iget v1, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->H0:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->H0:I

    invoke-direct {v0, p1, p2, v1}, Lorg/apache/xerces/impl/dtd/models/CMAny;-><init>(ILjava/lang/String;I)V

    goto/16 :goto_3

    :cond_1
    and-int/lit8 v0, p1, 0xf

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2

    new-instance v0, Lorg/apache/xerces/impl/dtd/models/CMAny;

    iget p2, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->H0:I

    add-int/lit8 v1, p2, 0x1

    iput v1, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->H0:I

    invoke-direct {v0, p1, v2, p2}, Lorg/apache/xerces/impl/dtd/models/CMAny;-><init>(ILjava/lang/String;I)V

    goto/16 :goto_3

    :cond_2
    if-nez p1, :cond_3

    iget-object p1, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->F0:Lorg/apache/xerces/xni/QName;

    iget-object v0, p2, Lorg/apache/xerces/impl/dtd/XMLContentSpec;->value:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    check-cast v0, Ljava/lang/String;

    iget-object p2, p2, Lorg/apache/xerces/impl/dtd/XMLContentSpec;->otherValue:Ljava/lang/Object;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, v2, v1, v0, p2}, Lorg/apache/xerces/xni/QName;->setValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lorg/apache/xerces/impl/dtd/models/CMLeaf;

    iget-object p1, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->F0:Lorg/apache/xerces/xni/QName;

    iget p2, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->H0:I

    add-int/lit8 v1, p2, 0x1

    iput v1, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->H0:I

    invoke-direct {v0, p1, p2}, Lorg/apache/xerces/impl/dtd/models/CMLeaf;-><init>(Lorg/apache/xerces/xni/QName;I)V

    goto :goto_3

    :cond_3
    iget-object v0, p2, Lorg/apache/xerces/impl/dtd/XMLContentSpec;->value:Ljava/lang/Object;

    check-cast v0, [I

    const/4 v1, 0x0

    aget v0, v0, v1

    iget-object v2, p2, Lorg/apache/xerces/impl/dtd/XMLContentSpec;->otherValue:Ljava/lang/Object;

    check-cast v2, [I

    aget v1, v2, v1

    const/4 v2, 0x4

    if-eq p1, v2, :cond_8

    const/4 v2, 0x5

    if-ne p1, v2, :cond_4

    goto :goto_2

    :cond_4
    const/4 v1, 0x2

    if-ne p1, v1, :cond_5

    new-instance v1, Lorg/apache/xerces/impl/dtd/models/CMUniOp;

    invoke-virtual {p0, v0, p2}, Lorg/apache/xerces/impl/dtd/DTDGrammar;->b(ILorg/apache/xerces/impl/dtd/XMLContentSpec;)Lorg/apache/xerces/impl/dtd/models/CMNode;

    move-result-object p0

    invoke-direct {v1, p1, p0}, Lorg/apache/xerces/impl/dtd/models/CMUniOp;-><init>(ILorg/apache/xerces/impl/dtd/models/CMNode;)V

    :goto_0
    move-object v0, v1

    goto :goto_3

    :cond_5
    if-eq p1, v1, :cond_7

    const/4 v1, 0x1

    if-eq p1, v1, :cond_7

    const/4 v1, 0x3

    if-ne p1, v1, :cond_6

    goto :goto_1

    :cond_6
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "ImplementationMessages.VAL_CST"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    :goto_1
    new-instance v1, Lorg/apache/xerces/impl/dtd/models/CMUniOp;

    invoke-virtual {p0, v0, p2}, Lorg/apache/xerces/impl/dtd/DTDGrammar;->b(ILorg/apache/xerces/impl/dtd/XMLContentSpec;)Lorg/apache/xerces/impl/dtd/models/CMNode;

    move-result-object p0

    invoke-direct {v1, p1, p0}, Lorg/apache/xerces/impl/dtd/models/CMUniOp;-><init>(ILorg/apache/xerces/impl/dtd/models/CMNode;)V

    goto :goto_0

    :cond_8
    :goto_2
    new-instance v2, Lorg/apache/xerces/impl/dtd/models/CMBinOp;

    invoke-virtual {p0, v0, p2}, Lorg/apache/xerces/impl/dtd/DTDGrammar;->b(ILorg/apache/xerces/impl/dtd/XMLContentSpec;)Lorg/apache/xerces/impl/dtd/models/CMNode;

    move-result-object v0

    invoke-virtual {p0, v1, p2}, Lorg/apache/xerces/impl/dtd/DTDGrammar;->b(ILorg/apache/xerces/impl/dtd/XMLContentSpec;)Lorg/apache/xerces/impl/dtd/models/CMNode;

    move-result-object p0

    invoke-direct {v2, p1, v0, p0}, Lorg/apache/xerces/impl/dtd/models/CMBinOp;-><init>(ILorg/apache/xerces/impl/dtd/models/CMNode;Lorg/apache/xerces/impl/dtd/models/CMNode;)V

    move-object v0, v2

    :goto_3
    return-object v0
.end method

.method public final c(ILorg/apache/xerces/impl/dtd/XMLContentSpec;Lorg/apache/xerces/impl/dtd/DTDGrammar$a;)V
    .locals 6

    invoke-virtual {p0, p1, p2}, Lorg/apache/xerces/impl/dtd/DTDGrammar;->getContentSpec(ILorg/apache/xerces/impl/dtd/XMLContentSpec;)Z

    iget-short p1, p2, Lorg/apache/xerces/impl/dtd/XMLContentSpec;->type:S

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_7

    and-int/lit8 v2, p1, 0xf

    const/4 v3, 0x6

    if-eq v2, v3, :cond_7

    and-int/lit8 v2, p1, 0xf

    const/16 v3, 0x8

    if-eq v2, v3, :cond_7

    and-int/lit8 v2, p1, 0xf

    const/4 v3, 0x7

    if-ne v2, v3, :cond_0

    goto :goto_3

    :cond_0
    iget-object v2, p2, Lorg/apache/xerces/impl/dtd/XMLContentSpec;->value:Ljava/lang/Object;

    if-eqz v2, :cond_1

    check-cast v2, [I

    aget v2, v2, v1

    goto :goto_0

    :cond_1
    const/4 v2, -0x1

    :goto_0
    iget-object v3, p2, Lorg/apache/xerces/impl/dtd/XMLContentSpec;->otherValue:Ljava/lang/Object;

    if-eqz v3, :cond_6

    check-cast v3, [I

    aget v1, v3, v1

    const/4 v3, 0x4

    if-eq p1, v3, :cond_5

    const/4 v3, 0x5

    if-ne p1, v3, :cond_2

    goto :goto_2

    :cond_2
    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_4

    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    goto :goto_1

    :cond_3
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    const-string p3, "Invalid content spec type seen in contentSpecTree() method of AbstractDTDGrammar class : "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-short p2, p2, Lorg/apache/xerces/impl/dtd/XMLContentSpec;->type:S

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    :goto_1
    invoke-virtual {p0, v2, p2, p3}, Lorg/apache/xerces/impl/dtd/DTDGrammar;->c(ILorg/apache/xerces/impl/dtd/XMLContentSpec;Lorg/apache/xerces/impl/dtd/DTDGrammar$a;)V

    return-void

    :cond_5
    :goto_2
    invoke-virtual {p0, v2, p2, p3}, Lorg/apache/xerces/impl/dtd/DTDGrammar;->c(ILorg/apache/xerces/impl/dtd/XMLContentSpec;Lorg/apache/xerces/impl/dtd/DTDGrammar$a;)V

    invoke-virtual {p0, v1, p2, p3}, Lorg/apache/xerces/impl/dtd/DTDGrammar;->c(ILorg/apache/xerces/impl/dtd/XMLContentSpec;Lorg/apache/xerces/impl/dtd/DTDGrammar$a;)V

    :cond_6
    return-void

    :cond_7
    :goto_3
    iget p0, p3, Lorg/apache/xerces/impl/dtd/DTDGrammar$a;->a:I

    iget-object p1, p3, Lorg/apache/xerces/impl/dtd/DTDGrammar$a;->b:[Lorg/apache/xerces/xni/QName;

    array-length v2, p1

    if-ne p0, v2, :cond_8

    mul-int/lit8 v2, p0, 0x2

    new-array v2, v2, [Lorg/apache/xerces/xni/QName;

    invoke-static {p1, v1, v2, v1, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, p3, Lorg/apache/xerces/impl/dtd/DTDGrammar$a;->b:[Lorg/apache/xerces/xni/QName;

    iget p0, p3, Lorg/apache/xerces/impl/dtd/DTDGrammar$a;->a:I

    mul-int/lit8 p1, p0, 0x2

    new-array p1, p1, [I

    iget-object v2, p3, Lorg/apache/xerces/impl/dtd/DTDGrammar$a;->c:[I

    invoke-static {v2, v1, p1, v1, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object p1, p3, Lorg/apache/xerces/impl/dtd/DTDGrammar$a;->c:[I

    :cond_8
    iget-object p0, p3, Lorg/apache/xerces/impl/dtd/DTDGrammar$a;->b:[Lorg/apache/xerces/xni/QName;

    iget p1, p3, Lorg/apache/xerces/impl/dtd/DTDGrammar$a;->a:I

    new-instance v1, Lorg/apache/xerces/xni/QName;

    iget-object v2, p2, Lorg/apache/xerces/impl/dtd/XMLContentSpec;->value:Ljava/lang/Object;

    move-object v3, v2

    check-cast v3, Ljava/lang/String;

    check-cast v2, Ljava/lang/String;

    iget-object v4, p2, Lorg/apache/xerces/impl/dtd/XMLContentSpec;->otherValue:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    const/4 v5, 0x0

    invoke-direct {v1, v5, v3, v2, v4}, Lorg/apache/xerces/xni/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, p0, p1

    iget-object p0, p3, Lorg/apache/xerces/impl/dtd/DTDGrammar$a;->c:[I

    iget p1, p3, Lorg/apache/xerces/impl/dtd/DTDGrammar$a;->a:I

    iget-short p2, p2, Lorg/apache/xerces/impl/dtd/XMLContentSpec;->type:S

    aput p2, p0, p1

    add-int/2addr p1, v0

    iput p1, p3, Lorg/apache/xerces/impl/dtd/DTDGrammar$a;->a:I

    return-void
.end method

.method public comment(Lorg/apache/xerces/xni/XMLString;Lorg/apache/xerces/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    return-void
.end method

.method public createAttributeDecl()I
    .locals 6

    iget v0, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->m:I

    shr-int/lit8 v1, v0, 0x8

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v1}, Lorg/apache/xerces/impl/dtd/DTDGrammar;->e(I)V

    iget-object v2, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->n:[[Lorg/apache/xerces/xni/QName;

    aget-object v2, v2, v1

    new-instance v3, Lorg/apache/xerces/xni/QName;

    invoke-direct {v3}, Lorg/apache/xerces/xni/QName;-><init>()V

    aput-object v3, v2, v0

    iget-object v2, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->p:[[S

    aget-object v2, v2, v1

    const/4 v3, -0x1

    aput-short v3, v2, v0

    iget-object v2, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->s:[[Lorg/apache/xerces/impl/dv/DatatypeValidator;

    aget-object v2, v2, v1

    const/4 v4, 0x0

    aput-object v4, v2, v0

    iget-object v2, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->q:[[[Ljava/lang/String;

    aget-object v2, v2, v1

    aput-object v4, v2, v0

    iget-object v2, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->r:[[S

    aget-object v2, v2, v1

    const/4 v5, 0x0

    aput-short v5, v2, v0

    iget-object v2, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->t:[[Ljava/lang/String;

    aget-object v2, v2, v1

    aput-object v4, v2, v0

    iget-object v2, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->u:[[Ljava/lang/String;

    aget-object v2, v2, v1

    aput-object v4, v2, v0

    iget-object v2, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->v:[[I

    aget-object v1, v2, v1

    aput v3, v1, v0

    iget v0, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->m:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->m:I

    return v0
.end method

.method public createContentSpec()I
    .locals 4

    iget v0, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->w:I

    shr-int/lit8 v1, v0, 0x8

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v1}, Lorg/apache/xerces/impl/dtd/DTDGrammar;->f(I)V

    iget-object v2, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->x:[[S

    aget-object v2, v2, v1

    const/4 v3, -0x1

    aput-short v3, v2, v0

    iget-object v2, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->y:[[Ljava/lang/Object;

    aget-object v2, v2, v1

    const/4 v3, 0x0

    aput-object v3, v2, v0

    iget-object v2, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->z:[[Ljava/lang/Object;

    aget-object v1, v2, v1

    aput-object v3, v1, v0

    iget v0, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->w:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->w:I

    return v0
.end method

.method public createElementDecl()I
    .locals 5

    iget v0, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->f:I

    shr-int/lit8 v1, v0, 0x8

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v1}, Lorg/apache/xerces/impl/dtd/DTDGrammar;->g(I)V

    iget-object v2, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->g:[[Lorg/apache/xerces/xni/QName;

    aget-object v2, v2, v1

    new-instance v3, Lorg/apache/xerces/xni/QName;

    invoke-direct {v3}, Lorg/apache/xerces/xni/QName;-><init>()V

    aput-object v3, v2, v0

    iget-object v2, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->h:[[S

    aget-object v2, v2, v1

    const/4 v3, -0x1

    aput-short v3, v2, v0

    iget-object v2, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->j:[[Lorg/apache/xerces/impl/dtd/models/ContentModelValidator;

    aget-object v2, v2, v1

    const/4 v4, 0x0

    aput-object v4, v2, v0

    iget-object v2, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->k:[[I

    aget-object v2, v2, v1

    aput v3, v2, v0

    iget-object v2, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->l:[[I

    aget-object v1, v2, v1

    aput v3, v1, v0

    iget v0, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->f:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->f:I

    return v0
.end method

.method public createEntityDecl()I
    .locals 4

    iget v0, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->J:I

    shr-int/lit8 v1, v0, 0x8

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v1}, Lorg/apache/xerces/impl/dtd/DTDGrammar;->h(I)V

    iget-object v2, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->u0:[[B

    aget-object v2, v2, v1

    const/4 v3, 0x0

    aput-byte v3, v2, v0

    iget-object v2, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->v0:[[B

    aget-object v1, v2, v1

    aput-byte v3, v1, v0

    iget v0, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->J:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->J:I

    return v0
.end method

.method public createNotationDecl()I
    .locals 2

    iget v0, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->w0:I

    shr-int/lit8 v0, v0, 0x8

    invoke-virtual {p0, v0}, Lorg/apache/xerces/impl/dtd/DTDGrammar;->i(I)V

    iget v0, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->w0:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->w0:I

    return v0
.end method

.method public final declared-synchronized d(I)Lorg/apache/xerces/impl/dtd/models/ContentModelValidator;
    .locals 6

    monitor-enter p0

    :try_start_0
    new-instance v0, Lorg/apache/xerces/impl/dtd/XMLContentSpec;

    invoke-direct {v0}, Lorg/apache/xerces/impl/dtd/XMLContentSpec;-><init>()V

    invoke-virtual {p0, p1, v0}, Lorg/apache/xerces/impl/dtd/DTDGrammar;->getContentSpec(ILorg/apache/xerces/impl/dtd/XMLContentSpec;)Z

    iget-short v1, v0, Lorg/apache/xerces/impl/dtd/XMLContentSpec;->type:S

    and-int/lit8 v2, v1, 0xf

    const/4 v3, 0x6

    const/4 v4, 0x0

    if-eq v2, v3, :cond_8

    and-int/lit8 v2, v1, 0xf

    const/4 v3, 0x7

    if-eq v2, v3, :cond_8

    and-int/lit8 v2, v1, 0xf

    const/16 v3, 0x8

    if-ne v2, v3, :cond_0

    goto/16 :goto_3

    :cond_0
    const/4 v2, 0x0

    if-nez v1, :cond_3

    iget-object p1, v0, Lorg/apache/xerces/impl/dtd/XMLContentSpec;->value:Ljava/lang/Object;

    if-nez p1, :cond_2

    iget-object v1, v0, Lorg/apache/xerces/impl/dtd/XMLContentSpec;->otherValue:Ljava/lang/Object;

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "ImplementationMessages.VAL_NPCD"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    iget-object v1, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->F0:Lorg/apache/xerces/xni/QName;

    move-object v3, p1

    check-cast v3, Ljava/lang/String;

    check-cast p1, Ljava/lang/String;

    iget-object v4, v0, Lorg/apache/xerces/impl/dtd/XMLContentSpec;->otherValue:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v2, v3, p1, v4}, Lorg/apache/xerces/xni/QName;->setValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lorg/apache/xerces/impl/dtd/models/SimpleContentModel;

    iget-short v0, v0, Lorg/apache/xerces/impl/dtd/XMLContentSpec;->type:S

    iget-object v1, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->F0:Lorg/apache/xerces/xni/QName;

    invoke-direct {p1, v0, v1, v2}, Lorg/apache/xerces/impl/dtd/models/SimpleContentModel;-><init>(SLorg/apache/xerces/xni/QName;Lorg/apache/xerces/xni/QName;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_3
    const/4 v3, 0x4

    if-eq v1, v3, :cond_7

    const/4 v3, 0x5

    if-ne v1, v3, :cond_4

    goto :goto_2

    :cond_4
    const/4 v3, 0x1

    if-eq v1, v3, :cond_6

    const/4 v3, 0x2

    if-eq v1, v3, :cond_6

    const/4 v3, 0x3

    if-ne v1, v3, :cond_5

    goto :goto_1

    :cond_5
    :try_start_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "ImplementationMessages.VAL_CST"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    :goto_1
    new-instance v1, Lorg/apache/xerces/impl/dtd/XMLContentSpec;

    invoke-direct {v1}, Lorg/apache/xerces/impl/dtd/XMLContentSpec;-><init>()V

    iget-object v3, v0, Lorg/apache/xerces/impl/dtd/XMLContentSpec;->value:Ljava/lang/Object;

    check-cast v3, [I

    aget v3, v3, v4

    invoke-virtual {p0, v3, v1}, Lorg/apache/xerces/impl/dtd/DTDGrammar;->getContentSpec(ILorg/apache/xerces/impl/dtd/XMLContentSpec;)Z

    iget-short v3, v1, Lorg/apache/xerces/impl/dtd/XMLContentSpec;->type:S

    if-nez v3, :cond_8

    iget-object p1, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->F0:Lorg/apache/xerces/xni/QName;

    iget-object v3, v1, Lorg/apache/xerces/impl/dtd/XMLContentSpec;->value:Ljava/lang/Object;

    move-object v4, v3

    check-cast v4, Ljava/lang/String;

    check-cast v3, Ljava/lang/String;

    iget-object v1, v1, Lorg/apache/xerces/impl/dtd/XMLContentSpec;->otherValue:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v2, v4, v3, v1}, Lorg/apache/xerces/xni/QName;->setValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lorg/apache/xerces/impl/dtd/models/SimpleContentModel;

    iget-short v0, v0, Lorg/apache/xerces/impl/dtd/XMLContentSpec;->type:S

    iget-object v1, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->F0:Lorg/apache/xerces/xni/QName;

    invoke-direct {p1, v0, v1, v2}, Lorg/apache/xerces/impl/dtd/models/SimpleContentModel;-><init>(SLorg/apache/xerces/xni/QName;Lorg/apache/xerces/xni/QName;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_7
    :goto_2
    :try_start_2
    new-instance v1, Lorg/apache/xerces/impl/dtd/XMLContentSpec;

    invoke-direct {v1}, Lorg/apache/xerces/impl/dtd/XMLContentSpec;-><init>()V

    new-instance v3, Lorg/apache/xerces/impl/dtd/XMLContentSpec;

    invoke-direct {v3}, Lorg/apache/xerces/impl/dtd/XMLContentSpec;-><init>()V

    iget-object v5, v0, Lorg/apache/xerces/impl/dtd/XMLContentSpec;->value:Ljava/lang/Object;

    check-cast v5, [I

    aget v5, v5, v4

    invoke-virtual {p0, v5, v1}, Lorg/apache/xerces/impl/dtd/DTDGrammar;->getContentSpec(ILorg/apache/xerces/impl/dtd/XMLContentSpec;)Z

    iget-object v5, v0, Lorg/apache/xerces/impl/dtd/XMLContentSpec;->otherValue:Ljava/lang/Object;

    check-cast v5, [I

    aget v5, v5, v4

    invoke-virtual {p0, v5, v3}, Lorg/apache/xerces/impl/dtd/DTDGrammar;->getContentSpec(ILorg/apache/xerces/impl/dtd/XMLContentSpec;)Z

    iget-short v5, v1, Lorg/apache/xerces/impl/dtd/XMLContentSpec;->type:S

    if-nez v5, :cond_8

    iget-short v5, v3, Lorg/apache/xerces/impl/dtd/XMLContentSpec;->type:S

    if-nez v5, :cond_8

    iget-object p1, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->F0:Lorg/apache/xerces/xni/QName;

    iget-object v4, v1, Lorg/apache/xerces/impl/dtd/XMLContentSpec;->value:Ljava/lang/Object;

    move-object v5, v4

    check-cast v5, Ljava/lang/String;

    check-cast v4, Ljava/lang/String;

    iget-object v1, v1, Lorg/apache/xerces/impl/dtd/XMLContentSpec;->otherValue:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v2, v5, v4, v1}, Lorg/apache/xerces/xni/QName;->setValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->G0:Lorg/apache/xerces/xni/QName;

    iget-object v1, v3, Lorg/apache/xerces/impl/dtd/XMLContentSpec;->value:Ljava/lang/Object;

    move-object v4, v1

    check-cast v4, Ljava/lang/String;

    check-cast v1, Ljava/lang/String;

    iget-object v3, v3, Lorg/apache/xerces/impl/dtd/XMLContentSpec;->otherValue:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v2, v4, v1, v3}, Lorg/apache/xerces/xni/QName;->setValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lorg/apache/xerces/impl/dtd/models/SimpleContentModel;

    iget-short v0, v0, Lorg/apache/xerces/impl/dtd/XMLContentSpec;->type:S

    iget-object v1, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->F0:Lorg/apache/xerces/xni/QName;

    iget-object v2, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->G0:Lorg/apache/xerces/xni/QName;

    invoke-direct {p1, v0, v1, v2}, Lorg/apache/xerces/impl/dtd/models/SimpleContentModel;-><init>(SLorg/apache/xerces/xni/QName;Lorg/apache/xerces/xni/QName;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_8
    :goto_3
    :try_start_3
    iput v4, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->H0:I

    invoke-virtual {p0, p1, v0}, Lorg/apache/xerces/impl/dtd/DTDGrammar;->b(ILorg/apache/xerces/impl/dtd/XMLContentSpec;)Lorg/apache/xerces/impl/dtd/models/CMNode;

    move-result-object p1

    new-instance v0, Lorg/apache/xerces/impl/dtd/models/DFAContentModel;

    iget v1, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->H0:I

    invoke-direct {v0, p1, v1, v4}, Lorg/apache/xerces/impl/dtd/models/DFAContentModel;-><init>(Lorg/apache/xerces/impl/dtd/models/CMNode;IZ)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final e(I)V
    .locals 3

    iget-object v0, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->n:[[Lorg/apache/xerces/xni/QName;

    array-length v1, v0

    if-lt p1, v1, :cond_0

    iget-object v0, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->V0:[[I

    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lorg/apache/xerces/impl/dtd/DTDGrammar;->n([[II)[[I

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->V0:[[I

    iget-object v0, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->n:[[Lorg/apache/xerces/xni/QName;

    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lorg/apache/xerces/impl/dtd/DTDGrammar;->s([[Lorg/apache/xerces/xni/QName;I)[[Lorg/apache/xerces/xni/QName;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->n:[[Lorg/apache/xerces/xni/QName;

    iget-object v0, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->p:[[S

    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lorg/apache/xerces/impl/dtd/DTDGrammar;->t([[SI)[[S

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->p:[[S

    iget-object v0, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->q:[[[Ljava/lang/String;

    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lorg/apache/xerces/impl/dtd/DTDGrammar;->u([[[Ljava/lang/String;I)[[[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->q:[[[Ljava/lang/String;

    iget-object v0, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->r:[[S

    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lorg/apache/xerces/impl/dtd/DTDGrammar;->t([[SI)[[S

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->r:[[S

    iget-object v0, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->s:[[Lorg/apache/xerces/impl/dv/DatatypeValidator;

    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lorg/apache/xerces/impl/dtd/DTDGrammar;->r([[Lorg/apache/xerces/impl/dv/DatatypeValidator;I)[[Lorg/apache/xerces/impl/dv/DatatypeValidator;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->s:[[Lorg/apache/xerces/impl/dv/DatatypeValidator;

    iget-object v0, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->t:[[Ljava/lang/String;

    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lorg/apache/xerces/impl/dtd/DTDGrammar;->p([[Ljava/lang/String;I)[[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->t:[[Ljava/lang/String;

    iget-object v0, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->u:[[Ljava/lang/String;

    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lorg/apache/xerces/impl/dtd/DTDGrammar;->p([[Ljava/lang/String;I)[[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->u:[[Ljava/lang/String;

    iget-object v0, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->v:[[I

    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lorg/apache/xerces/impl/dtd/DTDGrammar;->n([[II)[[I

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->v:[[I

    goto :goto_0

    :cond_0
    aget-object v0, v0, p1

    if-eqz v0, :cond_1

    return-void

    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->V0:[[I

    const/16 v1, 0x100

    new-array v2, v1, [I

    aput-object v2, v0, p1

    iget-object v0, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->n:[[Lorg/apache/xerces/xni/QName;

    new-array v2, v1, [Lorg/apache/xerces/xni/QName;

    aput-object v2, v0, p1

    iget-object v0, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->p:[[S

    new-array v2, v1, [S

    aput-object v2, v0, p1

    iget-object v0, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->q:[[[Ljava/lang/String;

    new-array v2, v1, [[Ljava/lang/String;

    aput-object v2, v0, p1

    iget-object v0, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->r:[[S

    new-array v2, v1, [S

    aput-object v2, v0, p1

    iget-object v0, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->s:[[Lorg/apache/xerces/impl/dv/DatatypeValidator;

    new-array v2, v1, [Lorg/apache/xerces/impl/dv/DatatypeValidator;

    aput-object v2, v0, p1

    iget-object v0, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->t:[[Ljava/lang/String;

    new-array v2, v1, [Ljava/lang/String;

    aput-object v2, v0, p1

    iget-object v0, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->u:[[Ljava/lang/String;

    new-array v2, v1, [Ljava/lang/String;

    aput-object v2, v0, p1

    iget-object p0, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->v:[[I

    new-array v0, v1, [I

    aput-object v0, p0, p1

    return-void
.end method

.method public element(Ljava/lang/String;Lorg/apache/xerces/xni/Augmentations;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-boolean p2, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->E0:Z

    if-eqz p2, :cond_1

    iget-object p2, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->P0:[I

    iget v0, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->R0:I

    aget v1, p2, v0

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    invoke-virtual {p0, p1}, Lorg/apache/xerces/impl/dtd/DTDGrammar;->addUniqueLeafNode(Ljava/lang/String;)I

    move-result p0

    aput p0, p2, v0

    goto :goto_0

    :cond_0
    const/4 v2, 0x4

    invoke-virtual {p0, p1}, Lorg/apache/xerces/impl/dtd/DTDGrammar;->addUniqueLeafNode(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, v2, v1, p1}, Lorg/apache/xerces/impl/dtd/DTDGrammar;->addContentSpecNode(SII)I

    move-result p0

    aput p0, p2, v0

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->P0:[I

    iget v0, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->R0:I

    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1}, Lorg/apache/xerces/impl/dtd/DTDGrammar;->addContentSpecNode(SLjava/lang/String;)I

    move-result p0

    aput p0, p2, v0

    :goto_0
    return-void
.end method

.method public elementDecl(Ljava/lang/String;Ljava/lang/String;Lorg/apache/xerces/xni/Augmentations;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-object p3, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->N0:Ljava/util/Hashtable;

    invoke-virtual {p3, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/apache/xerces/impl/dtd/XMLElementDecl;

    const/4 v0, -0x1

    if-eqz p3, :cond_1

    iget-short p3, p3, Lorg/apache/xerces/impl/dtd/XMLElementDecl;->type:S

    if-ne p3, v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/apache/xerces/impl/dtd/DTDGrammar;->getElementDeclIndex(Ljava/lang/String;)I

    move-result p3

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lorg/apache/xerces/impl/dtd/DTDGrammar;->createElementDecl()I

    move-result p3

    :goto_0
    iput p3, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->fCurrentElementIndex:I

    new-instance p3, Lorg/apache/xerces/impl/dtd/XMLElementDecl;

    invoke-direct {p3}, Lorg/apache/xerces/impl/dtd/XMLElementDecl;-><init>()V

    iget-object v1, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->F0:Lorg/apache/xerces/xni/QName;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1, p1, v2}, Lorg/apache/xerces/xni/QName;->setValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p3, Lorg/apache/xerces/impl/dtd/XMLElementDecl;->name:Lorg/apache/xerces/xni/QName;

    iget-object v3, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->F0:Lorg/apache/xerces/xni/QName;

    invoke-virtual {v1, v3}, Lorg/apache/xerces/xni/QName;->setValues(Lorg/apache/xerces/xni/QName;)V

    iput-object v2, p3, Lorg/apache/xerces/impl/dtd/XMLElementDecl;->contentModelValidator:Lorg/apache/xerces/impl/dtd/models/ContentModelValidator;

    iput v0, p3, Lorg/apache/xerces/impl/dtd/XMLElementDecl;->scope:I

    const-string v0, "EMPTY"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    iput-short v2, p3, Lorg/apache/xerces/impl/dtd/XMLElementDecl;->type:S

    goto :goto_2

    :cond_2
    const-string v0, "ANY"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iput-short v1, p3, Lorg/apache/xerces/impl/dtd/XMLElementDecl;->type:S

    goto :goto_2

    :cond_3
    const-string v0, "("

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "#PCDATA"

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p2

    if-lez p2, :cond_4

    const/4 p2, 0x2

    goto :goto_1

    :cond_4
    const/4 p2, 0x3

    :goto_1
    iput-short p2, p3, Lorg/apache/xerces/impl/dtd/XMLElementDecl;->type:S

    :cond_5
    :goto_2
    iget-object p2, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->N0:Ljava/util/Hashtable;

    invoke-virtual {p2, p1, p3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p3, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->J0:Lorg/apache/xerces/impl/dtd/XMLElementDecl;

    invoke-virtual {p0, p3}, Lorg/apache/xerces/impl/dtd/DTDGrammar;->addContentSpecToElement(Lorg/apache/xerces/impl/dtd/XMLElementDecl;)V

    iget p1, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->fCurrentElementIndex:I

    iget-object p2, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->J0:Lorg/apache/xerces/impl/dtd/XMLElementDecl;

    invoke-virtual {p0, p1, p2}, Lorg/apache/xerces/impl/dtd/DTDGrammar;->setElementDecl(ILorg/apache/xerces/impl/dtd/XMLElementDecl;)V

    iget p1, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->fCurrentElementIndex:I

    shr-int/lit8 p2, p1, 0x8

    and-int/lit16 p1, p1, 0xff

    invoke-virtual {p0, p2}, Lorg/apache/xerces/impl/dtd/DTDGrammar;->g(I)V

    iget-object p3, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->U0:[[I

    aget-object p2, p3, p2

    iget-boolean p3, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->fReadingExternalDTD:Z

    if-nez p3, :cond_6

    iget p0, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->T0:I

    if-lez p0, :cond_7

    :cond_6
    move v1, v2

    :cond_7
    aput v1, p2, p1

    return-void
.end method

.method public empty(Lorg/apache/xerces/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    return-void
.end method

.method public endAttlist(Lorg/apache/xerces/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    return-void
.end method

.method public endConditional(Lorg/apache/xerces/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    return-void
.end method

.method public endContentModel(Lorg/apache/xerces/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    return-void
.end method

.method public endDTD(Lorg/apache/xerces/xni/Augmentations;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->o:Z

    iget-object p1, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->fGrammarDescription:Lorg/apache/xerces/impl/dtd/XMLDTDDescription;

    invoke-virtual {p1}, Lorg/apache/xerces/impl/dtd/XMLDTDDescription;->getRootName()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    iget p1, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->f:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    if-lt v1, p1, :cond_0

    iget-object p0, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->fGrammarDescription:Lorg/apache/xerces/impl/dtd/XMLDTDDescription;

    invoke-virtual {p0, v0}, Lorg/apache/xerces/impl/dtd/XMLDTDDescription;->setPossibleRoots(Ljava/util/ArrayList;)V

    goto :goto_1

    :cond_0
    shr-int/lit8 v2, v1, 0x8

    and-int/lit16 v3, v1, 0xff

    iget-object v4, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->g:[[Lorg/apache/xerces/xni/QName;

    aget-object v2, v4, v2

    aget-object v2, v2, v3

    iget-object v2, v2, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public endExternalSubset(Lorg/apache/xerces/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->fReadingExternalDTD:Z

    return-void
.end method

.method public endGroup(Lorg/apache/xerces/xni/Augmentations;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-boolean p1, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->E0:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->Q0:[I

    iget v0, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->R0:I

    aget p1, p1, v0

    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    iget-object v1, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->P0:[I

    iget-object v2, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->O0:[S

    aget-short v2, v2, v0

    aget v3, v1, v0

    invoke-virtual {p0, v2, p1, v3}, Lorg/apache/xerces/impl/dtd/DTDGrammar;->addContentSpecNode(SII)I

    move-result p1

    aput p1, v1, v0

    :cond_0
    iget-object p1, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->P0:[I

    iget v0, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->R0:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->R0:I

    aget p0, p1, v0

    aput p0, p1, v1

    :cond_1
    return-void
.end method

.method public endParameterEntity(Ljava/lang/String;Lorg/apache/xerces/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget p1, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->T0:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->T0:I

    iget-object p2, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->S0:[Z

    aget-boolean p1, p2, p1

    iput-boolean p1, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->fReadingExternalDTD:Z

    return-void
.end method

.method public externalEntityDecl(Ljava/lang/String;Lorg/apache/xerces/xni/XMLResourceIdentifier;Lorg/apache/xerces/xni/Augmentations;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/apache/xerces/impl/dtd/DTDGrammar;->getEntityDeclIndex(Ljava/lang/String;)I

    move-result p3

    const/4 v0, -0x1

    if-ne p3, v0, :cond_2

    invoke-virtual {p0}, Lorg/apache/xerces/impl/dtd/DTDGrammar;->createEntityDecl()I

    move-result p3

    const-string v0, "%"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    iget-boolean v0, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->fReadingExternalDTD:Z

    if-nez v0, :cond_1

    iget v0, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->T0:I

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    move v9, v0

    new-instance v0, Lorg/apache/xerces/impl/dtd/XMLEntityDecl;

    invoke-direct {v0}, Lorg/apache/xerces/impl/dtd/XMLEntityDecl;-><init>()V

    invoke-interface {p2}, Lorg/apache/xerces/xni/XMLResourceIdentifier;->getPublicId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2}, Lorg/apache/xerces/xni/XMLResourceIdentifier;->getLiteralSystemId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2}, Lorg/apache/xerces/xni/XMLResourceIdentifier;->getBaseSystemId()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, v0

    move-object v2, p1

    invoke-virtual/range {v1 .. v9}, Lorg/apache/xerces/impl/dtd/XMLEntityDecl;->setValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    invoke-virtual {p0, p3, v0}, Lorg/apache/xerces/impl/dtd/DTDGrammar;->setEntityDecl(ILorg/apache/xerces/impl/dtd/XMLEntityDecl;)V

    :cond_2
    return-void
.end method

.method public final f(I)V
    .locals 3

    iget-object v0, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->x:[[S

    array-length v1, v0

    if-lt p1, v1, :cond_0

    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lorg/apache/xerces/impl/dtd/DTDGrammar;->t([[SI)[[S

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->x:[[S

    iget-object v0, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->y:[[Ljava/lang/Object;

    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lorg/apache/xerces/impl/dtd/DTDGrammar;->o([[Ljava/lang/Object;I)[[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->y:[[Ljava/lang/Object;

    iget-object v0, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->z:[[Ljava/lang/Object;

    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lorg/apache/xerces/impl/dtd/DTDGrammar;->o([[Ljava/lang/Object;I)[[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->z:[[Ljava/lang/Object;

    goto :goto_0

    :cond_0
    aget-object v0, v0, p1

    if-eqz v0, :cond_1

    return-void

    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->x:[[S

    const/16 v1, 0x100

    new-array v2, v1, [S

    aput-object v2, v0, p1

    iget-object v0, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->y:[[Ljava/lang/Object;

    new-array v2, v1, [Ljava/lang/Object;

    aput-object v2, v0, p1

    iget-object p0, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->z:[[Ljava/lang/Object;

    new-array v0, v1, [Ljava/lang/Object;

    aput-object v0, p0, p1

    return-void
.end method

.method public final g(I)V
    .locals 3

    iget-object v0, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->g:[[Lorg/apache/xerces/xni/QName;

    array-length v1, v0

    if-lt p1, v1, :cond_0

    iget-object v0, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->U0:[[I

    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lorg/apache/xerces/impl/dtd/DTDGrammar;->n([[II)[[I

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->U0:[[I

    iget-object v0, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->g:[[Lorg/apache/xerces/xni/QName;

    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lorg/apache/xerces/impl/dtd/DTDGrammar;->s([[Lorg/apache/xerces/xni/QName;I)[[Lorg/apache/xerces/xni/QName;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->g:[[Lorg/apache/xerces/xni/QName;

    iget-object v0, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->h:[[S

    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lorg/apache/xerces/impl/dtd/DTDGrammar;->t([[SI)[[S

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->h:[[S

    iget-object v0, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->j:[[Lorg/apache/xerces/impl/dtd/models/ContentModelValidator;

    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lorg/apache/xerces/impl/dtd/DTDGrammar;->q([[Lorg/apache/xerces/impl/dtd/models/ContentModelValidator;I)[[Lorg/apache/xerces/impl/dtd/models/ContentModelValidator;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->j:[[Lorg/apache/xerces/impl/dtd/models/ContentModelValidator;

    iget-object v0, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->i:[[I

    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lorg/apache/xerces/impl/dtd/DTDGrammar;->n([[II)[[I

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->i:[[I

    iget-object v0, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->k:[[I

    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lorg/apache/xerces/impl/dtd/DTDGrammar;->n([[II)[[I

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->k:[[I

    iget-object v0, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->l:[[I

    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lorg/apache/xerces/impl/dtd/DTDGrammar;->n([[II)[[I

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->l:[[I

    goto :goto_0

    :cond_0
    aget-object v0, v0, p1

    if-eqz v0, :cond_1

    return-void

    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->U0:[[I

    const/16 v1, 0x100

    new-array v2, v1, [I

    aput-object v2, v0, p1

    iget-object v0, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->g:[[Lorg/apache/xerces/xni/QName;

    new-array v2, v1, [Lorg/apache/xerces/xni/QName;

    aput-object v2, v0, p1

    iget-object v0, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->h:[[S

    new-array v2, v1, [S

    aput-object v2, v0, p1

    iget-object v0, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->j:[[Lorg/apache/xerces/impl/dtd/models/ContentModelValidator;

    new-array v2, v1, [Lorg/apache/xerces/impl/dtd/models/ContentModelValidator;

    aput-object v2, v0, p1

    iget-object v0, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->i:[[I

    new-array v2, v1, [I

    aput-object v2, v0, p1

    iget-object v0, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->k:[[I

    new-array v2, v1, [I

    aput-object v2, v0, p1

    iget-object p0, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->l:[[I

    new-array v0, v1, [I

    aput-object v0, p0, p1

    return-void
.end method

.method public getAttributeDecl(ILorg/apache/xerces/impl/dtd/XMLAttributeDecl;)Z
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    const/4 v3, 0x0

    if-ltz v1, :cond_3

    iget v4, v0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->m:I

    if-lt v1, v4, :cond_0

    goto :goto_2

    :cond_0
    shr-int/lit8 v4, v1, 0x8

    and-int/lit16 v1, v1, 0xff

    iget-object v5, v2, Lorg/apache/xerces/impl/dtd/XMLAttributeDecl;->name:Lorg/apache/xerces/xni/QName;

    iget-object v6, v0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->n:[[Lorg/apache/xerces/xni/QName;

    aget-object v6, v6, v4

    aget-object v6, v6, v1

    invoke-virtual {v5, v6}, Lorg/apache/xerces/xni/QName;->setValues(Lorg/apache/xerces/xni/QName;)V

    iget-object v5, v0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->p:[[S

    aget-object v5, v5, v4

    aget-short v5, v5, v1

    const/4 v6, 0x1

    const/4 v7, -0x1

    if-ne v5, v7, :cond_2

    :cond_1
    :goto_0
    move v12, v3

    move v9, v7

    goto :goto_1

    :cond_2
    and-int/lit16 v7, v5, -0x81

    int-to-short v7, v7

    and-int/lit16 v5, v5, 0x80

    if-eqz v5, :cond_1

    move v3, v6

    goto :goto_0

    :goto_1
    iget-object v8, v2, Lorg/apache/xerces/impl/dtd/XMLAttributeDecl;->simpleType:Lorg/apache/xerces/impl/dtd/XMLSimpleType;

    iget-object v2, v0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->n:[[Lorg/apache/xerces/xni/QName;

    aget-object v2, v2, v4

    aget-object v2, v2, v1

    iget-object v10, v2, Lorg/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    iget-object v2, v0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->q:[[[Ljava/lang/String;

    aget-object v2, v2, v4

    aget-object v11, v2, v1

    iget-object v2, v0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->r:[[S

    aget-object v2, v2, v4

    aget-short v13, v2, v1

    iget-object v2, v0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->t:[[Ljava/lang/String;

    aget-object v2, v2, v4

    aget-object v14, v2, v1

    iget-object v2, v0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->u:[[Ljava/lang/String;

    aget-object v2, v2, v4

    aget-object v15, v2, v1

    iget-object v0, v0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->s:[[Lorg/apache/xerces/impl/dv/DatatypeValidator;

    aget-object v0, v0, v4

    aget-object v16, v0, v1

    invoke-virtual/range {v8 .. v16}, Lorg/apache/xerces/impl/dtd/XMLSimpleType;->setValues(SLjava/lang/String;[Ljava/lang/String;ZSLjava/lang/String;Ljava/lang/String;Lorg/apache/xerces/impl/dv/DatatypeValidator;)V

    return v6

    :cond_3
    :goto_2
    return v3
.end method

.method public getAttributeDeclIndex(ILjava/lang/String;)I
    .locals 2

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/xerces/impl/dtd/DTDGrammar;->getFirstAttributeDeclIndex(I)I

    move-result p1

    :goto_0
    if-ne p1, v0, :cond_1

    return v0

    :cond_1
    iget-object v1, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->fAttributeDecl:Lorg/apache/xerces/impl/dtd/XMLAttributeDecl;

    invoke-virtual {p0, p1, v1}, Lorg/apache/xerces/impl/dtd/DTDGrammar;->getAttributeDecl(ILorg/apache/xerces/impl/dtd/XMLAttributeDecl;)Z

    iget-object v1, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->fAttributeDecl:Lorg/apache/xerces/impl/dtd/XMLAttributeDecl;

    iget-object v1, v1, Lorg/apache/xerces/impl/dtd/XMLAttributeDecl;->name:Lorg/apache/xerces/xni/QName;

    iget-object v1, v1, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    if-eq v1, p2, :cond_3

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p0, p1}, Lorg/apache/xerces/impl/dtd/DTDGrammar;->getNextAttributeDeclIndex(I)I

    move-result p1

    goto :goto_0

    :cond_3
    :goto_1
    return p1
.end method

.method public getAttributeDeclIsExternal(I)Z
    .locals 2

    const/4 v0, 0x0

    if-gez p1, :cond_0

    return v0

    :cond_0
    shr-int/lit8 v1, p1, 0x8

    and-int/lit16 p1, p1, 0xff

    iget-object p0, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->V0:[[I

    aget-object p0, p0, v1

    aget p0, p0, p1

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public getContentSpec(ILorg/apache/xerces/impl/dtd/XMLContentSpec;)Z
    .locals 2

    if-ltz p1, :cond_1

    iget v0, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->w:I

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    shr-int/lit8 v0, p1, 0x8

    and-int/lit16 p1, p1, 0xff

    iget-object v1, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->x:[[S

    aget-object v1, v1, v0

    aget-short v1, v1, p1

    iput-short v1, p2, Lorg/apache/xerces/impl/dtd/XMLContentSpec;->type:S

    iget-object v1, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->y:[[Ljava/lang/Object;

    aget-object v1, v1, v0

    aget-object v1, v1, p1

    iput-object v1, p2, Lorg/apache/xerces/impl/dtd/XMLContentSpec;->value:Ljava/lang/Object;

    iget-object p0, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->z:[[Ljava/lang/Object;

    aget-object p0, p0, v0

    aget-object p0, p0, p1

    iput-object p0, p2, Lorg/apache/xerces/impl/dtd/XMLContentSpec;->otherValue:Ljava/lang/Object;

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public getContentSpecAsString(I)Ljava/lang/String;
    .locals 12

    const/4 v0, 0x0

    if-ltz p1, :cond_12

    iget v1, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->f:I

    if-lt p1, v1, :cond_0

    goto/16 :goto_e

    :cond_0
    shr-int/lit8 v1, p1, 0x8

    and-int/lit16 p1, p1, 0xff

    iget-object v2, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->i:[[I

    aget-object v1, v2, v1

    aget p1, v1, p1

    new-instance v1, Lorg/apache/xerces/impl/dtd/XMLContentSpec;

    invoke-direct {v1}, Lorg/apache/xerces/impl/dtd/XMLContentSpec;-><init>()V

    invoke-virtual {p0, p1, v1}, Lorg/apache/xerces/impl/dtd/DTDGrammar;->getContentSpec(ILorg/apache/xerces/impl/dtd/XMLContentSpec;)Z

    move-result p1

    if-eqz p1, :cond_12

    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    iget-short v0, v1, Lorg/apache/xerces/impl/dtd/XMLContentSpec;->type:S

    and-int/lit8 v0, v0, 0xf

    const-string v2, "##any:uri="

    const/4 v3, 0x2

    const-string v4, "#PCDATA"

    const/4 v5, 0x3

    const-string v6, "##any"

    const/4 v7, 0x0

    const/16 v8, 0x29

    const/16 v9, 0x28

    const/4 v10, 0x1

    packed-switch v0, :pswitch_data_0

    const-string p0, "???"

    goto :goto_0

    :pswitch_0
    const-string p0, "##local"

    :goto_0
    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_d

    :pswitch_1
    const-string p0, "##other:uri="

    :goto_1
    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p0, v1, Lorg/apache/xerces/impl/dtd/XMLContentSpec;->otherValue:Ljava/lang/Object;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    goto/16 :goto_d

    :pswitch_2
    invoke-virtual {p1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p0, v1, Lorg/apache/xerces/impl/dtd/XMLContentSpec;->otherValue:Ljava/lang/Object;

    if-eqz p0, :cond_11

    const-string p0, ":uri="

    goto :goto_1

    :pswitch_3
    invoke-virtual {p0, v1, p1, v10, v0}, Lorg/apache/xerces/impl/dtd/DTDGrammar;->a(Lorg/apache/xerces/impl/dtd/XMLContentSpec;Ljava/lang/StringBuffer;ZI)V

    goto/16 :goto_d

    :pswitch_4
    iget-object v11, v1, Lorg/apache/xerces/impl/dtd/XMLContentSpec;->value:Ljava/lang/Object;

    check-cast v11, [I

    aget v7, v11, v7

    invoke-virtual {p0, v7, v1}, Lorg/apache/xerces/impl/dtd/DTDGrammar;->getContentSpec(ILorg/apache/xerces/impl/dtd/XMLContentSpec;)Z

    iget-short v7, v1, Lorg/apache/xerces/impl/dtd/XMLContentSpec;->type:S

    if-nez v7, :cond_4

    invoke-virtual {p1, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object p0, v1, Lorg/apache/xerces/impl/dtd/XMLContentSpec;->value:Ljava/lang/Object;

    if-nez p0, :cond_1

    iget-object v0, v1, Lorg/apache/xerces/impl/dtd/XMLContentSpec;->otherValue:Ljava/lang/Object;

    if-nez v0, :cond_1

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    :cond_1
    iget-object v0, v1, Lorg/apache/xerces/impl/dtd/XMLContentSpec;->otherValue:Ljava/lang/Object;

    if-eqz v0, :cond_3

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p0, v1, Lorg/apache/xerces/impl/dtd/XMLContentSpec;->otherValue:Ljava/lang/Object;

    :cond_2
    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    goto :goto_3

    :cond_3
    if-nez p0, :cond_2

    invoke-virtual {p1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    :cond_4
    if-eq v7, v5, :cond_6

    if-eq v7, v3, :cond_6

    if-ne v7, v10, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {p0, v1, p1, v10, v0}, Lorg/apache/xerces/impl/dtd/DTDGrammar;->a(Lorg/apache/xerces/impl/dtd/XMLContentSpec;Ljava/lang/StringBuffer;ZI)V

    goto :goto_4

    :cond_6
    :goto_2
    invoke-virtual {p1, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {p0, v1, p1, v10, v0}, Lorg/apache/xerces/impl/dtd/DTDGrammar;->a(Lorg/apache/xerces/impl/dtd/XMLContentSpec;Ljava/lang/StringBuffer;ZI)V

    :goto_3
    invoke-virtual {p1, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_4
    const/16 p0, 0x2b

    goto/16 :goto_b

    :pswitch_5
    iget-object v11, v1, Lorg/apache/xerces/impl/dtd/XMLContentSpec;->value:Ljava/lang/Object;

    check-cast v11, [I

    aget v7, v11, v7

    invoke-virtual {p0, v7, v1}, Lorg/apache/xerces/impl/dtd/DTDGrammar;->getContentSpec(ILorg/apache/xerces/impl/dtd/XMLContentSpec;)Z

    iget-short v7, v1, Lorg/apache/xerces/impl/dtd/XMLContentSpec;->type:S

    if-nez v7, :cond_9

    invoke-virtual {p1, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v3, v1, Lorg/apache/xerces/impl/dtd/XMLContentSpec;->value:Ljava/lang/Object;

    if-nez v3, :cond_7

    iget-object v5, v1, Lorg/apache/xerces/impl/dtd/XMLContentSpec;->otherValue:Ljava/lang/Object;

    if-nez v5, :cond_7

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_6

    :cond_7
    iget-object v4, v1, Lorg/apache/xerces/impl/dtd/XMLContentSpec;->otherValue:Ljava/lang/Object;

    if-eqz v4, :cond_8

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p0, v1, Lorg/apache/xerces/impl/dtd/XMLContentSpec;->otherValue:Ljava/lang/Object;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    goto :goto_6

    :cond_8
    if-nez v3, :cond_c

    invoke-virtual {p1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_6

    :cond_9
    if-eq v7, v5, :cond_b

    if-eq v7, v3, :cond_b

    if-ne v7, v10, :cond_a

    goto :goto_5

    :cond_a
    invoke-virtual {p0, v1, p1, v10, v0}, Lorg/apache/xerces/impl/dtd/DTDGrammar;->a(Lorg/apache/xerces/impl/dtd/XMLContentSpec;Ljava/lang/StringBuffer;ZI)V

    goto :goto_7

    :cond_b
    :goto_5
    invoke-virtual {p1, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_c
    invoke-virtual {p0, v1, p1, v10, v0}, Lorg/apache/xerces/impl/dtd/DTDGrammar;->a(Lorg/apache/xerces/impl/dtd/XMLContentSpec;Ljava/lang/StringBuffer;ZI)V

    :goto_6
    invoke-virtual {p1, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_7
    const/16 p0, 0x2a

    goto :goto_b

    :pswitch_6
    iget-object v2, v1, Lorg/apache/xerces/impl/dtd/XMLContentSpec;->value:Ljava/lang/Object;

    check-cast v2, [I

    aget v2, v2, v7

    invoke-virtual {p0, v2, v1}, Lorg/apache/xerces/impl/dtd/DTDGrammar;->getContentSpec(ILorg/apache/xerces/impl/dtd/XMLContentSpec;)Z

    iget-short v2, v1, Lorg/apache/xerces/impl/dtd/XMLContentSpec;->type:S

    if-nez v2, :cond_d

    invoke-virtual {p1, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object p0, v1, Lorg/apache/xerces/impl/dtd/XMLContentSpec;->value:Ljava/lang/Object;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    :goto_8
    invoke-virtual {p1, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_a

    :cond_d
    if-eq v2, v5, :cond_f

    if-eq v2, v3, :cond_f

    if-ne v2, v10, :cond_e

    goto :goto_9

    :cond_e
    invoke-virtual {p0, v1, p1, v10, v0}, Lorg/apache/xerces/impl/dtd/DTDGrammar;->a(Lorg/apache/xerces/impl/dtd/XMLContentSpec;Ljava/lang/StringBuffer;ZI)V

    goto :goto_a

    :cond_f
    :goto_9
    invoke-virtual {p1, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {p0, v1, p1, v10, v0}, Lorg/apache/xerces/impl/dtd/DTDGrammar;->a(Lorg/apache/xerces/impl/dtd/XMLContentSpec;Ljava/lang/StringBuffer;ZI)V

    goto :goto_8

    :goto_a
    const/16 p0, 0x3f

    :goto_b
    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_d

    :pswitch_7
    invoke-virtual {p1, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object p0, v1, Lorg/apache/xerces/impl/dtd/XMLContentSpec;->value:Ljava/lang/Object;

    if-nez p0, :cond_10

    iget-object v0, v1, Lorg/apache/xerces/impl/dtd/XMLContentSpec;->otherValue:Ljava/lang/Object;

    if-nez v0, :cond_10

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_c

    :cond_10
    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    :goto_c
    invoke-virtual {p1, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_11
    :goto_d
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_12
    :goto_e
    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getContentSpecIndex(I)I
    .locals 1

    if-ltz p1, :cond_1

    iget v0, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->f:I

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    shr-int/lit8 v0, p1, 0x8

    and-int/lit16 p1, p1, 0xff

    iget-object p0, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->i:[[I

    aget-object p0, p0, v0

    aget p0, p0, p1

    return p0

    :cond_1
    :goto_0
    const/4 p0, -0x1

    return p0
.end method

.method public getContentSpecType(I)S
    .locals 2

    const/4 v0, -0x1

    if-ltz p1, :cond_2

    iget v1, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->f:I

    if-lt p1, v1, :cond_0

    goto :goto_0

    :cond_0
    shr-int/lit8 v1, p1, 0x8

    and-int/lit16 p1, p1, 0xff

    iget-object p0, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->h:[[S

    aget-object p0, p0, v1

    aget-short p0, p0, p1

    if-ne p0, v0, :cond_1

    return v0

    :cond_1
    and-int/lit16 p0, p0, -0x81

    int-to-short p0, p0

    return p0

    :cond_2
    :goto_0
    return v0
.end method

.method public getDTDContentModelSource()Lorg/apache/xerces/xni/parser/XMLDTDContentModelSource;
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->fDTDContentModelSource:Lorg/apache/xerces/xni/parser/XMLDTDContentModelSource;

    return-object p0
.end method

.method public getDTDSource()Lorg/apache/xerces/xni/parser/XMLDTDSource;
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->fDTDSource:Lorg/apache/xerces/xni/parser/XMLDTDSource;

    return-object p0
.end method

.method public getElementContentModelValidator(I)Lorg/apache/xerces/impl/dtd/models/ContentModelValidator;
    .locals 10

    shr-int/lit8 v0, p1, 0x8

    and-int/lit16 p1, p1, 0xff

    iget-object v1, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->j:[[Lorg/apache/xerces/impl/dtd/models/ContentModelValidator;

    aget-object v1, v1, v0

    aget-object v1, v1, p1

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    iget-object v1, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->h:[[S

    aget-object v1, v1, v0

    aget-short v1, v1, p1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    const/4 p0, 0x0

    return-object p0

    :cond_1
    iget-object v2, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->i:[[I

    aget-object v2, v2, v0

    aget v2, v2, p1

    new-instance v3, Lorg/apache/xerces/impl/dtd/XMLContentSpec;

    invoke-direct {v3}, Lorg/apache/xerces/impl/dtd/XMLContentSpec;-><init>()V

    invoke-virtual {p0, v2, v3}, Lorg/apache/xerces/impl/dtd/DTDGrammar;->getContentSpec(ILorg/apache/xerces/impl/dtd/XMLContentSpec;)Z

    const/4 v4, 0x2

    if-ne v1, v4, :cond_2

    new-instance v1, Lorg/apache/xerces/impl/dtd/DTDGrammar$a;

    invoke-direct {v1}, Lorg/apache/xerces/impl/dtd/DTDGrammar$a;-><init>()V

    invoke-virtual {p0, v2, v3, v1}, Lorg/apache/xerces/impl/dtd/DTDGrammar;->c(ILorg/apache/xerces/impl/dtd/XMLContentSpec;Lorg/apache/xerces/impl/dtd/DTDGrammar$a;)V

    new-instance v2, Lorg/apache/xerces/impl/dtd/models/MixedContentModel;

    iget-object v5, v1, Lorg/apache/xerces/impl/dtd/DTDGrammar$a;->b:[Lorg/apache/xerces/xni/QName;

    iget-object v6, v1, Lorg/apache/xerces/impl/dtd/DTDGrammar$a;->c:[I

    const/4 v7, 0x0

    iget v8, v1, Lorg/apache/xerces/impl/dtd/DTDGrammar$a;->a:I

    const/4 v9, 0x0

    move-object v4, v2

    invoke-direct/range {v4 .. v9}, Lorg/apache/xerces/impl/dtd/models/MixedContentModel;-><init>([Lorg/apache/xerces/xni/QName;[IIIZ)V

    goto :goto_0

    :cond_2
    const/4 v3, 0x3

    if-ne v1, v3, :cond_3

    invoke-virtual {p0, v2}, Lorg/apache/xerces/impl/dtd/DTDGrammar;->d(I)Lorg/apache/xerces/impl/dtd/models/ContentModelValidator;

    move-result-object v2

    :goto_0
    iget-object p0, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->j:[[Lorg/apache/xerces/impl/dtd/models/ContentModelValidator;

    aget-object p0, p0, v0

    aput-object v2, p0, p1

    return-object v2

    :cond_3
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Unknown content type for a element decl in getElementContentModelValidator() in AbstractDTDGrammar class"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getElementDecl(ILorg/apache/xerces/impl/dtd/XMLElementDecl;)Z
    .locals 5

    const/4 v0, 0x0

    if-ltz p1, :cond_5

    iget v1, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->f:I

    if-lt p1, v1, :cond_0

    goto :goto_1

    :cond_0
    shr-int/lit8 v1, p1, 0x8

    and-int/lit16 v2, p1, 0xff

    iget-object v3, p2, Lorg/apache/xerces/impl/dtd/XMLElementDecl;->name:Lorg/apache/xerces/xni/QName;

    iget-object v4, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->g:[[Lorg/apache/xerces/xni/QName;

    aget-object v4, v4, v1

    aget-object v4, v4, v2

    invoke-virtual {v3, v4}, Lorg/apache/xerces/xni/QName;->setValues(Lorg/apache/xerces/xni/QName;)V

    iget-object v3, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->h:[[S

    aget-object v1, v3, v1

    aget-short v1, v1, v2

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_1

    iput-short v3, p2, Lorg/apache/xerces/impl/dtd/XMLElementDecl;->type:S

    iget-object v1, p2, Lorg/apache/xerces/impl/dtd/XMLElementDecl;->simpleType:Lorg/apache/xerces/impl/dtd/XMLSimpleType;

    iput-boolean v0, v1, Lorg/apache/xerces/impl/dtd/XMLSimpleType;->list:Z

    goto :goto_0

    :cond_1
    and-int/lit16 v4, v1, -0x81

    int-to-short v4, v4

    iput-short v4, p2, Lorg/apache/xerces/impl/dtd/XMLElementDecl;->type:S

    iget-object v4, p2, Lorg/apache/xerces/impl/dtd/XMLElementDecl;->simpleType:Lorg/apache/xerces/impl/dtd/XMLSimpleType;

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_2

    move v0, v2

    :cond_2
    iput-boolean v0, v4, Lorg/apache/xerces/impl/dtd/XMLSimpleType;->list:Z

    :goto_0
    iget-short v0, p2, Lorg/apache/xerces/impl/dtd/XMLElementDecl;->type:S

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    :cond_3
    invoke-virtual {p0, p1}, Lorg/apache/xerces/impl/dtd/DTDGrammar;->getElementContentModelValidator(I)Lorg/apache/xerces/impl/dtd/models/ContentModelValidator;

    move-result-object p0

    iput-object p0, p2, Lorg/apache/xerces/impl/dtd/XMLElementDecl;->contentModelValidator:Lorg/apache/xerces/impl/dtd/models/ContentModelValidator;

    :cond_4
    iget-object p0, p2, Lorg/apache/xerces/impl/dtd/XMLElementDecl;->simpleType:Lorg/apache/xerces/impl/dtd/XMLSimpleType;

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/apache/xerces/impl/dtd/XMLSimpleType;->datatypeValidator:Lorg/apache/xerces/impl/dv/DatatypeValidator;

    iput-short v3, p0, Lorg/apache/xerces/impl/dtd/XMLSimpleType;->defaultType:S

    iput-object p1, p0, Lorg/apache/xerces/impl/dtd/XMLSimpleType;->defaultValue:Ljava/lang/String;

    return v2

    :cond_5
    :goto_1
    return v0
.end method

.method public getElementDeclIndex(Ljava/lang/String;)I
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->B0:Lorg/apache/xerces/impl/dtd/DTDGrammar$QNameHashtable;

    invoke-virtual {p0, p1}, Lorg/apache/xerces/impl/dtd/DTDGrammar$QNameHashtable;->get(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getElementDeclIndex(Lorg/apache/xerces/xni/QName;)I
    .locals 0

    .line 2
    iget-object p1, p1, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/apache/xerces/impl/dtd/DTDGrammar;->getElementDeclIndex(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getElementDeclIsExternal(I)Z
    .locals 2

    const/4 v0, 0x0

    if-gez p1, :cond_0

    return v0

    :cond_0
    shr-int/lit8 v1, p1, 0x8

    and-int/lit16 p1, p1, 0xff

    iget-object p0, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->U0:[[I

    aget-object p0, p0, v1

    aget p0, p0, p1

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public getEntityDecl(ILorg/apache/xerces/impl/dtd/XMLEntityDecl;)Z
    .locals 13

    const/4 v0, 0x0

    if-ltz p1, :cond_3

    iget v1, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->J:I

    if-lt p1, v1, :cond_0

    goto :goto_2

    :cond_0
    shr-int/lit8 v1, p1, 0x8

    and-int/lit16 p1, p1, 0xff

    iget-object v2, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->O:[[Ljava/lang/String;

    aget-object v2, v2, v1

    aget-object v4, v2, p1

    iget-object v2, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->Z:[[Ljava/lang/String;

    aget-object v2, v2, v1

    aget-object v5, v2, p1

    iget-object v2, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->k0:[[Ljava/lang/String;

    aget-object v2, v2, v1

    aget-object v6, v2, p1

    iget-object v2, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->q0:[[Ljava/lang/String;

    aget-object v2, v2, v1

    aget-object v7, v2, p1

    iget-object v2, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->t0:[[Ljava/lang/String;

    aget-object v2, v2, v1

    aget-object v8, v2, p1

    iget-object v2, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->Q:[[Ljava/lang/String;

    aget-object v2, v2, v1

    aget-object v9, v2, p1

    iget-object v2, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->u0:[[B

    aget-object v2, v2, v1

    aget-byte v2, v2, p1

    const/4 v12, 0x1

    if-nez v2, :cond_1

    move v10, v0

    goto :goto_0

    :cond_1
    move v10, v12

    :goto_0
    iget-object p0, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->v0:[[B

    aget-object p0, p0, v1

    aget-byte p0, p0, p1

    if-nez p0, :cond_2

    move v11, v0

    goto :goto_1

    :cond_2
    move v11, v12

    :goto_1
    move-object v3, p2

    invoke-virtual/range {v3 .. v11}, Lorg/apache/xerces/impl/dtd/XMLEntityDecl;->setValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    return v12

    :cond_3
    :goto_2
    return v0
.end method

.method public getEntityDeclIndex(Ljava/lang/String;)I
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    iget-object p0, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->C0:Lorg/apache/xerces/impl/dtd/DTDGrammar$QNameHashtable;

    invoke-virtual {p0, p1}, Lorg/apache/xerces/impl/dtd/DTDGrammar$QNameHashtable;->get(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getFirstAttributeDeclIndex(I)I
    .locals 1

    shr-int/lit8 v0, p1, 0x8

    and-int/lit16 p1, p1, 0xff

    iget-object p0, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->k:[[I

    aget-object p0, p0, v0

    aget p0, p0, p1

    return p0
.end method

.method public getFirstElementDeclIndex()I
    .locals 0

    iget p0, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->f:I

    if-ltz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public getGrammarDescription()Lorg/apache/xerces/xni/grammars/XMLGrammarDescription;
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->fGrammarDescription:Lorg/apache/xerces/impl/dtd/XMLDTDDescription;

    return-object p0
.end method

.method public getNextAttributeDeclIndex(I)I
    .locals 1

    shr-int/lit8 v0, p1, 0x8

    and-int/lit16 p1, p1, 0xff

    iget-object p0, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->v:[[I

    aget-object p0, p0, v0

    aget p0, p0, p1

    return p0
.end method

.method public getNextElementDeclIndex(I)I
    .locals 0

    iget p0, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->f:I

    add-int/lit8 p0, p0, -0x1

    if-ge p1, p0, :cond_0

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method public getNotationDecl(ILorg/apache/xerces/impl/dtd/XMLNotationDecl;)Z
    .locals 4

    if-ltz p1, :cond_1

    iget v0, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->w0:I

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    shr-int/lit8 v0, p1, 0x8

    and-int/lit16 p1, p1, 0xff

    iget-object v1, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->x0:[[Ljava/lang/String;

    aget-object v1, v1, v0

    aget-object v1, v1, p1

    iget-object v2, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->y0:[[Ljava/lang/String;

    aget-object v2, v2, v0

    aget-object v2, v2, p1

    iget-object v3, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->z0:[[Ljava/lang/String;

    aget-object v3, v3, v0

    aget-object v3, v3, p1

    iget-object p0, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->A0:[[Ljava/lang/String;

    aget-object p0, p0, v0

    aget-object p0, p0, p1

    invoke-virtual {p2, v1, v2, v3, p0}, Lorg/apache/xerces/impl/dtd/XMLNotationDecl;->setValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public getNotationDeclIndex(Ljava/lang/String;)I
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    iget-object p0, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->D0:Lorg/apache/xerces/impl/dtd/DTDGrammar$QNameHashtable;

    invoke-virtual {p0, p1}, Lorg/apache/xerces/impl/dtd/DTDGrammar$QNameHashtable;->get(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getSymbolTable()Lorg/apache/xerces/util/SymbolTable;
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->e:Lorg/apache/xerces/util/SymbolTable;

    return-object p0
.end method

.method public final h(I)V
    .locals 3

    iget-object v0, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->O:[[Ljava/lang/String;

    array-length v1, v0

    if-lt p1, v1, :cond_0

    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lorg/apache/xerces/impl/dtd/DTDGrammar;->p([[Ljava/lang/String;I)[[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->O:[[Ljava/lang/String;

    iget-object v0, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->Q:[[Ljava/lang/String;

    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lorg/apache/xerces/impl/dtd/DTDGrammar;->p([[Ljava/lang/String;I)[[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->Q:[[Ljava/lang/String;

    iget-object v0, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->Z:[[Ljava/lang/String;

    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lorg/apache/xerces/impl/dtd/DTDGrammar;->p([[Ljava/lang/String;I)[[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->Z:[[Ljava/lang/String;

    iget-object v0, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->k0:[[Ljava/lang/String;

    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lorg/apache/xerces/impl/dtd/DTDGrammar;->p([[Ljava/lang/String;I)[[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->k0:[[Ljava/lang/String;

    iget-object v0, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->q0:[[Ljava/lang/String;

    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lorg/apache/xerces/impl/dtd/DTDGrammar;->p([[Ljava/lang/String;I)[[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->q0:[[Ljava/lang/String;

    iget-object v0, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->t0:[[Ljava/lang/String;

    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lorg/apache/xerces/impl/dtd/DTDGrammar;->p([[Ljava/lang/String;I)[[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->t0:[[Ljava/lang/String;

    iget-object v0, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->u0:[[B

    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lorg/apache/xerces/impl/dtd/DTDGrammar;->m([[BI)[[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->u0:[[B

    iget-object v0, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->v0:[[B

    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lorg/apache/xerces/impl/dtd/DTDGrammar;->m([[BI)[[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->v0:[[B

    goto :goto_0

    :cond_0
    aget-object v0, v0, p1

    if-eqz v0, :cond_1

    return-void

    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->O:[[Ljava/lang/String;

    const/16 v1, 0x100

    new-array v2, v1, [Ljava/lang/String;

    aput-object v2, v0, p1

    iget-object v0, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->Q:[[Ljava/lang/String;

    new-array v2, v1, [Ljava/lang/String;

    aput-object v2, v0, p1

    iget-object v0, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->Z:[[Ljava/lang/String;

    new-array v2, v1, [Ljava/lang/String;

    aput-object v2, v0, p1

    iget-object v0, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->k0:[[Ljava/lang/String;

    new-array v2, v1, [Ljava/lang/String;

    aput-object v2, v0, p1

    iget-object v0, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->q0:[[Ljava/lang/String;

    new-array v2, v1, [Ljava/lang/String;

    aput-object v2, v0, p1

    iget-object v0, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->t0:[[Ljava/lang/String;

    new-array v2, v1, [Ljava/lang/String;

    aput-object v2, v0, p1

    iget-object v0, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->u0:[[B

    new-array v2, v1, [B

    aput-object v2, v0, p1

    iget-object p0, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->v0:[[B

    new-array v0, v1, [B

    aput-object v0, p0, p1

    return-void
.end method

.method public final i(I)V
    .locals 3

    iget-object v0, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->x0:[[Ljava/lang/String;

    array-length v1, v0

    if-lt p1, v1, :cond_0

    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lorg/apache/xerces/impl/dtd/DTDGrammar;->p([[Ljava/lang/String;I)[[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->x0:[[Ljava/lang/String;

    iget-object v0, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->y0:[[Ljava/lang/String;

    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lorg/apache/xerces/impl/dtd/DTDGrammar;->p([[Ljava/lang/String;I)[[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->y0:[[Ljava/lang/String;

    iget-object v0, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->z0:[[Ljava/lang/String;

    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lorg/apache/xerces/impl/dtd/DTDGrammar;->p([[Ljava/lang/String;I)[[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->z0:[[Ljava/lang/String;

    iget-object v0, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->A0:[[Ljava/lang/String;

    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lorg/apache/xerces/impl/dtd/DTDGrammar;->p([[Ljava/lang/String;I)[[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->A0:[[Ljava/lang/String;

    goto :goto_0

    :cond_0
    aget-object v0, v0, p1

    if-eqz v0, :cond_1

    return-void

    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->x0:[[Ljava/lang/String;

    const/16 v1, 0x100

    new-array v2, v1, [Ljava/lang/String;

    aput-object v2, v0, p1

    iget-object v0, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->y0:[[Ljava/lang/String;

    new-array v2, v1, [Ljava/lang/String;

    aput-object v2, v0, p1

    iget-object v0, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->z0:[[Ljava/lang/String;

    new-array v2, v1, [Ljava/lang/String;

    aput-object v2, v0, p1

    iget-object p0, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->A0:[[Ljava/lang/String;

    new-array v0, v1, [Ljava/lang/String;

    aput-object v0, p0, p1

    return-void
.end method

.method public ignoredCharacters(Lorg/apache/xerces/xni/XMLString;Lorg/apache/xerces/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    return-void
.end method

.method public initializeContentModelStack()V
    .locals 4

    iget-object v0, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->O0:[S

    if-nez v0, :cond_0

    const/16 v0, 0x8

    new-array v1, v0, [S

    iput-object v1, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->O0:[S

    new-array v1, v0, [I

    iput-object v1, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->P0:[I

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->Q0:[I

    goto :goto_0

    :cond_0
    iget v1, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->R0:I

    array-length v2, v0

    if-ne v1, v2, :cond_1

    mul-int/lit8 v2, v1, 0x2

    new-array v2, v2, [S

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->O0:[S

    iget v0, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->R0:I

    mul-int/lit8 v1, v0, 0x2

    new-array v1, v1, [I

    iget-object v2, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->P0:[I

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->P0:[I

    iget v0, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->R0:I

    mul-int/lit8 v1, v0, 0x2

    new-array v1, v1, [I

    iget-object v2, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->Q0:[I

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->Q0:[I

    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->O0:[S

    iget v1, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->R0:I

    const/4 v2, -0x1

    aput-short v2, v0, v1

    iget-object v0, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->P0:[I

    aput v2, v0, v1

    iget-object p0, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->Q0:[I

    aput v2, p0, v1

    return-void
.end method

.method public internalEntityDecl(Ljava/lang/String;Lorg/apache/xerces/xni/XMLString;Lorg/apache/xerces/xni/XMLString;Lorg/apache/xerces/xni/Augmentations;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/apache/xerces/impl/dtd/DTDGrammar;->getEntityDeclIndex(Ljava/lang/String;)I

    move-result p3

    const/4 p4, -0x1

    if-ne p3, p4, :cond_2

    invoke-virtual {p0}, Lorg/apache/xerces/impl/dtd/DTDGrammar;->createEntityDecl()I

    move-result p3

    const-string p4, "%"

    invoke-virtual {p1, p4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    iget-boolean p4, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->fReadingExternalDTD:Z

    if-nez p4, :cond_1

    iget p4, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->T0:I

    if-lez p4, :cond_0

    goto :goto_0

    :cond_0
    const/4 p4, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p4, 0x1

    :goto_1
    move v8, p4

    new-instance p4, Lorg/apache/xerces/impl/dtd/XMLEntityDecl;

    invoke-direct {p4}, Lorg/apache/xerces/impl/dtd/XMLEntityDecl;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {p2}, Lorg/apache/xerces/xni/XMLString;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v0, p4

    move-object v1, p1

    invoke-virtual/range {v0 .. v8}, Lorg/apache/xerces/impl/dtd/XMLEntityDecl;->setValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    invoke-virtual {p0, p3, p4}, Lorg/apache/xerces/impl/dtd/DTDGrammar;->setEntityDecl(ILorg/apache/xerces/impl/dtd/XMLEntityDecl;)V

    :cond_2
    return-void
.end method

.method public isCDATAAttribute(Lorg/apache/xerces/xni/QName;Lorg/apache/xerces/xni/QName;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/xerces/impl/dtd/DTDGrammar;->getElementDeclIndex(Lorg/apache/xerces/xni/QName;)I

    move-result p1

    iget-object p2, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->fAttributeDecl:Lorg/apache/xerces/impl/dtd/XMLAttributeDecl;

    invoke-virtual {p0, p1, p2}, Lorg/apache/xerces/impl/dtd/DTDGrammar;->getAttributeDecl(ILorg/apache/xerces/impl/dtd/XMLAttributeDecl;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->fAttributeDecl:Lorg/apache/xerces/impl/dtd/XMLAttributeDecl;

    iget-object p0, p0, Lorg/apache/xerces/impl/dtd/XMLAttributeDecl;->simpleType:Lorg/apache/xerces/impl/dtd/XMLSimpleType;

    iget-short p0, p0, Lorg/apache/xerces/impl/dtd/XMLSimpleType;->type:S

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public isEntityDeclared(Ljava/lang/String;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/xerces/impl/dtd/DTDGrammar;->getEntityDeclIndex(Ljava/lang/String;)I

    move-result p0

    const/4 p1, -0x1

    if-eq p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isEntityUnparsed(Ljava/lang/String;)Z
    .locals 2

    invoke-virtual {p0, p1}, Lorg/apache/xerces/impl/dtd/DTDGrammar;->getEntityDeclIndex(Ljava/lang/String;)I

    move-result p1

    const/4 v0, -0x1

    const/4 v1, 0x0

    if-le p1, v0, :cond_0

    shr-int/lit8 v0, p1, 0x8

    and-int/lit16 p1, p1, 0xff

    iget-object p0, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->t0:[[Ljava/lang/String;

    aget-object p0, p0, v0

    aget-object p0, p0, p1

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public isNamespaceAware()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public j(I)Lorg/apache/xerces/xni/QName;
    .locals 1

    if-ltz p1, :cond_1

    iget v0, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->f:I

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    shr-int/lit8 v0, p1, 0x8

    and-int/lit16 p1, p1, 0xff

    iget-object p0, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->g:[[Lorg/apache/xerces/xni/QName;

    aget-object p0, p0, v0

    aget-object p0, p0, p1

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public k()Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->o:Z

    return p0
.end method

.method public final l(I)V
    .locals 1

    new-instance v0, Lorg/apache/xerces/impl/dtd/XMLAttributeDecl;

    invoke-direct {v0}, Lorg/apache/xerces/impl/dtd/XMLAttributeDecl;-><init>()V

    invoke-virtual {p0, p1, v0}, Lorg/apache/xerces/impl/dtd/DTDGrammar;->getAttributeDecl(ILorg/apache/xerces/impl/dtd/XMLAttributeDecl;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string p1, " { "

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iget-object p1, v0, Lorg/apache/xerces/impl/dtd/XMLAttributeDecl;->name:Lorg/apache/xerces/xni/QName;

    iget-object p1, p1, Lorg/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string p1, " }"

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public notationDecl(Ljava/lang/String;Lorg/apache/xerces/xni/XMLResourceIdentifier;Lorg/apache/xerces/xni/Augmentations;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    new-instance p3, Lorg/apache/xerces/impl/dtd/XMLNotationDecl;

    invoke-direct {p3}, Lorg/apache/xerces/impl/dtd/XMLNotationDecl;-><init>()V

    invoke-interface {p2}, Lorg/apache/xerces/xni/XMLResourceIdentifier;->getPublicId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2}, Lorg/apache/xerces/xni/XMLResourceIdentifier;->getLiteralSystemId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2}, Lorg/apache/xerces/xni/XMLResourceIdentifier;->getBaseSystemId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p1, v0, v1, p2}, Lorg/apache/xerces/impl/dtd/XMLNotationDecl;->setValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lorg/apache/xerces/impl/dtd/DTDGrammar;->getNotationDeclIndex(Ljava/lang/String;)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_0

    invoke-virtual {p0}, Lorg/apache/xerces/impl/dtd/DTDGrammar;->createNotationDecl()I

    move-result p1

    invoke-virtual {p0, p1, p3}, Lorg/apache/xerces/impl/dtd/DTDGrammar;->setNotationDecl(ILorg/apache/xerces/impl/dtd/XMLNotationDecl;)V

    :cond_0
    return-void
.end method

.method public occurrence(SLorg/apache/xerces/xni/Augmentations;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-boolean p2, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->E0:Z

    if-nez p2, :cond_2

    const/4 p2, 0x2

    const/4 v0, -0x1

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->P0:[I

    iget p2, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->R0:I

    const/4 v1, 0x1

    aget v2, p1, p2

    invoke-virtual {p0, v1, v2, v0}, Lorg/apache/xerces/impl/dtd/DTDGrammar;->addContentSpecNode(SII)I

    move-result p0

    aput p0, p1, p2

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    if-ne p1, v1, :cond_1

    iget-object p1, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->P0:[I

    iget v1, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->R0:I

    aget v2, p1, v1

    invoke-virtual {p0, p2, v2, v0}, Lorg/apache/xerces/impl/dtd/DTDGrammar;->addContentSpecNode(SII)I

    move-result p0

    aput p0, p1, v1

    goto :goto_0

    :cond_1
    const/4 p2, 0x4

    if-ne p1, p2, :cond_2

    iget-object p1, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->P0:[I

    iget p2, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->R0:I

    aget v2, p1, p2

    invoke-virtual {p0, v1, v2, v0}, Lorg/apache/xerces/impl/dtd/DTDGrammar;->addContentSpecNode(SII)I

    move-result p0

    aput p0, p1, p2

    :cond_2
    :goto_0
    return-void
.end method

.method public pcdata(Lorg/apache/xerces/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->E0:Z

    return-void
.end method

.method public printAttributes(I)V
    .locals 3

    invoke-virtual {p0, p1}, Lorg/apache/xerces/impl/dtd/DTDGrammar;->getFirstAttributeDeclIndex(I)I

    move-result v0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, p1}, Ljava/io/PrintStream;->print(I)V

    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, " ["

    :goto_0
    invoke-virtual {p1, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :cond_0
    const/4 p1, -0x1

    if-ne v0, p1, :cond_1

    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string p1, " ]"

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void

    :cond_1
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(C)V

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->print(I)V

    invoke-virtual {p0, v0}, Lorg/apache/xerces/impl/dtd/DTDGrammar;->l(I)V

    invoke-virtual {p0, v0}, Lorg/apache/xerces/impl/dtd/DTDGrammar;->getNextAttributeDeclIndex(I)I

    move-result v0

    if-eq v0, p1, :cond_0

    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, ","

    goto :goto_0
.end method

.method public printElements()V
    .locals 5

    new-instance v0, Lorg/apache/xerces/impl/dtd/XMLElementDecl;

    invoke-direct {v0}, Lorg/apache/xerces/impl/dtd/XMLElementDecl;-><init>()V

    const/4 v1, 0x0

    :goto_0
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v1, v0}, Lorg/apache/xerces/impl/dtd/DTDGrammar;->getElementDecl(ILorg/apache/xerces/impl/dtd/XMLElementDecl;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "element decl: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v4, v0, Lorg/apache/xerces/impl/dtd/XMLElementDecl;->name:Lorg/apache/xerces/xni/QName;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v4, v0, Lorg/apache/xerces/impl/dtd/XMLElementDecl;->name:Lorg/apache/xerces/xni/QName;

    iget-object v4, v4, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move v1, v2

    goto :goto_0
.end method

.method public processingInstruction(Ljava/lang/String;Lorg/apache/xerces/xni/XMLString;Lorg/apache/xerces/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    return-void
.end method

.method public putElementNameMapping(Lorg/apache/xerces/xni/QName;II)V
    .locals 0

    return-void
.end method

.method public separator(SLorg/apache/xerces/xni/Augmentations;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-boolean p2, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->E0:Z

    if-nez p2, :cond_3

    iget-object p2, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->O0:[S

    iget v0, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->R0:I

    aget-short p2, p2, v0

    const/4 v1, -0x1

    const/4 v2, 0x4

    const/4 v3, 0x5

    if-eq p2, v3, :cond_1

    if-nez p1, :cond_1

    iget-object p1, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->Q0:[I

    aget p1, p1, v0

    if-eq p1, v1, :cond_0

    iget-object v1, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->P0:[I

    aget v3, v1, v0

    invoke-virtual {p0, p2, p1, v3}, Lorg/apache/xerces/impl/dtd/DTDGrammar;->addContentSpecNode(SII)I

    move-result p1

    aput p1, v1, v0

    :cond_0
    iget-object p1, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->Q0:[I

    iget p2, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->R0:I

    iget-object v0, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->P0:[I

    aget v0, v0, p2

    aput v0, p1, p2

    iget-object p0, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->O0:[S

    aput-short v2, p0, p2

    goto :goto_0

    :cond_1
    if-eq p2, v2, :cond_3

    const/4 v2, 0x1

    if-ne p1, v2, :cond_3

    iget-object p1, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->Q0:[I

    aget p1, p1, v0

    if-eq p1, v1, :cond_2

    iget-object v1, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->P0:[I

    aget v2, v1, v0

    invoke-virtual {p0, p2, p1, v2}, Lorg/apache/xerces/impl/dtd/DTDGrammar;->addContentSpecNode(SII)I

    move-result p1

    aput p1, v1, v0

    :cond_2
    iget-object p1, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->Q0:[I

    iget p2, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->R0:I

    iget-object v0, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->P0:[I

    aget v0, v0, p2

    aput v0, p1, p2

    iget-object p0, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->O0:[S

    aput-short v3, p0, p2

    :cond_3
    :goto_0
    return-void
.end method

.method public setAttributeDecl(IILorg/apache/xerces/impl/dtd/XMLAttributeDecl;)V
    .locals 5

    shr-int/lit8 v0, p2, 0x8

    and-int/lit16 v1, p2, 0xff

    iget-object v2, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->n:[[Lorg/apache/xerces/xni/QName;

    aget-object v2, v2, v0

    aget-object v2, v2, v1

    iget-object v3, p3, Lorg/apache/xerces/impl/dtd/XMLAttributeDecl;->name:Lorg/apache/xerces/xni/QName;

    invoke-virtual {v2, v3}, Lorg/apache/xerces/xni/QName;->setValues(Lorg/apache/xerces/xni/QName;)V

    iget-object v2, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->p:[[S

    aget-object v2, v2, v0

    iget-object p3, p3, Lorg/apache/xerces/impl/dtd/XMLAttributeDecl;->simpleType:Lorg/apache/xerces/impl/dtd/XMLSimpleType;

    iget-short v3, p3, Lorg/apache/xerces/impl/dtd/XMLSimpleType;->type:S

    aput-short v3, v2, v1

    iget-boolean v4, p3, Lorg/apache/xerces/impl/dtd/XMLSimpleType;->list:Z

    if-eqz v4, :cond_0

    or-int/lit16 v3, v3, 0x80

    int-to-short v3, v3

    aput-short v3, v2, v1

    :cond_0
    iget-object v2, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->q:[[[Ljava/lang/String;

    aget-object v2, v2, v0

    iget-object v3, p3, Lorg/apache/xerces/impl/dtd/XMLSimpleType;->enumeration:[Ljava/lang/String;

    aput-object v3, v2, v1

    iget-object v2, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->r:[[S

    aget-object v2, v2, v0

    iget-short v3, p3, Lorg/apache/xerces/impl/dtd/XMLSimpleType;->defaultType:S

    aput-short v3, v2, v1

    iget-object v2, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->s:[[Lorg/apache/xerces/impl/dv/DatatypeValidator;

    aget-object v2, v2, v0

    iget-object v3, p3, Lorg/apache/xerces/impl/dtd/XMLSimpleType;->datatypeValidator:Lorg/apache/xerces/impl/dv/DatatypeValidator;

    aput-object v3, v2, v1

    iget-object v2, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->t:[[Ljava/lang/String;

    aget-object v2, v2, v0

    iget-object v3, p3, Lorg/apache/xerces/impl/dtd/XMLSimpleType;->defaultValue:Ljava/lang/String;

    aput-object v3, v2, v1

    iget-object v2, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->u:[[Ljava/lang/String;

    aget-object v0, v2, v0

    iget-object p3, p3, Lorg/apache/xerces/impl/dtd/XMLSimpleType;->nonNormalizedDefaultValue:Ljava/lang/String;

    aput-object p3, v0, v1

    shr-int/lit8 p3, p1, 0x8

    and-int/lit16 p1, p1, 0xff

    iget-object v0, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->k:[[I

    aget-object v0, v0, p3

    aget v0, v0, p1

    :goto_0
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    goto :goto_1

    :cond_1
    if-ne v0, p2, :cond_4

    :goto_1
    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->k:[[I

    aget-object v0, v0, p3

    aget v2, v0, p1

    if-ne v2, v1, :cond_2

    aput p2, v0, p1

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->l:[[I

    aget-object v0, v0, p3

    aget v0, v0, p1

    shr-int/lit8 v1, v0, 0x8

    and-int/lit16 v0, v0, 0xff

    iget-object v2, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->v:[[I

    aget-object v1, v2, v1

    aput p2, v1, v0

    :goto_2
    iget-object p0, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->l:[[I

    aget-object p0, p0, p3

    aput p2, p0, p1

    :cond_3
    return-void

    :cond_4
    shr-int/lit8 v1, v0, 0x8

    and-int/lit16 v0, v0, 0xff

    iget-object v2, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->v:[[I

    aget-object v1, v2, v1

    aget v0, v1, v0

    goto :goto_0
.end method

.method public setContentSpec(ILorg/apache/xerces/impl/dtd/XMLContentSpec;)V
    .locals 3

    shr-int/lit8 v0, p1, 0x8

    and-int/lit16 p1, p1, 0xff

    iget-object v1, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->x:[[S

    aget-object v1, v1, v0

    iget-short v2, p2, Lorg/apache/xerces/impl/dtd/XMLContentSpec;->type:S

    aput-short v2, v1, p1

    iget-object v1, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->y:[[Ljava/lang/Object;

    aget-object v1, v1, v0

    iget-object v2, p2, Lorg/apache/xerces/impl/dtd/XMLContentSpec;->value:Ljava/lang/Object;

    aput-object v2, v1, p1

    iget-object p0, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->z:[[Ljava/lang/Object;

    aget-object p0, p0, v0

    iget-object p2, p2, Lorg/apache/xerces/impl/dtd/XMLContentSpec;->otherValue:Ljava/lang/Object;

    aput-object p2, p0, p1

    return-void
.end method

.method public setContentSpecIndex(II)V
    .locals 1

    if-ltz p1, :cond_1

    iget v0, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->f:I

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    shr-int/lit8 v0, p1, 0x8

    and-int/lit16 p1, p1, 0xff

    iget-object p0, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->i:[[I

    aget-object p0, p0, v0

    aput p2, p0, p1

    :cond_1
    :goto_0
    return-void
.end method

.method public setDTDContentModelSource(Lorg/apache/xerces/xni/parser/XMLDTDContentModelSource;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->fDTDContentModelSource:Lorg/apache/xerces/xni/parser/XMLDTDContentModelSource;

    return-void
.end method

.method public setDTDSource(Lorg/apache/xerces/xni/parser/XMLDTDSource;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->fDTDSource:Lorg/apache/xerces/xni/parser/XMLDTDSource;

    return-void
.end method

.method public setElementDecl(ILorg/apache/xerces/impl/dtd/XMLElementDecl;)V
    .locals 5

    if-ltz p1, :cond_2

    iget v0, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->f:I

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    shr-int/lit8 v0, p1, 0x8

    and-int/lit16 v1, p1, 0xff

    iget-object v2, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->g:[[Lorg/apache/xerces/xni/QName;

    aget-object v2, v2, v0

    aget-object v2, v2, v1

    iget-object v3, p2, Lorg/apache/xerces/impl/dtd/XMLElementDecl;->name:Lorg/apache/xerces/xni/QName;

    invoke-virtual {v2, v3}, Lorg/apache/xerces/xni/QName;->setValues(Lorg/apache/xerces/xni/QName;)V

    iget-object v2, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->h:[[S

    aget-object v3, v2, v0

    iget-short v4, p2, Lorg/apache/xerces/impl/dtd/XMLElementDecl;->type:S

    aput-short v4, v3, v1

    iget-object v3, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->j:[[Lorg/apache/xerces/impl/dtd/models/ContentModelValidator;

    aget-object v3, v3, v0

    iget-object v4, p2, Lorg/apache/xerces/impl/dtd/XMLElementDecl;->contentModelValidator:Lorg/apache/xerces/impl/dtd/models/ContentModelValidator;

    aput-object v4, v3, v1

    iget-object v3, p2, Lorg/apache/xerces/impl/dtd/XMLElementDecl;->simpleType:Lorg/apache/xerces/impl/dtd/XMLSimpleType;

    iget-boolean v3, v3, Lorg/apache/xerces/impl/dtd/XMLSimpleType;->list:Z

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    aget-object v0, v2, v0

    aget-short v2, v0, v1

    or-int/lit16 v2, v2, 0x80

    int-to-short v2, v2

    aput-short v2, v0, v1

    :cond_1
    iget-object p0, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->B0:Lorg/apache/xerces/impl/dtd/DTDGrammar$QNameHashtable;

    iget-object p2, p2, Lorg/apache/xerces/impl/dtd/XMLElementDecl;->name:Lorg/apache/xerces/xni/QName;

    iget-object p2, p2, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    invoke-virtual {p0, p2, p1}, Lorg/apache/xerces/impl/dtd/DTDGrammar$QNameHashtable;->put(Ljava/lang/String;I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setEntityDecl(ILorg/apache/xerces/impl/dtd/XMLEntityDecl;)V
    .locals 5

    shr-int/lit8 v0, p1, 0x8

    and-int/lit16 v1, p1, 0xff

    iget-object v2, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->O:[[Ljava/lang/String;

    aget-object v2, v2, v0

    iget-object v3, p2, Lorg/apache/xerces/impl/dtd/XMLEntityDecl;->name:Ljava/lang/String;

    aput-object v3, v2, v1

    iget-object v2, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->Q:[[Ljava/lang/String;

    aget-object v2, v2, v0

    iget-object v4, p2, Lorg/apache/xerces/impl/dtd/XMLEntityDecl;->value:Ljava/lang/String;

    aput-object v4, v2, v1

    iget-object v2, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->Z:[[Ljava/lang/String;

    aget-object v2, v2, v0

    iget-object v4, p2, Lorg/apache/xerces/impl/dtd/XMLEntityDecl;->publicId:Ljava/lang/String;

    aput-object v4, v2, v1

    iget-object v2, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->k0:[[Ljava/lang/String;

    aget-object v2, v2, v0

    iget-object v4, p2, Lorg/apache/xerces/impl/dtd/XMLEntityDecl;->systemId:Ljava/lang/String;

    aput-object v4, v2, v1

    iget-object v2, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->q0:[[Ljava/lang/String;

    aget-object v2, v2, v0

    iget-object v4, p2, Lorg/apache/xerces/impl/dtd/XMLEntityDecl;->baseSystemId:Ljava/lang/String;

    aput-object v4, v2, v1

    iget-object v2, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->t0:[[Ljava/lang/String;

    aget-object v2, v2, v0

    iget-object v4, p2, Lorg/apache/xerces/impl/dtd/XMLEntityDecl;->notation:Ljava/lang/String;

    aput-object v4, v2, v1

    iget-object v2, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->u0:[[B

    aget-object v2, v2, v0

    iget-boolean v4, p2, Lorg/apache/xerces/impl/dtd/XMLEntityDecl;->isPE:Z

    aput-byte v4, v2, v1

    iget-object v2, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->v0:[[B

    aget-object v0, v2, v0

    iget-boolean p2, p2, Lorg/apache/xerces/impl/dtd/XMLEntityDecl;->inExternal:Z

    aput-byte p2, v0, v1

    iget-object p0, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->C0:Lorg/apache/xerces/impl/dtd/DTDGrammar$QNameHashtable;

    invoke-virtual {p0, v3, p1}, Lorg/apache/xerces/impl/dtd/DTDGrammar$QNameHashtable;->put(Ljava/lang/String;I)V

    return-void
.end method

.method public setFirstAttributeDeclIndex(II)V
    .locals 1

    if-ltz p1, :cond_1

    iget v0, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->f:I

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    shr-int/lit8 v0, p1, 0x8

    and-int/lit16 p1, p1, 0xff

    iget-object p0, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->k:[[I

    aget-object p0, p0, v0

    aput p2, p0, p1

    :cond_1
    :goto_0
    return-void
.end method

.method public setNotationDecl(ILorg/apache/xerces/impl/dtd/XMLNotationDecl;)V
    .locals 5

    shr-int/lit8 v0, p1, 0x8

    and-int/lit16 v1, p1, 0xff

    iget-object v2, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->x0:[[Ljava/lang/String;

    aget-object v2, v2, v0

    iget-object v3, p2, Lorg/apache/xerces/impl/dtd/XMLNotationDecl;->name:Ljava/lang/String;

    aput-object v3, v2, v1

    iget-object v2, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->y0:[[Ljava/lang/String;

    aget-object v2, v2, v0

    iget-object v4, p2, Lorg/apache/xerces/impl/dtd/XMLNotationDecl;->publicId:Ljava/lang/String;

    aput-object v4, v2, v1

    iget-object v2, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->z0:[[Ljava/lang/String;

    aget-object v2, v2, v0

    iget-object v4, p2, Lorg/apache/xerces/impl/dtd/XMLNotationDecl;->systemId:Ljava/lang/String;

    aput-object v4, v2, v1

    iget-object v2, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->A0:[[Ljava/lang/String;

    aget-object v0, v2, v0

    iget-object p2, p2, Lorg/apache/xerces/impl/dtd/XMLNotationDecl;->baseSystemId:Ljava/lang/String;

    aput-object p2, v0, v1

    iget-object p0, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->D0:Lorg/apache/xerces/impl/dtd/DTDGrammar$QNameHashtable;

    invoke-virtual {p0, v3, p1}, Lorg/apache/xerces/impl/dtd/DTDGrammar$QNameHashtable;->put(Ljava/lang/String;I)V

    return-void
.end method

.method public startAttlist(Ljava/lang/String;Lorg/apache/xerces/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    return-void
.end method

.method public startConditional(SLorg/apache/xerces/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    return-void
.end method

.method public startContentModel(Ljava/lang/String;Lorg/apache/xerces/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-object p2, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->N0:Ljava/util/Hashtable;

    invoke-virtual {p2, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/xerces/impl/dtd/XMLElementDecl;

    if-eqz p1, :cond_0

    iput-object p1, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->J0:Lorg/apache/xerces/impl/dtd/XMLElementDecl;

    :cond_0
    const/4 p1, 0x0

    iput p1, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->R0:I

    invoke-virtual {p0}, Lorg/apache/xerces/impl/dtd/DTDGrammar;->initializeContentModelStack()V

    return-void
.end method

.method public startDTD(Lorg/apache/xerces/xni/XMLLocator;Lorg/apache/xerces/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->O0:[S

    iput-object p1, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->P0:[I

    iput-object p1, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->Q0:[I

    return-void
.end method

.method public startExternalSubset(Lorg/apache/xerces/xni/XMLResourceIdentifier;Lorg/apache/xerces/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->fReadingExternalDTD:Z

    return-void
.end method

.method public startGroup(Lorg/apache/xerces/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget p1, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->R0:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->R0:I

    invoke-virtual {p0}, Lorg/apache/xerces/impl/dtd/DTDGrammar;->initializeContentModelStack()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->E0:Z

    return-void
.end method

.method public startParameterEntity(Ljava/lang/String;Lorg/apache/xerces/xni/XMLResourceIdentifier;Ljava/lang/String;Lorg/apache/xerces/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget p1, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->T0:I

    iget-object p2, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->S0:[Z

    array-length p3, p2

    if-ne p1, p3, :cond_0

    array-length p1, p2

    mul-int/lit8 p1, p1, 0x2

    new-array p1, p1, [Z

    array-length p3, p2

    const/4 p4, 0x0

    invoke-static {p2, p4, p1, p4, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object p1, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->S0:[Z

    :cond_0
    iget-object p1, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->S0:[Z

    iget p2, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->T0:I

    iget-boolean p3, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->fReadingExternalDTD:Z

    aput-boolean p3, p1, p2

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->T0:I

    return-void
.end method

.method public textDecl(Ljava/lang/String;Ljava/lang/String;Lorg/apache/xerces/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    return-void
.end method

.method public unparsedEntityDecl(Ljava/lang/String;Lorg/apache/xerces/xni/XMLResourceIdentifier;Ljava/lang/String;Lorg/apache/xerces/xni/Augmentations;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    new-instance p4, Lorg/apache/xerces/impl/dtd/XMLEntityDecl;

    invoke-direct {p4}, Lorg/apache/xerces/impl/dtd/XMLEntityDecl;-><init>()V

    const-string v0, "%"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    iget-boolean v0, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->fReadingExternalDTD:Z

    if-nez v0, :cond_1

    iget v0, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar;->T0:I

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    move v8, v0

    invoke-interface {p2}, Lorg/apache/xerces/xni/XMLResourceIdentifier;->getPublicId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2}, Lorg/apache/xerces/xni/XMLResourceIdentifier;->getLiteralSystemId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2}, Lorg/apache/xerces/xni/XMLResourceIdentifier;->getBaseSystemId()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    move-object v0, p4

    move-object v1, p1

    move-object v5, p3

    invoke-virtual/range {v0 .. v8}, Lorg/apache/xerces/impl/dtd/XMLEntityDecl;->setValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    invoke-virtual {p0, p1}, Lorg/apache/xerces/impl/dtd/DTDGrammar;->getEntityDeclIndex(Ljava/lang/String;)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_2

    invoke-virtual {p0}, Lorg/apache/xerces/impl/dtd/DTDGrammar;->createEntityDecl()I

    move-result p1

    invoke-virtual {p0, p1, p4}, Lorg/apache/xerces/impl/dtd/DTDGrammar;->setEntityDecl(ILorg/apache/xerces/impl/dtd/XMLEntityDecl;)V

    :cond_2
    return-void
.end method
