.class public Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xerces/impl/dv/XSSimpleType;
.implements Lorg/w3c/dom/TypeInfo;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$a;,
        Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$d;,
        Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$c;,
        Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$b;
    }
.end annotation


# static fields
.field public static final ANYATOMICTYPE_DT:S = 0x31s

.field public static final DAYTIMEDURATION_DT:S = 0x2fs

.field protected static final DV_ANYATOMICTYPE:S = 0x1ds

.field protected static final DV_ANYSIMPLETYPE:S = 0x0s

.field protected static final DV_ANYURI:S = 0x11s

.field protected static final DV_BASE64BINARY:S = 0x10s

.field protected static final DV_BOOLEAN:S = 0x2s

.field protected static final DV_DATE:S = 0x9s

.field protected static final DV_DATETIME:S = 0x7s

.field protected static final DV_DAYTIMEDURATION:S = 0x1cs

.field protected static final DV_DECIMAL:S = 0x3s

.field protected static final DV_DOUBLE:S = 0x5s

.field protected static final DV_DURATION:S = 0x6s

.field protected static final DV_ENTITY:S = 0x17s

.field protected static final DV_FLOAT:S = 0x4s

.field protected static final DV_GDAY:S = 0xds

.field protected static final DV_GMONTH:S = 0xes

.field protected static final DV_GMONTHDAY:S = 0xcs

.field protected static final DV_GYEAR:S = 0xbs

.field protected static final DV_GYEARMONTH:S = 0xas

.field protected static final DV_HEXBINARY:S = 0xfs

.field protected static final DV_ID:S = 0x15s

.field protected static final DV_IDREF:S = 0x16s

.field protected static final DV_INTEGER:S = 0x18s

.field protected static final DV_LIST:S = 0x19s

.field protected static final DV_NOTATION:S = 0x14s

.field protected static final DV_PRECISIONDECIMAL:S = 0x13s

.field protected static final DV_QNAME:S = 0x12s

.field protected static final DV_STRING:S = 0x1s

.field protected static final DV_TIME:S = 0x8s

.field protected static final DV_UNION:S = 0x1as

.field protected static final DV_YEARMONTHDURATION:S = 0x1bs

.field public static final H0:[Lorg/apache/xerces/impl/dv/xs/TypeValidator;

.field public static final I0:S = 0x0s

.field public static final J0:S = 0x1s

.field public static final K0:S = 0x2s

.field public static final L0:[S

.field public static final M0:S = 0x0s

.field public static final N0:S = 0x1s

.field public static final O0:S = 0x2s

.field public static final P0:S = 0x3s

.field public static final PRECISIONDECIMAL_DT:S = 0x30s

.field public static final Q0:[Ljava/lang/String;

.field public static final R0:[Ljava/lang/String;

.field public static final S0:Ljava/lang/String; = "http://www.w3.org/2001/XMLSchema"

.field public static final T0:Ljava/lang/String; = "anyType"

.field public static final U0:I = 0x0

.field public static final V0:I = 0x1

.field public static final W0:I = 0x2

.field public static final X0:I = 0x4

.field public static final Y0:I = 0x8

.field public static final YEARMONTHDURATION_DT:S = 0x2es

.field public static final Z0:Lorg/apache/xerces/impl/dv/ValidationContext;

.field public static final a1:Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

.field public static final b1:Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

.field public static final c1:Lorg/apache/xerces/impl/dv/ValidationContext;


# instance fields
.field public A0:S

.field public B0:S

.field public C0:Z

.field public D0:Z

.field public E0:Z

.field public F0:Lorg/apache/xerces/xs/XSNamespaceItem;

.field public G0:Z

.field public J:I

.field public O:Lorg/apache/xerces/xs/ShortList;

.field public Q:Lorg/apache/xerces/xs/datatypes/ObjectList;

.field public Z:Lorg/apache/xerces/xs/StringList;

.field public e:[Lorg/apache/xerces/impl/dv/xs/TypeValidator;

.field public enumerationAnnotations:Lorg/apache/xerces/xs/XSObjectList;

.field public f:Z

.field public fractionDigitsAnnotation:Lorg/apache/xerces/xs/XSAnnotation;

.field public g:Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

.field public h:[Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

.field public i:S

.field public j:Ljava/lang/String;

.field public k:Ljava/lang/String;

.field public k0:Lorg/apache/xerces/xs/StringList;

.field public l:S

.field public lengthAnnotation:Lorg/apache/xerces/xs/XSAnnotation;

.field public m:Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

.field public maxExclusiveAnnotation:Lorg/apache/xerces/xs/XSAnnotation;

.field public maxInclusiveAnnotation:Lorg/apache/xerces/xs/XSAnnotation;

.field public maxLengthAnnotation:Lorg/apache/xerces/xs/XSAnnotation;

.field public minExclusiveAnnotation:Lorg/apache/xerces/xs/XSAnnotation;

.field public minInclusiveAnnotation:Lorg/apache/xerces/xs/XSAnnotation;

.field public minLengthAnnotation:Lorg/apache/xerces/xs/XSAnnotation;

.field public n:S

.field public o:S

.field public p:S

.field public patternAnnotations:Lorg/apache/xerces/impl/xs/util/XSObjectListImpl;

.field public q:S

.field public q0:Lorg/apache/xerces/xs/datatypes/ObjectList;

.field public r:S

.field public s:I

.field public t:I

.field public t0:Ljava/lang/Object;

.field public totalDigitsAnnotation:Lorg/apache/xerces/xs/XSAnnotation;

.field public u:I

.field public u0:Ljava/lang/Object;

.field public v:I

.field public v0:Ljava/lang/Object;

.field public w:I

.field public w0:Ljava/lang/Object;

.field public whiteSpaceAnnotation:Lorg/apache/xerces/xs/XSAnnotation;

.field public x:Ljava/util/Vector;

.field public x0:Lorg/apache/xerces/impl/xs/util/XSObjectListImpl;

.field public y:Ljava/util/Vector;

.field public y0:Lorg/apache/xerces/impl/xs/util/XSObjectListImpl;

.field public z:[Lorg/apache/xerces/impl/dv/ValidatedInfo;

.field public z0:Lorg/apache/xerces/xs/XSObjectList;


# direct methods
.method public static constructor <clinit>()V
    .locals 12

    const/16 v0, 0x1e

    new-array v1, v0, [Lorg/apache/xerces/impl/dv/xs/TypeValidator;

    new-instance v2, Lorg/apache/xerces/impl/dv/xs/AnySimpleDV;

    invoke-direct {v2}, Lorg/apache/xerces/impl/dv/xs/AnySimpleDV;-><init>()V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lorg/apache/xerces/impl/dv/xs/StringDV;

    invoke-direct {v2}, Lorg/apache/xerces/impl/dv/xs/StringDV;-><init>()V

    const/4 v3, 0x1

    aput-object v2, v1, v3

    new-instance v2, Lorg/apache/xerces/impl/dv/xs/BooleanDV;

    invoke-direct {v2}, Lorg/apache/xerces/impl/dv/xs/BooleanDV;-><init>()V

    const/4 v3, 0x2

    aput-object v2, v1, v3

    new-instance v2, Lorg/apache/xerces/impl/dv/xs/DecimalDV;

    invoke-direct {v2}, Lorg/apache/xerces/impl/dv/xs/DecimalDV;-><init>()V

    const/4 v3, 0x3

    aput-object v2, v1, v3

    new-instance v2, Lorg/apache/xerces/impl/dv/xs/FloatDV;

    invoke-direct {v2}, Lorg/apache/xerces/impl/dv/xs/FloatDV;-><init>()V

    const/4 v3, 0x4

    aput-object v2, v1, v3

    new-instance v2, Lorg/apache/xerces/impl/dv/xs/DoubleDV;

    invoke-direct {v2}, Lorg/apache/xerces/impl/dv/xs/DoubleDV;-><init>()V

    const/4 v3, 0x5

    aput-object v2, v1, v3

    new-instance v2, Lorg/apache/xerces/impl/dv/xs/DurationDV;

    invoke-direct {v2}, Lorg/apache/xerces/impl/dv/xs/DurationDV;-><init>()V

    const/4 v3, 0x6

    aput-object v2, v1, v3

    new-instance v2, Lorg/apache/xerces/impl/dv/xs/DateTimeDV;

    invoke-direct {v2}, Lorg/apache/xerces/impl/dv/xs/DateTimeDV;-><init>()V

    const/4 v3, 0x7

    aput-object v2, v1, v3

    new-instance v2, Lorg/apache/xerces/impl/dv/xs/TimeDV;

    invoke-direct {v2}, Lorg/apache/xerces/impl/dv/xs/TimeDV;-><init>()V

    const/16 v3, 0x8

    aput-object v2, v1, v3

    new-instance v2, Lorg/apache/xerces/impl/dv/xs/DateDV;

    invoke-direct {v2}, Lorg/apache/xerces/impl/dv/xs/DateDV;-><init>()V

    const/16 v3, 0x9

    aput-object v2, v1, v3

    new-instance v2, Lorg/apache/xerces/impl/dv/xs/YearMonthDV;

    invoke-direct {v2}, Lorg/apache/xerces/impl/dv/xs/YearMonthDV;-><init>()V

    const/16 v3, 0xa

    aput-object v2, v1, v3

    new-instance v2, Lorg/apache/xerces/impl/dv/xs/YearDV;

    invoke-direct {v2}, Lorg/apache/xerces/impl/dv/xs/YearDV;-><init>()V

    const/16 v3, 0xb

    aput-object v2, v1, v3

    new-instance v2, Lorg/apache/xerces/impl/dv/xs/MonthDayDV;

    invoke-direct {v2}, Lorg/apache/xerces/impl/dv/xs/MonthDayDV;-><init>()V

    const/16 v3, 0xc

    aput-object v2, v1, v3

    new-instance v2, Lorg/apache/xerces/impl/dv/xs/DayDV;

    invoke-direct {v2}, Lorg/apache/xerces/impl/dv/xs/DayDV;-><init>()V

    const/16 v3, 0xd

    aput-object v2, v1, v3

    new-instance v2, Lorg/apache/xerces/impl/dv/xs/MonthDV;

    invoke-direct {v2}, Lorg/apache/xerces/impl/dv/xs/MonthDV;-><init>()V

    const/16 v3, 0xe

    aput-object v2, v1, v3

    new-instance v2, Lorg/apache/xerces/impl/dv/xs/HexBinaryDV;

    invoke-direct {v2}, Lorg/apache/xerces/impl/dv/xs/HexBinaryDV;-><init>()V

    const/16 v3, 0xf

    aput-object v2, v1, v3

    new-instance v2, Lorg/apache/xerces/impl/dv/xs/Base64BinaryDV;

    invoke-direct {v2}, Lorg/apache/xerces/impl/dv/xs/Base64BinaryDV;-><init>()V

    const/16 v3, 0x10

    aput-object v2, v1, v3

    new-instance v2, Lorg/apache/xerces/impl/dv/xs/AnyURIDV;

    invoke-direct {v2}, Lorg/apache/xerces/impl/dv/xs/AnyURIDV;-><init>()V

    const/16 v3, 0x11

    aput-object v2, v1, v3

    new-instance v2, Lorg/apache/xerces/impl/dv/xs/QNameDV;

    invoke-direct {v2}, Lorg/apache/xerces/impl/dv/xs/QNameDV;-><init>()V

    const/16 v3, 0x12

    aput-object v2, v1, v3

    new-instance v2, Lcom/sunia/HTREnginev2/q5l;

    invoke-direct {v2}, Lcom/sunia/HTREnginev2/q5l;-><init>()V

    const/16 v3, 0x13

    aput-object v2, v1, v3

    new-instance v2, Lorg/apache/xerces/impl/dv/xs/QNameDV;

    invoke-direct {v2}, Lorg/apache/xerces/impl/dv/xs/QNameDV;-><init>()V

    const/16 v3, 0x14

    aput-object v2, v1, v3

    new-instance v2, Lorg/apache/xerces/impl/dv/xs/IDDV;

    invoke-direct {v2}, Lorg/apache/xerces/impl/dv/xs/IDDV;-><init>()V

    const/16 v3, 0x15

    aput-object v2, v1, v3

    new-instance v2, Lorg/apache/xerces/impl/dv/xs/IDREFDV;

    invoke-direct {v2}, Lorg/apache/xerces/impl/dv/xs/IDREFDV;-><init>()V

    const/16 v3, 0x16

    aput-object v2, v1, v3

    new-instance v2, Lorg/apache/xerces/impl/dv/xs/EntityDV;

    invoke-direct {v2}, Lorg/apache/xerces/impl/dv/xs/EntityDV;-><init>()V

    const/16 v3, 0x17

    aput-object v2, v1, v3

    new-instance v2, Lorg/apache/xerces/impl/dv/xs/IntegerDV;

    invoke-direct {v2}, Lorg/apache/xerces/impl/dv/xs/IntegerDV;-><init>()V

    const/16 v3, 0x18

    aput-object v2, v1, v3

    new-instance v2, Lorg/apache/xerces/impl/dv/xs/ListDV;

    invoke-direct {v2}, Lorg/apache/xerces/impl/dv/xs/ListDV;-><init>()V

    const/16 v3, 0x19

    aput-object v2, v1, v3

    new-instance v2, Lorg/apache/xerces/impl/dv/xs/UnionDV;

    invoke-direct {v2}, Lorg/apache/xerces/impl/dv/xs/UnionDV;-><init>()V

    const/16 v3, 0x1a

    aput-object v2, v1, v3

    new-instance v2, Lorg/apache/xerces/impl/dv/xs/g;

    invoke-direct {v2}, Lorg/apache/xerces/impl/dv/xs/g;-><init>()V

    const/16 v3, 0x1b

    aput-object v2, v1, v3

    new-instance v2, Lorg/apache/xerces/impl/dv/xs/a;

    invoke-direct {v2}, Lorg/apache/xerces/impl/dv/xs/a;-><init>()V

    const/16 v3, 0x1c

    aput-object v2, v1, v3

    new-instance v2, Lcom/sunia/HTREnginev2/sb;

    invoke-direct {v2}, Lcom/sunia/HTREnginev2/sb;-><init>()V

    const/16 v3, 0x1d

    aput-object v2, v1, v3

    sput-object v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->H0:[Lorg/apache/xerces/impl/dv/xs/TypeValidator;

    new-array v0, v0, [S

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->L0:[S

    const-string v0, "Name"

    const-string v1, "NCName"

    const-string v2, "NONE"

    const-string v3, "NMTOKEN"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->Q0:[Ljava/lang/String;

    const-string v0, "replace"

    const-string v1, "collapse"

    const-string v2, "preserve"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->R0:[Ljava/lang/String;

    new-instance v0, Lorg/apache/xerces/impl/dv/xs/c;

    invoke-direct {v0}, Lorg/apache/xerces/impl/dv/xs/c;-><init>()V

    sput-object v0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->Z0:Lorg/apache/xerces/impl/dv/ValidationContext;

    new-instance v0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    const/4 v2, 0x0

    const-string v3, "anySimpleType"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v10}, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;-><init>(Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;SSZZZZS)V

    sput-object v0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->a1:Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    new-instance v11, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    const-string v3, "anyAtomicType"

    const/16 v4, 0x1d

    const/16 v10, 0x31

    move-object v1, v11

    move-object v2, v0

    invoke-direct/range {v1 .. v10}, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;-><init>(Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;SSZZZZS)V

    sput-object v11, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->b1:Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    new-instance v0, Lorg/apache/xerces/impl/dv/xs/d;

    invoke-direct {v0}, Lorg/apache/xerces/impl/dv/xs/d;-><init>()V

    sput-object v0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->c1:Lorg/apache/xerces/impl/dv/ValidationContext;

    return-void

    nop

    :array_0
    .array-data 2
        0x0s
        0x2s
        0x1s
        0x1s
        0x1s
        0x1s
        0x1s
        0x1s
        0x1s
        0x1s
        0x1s
        0x1s
        0x1s
        0x1s
        0x1s
        0x1s
        0x0s
        0x1s
        0x1s
        0x1s
        0x1s
        0x1s
        0x1s
        0x1s
        0x1s
        0x2s
        0x0s
        0x1s
        0x1s
        0x0s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->H0:[Lorg/apache/xerces/impl/dv/xs/TypeValidator;

    iput-object v0, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->e:[Lorg/apache/xerces/impl/dv/xs/TypeValidator;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->f:Z

    iput-short v0, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->l:S

    const/4 v1, -0x1

    iput-short v1, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->n:S

    iput-short v1, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->o:S

    iput-short v0, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->p:S

    iput-short v0, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->q:S

    iput-short v0, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->r:S

    iput v1, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->s:I

    iput v1, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->t:I

    iput v1, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->u:I

    iput v1, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->v:I

    iput v1, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->w:I

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->z0:Lorg/apache/xerces/xs/XSObjectList;

    iput-short v0, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->A0:S

    iput-object v1, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->F0:Lorg/apache/xerces/xs/XSNamespaceItem;

    iput-boolean v0, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->G0:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;SLorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;ZLorg/apache/xerces/xs/XSObjectList;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->H0:[Lorg/apache/xerces/impl/dv/xs/TypeValidator;

    iput-object v0, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->e:[Lorg/apache/xerces/impl/dv/xs/TypeValidator;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->f:Z

    const/4 v1, -0x1

    iput v1, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->s:I

    iput v1, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->t:I

    iput v1, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->u:I

    iput v1, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->v:I

    iput v1, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->w:I

    iput-short v0, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->A0:S

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->F0:Lorg/apache/xerces/xs/XSNamespaceItem;

    iput-boolean v0, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->G0:Z

    sget-object v0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->a1:Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iput-object v0, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->m:Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iput-object p1, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->j:Ljava/lang/String;

    iput-object p2, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->k:Ljava/lang/String;

    iput-short p3, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->l:S

    iput-object p6, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->z0:Lorg/apache/xerces/xs/XSObjectList;

    const/4 p1, 0x2

    iput-short p1, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->n:S

    iput-object p4, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->g:Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    const/16 p2, 0x19

    iput-short p2, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->o:S

    const/16 p2, 0x10

    iput-short p2, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->p:S

    iput-short p2, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->q:S

    iput-short p1, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->r:S

    invoke-virtual {p0}, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->g()V

    iput-boolean p5, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->f:Z

    const/16 p1, 0x2c

    iput-short p1, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->i:S

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;S[Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;Lorg/apache/xerces/xs/XSObjectList;)V
    .locals 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->H0:[Lorg/apache/xerces/impl/dv/xs/TypeValidator;

    iput-object v0, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->e:[Lorg/apache/xerces/impl/dv/xs/TypeValidator;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->f:Z

    iput-short v0, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->q:S

    const/4 v1, -0x1

    iput v1, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->s:I

    iput v1, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->t:I

    iput v1, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->u:I

    iput v1, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->v:I

    iput v1, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->w:I

    iput-short v0, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->A0:S

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->F0:Lorg/apache/xerces/xs/XSNamespaceItem;

    iput-boolean v0, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->G0:Z

    sget-object v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->a1:Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iput-object v1, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->m:Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iput-object p1, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->j:Ljava/lang/String;

    iput-object p2, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->k:Ljava/lang/String;

    iput-short p3, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->l:S

    iput-object p5, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->z0:Lorg/apache/xerces/xs/XSObjectList;

    const/4 p1, 0x3

    iput-short p1, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->n:S

    iput-object p4, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->h:[Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    const/16 p1, 0x1a

    iput-short p1, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->o:S

    const/16 p1, 0x10

    iput-short p1, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->p:S

    const/4 p1, 0x2

    iput-short p1, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->r:S

    invoke-virtual {p0}, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->g()V

    iput-boolean v0, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->f:Z

    const/16 p1, 0x2d

    iput-short p1, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->i:S

    return-void
.end method

.method public constructor <init>(Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;Ljava/lang/String;SZLorg/apache/xerces/xs/XSObjectList;)V
    .locals 2

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->H0:[Lorg/apache/xerces/impl/dv/xs/TypeValidator;

    iput-object v0, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->e:[Lorg/apache/xerces/impl/dv/xs/TypeValidator;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->f:Z

    const/4 v1, -0x1

    iput-short v1, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->n:S

    iput-short v1, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->o:S

    iput-short v0, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->p:S

    iput-short v0, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->q:S

    iput-short v0, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->r:S

    iput v1, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->s:I

    iput v1, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->t:I

    iput v1, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->u:I

    iput v1, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->v:I

    iput v1, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->w:I

    iput-short v0, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->A0:S

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->F0:Lorg/apache/xerces/xs/XSNamespaceItem;

    iput-boolean v0, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->G0:Z

    iput-object p1, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->m:Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iput-object p2, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->j:Ljava/lang/String;

    iput-object p3, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->k:Ljava/lang/String;

    iput-short p4, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->l:S

    iput-object p6, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->z0:Lorg/apache/xerces/xs/XSObjectList;

    iget-short p2, p1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->n:S

    iput-short p2, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->n:S

    iget-short p3, p1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->o:S

    iput-short p3, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->o:S

    const/4 p3, 0x2

    if-eq p2, p3, :cond_1

    const/4 p3, 0x3

    if-eq p2, p3, :cond_0

    goto :goto_0

    :cond_0
    iget-object p2, p1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->h:[Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iput-object p2, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->h:[Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    goto :goto_0

    :cond_1
    iget-object p2, p1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->g:Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iput-object p2, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->g:Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    :goto_0
    iget p2, p1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->s:I

    iput p2, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->s:I

    iget p2, p1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->t:I

    iput p2, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->t:I

    iget p2, p1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->u:I

    iput p2, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->u:I

    iget-object p2, p1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->x:Ljava/util/Vector;

    iput-object p2, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->x:Ljava/util/Vector;

    iget-object p2, p1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->y:Ljava/util/Vector;

    iput-object p2, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->y:Ljava/util/Vector;

    iget-object p2, p1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->z:[Lorg/apache/xerces/impl/dv/ValidatedInfo;

    iput-object p2, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->z:[Lorg/apache/xerces/impl/dv/ValidatedInfo;

    iget p2, p1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->J:I

    iput p2, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->J:I

    iget-short p2, p1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->r:S

    iput-short p2, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->r:S

    iget-object p2, p1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->u0:Ljava/lang/Object;

    iput-object p2, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->u0:Ljava/lang/Object;

    iget-object p2, p1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->t0:Ljava/lang/Object;

    iput-object p2, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->t0:Ljava/lang/Object;

    iget-object p2, p1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->v0:Ljava/lang/Object;

    iput-object p2, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->v0:Ljava/lang/Object;

    iget-object p2, p1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->w0:Ljava/lang/Object;

    iput-object p2, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->w0:Ljava/lang/Object;

    iget p2, p1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->v:I

    iput p2, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->v:I

    iget p2, p1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->w:I

    iput p2, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->w:I

    iget-short p2, p1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->A0:S

    iput-short p2, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->A0:S

    iget-short p2, p1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->q:S

    iput-short p2, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->q:S

    iget-short p2, p1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->p:S

    iput-short p2, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->p:S

    iget-object p2, p1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->lengthAnnotation:Lorg/apache/xerces/xs/XSAnnotation;

    iput-object p2, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->lengthAnnotation:Lorg/apache/xerces/xs/XSAnnotation;

    iget-object p2, p1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->minLengthAnnotation:Lorg/apache/xerces/xs/XSAnnotation;

    iput-object p2, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->minLengthAnnotation:Lorg/apache/xerces/xs/XSAnnotation;

    iget-object p2, p1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->maxLengthAnnotation:Lorg/apache/xerces/xs/XSAnnotation;

    iput-object p2, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->maxLengthAnnotation:Lorg/apache/xerces/xs/XSAnnotation;

    iget-object p2, p1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->patternAnnotations:Lorg/apache/xerces/impl/xs/util/XSObjectListImpl;

    iput-object p2, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->patternAnnotations:Lorg/apache/xerces/impl/xs/util/XSObjectListImpl;

    iget-object p2, p1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->enumerationAnnotations:Lorg/apache/xerces/xs/XSObjectList;

    iput-object p2, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->enumerationAnnotations:Lorg/apache/xerces/xs/XSObjectList;

    iget-object p2, p1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->whiteSpaceAnnotation:Lorg/apache/xerces/xs/XSAnnotation;

    iput-object p2, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->whiteSpaceAnnotation:Lorg/apache/xerces/xs/XSAnnotation;

    iget-object p2, p1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->maxExclusiveAnnotation:Lorg/apache/xerces/xs/XSAnnotation;

    iput-object p2, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->maxExclusiveAnnotation:Lorg/apache/xerces/xs/XSAnnotation;

    iget-object p2, p1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->maxInclusiveAnnotation:Lorg/apache/xerces/xs/XSAnnotation;

    iput-object p2, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->maxInclusiveAnnotation:Lorg/apache/xerces/xs/XSAnnotation;

    iget-object p2, p1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->minExclusiveAnnotation:Lorg/apache/xerces/xs/XSAnnotation;

    iput-object p2, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->minExclusiveAnnotation:Lorg/apache/xerces/xs/XSAnnotation;

    iget-object p2, p1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->minInclusiveAnnotation:Lorg/apache/xerces/xs/XSAnnotation;

    iput-object p2, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->minInclusiveAnnotation:Lorg/apache/xerces/xs/XSAnnotation;

    iget-object p2, p1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->totalDigitsAnnotation:Lorg/apache/xerces/xs/XSAnnotation;

    iput-object p2, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->totalDigitsAnnotation:Lorg/apache/xerces/xs/XSAnnotation;

    iget-object p2, p1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fractionDigitsAnnotation:Lorg/apache/xerces/xs/XSAnnotation;

    iput-object p2, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fractionDigitsAnnotation:Lorg/apache/xerces/xs/XSAnnotation;

    invoke-virtual {p0}, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->g()V

    iput-boolean p5, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->f:Z

    iget-short p1, p1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->i:S

    iput-short p1, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->i:S

    return-void
.end method

.method public constructor <init>(Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;Ljava/lang/String;SZLorg/apache/xerces/xs/XSObjectList;S)V
    .locals 0

    .line 5
    invoke-direct/range {p0 .. p6}, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;-><init>(Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;Ljava/lang/String;SZLorg/apache/xerces/xs/XSObjectList;)V

    iput-short p7, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->i:S

    return-void
.end method

.method public constructor <init>(Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;SSZZZZS)V
    .locals 2

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->H0:[Lorg/apache/xerces/impl/dv/xs/TypeValidator;

    iput-object v0, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->e:[Lorg/apache/xerces/impl/dv/xs/TypeValidator;

    const/4 v0, 0x0

    iput-short v0, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->l:S

    iput-short v0, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->q:S

    iput-short v0, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->r:S

    const/4 v1, -0x1

    iput v1, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->s:I

    iput v1, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->t:I

    iput v1, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->u:I

    iput v1, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->v:I

    iput v1, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->w:I

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->z0:Lorg/apache/xerces/xs/XSObjectList;

    iput-short v0, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->A0:S

    iput-object v1, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->F0:Lorg/apache/xerces/xs/XSNamespaceItem;

    iput-boolean v0, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->G0:Z

    iput-boolean p8, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->f:Z

    iput-object p1, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->m:Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iput-object p2, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->j:Ljava/lang/String;

    const-string p1, "http://www.w3.org/2001/XMLSchema"

    iput-object p1, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->k:Ljava/lang/String;

    const/4 p1, 0x1

    iput-short p1, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->n:S

    iput-short p3, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->o:S

    const/16 p2, 0x10

    iput-short p2, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->p:S

    if-eqz p3, :cond_1

    const/16 p8, 0x1d

    if-eq p3, p8, :cond_1

    if-ne p3, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    iput-short p1, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->r:S

    iput-short p2, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->q:S

    goto :goto_1

    :cond_1
    :goto_0
    iput-short v0, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->r:S

    :goto_1
    iput-short p4, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->B0:S

    iput-boolean p5, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->D0:Z

    iput-boolean p6, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->C0:Z

    iput-boolean p7, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->E0:Z

    iput-object v1, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->z0:Lorg/apache/xerces/xs/XSObjectList;

    iput-short p9, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->i:S

    return-void
.end method

.method public static synthetic a(Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;)[Lorg/apache/xerces/impl/dv/ValidatedInfo;
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->z:[Lorg/apache/xerces/impl/dv/ValidatedInfo;

    return-object p0
.end method

.method public static synthetic b(Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;)I
    .locals 0

    iget p0, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->J:I

    return p0
.end method

.method public static getGDVs()[Lorg/apache/xerces/impl/dv/xs/TypeValidator;
    .locals 1

    sget-object v0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->H0:[Lorg/apache/xerces/impl/dv/xs/TypeValidator;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/xerces/impl/dv/xs/TypeValidator;

    return-object v0
.end method

.method public static normalize(Ljava/lang/String;S)Ljava/lang/String;
    .locals 12

    .line 2
    const/4 v0, 0x0

    if-nez p0, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    :goto_0
    if-eqz v1, :cond_a

    if-nez p1, :cond_1

    goto/16 :goto_8

    :cond_1
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const/16 v3, 0xd

    const/16 v4, 0xa

    const/16 v5, 0x9

    const/16 v6, 0x20

    const/4 v7, 0x1

    if-ne p1, v7, :cond_4

    :goto_1
    if-lt v0, v1, :cond_2

    goto :goto_4

    :cond_2
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    if-eq p1, v5, :cond_3

    if-eq p1, v4, :cond_3

    if-eq p1, v3, :cond_3

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_3
    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    move p1, v0

    move v8, v7

    :goto_3
    if-lt p1, v1, :cond_5

    :goto_4
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-eq v9, v5, :cond_6

    if-eq v9, v4, :cond_6

    if-eq v9, v3, :cond_6

    if-eq v9, v6, :cond_6

    invoke-virtual {v2, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v8, v0

    goto :goto_7

    :cond_6
    :goto_5
    add-int/lit8 v9, v1, -0x1

    if-lt p1, v9, :cond_7

    goto :goto_6

    :cond_7
    add-int/lit8 v10, p1, 0x1

    invoke-virtual {p0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-eq v11, v5, :cond_9

    if-eq v11, v4, :cond_9

    if-eq v11, v3, :cond_9

    if-eq v11, v6, :cond_9

    :goto_6
    if-ge p1, v9, :cond_8

    if-nez v8, :cond_8

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_8
    :goto_7
    add-int/2addr p1, v7

    goto :goto_3

    :cond_9
    move p1, v10

    goto :goto_5

    :cond_a
    :goto_8
    return-object p0
.end method


# virtual methods
.method public applyFacets(Lorg/apache/xerces/impl/dv/XSFacets;SSLorg/apache/xerces/impl/dv/ValidationContext;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/impl/dv/InvalidDatatypeFacetException;
        }
    .end annotation

    if-nez p4, :cond_0

    sget-object p4, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->Z0:Lorg/apache/xerces/impl/dv/ValidationContext;

    :cond_0
    move-object v5, p4

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->d(Lorg/apache/xerces/impl/dv/XSFacets;SSSLorg/apache/xerces/impl/dv/ValidationContext;)V

    return-void
.end method

.method public final c(Ljava/lang/StringBuffer;)V
    .locals 2

    const/16 v0, 0x5b

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->J:I

    if-lt v0, v1, :cond_0

    const/16 p0, 0x5d

    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    return-void

    :cond_0
    if-eqz v0, :cond_1

    const-string v1, ", "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    iget-object v1, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->z:[Lorg/apache/xerces/impl/dv/ValidatedInfo;

    aget-object v1, v1, v0

    iget-object v1, v1, Lorg/apache/xerces/impl/dv/ValidatedInfo;->actualValue:Ljava/lang/Object;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public d(Lorg/apache/xerces/impl/dv/XSFacets;SSSLorg/apache/xerces/impl/dv/ValidationContext;)V
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/impl/dv/InvalidDatatypeFacetException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    iget-boolean v0, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->f:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v7, Lorg/apache/xerces/impl/dv/ValidatedInfo;

    invoke-direct {v7}, Lorg/apache/xerces/impl/dv/ValidatedInfo;-><init>()V

    const/4 v8, 0x0

    iput-short v8, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->p:S

    iput-short v8, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->q:S

    iget-object v0, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->e:[Lorg/apache/xerces/impl/dv/xs/TypeValidator;

    iget-short v9, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->o:S

    aget-object v0, v0, v9

    invoke-virtual {v0}, Lorg/apache/xerces/impl/dv/xs/TypeValidator;->getAllowedFacets()S

    move-result v9

    and-int/lit8 v0, v3, 0x1

    const-string v10, "cos-applicable-facets"

    const/4 v11, 0x1

    if-eqz v0, :cond_2

    and-int/lit8 v0, v9, 0x1

    if-nez v0, :cond_1

    const-string v0, "length"

    iget-object v12, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->j:Ljava/lang/String;

    filled-new-array {v0, v12}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v10, v0}, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->q(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget v0, v2, Lorg/apache/xerces/impl/dv/XSFacets;->length:I

    iput v0, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->s:I

    iget-object v0, v2, Lorg/apache/xerces/impl/dv/XSFacets;->lengthAnnotation:Lorg/apache/xerces/xs/XSAnnotation;

    iput-object v0, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->lengthAnnotation:Lorg/apache/xerces/xs/XSAnnotation;

    iget-short v0, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->p:S

    or-int/2addr v0, v11

    int-to-short v0, v0

    iput-short v0, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->p:S

    and-int/lit8 v0, v4, 0x1

    if-eqz v0, :cond_2

    iget-short v0, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->q:S

    or-int/2addr v0, v11

    int-to-short v0, v0

    iput-short v0, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->q:S

    :cond_2
    :goto_0
    and-int/lit8 v0, v3, 0x2

    const/4 v12, 0x2

    if-eqz v0, :cond_4

    and-int/lit8 v0, v9, 0x2

    if-nez v0, :cond_3

    const-string v0, "minLength"

    iget-object v13, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->j:Ljava/lang/String;

    filled-new-array {v0, v13}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v10, v0}, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->q(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    iget v0, v2, Lorg/apache/xerces/impl/dv/XSFacets;->minLength:I

    iput v0, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->t:I

    iget-object v0, v2, Lorg/apache/xerces/impl/dv/XSFacets;->minLengthAnnotation:Lorg/apache/xerces/xs/XSAnnotation;

    iput-object v0, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->minLengthAnnotation:Lorg/apache/xerces/xs/XSAnnotation;

    iget-short v0, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->p:S

    or-int/2addr v0, v12

    int-to-short v0, v0

    iput-short v0, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->p:S

    and-int/lit8 v0, v4, 0x2

    if-eqz v0, :cond_4

    iget-short v0, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->q:S

    or-int/2addr v0, v12

    int-to-short v0, v0

    iput-short v0, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->q:S

    :cond_4
    :goto_1
    and-int/lit8 v0, v3, 0x4

    if-eqz v0, :cond_6

    and-int/lit8 v0, v9, 0x4

    if-nez v0, :cond_5

    const-string v0, "maxLength"

    iget-object v13, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->j:Ljava/lang/String;

    filled-new-array {v0, v13}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v10, v0}, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->q(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :cond_5
    iget v0, v2, Lorg/apache/xerces/impl/dv/XSFacets;->maxLength:I

    iput v0, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->u:I

    iget-object v0, v2, Lorg/apache/xerces/impl/dv/XSFacets;->maxLengthAnnotation:Lorg/apache/xerces/xs/XSAnnotation;

    iput-object v0, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->maxLengthAnnotation:Lorg/apache/xerces/xs/XSAnnotation;

    iget-short v0, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->p:S

    or-int/lit8 v0, v0, 0x4

    int-to-short v0, v0

    iput-short v0, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->p:S

    and-int/lit8 v0, v4, 0x4

    if-eqz v0, :cond_6

    iget-short v0, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->q:S

    or-int/lit8 v0, v0, 0x4

    int-to-short v0, v0

    iput-short v0, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->q:S

    :cond_6
    :goto_2
    and-int/lit8 v0, v3, 0x8

    if-eqz v0, :cond_8

    and-int/lit8 v0, v9, 0x8

    if-nez v0, :cond_7

    const-string v0, "pattern"

    iget-object v13, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->j:Ljava/lang/String;

    filled-new-array {v0, v13}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v10, v0}, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->q(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4

    :cond_7
    iget-object v0, v2, Lorg/apache/xerces/impl/dv/XSFacets;->patternAnnotations:Lorg/apache/xerces/impl/xs/util/XSObjectListImpl;

    iput-object v0, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->patternAnnotations:Lorg/apache/xerces/impl/xs/util/XSObjectListImpl;

    :try_start_0
    new-instance v0, Lorg/apache/xerces/impl/xpath/regex/RegularExpression;

    iget-object v13, v2, Lorg/apache/xerces/impl/dv/XSFacets;->pattern:Ljava/lang/String;

    const-string v14, "X"

    invoke-interface/range {p5 .. p5}, Lorg/apache/xerces/impl/dv/ValidationContext;->getLocale()Ljava/util/Locale;

    move-result-object v15

    invoke-direct {v0, v13, v14, v15}, Lorg/apache/xerces/impl/xpath/regex/RegularExpression;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    iget-object v13, v2, Lorg/apache/xerces/impl/dv/XSFacets;->pattern:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v13, v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v13, "InvalidRegex"

    invoke-virtual {v1, v13, v0}, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->q(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    :goto_3
    if-eqz v0, :cond_8

    new-instance v13, Ljava/util/Vector;

    invoke-direct {v13}, Ljava/util/Vector;-><init>()V

    iput-object v13, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->x:Ljava/util/Vector;

    invoke-virtual {v13, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->y:Ljava/util/Vector;

    iget-object v13, v2, Lorg/apache/xerces/impl/dv/XSFacets;->pattern:Ljava/lang/String;

    invoke-virtual {v0, v13}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget-short v0, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->p:S

    or-int/lit8 v0, v0, 0x8

    int-to-short v0, v0

    iput-short v0, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->p:S

    and-int/lit8 v0, v4, 0x8

    if-eqz v0, :cond_8

    iget-short v0, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->q:S

    or-int/lit8 v0, v0, 0x8

    int-to-short v0, v0

    iput-short v0, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->q:S

    :cond_8
    :goto_4
    and-int/lit8 v0, v3, 0x10

    if-eqz v0, :cond_a

    and-int/lit8 v0, v9, 0x10

    if-nez v0, :cond_9

    const-string v0, "whiteSpace"

    iget-object v13, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->j:Ljava/lang/String;

    filled-new-array {v0, v13}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v10, v0}, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->q(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_5

    :cond_9
    iget-short v0, v2, Lorg/apache/xerces/impl/dv/XSFacets;->whiteSpace:S

    iput-short v0, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->r:S

    iget-object v0, v2, Lorg/apache/xerces/impl/dv/XSFacets;->whiteSpaceAnnotation:Lorg/apache/xerces/xs/XSAnnotation;

    iput-object v0, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->whiteSpaceAnnotation:Lorg/apache/xerces/xs/XSAnnotation;

    iget-short v0, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->p:S

    or-int/lit8 v0, v0, 0x10

    int-to-short v0, v0

    iput-short v0, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->p:S

    and-int/lit8 v0, v4, 0x10

    if-eqz v0, :cond_a

    iget-short v0, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->q:S

    or-int/lit8 v0, v0, 0x10

    int-to-short v0, v0

    iput-short v0, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->q:S

    :cond_a
    :goto_5
    and-int/lit16 v0, v3, 0x800

    if-eqz v0, :cond_e

    and-int/lit16 v0, v9, 0x800

    if-nez v0, :cond_b

    const-string v0, "enumeration"

    iget-object v13, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->j:Ljava/lang/String;

    filled-new-array {v0, v13}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v10, v0}, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->q(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_8

    :cond_b
    iget-object v0, v2, Lorg/apache/xerces/impl/dv/XSFacets;->enumeration:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v13

    new-array v14, v13, [Lorg/apache/xerces/impl/dv/ValidatedInfo;

    iput-object v14, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->z:[Lorg/apache/xerces/impl/dv/ValidatedInfo;

    iget-object v14, v2, Lorg/apache/xerces/impl/dv/XSFacets;->enumNSDecls:Ljava/util/Vector;

    new-instance v15, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$b;

    invoke-direct {v15, v6}, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$b;-><init>(Lorg/apache/xerces/impl/dv/ValidationContext;)V

    iget-object v12, v2, Lorg/apache/xerces/impl/dv/XSFacets;->enumAnnotations:Lorg/apache/xerces/xs/XSObjectList;

    iput-object v12, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->enumerationAnnotations:Lorg/apache/xerces/xs/XSObjectList;

    iput v8, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->J:I

    move v12, v8

    :goto_6
    if-lt v12, v13, :cond_c

    iget-short v0, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->p:S

    or-int/lit16 v0, v0, 0x800

    int-to-short v0, v0

    iput-short v0, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->p:S

    and-int/lit16 v0, v4, 0x800

    if-eqz v0, :cond_e

    iget-short v0, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->q:S

    or-int/lit16 v0, v0, 0x800

    int-to-short v0, v0

    iput-short v0, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->q:S

    goto :goto_8

    :cond_c
    if-eqz v14, :cond_d

    invoke-virtual {v14, v12}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v8, v16

    check-cast v8, Lorg/apache/xerces/xni/NamespaceContext;

    invoke-virtual {v15, v8}, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$b;->a(Lorg/apache/xerces/xni/NamespaceContext;)V

    :cond_d
    :try_start_1
    invoke-virtual {v0, v12}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    const/4 v11, 0x0

    invoke-virtual {v1, v8, v15, v11}, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->getActualEnumValue(Ljava/lang/String;Lorg/apache/xerces/impl/dv/ValidationContext;Lorg/apache/xerces/impl/dv/ValidatedInfo;)Lorg/apache/xerces/impl/dv/ValidatedInfo;

    move-result-object v8

    iget-object v11, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->z:[Lorg/apache/xerces/impl/dv/ValidatedInfo;
    :try_end_1
    .catch Lorg/apache/xerces/impl/dv/InvalidDatatypeValueException; {:try_start_1 .. :try_end_1} :catch_1

    move/from16 v18, v13

    :try_start_2
    iget v13, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->J:I
    :try_end_2
    .catch Lorg/apache/xerces/impl/dv/InvalidDatatypeValueException; {:try_start_2 .. :try_end_2} :catch_2

    move-object/from16 v19, v14

    add-int/lit8 v14, v13, 0x1

    :try_start_3
    iput v14, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->J:I

    aput-object v8, v11, v13
    :try_end_3
    .catch Lorg/apache/xerces/impl/dv/InvalidDatatypeValueException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_7

    :catch_1
    move/from16 v18, v13

    :catch_2
    move-object/from16 v19, v14

    :catch_3
    invoke-virtual {v0, v12}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->getBaseType()Lorg/apache/xerces/xs/XSTypeDefinition;

    move-result-object v11

    invoke-interface {v11}, Lorg/apache/xerces/xs/XSObject;->getName()Ljava/lang/String;

    move-result-object v11

    filled-new-array {v8, v11}, [Ljava/lang/Object;

    move-result-object v8

    const-string v11, "enumeration-valid-restriction"

    invoke-virtual {v1, v11, v8}, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->q(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_7
    add-int/lit8 v12, v12, 0x1

    move/from16 v13, v18

    move-object/from16 v14, v19

    const/4 v8, 0x0

    const/4 v11, 0x1

    goto :goto_6

    :cond_e
    :goto_8
    and-int/lit8 v0, v3, 0x20

    const-string v8, "FacetValueFromBase"

    const-string v11, "FixedFacetValue"

    if-eqz v0, :cond_12

    and-int/lit8 v0, v9, 0x20

    const-string v12, "maxInclusive"

    if-nez v0, :cond_f

    iget-object v0, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->j:Ljava/lang/String;

    filled-new-array {v12, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v10, v0}, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->q(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_a

    :cond_f
    iget-object v0, v2, Lorg/apache/xerces/impl/dv/XSFacets;->maxInclusiveAnnotation:Lorg/apache/xerces/xs/XSAnnotation;

    iput-object v0, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->maxInclusiveAnnotation:Lorg/apache/xerces/xs/XSAnnotation;

    :try_start_4
    iget-object v0, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->m:Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-object v13, v2, Lorg/apache/xerces/impl/dv/XSFacets;->maxInclusive:Ljava/lang/String;

    const/4 v14, 0x1

    invoke-virtual {v0, v13, v6, v7, v14}, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->k(Ljava/lang/Object;Lorg/apache/xerces/impl/dv/ValidationContext;Lorg/apache/xerces/impl/dv/ValidatedInfo;Z)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->t0:Ljava/lang/Object;

    iget-short v0, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->p:S

    or-int/lit8 v0, v0, 0x20

    int-to-short v0, v0

    iput-short v0, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->p:S

    and-int/lit8 v0, v4, 0x20

    if-eqz v0, :cond_10

    iget-short v0, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->q:S

    or-int/lit8 v0, v0, 0x20

    int-to-short v0, v0

    iput-short v0, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->q:S
    :try_end_4
    .catch Lorg/apache/xerces/impl/dv/InvalidDatatypeValueException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_9

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Lorg/apache/xerces/impl/dv/DatatypeException;->getKey()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0}, Lorg/apache/xerces/impl/dv/DatatypeException;->getArgs()[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v13, v0}, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->q(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->j:Ljava/lang/String;

    iget-object v13, v2, Lorg/apache/xerces/impl/dv/XSFacets;->maxInclusive:Ljava/lang/String;

    iget-object v14, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->m:Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    invoke-virtual {v14}, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->getName()Ljava/lang/String;

    move-result-object v14

    filled-new-array {v0, v13, v12, v14}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v8, v0}, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->q(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_10
    :goto_9
    iget-object v0, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->m:Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v13, v0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->p:S

    and-int/lit8 v13, v13, 0x20

    if-eqz v13, :cond_11

    iget-short v13, v0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->q:S

    and-int/lit8 v13, v13, 0x20

    if-eqz v13, :cond_11

    iget-object v13, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->e:[Lorg/apache/xerces/impl/dv/xs/TypeValidator;

    iget-short v14, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->o:S

    aget-object v13, v13, v14

    iget-object v14, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->t0:Ljava/lang/Object;

    iget-object v0, v0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->t0:Ljava/lang/Object;

    invoke-virtual {v13, v14, v0}, Lorg/apache/xerces/impl/dv/xs/TypeValidator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->t0:Ljava/lang/Object;

    iget-object v13, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->m:Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-object v13, v13, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->t0:Ljava/lang/Object;

    iget-object v14, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->j:Ljava/lang/String;

    filled-new-array {v12, v0, v13, v14}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v11, v0}, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->q(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_11
    :try_start_5
    iget-object v0, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->m:Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    invoke-virtual {v0, v6, v7}, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->validate(Lorg/apache/xerces/impl/dv/ValidationContext;Lorg/apache/xerces/impl/dv/ValidatedInfo;)V
    :try_end_5
    .catch Lorg/apache/xerces/impl/dv/InvalidDatatypeValueException; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_a

    :catch_5
    move-exception v0

    invoke-virtual {v0}, Lorg/apache/xerces/impl/dv/DatatypeException;->getKey()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0}, Lorg/apache/xerces/impl/dv/DatatypeException;->getArgs()[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v13, v0}, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->q(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->j:Ljava/lang/String;

    iget-object v13, v2, Lorg/apache/xerces/impl/dv/XSFacets;->maxInclusive:Ljava/lang/String;

    iget-object v14, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->m:Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    invoke-virtual {v14}, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->getName()Ljava/lang/String;

    move-result-object v14

    filled-new-array {v0, v13, v12, v14}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v8, v0}, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->q(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_12
    :goto_a
    and-int/lit8 v0, v3, 0x40

    if-eqz v0, :cond_18

    and-int/lit8 v0, v9, 0x40

    const-string v12, "maxExclusive"

    if-nez v0, :cond_13

    iget-object v0, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->j:Ljava/lang/String;

    filled-new-array {v12, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v10, v0}, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->q(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_d

    :cond_13
    iget-object v0, v2, Lorg/apache/xerces/impl/dv/XSFacets;->maxExclusiveAnnotation:Lorg/apache/xerces/xs/XSAnnotation;

    iput-object v0, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->maxExclusiveAnnotation:Lorg/apache/xerces/xs/XSAnnotation;

    :try_start_6
    iget-object v0, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->m:Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-object v13, v2, Lorg/apache/xerces/impl/dv/XSFacets;->maxExclusive:Ljava/lang/String;

    const/4 v14, 0x1

    invoke-virtual {v0, v13, v6, v7, v14}, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->k(Ljava/lang/Object;Lorg/apache/xerces/impl/dv/ValidationContext;Lorg/apache/xerces/impl/dv/ValidatedInfo;Z)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->u0:Ljava/lang/Object;

    iget-short v0, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->p:S

    or-int/lit8 v0, v0, 0x40

    int-to-short v0, v0

    iput-short v0, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->p:S

    and-int/lit8 v0, v4, 0x40

    if-eqz v0, :cond_14

    iget-short v0, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->q:S

    or-int/lit8 v0, v0, 0x40

    int-to-short v0, v0

    iput-short v0, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->q:S
    :try_end_6
    .catch Lorg/apache/xerces/impl/dv/InvalidDatatypeValueException; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_b

    :catch_6
    move-exception v0

    invoke-virtual {v0}, Lorg/apache/xerces/impl/dv/DatatypeException;->getKey()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0}, Lorg/apache/xerces/impl/dv/DatatypeException;->getArgs()[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v13, v0}, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->q(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->j:Ljava/lang/String;

    iget-object v13, v2, Lorg/apache/xerces/impl/dv/XSFacets;->maxExclusive:Ljava/lang/String;

    iget-object v14, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->m:Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    invoke-virtual {v14}, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->getName()Ljava/lang/String;

    move-result-object v14

    filled-new-array {v0, v13, v12, v14}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v8, v0}, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->q(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_14
    :goto_b
    iget-object v0, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->m:Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v13, v0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->p:S

    and-int/lit8 v13, v13, 0x40

    if-eqz v13, :cond_16

    iget-object v13, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->e:[Lorg/apache/xerces/impl/dv/xs/TypeValidator;

    iget-short v14, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->o:S

    aget-object v13, v13, v14

    iget-object v14, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->u0:Ljava/lang/Object;

    iget-object v0, v0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->u0:Ljava/lang/Object;

    invoke-virtual {v13, v14, v0}, Lorg/apache/xerces/impl/dv/xs/TypeValidator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    iget-object v13, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->m:Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v14, v13, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->q:S

    and-int/lit8 v14, v14, 0x40

    if-eqz v14, :cond_15

    if-eqz v0, :cond_15

    iget-object v14, v2, Lorg/apache/xerces/impl/dv/XSFacets;->maxExclusive:Ljava/lang/String;

    iget-object v13, v13, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->u0:Ljava/lang/Object;

    iget-object v15, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->j:Ljava/lang/String;

    filled-new-array {v12, v14, v13, v15}, [Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v1, v11, v13}, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->q(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_15
    if-nez v0, :cond_16

    const/4 v0, 0x0

    goto :goto_c

    :cond_16
    const/4 v0, 0x1

    :goto_c
    if-eqz v0, :cond_17

    :try_start_7
    iget-object v0, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->m:Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    invoke-virtual {v0, v6, v7}, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->validate(Lorg/apache/xerces/impl/dv/ValidationContext;Lorg/apache/xerces/impl/dv/ValidatedInfo;)V
    :try_end_7
    .catch Lorg/apache/xerces/impl/dv/InvalidDatatypeValueException; {:try_start_7 .. :try_end_7} :catch_7

    goto :goto_d

    :catch_7
    move-exception v0

    invoke-virtual {v0}, Lorg/apache/xerces/impl/dv/DatatypeException;->getKey()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0}, Lorg/apache/xerces/impl/dv/DatatypeException;->getArgs()[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v13, v0}, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->q(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->j:Ljava/lang/String;

    iget-object v13, v2, Lorg/apache/xerces/impl/dv/XSFacets;->maxExclusive:Ljava/lang/String;

    iget-object v14, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->m:Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    invoke-virtual {v14}, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->getName()Ljava/lang/String;

    move-result-object v14

    filled-new-array {v0, v13, v12, v14}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v8, v0}, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->q(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_d

    :cond_17
    iget-object v0, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->m:Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v12, v0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->p:S

    and-int/lit8 v12, v12, 0x20

    if-eqz v12, :cond_18

    iget-object v12, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->e:[Lorg/apache/xerces/impl/dv/xs/TypeValidator;

    iget-short v13, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->o:S

    aget-object v12, v12, v13

    iget-object v13, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->u0:Ljava/lang/Object;

    iget-object v0, v0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->t0:Ljava/lang/Object;

    invoke-virtual {v12, v13, v0}, Lorg/apache/xerces/impl/dv/xs/TypeValidator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-lez v0, :cond_18

    iget-object v0, v2, Lorg/apache/xerces/impl/dv/XSFacets;->maxExclusive:Ljava/lang/String;

    iget-object v12, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->m:Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-object v12, v12, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->t0:Ljava/lang/Object;

    filled-new-array {v0, v12}, [Ljava/lang/Object;

    move-result-object v0

    const-string v12, "maxExclusive-valid-restriction.2"

    invoke-virtual {v1, v12, v0}, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->q(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_18
    :goto_d
    and-int/lit16 v0, v3, 0x80

    if-eqz v0, :cond_1e

    and-int/lit16 v0, v9, 0x80

    const-string v12, "minExclusive"

    if-nez v0, :cond_19

    iget-object v0, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->j:Ljava/lang/String;

    filled-new-array {v12, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v10, v0}, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->q(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_10

    :cond_19
    iget-object v0, v2, Lorg/apache/xerces/impl/dv/XSFacets;->minExclusiveAnnotation:Lorg/apache/xerces/xs/XSAnnotation;

    iput-object v0, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->minExclusiveAnnotation:Lorg/apache/xerces/xs/XSAnnotation;

    :try_start_8
    iget-object v0, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->m:Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-object v13, v2, Lorg/apache/xerces/impl/dv/XSFacets;->minExclusive:Ljava/lang/String;

    const/4 v14, 0x1

    invoke-virtual {v0, v13, v6, v7, v14}, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->k(Ljava/lang/Object;Lorg/apache/xerces/impl/dv/ValidationContext;Lorg/apache/xerces/impl/dv/ValidatedInfo;Z)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->v0:Ljava/lang/Object;

    iget-short v0, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->p:S

    or-int/lit16 v0, v0, 0x80

    int-to-short v0, v0

    iput-short v0, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->p:S

    and-int/lit16 v0, v4, 0x80

    if-eqz v0, :cond_1a

    iget-short v0, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->q:S

    or-int/lit16 v0, v0, 0x80

    int-to-short v0, v0

    iput-short v0, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->q:S
    :try_end_8
    .catch Lorg/apache/xerces/impl/dv/InvalidDatatypeValueException; {:try_start_8 .. :try_end_8} :catch_8

    goto :goto_e

    :catch_8
    move-exception v0

    invoke-virtual {v0}, Lorg/apache/xerces/impl/dv/DatatypeException;->getKey()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0}, Lorg/apache/xerces/impl/dv/DatatypeException;->getArgs()[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v13, v0}, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->q(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->j:Ljava/lang/String;

    iget-object v13, v2, Lorg/apache/xerces/impl/dv/XSFacets;->minExclusive:Ljava/lang/String;

    iget-object v14, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->m:Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    invoke-virtual {v14}, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->getName()Ljava/lang/String;

    move-result-object v14

    filled-new-array {v0, v13, v12, v14}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v8, v0}, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->q(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1a
    :goto_e
    iget-object v0, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->m:Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v13, v0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->p:S

    and-int/lit16 v13, v13, 0x80

    if-eqz v13, :cond_1c

    iget-object v13, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->e:[Lorg/apache/xerces/impl/dv/xs/TypeValidator;

    iget-short v14, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->o:S

    aget-object v13, v13, v14

    iget-object v14, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->v0:Ljava/lang/Object;

    iget-object v0, v0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->v0:Ljava/lang/Object;

    invoke-virtual {v13, v14, v0}, Lorg/apache/xerces/impl/dv/xs/TypeValidator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    iget-object v13, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->m:Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v14, v13, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->q:S

    and-int/lit16 v14, v14, 0x80

    if-eqz v14, :cond_1b

    if-eqz v0, :cond_1b

    iget-object v14, v2, Lorg/apache/xerces/impl/dv/XSFacets;->minExclusive:Ljava/lang/String;

    iget-object v13, v13, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->v0:Ljava/lang/Object;

    iget-object v15, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->j:Ljava/lang/String;

    filled-new-array {v12, v14, v13, v15}, [Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v1, v11, v13}, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->q(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1b
    if-nez v0, :cond_1c

    const/16 v17, 0x0

    goto :goto_f

    :cond_1c
    const/16 v17, 0x1

    :goto_f
    if-eqz v17, :cond_1d

    :try_start_9
    iget-object v0, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->m:Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    invoke-virtual {v0, v6, v7}, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->validate(Lorg/apache/xerces/impl/dv/ValidationContext;Lorg/apache/xerces/impl/dv/ValidatedInfo;)V
    :try_end_9
    .catch Lorg/apache/xerces/impl/dv/InvalidDatatypeValueException; {:try_start_9 .. :try_end_9} :catch_9

    goto :goto_10

    :catch_9
    move-exception v0

    invoke-virtual {v0}, Lorg/apache/xerces/impl/dv/DatatypeException;->getKey()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0}, Lorg/apache/xerces/impl/dv/DatatypeException;->getArgs()[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v13, v0}, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->q(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->j:Ljava/lang/String;

    iget-object v13, v2, Lorg/apache/xerces/impl/dv/XSFacets;->minExclusive:Ljava/lang/String;

    iget-object v14, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->m:Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    invoke-virtual {v14}, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->getName()Ljava/lang/String;

    move-result-object v14

    filled-new-array {v0, v13, v12, v14}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v8, v0}, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->q(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_10

    :cond_1d
    iget-object v0, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->m:Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v12, v0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->p:S

    and-int/lit16 v12, v12, 0x100

    if-eqz v12, :cond_1e

    iget-object v12, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->e:[Lorg/apache/xerces/impl/dv/xs/TypeValidator;

    iget-short v13, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->o:S

    aget-object v12, v12, v13

    iget-object v13, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->v0:Ljava/lang/Object;

    iget-object v0, v0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->w0:Ljava/lang/Object;

    invoke-virtual {v12, v13, v0}, Lorg/apache/xerces/impl/dv/xs/TypeValidator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_1e

    iget-object v0, v2, Lorg/apache/xerces/impl/dv/XSFacets;->minExclusive:Ljava/lang/String;

    iget-object v12, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->m:Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-object v12, v12, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->w0:Ljava/lang/Object;

    filled-new-array {v0, v12}, [Ljava/lang/Object;

    move-result-object v0

    const-string v12, "minExclusive-valid-restriction.3"

    invoke-virtual {v1, v12, v0}, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->q(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1e
    :goto_10
    and-int/lit16 v0, v3, 0x100

    if-eqz v0, :cond_22

    and-int/lit16 v0, v9, 0x100

    const-string v12, "minInclusive"

    if-nez v0, :cond_1f

    iget-object v0, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->j:Ljava/lang/String;

    filled-new-array {v12, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v10, v0}, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->q(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_12

    :cond_1f
    iget-object v0, v2, Lorg/apache/xerces/impl/dv/XSFacets;->minInclusiveAnnotation:Lorg/apache/xerces/xs/XSAnnotation;

    iput-object v0, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->minInclusiveAnnotation:Lorg/apache/xerces/xs/XSAnnotation;

    :try_start_a
    iget-object v0, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->m:Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-object v13, v2, Lorg/apache/xerces/impl/dv/XSFacets;->minInclusive:Ljava/lang/String;

    const/4 v14, 0x1

    invoke-virtual {v0, v13, v6, v7, v14}, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->k(Ljava/lang/Object;Lorg/apache/xerces/impl/dv/ValidationContext;Lorg/apache/xerces/impl/dv/ValidatedInfo;Z)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->w0:Ljava/lang/Object;

    iget-short v0, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->p:S

    or-int/lit16 v0, v0, 0x100

    int-to-short v0, v0

    iput-short v0, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->p:S

    and-int/lit16 v0, v4, 0x100

    if-eqz v0, :cond_20

    iget-short v0, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->q:S

    or-int/lit16 v0, v0, 0x100

    int-to-short v0, v0

    iput-short v0, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->q:S
    :try_end_a
    .catch Lorg/apache/xerces/impl/dv/InvalidDatatypeValueException; {:try_start_a .. :try_end_a} :catch_a

    goto :goto_11

    :catch_a
    move-exception v0

    invoke-virtual {v0}, Lorg/apache/xerces/impl/dv/DatatypeException;->getKey()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0}, Lorg/apache/xerces/impl/dv/DatatypeException;->getArgs()[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v13, v0}, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->q(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->j:Ljava/lang/String;

    iget-object v13, v2, Lorg/apache/xerces/impl/dv/XSFacets;->minInclusive:Ljava/lang/String;

    iget-object v14, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->m:Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    invoke-virtual {v14}, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->getName()Ljava/lang/String;

    move-result-object v14

    filled-new-array {v0, v13, v12, v14}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v8, v0}, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->q(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_20
    :goto_11
    iget-object v0, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->m:Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v13, v0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->p:S

    and-int/lit16 v13, v13, 0x100

    if-eqz v13, :cond_21

    iget-short v13, v0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->q:S

    and-int/lit16 v13, v13, 0x100

    if-eqz v13, :cond_21

    iget-object v13, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->e:[Lorg/apache/xerces/impl/dv/xs/TypeValidator;

    iget-short v14, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->o:S

    aget-object v13, v13, v14

    iget-object v14, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->w0:Ljava/lang/Object;

    iget-object v0, v0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->w0:Ljava/lang/Object;

    invoke-virtual {v13, v14, v0}, Lorg/apache/xerces/impl/dv/xs/TypeValidator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-eqz v0, :cond_21

    iget-object v0, v2, Lorg/apache/xerces/impl/dv/XSFacets;->minInclusive:Ljava/lang/String;

    iget-object v13, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->m:Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-object v13, v13, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->w0:Ljava/lang/Object;

    iget-object v14, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->j:Ljava/lang/String;

    filled-new-array {v12, v0, v13, v14}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v11, v0}, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->q(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_21
    :try_start_b
    iget-object v0, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->m:Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    invoke-virtual {v0, v6, v7}, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->validate(Lorg/apache/xerces/impl/dv/ValidationContext;Lorg/apache/xerces/impl/dv/ValidatedInfo;)V
    :try_end_b
    .catch Lorg/apache/xerces/impl/dv/InvalidDatatypeValueException; {:try_start_b .. :try_end_b} :catch_b

    goto :goto_12

    :catch_b
    move-exception v0

    invoke-virtual {v0}, Lorg/apache/xerces/impl/dv/DatatypeException;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lorg/apache/xerces/impl/dv/DatatypeException;->getArgs()[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v6, v0}, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->q(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->j:Ljava/lang/String;

    iget-object v6, v2, Lorg/apache/xerces/impl/dv/XSFacets;->minInclusive:Ljava/lang/String;

    iget-object v7, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->m:Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    invoke-virtual {v7}, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->getName()Ljava/lang/String;

    move-result-object v7

    filled-new-array {v0, v6, v12, v7}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v8, v0}, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->q(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_22
    :goto_12
    and-int/lit16 v0, v3, 0x200

    if-eqz v0, :cond_24

    and-int/lit16 v0, v9, 0x200

    if-nez v0, :cond_23

    const-string v0, "totalDigits"

    iget-object v6, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->j:Ljava/lang/String;

    filled-new-array {v0, v6}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v10, v0}, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->q(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_13

    :cond_23
    iget-object v0, v2, Lorg/apache/xerces/impl/dv/XSFacets;->totalDigitsAnnotation:Lorg/apache/xerces/xs/XSAnnotation;

    iput-object v0, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->totalDigitsAnnotation:Lorg/apache/xerces/xs/XSAnnotation;

    iget v0, v2, Lorg/apache/xerces/impl/dv/XSFacets;->totalDigits:I

    iput v0, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->v:I

    iget-short v0, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->p:S

    or-int/lit16 v0, v0, 0x200

    int-to-short v0, v0

    iput-short v0, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->p:S

    and-int/lit16 v0, v4, 0x200

    if-eqz v0, :cond_24

    iget-short v0, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->q:S

    or-int/lit16 v0, v0, 0x200

    int-to-short v0, v0

    iput-short v0, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->q:S

    :cond_24
    :goto_13
    and-int/lit16 v0, v3, 0x400

    const-string v3, "fractionDigits"

    if-eqz v0, :cond_26

    and-int/lit16 v0, v9, 0x400

    if-nez v0, :cond_25

    iget-object v0, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->j:Ljava/lang/String;

    filled-new-array {v3, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v10, v0}, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->q(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_14

    :cond_25
    iget v0, v2, Lorg/apache/xerces/impl/dv/XSFacets;->fractionDigits:I

    iput v0, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->w:I

    iget-object v0, v2, Lorg/apache/xerces/impl/dv/XSFacets;->fractionDigitsAnnotation:Lorg/apache/xerces/xs/XSAnnotation;

    iput-object v0, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fractionDigitsAnnotation:Lorg/apache/xerces/xs/XSAnnotation;

    iget-short v0, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->p:S

    or-int/lit16 v0, v0, 0x400

    int-to-short v0, v0

    iput-short v0, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->p:S

    and-int/lit16 v0, v4, 0x400

    if-eqz v0, :cond_26

    iget-short v0, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->q:S

    or-int/lit16 v0, v0, 0x400

    int-to-short v0, v0

    iput-short v0, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->q:S

    :cond_26
    :goto_14
    if-eqz v5, :cond_27

    iput-short v5, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->A0:S

    :cond_27
    iget-short v0, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->p:S

    if-eqz v0, :cond_4b

    and-int/lit8 v2, v0, 0x2

    if-eqz v2, :cond_28

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_28

    iget v0, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->t:I

    iget v2, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->u:I

    if-le v0, v2, :cond_28

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iget v2, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->u:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v4, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->j:Ljava/lang/String;

    filled-new-array {v0, v2, v4}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "minLength-less-than-equal-to-maxLength"

    invoke-virtual {v1, v2, v0}, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->q(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_28
    iget-short v0, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->p:S

    and-int/lit8 v2, v0, 0x40

    if-eqz v2, :cond_29

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_29

    iget-object v0, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->t0:Ljava/lang/Object;

    iget-object v2, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->u0:Ljava/lang/Object;

    iget-object v4, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->j:Ljava/lang/String;

    filled-new-array {v0, v2, v4}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "maxInclusive-maxExclusive"

    invoke-virtual {v1, v2, v0}, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->q(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_29
    iget-short v0, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->p:S

    and-int/lit16 v2, v0, 0x80

    if-eqz v2, :cond_2a

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_2a

    iget-object v0, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->w0:Ljava/lang/Object;

    iget-object v2, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->v0:Ljava/lang/Object;

    iget-object v4, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->j:Ljava/lang/String;

    filled-new-array {v0, v2, v4}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "minInclusive-minExclusive"

    invoke-virtual {v1, v2, v0}, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->q(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2a
    iget-short v0, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->p:S

    and-int/lit8 v2, v0, 0x20

    const/4 v4, -0x1

    if-eqz v2, :cond_2b

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_2b

    iget-object v0, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->e:[Lorg/apache/xerces/impl/dv/xs/TypeValidator;

    iget-short v2, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->o:S

    aget-object v0, v0, v2

    iget-object v2, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->w0:Ljava/lang/Object;

    iget-object v5, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->t0:Ljava/lang/Object;

    invoke-virtual {v0, v2, v5}, Lorg/apache/xerces/impl/dv/xs/TypeValidator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-eq v0, v4, :cond_2b

    if-eqz v0, :cond_2b

    iget-object v0, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->w0:Ljava/lang/Object;

    iget-object v2, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->t0:Ljava/lang/Object;

    iget-object v5, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->j:Ljava/lang/String;

    filled-new-array {v0, v2, v5}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "minInclusive-less-than-equal-to-maxInclusive"

    invoke-virtual {v1, v2, v0}, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->q(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2b
    iget-short v0, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->p:S

    and-int/lit8 v2, v0, 0x40

    if-eqz v2, :cond_2c

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_2c

    iget-object v0, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->e:[Lorg/apache/xerces/impl/dv/xs/TypeValidator;

    iget-short v2, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->o:S

    aget-object v0, v0, v2

    iget-object v2, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->v0:Ljava/lang/Object;

    iget-object v5, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->u0:Ljava/lang/Object;

    invoke-virtual {v0, v2, v5}, Lorg/apache/xerces/impl/dv/xs/TypeValidator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-eq v0, v4, :cond_2c

    if-eqz v0, :cond_2c

    iget-object v0, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->v0:Ljava/lang/Object;

    iget-object v2, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->u0:Ljava/lang/Object;

    iget-object v5, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->j:Ljava/lang/String;

    filled-new-array {v0, v2, v5}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "minExclusive-less-than-equal-to-maxExclusive"

    invoke-virtual {v1, v2, v0}, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->q(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2c
    iget-short v0, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->p:S

    and-int/lit8 v2, v0, 0x20

    if-eqz v2, :cond_2d

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_2d

    iget-object v0, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->e:[Lorg/apache/xerces/impl/dv/xs/TypeValidator;

    iget-short v2, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->o:S

    aget-object v0, v0, v2

    iget-object v2, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->v0:Ljava/lang/Object;

    iget-object v5, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->t0:Ljava/lang/Object;

    invoke-virtual {v0, v2, v5}, Lorg/apache/xerces/impl/dv/xs/TypeValidator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-eq v0, v4, :cond_2d

    iget-object v0, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->v0:Ljava/lang/Object;

    iget-object v2, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->t0:Ljava/lang/Object;

    iget-object v5, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->j:Ljava/lang/String;

    filled-new-array {v0, v2, v5}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "minExclusive-less-than-maxInclusive"

    invoke-virtual {v1, v2, v0}, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->q(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2d
    iget-short v0, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->p:S

    and-int/lit8 v2, v0, 0x40

    if-eqz v2, :cond_2e

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_2e

    iget-object v0, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->e:[Lorg/apache/xerces/impl/dv/xs/TypeValidator;

    iget-short v2, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->o:S

    aget-object v0, v0, v2

    iget-object v2, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->w0:Ljava/lang/Object;

    iget-object v5, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->u0:Ljava/lang/Object;

    invoke-virtual {v0, v2, v5}, Lorg/apache/xerces/impl/dv/xs/TypeValidator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-eq v0, v4, :cond_2e

    iget-object v0, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->w0:Ljava/lang/Object;

    iget-object v2, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->u0:Ljava/lang/Object;

    iget-object v4, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->j:Ljava/lang/String;

    filled-new-array {v0, v2, v4}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "minInclusive-less-than-maxExclusive"

    invoke-virtual {v1, v2, v0}, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->q(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2e
    iget-short v0, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->p:S

    and-int/lit16 v2, v0, 0x400

    if-eqz v2, :cond_2f

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_2f

    iget v0, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->w:I

    iget v2, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->v:I

    if-le v0, v2, :cond_2f

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iget v2, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->v:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v4, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->j:Ljava/lang/String;

    filled-new-array {v0, v2, v4}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "fractionDigits-totalDigits"

    invoke-virtual {v1, v2, v0}, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->q(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2f
    iget-short v0, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->p:S

    const/4 v2, 0x1

    and-int/2addr v0, v2

    if-eqz v0, :cond_32

    iget-object v0, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->m:Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v2, v0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->p:S

    const/4 v4, 0x2

    and-int/2addr v2, v4

    if-eqz v2, :cond_30

    iget v2, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->s:I

    iget v0, v0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->t:I

    if-ge v2, v0, :cond_30

    iget-object v0, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->j:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v4, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->m:Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget v4, v4, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->t:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    filled-new-array {v0, v2, v4}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "length-minLength-maxLength.1.1"

    invoke-virtual {v1, v2, v0}, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->q(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_30
    iget-object v0, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->m:Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v2, v0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->p:S

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_31

    iget v2, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->s:I

    iget v0, v0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->u:I

    if-le v2, v0, :cond_31

    iget-object v0, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->j:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v4, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->m:Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget v4, v4, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->u:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    filled-new-array {v0, v2, v4}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "length-minLength-maxLength.2.1"

    invoke-virtual {v1, v2, v0}, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->q(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_31
    iget-object v0, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->m:Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v2, v0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->p:S

    const/4 v4, 0x1

    and-int/2addr v2, v4

    if-eqz v2, :cond_32

    iget v2, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->s:I

    iget v0, v0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->s:I

    if-eq v2, v0, :cond_32

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->m:Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget v2, v2, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->s:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v4, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->j:Ljava/lang/String;

    filled-new-array {v0, v2, v4}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "length-valid-restriction"

    invoke-virtual {v1, v2, v0}, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->q(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_32
    iget-object v0, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->m:Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v2, v0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->p:S

    const/4 v4, 0x1

    and-int/2addr v2, v4

    if-nez v2, :cond_33

    iget-short v2, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->p:S

    and-int/2addr v2, v4

    if-eqz v2, :cond_39

    :cond_33
    iget-short v2, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->p:S

    const/4 v4, 0x2

    and-int/2addr v2, v4

    if-eqz v2, :cond_36

    iget v0, v0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->s:I

    iget v2, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->t:I

    if-ge v0, v2, :cond_34

    iget-object v2, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->j:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iget v4, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->t:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    filled-new-array {v2, v0, v4}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "length-minLength-maxLength.1.1"

    invoke-virtual {v1, v2, v0}, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->q(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_34
    iget-object v0, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->m:Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v0, v0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->p:S

    const/4 v2, 0x2

    and-int/2addr v0, v2

    if-nez v0, :cond_35

    iget-object v0, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->j:Ljava/lang/String;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "length-minLength-maxLength.1.2.a"

    invoke-virtual {v1, v2, v0}, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->q(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_35
    iget v0, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->t:I

    iget-object v2, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->m:Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget v2, v2, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->t:I

    if-eq v0, v2, :cond_36

    iget-object v2, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->j:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v4, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->m:Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget v4, v4, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->t:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    filled-new-array {v2, v0, v4}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "length-minLength-maxLength.1.2.b"

    invoke-virtual {v1, v2, v0}, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->q(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_36
    iget-short v0, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->p:S

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_39

    iget-object v0, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->m:Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget v0, v0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->s:I

    iget v2, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->u:I

    if-le v0, v2, :cond_37

    iget-object v2, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->j:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iget v4, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->u:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    filled-new-array {v2, v0, v4}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "length-minLength-maxLength.2.1"

    invoke-virtual {v1, v2, v0}, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->q(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_37
    iget-object v0, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->m:Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v0, v0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->p:S

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_38

    iget-object v0, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->j:Ljava/lang/String;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "length-minLength-maxLength.2.2.a"

    invoke-virtual {v1, v2, v0}, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->q(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_38
    iget v0, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->u:I

    iget-object v2, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->m:Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget v2, v2, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->u:I

    if-eq v0, v2, :cond_39

    iget-object v2, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->j:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v4, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->m:Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-object v4, v4, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->m:Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget v4, v4, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->u:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    filled-new-array {v2, v0, v4}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "length-minLength-maxLength.2.2.b"

    invoke-virtual {v1, v2, v0}, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->q(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_39
    iget-short v0, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->p:S

    const/4 v2, 0x2

    and-int/2addr v0, v2

    if-eqz v0, :cond_3c

    iget-object v0, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->m:Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v2, v0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->p:S

    and-int/lit8 v4, v2, 0x4

    if-eqz v4, :cond_3a

    iget v2, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->t:I

    iget v0, v0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->u:I

    if-le v2, v0, :cond_3c

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->m:Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget v2, v2, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->u:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v4, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->j:Ljava/lang/String;

    filled-new-array {v0, v2, v4}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "minLength-less-than-equal-to-maxLength"

    invoke-virtual {v1, v2, v0}, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->q(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_15

    :cond_3a
    const/4 v4, 0x2

    and-int/2addr v2, v4

    if-eqz v2, :cond_3c

    iget-short v2, v0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->q:S

    and-int/2addr v2, v4

    if-eqz v2, :cond_3b

    iget v2, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->t:I

    iget v0, v0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->t:I

    if-eq v2, v0, :cond_3b

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->m:Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget v2, v2, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->t:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v4, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->j:Ljava/lang/String;

    const-string v5, "minLength"

    filled-new-array {v5, v0, v2, v4}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v11, v0}, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->q(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3b
    iget v0, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->t:I

    iget-object v2, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->m:Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget v2, v2, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->t:I

    if-ge v0, v2, :cond_3c

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->m:Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget v2, v2, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->t:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v4, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->j:Ljava/lang/String;

    filled-new-array {v0, v2, v4}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "minLength-valid-restriction"

    invoke-virtual {v1, v2, v0}, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->q(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3c
    :goto_15
    iget-short v0, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->p:S

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_3d

    iget-object v0, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->m:Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v2, v0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->p:S

    const/4 v4, 0x2

    and-int/2addr v2, v4

    if-eqz v2, :cond_3d

    iget v2, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->u:I

    iget v0, v0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->t:I

    if-ge v2, v0, :cond_3d

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iget v2, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->u:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "minLength-less-than-equal-to-maxLength"

    invoke-virtual {v1, v2, v0}, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->q(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3d
    iget-short v0, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->p:S

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_3f

    iget-object v0, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->m:Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v2, v0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->p:S

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_3f

    iget-short v2, v0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->q:S

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_3e

    iget v2, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->u:I

    iget v0, v0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->u:I

    if-eq v2, v0, :cond_3e

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->m:Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget v2, v2, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->u:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v4, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->j:Ljava/lang/String;

    const-string v5, "maxLength"

    filled-new-array {v5, v0, v2, v4}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v11, v0}, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->q(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3e
    iget v0, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->u:I

    iget-object v2, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->m:Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget v2, v2, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->u:I

    if-le v0, v2, :cond_3f

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->m:Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget v2, v2, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->u:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v4, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->j:Ljava/lang/String;

    filled-new-array {v0, v2, v4}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "maxLength-valid-restriction"

    invoke-virtual {v1, v2, v0}, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->q(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3f
    iget-short v0, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->p:S

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_41

    iget-object v0, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->m:Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v2, v0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->p:S

    and-int/lit16 v2, v2, 0x200

    if-eqz v2, :cond_41

    iget-short v2, v0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->q:S

    and-int/lit16 v2, v2, 0x200

    if-eqz v2, :cond_40

    iget v2, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->v:I

    iget v0, v0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->v:I

    if-eq v2, v0, :cond_40

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->m:Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget v2, v2, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->v:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v4, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->j:Ljava/lang/String;

    const-string v5, "totalDigits"

    filled-new-array {v5, v0, v2, v4}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v11, v0}, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->q(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_40
    iget v0, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->v:I

    iget-object v2, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->m:Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget v2, v2, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->v:I

    if-le v0, v2, :cond_41

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->m:Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget v2, v2, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->v:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v4, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->j:Ljava/lang/String;

    filled-new-array {v0, v2, v4}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "totalDigits-valid-restriction"

    invoke-virtual {v1, v2, v0}, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->q(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_41
    iget-short v0, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->p:S

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_42

    iget-object v0, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->m:Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v2, v0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->p:S

    and-int/lit16 v2, v2, 0x200

    if-eqz v2, :cond_42

    iget v2, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->w:I

    iget v0, v0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->v:I

    if-le v2, v0, :cond_42

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iget v2, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->v:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v4, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->j:Ljava/lang/String;

    filled-new-array {v0, v2, v4}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "fractionDigits-totalDigits"

    invoke-virtual {v1, v2, v0}, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->q(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_42
    iget-short v0, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->p:S

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_47

    iget-object v0, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->m:Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v2, v0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->p:S

    and-int/lit16 v2, v2, 0x400

    if-eqz v2, :cond_46

    iget-short v2, v0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->q:S

    and-int/lit16 v2, v2, 0x400

    if-eqz v2, :cond_43

    iget v2, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->w:I

    iget v0, v0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->w:I

    if-ne v2, v0, :cond_44

    :cond_43
    iget-short v0, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->o:S

    const/16 v2, 0x18

    if-ne v0, v2, :cond_45

    iget v0, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->w:I

    if-eqz v0, :cond_45

    :cond_44
    iget v0, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->w:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->m:Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget v2, v2, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->w:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v4, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->j:Ljava/lang/String;

    filled-new-array {v3, v0, v2, v4}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v11, v0}, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->q(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_45
    iget v0, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->w:I

    iget-object v2, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->m:Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget v2, v2, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->w:I

    if-le v0, v2, :cond_47

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->m:Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget v2, v2, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->w:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->j:Ljava/lang/String;

    filled-new-array {v0, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "fractionDigits-valid-restriction"

    invoke-virtual {v1, v2, v0}, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->q(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_16

    :cond_46
    iget-short v0, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->o:S

    const/16 v2, 0x18

    if-ne v0, v2, :cond_47

    iget v0, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->w:I

    if-eqz v0, :cond_47

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "0"

    iget-object v4, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->j:Ljava/lang/String;

    filled-new-array {v3, v0, v2, v4}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v11, v0}, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->q(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_47
    :goto_16
    iget-short v0, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->p:S

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4b

    iget-object v0, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->m:Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v2, v0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->p:S

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_4b

    iget-short v2, v0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->q:S

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_48

    iget-short v2, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->r:S

    iget-short v0, v0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->r:S

    if-eq v2, v0, :cond_48

    invoke-virtual {v1, v2}, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->w(S)Ljava/lang/String;

    move-result-object v0

    iget-object v2, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->m:Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v2, v2, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->r:S

    invoke-virtual {v1, v2}, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->w(S)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->j:Ljava/lang/String;

    const-string v4, "whiteSpace"

    filled-new-array {v4, v0, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v11, v0}, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->q(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_48
    iget-short v0, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->r:S

    if-nez v0, :cond_49

    iget-object v0, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->m:Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v0, v0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->r:S

    const/4 v2, 0x2

    if-ne v0, v2, :cond_49

    iget-object v0, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->j:Ljava/lang/String;

    const-string v2, "preserve"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "whiteSpace-valid-restriction.1"

    invoke-virtual {v1, v2, v0}, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->q(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_49
    iget-short v0, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->r:S

    const/4 v2, 0x1

    if-ne v0, v2, :cond_4a

    iget-object v0, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->m:Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v0, v0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->r:S

    const/4 v2, 0x2

    if-ne v0, v2, :cond_4a

    iget-object v0, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->j:Ljava/lang/String;

    const-string v2, "replace"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "whiteSpace-valid-restriction.1"

    invoke-virtual {v1, v2, v0}, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->q(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4a
    iget-short v0, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->r:S

    if-nez v0, :cond_4b

    iget-object v0, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->m:Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v0, v0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->r:S

    const/4 v2, 0x1

    if-ne v0, v2, :cond_4b

    iget-object v0, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->j:Ljava/lang/String;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "whiteSpace-valid-restriction.2"

    invoke-virtual {v1, v2, v0}, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->q(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4b
    iget-short v0, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->p:S

    and-int/lit8 v2, v0, 0x1

    if-nez v2, :cond_4c

    iget-object v2, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->m:Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v3, v2, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->p:S

    const/4 v4, 0x1

    and-int/2addr v3, v4

    if-eqz v3, :cond_4c

    or-int/2addr v0, v4

    int-to-short v0, v0

    iput-short v0, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->p:S

    iget v0, v2, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->s:I

    iput v0, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->s:I

    iget-object v0, v2, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->lengthAnnotation:Lorg/apache/xerces/xs/XSAnnotation;

    iput-object v0, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->lengthAnnotation:Lorg/apache/xerces/xs/XSAnnotation;

    :cond_4c
    iget-short v0, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->p:S

    and-int/lit8 v2, v0, 0x2

    if-nez v2, :cond_4d

    iget-object v2, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->m:Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v3, v2, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->p:S

    const/4 v4, 0x2

    and-int/2addr v3, v4

    if-eqz v3, :cond_4d

    or-int/2addr v0, v4

    int-to-short v0, v0

    iput-short v0, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->p:S

    iget v0, v2, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->t:I

    iput v0, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->t:I

    iget-object v0, v2, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->minLengthAnnotation:Lorg/apache/xerces/xs/XSAnnotation;

    iput-object v0, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->minLengthAnnotation:Lorg/apache/xerces/xs/XSAnnotation;

    :cond_4d
    iget-short v0, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->p:S

    and-int/lit8 v2, v0, 0x4

    if-nez v2, :cond_4e

    iget-object v2, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->m:Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v3, v2, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->p:S

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_4e

    or-int/lit8 v0, v0, 0x4

    int-to-short v0, v0

    iput-short v0, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->p:S

    iget v0, v2, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->u:I

    iput v0, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->u:I

    iget-object v0, v2, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->maxLengthAnnotation:Lorg/apache/xerces/xs/XSAnnotation;

    iput-object v0, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->maxLengthAnnotation:Lorg/apache/xerces/xs/XSAnnotation;

    :cond_4e
    iget-object v0, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->m:Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v2, v0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->p:S

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_53

    iget-short v2, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->p:S

    and-int/lit8 v3, v2, 0x8

    if-nez v3, :cond_50

    or-int/lit8 v2, v2, 0x8

    int-to-short v2, v2

    iput-short v2, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->p:S

    iget-object v2, v0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->x:Ljava/util/Vector;

    iput-object v2, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->x:Ljava/util/Vector;

    iget-object v2, v0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->y:Ljava/util/Vector;

    iput-object v2, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->y:Ljava/util/Vector;

    iget-object v0, v0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->patternAnnotations:Lorg/apache/xerces/impl/xs/util/XSObjectListImpl;

    :cond_4f
    iput-object v0, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->patternAnnotations:Lorg/apache/xerces/impl/xs/util/XSObjectListImpl;

    goto :goto_19

    :cond_50
    iget-object v0, v0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->x:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    :goto_17
    if-gez v0, :cond_52

    iget-object v0, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->m:Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-object v0, v0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->patternAnnotations:Lorg/apache/xerces/impl/xs/util/XSObjectListImpl;

    if-eqz v0, :cond_53

    iget-object v3, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->patternAnnotations:Lorg/apache/xerces/impl/xs/util/XSObjectListImpl;

    if-eqz v3, :cond_4f

    invoke-virtual {v0}, Lorg/apache/xerces/impl/xs/util/XSObjectListImpl;->getLength()I

    move-result v0

    sub-int/2addr v0, v2

    :goto_18
    if-gez v0, :cond_51

    goto :goto_19

    :cond_51
    iget-object v2, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->patternAnnotations:Lorg/apache/xerces/impl/xs/util/XSObjectListImpl;

    iget-object v3, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->m:Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-object v3, v3, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->patternAnnotations:Lorg/apache/xerces/impl/xs/util/XSObjectListImpl;

    invoke-virtual {v3, v0}, Lorg/apache/xerces/impl/xs/util/XSObjectListImpl;->item(I)Lorg/apache/xerces/xs/XSObject;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/xerces/impl/xs/util/XSObjectListImpl;->addXSObject(Lorg/apache/xerces/xs/XSObject;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_18

    :cond_52
    iget-object v3, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->x:Ljava/util/Vector;

    iget-object v4, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->m:Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-object v4, v4, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->x:Ljava/util/Vector;

    invoke-virtual {v4, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget-object v3, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->y:Ljava/util/Vector;

    iget-object v4, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->m:Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-object v4, v4, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->y:Ljava/util/Vector;

    invoke-virtual {v4, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_17

    :cond_53
    :goto_19
    iget-short v0, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->p:S

    and-int/lit8 v2, v0, 0x10

    if-nez v2, :cond_54

    iget-object v2, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->m:Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v3, v2, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->p:S

    and-int/lit8 v3, v3, 0x10

    if-eqz v3, :cond_54

    or-int/lit8 v0, v0, 0x10

    int-to-short v0, v0

    iput-short v0, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->p:S

    iget-short v0, v2, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->r:S

    iput-short v0, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->r:S

    iget-object v0, v2, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->whiteSpaceAnnotation:Lorg/apache/xerces/xs/XSAnnotation;

    iput-object v0, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->whiteSpaceAnnotation:Lorg/apache/xerces/xs/XSAnnotation;

    :cond_54
    iget-short v0, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->p:S

    and-int/lit16 v2, v0, 0x800

    if-nez v2, :cond_55

    iget-object v2, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->m:Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v3, v2, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->p:S

    and-int/lit16 v3, v3, 0x800

    if-eqz v3, :cond_55

    or-int/lit16 v0, v0, 0x800

    int-to-short v0, v0

    iput-short v0, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->p:S

    iget-object v0, v2, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->z:[Lorg/apache/xerces/impl/dv/ValidatedInfo;

    iput-object v0, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->z:[Lorg/apache/xerces/impl/dv/ValidatedInfo;

    iget v0, v2, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->J:I

    iput v0, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->J:I

    iget-object v0, v2, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->enumerationAnnotations:Lorg/apache/xerces/xs/XSObjectList;

    iput-object v0, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->enumerationAnnotations:Lorg/apache/xerces/xs/XSObjectList;

    :cond_55
    iget-object v0, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->m:Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v2, v0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->p:S

    and-int/lit8 v2, v2, 0x40

    if-eqz v2, :cond_56

    iget-short v2, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->p:S

    and-int/lit8 v3, v2, 0x40

    if-nez v3, :cond_56

    and-int/lit8 v3, v2, 0x20

    if-nez v3, :cond_56

    or-int/lit8 v2, v2, 0x40

    int-to-short v2, v2

    iput-short v2, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->p:S

    iget-object v2, v0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->u0:Ljava/lang/Object;

    iput-object v2, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->u0:Ljava/lang/Object;

    iget-object v2, v0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->maxExclusiveAnnotation:Lorg/apache/xerces/xs/XSAnnotation;

    iput-object v2, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->maxExclusiveAnnotation:Lorg/apache/xerces/xs/XSAnnotation;

    :cond_56
    iget-short v2, v0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->p:S

    and-int/lit8 v2, v2, 0x20

    if-eqz v2, :cond_57

    iget-short v2, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->p:S

    and-int/lit8 v3, v2, 0x40

    if-nez v3, :cond_57

    and-int/lit8 v3, v2, 0x20

    if-nez v3, :cond_57

    or-int/lit8 v2, v2, 0x20

    int-to-short v2, v2

    iput-short v2, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->p:S

    iget-object v2, v0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->t0:Ljava/lang/Object;

    iput-object v2, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->t0:Ljava/lang/Object;

    iget-object v2, v0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->maxInclusiveAnnotation:Lorg/apache/xerces/xs/XSAnnotation;

    iput-object v2, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->maxInclusiveAnnotation:Lorg/apache/xerces/xs/XSAnnotation;

    :cond_57
    iget-short v2, v0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->p:S

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_58

    iget-short v2, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->p:S

    and-int/lit16 v3, v2, 0x80

    if-nez v3, :cond_58

    and-int/lit16 v3, v2, 0x100

    if-nez v3, :cond_58

    or-int/lit16 v2, v2, 0x80

    int-to-short v2, v2

    iput-short v2, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->p:S

    iget-object v2, v0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->v0:Ljava/lang/Object;

    iput-object v2, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->v0:Ljava/lang/Object;

    iget-object v2, v0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->minExclusiveAnnotation:Lorg/apache/xerces/xs/XSAnnotation;

    iput-object v2, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->minExclusiveAnnotation:Lorg/apache/xerces/xs/XSAnnotation;

    :cond_58
    iget-short v2, v0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->p:S

    and-int/lit16 v2, v2, 0x100

    if-eqz v2, :cond_59

    iget-short v2, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->p:S

    and-int/lit16 v3, v2, 0x80

    if-nez v3, :cond_59

    and-int/lit16 v3, v2, 0x100

    if-nez v3, :cond_59

    or-int/lit16 v2, v2, 0x100

    int-to-short v2, v2

    iput-short v2, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->p:S

    iget-object v2, v0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->w0:Ljava/lang/Object;

    iput-object v2, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->w0:Ljava/lang/Object;

    iget-object v2, v0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->minInclusiveAnnotation:Lorg/apache/xerces/xs/XSAnnotation;

    iput-object v2, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->minInclusiveAnnotation:Lorg/apache/xerces/xs/XSAnnotation;

    :cond_59
    iget-short v2, v0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->p:S

    and-int/lit16 v2, v2, 0x200

    if-eqz v2, :cond_5a

    iget-short v2, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->p:S

    and-int/lit16 v3, v2, 0x200

    if-nez v3, :cond_5a

    or-int/lit16 v2, v2, 0x200

    int-to-short v2, v2

    iput-short v2, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->p:S

    iget v2, v0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->v:I

    iput v2, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->v:I

    iget-object v2, v0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->totalDigitsAnnotation:Lorg/apache/xerces/xs/XSAnnotation;

    iput-object v2, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->totalDigitsAnnotation:Lorg/apache/xerces/xs/XSAnnotation;

    :cond_5a
    iget-short v2, v0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->p:S

    and-int/lit16 v2, v2, 0x400

    if-eqz v2, :cond_5b

    iget-short v2, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->p:S

    and-int/lit16 v3, v2, 0x400

    if-nez v3, :cond_5b

    or-int/lit16 v2, v2, 0x400

    int-to-short v2, v2

    iput-short v2, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->p:S

    iget v2, v0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->w:I

    iput v2, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->w:I

    iget-object v2, v0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fractionDigitsAnnotation:Lorg/apache/xerces/xs/XSAnnotation;

    iput-object v2, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fractionDigitsAnnotation:Lorg/apache/xerces/xs/XSAnnotation;

    :cond_5b
    iget-short v2, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->A0:S

    if-nez v2, :cond_5c

    iget-short v2, v0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->A0:S

    if-eqz v2, :cond_5c

    iput-short v2, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->A0:S

    :cond_5c
    iget-short v2, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->q:S

    iget-short v0, v0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->q:S

    or-int/2addr v0, v2

    int-to-short v0, v0

    iput-short v0, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->q:S

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->g()V

    return-void
.end method

.method public derivedFrom(Ljava/lang/String;Ljava/lang/String;S)Z
    .locals 2

    const/4 p3, 0x0

    if-nez p2, :cond_0

    return p3

    :cond_0
    const-string v0, "http://www.w3.org/2001/XMLSchema"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    const-string v0, "anyType"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    :goto_0
    invoke-interface {p0}, Lorg/apache/xerces/xs/XSObject;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    if-nez p1, :cond_2

    invoke-interface {p0}, Lorg/apache/xerces/xs/XSObject;->getNamespace()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    :cond_2
    if-eqz p1, :cond_3

    invoke-interface {p0}, Lorg/apache/xerces/xs/XSObject;->getNamespace()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    sget-object v0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->a1:Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    if-ne p0, v0, :cond_6

    :cond_4
    sget-object p1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->a1:Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    if-eq p0, p1, :cond_5

    move p3, v1

    :cond_5
    return p3

    :cond_6
    invoke-interface {p0}, Lorg/apache/xerces/xs/XSTypeDefinition;->getBaseType()Lorg/apache/xerces/xs/XSTypeDefinition;

    move-result-object p0

    goto :goto_0
.end method

.method public derivedFromType(Lorg/apache/xerces/xs/XSTypeDefinition;S)Z
    .locals 2

    const/4 p2, 0x0

    if-nez p1, :cond_0

    return p2

    :cond_0
    :goto_0
    instance-of v0, p1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDelegate;

    if-nez v0, :cond_5

    invoke-interface {p1}, Lorg/apache/xerces/xs/XSTypeDefinition;->getBaseType()Lorg/apache/xerces/xs/XSTypeDefinition;

    move-result-object v0

    const/4 v1, 0x1

    if-ne v0, p1, :cond_1

    return v1

    :cond_1
    :goto_1
    if-eq p0, p1, :cond_3

    sget-object v0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->a1:Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    if-ne p0, v0, :cond_2

    goto :goto_2

    :cond_2
    invoke-interface {p0}, Lorg/apache/xerces/xs/XSTypeDefinition;->getBaseType()Lorg/apache/xerces/xs/XSTypeDefinition;

    move-result-object p0

    goto :goto_1

    :cond_3
    :goto_2
    if-ne p0, p1, :cond_4

    move p2, v1

    :cond_4
    return p2

    :cond_5
    check-cast p1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDelegate;

    iget-object p1, p1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDelegate;->type:Lorg/apache/xerces/impl/dv/XSSimpleType;

    goto :goto_0
.end method

.method public e(Lorg/apache/xerces/impl/dv/XSFacets;SS)V
    .locals 6

    const/4 v4, 0x0

    :try_start_0
    sget-object v5, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->c1:Lorg/apache/xerces/impl/dv/ValidationContext;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->d(Lorg/apache/xerces/impl/dv/XSFacets;SSSLorg/apache/xerces/impl/dv/ValidationContext;)V
    :try_end_0
    .catch Lorg/apache/xerces/impl/dv/InvalidDatatypeFacetException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->f:Z

    return-void

    :catch_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "internal error"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public f(Lorg/apache/xerces/impl/dv/XSFacets;SSS)V
    .locals 6

    :try_start_0
    sget-object v5, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->c1:Lorg/apache/xerces/impl/dv/ValidationContext;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->d(Lorg/apache/xerces/impl/dv/XSFacets;SSSLorg/apache/xerces/impl/dv/ValidationContext;)V
    :try_end_0
    .catch Lorg/apache/xerces/impl/dv/InvalidDatatypeFacetException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->f:Z

    return-void

    :catch_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "internal error"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final g()V
    .locals 0

    invoke-virtual {p0}, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->u()V

    invoke-virtual {p0}, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->t()V

    invoke-virtual {p0}, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->r()V

    invoke-virtual {p0}, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->s()V

    return-void
.end method

.method public getActualEnumValue(Ljava/lang/String;Lorg/apache/xerces/impl/dv/ValidationContext;Lorg/apache/xerces/impl/dv/ValidatedInfo;)Lorg/apache/xerces/impl/dv/ValidatedInfo;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/impl/dv/InvalidDatatypeValueException;
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->m:Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->validateWithInfo(Ljava/lang/String;Lorg/apache/xerces/impl/dv/ValidationContext;Lorg/apache/xerces/impl/dv/ValidatedInfo;)Lorg/apache/xerces/impl/dv/ValidatedInfo;

    move-result-object p0

    return-object p0
.end method

.method public getActualEnumeration()Lorg/apache/xerces/xs/datatypes/ObjectList;
    .locals 1

    iget-object v0, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->q0:Lorg/apache/xerces/xs/datatypes/ObjectList;

    if-nez v0, :cond_0

    new-instance v0, Lorg/apache/xerces/impl/dv/xs/e;

    invoke-direct {v0, p0}, Lorg/apache/xerces/impl/dv/xs/e;-><init>(Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;)V

    iput-object v0, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->q0:Lorg/apache/xerces/xs/datatypes/ObjectList;

    :cond_0
    iget-object p0, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->q0:Lorg/apache/xerces/xs/datatypes/ObjectList;

    return-object p0
.end method

.method public getAnnotations()Lorg/apache/xerces/xs/XSObjectList;
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->z0:Lorg/apache/xerces/xs/XSObjectList;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, Lorg/apache/xerces/impl/xs/util/XSObjectListImpl;->EMPTY_LIST:Lorg/apache/xerces/impl/xs/util/XSObjectListImpl;

    :goto_0
    return-object p0
.end method

.method public getAnonymous()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->G0:Z

    if-nez v0, :cond_1

    iget-object p0, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->j:Ljava/lang/String;

    if-nez p0, :cond_0

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

.method public getBaseType()Lorg/apache/xerces/xs/XSTypeDefinition;
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->m:Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    return-object p0
.end method

.method public getBounded()Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->D0:Z

    return p0
.end method

.method public getBuiltInKind()S
    .locals 0

    iget-short p0, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->i:S

    return p0
.end method

.method public getDefinedFacets()S
    .locals 2

    iget-short v0, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->o:S

    if-eqz v0, :cond_3

    const/16 v1, 0x1d

    if-ne v0, v1, :cond_0

    goto :goto_1

    :cond_0
    iget-short v1, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->A0:S

    if-eqz v1, :cond_1

    iget-short p0, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->p:S

    or-int/lit8 p0, p0, 0x8

    :goto_0
    int-to-short p0, p0

    return p0

    :cond_1
    const/16 v1, 0x18

    iget-short p0, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->p:S

    if-ne v0, v1, :cond_2

    or-int/lit8 p0, p0, 0x8

    or-int/lit16 p0, p0, 0x400

    goto :goto_0

    :cond_2
    return p0

    :cond_3
    :goto_1
    const/4 p0, 0x0

    return p0
.end method

.method public getEnumerationItemTypeList()Lorg/apache/xerces/xs/datatypes/ObjectList;
    .locals 1

    iget-object v0, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->Q:Lorg/apache/xerces/xs/datatypes/ObjectList;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->z:[Lorg/apache/xerces/impl/dv/ValidatedInfo;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lorg/apache/xerces/impl/dv/xs/f;

    invoke-direct {v0, p0}, Lorg/apache/xerces/impl/dv/xs/f;-><init>(Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;)V

    iput-object v0, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->Q:Lorg/apache/xerces/xs/datatypes/ObjectList;

    :cond_1
    iget-object p0, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->Q:Lorg/apache/xerces/xs/datatypes/ObjectList;

    return-object p0
.end method

.method public getEnumerationTypeList()Lorg/apache/xerces/xs/ShortList;
    .locals 3

    iget-object v0, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->O:Lorg/apache/xerces/xs/ShortList;

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->z:[Lorg/apache/xerces/impl/dv/ValidatedInfo;

    if-nez v0, :cond_0

    sget-object p0, Lorg/apache/xerces/impl/xs/util/ShortListImpl;->EMPTY_LIST:Lorg/apache/xerces/impl/xs/util/ShortListImpl;

    return-object p0

    :cond_0
    iget v0, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->J:I

    new-array v0, v0, [S

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->J:I

    if-lt v1, v2, :cond_1

    new-instance v1, Lorg/apache/xerces/impl/xs/util/ShortListImpl;

    iget v2, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->J:I

    invoke-direct {v1, v0, v2}, Lorg/apache/xerces/impl/xs/util/ShortListImpl;-><init>([SI)V

    iput-object v1, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->O:Lorg/apache/xerces/xs/ShortList;

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->z:[Lorg/apache/xerces/impl/dv/ValidatedInfo;

    aget-object v2, v2, v1

    iget-short v2, v2, Lorg/apache/xerces/impl/dv/ValidatedInfo;->actualValueType:S

    aput-short v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    iget-object p0, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->O:Lorg/apache/xerces/xs/ShortList;

    return-object p0
.end method

.method public getFacet(I)Lorg/apache/xerces/xs/XSObject;
    .locals 3

    const/16 v0, 0x800

    const/4 v1, 0x0

    if-eq p1, v0, :cond_3

    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->getFacets()Lorg/apache/xerces/xs/XSObjectList;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Lorg/apache/xerces/xs/XSObjectList;->getLength()I

    move-result p0

    if-lt v1, p0, :cond_1

    goto :goto_3

    :cond_1
    invoke-interface {v0, v1}, Lorg/apache/xerces/xs/XSObjectList;->item(I)Lorg/apache/xerces/xs/XSObject;

    move-result-object p0

    check-cast p0, Lorg/apache/xerces/xs/XSFacet;

    invoke-interface {p0}, Lorg/apache/xerces/xs/XSFacet;->getFacetKind()S

    move-result v2

    if-ne v2, p1, :cond_2

    return-object p0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    invoke-virtual {p0}, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->getMultiValueFacets()Lorg/apache/xerces/xs/XSObjectList;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Lorg/apache/xerces/xs/XSObjectList;->getLength()I

    move-result v0

    if-lt v1, v0, :cond_4

    :goto_3
    const/4 p0, 0x0

    return-object p0

    :cond_4
    invoke-interface {p0, v1}, Lorg/apache/xerces/xs/XSObjectList;->item(I)Lorg/apache/xerces/xs/XSObject;

    move-result-object v0

    check-cast v0, Lorg/apache/xerces/xs/XSMultiValueFacet;

    invoke-interface {v0}, Lorg/apache/xerces/xs/XSMultiValueFacet;->getFacetKind()S

    move-result v2

    if-ne v2, p1, :cond_5

    return-object v0

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method public getFacets()Lorg/apache/xerces/xs/XSObjectList;
    .locals 15

    iget-object v0, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->x0:Lorg/apache/xerces/impl/xs/util/XSObjectListImpl;

    if-nez v0, :cond_17

    iget-short v0, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->p:S

    const/16 v1, 0x18

    if-nez v0, :cond_0

    iget-short v2, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->o:S

    if-ne v2, v1, :cond_17

    :cond_0
    const/16 v2, 0xa

    new-array v2, v2, [Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$c;

    and-int/lit8 v0, v0, 0x10

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_2

    iget-short v0, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->o:S

    if-eqz v0, :cond_2

    const/16 v5, 0x1d

    if-eq v0, v5, :cond_2

    new-instance v0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$c;

    const/16 v7, 0x10

    sget-object v5, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->R0:[Ljava/lang/String;

    iget-short v6, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->r:S

    aget-object v8, v5, v6

    const/4 v9, 0x0

    const/4 v10, 0x0

    iget-short v5, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->q:S

    and-int/lit8 v5, v5, 0x10

    if-eqz v5, :cond_1

    move v11, v4

    goto :goto_0

    :cond_1
    move v11, v3

    :goto_0
    iget-object v12, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->whiteSpaceAnnotation:Lorg/apache/xerces/xs/XSAnnotation;

    move-object v6, v0

    invoke-direct/range {v6 .. v12}, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$c;-><init>(SLjava/lang/String;ILjava/lang/Object;ZLorg/apache/xerces/xs/XSAnnotation;)V

    aput-object v0, v2, v3

    move v0, v4

    goto :goto_1

    :cond_2
    move v0, v3

    :goto_1
    iget v5, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->s:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_4

    new-instance v14, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$c;

    const/4 v8, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    iget v10, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->s:I

    const/4 v11, 0x0

    iget-short v5, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->q:S

    and-int/2addr v5, v4

    if-eqz v5, :cond_3

    move v12, v4

    goto :goto_2

    :cond_3
    move v12, v3

    :goto_2
    iget-object v13, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->lengthAnnotation:Lorg/apache/xerces/xs/XSAnnotation;

    move-object v7, v14

    invoke-direct/range {v7 .. v13}, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$c;-><init>(SLjava/lang/String;ILjava/lang/Object;ZLorg/apache/xerces/xs/XSAnnotation;)V

    aput-object v14, v2, v0

    add-int/lit8 v0, v0, 0x1

    :cond_4
    iget v5, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->t:I

    if-eq v5, v6, :cond_6

    new-instance v14, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$c;

    const/4 v8, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    iget v10, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->t:I

    const/4 v11, 0x0

    iget-short v5, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->q:S

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_5

    move v12, v4

    goto :goto_3

    :cond_5
    move v12, v3

    :goto_3
    iget-object v13, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->minLengthAnnotation:Lorg/apache/xerces/xs/XSAnnotation;

    move-object v7, v14

    invoke-direct/range {v7 .. v13}, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$c;-><init>(SLjava/lang/String;ILjava/lang/Object;ZLorg/apache/xerces/xs/XSAnnotation;)V

    aput-object v14, v2, v0

    add-int/lit8 v0, v0, 0x1

    :cond_6
    iget v5, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->u:I

    if-eq v5, v6, :cond_8

    new-instance v14, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$c;

    const/4 v8, 0x4

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    iget v10, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->u:I

    const/4 v11, 0x0

    iget-short v5, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->q:S

    and-int/lit8 v5, v5, 0x4

    if-eqz v5, :cond_7

    move v12, v4

    goto :goto_4

    :cond_7
    move v12, v3

    :goto_4
    iget-object v13, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->maxLengthAnnotation:Lorg/apache/xerces/xs/XSAnnotation;

    move-object v7, v14

    invoke-direct/range {v7 .. v13}, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$c;-><init>(SLjava/lang/String;ILjava/lang/Object;ZLorg/apache/xerces/xs/XSAnnotation;)V

    aput-object v14, v2, v0

    add-int/lit8 v0, v0, 0x1

    :cond_8
    iget v5, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->v:I

    if-eq v5, v6, :cond_a

    new-instance v14, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$c;

    const/16 v8, 0x200

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    iget v10, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->v:I

    const/4 v11, 0x0

    iget-short v5, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->q:S

    and-int/lit16 v5, v5, 0x200

    if-eqz v5, :cond_9

    move v12, v4

    goto :goto_5

    :cond_9
    move v12, v3

    :goto_5
    iget-object v13, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->totalDigitsAnnotation:Lorg/apache/xerces/xs/XSAnnotation;

    move-object v7, v14

    invoke-direct/range {v7 .. v13}, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$c;-><init>(SLjava/lang/String;ILjava/lang/Object;ZLorg/apache/xerces/xs/XSAnnotation;)V

    aput-object v14, v2, v0

    add-int/lit8 v0, v0, 0x1

    :cond_a
    iget-short v5, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->o:S

    if-ne v5, v1, :cond_b

    new-instance v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$c;

    const/16 v8, 0x400

    const-string v9, "0"

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x1

    iget-object v13, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fractionDigitsAnnotation:Lorg/apache/xerces/xs/XSAnnotation;

    move-object v7, v1

    invoke-direct/range {v7 .. v13}, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$c;-><init>(SLjava/lang/String;ILjava/lang/Object;ZLorg/apache/xerces/xs/XSAnnotation;)V

    aput-object v1, v2, v0

    :goto_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_b
    iget v1, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->w:I

    if-eq v1, v6, :cond_d

    new-instance v5, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$c;

    const/16 v8, 0x400

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    iget v10, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->w:I

    const/4 v11, 0x0

    iget-short v1, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->q:S

    and-int/lit16 v1, v1, 0x400

    if-eqz v1, :cond_c

    move v12, v4

    goto :goto_7

    :cond_c
    move v12, v3

    :goto_7
    iget-object v13, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fractionDigitsAnnotation:Lorg/apache/xerces/xs/XSAnnotation;

    move-object v7, v5

    invoke-direct/range {v7 .. v13}, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$c;-><init>(SLjava/lang/String;ILjava/lang/Object;ZLorg/apache/xerces/xs/XSAnnotation;)V

    aput-object v5, v2, v0

    goto :goto_6

    :cond_d
    :goto_8
    iget-object v1, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->t0:Ljava/lang/Object;

    if-eqz v1, :cond_f

    new-instance v12, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$c;

    const/16 v6, 0x20

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    iget-object v9, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->t0:Ljava/lang/Object;

    iget-short v1, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->q:S

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_e

    move v10, v4

    goto :goto_9

    :cond_e
    move v10, v3

    :goto_9
    iget-object v11, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->maxInclusiveAnnotation:Lorg/apache/xerces/xs/XSAnnotation;

    move-object v5, v12

    invoke-direct/range {v5 .. v11}, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$c;-><init>(SLjava/lang/String;ILjava/lang/Object;ZLorg/apache/xerces/xs/XSAnnotation;)V

    aput-object v12, v2, v0

    add-int/lit8 v0, v0, 0x1

    :cond_f
    iget-object v1, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->u0:Ljava/lang/Object;

    if-eqz v1, :cond_11

    new-instance v12, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$c;

    const/16 v6, 0x40

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    iget-object v9, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->u0:Ljava/lang/Object;

    iget-short v1, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->q:S

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_10

    move v10, v4

    goto :goto_a

    :cond_10
    move v10, v3

    :goto_a
    iget-object v11, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->maxExclusiveAnnotation:Lorg/apache/xerces/xs/XSAnnotation;

    move-object v5, v12

    invoke-direct/range {v5 .. v11}, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$c;-><init>(SLjava/lang/String;ILjava/lang/Object;ZLorg/apache/xerces/xs/XSAnnotation;)V

    aput-object v12, v2, v0

    add-int/lit8 v0, v0, 0x1

    :cond_11
    iget-object v1, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->v0:Ljava/lang/Object;

    if-eqz v1, :cond_13

    new-instance v12, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$c;

    const/16 v6, 0x80

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    iget-object v9, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->v0:Ljava/lang/Object;

    iget-short v1, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->q:S

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_12

    move v10, v4

    goto :goto_b

    :cond_12
    move v10, v3

    :goto_b
    iget-object v11, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->minExclusiveAnnotation:Lorg/apache/xerces/xs/XSAnnotation;

    move-object v5, v12

    invoke-direct/range {v5 .. v11}, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$c;-><init>(SLjava/lang/String;ILjava/lang/Object;ZLorg/apache/xerces/xs/XSAnnotation;)V

    aput-object v12, v2, v0

    add-int/lit8 v0, v0, 0x1

    :cond_13
    iget-object v1, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->w0:Ljava/lang/Object;

    if-eqz v1, :cond_15

    new-instance v12, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$c;

    const/16 v6, 0x100

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    iget-object v9, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->w0:Ljava/lang/Object;

    iget-short v1, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->q:S

    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_14

    move v10, v4

    goto :goto_c

    :cond_14
    move v10, v3

    :goto_c
    iget-object v11, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->minInclusiveAnnotation:Lorg/apache/xerces/xs/XSAnnotation;

    move-object v5, v12

    invoke-direct/range {v5 .. v11}, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$c;-><init>(SLjava/lang/String;ILjava/lang/Object;ZLorg/apache/xerces/xs/XSAnnotation;)V

    aput-object v12, v2, v0

    add-int/lit8 v0, v0, 0x1

    :cond_15
    if-lez v0, :cond_16

    new-instance v1, Lorg/apache/xerces/impl/xs/util/XSObjectListImpl;

    invoke-direct {v1, v2, v0}, Lorg/apache/xerces/impl/xs/util/XSObjectListImpl;-><init>([Lorg/apache/xerces/xs/XSObject;I)V

    goto :goto_d

    :cond_16
    sget-object v1, Lorg/apache/xerces/impl/xs/util/XSObjectListImpl;->EMPTY_LIST:Lorg/apache/xerces/impl/xs/util/XSObjectListImpl;

    :goto_d
    iput-object v1, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->x0:Lorg/apache/xerces/impl/xs/util/XSObjectListImpl;

    :cond_17
    iget-object p0, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->x0:Lorg/apache/xerces/impl/xs/util/XSObjectListImpl;

    if-eqz p0, :cond_18

    goto :goto_e

    :cond_18
    sget-object p0, Lorg/apache/xerces/impl/xs/util/XSObjectListImpl;->EMPTY_LIST:Lorg/apache/xerces/impl/xs/util/XSObjectListImpl;

    :goto_e
    return-object p0
.end method

.method public getFinal()S
    .locals 0

    iget-short p0, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->l:S

    return p0
.end method

.method public getFinite()Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->C0:Z

    return p0
.end method

.method public getFixedFacets()S
    .locals 2

    iget-short v0, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->o:S

    const/16 v1, 0x18

    iget-short p0, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->q:S

    if-ne v0, v1, :cond_0

    or-int/lit16 p0, p0, 0x400

    int-to-short p0, p0

    :cond_0
    return p0
.end method

.method public getItemType()Lorg/apache/xerces/xs/XSSimpleTypeDefinition;
    .locals 2

    iget-short v0, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->n:S

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->g:Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getLexicalEnumeration()Lorg/apache/xerces/xs/StringList;
    .locals 4

    iget-object v0, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->k0:Lorg/apache/xerces/xs/StringList;

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->z:[Lorg/apache/xerces/impl/dv/ValidatedInfo;

    if-nez v0, :cond_0

    sget-object p0, Lorg/apache/xerces/impl/xs/util/StringListImpl;->EMPTY_LIST:Lorg/apache/xerces/impl/xs/util/StringListImpl;

    return-object p0

    :cond_0
    iget v0, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->J:I

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v0, :cond_1

    new-instance v2, Lorg/apache/xerces/impl/xs/util/StringListImpl;

    invoke-direct {v2, v1, v0}, Lorg/apache/xerces/impl/xs/util/StringListImpl;-><init>([Ljava/lang/String;I)V

    iput-object v2, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->k0:Lorg/apache/xerces/xs/StringList;

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->z:[Lorg/apache/xerces/impl/dv/ValidatedInfo;

    aget-object v3, v3, v2

    iget-object v3, v3, Lorg/apache/xerces/impl/dv/ValidatedInfo;->normalizedValue:Ljava/lang/String;

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    iget-object p0, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->k0:Lorg/apache/xerces/xs/StringList;

    return-object p0
.end method

.method public getLexicalFacetValue(S)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eq p1, v0, :cond_14

    const/4 v0, 0x2

    if-eq p1, v0, :cond_12

    const/4 v0, 0x4

    if-eq p1, v0, :cond_10

    const/16 v0, 0x10

    if-eq p1, v0, :cond_d

    const/16 v0, 0x20

    if-eq p1, v0, :cond_b

    const/16 v0, 0x40

    if-eq p1, v0, :cond_9

    const/16 v0, 0x80

    if-eq p1, v0, :cond_7

    const/16 v0, 0x100

    if-eq p1, v0, :cond_5

    const/16 v0, 0x200

    if-eq p1, v0, :cond_3

    const/16 v0, 0x400

    if-eq p1, v0, :cond_0

    return-object v2

    :cond_0
    iget-short p1, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->o:S

    const/16 v0, 0x18

    if-ne p1, v0, :cond_1

    const-string p0, "0"

    return-object p0

    :cond_1
    iget p0, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->w:I

    if-ne p0, v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    :goto_0
    return-object v2

    :cond_3
    iget p0, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->v:I

    if-ne p0, v1, :cond_4

    goto :goto_1

    :cond_4
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    :goto_1
    return-object v2

    :cond_5
    iget-object p0, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->w0:Ljava/lang/Object;

    if-nez p0, :cond_6

    goto :goto_2

    :cond_6
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_2
    return-object v2

    :cond_7
    iget-object p0, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->v0:Ljava/lang/Object;

    if-nez p0, :cond_8

    goto :goto_3

    :cond_8
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_3
    return-object v2

    :cond_9
    iget-object p0, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->u0:Ljava/lang/Object;

    if-nez p0, :cond_a

    goto :goto_4

    :cond_a
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_4
    return-object v2

    :cond_b
    iget-object p0, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->t0:Ljava/lang/Object;

    if-nez p0, :cond_c

    goto :goto_5

    :cond_c
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_5
    return-object v2

    :cond_d
    iget-short p1, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->o:S

    if-eqz p1, :cond_f

    const/16 v0, 0x1d

    if-ne p1, v0, :cond_e

    goto :goto_6

    :cond_e
    sget-object p1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->R0:[Ljava/lang/String;

    iget-short p0, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->r:S

    aget-object p0, p1, p0

    return-object p0

    :cond_f
    :goto_6
    return-object v2

    :cond_10
    iget p0, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->u:I

    if-ne p0, v1, :cond_11

    goto :goto_7

    :cond_11
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    :goto_7
    return-object v2

    :cond_12
    iget p0, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->t:I

    if-ne p0, v1, :cond_13

    goto :goto_8

    :cond_13
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    :goto_8
    return-object v2

    :cond_14
    iget p0, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->s:I

    if-ne p0, v1, :cond_15

    goto :goto_9

    :cond_15
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    :goto_9
    return-object v2
.end method

.method public getLexicalPattern()Lorg/apache/xerces/xs/StringList;
    .locals 6

    iget-short v0, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->A0:S

    const/16 v1, 0x18

    if-nez v0, :cond_0

    iget-short v0, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->o:S

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->y:Ljava/util/Vector;

    if-nez v0, :cond_0

    sget-object p0, Lorg/apache/xerces/impl/xs/util/StringListImpl;->EMPTY_LIST:Lorg/apache/xerces/impl/xs/util/StringListImpl;

    return-object p0

    :cond_0
    iget-object v0, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->Z:Lorg/apache/xerces/xs/StringList;

    if-nez v0, :cond_7

    iget-object v0, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->y:Ljava/util/Vector;

    const/4 v2, 0x0

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    :goto_0
    iget-short v3, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->A0:S

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    add-int/lit8 v1, v0, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const-string v3, "\\c+"

    aput-object v3, v1, v0

    goto :goto_1

    :cond_2
    const-string v4, "\\i\\c*"

    const/4 v5, 0x2

    if-ne v3, v5, :cond_3

    add-int/lit8 v1, v0, 0x1

    new-array v1, v1, [Ljava/lang/String;

    aput-object v4, v1, v0

    goto :goto_1

    :cond_3
    const/4 v5, 0x3

    if-ne v3, v5, :cond_4

    add-int/lit8 v1, v0, 0x2

    new-array v1, v1, [Ljava/lang/String;

    aput-object v4, v1, v0

    add-int/lit8 v3, v0, 0x1

    const-string v4, "[\\i-[:]][\\c-[:]]*"

    aput-object v4, v1, v3

    goto :goto_1

    :cond_4
    iget-short v3, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->o:S

    if-ne v3, v1, :cond_5

    add-int/lit8 v1, v0, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const-string v3, "[\\-+]?[0-9]+"

    aput-object v3, v1, v0

    goto :goto_1

    :cond_5
    new-array v1, v0, [Ljava/lang/String;

    :goto_1
    if-lt v2, v0, :cond_6

    new-instance v0, Lorg/apache/xerces/impl/xs/util/StringListImpl;

    array-length v2, v1

    invoke-direct {v0, v1, v2}, Lorg/apache/xerces/impl/xs/util/StringListImpl;-><init>([Ljava/lang/String;I)V

    iput-object v0, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->Z:Lorg/apache/xerces/xs/StringList;

    goto :goto_2

    :cond_6
    iget-object v3, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->y:Ljava/util/Vector;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_7
    :goto_2
    iget-object p0, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->Z:Lorg/apache/xerces/xs/StringList;

    return-object p0
.end method

.method public getMaxExclusiveValue()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->u0:Ljava/lang/Object;

    return-object p0
.end method

.method public getMaxInclusiveValue()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->t0:Ljava/lang/Object;

    return-object p0
.end method

.method public getMemberTypes()Lorg/apache/xerces/xs/XSObjectList;
    .locals 2

    iget-short v0, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->n:S

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    new-instance v0, Lorg/apache/xerces/impl/xs/util/XSObjectListImpl;

    iget-object p0, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->h:[Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    array-length v1, p0

    invoke-direct {v0, p0, v1}, Lorg/apache/xerces/impl/xs/util/XSObjectListImpl;-><init>([Lorg/apache/xerces/xs/XSObject;I)V

    return-object v0

    :cond_0
    sget-object p0, Lorg/apache/xerces/impl/xs/util/XSObjectListImpl;->EMPTY_LIST:Lorg/apache/xerces/impl/xs/util/XSObjectListImpl;

    return-object p0
.end method

.method public getMinExclusiveValue()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->v0:Ljava/lang/Object;

    return-object p0
.end method

.method public getMinInclusiveValue()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->w0:Ljava/lang/Object;

    return-object p0
.end method

.method public getMultiValueFacets()Lorg/apache/xerces/xs/XSObjectList;
    .locals 7

    iget-object v0, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->y0:Lorg/apache/xerces/impl/xs/util/XSObjectListImpl;

    if-nez v0, :cond_4

    iget-short v0, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->p:S

    and-int/lit16 v1, v0, 0x800

    const/16 v2, 0x18

    if-nez v1, :cond_0

    and-int/lit8 v1, v0, 0x8

    if-nez v1, :cond_0

    iget-short v1, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->A0:S

    if-nez v1, :cond_0

    iget-short v1, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->o:S

    if-ne v1, v2, :cond_4

    :cond_0
    const/4 v1, 0x2

    new-array v1, v1, [Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$d;

    const/16 v3, 0x8

    and-int/2addr v0, v3

    const/4 v4, 0x0

    if-nez v0, :cond_1

    iget-short v0, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->A0:S

    if-nez v0, :cond_1

    iget-short v0, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->o:S

    if-ne v0, v2, :cond_2

    :cond_1
    new-instance v0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$d;

    invoke-virtual {p0}, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->getLexicalPattern()Lorg/apache/xerces/xs/StringList;

    move-result-object v2

    const/4 v5, 0x0

    iget-object v6, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->patternAnnotations:Lorg/apache/xerces/impl/xs/util/XSObjectListImpl;

    invoke-direct {v0, v3, v2, v5, v6}, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$d;-><init>(SLorg/apache/xerces/xs/StringList;Lorg/apache/xerces/xs/datatypes/ObjectList;Lorg/apache/xerces/xs/XSObjectList;)V

    aput-object v0, v1, v4

    const/4 v4, 0x1

    :cond_2
    iget-object v0, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->z:[Lorg/apache/xerces/impl/dv/ValidatedInfo;

    if-eqz v0, :cond_3

    new-instance v0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$d;

    invoke-virtual {p0}, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->getLexicalEnumeration()Lorg/apache/xerces/xs/StringList;

    move-result-object v2

    new-instance v3, Lorg/apache/xerces/impl/xs/util/ObjectListImpl;

    iget-object v5, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->z:[Lorg/apache/xerces/impl/dv/ValidatedInfo;

    iget v6, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->J:I

    invoke-direct {v3, v5, v6}, Lorg/apache/xerces/impl/xs/util/ObjectListImpl;-><init>([Ljava/lang/Object;I)V

    iget-object v5, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->enumerationAnnotations:Lorg/apache/xerces/xs/XSObjectList;

    const/16 v6, 0x800

    invoke-direct {v0, v6, v2, v3, v5}, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$d;-><init>(SLorg/apache/xerces/xs/StringList;Lorg/apache/xerces/xs/datatypes/ObjectList;Lorg/apache/xerces/xs/XSObjectList;)V

    aput-object v0, v1, v4

    add-int/lit8 v4, v4, 0x1

    :cond_3
    new-instance v0, Lorg/apache/xerces/impl/xs/util/XSObjectListImpl;

    invoke-direct {v0, v1, v4}, Lorg/apache/xerces/impl/xs/util/XSObjectListImpl;-><init>([Lorg/apache/xerces/xs/XSObject;I)V

    iput-object v0, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->y0:Lorg/apache/xerces/impl/xs/util/XSObjectListImpl;

    :cond_4
    iget-object p0, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->y0:Lorg/apache/xerces/impl/xs/util/XSObjectListImpl;

    if-eqz p0, :cond_5

    goto :goto_0

    :cond_5
    sget-object p0, Lorg/apache/xerces/impl/xs/util/XSObjectListImpl;->EMPTY_LIST:Lorg/apache/xerces/impl/xs/util/XSObjectListImpl;

    :goto_0
    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->getAnonymous()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->j:Ljava/lang/String;

    :goto_0
    return-object p0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->k:Ljava/lang/String;

    return-object p0
.end method

.method public getNamespaceItem()Lorg/apache/xerces/xs/XSNamespaceItem;
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->F0:Lorg/apache/xerces/xs/XSNamespaceItem;

    return-object p0
.end method

.method public getNumeric()Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->E0:Z

    return p0
.end method

.method public getOrdered()S
    .locals 0

    iget-short p0, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->B0:S

    return p0
.end method

.method public getPrimitiveKind()S
    .locals 2

    iget-short v0, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->n:S

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    iget-short p0, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->o:S

    if-eqz p0, :cond_3

    const/16 v0, 0x15

    if-eq p0, v0, :cond_2

    const/16 v0, 0x16

    if-eq p0, v0, :cond_2

    const/16 v0, 0x17

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x18

    if-ne p0, v0, :cond_1

    const/4 p0, 0x3

    :cond_1
    return p0

    :cond_2
    :goto_0
    return v1

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method public getPrimitiveType()Lorg/apache/xerces/xs/XSSimpleTypeDefinition;
    .locals 2

    iget-short v0, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->n:S

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-short v0, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->o:S

    if-eqz v0, :cond_1

    :goto_0
    iget-object v0, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->m:Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    sget-object v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->a1:Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    if-ne v0, v1, :cond_0

    return-object p0

    :cond_0
    move-object p0, v0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getType()S
    .locals 0

    const/4 p0, 0x3

    return p0
.end method

.method public getTypeCategory()S
    .locals 0

    const/16 p0, 0x10

    return p0
.end method

.method public getTypeName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->j:Ljava/lang/String;

    return-object p0
.end method

.method public getTypeNamespace()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->getNamespace()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getVariety()S
    .locals 1

    iget-short v0, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->o:S

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-short p0, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->n:S

    :goto_0
    return p0
.end method

.method public getWhitespace()S
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/impl/dv/DatatypeException;
        }
    .end annotation

    iget-short v0, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->n:S

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget-short p0, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->r:S

    return p0

    :cond_0
    new-instance v0, Lorg/apache/xerces/impl/dv/DatatypeException;

    iget-object p0, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->j:Ljava/lang/String;

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v1, "dt-whitespace"

    invoke-direct {v0, v1, p0}, Lorg/apache/xerces/impl/dv/DatatypeException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method

.method public final h(Lorg/apache/xerces/impl/dv/ValidationContext;Lorg/apache/xerces/impl/dv/ValidatedInfo;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/impl/dv/InvalidDatatypeValueException;
        }
    .end annotation

    iget-object v0, p2, Lorg/apache/xerces/impl/dv/ValidatedInfo;->actualValue:Ljava/lang/Object;

    iget-short v1, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->n:S

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object p2, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->e:[Lorg/apache/xerces/impl/dv/xs/TypeValidator;

    iget-short p0, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->o:S

    aget-object p0, p2, p0

    invoke-virtual {p0, v0, p1}, Lorg/apache/xerces/impl/dv/xs/TypeValidator;->checkExtraRules(Ljava/lang/Object;Lorg/apache/xerces/impl/dv/ValidationContext;)V

    goto :goto_3

    :cond_0
    const/4 v3, 0x2

    if-ne v1, v3, :cond_4

    check-cast v0, Lorg/apache/xerces/impl/dv/xs/ListDV$a;

    iget-object v1, p2, Lorg/apache/xerces/impl/dv/ValidatedInfo;->memberType:Lorg/apache/xerces/impl/dv/XSSimpleType;

    invoke-virtual {v0}, Lorg/apache/xerces/impl/dv/xs/ListDV$a;->getLength()I

    move-result v3

    :try_start_0
    iget-object v4, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->g:Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v4, v4, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->n:S

    const/4 v5, 0x3

    if-ne v4, v5, :cond_2

    iget-object v4, p2, Lorg/apache/xerces/impl/dv/ValidatedInfo;->memberTypes:[Lorg/apache/xerces/impl/dv/XSSimpleType;

    check-cast v4, [Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    sub-int/2addr v3, v2

    :goto_0
    if-gez v3, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {v0, v3}, Lorg/apache/xerces/impl/dv/xs/ListDV$a;->item(I)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p2, Lorg/apache/xerces/impl/dv/ValidatedInfo;->actualValue:Ljava/lang/Object;

    aget-object v2, v4, v3

    iput-object v2, p2, Lorg/apache/xerces/impl/dv/ValidatedInfo;->memberType:Lorg/apache/xerces/impl/dv/XSSimpleType;

    iget-object v2, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->g:Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    invoke-virtual {v2, p1, p2}, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->h(Lorg/apache/xerces/impl/dv/ValidationContext;Lorg/apache/xerces/impl/dv/ValidatedInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_2
    sub-int/2addr v3, v2

    :goto_1
    if-gez v3, :cond_3

    :goto_2
    iput-object v0, p2, Lorg/apache/xerces/impl/dv/ValidatedInfo;->actualValue:Ljava/lang/Object;

    iput-object v1, p2, Lorg/apache/xerces/impl/dv/ValidatedInfo;->memberType:Lorg/apache/xerces/impl/dv/XSSimpleType;

    goto :goto_3

    :cond_3
    :try_start_1
    invoke-virtual {v0, v3}, Lorg/apache/xerces/impl/dv/xs/ListDV$a;->item(I)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p2, Lorg/apache/xerces/impl/dv/ValidatedInfo;->actualValue:Ljava/lang/Object;

    iget-object v2, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->g:Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    invoke-virtual {v2, p1, p2}, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->h(Lorg/apache/xerces/impl/dv/ValidationContext;Lorg/apache/xerces/impl/dv/ValidatedInfo;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :catchall_0
    move-exception p0

    iput-object v0, p2, Lorg/apache/xerces/impl/dv/ValidatedInfo;->actualValue:Ljava/lang/Object;

    iput-object v1, p2, Lorg/apache/xerces/impl/dv/ValidatedInfo;->memberType:Lorg/apache/xerces/impl/dv/XSSimpleType;

    throw p0

    :cond_4
    iget-object p0, p2, Lorg/apache/xerces/impl/dv/ValidatedInfo;->memberType:Lorg/apache/xerces/impl/dv/XSSimpleType;

    check-cast p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    invoke-virtual {p0, p1, p2}, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->h(Lorg/apache/xerces/impl/dv/ValidationContext;Lorg/apache/xerces/impl/dv/ValidatedInfo;)V

    :goto_3
    return-void
.end method

.method public final i(Lorg/apache/xerces/impl/dv/ValidatedInfo;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/impl/dv/InvalidDatatypeValueException;
        }
    .end annotation

    iget-object v0, p1, Lorg/apache/xerces/impl/dv/ValidatedInfo;->actualValue:Ljava/lang/Object;

    iget-object v1, p1, Lorg/apache/xerces/impl/dv/ValidatedInfo;->normalizedValue:Ljava/lang/String;

    iget-short v2, p1, Lorg/apache/xerces/impl/dv/ValidatedInfo;->actualValueType:S

    iget-object p1, p1, Lorg/apache/xerces/impl/dv/ValidatedInfo;->itemValueTypes:Lorg/apache/xerces/xs/ShortList;

    iget-short v3, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->o:S

    const/16 v4, 0x12

    const/4 v5, 0x1

    if-eq v3, v4, :cond_5

    const/16 v4, 0x14

    if-eq v3, v4, :cond_5

    iget-object v4, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->e:[Lorg/apache/xerces/impl/dv/xs/TypeValidator;

    aget-object v3, v4, v3

    invoke-virtual {v3, v0}, Lorg/apache/xerces/impl/dv/xs/TypeValidator;->getDataLength(Ljava/lang/Object;)I

    move-result v3

    iget-short v4, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->p:S

    and-int/lit8 v6, v4, 0x4

    if-eqz v6, :cond_1

    iget v6, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->u:I

    if-gt v3, v6, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lorg/apache/xerces/impl/dv/InvalidDatatypeValueException;

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iget v2, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->u:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    iget-object p0, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->j:Ljava/lang/String;

    filled-new-array {v1, v0, v2, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "cvc-maxLength-valid"

    invoke-direct {p1, v0, p0}, Lorg/apache/xerces/impl/dv/InvalidDatatypeValueException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1

    :cond_1
    :goto_0
    and-int/lit8 v6, v4, 0x2

    if-eqz v6, :cond_3

    iget v6, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->t:I

    if-lt v3, v6, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Lorg/apache/xerces/impl/dv/InvalidDatatypeValueException;

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iget v2, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->t:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    iget-object p0, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->j:Ljava/lang/String;

    filled-new-array {v1, v0, v2, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "cvc-minLength-valid"

    invoke-direct {p1, v0, p0}, Lorg/apache/xerces/impl/dv/InvalidDatatypeValueException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1

    :cond_3
    :goto_1
    and-int/2addr v4, v5

    if-eqz v4, :cond_5

    iget v4, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->s:I

    if-ne v3, v4, :cond_4

    goto :goto_2

    :cond_4
    new-instance p1, Lorg/apache/xerces/impl/dv/InvalidDatatypeValueException;

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iget v2, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->s:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    iget-object p0, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->j:Ljava/lang/String;

    filled-new-array {v1, v0, v2, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "cvc-length-valid"

    invoke-direct {p1, v0, p0}, Lorg/apache/xerces/impl/dv/InvalidDatatypeValueException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1

    :cond_5
    :goto_2
    iget-short v3, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->p:S

    and-int/lit16 v3, v3, 0x800

    if-eqz v3, :cond_13

    iget v3, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->J:I

    invoke-virtual {p0, v2}, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->j(S)S

    move-result v2

    const/4 v4, 0x0

    move v6, v4

    :goto_3
    if-lt v6, v3, :cond_6

    goto/16 :goto_a

    :cond_6
    iget-object v7, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->z:[Lorg/apache/xerces/impl/dv/ValidatedInfo;

    aget-object v7, v7, v6

    iget-short v7, v7, Lorg/apache/xerces/impl/dv/ValidatedInfo;->actualValueType:S

    invoke-virtual {p0, v7}, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->j(S)S

    move-result v7

    const/4 v8, 0x2

    if-eq v2, v7, :cond_8

    if-ne v2, v5, :cond_7

    if-eq v7, v8, :cond_8

    :cond_7
    if-ne v2, v8, :cond_12

    if-ne v7, v5, :cond_12

    :cond_8
    iget-object v7, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->z:[Lorg/apache/xerces/impl/dv/ValidatedInfo;

    aget-object v7, v7, v6

    iget-object v7, v7, Lorg/apache/xerces/impl/dv/ValidatedInfo;->actualValue:Ljava/lang/Object;

    invoke-virtual {v7, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_12

    const/16 v7, 0x2c

    if-eq v2, v7, :cond_a

    const/16 v7, 0x2b

    if-ne v2, v7, :cond_9

    goto :goto_5

    :cond_9
    :goto_4
    move v4, v5

    goto :goto_a

    :cond_a
    :goto_5
    iget-object v7, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->z:[Lorg/apache/xerces/impl/dv/ValidatedInfo;

    aget-object v7, v7, v6

    iget-object v7, v7, Lorg/apache/xerces/impl/dv/ValidatedInfo;->itemValueTypes:Lorg/apache/xerces/xs/ShortList;

    if-eqz p1, :cond_b

    invoke-interface {p1}, Lorg/apache/xerces/xs/ShortList;->getLength()I

    move-result v9

    goto :goto_6

    :cond_b
    move v9, v4

    :goto_6
    if-eqz v7, :cond_c

    invoke-interface {v7}, Lorg/apache/xerces/xs/ShortList;->getLength()I

    move-result v10

    goto :goto_7

    :cond_c
    move v10, v4

    :goto_7
    if-ne v9, v10, :cond_12

    move v10, v4

    :goto_8
    if-lt v10, v9, :cond_d

    goto :goto_9

    :cond_d
    invoke-interface {p1, v10}, Lorg/apache/xerces/xs/ShortList;->item(I)S

    move-result v11

    invoke-virtual {p0, v11}, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->j(S)S

    move-result v11

    invoke-interface {v7, v10}, Lorg/apache/xerces/xs/ShortList;->item(I)S

    move-result v12

    invoke-virtual {p0, v12}, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->j(S)S

    move-result v12

    if-eq v11, v12, :cond_11

    if-ne v11, v5, :cond_e

    if-eq v12, v8, :cond_11

    :cond_e
    if-ne v11, v8, :cond_f

    if-ne v12, v5, :cond_f

    goto :goto_b

    :cond_f
    :goto_9
    if-ne v10, v9, :cond_12

    goto :goto_4

    :goto_a
    if-eqz v4, :cond_10

    goto :goto_c

    :cond_10
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0, p1}, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->c(Ljava/lang/StringBuffer;)V

    new-instance p0, Lorg/apache/xerces/impl/dv/InvalidDatatypeValueException;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {v1, p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "cvc-enumeration-valid"

    invoke-direct {p0, v0, p1}, Lorg/apache/xerces/impl/dv/InvalidDatatypeValueException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p0

    :cond_11
    :goto_b
    add-int/lit8 v10, v10, 0x1

    goto :goto_8

    :cond_12
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_3

    :cond_13
    :goto_c
    iget-short p1, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->p:S

    and-int/lit16 p1, p1, 0x400

    if-eqz p1, :cond_15

    iget-object p1, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->e:[Lorg/apache/xerces/impl/dv/xs/TypeValidator;

    iget-short v2, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->o:S

    aget-object p1, p1, v2

    invoke-virtual {p1, v0}, Lorg/apache/xerces/impl/dv/xs/TypeValidator;->getFractionDigits(Ljava/lang/Object;)I

    move-result p1

    iget v2, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->w:I

    if-gt p1, v2, :cond_14

    goto :goto_d

    :cond_14
    new-instance v0, Lorg/apache/xerces/impl/dv/InvalidDatatypeValueException;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    iget p0, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->w:I

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    filled-new-array {v1, p1, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "cvc-fractionDigits-valid"

    invoke-direct {v0, p1, p0}, Lorg/apache/xerces/impl/dv/InvalidDatatypeValueException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :cond_15
    :goto_d
    iget-short p1, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->p:S

    and-int/lit16 p1, p1, 0x200

    if-eqz p1, :cond_17

    iget-object p1, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->e:[Lorg/apache/xerces/impl/dv/xs/TypeValidator;

    iget-short v2, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->o:S

    aget-object p1, p1, v2

    invoke-virtual {p1, v0}, Lorg/apache/xerces/impl/dv/xs/TypeValidator;->getTotalDigits(Ljava/lang/Object;)I

    move-result p1

    iget v2, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->v:I

    if-gt p1, v2, :cond_16

    goto :goto_e

    :cond_16
    new-instance v0, Lorg/apache/xerces/impl/dv/InvalidDatatypeValueException;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    iget p0, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->v:I

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    filled-new-array {v1, p1, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "cvc-totalDigits-valid"

    invoke-direct {v0, p1, p0}, Lorg/apache/xerces/impl/dv/InvalidDatatypeValueException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :cond_17
    :goto_e
    iget-short p1, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->p:S

    and-int/lit8 p1, p1, 0x20

    const/4 v2, -0x1

    if-eqz p1, :cond_19

    iget-object p1, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->e:[Lorg/apache/xerces/impl/dv/xs/TypeValidator;

    iget-short v3, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->o:S

    aget-object p1, p1, v3

    iget-object v3, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->t0:Ljava/lang/Object;

    invoke-virtual {p1, v0, v3}, Lorg/apache/xerces/impl/dv/xs/TypeValidator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    if-eq p1, v2, :cond_19

    if-nez p1, :cond_18

    goto :goto_f

    :cond_18
    new-instance p1, Lorg/apache/xerces/impl/dv/InvalidDatatypeValueException;

    iget-object v0, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->t0:Ljava/lang/Object;

    iget-object p0, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->j:Ljava/lang/String;

    filled-new-array {v1, v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "cvc-maxInclusive-valid"

    invoke-direct {p1, v0, p0}, Lorg/apache/xerces/impl/dv/InvalidDatatypeValueException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1

    :cond_19
    :goto_f
    iget-short p1, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->p:S

    and-int/lit8 p1, p1, 0x40

    if-eqz p1, :cond_1b

    iget-object p1, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->e:[Lorg/apache/xerces/impl/dv/xs/TypeValidator;

    iget-short v3, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->o:S

    aget-object p1, p1, v3

    iget-object v3, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->u0:Ljava/lang/Object;

    invoke-virtual {p1, v0, v3}, Lorg/apache/xerces/impl/dv/xs/TypeValidator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    if-ne p1, v2, :cond_1a

    goto :goto_10

    :cond_1a
    new-instance p1, Lorg/apache/xerces/impl/dv/InvalidDatatypeValueException;

    iget-object v0, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->u0:Ljava/lang/Object;

    iget-object p0, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->j:Ljava/lang/String;

    filled-new-array {v1, v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "cvc-maxExclusive-valid"

    invoke-direct {p1, v0, p0}, Lorg/apache/xerces/impl/dv/InvalidDatatypeValueException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1

    :cond_1b
    :goto_10
    iget-short p1, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->p:S

    and-int/lit16 p1, p1, 0x100

    if-eqz p1, :cond_1d

    iget-object p1, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->e:[Lorg/apache/xerces/impl/dv/xs/TypeValidator;

    iget-short v2, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->o:S

    aget-object p1, p1, v2

    iget-object v2, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->w0:Ljava/lang/Object;

    invoke-virtual {p1, v0, v2}, Lorg/apache/xerces/impl/dv/xs/TypeValidator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    if-eq p1, v5, :cond_1d

    if-nez p1, :cond_1c

    goto :goto_11

    :cond_1c
    new-instance p1, Lorg/apache/xerces/impl/dv/InvalidDatatypeValueException;

    iget-object v0, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->w0:Ljava/lang/Object;

    iget-object p0, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->j:Ljava/lang/String;

    filled-new-array {v1, v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "cvc-minInclusive-valid"

    invoke-direct {p1, v0, p0}, Lorg/apache/xerces/impl/dv/InvalidDatatypeValueException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1

    :cond_1d
    :goto_11
    iget-short p1, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->p:S

    and-int/lit16 p1, p1, 0x80

    if-eqz p1, :cond_1f

    iget-object p1, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->e:[Lorg/apache/xerces/impl/dv/xs/TypeValidator;

    iget-short v2, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->o:S

    aget-object p1, p1, v2

    iget-object v2, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->v0:Ljava/lang/Object;

    invoke-virtual {p1, v0, v2}, Lorg/apache/xerces/impl/dv/xs/TypeValidator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    if-ne p1, v5, :cond_1e

    goto :goto_12

    :cond_1e
    new-instance p1, Lorg/apache/xerces/impl/dv/InvalidDatatypeValueException;

    iget-object v0, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->v0:Ljava/lang/Object;

    iget-object p0, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->j:Ljava/lang/String;

    filled-new-array {v1, v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "cvc-minExclusive-valid"

    invoke-direct {p1, v0, p0}, Lorg/apache/xerces/impl/dv/InvalidDatatypeValueException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1

    :cond_1f
    :goto_12
    return-void
.end method

.method public isDOMDerivedFrom(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 6

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    :cond_0
    sget-object v1, Lorg/apache/xerces/impl/xs/SchemaSymbols;->URI_SCHEMAFORSCHEMA:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    const-string v1, "anyType"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    and-int/lit8 v1, p3, 0x1

    if-nez v1, :cond_1

    if-nez p3, :cond_2

    :cond_1
    return v2

    :cond_2
    and-int/lit8 v1, p3, 0x1

    if-eqz v1, :cond_3

    invoke-virtual {p0, p1, p2, p0}, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->o(Ljava/lang/String;Ljava/lang/String;Lorg/apache/xerces/xs/XSTypeDefinition;)Z

    move-result v3

    if-eqz v3, :cond_3

    return v2

    :cond_3
    and-int/lit8 v3, p3, 0x8

    if-eqz v3, :cond_4

    invoke-virtual {p0, p1, p2, p0}, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->n(Ljava/lang/String;Ljava/lang/String;Lorg/apache/xerces/xs/XSTypeDefinition;)Z

    move-result v4

    if-eqz v4, :cond_4

    return v2

    :cond_4
    and-int/lit8 v4, p3, 0x4

    if-eqz v4, :cond_5

    invoke-virtual {p0, p1, p2, p0}, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->p(Ljava/lang/String;Ljava/lang/String;Lorg/apache/xerces/xs/XSTypeDefinition;)Z

    move-result v5

    if-eqz v5, :cond_5

    return v2

    :cond_5
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_6

    if-nez v1, :cond_6

    if-nez v3, :cond_6

    if-nez v4, :cond_6

    return v0

    :cond_6
    if-nez p3, :cond_7

    if-nez v1, :cond_7

    if-nez v3, :cond_7

    if-nez v4, :cond_7

    invoke-virtual {p0, p1, p2, p0}, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->m(Ljava/lang/String;Ljava/lang/String;Lorg/apache/xerces/xs/XSTypeDefinition;)Z

    move-result p0

    return p0

    :cond_7
    return v0
.end method

.method public isDefinedFacet(S)Z
    .locals 4

    iget-short v0, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->o:S

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    const/16 v2, 0x1d

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    iget-short v2, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->p:S

    and-int/2addr v2, p1

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    return v3

    :cond_1
    iget-short p0, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->A0:S

    const/16 v2, 0x8

    if-eqz p0, :cond_3

    if-ne p1, v2, :cond_2

    move v1, v3

    :cond_2
    return v1

    :cond_3
    const/16 p0, 0x18

    if-ne v0, p0, :cond_5

    if-eq p1, v2, :cond_4

    const/16 p0, 0x400

    if-ne p1, p0, :cond_5

    :cond_4
    move v1, v3

    :cond_5
    :goto_0
    return v1
.end method

.method public isDerivedFrom(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->isDOMDerivedFrom(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public isEqual(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isFinal(S)Z
    .locals 0

    iget-short p0, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->l:S

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isFixedFacet(S)Z
    .locals 3

    iget-short v0, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->q:S

    and-int/2addr v0, p1

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-short p0, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->o:S

    const/16 v0, 0x18

    const/4 v2, 0x0

    if-ne p0, v0, :cond_2

    const/16 p0, 0x400

    if-ne p1, p0, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    return v1

    :cond_2
    return v2
.end method

.method public isIDType()Z
    .locals 5

    iget-short v0, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->n:S

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_4

    const/4 v3, 0x2

    if-eq v0, v3, :cond_3

    const/4 v3, 0x3

    if-eq v0, v3, :cond_0

    goto :goto_1

    :cond_0
    move v0, v1

    :goto_0
    iget-object v3, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->h:[Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    array-length v4, v3

    if-lt v0, v4, :cond_1

    :goto_1
    return v1

    :cond_1
    aget-object v3, v3, v0

    invoke-virtual {v3}, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->isIDType()Z

    move-result v3

    if-eqz v3, :cond_2

    return v2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    iget-object p0, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->g:Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    invoke-virtual {p0}, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->isIDType()Z

    move-result p0

    return p0

    :cond_4
    iget-short p0, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->o:S

    const/16 v0, 0x15

    if-ne p0, v0, :cond_5

    move v1, v2

    :cond_5
    return v1
.end method

.method public isIdentical(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object v0, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->e:[Lorg/apache/xerces/impl/dv/xs/TypeValidator;

    iget-short p0, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->o:S

    aget-object p0, v0, p0

    invoke-virtual {p0, p1, p2}, Lorg/apache/xerces/impl/dv/xs/TypeValidator;->isIdentical(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final j(S)S
    .locals 0

    const/16 p0, 0x14

    if-gt p1, p0, :cond_0

    return p1

    :cond_0
    const/16 p0, 0x1d

    if-gt p1, p0, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    const/16 p0, 0x2a

    if-gt p1, p0, :cond_2

    const/4 p0, 0x4

    return p0

    :cond_2
    return p1
.end method

.method public final k(Ljava/lang/Object;Lorg/apache/xerces/impl/dv/ValidationContext;Lorg/apache/xerces/impl/dv/ValidatedInfo;Z)Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/impl/dv/InvalidDatatypeValueException;
        }
    .end annotation

    if-eqz p4, :cond_0

    iget-short p4, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->r:S

    invoke-virtual {p0, p1, p4}, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->normalize(Ljava/lang/Object;S)Ljava/lang/String;

    move-result-object p4

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p4

    :goto_0
    iget-short v0, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->p:S

    and-int/lit8 v0, v0, 0x8

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->x:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    sub-int/2addr v0, v1

    :goto_1
    if-gez v0, :cond_1

    goto :goto_2

    :cond_1
    iget-object v2, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->x:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/xerces/impl/xpath/regex/RegularExpression;

    invoke-virtual {v2, p4}, Lorg/apache/xerces/impl/xpath/regex/RegularExpression;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_2
    new-instance p2, Lorg/apache/xerces/impl/dv/InvalidDatatypeValueException;

    iget-object p3, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->y:Ljava/util/Vector;

    invoke-virtual {p3, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p3

    iget-object p0, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->j:Ljava/lang/String;

    filled-new-array {p1, p3, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "cvc-pattern-valid"

    invoke-direct {p2, p1, p0}, Lorg/apache/xerces/impl/dv/InvalidDatatypeValueException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p2

    :cond_3
    :goto_2
    iget-short v0, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->n:S

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-ne v0, v1, :cond_9

    iget-short p1, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->A0:S

    if-eqz p1, :cond_8

    if-ne p1, v1, :cond_4

    invoke-static {p4}, Lorg/apache/xerces/util/XMLChar;->isValidNmtoken(Ljava/lang/String;)Z

    move-result p1

    :goto_3
    xor-int/lit8 v4, p1, 0x1

    goto :goto_4

    :cond_4
    if-ne p1, v3, :cond_5

    invoke-static {p4}, Lorg/apache/xerces/util/XMLChar;->isValidName(Ljava/lang/String;)Z

    move-result p1

    goto :goto_3

    :cond_5
    if-ne p1, v2, :cond_6

    invoke-static {p4}, Lorg/apache/xerces/util/XMLChar;->isValidNCName(Ljava/lang/String;)Z

    move-result p1

    goto :goto_3

    :cond_6
    :goto_4
    if-nez v4, :cond_7

    goto :goto_5

    :cond_7
    new-instance p1, Lorg/apache/xerces/impl/dv/InvalidDatatypeValueException;

    sget-object p2, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->Q0:[Ljava/lang/String;

    iget-short p0, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->A0:S

    aget-object p0, p2, p0

    filled-new-array {p4, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p2, "cvc-datatype-valid.1.2.1"

    invoke-direct {p1, p2, p0}, Lorg/apache/xerces/impl/dv/InvalidDatatypeValueException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1

    :cond_8
    :goto_5
    iput-object p4, p3, Lorg/apache/xerces/impl/dv/ValidatedInfo;->normalizedValue:Ljava/lang/String;

    iget-object p1, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->e:[Lorg/apache/xerces/impl/dv/xs/TypeValidator;

    iget-short v0, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->o:S

    aget-object p1, p1, v0

    invoke-virtual {p1, p4, p2}, Lorg/apache/xerces/impl/dv/xs/TypeValidator;->getActualValue(Ljava/lang/String;Lorg/apache/xerces/impl/dv/ValidationContext;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p3, Lorg/apache/xerces/impl/dv/ValidatedInfo;->actualValue:Ljava/lang/Object;

    iget-short p2, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->i:S

    iput-short p2, p3, Lorg/apache/xerces/impl/dv/ValidatedInfo;->actualValueType:S

    :goto_6
    iput-object p0, p3, Lorg/apache/xerces/impl/dv/ValidatedInfo;->actualType:Lorg/apache/xerces/impl/dv/XSSimpleType;

    return-object p1

    :cond_9
    const/16 v5, 0x10

    if-ne v0, v3, :cond_11

    new-instance v0, Ljava/util/StringTokenizer;

    const-string p1, " "

    invoke-direct {v0, p4, p1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v3

    new-array v6, v3, [Ljava/lang/Object;

    iget-object p1, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->g:Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    invoke-virtual {p1}, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->getVariety()S

    move-result p1

    if-ne p1, v2, :cond_a

    move v2, v1

    goto :goto_7

    :cond_a
    move v2, v4

    :goto_7
    if-eqz v2, :cond_b

    move v7, v3

    goto :goto_8

    :cond_b
    move v7, v1

    :goto_8
    new-array v8, v7, [S

    if-nez v2, :cond_c

    iget-object p1, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->g:Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-short p1, p1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->i:S

    aput-short p1, v8, v4

    :cond_c
    new-array v9, v3, [Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move p1, v4

    :goto_9
    if-lt p1, v3, :cond_e

    new-instance p1, Lorg/apache/xerces/impl/dv/xs/ListDV$a;

    invoke-direct {p1, v6}, Lorg/apache/xerces/impl/dv/xs/ListDV$a;-><init>([Ljava/lang/Object;)V

    iput-object p1, p3, Lorg/apache/xerces/impl/dv/ValidatedInfo;->actualValue:Ljava/lang/Object;

    if-eqz v2, :cond_d

    const/16 p2, 0x2b

    goto :goto_a

    :cond_d
    const/16 p2, 0x2c

    :goto_a
    iput-short p2, p3, Lorg/apache/xerces/impl/dv/ValidatedInfo;->actualValueType:S

    const/4 p2, 0x0

    iput-object p2, p3, Lorg/apache/xerces/impl/dv/ValidatedInfo;->memberType:Lorg/apache/xerces/impl/dv/XSSimpleType;

    iput-object v9, p3, Lorg/apache/xerces/impl/dv/ValidatedInfo;->memberTypes:[Lorg/apache/xerces/impl/dv/XSSimpleType;

    new-instance p2, Lorg/apache/xerces/impl/xs/util/ShortListImpl;

    invoke-direct {p2, v8, v7}, Lorg/apache/xerces/impl/xs/util/ShortListImpl;-><init>([SI)V

    iput-object p2, p3, Lorg/apache/xerces/impl/dv/ValidatedInfo;->itemValueTypes:Lorg/apache/xerces/xs/ShortList;

    iput-object p4, p3, Lorg/apache/xerces/impl/dv/ValidatedInfo;->normalizedValue:Ljava/lang/String;

    goto :goto_6

    :cond_e
    iget-object v1, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->g:Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10, p2, p3, v4}, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->k(Ljava/lang/Object;Lorg/apache/xerces/impl/dv/ValidationContext;Lorg/apache/xerces/impl/dv/ValidatedInfo;Z)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v6, p1

    invoke-interface {p2}, Lorg/apache/xerces/impl/dv/ValidationContext;->needFacetChecking()Z

    move-result v1

    if-eqz v1, :cond_f

    iget-object v1, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->g:Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v10, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->p:S

    if-eqz v10, :cond_f

    if-eq v10, v5, :cond_f

    invoke-virtual {v1, p3}, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->i(Lorg/apache/xerces/impl/dv/ValidatedInfo;)V

    :cond_f
    iget-object v1, p3, Lorg/apache/xerces/impl/dv/ValidatedInfo;->memberType:Lorg/apache/xerces/impl/dv/XSSimpleType;

    check-cast v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    aput-object v1, v9, p1

    if-eqz v2, :cond_10

    iget-short v1, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->i:S

    aput-short v1, v8, p1

    :cond_10
    add-int/lit8 p1, p1, 0x1

    goto :goto_9

    :cond_11
    iget-object p4, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->h:[Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    array-length p4, p4

    if-le p4, v1, :cond_12

    if-eqz p1, :cond_12

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p4

    goto :goto_b

    :cond_12
    move-object p4, p1

    :goto_b
    move v0, v4

    :goto_c
    iget-object v2, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->h:[Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    array-length v3, v2

    if-lt v0, v3, :cond_17

    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    :goto_d
    iget-object p3, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->h:[Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    array-length p3, p3

    if-ge v4, p3, :cond_16

    if-eqz v4, :cond_13

    const-string p3, " | "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_13
    iget-object p3, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->h:[Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    aget-object p3, p3, v4

    iget-object p4, p3, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->k:Ljava/lang/String;

    if-eqz p4, :cond_14

    const/16 p4, 0x7b

    invoke-virtual {p2, p4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object p4, p3, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->k:Ljava/lang/String;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 p4, 0x7d

    invoke-virtual {p2, p4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_14
    iget-object p4, p3, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->j:Ljava/lang/String;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p4, p3, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->z:[Lorg/apache/xerces/impl/dv/ValidatedInfo;

    if-eqz p4, :cond_15

    const-string p4, " : "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p3, p2}, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->c(Ljava/lang/StringBuffer;)V

    :cond_15
    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    :cond_16
    new-instance p3, Lorg/apache/xerces/impl/dv/InvalidDatatypeValueException;

    iget-object p0, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->j:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    filled-new-array {p1, p0, p2}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "cvc-datatype-valid.1.2.3"

    invoke-direct {p3, p1, p0}, Lorg/apache/xerces/impl/dv/InvalidDatatypeValueException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p3

    :cond_17
    :try_start_0
    aget-object v2, v2, v0

    invoke-virtual {v2, p4, p2, p3, v1}, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->k(Ljava/lang/Object;Lorg/apache/xerces/impl/dv/ValidationContext;Lorg/apache/xerces/impl/dv/ValidatedInfo;Z)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p2}, Lorg/apache/xerces/impl/dv/ValidationContext;->needFacetChecking()Z

    move-result v3

    if-eqz v3, :cond_18

    iget-object v3, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->h:[Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    aget-object v3, v3, v0

    iget-short v6, v3, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->p:S

    if-eqz v6, :cond_18

    if-eq v6, v5, :cond_18

    invoke-virtual {v3, p3}, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->i(Lorg/apache/xerces/impl/dv/ValidatedInfo;)V

    :cond_18
    iget-object v3, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->h:[Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    aget-object v3, v3, v0

    iput-object v3, p3, Lorg/apache/xerces/impl/dv/ValidatedInfo;->memberType:Lorg/apache/xerces/impl/dv/XSSimpleType;

    iput-object p0, p3, Lorg/apache/xerces/impl/dv/ValidatedInfo;->actualType:Lorg/apache/xerces/impl/dv/XSSimpleType;
    :try_end_0
    .catch Lorg/apache/xerces/impl/dv/InvalidDatatypeValueException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_c
.end method

.method public final l(S)S
    .locals 0

    const/16 p0, 0x15

    if-eq p1, p0, :cond_2

    const/16 p0, 0x16

    if-eq p1, p0, :cond_2

    const/16 p0, 0x17

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/16 p0, 0x18

    if-ne p1, p0, :cond_1

    const/4 p0, 0x3

    return p0

    :cond_1
    return p1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final m(Ljava/lang/String;Ljava/lang/String;Lorg/apache/xerces/xs/XSTypeDefinition;)Z
    .locals 5

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    if-eqz p3, :cond_c

    if-ne p3, v0, :cond_0

    goto/16 :goto_4

    :cond_0
    invoke-interface {p3}, Lorg/apache/xerces/xs/XSObject;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    if-nez p1, :cond_1

    invoke-interface {p3}, Lorg/apache/xerces/xs/XSObject;->getNamespace()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    :cond_1
    if-eqz p1, :cond_3

    invoke-interface {p3}, Lorg/apache/xerces/xs/XSObject;->getNamespace()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    move v1, v2

    goto :goto_4

    :cond_3
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->o(Ljava/lang/String;Ljava/lang/String;Lorg/apache/xerces/xs/XSTypeDefinition;)Z

    move-result v0

    if-eqz v0, :cond_4

    return v2

    :cond_4
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->n(Ljava/lang/String;Ljava/lang/String;Lorg/apache/xerces/xs/XSTypeDefinition;)Z

    move-result v0

    if-eqz v0, :cond_5

    return v2

    :cond_5
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->p(Ljava/lang/String;Ljava/lang/String;Lorg/apache/xerces/xs/XSTypeDefinition;)Z

    move-result v0

    if-eqz v0, :cond_6

    return v2

    :cond_6
    move-object v0, p3

    check-cast v0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    invoke-virtual {v0}, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->getVariety()S

    move-result v3

    if-eqz v3, :cond_b

    invoke-virtual {v0}, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->getVariety()S

    move-result v3

    if-ne v3, v2, :cond_7

    goto :goto_2

    :cond_7
    invoke-virtual {v0}, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->getVariety()S

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_9

    invoke-virtual {v0}, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->getMemberTypes()Lorg/apache/xerces/xs/XSObjectList;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/xerces/xs/XSObjectList;->getLength()I

    move-result v2

    if-gtz v2, :cond_8

    goto :goto_1

    :cond_8
    invoke-virtual {v0}, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->getMemberTypes()Lorg/apache/xerces/xs/XSObjectList;

    move-result-object p3

    invoke-interface {p3, v1}, Lorg/apache/xerces/xs/XSObjectList;->item(I)Lorg/apache/xerces/xs/XSObject;

    move-result-object p3

    check-cast p3, Lorg/apache/xerces/xs/XSTypeDefinition;

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->m(Ljava/lang/String;Ljava/lang/String;Lorg/apache/xerces/xs/XSTypeDefinition;)Z

    move-result p0

    return p0

    :cond_9
    invoke-virtual {v0}, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->getVariety()S

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_a

    invoke-virtual {v0}, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->getItemType()Lorg/apache/xerces/xs/XSSimpleTypeDefinition;

    move-result-object v0

    goto :goto_3

    :cond_a
    :goto_1
    move-object v0, p3

    goto :goto_0

    :cond_b
    :goto_2
    invoke-interface {p3}, Lorg/apache/xerces/xs/XSTypeDefinition;->getBaseType()Lorg/apache/xerces/xs/XSTypeDefinition;

    move-result-object v0

    :goto_3
    move-object v4, v0

    move-object v0, p3

    move-object p3, v4

    goto/16 :goto_0

    :cond_c
    :goto_4
    return v1
.end method

.method public final n(Ljava/lang/String;Ljava/lang/String;Lorg/apache/xerces/xs/XSTypeDefinition;)Z
    .locals 2

    if-eqz p3, :cond_0

    check-cast p3, Lorg/apache/xerces/xs/XSSimpleTypeDefinition;

    invoke-interface {p3}, Lorg/apache/xerces/xs/XSSimpleTypeDefinition;->getVariety()S

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-interface {p3}, Lorg/apache/xerces/xs/XSSimpleTypeDefinition;->getItemType()Lorg/apache/xerces/xs/XSSimpleTypeDefinition;

    move-result-object p3

    if-eqz p3, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->o(Ljava/lang/String;Ljava/lang/String;Lorg/apache/xerces/xs/XSTypeDefinition;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public normalize(Ljava/lang/Object;S)Ljava/lang/String;
    .locals 11

    .line 1
    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-short v0, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->p:S

    and-int/lit8 v0, v0, 0x8

    const/4 v1, 0x1

    if-nez v0, :cond_2

    sget-object v0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->L0:[S

    iget-short p0, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->o:S

    aget-short p0, v0, p0

    if-nez p0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    if-ne p0, v1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/xerces/util/XMLChar;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    instance-of p0, p1, Ljava/lang/StringBuffer;

    if-nez p0, :cond_3

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p2}, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->normalize(Ljava/lang/String;S)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    check-cast p1, Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result p0

    if-nez p0, :cond_4

    const-string p0, ""

    return-object p0

    :cond_4
    if-nez p2, :cond_5

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5
    const/16 v0, 0xd

    const/16 v2, 0xa

    const/16 v3, 0x9

    const/16 v4, 0x20

    const/4 v5, 0x0

    if-ne p2, v1, :cond_9

    :goto_0
    if-lt v5, p0, :cond_6

    goto :goto_2

    :cond_6
    invoke-virtual {p1, v5}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result p2

    if-eq p2, v3, :cond_7

    if-eq p2, v2, :cond_7

    if-ne p2, v0, :cond_8

    :cond_7
    invoke-virtual {p1, v5, v4}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    :cond_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_9
    move v7, v1

    move p2, v5

    move v6, p2

    :goto_1
    if-lt p2, p0, :cond_a

    invoke-virtual {p1, v6}, Ljava/lang/StringBuffer;->setLength(I)V

    :goto_2
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_a
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v8

    if-eq v8, v3, :cond_b

    if-eq v8, v2, :cond_b

    if-eq v8, v0, :cond_b

    if-eq v8, v4, :cond_b

    add-int/lit8 v7, v6, 0x1

    invoke-virtual {p1, v6, v8}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    move v6, v7

    move v7, v5

    goto :goto_5

    :cond_b
    :goto_3
    add-int/lit8 v8, p0, -0x1

    if-lt p2, v8, :cond_c

    goto :goto_4

    :cond_c
    add-int/lit8 v9, p2, 0x1

    invoke-virtual {p1, v9}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v10

    if-eq v10, v3, :cond_e

    if-eq v10, v2, :cond_e

    if-eq v10, v0, :cond_e

    if-eq v10, v4, :cond_e

    :goto_4
    if-ge p2, v8, :cond_d

    if-nez v7, :cond_d

    add-int/lit8 v8, v6, 0x1

    invoke-virtual {p1, v6, v4}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    move v6, v8

    :cond_d
    :goto_5
    add-int/2addr p2, v1

    goto :goto_1

    :cond_e
    move p2, v9

    goto :goto_3
.end method

.method public final o(Ljava/lang/String;Ljava/lang/String;Lorg/apache/xerces/xs/XSTypeDefinition;)Z
    .locals 1

    const/4 p0, 0x0

    :goto_0
    if-eqz p3, :cond_4

    if-ne p3, p0, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p3}, Lorg/apache/xerces/xs/XSObject;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    if-eqz p1, :cond_1

    invoke-interface {p3}, Lorg/apache/xerces/xs/XSObject;->getNamespace()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    :cond_1
    invoke-interface {p3}, Lorg/apache/xerces/xs/XSObject;->getNamespace()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_3

    if-nez p1, :cond_3

    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    invoke-interface {p3}, Lorg/apache/xerces/xs/XSTypeDefinition;->getBaseType()Lorg/apache/xerces/xs/XSTypeDefinition;

    move-result-object p0

    move-object v0, p3

    move-object p3, p0

    move-object p0, v0

    goto :goto_0

    :cond_4
    :goto_1
    const/4 p0, 0x0

    return p0
.end method

.method public final p(Ljava/lang/String;Ljava/lang/String;Lorg/apache/xerces/xs/XSTypeDefinition;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p3, :cond_2

    check-cast p3, Lorg/apache/xerces/xs/XSSimpleTypeDefinition;

    invoke-interface {p3}, Lorg/apache/xerces/xs/XSSimpleTypeDefinition;->getVariety()S

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    invoke-interface {p3}, Lorg/apache/xerces/xs/XSSimpleTypeDefinition;->getMemberTypes()Lorg/apache/xerces/xs/XSObjectList;

    move-result-object p3

    move v1, v0

    :goto_0
    invoke-interface {p3}, Lorg/apache/xerces/xs/XSObjectList;->getLength()I

    move-result v2

    if-lt v1, v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p3, v1}, Lorg/apache/xerces/xs/XSObjectList;->item(I)Lorg/apache/xerces/xs/XSObject;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {p3, v1}, Lorg/apache/xerces/xs/XSObjectList;->item(I)Lorg/apache/xerces/xs/XSObject;

    move-result-object v2

    check-cast v2, Lorg/apache/xerces/xs/XSSimpleTypeDefinition;

    invoke-virtual {p0, p1, p2, v2}, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->o(Ljava/lang/String;Ljava/lang/String;Lorg/apache/xerces/xs/XSTypeDefinition;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v0
.end method

.method public q(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/impl/dv/InvalidDatatypeFacetException;
        }
    .end annotation

    new-instance p0, Lorg/apache/xerces/impl/dv/InvalidDatatypeFacetException;

    invoke-direct {p0, p1, p2}, Lorg/apache/xerces/impl/dv/InvalidDatatypeFacetException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p0
.end method

.method public final r()V
    .locals 6

    iget-short v0, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->n:S

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    iget-short v0, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->p:S

    and-int/lit16 v3, v0, 0x100

    if-nez v3, :cond_0

    and-int/lit16 v3, v0, 0x80

    if-eqz v3, :cond_1

    :cond_0
    and-int/lit8 v3, v0, 0x20

    if-nez v3, :cond_3

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iput-boolean v1, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->D0:Z

    goto :goto_4

    :cond_2
    const/4 v3, 0x2

    if-ne v0, v3, :cond_4

    iget-short v0, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->p:S

    and-int/lit8 v3, v0, 0x1

    if-nez v3, :cond_3

    and-int/lit8 v3, v0, 0x2

    if-eqz v3, :cond_1

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1

    :cond_3
    :goto_0
    iput-boolean v2, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->D0:Z

    goto :goto_4

    :cond_4
    const/4 v3, 0x3

    if-ne v0, v3, :cond_9

    iget-object v0, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->h:[Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    array-length v3, v0

    if-lez v3, :cond_5

    aget-object v3, v0, v1

    iget-short v3, v3, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->o:S

    invoke-virtual {p0, v3}, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->l(S)S

    move-result v3

    goto :goto_1

    :cond_5
    move v3, v1

    :goto_1
    move v4, v1

    :goto_2
    array-length v5, v0

    if-lt v4, v5, :cond_6

    goto :goto_0

    :cond_6
    aget-object v5, v0, v4

    invoke-virtual {v5}, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->getBounded()Z

    move-result v5

    if-eqz v5, :cond_8

    aget-object v5, v0, v4

    iget-short v5, v5, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->o:S

    invoke-virtual {p0, v5}, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->l(S)S

    move-result v5

    if-eq v3, v5, :cond_7

    goto :goto_3

    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_8
    :goto_3
    iput-boolean v1, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->D0:Z

    :cond_9
    :goto_4
    return-void
.end method

.method public reset()V
    .locals 3

    iget-boolean v0, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->f:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->g:Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iput-object v0, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->h:[Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iput-object v0, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->j:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->k:Ljava/lang/String;

    const/4 v1, 0x0

    iput-short v1, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->l:S

    iput-object v0, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->m:Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    const/4 v2, -0x1

    iput-short v2, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->n:S

    iput-short v2, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->o:S

    iput-short v1, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->p:S

    iput-short v1, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->q:S

    iput-short v1, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->r:S

    iput v2, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->s:I

    iput v2, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->t:I

    iput v2, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->u:I

    iput v2, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->v:I

    iput v2, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->w:I

    iput-object v0, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->x:Ljava/util/Vector;

    iput-object v0, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->y:Ljava/util/Vector;

    iput-object v0, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->z:[Lorg/apache/xerces/impl/dv/ValidatedInfo;

    iput-object v0, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->Z:Lorg/apache/xerces/xs/StringList;

    iput-object v0, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->k0:Lorg/apache/xerces/xs/StringList;

    iput-object v0, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->q0:Lorg/apache/xerces/xs/datatypes/ObjectList;

    iput-object v0, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->O:Lorg/apache/xerces/xs/ShortList;

    iput-object v0, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->Q:Lorg/apache/xerces/xs/datatypes/ObjectList;

    iput-object v0, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->t0:Ljava/lang/Object;

    iput-object v0, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->u0:Ljava/lang/Object;

    iput-object v0, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->v0:Ljava/lang/Object;

    iput-object v0, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->w0:Ljava/lang/Object;

    iput-object v0, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->lengthAnnotation:Lorg/apache/xerces/xs/XSAnnotation;

    iput-object v0, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->minLengthAnnotation:Lorg/apache/xerces/xs/XSAnnotation;

    iput-object v0, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->maxLengthAnnotation:Lorg/apache/xerces/xs/XSAnnotation;

    iput-object v0, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->whiteSpaceAnnotation:Lorg/apache/xerces/xs/XSAnnotation;

    iput-object v0, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->totalDigitsAnnotation:Lorg/apache/xerces/xs/XSAnnotation;

    iput-object v0, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fractionDigitsAnnotation:Lorg/apache/xerces/xs/XSAnnotation;

    iput-object v0, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->patternAnnotations:Lorg/apache/xerces/impl/xs/util/XSObjectListImpl;

    iput-object v0, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->enumerationAnnotations:Lorg/apache/xerces/xs/XSObjectList;

    iput-object v0, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->maxInclusiveAnnotation:Lorg/apache/xerces/xs/XSAnnotation;

    iput-object v0, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->maxExclusiveAnnotation:Lorg/apache/xerces/xs/XSAnnotation;

    iput-object v0, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->minInclusiveAnnotation:Lorg/apache/xerces/xs/XSAnnotation;

    iput-object v0, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->minExclusiveAnnotation:Lorg/apache/xerces/xs/XSAnnotation;

    iput-short v1, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->A0:S

    iput-object v0, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->z0:Lorg/apache/xerces/xs/XSObjectList;

    iput-object v0, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->x0:Lorg/apache/xerces/impl/xs/util/XSObjectListImpl;

    return-void
.end method

.method public final s()V
    .locals 5

    iget-short v0, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->n:S

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_5

    iget-object v0, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->m:Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-boolean v0, v0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->C0:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    iput-boolean v2, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->C0:Z

    goto :goto_2

    :cond_1
    iget-short v0, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->p:S

    and-int/lit8 v3, v0, 0x1

    if-nez v3, :cond_0

    and-int/lit8 v3, v0, 0x4

    if-nez v3, :cond_0

    and-int/lit16 v3, v0, 0x200

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    and-int/lit16 v3, v0, 0x100

    if-nez v3, :cond_3

    and-int/lit16 v3, v0, 0x80

    if-eqz v3, :cond_6

    :cond_3
    and-int/lit8 v3, v0, 0x20

    if-nez v3, :cond_4

    and-int/lit8 v3, v0, 0x40

    if-eqz v3, :cond_6

    :cond_4
    and-int/lit16 v0, v0, 0x400

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->v()Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_0

    :cond_5
    const/4 v3, 0x2

    if-ne v0, v3, :cond_7

    iget-short v0, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->p:S

    and-int/lit8 v3, v0, 0x1

    if-nez v3, :cond_0

    and-int/lit8 v3, v0, 0x2

    if-eqz v3, :cond_6

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_6

    goto :goto_0

    :cond_6
    iput-boolean v1, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->C0:Z

    goto :goto_2

    :cond_7
    const/4 v3, 0x3

    if-ne v0, v3, :cond_a

    iget-object v0, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->h:[Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move v3, v1

    :goto_1
    array-length v4, v0

    if-lt v3, v4, :cond_8

    goto :goto_0

    :cond_8
    aget-object v4, v0, v3

    invoke-interface {v4}, Lorg/apache/xerces/xs/XSSimpleTypeDefinition;->getFinite()Z

    move-result v4

    if-nez v4, :cond_9

    iput-boolean v1, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->C0:Z

    return-void

    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_a
    :goto_2
    return-void
.end method

.method public setAnonymous(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->G0:Z

    return-void
.end method

.method public setDVs([Lorg/apache/xerces/impl/dv/xs/TypeValidator;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->e:[Lorg/apache/xerces/impl/dv/xs/TypeValidator;

    return-void
.end method

.method public setListValues(Ljava/lang/String;Ljava/lang/String;SLorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;Lorg/apache/xerces/xs/XSObjectList;)Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;
    .locals 1

    iget-boolean v0, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->f:Z

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object v0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->a1:Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iput-object v0, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->m:Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->G0:Z

    iput-object p1, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->j:Ljava/lang/String;

    iput-object p2, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->k:Ljava/lang/String;

    iput-short p3, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->l:S

    iput-object p5, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->z0:Lorg/apache/xerces/xs/XSObjectList;

    const/4 p1, 0x2

    iput-short p1, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->n:S

    iput-object p4, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->g:Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    const/16 p2, 0x19

    iput-short p2, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->o:S

    const/16 p2, 0x10

    iput-short p2, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->p:S

    iput-short p2, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->q:S

    iput-short p1, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->r:S

    invoke-virtual {p0}, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->g()V

    const/16 p1, 0x2c

    iput-short p1, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->i:S

    return-object p0
.end method

.method public setNamespaceItem(Lorg/apache/xerces/xs/XSNamespaceItem;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->F0:Lorg/apache/xerces/xs/XSNamespaceItem;

    return-void
.end method

.method public setRestrictionValues(Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;Ljava/lang/String;SLorg/apache/xerces/xs/XSObjectList;)Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;
    .locals 1

    iget-boolean v0, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->f:Z

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iput-object p1, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->m:Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->G0:Z

    iput-object p2, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->j:Ljava/lang/String;

    iput-object p3, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->k:Ljava/lang/String;

    iput-short p4, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->l:S

    iput-object p5, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->z0:Lorg/apache/xerces/xs/XSObjectList;

    iget-short p2, p1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->n:S

    iput-short p2, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->n:S

    iget-short p3, p1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->o:S

    iput-short p3, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->o:S

    const/4 p3, 0x2

    if-eq p2, p3, :cond_2

    const/4 p3, 0x3

    if-eq p2, p3, :cond_1

    goto :goto_0

    :cond_1
    iget-object p2, p1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->h:[Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iput-object p2, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->h:[Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    goto :goto_0

    :cond_2
    iget-object p2, p1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->g:Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iput-object p2, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->g:Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    :goto_0
    iget p2, p1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->s:I

    iput p2, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->s:I

    iget p2, p1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->t:I

    iput p2, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->t:I

    iget p2, p1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->u:I

    iput p2, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->u:I

    iget-object p2, p1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->x:Ljava/util/Vector;

    iput-object p2, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->x:Ljava/util/Vector;

    iget-object p2, p1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->y:Ljava/util/Vector;

    iput-object p2, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->y:Ljava/util/Vector;

    iget-object p2, p1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->z:[Lorg/apache/xerces/impl/dv/ValidatedInfo;

    iput-object p2, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->z:[Lorg/apache/xerces/impl/dv/ValidatedInfo;

    iget p2, p1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->J:I

    iput p2, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->J:I

    iget-short p2, p1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->r:S

    iput-short p2, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->r:S

    iget-object p2, p1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->u0:Ljava/lang/Object;

    iput-object p2, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->u0:Ljava/lang/Object;

    iget-object p2, p1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->t0:Ljava/lang/Object;

    iput-object p2, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->t0:Ljava/lang/Object;

    iget-object p2, p1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->v0:Ljava/lang/Object;

    iput-object p2, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->v0:Ljava/lang/Object;

    iget-object p2, p1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->w0:Ljava/lang/Object;

    iput-object p2, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->w0:Ljava/lang/Object;

    iget p2, p1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->v:I

    iput p2, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->v:I

    iget p2, p1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->w:I

    iput p2, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->w:I

    iget-short p2, p1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->A0:S

    iput-short p2, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->A0:S

    iget-short p2, p1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->q:S

    iput-short p2, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->q:S

    iget-short p2, p1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->p:S

    iput-short p2, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->p:S

    invoke-virtual {p0}, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->g()V

    iget-short p1, p1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->i:S

    iput-short p1, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->i:S

    return-object p0
.end method

.method public setUnionValues(Ljava/lang/String;Ljava/lang/String;S[Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;Lorg/apache/xerces/xs/XSObjectList;)Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;
    .locals 1

    iget-boolean v0, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->f:Z

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object v0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->a1:Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iput-object v0, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->m:Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->G0:Z

    iput-object p1, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->j:Ljava/lang/String;

    iput-object p2, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->k:Ljava/lang/String;

    iput-short p3, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->l:S

    iput-object p5, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->z0:Lorg/apache/xerces/xs/XSObjectList;

    const/4 p1, 0x3

    iput-short p1, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->n:S

    iput-object p4, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->h:[Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    const/16 p1, 0x1a

    iput-short p1, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->o:S

    const/16 p1, 0x10

    iput-short p1, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->p:S

    const/4 p1, 0x2

    iput-short p1, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->r:S

    invoke-virtual {p0}, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->g()V

    const/16 p1, 0x2d

    iput-short p1, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->i:S

    return-object p0
.end method

.method public final t()V
    .locals 5

    iget-short v0, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->n:S

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->m:Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-boolean v0, v0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->E0:Z

    iput-boolean v0, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->E0:Z

    goto :goto_1

    :cond_0
    const/4 v2, 0x2

    const/4 v3, 0x0

    if-ne v0, v2, :cond_1

    iput-boolean v3, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->E0:Z

    goto :goto_1

    :cond_1
    const/4 v2, 0x3

    if-ne v0, v2, :cond_4

    iget-object v0, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->h:[Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move v2, v3

    :goto_0
    array-length v4, v0

    if-lt v2, v4, :cond_2

    iput-boolean v1, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->E0:Z

    goto :goto_1

    :cond_2
    aget-object v4, v0, v2

    invoke-interface {v4}, Lorg/apache/xerces/xs/XSSimpleTypeDefinition;->getNumeric()Z

    move-result v4

    if-nez v4, :cond_3

    iput-boolean v3, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->E0:Z

    return-void

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p0, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->j:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final u()V
    .locals 8

    iget-short v0, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->n:S

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->m:Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    :goto_0
    iget-short v0, v0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->B0:S

    iput-short v0, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->B0:S

    goto/16 :goto_8

    :cond_0
    const/4 v2, 0x2

    const/4 v3, 0x0

    if-ne v0, v2, :cond_1

    :goto_1
    iput-short v3, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->B0:S

    goto/16 :goto_8

    :cond_1
    const/4 v2, 0x3

    if-ne v0, v2, :cond_d

    iget-object v0, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->h:[Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    array-length v2, v0

    if-nez v2, :cond_2

    iput-short v1, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->B0:S

    return-void

    :cond_2
    aget-object v0, v0, v3

    iget-short v0, v0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->o:S

    invoke-virtual {p0, v0}, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->l(S)S

    move-result v0

    if-eqz v0, :cond_3

    move v2, v1

    goto :goto_2

    :cond_3
    move v2, v3

    :goto_2
    iget-object v4, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->h:[Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    aget-object v4, v4, v3

    iget-short v4, v4, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->B0:S

    if-nez v4, :cond_4

    move v4, v1

    goto :goto_3

    :cond_4
    move v4, v3

    :goto_3
    move v5, v1

    :goto_4
    iget-object v6, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->h:[Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    array-length v7, v6

    if-ge v5, v7, :cond_a

    if-nez v2, :cond_5

    if-nez v4, :cond_5

    goto :goto_7

    :cond_5
    if-eqz v2, :cond_7

    aget-object v2, v6, v5

    iget-short v2, v2, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->o:S

    invoke-virtual {p0, v2}, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->l(S)S

    move-result v2

    if-ne v0, v2, :cond_6

    move v2, v1

    goto :goto_5

    :cond_6
    move v2, v3

    :cond_7
    :goto_5
    if-eqz v4, :cond_9

    iget-object v4, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->h:[Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    aget-object v4, v4, v5

    iget-short v4, v4, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->B0:S

    if-nez v4, :cond_8

    move v4, v1

    goto :goto_6

    :cond_8
    move v4, v3

    :cond_9
    :goto_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_a
    :goto_7
    if-eqz v2, :cond_b

    aget-object v0, v6, v3

    goto :goto_0

    :cond_b
    if-eqz v4, :cond_c

    goto :goto_1

    :cond_c
    iput-short v1, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->B0:S

    :cond_d
    :goto_8
    return-void
.end method

.method public final v()Z
    .locals 1

    iget-object p0, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->m:Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-short p0, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->o:S

    const/16 v0, 0x9

    if-eq p0, v0, :cond_1

    const/16 v0, 0xa

    if-eq p0, v0, :cond_1

    const/16 v0, 0xb

    if-eq p0, v0, :cond_1

    const/16 v0, 0xc

    if-eq p0, v0, :cond_1

    const/16 v0, 0xd

    if-eq p0, v0, :cond_1

    const/16 v0, 0xe

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public validate(Ljava/lang/Object;Lorg/apache/xerces/impl/dv/ValidationContext;Lorg/apache/xerces/impl/dv/ValidatedInfo;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/impl/dv/InvalidDatatypeValueException;
        }
    .end annotation

    .line 1
    if-nez p2, :cond_0

    sget-object p2, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->Z0:Lorg/apache/xerces/impl/dv/ValidationContext;

    :cond_0
    if-nez p3, :cond_1

    new-instance p3, Lorg/apache/xerces/impl/dv/ValidatedInfo;

    invoke-direct {p3}, Lorg/apache/xerces/impl/dv/ValidatedInfo;-><init>()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p3, Lorg/apache/xerces/impl/dv/ValidatedInfo;->memberType:Lorg/apache/xerces/impl/dv/XSSimpleType;

    :goto_0
    if-eqz p2, :cond_3

    invoke-interface {p2}, Lorg/apache/xerces/impl/dv/ValidationContext;->needToNormalize()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v0, 0x1

    :goto_2
    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->k(Ljava/lang/Object;Lorg/apache/xerces/impl/dv/ValidationContext;Lorg/apache/xerces/impl/dv/ValidatedInfo;Z)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p2, p3}, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->validate(Lorg/apache/xerces/impl/dv/ValidationContext;Lorg/apache/xerces/impl/dv/ValidatedInfo;)V

    return-object p1
.end method

.method public validate(Ljava/lang/String;Lorg/apache/xerces/impl/dv/ValidationContext;Lorg/apache/xerces/impl/dv/ValidatedInfo;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/impl/dv/InvalidDatatypeValueException;
        }
    .end annotation

    .line 2
    if-nez p2, :cond_0

    sget-object p2, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->Z0:Lorg/apache/xerces/impl/dv/ValidationContext;

    :cond_0
    if-nez p3, :cond_1

    new-instance p3, Lorg/apache/xerces/impl/dv/ValidatedInfo;

    invoke-direct {p3}, Lorg/apache/xerces/impl/dv/ValidatedInfo;-><init>()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p3, Lorg/apache/xerces/impl/dv/ValidatedInfo;->memberType:Lorg/apache/xerces/impl/dv/XSSimpleType;

    :goto_0
    if-eqz p2, :cond_3

    invoke-interface {p2}, Lorg/apache/xerces/impl/dv/ValidationContext;->needToNormalize()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v0, 0x1

    :goto_2
    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->k(Ljava/lang/Object;Lorg/apache/xerces/impl/dv/ValidationContext;Lorg/apache/xerces/impl/dv/ValidatedInfo;Z)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p2, p3}, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->validate(Lorg/apache/xerces/impl/dv/ValidationContext;Lorg/apache/xerces/impl/dv/ValidatedInfo;)V

    return-object p1
.end method

.method public validate(Lorg/apache/xerces/impl/dv/ValidationContext;Lorg/apache/xerces/impl/dv/ValidatedInfo;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/impl/dv/InvalidDatatypeValueException;
        }
    .end annotation

    .line 3
    if-nez p1, :cond_0

    sget-object p1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->Z0:Lorg/apache/xerces/impl/dv/ValidationContext;

    :cond_0
    invoke-interface {p1}, Lorg/apache/xerces/impl/dv/ValidationContext;->needFacetChecking()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-short v0, p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->p:S

    if-eqz v0, :cond_1

    const/16 v1, 0x10

    if-eq v0, v1, :cond_1

    invoke-virtual {p0, p2}, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->i(Lorg/apache/xerces/impl/dv/ValidatedInfo;)V

    :cond_1
    invoke-interface {p1}, Lorg/apache/xerces/impl/dv/ValidationContext;->needExtraChecking()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1, p2}, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->h(Lorg/apache/xerces/impl/dv/ValidationContext;Lorg/apache/xerces/impl/dv/ValidatedInfo;)V

    :cond_2
    return-void
.end method

.method public validateWithInfo(Ljava/lang/String;Lorg/apache/xerces/impl/dv/ValidationContext;Lorg/apache/xerces/impl/dv/ValidatedInfo;)Lorg/apache/xerces/impl/dv/ValidatedInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/impl/dv/InvalidDatatypeValueException;
        }
    .end annotation

    if-nez p2, :cond_0

    sget-object p2, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->Z0:Lorg/apache/xerces/impl/dv/ValidationContext;

    :cond_0
    if-nez p3, :cond_1

    new-instance p3, Lorg/apache/xerces/impl/dv/ValidatedInfo;

    invoke-direct {p3}, Lorg/apache/xerces/impl/dv/ValidatedInfo;-><init>()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p3, Lorg/apache/xerces/impl/dv/ValidatedInfo;->memberType:Lorg/apache/xerces/impl/dv/XSSimpleType;

    :goto_0
    if-eqz p2, :cond_3

    invoke-interface {p2}, Lorg/apache/xerces/impl/dv/ValidationContext;->needToNormalize()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v0, 0x1

    :goto_2
    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->k(Ljava/lang/Object;Lorg/apache/xerces/impl/dv/ValidationContext;Lorg/apache/xerces/impl/dv/ValidatedInfo;Z)Ljava/lang/Object;

    invoke-virtual {p0, p2, p3}, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->validate(Lorg/apache/xerces/impl/dv/ValidationContext;Lorg/apache/xerces/impl/dv/ValidatedInfo;)V

    return-object p3
.end method

.method public final w(S)Ljava/lang/String;
    .locals 0

    sget-object p0, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->R0:[Ljava/lang/String;

    aget-object p0, p0, p1

    return-object p0
.end method
