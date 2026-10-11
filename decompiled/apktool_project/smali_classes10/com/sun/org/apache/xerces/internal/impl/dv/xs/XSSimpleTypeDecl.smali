.class public Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sun/org/apache/xerces/internal/impl/dv/XSSimpleType;
.implements Lorg/w3c/dom/TypeInfo;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl$XSMVFacetImpl;,
        Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl$XSFacetImpl;,
        Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl$ValidationContextImpl;
    }
.end annotation


# static fields
.field public static final ANYATOMICTYPE_DT:S = 0x31s

.field static final ANY_TYPE:Ljava/lang/String; = "anyType"

.field public static final DAYTIMEDURATION_DT:S = 0x2fs

.field static final DERIVATION_ANY:I = 0x0

.field static final DERIVATION_EXTENSION:I = 0x2

.field static final DERIVATION_LIST:I = 0x8

.field static final DERIVATION_RESTRICTION:I = 0x1

.field static final DERIVATION_UNION:I = 0x4

.field static final DV_ANYATOMICTYPE:S = 0x1ds

.field static final DV_ANYSIMPLETYPE:S = 0x0s

.field static final DV_ANYURI:S = 0x11s

.field static final DV_BASE64BINARY:S = 0x10s

.field static final DV_BOOLEAN:S = 0x2s

.field static final DV_DATE:S = 0x9s

.field static final DV_DATETIME:S = 0x7s

.field static final DV_DAYTIMEDURATION:S = 0x1cs

.field static final DV_DECIMAL:S = 0x3s

.field static final DV_DOUBLE:S = 0x5s

.field static final DV_DURATION:S = 0x6s

.field static final DV_ENTITY:S = 0x17s

.field static final DV_FLOAT:S = 0x4s

.field static final DV_GDAY:S = 0xds

.field static final DV_GMONTH:S = 0xes

.field static final DV_GMONTHDAY:S = 0xcs

.field static final DV_GYEAR:S = 0xbs

.field static final DV_GYEARMONTH:S = 0xas

.field static final DV_HEXBINARY:S = 0xfs

.field static final DV_ID:S = 0x15s

.field static final DV_IDREF:S = 0x16s

.field static final DV_INTEGER:S = 0x18s

.field static final DV_LIST:S = 0x19s

.field static final DV_NOTATION:S = 0x14s

.field static final DV_PRECISIONDECIMAL:S = 0x13s

.field static final DV_QNAME:S = 0x12s

.field static final DV_STRING:S = 0x1s

.field static final DV_TIME:S = 0x8s

.field static final DV_UNION:S = 0x1as

.field static final DV_YEARMONTHDURATION:S = 0x1bs

.field static final NORMALIZE_FULL:S = 0x2s

.field static final NORMALIZE_NONE:S = 0x0s

.field static final NORMALIZE_TRIM:S = 0x1s

.field public static final PRECISIONDECIMAL_DT:S = 0x30s

.field static final SPECIAL_PATTERN_NAME:S = 0x2s

.field static final SPECIAL_PATTERN_NCNAME:S = 0x3s

.field static final SPECIAL_PATTERN_NMTOKEN:S = 0x1s

.field static final SPECIAL_PATTERN_NONE:S = 0x0s

.field static final SPECIAL_PATTERN_STRING:[Ljava/lang/String;

.field static final URI_SCHEMAFORSCHEMA:Ljava/lang/String; = "http://www.w3.org/2001/XMLSchema"

.field static final WS_FACET_STRING:[Ljava/lang/String;

.field public static final YEARMONTHDURATION_DT:S = 0x2es

.field static final fAnyAtomicType:Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;

.field static final fAnySimpleType:Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;

.field static final fDVNormalizeType:[S

.field static final fDVs:[Lcom/sun/org/apache/xerces/internal/impl/dv/xs/TypeValidator;

.field static final fDummyContext:Lcom/sun/org/apache/xerces/internal/impl/dv/ValidationContext;

.field static final fEmptyContext:Lcom/sun/org/apache/xerces/internal/impl/dv/ValidationContext;


# instance fields
.field public enumerationAnnotations:Lcom/sun/org/apache/xerces/internal/xs/XSObjectList;

.field private fActualEnumeration:Lcom/sun/org/apache/xerces/internal/xs/datatypes/ObjectList;

.field private fAnnotations:Lcom/sun/org/apache/xerces/internal/xs/XSObjectList;

.field private fAnonymous:Z

.field private fBase:Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;

.field private fBounded:Z

.field private fBuiltInKind:S

.field private fEnumeration:Ljava/util/Vector;

.field private fEnumerationItemType:[Lcom/sun/org/apache/xerces/internal/xs/ShortList;

.field private fEnumerationItemTypeList:Lcom/sun/org/apache/xerces/internal/xs/datatypes/ObjectList;

.field private fEnumerationType:[S

.field private fEnumerationTypeList:Lcom/sun/org/apache/xerces/internal/xs/ShortList;

.field private fFacets:Lcom/sun/org/apache/xerces/internal/impl/xs/util/XSObjectListImpl;

.field private fFacetsDefined:S

.field private fFinalSet:S

.field private fFinite:Z

.field private fFixedFacet:S

.field private fFractionDigits:I

.field private fIsImmutable:Z

.field private fItemType:Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;

.field private fLength:I

.field private fLexicalEnumeration:Lcom/sun/org/apache/xerces/internal/xs/StringList;

.field private fLexicalPattern:Lcom/sun/org/apache/xerces/internal/xs/StringList;

.field private fMaxExclusive:Ljava/lang/Object;

.field private fMaxInclusive:Ljava/lang/Object;

.field private fMaxLength:I

.field private fMemberTypes:[Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;

.field private fMinExclusive:Ljava/lang/Object;

.field private fMinInclusive:Ljava/lang/Object;

.field private fMinLength:I

.field private fMultiValueFacets:Lcom/sun/org/apache/xerces/internal/impl/xs/util/XSObjectListImpl;

.field private fNumeric:Z

.field private fOrdered:S

.field private fPattern:Ljava/util/Vector;

.field private fPatternStr:Ljava/util/Vector;

.field private fPatternType:S

.field private fTargetNamespace:Ljava/lang/String;

.field private fTotalDigits:I

.field private fTypeName:Ljava/lang/String;

.field private fValidationDV:S

.field private fVariety:S

.field private fWhiteSpace:S

.field public fractionDigitsAnnotation:Lcom/sun/org/apache/xerces/internal/xs/XSAnnotation;

.field public lengthAnnotation:Lcom/sun/org/apache/xerces/internal/xs/XSAnnotation;

.field public maxExclusiveAnnotation:Lcom/sun/org/apache/xerces/internal/xs/XSAnnotation;

.field public maxInclusiveAnnotation:Lcom/sun/org/apache/xerces/internal/xs/XSAnnotation;

.field public maxLengthAnnotation:Lcom/sun/org/apache/xerces/internal/xs/XSAnnotation;

.field public minExclusiveAnnotation:Lcom/sun/org/apache/xerces/internal/xs/XSAnnotation;

.field public minInclusiveAnnotation:Lcom/sun/org/apache/xerces/internal/xs/XSAnnotation;

.field public minLengthAnnotation:Lcom/sun/org/apache/xerces/internal/xs/XSAnnotation;

.field public patternAnnotations:Lcom/sun/org/apache/xerces/internal/impl/xs/util/XSObjectListImpl;

.field public totalDigitsAnnotation:Lcom/sun/org/apache/xerces/internal/xs/XSAnnotation;

.field public whiteSpaceAnnotation:Lcom/sun/org/apache/xerces/internal/xs/XSAnnotation;


# direct methods
.method public static constructor <clinit>()V
    .locals 12

    const/16 v0, 0x1e

    new-array v1, v0, [Lcom/sun/org/apache/xerces/internal/impl/dv/xs/TypeValidator;

    new-instance v2, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AnySimpleDV;

    invoke-direct {v2}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AnySimpleDV;-><init>()V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/StringDV;

    invoke-direct {v2}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/StringDV;-><init>()V

    const/4 v3, 0x1

    aput-object v2, v1, v3

    new-instance v2, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/BooleanDV;

    invoke-direct {v2}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/BooleanDV;-><init>()V

    const/4 v3, 0x2

    aput-object v2, v1, v3

    new-instance v2, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/DecimalDV;

    invoke-direct {v2}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/DecimalDV;-><init>()V

    const/4 v3, 0x3

    aput-object v2, v1, v3

    new-instance v2, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/FloatDV;

    invoke-direct {v2}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/FloatDV;-><init>()V

    const/4 v3, 0x4

    aput-object v2, v1, v3

    new-instance v2, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/DoubleDV;

    invoke-direct {v2}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/DoubleDV;-><init>()V

    const/4 v3, 0x5

    aput-object v2, v1, v3

    new-instance v2, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/DurationDV;

    invoke-direct {v2}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/DurationDV;-><init>()V

    const/4 v3, 0x6

    aput-object v2, v1, v3

    new-instance v2, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/DateTimeDV;

    invoke-direct {v2}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/DateTimeDV;-><init>()V

    const/4 v3, 0x7

    aput-object v2, v1, v3

    new-instance v2, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/TimeDV;

    invoke-direct {v2}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/TimeDV;-><init>()V

    const/16 v3, 0x8

    aput-object v2, v1, v3

    new-instance v2, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/DateDV;

    invoke-direct {v2}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/DateDV;-><init>()V

    const/16 v3, 0x9

    aput-object v2, v1, v3

    new-instance v2, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/YearMonthDV;

    invoke-direct {v2}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/YearMonthDV;-><init>()V

    const/16 v3, 0xa

    aput-object v2, v1, v3

    new-instance v2, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/YearDV;

    invoke-direct {v2}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/YearDV;-><init>()V

    const/16 v3, 0xb

    aput-object v2, v1, v3

    new-instance v2, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/MonthDayDV;

    invoke-direct {v2}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/MonthDayDV;-><init>()V

    const/16 v3, 0xc

    aput-object v2, v1, v3

    new-instance v2, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/DayDV;

    invoke-direct {v2}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/DayDV;-><init>()V

    const/16 v3, 0xd

    aput-object v2, v1, v3

    new-instance v2, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/MonthDV;

    invoke-direct {v2}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/MonthDV;-><init>()V

    const/16 v3, 0xe

    aput-object v2, v1, v3

    new-instance v2, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/HexBinaryDV;

    invoke-direct {v2}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/HexBinaryDV;-><init>()V

    const/16 v3, 0xf

    aput-object v2, v1, v3

    new-instance v2, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/Base64BinaryDV;

    invoke-direct {v2}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/Base64BinaryDV;-><init>()V

    const/16 v3, 0x10

    aput-object v2, v1, v3

    new-instance v2, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AnyURIDV;

    invoke-direct {v2}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AnyURIDV;-><init>()V

    const/16 v3, 0x11

    aput-object v2, v1, v3

    new-instance v2, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/QNameDV;

    invoke-direct {v2}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/QNameDV;-><init>()V

    const/16 v3, 0x12

    aput-object v2, v1, v3

    new-instance v2, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/PrecisionDecimalDV;

    invoke-direct {v2}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/PrecisionDecimalDV;-><init>()V

    const/16 v3, 0x13

    aput-object v2, v1, v3

    new-instance v2, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/QNameDV;

    invoke-direct {v2}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/QNameDV;-><init>()V

    const/16 v3, 0x14

    aput-object v2, v1, v3

    new-instance v2, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/IDDV;

    invoke-direct {v2}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/IDDV;-><init>()V

    const/16 v3, 0x15

    aput-object v2, v1, v3

    new-instance v2, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/IDREFDV;

    invoke-direct {v2}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/IDREFDV;-><init>()V

    const/16 v3, 0x16

    aput-object v2, v1, v3

    new-instance v2, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/EntityDV;

    invoke-direct {v2}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/EntityDV;-><init>()V

    const/16 v3, 0x17

    aput-object v2, v1, v3

    new-instance v2, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/IntegerDV;

    invoke-direct {v2}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/IntegerDV;-><init>()V

    const/16 v3, 0x18

    aput-object v2, v1, v3

    new-instance v2, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/ListDV;

    invoke-direct {v2}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/ListDV;-><init>()V

    const/16 v3, 0x19

    aput-object v2, v1, v3

    new-instance v2, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/UnionDV;

    invoke-direct {v2}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/UnionDV;-><init>()V

    const/16 v3, 0x1a

    aput-object v2, v1, v3

    new-instance v2, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/YearMonthDurationDV;

    invoke-direct {v2}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/YearMonthDurationDV;-><init>()V

    const/16 v3, 0x1b

    aput-object v2, v1, v3

    new-instance v2, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/DayTimeDurationDV;

    invoke-direct {v2}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/DayTimeDurationDV;-><init>()V

    const/16 v3, 0x1c

    aput-object v2, v1, v3

    new-instance v2, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AnyAtomicDV;

    invoke-direct {v2}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/AnyAtomicDV;-><init>()V

    const/16 v3, 0x1d

    aput-object v2, v1, v3

    sput-object v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fDVs:[Lcom/sun/org/apache/xerces/internal/impl/dv/xs/TypeValidator;

    new-array v0, v0, [S

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fDVNormalizeType:[S

    const-string v0, "Name"

    const-string v1, "NCName"

    const-string v2, "NONE"

    const-string v3, "NMTOKEN"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->SPECIAL_PATTERN_STRING:[Ljava/lang/String;

    const-string v0, "replace"

    const-string v1, "collapse"

    const-string v2, "preserve"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->WS_FACET_STRING:[Ljava/lang/String;

    new-instance v0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl$1;

    invoke-direct {v0}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl$1;-><init>()V

    sput-object v0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fEmptyContext:Lcom/sun/org/apache/xerces/internal/impl/dv/ValidationContext;

    new-instance v0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;

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

    invoke-direct/range {v1 .. v10}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;-><init>(Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;SSZZZZS)V

    sput-object v0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fAnySimpleType:Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;

    new-instance v11, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;

    const-string v3, "anyAtomicType"

    const/16 v4, 0x1d

    const/16 v10, 0x31

    move-object v1, v11

    move-object v2, v0

    invoke-direct/range {v1 .. v10}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;-><init>(Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;SSZZZZS)V

    sput-object v11, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fAnyAtomicType:Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;

    new-instance v0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl$4;

    invoke-direct {v0}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl$4;-><init>()V

    sput-object v0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fDummyContext:Lcom/sun/org/apache/xerces/internal/impl/dv/ValidationContext;

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

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fIsImmutable:Z

    .line 3
    iput-short v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fFinalSet:S

    const/4 v1, -0x1

    .line 4
    iput-short v1, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fVariety:S

    .line 5
    iput-short v1, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    .line 6
    iput-short v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    .line 7
    iput-short v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    .line 8
    iput-short v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fWhiteSpace:S

    .line 9
    iput v1, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fLength:I

    .line 10
    iput v1, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fMinLength:I

    .line 11
    iput v1, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fMaxLength:I

    .line 12
    iput v1, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fTotalDigits:I

    .line 13
    iput v1, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fFractionDigits:I

    const/4 v1, 0x0

    .line 14
    iput-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fAnnotations:Lcom/sun/org/apache/xerces/internal/xs/XSObjectList;

    .line 15
    iput-short v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fPatternType:S

    .line 16
    iput-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fAnonymous:Z

    return-void
.end method

.method public constructor <init>(Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;Ljava/lang/String;SZLcom/sun/org/apache/xerces/internal/xs/XSObjectList;)V
    .locals 2

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 48
    iput-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fIsImmutable:Z

    const/4 v1, -0x1

    .line 49
    iput-short v1, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fVariety:S

    .line 50
    iput-short v1, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    .line 51
    iput-short v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    .line 52
    iput-short v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    .line 53
    iput-short v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fWhiteSpace:S

    .line 54
    iput v1, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fLength:I

    .line 55
    iput v1, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fMinLength:I

    .line 56
    iput v1, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fMaxLength:I

    .line 57
    iput v1, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fTotalDigits:I

    .line 58
    iput v1, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fFractionDigits:I

    .line 59
    iput-short v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fPatternType:S

    .line 60
    iput-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fAnonymous:Z

    .line 61
    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;

    .line 62
    iput-object p2, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    .line 63
    iput-object p3, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fTargetNamespace:Ljava/lang/String;

    .line 64
    iput-short p4, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fFinalSet:S

    .line 65
    iput-object p6, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fAnnotations:Lcom/sun/org/apache/xerces/internal/xs/XSObjectList;

    .line 66
    iget-short p2, p1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fVariety:S

    iput-short p2, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fVariety:S

    .line 67
    iget-short p3, p1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    iput-short p3, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    const/4 p3, 0x2

    if-eq p2, p3, :cond_1

    const/4 p3, 0x3

    if-eq p2, p3, :cond_0

    goto :goto_0

    .line 68
    :cond_0
    iget-object p2, p1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fMemberTypes:[Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;

    iput-object p2, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fMemberTypes:[Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;

    goto :goto_0

    .line 69
    :cond_1
    iget-object p2, p1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fItemType:Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;

    iput-object p2, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fItemType:Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;

    .line 70
    :goto_0
    iget p2, p1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fLength:I

    iput p2, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fLength:I

    .line 71
    iget p2, p1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fMinLength:I

    iput p2, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fMinLength:I

    .line 72
    iget p2, p1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fMaxLength:I

    iput p2, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fMaxLength:I

    .line 73
    iget-object p2, p1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fPattern:Ljava/util/Vector;

    iput-object p2, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fPattern:Ljava/util/Vector;

    .line 74
    iget-object p2, p1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fPatternStr:Ljava/util/Vector;

    iput-object p2, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fPatternStr:Ljava/util/Vector;

    .line 75
    iget-object p2, p1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fEnumeration:Ljava/util/Vector;

    iput-object p2, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fEnumeration:Ljava/util/Vector;

    .line 76
    iget-object p2, p1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fEnumerationType:[S

    iput-object p2, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fEnumerationType:[S

    .line 77
    iget-object p2, p1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fEnumerationItemType:[Lcom/sun/org/apache/xerces/internal/xs/ShortList;

    iput-object p2, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fEnumerationItemType:[Lcom/sun/org/apache/xerces/internal/xs/ShortList;

    .line 78
    iget-short p2, p1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fWhiteSpace:S

    iput-short p2, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fWhiteSpace:S

    .line 79
    iget-object p2, p1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fMaxExclusive:Ljava/lang/Object;

    iput-object p2, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fMaxExclusive:Ljava/lang/Object;

    .line 80
    iget-object p2, p1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fMaxInclusive:Ljava/lang/Object;

    iput-object p2, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fMaxInclusive:Ljava/lang/Object;

    .line 81
    iget-object p2, p1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fMinExclusive:Ljava/lang/Object;

    iput-object p2, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fMinExclusive:Ljava/lang/Object;

    .line 82
    iget-object p2, p1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fMinInclusive:Ljava/lang/Object;

    iput-object p2, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fMinInclusive:Ljava/lang/Object;

    .line 83
    iget p2, p1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fTotalDigits:I

    iput p2, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fTotalDigits:I

    .line 84
    iget p2, p1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fFractionDigits:I

    iput p2, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fFractionDigits:I

    .line 85
    iget-short p2, p1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fPatternType:S

    iput-short p2, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fPatternType:S

    .line 86
    iget-short p2, p1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    iput-short p2, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    .line 87
    iget-short p2, p1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    iput-short p2, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    .line 88
    invoke-direct {p0}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->caclFundamentalFacets()V

    .line 89
    iput-boolean p5, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fIsImmutable:Z

    .line 90
    iget-short p1, p1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fBuiltInKind:S

    iput-short p1, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fBuiltInKind:S

    return-void
.end method

.method public constructor <init>(Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;Ljava/lang/String;SZLcom/sun/org/apache/xerces/internal/xs/XSObjectList;S)V
    .locals 0

    .line 45
    invoke-direct/range {p0 .. p6}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;-><init>(Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;Ljava/lang/String;SZLcom/sun/org/apache/xerces/internal/xs/XSObjectList;)V

    .line 46
    iput-short p7, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fBuiltInKind:S

    return-void
.end method

.method public constructor <init>(Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;SSZZZZS)V
    .locals 2

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 18
    iput-short v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fFinalSet:S

    .line 19
    iput-short v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    .line 20
    iput-short v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fWhiteSpace:S

    const/4 v1, -0x1

    .line 21
    iput v1, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fLength:I

    .line 22
    iput v1, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fMinLength:I

    .line 23
    iput v1, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fMaxLength:I

    .line 24
    iput v1, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fTotalDigits:I

    .line 25
    iput v1, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fFractionDigits:I

    const/4 v1, 0x0

    .line 26
    iput-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fAnnotations:Lcom/sun/org/apache/xerces/internal/xs/XSObjectList;

    .line 27
    iput-short v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fPatternType:S

    .line 28
    iput-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fAnonymous:Z

    .line 29
    iput-boolean p8, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fIsImmutable:Z

    .line 30
    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;

    .line 31
    iput-object p2, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    const-string p1, "http://www.w3.org/2001/XMLSchema"

    .line 32
    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fTargetNamespace:Ljava/lang/String;

    const/4 p1, 0x1

    .line 33
    iput-short p1, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fVariety:S

    .line 34
    iput-short p3, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    const/16 p2, 0x10

    .line 35
    iput-short p2, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    if-ne p3, p1, :cond_0

    .line 36
    iput-short v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fWhiteSpace:S

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    .line 37
    iput-short p1, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fWhiteSpace:S

    .line 38
    iput-short p2, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    .line 39
    :goto_0
    iput-short p4, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fOrdered:S

    .line 40
    iput-boolean p5, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fBounded:Z

    .line 41
    iput-boolean p6, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fFinite:Z

    .line 42
    iput-boolean p7, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fNumeric:Z

    .line 43
    iput-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fAnnotations:Lcom/sun/org/apache/xerces/internal/xs/XSObjectList;

    .line 44
    iput-short p9, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fBuiltInKind:S

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;SLcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;ZLcom/sun/org/apache/xerces/internal/xs/XSObjectList;)V
    .locals 2

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 92
    iput-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fIsImmutable:Z

    const/4 v1, -0x1

    .line 93
    iput v1, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fLength:I

    .line 94
    iput v1, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fMinLength:I

    .line 95
    iput v1, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fMaxLength:I

    .line 96
    iput v1, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fTotalDigits:I

    .line 97
    iput v1, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fFractionDigits:I

    .line 98
    iput-short v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fPatternType:S

    .line 99
    iput-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fAnonymous:Z

    .line 100
    sget-object v0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fAnySimpleType:Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;

    .line 101
    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    .line 102
    iput-object p2, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fTargetNamespace:Ljava/lang/String;

    .line 103
    iput-short p3, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fFinalSet:S

    .line 104
    iput-object p6, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fAnnotations:Lcom/sun/org/apache/xerces/internal/xs/XSObjectList;

    const/4 p1, 0x2

    .line 105
    iput-short p1, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fVariety:S

    .line 106
    iput-object p4, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fItemType:Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;

    const/16 p2, 0x19

    .line 107
    iput-short p2, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    const/16 p2, 0x10

    .line 108
    iput-short p2, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    .line 109
    iput-short p2, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    .line 110
    iput-short p1, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fWhiteSpace:S

    .line 111
    invoke-direct {p0}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->caclFundamentalFacets()V

    .line 112
    iput-boolean p5, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fIsImmutable:Z

    const/16 p1, 0x2c

    .line 113
    iput-short p1, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fBuiltInKind:S

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;S[Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;Lcom/sun/org/apache/xerces/internal/xs/XSObjectList;)V
    .locals 2

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 115
    iput-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fIsImmutable:Z

    .line 116
    iput-short v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    const/4 v1, -0x1

    .line 117
    iput v1, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fLength:I

    .line 118
    iput v1, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fMinLength:I

    .line 119
    iput v1, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fMaxLength:I

    .line 120
    iput v1, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fTotalDigits:I

    .line 121
    iput v1, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fFractionDigits:I

    .line 122
    iput-short v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fPatternType:S

    .line 123
    iput-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fAnonymous:Z

    .line 124
    sget-object v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fAnySimpleType:Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;

    iput-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;

    .line 125
    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    .line 126
    iput-object p2, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fTargetNamespace:Ljava/lang/String;

    .line 127
    iput-short p3, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fFinalSet:S

    .line 128
    iput-object p5, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fAnnotations:Lcom/sun/org/apache/xerces/internal/xs/XSObjectList;

    const/4 p1, 0x3

    .line 129
    iput-short p1, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fVariety:S

    .line 130
    iput-object p4, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fMemberTypes:[Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;

    const/16 p1, 0x1a

    .line 131
    iput-short p1, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    const/16 p1, 0x10

    .line 132
    iput-short p1, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    const/4 p1, 0x2

    .line 133
    iput-short p1, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fWhiteSpace:S

    .line 134
    invoke-direct {p0}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->caclFundamentalFacets()V

    .line 135
    iput-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fIsImmutable:Z

    const/16 p1, 0x2d

    .line 136
    iput-short p1, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fBuiltInKind:S

    return-void
.end method

.method public static synthetic access$000(Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;)Ljava/util/Vector;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fEnumeration:Ljava/util/Vector;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;)[Lcom/sun/org/apache/xerces/internal/xs/ShortList;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fEnumerationItemType:[Lcom/sun/org/apache/xerces/internal/xs/ShortList;

    return-object p0
.end method

.method private caclFundamentalFacets()V
    .locals 0

    invoke-direct {p0}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->setOrdered()V

    invoke-direct {p0}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->setNumeric()V

    invoke-direct {p0}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->setBounded()V

    invoke-direct {p0}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->setCardinality()V

    return-void
.end method

.method private checkExtraRules(Lcom/sun/org/apache/xerces/internal/impl/dv/ValidationContext;Lcom/sun/org/apache/xerces/internal/impl/dv/ValidatedInfo;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/impl/dv/InvalidDatatypeValueException;
        }
    .end annotation

    iget-object v0, p2, Lcom/sun/org/apache/xerces/internal/impl/dv/ValidatedInfo;->actualValue:Ljava/lang/Object;

    iget-short v1, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fVariety:S

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    sget-object p2, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fDVs:[Lcom/sun/org/apache/xerces/internal/impl/dv/xs/TypeValidator;

    iget-short p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    aget-object p0, p2, p0

    invoke-virtual {p0, v0, p1}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/TypeValidator;->checkExtraRules(Ljava/lang/Object;Lcom/sun/org/apache/xerces/internal/impl/dv/ValidationContext;)V

    goto :goto_3

    :cond_0
    const/4 v3, 0x2

    if-ne v1, v3, :cond_4

    check-cast v0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/ListDV$ListData;

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/ListDV$ListData;->getLength()I

    move-result v1

    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fItemType:Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v3, v3, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fVariety:S

    const/4 v4, 0x3

    if-ne v3, v4, :cond_2

    iget-object v3, p2, Lcom/sun/org/apache/xerces/internal/impl/dv/ValidatedInfo;->memberTypes:[Lcom/sun/org/apache/xerces/internal/impl/dv/XSSimpleType;

    check-cast v3, [Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;

    iget-object v4, p2, Lcom/sun/org/apache/xerces/internal/impl/dv/ValidatedInfo;->memberType:Lcom/sun/org/apache/xerces/internal/impl/dv/XSSimpleType;

    sub-int/2addr v1, v2

    :goto_0
    if-ltz v1, :cond_1

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/ListDV$ListData;->item(I)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p2, Lcom/sun/org/apache/xerces/internal/impl/dv/ValidatedInfo;->actualValue:Ljava/lang/Object;

    aget-object v2, v3, v1

    iput-object v2, p2, Lcom/sun/org/apache/xerces/internal/impl/dv/ValidatedInfo;->memberType:Lcom/sun/org/apache/xerces/internal/impl/dv/XSSimpleType;

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fItemType:Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;

    invoke-direct {v2, p1, p2}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->checkExtraRules(Lcom/sun/org/apache/xerces/internal/impl/dv/ValidationContext;Lcom/sun/org/apache/xerces/internal/impl/dv/ValidatedInfo;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    iput-object v4, p2, Lcom/sun/org/apache/xerces/internal/impl/dv/ValidatedInfo;->memberType:Lcom/sun/org/apache/xerces/internal/impl/dv/XSSimpleType;

    goto :goto_2

    :cond_2
    sub-int/2addr v1, v2

    :goto_1
    if-ltz v1, :cond_3

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/ListDV$ListData;->item(I)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p2, Lcom/sun/org/apache/xerces/internal/impl/dv/ValidatedInfo;->actualValue:Ljava/lang/Object;

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fItemType:Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;

    invoke-direct {v2, p1, p2}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->checkExtraRules(Lcom/sun/org/apache/xerces/internal/impl/dv/ValidationContext;Lcom/sun/org/apache/xerces/internal/impl/dv/ValidatedInfo;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_3
    :goto_2
    iput-object v0, p2, Lcom/sun/org/apache/xerces/internal/impl/dv/ValidatedInfo;->actualValue:Ljava/lang/Object;

    goto :goto_3

    :cond_4
    iget-object p0, p2, Lcom/sun/org/apache/xerces/internal/impl/dv/ValidatedInfo;->memberType:Lcom/sun/org/apache/xerces/internal/impl/dv/XSSimpleType;

    check-cast p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;

    invoke-direct {p0, p1, p2}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->checkExtraRules(Lcom/sun/org/apache/xerces/internal/impl/dv/ValidationContext;Lcom/sun/org/apache/xerces/internal/impl/dv/ValidatedInfo;)V

    :goto_3
    return-void
.end method

.method private checkFacets(Lcom/sun/org/apache/xerces/internal/impl/dv/ValidatedInfo;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/impl/dv/InvalidDatatypeValueException;
        }
    .end annotation

    iget-object v0, p1, Lcom/sun/org/apache/xerces/internal/impl/dv/ValidatedInfo;->actualValue:Ljava/lang/Object;

    iget-object v1, p1, Lcom/sun/org/apache/xerces/internal/impl/dv/ValidatedInfo;->normalizedValue:Ljava/lang/String;

    iget-short v2, p1, Lcom/sun/org/apache/xerces/internal/impl/dv/ValidatedInfo;->actualValueType:S

    iget-object p1, p1, Lcom/sun/org/apache/xerces/internal/impl/dv/ValidatedInfo;->itemValueTypes:Lcom/sun/org/apache/xerces/internal/xs/ShortList;

    iget-short v3, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    const/16 v4, 0x12

    const/4 v5, 0x1

    if-eq v3, v4, :cond_5

    const/16 v4, 0x14

    if-eq v3, v4, :cond_5

    sget-object v4, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fDVs:[Lcom/sun/org/apache/xerces/internal/impl/dv/xs/TypeValidator;

    aget-object v3, v4, v3

    invoke-virtual {v3, v0}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/TypeValidator;->getDataLength(Ljava/lang/Object;)I

    move-result v3

    iget-short v4, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit8 v6, v4, 0x4

    if-eqz v6, :cond_1

    iget v6, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fMaxLength:I

    if-gt v3, v6, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/sun/org/apache/xerces/internal/impl/dv/InvalidDatatypeValueException;

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iget v2, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fMaxLength:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    filled-new-array {v1, v0, v2, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "cvc-maxLength-valid"

    invoke-direct {p1, v0, p0}, Lcom/sun/org/apache/xerces/internal/impl/dv/InvalidDatatypeValueException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1

    :cond_1
    :goto_0
    and-int/lit8 v6, v4, 0x2

    if-eqz v6, :cond_3

    iget v6, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fMinLength:I

    if-lt v3, v6, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Lcom/sun/org/apache/xerces/internal/impl/dv/InvalidDatatypeValueException;

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iget v2, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fMinLength:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    filled-new-array {v1, v0, v2, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "cvc-minLength-valid"

    invoke-direct {p1, v0, p0}, Lcom/sun/org/apache/xerces/internal/impl/dv/InvalidDatatypeValueException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1

    :cond_3
    :goto_1
    and-int/2addr v4, v5

    if-eqz v4, :cond_5

    iget v4, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fLength:I

    if-ne v3, v4, :cond_4

    goto :goto_2

    :cond_4
    new-instance p1, Lcom/sun/org/apache/xerces/internal/impl/dv/InvalidDatatypeValueException;

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iget v2, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fLength:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    filled-new-array {v1, v0, v2, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "cvc-length-valid"

    invoke-direct {p1, v0, p0}, Lcom/sun/org/apache/xerces/internal/impl/dv/InvalidDatatypeValueException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1

    :cond_5
    :goto_2
    iget-short v3, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit16 v3, v3, 0x800

    if-eqz v3, :cond_12

    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fEnumeration:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    invoke-direct {p0, v2}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->convertToPrimitiveKind(S)S

    move-result v2

    const/4 v4, 0x0

    move v6, v4

    :goto_3
    if-ge v6, v3, :cond_10

    iget-object v7, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fEnumerationType:[S

    aget-short v7, v7, v6

    invoke-direct {p0, v7}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->convertToPrimitiveKind(S)S

    move-result v7

    const/4 v8, 0x2

    if-eq v2, v7, :cond_7

    if-ne v2, v5, :cond_6

    if-eq v7, v8, :cond_7

    :cond_6
    if-ne v2, v8, :cond_f

    if-ne v7, v5, :cond_f

    :cond_7
    iget-object v7, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fEnumeration:Ljava/util/Vector;

    invoke-virtual {v7, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f

    const/16 v7, 0x2c

    if-eq v2, v7, :cond_9

    const/16 v7, 0x2b

    if-ne v2, v7, :cond_8

    goto :goto_5

    :cond_8
    :goto_4
    move v4, v5

    goto :goto_9

    :cond_9
    :goto_5
    iget-object v7, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fEnumerationItemType:[Lcom/sun/org/apache/xerces/internal/xs/ShortList;

    aget-object v7, v7, v6

    if-eqz p1, :cond_a

    invoke-interface {p1}, Lcom/sun/org/apache/xerces/internal/xs/ShortList;->getLength()I

    move-result v9

    goto :goto_6

    :cond_a
    move v9, v4

    :goto_6
    if-eqz v7, :cond_b

    invoke-interface {v7}, Lcom/sun/org/apache/xerces/internal/xs/ShortList;->getLength()I

    move-result v10

    goto :goto_7

    :cond_b
    move v10, v4

    :goto_7
    if-ne v9, v10, :cond_f

    move v10, v4

    :goto_8
    if-ge v10, v9, :cond_e

    invoke-interface {p1, v10}, Lcom/sun/org/apache/xerces/internal/xs/ShortList;->item(I)S

    move-result v11

    invoke-direct {p0, v11}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->convertToPrimitiveKind(S)S

    move-result v11

    invoke-interface {v7, v10}, Lcom/sun/org/apache/xerces/internal/xs/ShortList;->item(I)S

    move-result v12

    invoke-direct {p0, v12}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->convertToPrimitiveKind(S)S

    move-result v12

    if-eq v11, v12, :cond_d

    if-ne v11, v5, :cond_c

    if-eq v12, v8, :cond_d

    :cond_c
    if-ne v11, v8, :cond_e

    if-ne v12, v5, :cond_e

    :cond_d
    add-int/lit8 v10, v10, 0x1

    goto :goto_8

    :cond_e
    if-ne v10, v9, :cond_f

    goto :goto_4

    :cond_f
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_10
    :goto_9
    if-eqz v4, :cond_11

    goto :goto_a

    :cond_11
    new-instance p1, Lcom/sun/org/apache/xerces/internal/impl/dv/InvalidDatatypeValueException;

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fEnumeration:Ljava/util/Vector;

    invoke-virtual {p0}, Ljava/util/Vector;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "cvc-enumeration-valid"

    invoke-direct {p1, v0, p0}, Lcom/sun/org/apache/xerces/internal/impl/dv/InvalidDatatypeValueException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1

    :cond_12
    :goto_a
    iget-short p1, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit16 p1, p1, 0x400

    if-eqz p1, :cond_14

    sget-object p1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fDVs:[Lcom/sun/org/apache/xerces/internal/impl/dv/xs/TypeValidator;

    iget-short v2, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    aget-object p1, p1, v2

    invoke-virtual {p1, v0}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/TypeValidator;->getFractionDigits(Ljava/lang/Object;)I

    move-result p1

    iget v2, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fFractionDigits:I

    if-gt p1, v2, :cond_13

    goto :goto_b

    :cond_13
    new-instance v0, Lcom/sun/org/apache/xerces/internal/impl/dv/InvalidDatatypeValueException;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    iget p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fFractionDigits:I

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    filled-new-array {v1, p1, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "cvc-fractionDigits-valid"

    invoke-direct {v0, p1, p0}, Lcom/sun/org/apache/xerces/internal/impl/dv/InvalidDatatypeValueException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :cond_14
    :goto_b
    iget-short p1, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit16 p1, p1, 0x200

    if-eqz p1, :cond_16

    sget-object p1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fDVs:[Lcom/sun/org/apache/xerces/internal/impl/dv/xs/TypeValidator;

    iget-short v2, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    aget-object p1, p1, v2

    invoke-virtual {p1, v0}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/TypeValidator;->getTotalDigits(Ljava/lang/Object;)I

    move-result p1

    iget v2, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fTotalDigits:I

    if-gt p1, v2, :cond_15

    goto :goto_c

    :cond_15
    new-instance v0, Lcom/sun/org/apache/xerces/internal/impl/dv/InvalidDatatypeValueException;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    iget p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fTotalDigits:I

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    filled-new-array {v1, p1, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "cvc-totalDigits-valid"

    invoke-direct {v0, p1, p0}, Lcom/sun/org/apache/xerces/internal/impl/dv/InvalidDatatypeValueException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :cond_16
    :goto_c
    iget-short p1, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit8 p1, p1, 0x20

    const/4 v2, -0x1

    if-eqz p1, :cond_18

    sget-object p1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fDVs:[Lcom/sun/org/apache/xerces/internal/impl/dv/xs/TypeValidator;

    iget-short v3, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    aget-object p1, p1, v3

    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fMaxInclusive:Ljava/lang/Object;

    invoke-virtual {p1, v0, v3}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/TypeValidator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    if-eq p1, v2, :cond_18

    if-nez p1, :cond_17

    goto :goto_d

    :cond_17
    new-instance p1, Lcom/sun/org/apache/xerces/internal/impl/dv/InvalidDatatypeValueException;

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fMaxInclusive:Ljava/lang/Object;

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    filled-new-array {v1, v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "cvc-maxInclusive-valid"

    invoke-direct {p1, v0, p0}, Lcom/sun/org/apache/xerces/internal/impl/dv/InvalidDatatypeValueException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1

    :cond_18
    :goto_d
    iget-short p1, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit8 p1, p1, 0x40

    if-eqz p1, :cond_1a

    sget-object p1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fDVs:[Lcom/sun/org/apache/xerces/internal/impl/dv/xs/TypeValidator;

    iget-short v3, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    aget-object p1, p1, v3

    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fMaxExclusive:Ljava/lang/Object;

    invoke-virtual {p1, v0, v3}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/TypeValidator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    if-ne p1, v2, :cond_19

    goto :goto_e

    :cond_19
    new-instance p1, Lcom/sun/org/apache/xerces/internal/impl/dv/InvalidDatatypeValueException;

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fMaxExclusive:Ljava/lang/Object;

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    filled-new-array {v1, v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "cvc-maxExclusive-valid"

    invoke-direct {p1, v0, p0}, Lcom/sun/org/apache/xerces/internal/impl/dv/InvalidDatatypeValueException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1

    :cond_1a
    :goto_e
    iget-short p1, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit16 p1, p1, 0x100

    if-eqz p1, :cond_1c

    sget-object p1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fDVs:[Lcom/sun/org/apache/xerces/internal/impl/dv/xs/TypeValidator;

    iget-short v2, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    aget-object p1, p1, v2

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fMinInclusive:Ljava/lang/Object;

    invoke-virtual {p1, v0, v2}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/TypeValidator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    if-eq p1, v5, :cond_1c

    if-nez p1, :cond_1b

    goto :goto_f

    :cond_1b
    new-instance p1, Lcom/sun/org/apache/xerces/internal/impl/dv/InvalidDatatypeValueException;

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fMinInclusive:Ljava/lang/Object;

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    filled-new-array {v1, v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "cvc-minInclusive-valid"

    invoke-direct {p1, v0, p0}, Lcom/sun/org/apache/xerces/internal/impl/dv/InvalidDatatypeValueException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1

    :cond_1c
    :goto_f
    iget-short p1, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit16 p1, p1, 0x80

    if-eqz p1, :cond_1e

    sget-object p1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fDVs:[Lcom/sun/org/apache/xerces/internal/impl/dv/xs/TypeValidator;

    iget-short v2, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    aget-object p1, p1, v2

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fMinExclusive:Ljava/lang/Object;

    invoke-virtual {p1, v0, v2}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/TypeValidator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    if-ne p1, v5, :cond_1d

    goto :goto_10

    :cond_1d
    new-instance p1, Lcom/sun/org/apache/xerces/internal/impl/dv/InvalidDatatypeValueException;

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fMinExclusive:Ljava/lang/Object;

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    filled-new-array {v1, v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "cvc-minExclusive-valid"

    invoke-direct {p1, v0, p0}, Lcom/sun/org/apache/xerces/internal/impl/dv/InvalidDatatypeValueException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1

    :cond_1e
    :goto_10
    return-void
.end method

.method private convertToPrimitiveKind(S)S
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

.method private getActualValue(Ljava/lang/Object;Lcom/sun/org/apache/xerces/internal/impl/dv/ValidationContext;Lcom/sun/org/apache/xerces/internal/impl/dv/ValidatedInfo;Z)Ljava/lang/Object;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/impl/dv/InvalidDatatypeValueException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    if-eqz p4, :cond_0

    iget-short v4, v0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fWhiteSpace:S

    invoke-virtual {v0, v1, v4}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->normalize(Ljava/lang/Object;S)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_0
    iget-short v5, v0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit8 v5, v5, 0x8

    const/4 v6, 0x1

    if-eqz v5, :cond_2

    iget-object v5, v0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fPattern:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    sub-int/2addr v5, v6

    :goto_1
    if-ltz v5, :cond_2

    iget-object v7, v0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fPattern:Ljava/util/Vector;

    invoke-virtual {v7, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sun/org/apache/xerces/internal/impl/xpath/regex/RegularExpression;

    invoke-virtual {v7, v4}, Lcom/sun/org/apache/xerces/internal/impl/xpath/regex/RegularExpression;->matches(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    :cond_1
    new-instance v2, Lcom/sun/org/apache/xerces/internal/impl/dv/InvalidDatatypeValueException;

    iget-object v3, v0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fPatternStr:Ljava/util/Vector;

    invoke-virtual {v3, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    iget-object v0, v0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    filled-new-array {v1, v3, v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "cvc-pattern-valid"

    invoke-direct {v2, v1, v0}, Lcom/sun/org/apache/xerces/internal/impl/dv/InvalidDatatypeValueException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v2

    :cond_2
    iget-short v5, v0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fVariety:S

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x0

    if-ne v5, v6, :cond_8

    iget-short v1, v0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fPatternType:S

    if-eqz v1, :cond_7

    if-ne v1, v6, :cond_3

    invoke-static {v4}, Lcom/sun/org/apache/xerces/internal/util/XMLChar;->isValidNmtoken(Ljava/lang/String;)Z

    move-result v1

    :goto_2
    xor-int/lit8 v9, v1, 0x1

    goto :goto_3

    :cond_3
    if-ne v1, v8, :cond_4

    invoke-static {v4}, Lcom/sun/org/apache/xerces/internal/util/XMLChar;->isValidName(Ljava/lang/String;)Z

    move-result v1

    goto :goto_2

    :cond_4
    if-ne v1, v7, :cond_5

    invoke-static {v4}, Lcom/sun/org/apache/xerces/internal/util/XMLChar;->isValidNCName(Ljava/lang/String;)Z

    move-result v1

    goto :goto_2

    :cond_5
    :goto_3
    if-nez v9, :cond_6

    goto :goto_4

    :cond_6
    new-instance v1, Lcom/sun/org/apache/xerces/internal/impl/dv/InvalidDatatypeValueException;

    sget-object v2, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->SPECIAL_PATTERN_STRING:[Ljava/lang/String;

    iget-short v0, v0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fPatternType:S

    aget-object v0, v2, v0

    filled-new-array {v4, v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "cvc-datatype-valid.1.2.1"

    invoke-direct {v1, v2, v0}, Lcom/sun/org/apache/xerces/internal/impl/dv/InvalidDatatypeValueException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1

    :cond_7
    :goto_4
    iput-object v4, v3, Lcom/sun/org/apache/xerces/internal/impl/dv/ValidatedInfo;->normalizedValue:Ljava/lang/String;

    sget-object v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fDVs:[Lcom/sun/org/apache/xerces/internal/impl/dv/xs/TypeValidator;

    iget-short v5, v0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    aget-object v1, v1, v5

    invoke-virtual {v1, v4, v2}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/TypeValidator;->getActualValue(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/impl/dv/ValidationContext;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v3, Lcom/sun/org/apache/xerces/internal/impl/dv/ValidatedInfo;->actualValue:Ljava/lang/Object;

    iget-short v0, v0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fBuiltInKind:S

    iput-short v0, v3, Lcom/sun/org/apache/xerces/internal/impl/dv/ValidatedInfo;->actualValueType:S

    return-object v1

    :cond_8
    const/16 v10, 0x10

    if-ne v5, v8, :cond_10

    new-instance v1, Ljava/util/StringTokenizer;

    const-string v5, " "

    invoke-direct {v1, v4, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v5

    new-array v8, v5, [Ljava/lang/Object;

    iget-object v12, v0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fItemType:Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;

    invoke-virtual {v12}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->getVariety()S

    move-result v12

    if-ne v12, v7, :cond_9

    move v7, v6

    goto :goto_5

    :cond_9
    move v7, v9

    :goto_5
    if-eqz v7, :cond_a

    move v6, v5

    :cond_a
    new-array v12, v6, [S

    if-nez v7, :cond_b

    iget-object v13, v0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fItemType:Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v13, v13, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fBuiltInKind:S

    aput-short v13, v12, v9

    :cond_b
    new-array v13, v5, [Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;

    move v14, v9

    :goto_6
    if-ge v14, v5, :cond_e

    iget-object v15, v0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fItemType:Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v15, v11, v2, v3, v9}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->getActualValue(Ljava/lang/Object;Lcom/sun/org/apache/xerces/internal/impl/dv/ValidationContext;Lcom/sun/org/apache/xerces/internal/impl/dv/ValidatedInfo;Z)Ljava/lang/Object;

    move-result-object v11

    aput-object v11, v8, v14

    invoke-interface/range {p2 .. p2}, Lcom/sun/org/apache/xerces/internal/impl/dv/ValidationContext;->needFacetChecking()Z

    move-result v11

    if-eqz v11, :cond_c

    iget-object v11, v0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fItemType:Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v15, v11, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    if-eqz v15, :cond_c

    if-eq v15, v10, :cond_c

    invoke-direct {v11, v3}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->checkFacets(Lcom/sun/org/apache/xerces/internal/impl/dv/ValidatedInfo;)V

    :cond_c
    iget-object v11, v3, Lcom/sun/org/apache/xerces/internal/impl/dv/ValidatedInfo;->memberType:Lcom/sun/org/apache/xerces/internal/impl/dv/XSSimpleType;

    check-cast v11, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;

    aput-object v11, v13, v14

    if-eqz v7, :cond_d

    iget-short v11, v11, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fBuiltInKind:S

    aput-short v11, v12, v14

    :cond_d
    add-int/lit8 v14, v14, 0x1

    goto :goto_6

    :cond_e
    new-instance v0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/ListDV$ListData;

    invoke-direct {v0, v8}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/ListDV$ListData;-><init>([Ljava/lang/Object;)V

    iput-object v0, v3, Lcom/sun/org/apache/xerces/internal/impl/dv/ValidatedInfo;->actualValue:Ljava/lang/Object;

    if-eqz v7, :cond_f

    const/16 v11, 0x2b

    goto :goto_7

    :cond_f
    const/16 v11, 0x2c

    :goto_7
    iput-short v11, v3, Lcom/sun/org/apache/xerces/internal/impl/dv/ValidatedInfo;->actualValueType:S

    const/4 v1, 0x0

    iput-object v1, v3, Lcom/sun/org/apache/xerces/internal/impl/dv/ValidatedInfo;->memberType:Lcom/sun/org/apache/xerces/internal/impl/dv/XSSimpleType;

    iput-object v13, v3, Lcom/sun/org/apache/xerces/internal/impl/dv/ValidatedInfo;->memberTypes:[Lcom/sun/org/apache/xerces/internal/impl/dv/XSSimpleType;

    new-instance v1, Lcom/sun/org/apache/xerces/internal/impl/xs/util/ShortListImpl;

    invoke-direct {v1, v12, v6}, Lcom/sun/org/apache/xerces/internal/impl/xs/util/ShortListImpl;-><init>([SI)V

    iput-object v1, v3, Lcom/sun/org/apache/xerces/internal/impl/dv/ValidatedInfo;->itemValueTypes:Lcom/sun/org/apache/xerces/internal/xs/ShortList;

    iput-object v4, v3, Lcom/sun/org/apache/xerces/internal/impl/dv/ValidatedInfo;->normalizedValue:Ljava/lang/String;

    return-object v0

    :cond_10
    move v4, v9

    :goto_8
    iget-object v5, v0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fMemberTypes:[Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;

    array-length v7, v5

    if-ge v4, v7, :cond_12

    :try_start_0
    aget-object v5, v5, v4

    invoke-direct {v5, v1, v2, v3, v6}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->getActualValue(Ljava/lang/Object;Lcom/sun/org/apache/xerces/internal/impl/dv/ValidationContext;Lcom/sun/org/apache/xerces/internal/impl/dv/ValidatedInfo;Z)Ljava/lang/Object;

    move-result-object v5

    invoke-interface/range {p2 .. p2}, Lcom/sun/org/apache/xerces/internal/impl/dv/ValidationContext;->needFacetChecking()Z

    move-result v7

    if-eqz v7, :cond_11

    iget-object v7, v0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fMemberTypes:[Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;

    aget-object v7, v7, v4

    iget-short v8, v7, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    if-eqz v8, :cond_11

    if-eq v8, v10, :cond_11

    invoke-direct {v7, v3}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->checkFacets(Lcom/sun/org/apache/xerces/internal/impl/dv/ValidatedInfo;)V

    :cond_11
    iget-object v7, v0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fMemberTypes:[Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;

    aget-object v7, v7, v4

    iput-object v7, v3, Lcom/sun/org/apache/xerces/internal/impl/dv/ValidatedInfo;->memberType:Lcom/sun/org/apache/xerces/internal/impl/dv/XSSimpleType;
    :try_end_0
    .catch Lcom/sun/org/apache/xerces/internal/impl/dv/InvalidDatatypeValueException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v5

    :catch_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    :cond_12
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    move v3, v9

    :goto_9
    iget-object v4, v0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fMemberTypes:[Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;

    array-length v4, v4

    if-ge v3, v4, :cond_18

    if-eqz v3, :cond_13

    const-string v4, " | "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_13
    iget-object v4, v0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fMemberTypes:[Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;

    aget-object v4, v4, v3

    iget-object v5, v4, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fTargetNamespace:Ljava/lang/String;

    if-eqz v5, :cond_14

    const/16 v5, 0x7b

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v5, v4, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fTargetNamespace:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v5, 0x7d

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_14
    iget-object v5, v4, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v4, v4, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fEnumeration:Ljava/util/Vector;

    if-eqz v4, :cond_17

    const-string v5, " : ["

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v5, v9

    :goto_a
    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v6

    if-ge v5, v6, :cond_16

    const/16 v6, 0x2c

    if-eqz v5, :cond_15

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_15
    invoke-virtual {v4, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    add-int/lit8 v5, v5, 0x1

    goto :goto_a

    :cond_16
    const/16 v6, 0x2c

    const/16 v4, 0x5d

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_b

    :cond_17
    const/16 v6, 0x2c

    :goto_b
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_18
    new-instance v3, Lcom/sun/org/apache/xerces/internal/impl/dv/InvalidDatatypeValueException;

    iget-object v0, v0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v1, v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "cvc-datatype-valid.1.2.3"

    invoke-direct {v3, v1, v0}, Lcom/sun/org/apache/xerces/internal/impl/dv/InvalidDatatypeValueException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v3
.end method

.method private getPrimitiveDV(S)S
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

.method private isDerivedByAny(Ljava/lang/String;Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xs/XSTypeDefinition;)Z
    .locals 5

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    if-eqz p3, :cond_a

    if-eq p3, v0, :cond_a

    invoke-interface {p3}, Lcom/sun/org/apache/xerces/internal/xs/XSObject;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    if-nez p1, :cond_0

    invoke-interface {p3}, Lcom/sun/org/apache/xerces/internal/xs/XSObject;->getNamespace()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    invoke-interface {p3}, Lcom/sun/org/apache/xerces/internal/xs/XSObject;->getNamespace()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    move v1, v2

    goto :goto_3

    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->isDerivedByRestriction(Ljava/lang/String;Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xs/XSTypeDefinition;)Z

    move-result v0

    if-eqz v0, :cond_3

    return v2

    :cond_3
    invoke-direct {p0, p1, p2, p3}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->isDerivedByList(Ljava/lang/String;Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xs/XSTypeDefinition;)Z

    move-result v0

    if-eqz v0, :cond_4

    return v2

    :cond_4
    invoke-direct {p0, p1, p2, p3}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->isDerivedByUnion(Ljava/lang/String;Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xs/XSTypeDefinition;)Z

    move-result v0

    if-eqz v0, :cond_5

    return v2

    :cond_5
    move-object v0, p3

    check-cast v0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->getVariety()S

    move-result v3

    if-eqz v3, :cond_9

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->getVariety()S

    move-result v3

    if-ne v3, v2, :cond_6

    goto :goto_1

    :cond_6
    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->getVariety()S

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_7

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->getMemberTypes()Lcom/sun/org/apache/xerces/internal/xs/XSObjectList;

    move-result-object v2

    invoke-interface {v2}, Lcom/sun/org/apache/xerces/internal/xs/XSObjectList;->getLength()I

    move-result v2

    if-lez v2, :cond_8

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->getMemberTypes()Lcom/sun/org/apache/xerces/internal/xs/XSObjectList;

    move-result-object p3

    invoke-interface {p3, v1}, Lcom/sun/org/apache/xerces/internal/xs/XSObjectList;->item(I)Lcom/sun/org/apache/xerces/internal/xs/XSObject;

    move-result-object p3

    check-cast p3, Lcom/sun/org/apache/xerces/internal/xs/XSTypeDefinition;

    invoke-direct {p0, p1, p2, p3}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->isDerivedByAny(Ljava/lang/String;Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xs/XSTypeDefinition;)Z

    move-result p0

    return p0

    :cond_7
    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->getVariety()S

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_8

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->getItemType()Lcom/sun/org/apache/xerces/internal/xs/XSSimpleTypeDefinition;

    move-result-object v0

    goto :goto_2

    :cond_8
    move-object v0, p3

    goto :goto_0

    :cond_9
    :goto_1
    invoke-interface {p3}, Lcom/sun/org/apache/xerces/internal/xs/XSTypeDefinition;->getBaseType()Lcom/sun/org/apache/xerces/internal/xs/XSTypeDefinition;

    move-result-object v0

    :goto_2
    move-object v4, v0

    move-object v0, p3

    move-object p3, v4

    goto/16 :goto_0

    :cond_a
    :goto_3
    return v1
.end method

.method private isDerivedByList(Ljava/lang/String;Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xs/XSTypeDefinition;)Z
    .locals 2

    if-eqz p3, :cond_0

    check-cast p3, Lcom/sun/org/apache/xerces/internal/xs/XSSimpleTypeDefinition;

    invoke-interface {p3}, Lcom/sun/org/apache/xerces/internal/xs/XSSimpleTypeDefinition;->getVariety()S

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-interface {p3}, Lcom/sun/org/apache/xerces/internal/xs/XSSimpleTypeDefinition;->getItemType()Lcom/sun/org/apache/xerces/internal/xs/XSSimpleTypeDefinition;

    move-result-object p3

    if-eqz p3, :cond_0

    invoke-direct {p0, p1, p2, p3}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->isDerivedByRestriction(Ljava/lang/String;Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xs/XSTypeDefinition;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private isDerivedByRestriction(Ljava/lang/String;Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xs/XSTypeDefinition;)Z
    .locals 1

    const/4 p0, 0x0

    :goto_0
    if-eqz p3, :cond_3

    if-eq p3, p0, :cond_3

    invoke-interface {p3}, Lcom/sun/org/apache/xerces/internal/xs/XSObject;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    if-eqz p1, :cond_0

    invoke-interface {p3}, Lcom/sun/org/apache/xerces/internal/xs/XSObject;->getNamespace()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    :cond_0
    invoke-interface {p3}, Lcom/sun/org/apache/xerces/internal/xs/XSObject;->getNamespace()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_2

    if-nez p1, :cond_2

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    invoke-interface {p3}, Lcom/sun/org/apache/xerces/internal/xs/XSTypeDefinition;->getBaseType()Lcom/sun/org/apache/xerces/internal/xs/XSTypeDefinition;

    move-result-object p0

    move-object v0, p3

    move-object p3, p0

    move-object p0, v0

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method private isDerivedByUnion(Ljava/lang/String;Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xs/XSTypeDefinition;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    check-cast p3, Lcom/sun/org/apache/xerces/internal/xs/XSSimpleTypeDefinition;

    invoke-interface {p3}, Lcom/sun/org/apache/xerces/internal/xs/XSSimpleTypeDefinition;->getVariety()S

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    invoke-interface {p3}, Lcom/sun/org/apache/xerces/internal/xs/XSSimpleTypeDefinition;->getMemberTypes()Lcom/sun/org/apache/xerces/internal/xs/XSObjectList;

    move-result-object p3

    move v1, v0

    :goto_0
    invoke-interface {p3}, Lcom/sun/org/apache/xerces/internal/xs/XSObjectList;->getLength()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-interface {p3, v1}, Lcom/sun/org/apache/xerces/internal/xs/XSObjectList;->item(I)Lcom/sun/org/apache/xerces/internal/xs/XSObject;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {p3, v1}, Lcom/sun/org/apache/xerces/internal/xs/XSObjectList;->item(I)Lcom/sun/org/apache/xerces/internal/xs/XSObject;

    move-result-object v2

    check-cast v2, Lcom/sun/org/apache/xerces/internal/xs/XSSimpleTypeDefinition;

    invoke-direct {p0, p1, p2, v2}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->isDerivedByRestriction(Ljava/lang/String;Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xs/XSTypeDefinition;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public static normalize(Ljava/lang/String;S)Ljava/lang/String;
    .locals 12

    const/4 v0, 0x0

    if-nez p0, :cond_0

    move v1, v0

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    :goto_0
    if-eqz v1, :cond_9

    if-nez p1, :cond_1

    goto/16 :goto_7

    .line 2
    :cond_1
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const/16 v3, 0xd

    const/16 v4, 0xa

    const/16 v5, 0x9

    const/16 v6, 0x20

    const/4 v7, 0x1

    if-ne p1, v7, :cond_3

    :goto_1
    if-ge v0, v1, :cond_8

    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    if-eq p1, v5, :cond_2

    if-eq p1, v4, :cond_2

    if-eq p1, v3, :cond_2

    .line 4
    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 5
    :cond_2
    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move p1, v0

    move v8, v7

    :goto_3
    if-ge p1, v1, :cond_8

    .line 6
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-eq v9, v5, :cond_4

    if-eq v9, v4, :cond_4

    if-eq v9, v3, :cond_4

    if-eq v9, v6, :cond_4

    .line 7
    invoke-virtual {v2, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v8, v0

    goto :goto_6

    :cond_4
    :goto_4
    add-int/lit8 v9, v1, -0x1

    if-ge p1, v9, :cond_6

    add-int/lit8 v10, p1, 0x1

    .line 8
    invoke-virtual {p0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-eq v11, v5, :cond_5

    if-eq v11, v4, :cond_5

    if-eq v11, v3, :cond_5

    if-eq v11, v6, :cond_5

    goto :goto_5

    :cond_5
    move p1, v10

    goto :goto_4

    :cond_6
    :goto_5
    if-ge p1, v9, :cond_7

    if-nez v8, :cond_7

    .line 9
    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_7
    :goto_6
    add-int/2addr p1, v7

    goto :goto_3

    .line 10
    :cond_8
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_9
    :goto_7
    return-object p0
.end method

.method private setBounded()V
    .locals 6

    iget-short v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fVariety:S

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    iget-short v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit16 v3, v0, 0x100

    if-nez v3, :cond_0

    and-int/lit16 v3, v0, 0x80

    if-eqz v3, :cond_1

    :cond_0
    and-int/lit8 v3, v0, 0x20

    if-nez v3, :cond_2

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iput-boolean v1, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fBounded:Z

    goto :goto_5

    :cond_2
    :goto_0
    iput-boolean v2, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fBounded:Z

    goto :goto_5

    :cond_3
    const/4 v3, 0x2

    if-ne v0, v3, :cond_6

    iget-short v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit8 v3, v0, 0x1

    if-nez v3, :cond_5

    and-int/lit8 v3, v0, 0x2

    if-eqz v3, :cond_4

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_4

    goto :goto_1

    :cond_4
    iput-boolean v1, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fBounded:Z

    goto :goto_5

    :cond_5
    :goto_1
    iput-boolean v2, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fBounded:Z

    goto :goto_5

    :cond_6
    const/4 v3, 0x3

    if-ne v0, v3, :cond_b

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fMemberTypes:[Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;

    array-length v3, v0

    if-lez v3, :cond_7

    aget-object v3, v0, v1

    iget-short v3, v3, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    invoke-direct {p0, v3}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->getPrimitiveDV(S)S

    move-result v3

    goto :goto_2

    :cond_7
    move v3, v1

    :goto_2
    move v4, v1

    :goto_3
    array-length v5, v0

    if-ge v4, v5, :cond_a

    aget-object v5, v0, v4

    invoke-virtual {v5}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->getBounded()Z

    move-result v5

    if-eqz v5, :cond_9

    aget-object v5, v0, v4

    iget-short v5, v5, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    invoke-direct {p0, v5}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->getPrimitiveDV(S)S

    move-result v5

    if-eq v3, v5, :cond_8

    goto :goto_4

    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_9
    :goto_4
    iput-boolean v1, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fBounded:Z

    return-void

    :cond_a
    iput-boolean v2, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fBounded:Z

    :cond_b
    :goto_5
    return-void
.end method

.method private setCardinality()V
    .locals 5

    iget-short v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fVariety:S

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_8

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;

    iget-boolean v0, v0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fFinite:Z

    if-eqz v0, :cond_0

    iput-boolean v2, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fFinite:Z

    goto/16 :goto_5

    :cond_0
    iget-short v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit8 v3, v0, 0x1

    if-nez v3, :cond_7

    and-int/lit8 v3, v0, 0x4

    if-nez v3, :cond_7

    and-int/lit16 v3, v0, 0x200

    if-eqz v3, :cond_1

    goto :goto_2

    :cond_1
    and-int/lit16 v3, v0, 0x100

    if-nez v3, :cond_2

    and-int/lit16 v3, v0, 0x80

    if-eqz v3, :cond_3

    :cond_2
    and-int/lit8 v3, v0, 0x20

    if-nez v3, :cond_4

    and-int/lit8 v3, v0, 0x40

    if-eqz v3, :cond_3

    goto :goto_0

    :cond_3
    iput-boolean v1, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fFinite:Z

    goto :goto_5

    :cond_4
    :goto_0
    and-int/lit16 v0, v0, 0x400

    if-nez v0, :cond_6

    invoke-direct {p0}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->specialCardinalityCheck()Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_1

    :cond_5
    iput-boolean v1, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fFinite:Z

    goto :goto_5

    :cond_6
    :goto_1
    iput-boolean v2, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fFinite:Z

    goto :goto_5

    :cond_7
    :goto_2
    iput-boolean v2, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fFinite:Z

    goto :goto_5

    :cond_8
    const/4 v3, 0x2

    if-ne v0, v3, :cond_b

    iget-short v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit8 v3, v0, 0x1

    if-nez v3, :cond_a

    and-int/lit8 v3, v0, 0x2

    if-eqz v3, :cond_9

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_9

    goto :goto_3

    :cond_9
    iput-boolean v1, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fFinite:Z

    goto :goto_5

    :cond_a
    :goto_3
    iput-boolean v2, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fFinite:Z

    goto :goto_5

    :cond_b
    const/4 v3, 0x3

    if-ne v0, v3, :cond_e

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fMemberTypes:[Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;

    move v3, v1

    :goto_4
    array-length v4, v0

    if-ge v3, v4, :cond_d

    aget-object v4, v0, v3

    invoke-interface {v4}, Lcom/sun/org/apache/xerces/internal/xs/XSSimpleTypeDefinition;->getFinite()Z

    move-result v4

    if-nez v4, :cond_c

    iput-boolean v1, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fFinite:Z

    return-void

    :cond_c
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_d
    iput-boolean v2, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fFinite:Z

    :cond_e
    :goto_5
    return-void
.end method

.method private setNumeric()V
    .locals 5

    iget-short v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fVariety:S

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;

    iget-boolean v0, v0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fNumeric:Z

    iput-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fNumeric:Z

    goto :goto_1

    :cond_0
    const/4 v2, 0x2

    const/4 v3, 0x0

    if-ne v0, v2, :cond_1

    iput-boolean v3, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fNumeric:Z

    goto :goto_1

    :cond_1
    const/4 v2, 0x3

    if-ne v0, v2, :cond_4

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fMemberTypes:[Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;

    move v2, v3

    :goto_0
    array-length v4, v0

    if-ge v2, v4, :cond_3

    aget-object v4, v0, v2

    invoke-interface {v4}, Lcom/sun/org/apache/xerces/internal/xs/XSSimpleTypeDefinition;->getNumeric()Z

    move-result v4

    if-nez v4, :cond_2

    iput-boolean v3, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fNumeric:Z

    return-void

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    iput-boolean v1, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fNumeric:Z

    :cond_4
    :goto_1
    return-void
.end method

.method private setOrdered()V
    .locals 8

    iget-short v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fVariety:S

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v0, v0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fOrdered:S

    iput-short v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fOrdered:S

    goto/16 :goto_5

    :cond_0
    const/4 v2, 0x2

    const/4 v3, 0x0

    if-ne v0, v2, :cond_1

    iput-short v3, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fOrdered:S

    goto/16 :goto_5

    :cond_1
    const/4 v2, 0x3

    if-ne v0, v2, :cond_d

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fMemberTypes:[Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;

    array-length v2, v0

    if-nez v2, :cond_2

    iput-short v1, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fOrdered:S

    return-void

    :cond_2
    aget-object v0, v0, v3

    iget-short v0, v0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    invoke-direct {p0, v0}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->getPrimitiveDV(S)S

    move-result v0

    if-eqz v0, :cond_3

    move v2, v1

    goto :goto_0

    :cond_3
    move v2, v3

    :goto_0
    iget-object v4, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fMemberTypes:[Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;

    aget-object v4, v4, v3

    iget-short v4, v4, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fOrdered:S

    if-nez v4, :cond_4

    move v4, v1

    goto :goto_1

    :cond_4
    move v4, v3

    :goto_1
    move v5, v1

    :goto_2
    iget-object v6, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fMemberTypes:[Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;

    array-length v7, v6

    if-ge v5, v7, :cond_a

    if-nez v2, :cond_5

    if-eqz v4, :cond_a

    :cond_5
    if-eqz v2, :cond_7

    aget-object v2, v6, v5

    iget-short v2, v2, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    invoke-direct {p0, v2}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->getPrimitiveDV(S)S

    move-result v2

    if-ne v0, v2, :cond_6

    move v2, v1

    goto :goto_3

    :cond_6
    move v2, v3

    :cond_7
    :goto_3
    if-eqz v4, :cond_9

    iget-object v4, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fMemberTypes:[Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;

    aget-object v4, v4, v5

    iget-short v4, v4, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fOrdered:S

    if-nez v4, :cond_8

    move v4, v1

    goto :goto_4

    :cond_8
    move v4, v3

    :cond_9
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_a
    if-eqz v2, :cond_b

    aget-object v0, v6, v3

    iget-short v0, v0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fOrdered:S

    iput-short v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fOrdered:S

    goto :goto_5

    :cond_b
    if-eqz v4, :cond_c

    iput-short v3, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fOrdered:S

    goto :goto_5

    :cond_c
    iput-short v1, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fOrdered:S

    :cond_d
    :goto_5
    return-void
.end method

.method private specialCardinalityCheck()Z
    .locals 1

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;

    iget-short p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

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

.method private whiteSpaceValue(S)Ljava/lang/String;
    .locals 0

    sget-object p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->WS_FACET_STRING:[Ljava/lang/String;

    aget-object p0, p0, p1

    return-object p0
.end method


# virtual methods
.method public applyFacets(Lcom/sun/org/apache/xerces/internal/impl/dv/XSFacets;SSLcom/sun/org/apache/xerces/internal/impl/dv/ValidationContext;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/impl/dv/InvalidDatatypeFacetException;
        }
    .end annotation

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    .line 1
    invoke-virtual/range {v0 .. v5}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->applyFacets(Lcom/sun/org/apache/xerces/internal/impl/dv/XSFacets;SSSLcom/sun/org/apache/xerces/internal/impl/dv/ValidationContext;)V

    return-void
.end method

.method public applyFacets(Lcom/sun/org/apache/xerces/internal/impl/dv/XSFacets;SSSLcom/sun/org/apache/xerces/internal/impl/dv/ValidationContext;)V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/impl/dv/InvalidDatatypeFacetException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    .line 2
    iget-boolean v0, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fIsImmutable:Z

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    new-instance v7, Lcom/sun/org/apache/xerces/internal/impl/dv/ValidatedInfo;

    invoke-direct {v7}, Lcom/sun/org/apache/xerces/internal/impl/dv/ValidatedInfo;-><init>()V

    const/4 v8, 0x0

    .line 4
    iput-short v8, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    .line 5
    iput-short v8, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    .line 6
    sget-object v0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fDVs:[Lcom/sun/org/apache/xerces/internal/impl/dv/xs/TypeValidator;

    iget-short v9, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    aget-object v0, v0, v9

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/TypeValidator;->getAllowedFacets()S

    move-result v9

    and-int/lit8 v0, v3, 0x1

    const-string v10, "cos-applicable-facets"

    const/4 v11, 0x1

    if-eqz v0, :cond_2

    and-int/lit8 v0, v9, 0x1

    if-nez v0, :cond_1

    const-string v0, "length"

    .line 7
    iget-object v12, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    filled-new-array {v0, v12}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v10, v0}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 8
    :cond_1
    iget v0, v2, Lcom/sun/org/apache/xerces/internal/impl/dv/XSFacets;->length:I

    iput v0, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fLength:I

    .line 9
    iget-object v0, v2, Lcom/sun/org/apache/xerces/internal/impl/dv/XSFacets;->lengthAnnotation:Lcom/sun/org/apache/xerces/internal/xs/XSAnnotation;

    iput-object v0, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->lengthAnnotation:Lcom/sun/org/apache/xerces/internal/xs/XSAnnotation;

    .line 10
    iget-short v0, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    or-int/2addr v0, v11

    int-to-short v0, v0

    iput-short v0, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit8 v0, v4, 0x1

    if-eqz v0, :cond_2

    .line 11
    iget-short v0, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    or-int/2addr v0, v11

    int-to-short v0, v0

    iput-short v0, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    :cond_2
    :goto_0
    and-int/lit8 v0, v3, 0x2

    const/4 v12, 0x2

    if-eqz v0, :cond_4

    and-int/lit8 v0, v9, 0x2

    if-nez v0, :cond_3

    const-string v0, "minLength"

    .line 12
    iget-object v13, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    filled-new-array {v0, v13}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v10, v0}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 13
    :cond_3
    iget v0, v2, Lcom/sun/org/apache/xerces/internal/impl/dv/XSFacets;->minLength:I

    iput v0, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fMinLength:I

    .line 14
    iget-object v0, v2, Lcom/sun/org/apache/xerces/internal/impl/dv/XSFacets;->minLengthAnnotation:Lcom/sun/org/apache/xerces/internal/xs/XSAnnotation;

    iput-object v0, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->minLengthAnnotation:Lcom/sun/org/apache/xerces/internal/xs/XSAnnotation;

    .line 15
    iget-short v0, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    or-int/2addr v0, v12

    int-to-short v0, v0

    iput-short v0, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit8 v0, v4, 0x2

    if-eqz v0, :cond_4

    .line 16
    iget-short v0, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    or-int/2addr v0, v12

    int-to-short v0, v0

    iput-short v0, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    :cond_4
    :goto_1
    and-int/lit8 v0, v3, 0x4

    if-eqz v0, :cond_6

    and-int/lit8 v0, v9, 0x4

    if-nez v0, :cond_5

    const-string v0, "maxLength"

    .line 17
    iget-object v13, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    filled-new-array {v0, v13}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v10, v0}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 18
    :cond_5
    iget v0, v2, Lcom/sun/org/apache/xerces/internal/impl/dv/XSFacets;->maxLength:I

    iput v0, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fMaxLength:I

    .line 19
    iget-object v0, v2, Lcom/sun/org/apache/xerces/internal/impl/dv/XSFacets;->maxLengthAnnotation:Lcom/sun/org/apache/xerces/internal/xs/XSAnnotation;

    iput-object v0, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->maxLengthAnnotation:Lcom/sun/org/apache/xerces/internal/xs/XSAnnotation;

    .line 20
    iget-short v0, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    or-int/lit8 v0, v0, 0x4

    int-to-short v0, v0

    iput-short v0, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit8 v0, v4, 0x4

    if-eqz v0, :cond_6

    .line 21
    iget-short v0, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    or-int/lit8 v0, v0, 0x4

    int-to-short v0, v0

    iput-short v0, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    :cond_6
    :goto_2
    and-int/lit8 v0, v3, 0x8

    if-eqz v0, :cond_8

    and-int/lit8 v0, v9, 0x8

    if-nez v0, :cond_7

    const-string v0, "pattern"

    .line 22
    iget-object v13, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    filled-new-array {v0, v13}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v10, v0}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4

    .line 23
    :cond_7
    iget-object v0, v2, Lcom/sun/org/apache/xerces/internal/impl/dv/XSFacets;->patternAnnotations:Lcom/sun/org/apache/xerces/internal/impl/xs/util/XSObjectListImpl;

    iput-object v0, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->patternAnnotations:Lcom/sun/org/apache/xerces/internal/impl/xs/util/XSObjectListImpl;

    .line 24
    :try_start_0
    new-instance v0, Lcom/sun/org/apache/xerces/internal/impl/xpath/regex/RegularExpression;

    iget-object v13, v2, Lcom/sun/org/apache/xerces/internal/impl/dv/XSFacets;->pattern:Ljava/lang/String;

    const-string v14, "X"

    invoke-direct {v0, v13, v14}, Lcom/sun/org/apache/xerces/internal/impl/xpath/regex/RegularExpression;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/sun/org/apache/xerces/internal/impl/xpath/regex/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 25
    iget-object v13, v2, Lcom/sun/org/apache/xerces/internal/impl/dv/XSFacets;->pattern:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v14

    new-instance v15, Ljava/lang/Integer;

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/impl/xpath/regex/ParseException;->getLocation()I

    move-result v0

    invoke-direct {v15, v0}, Ljava/lang/Integer;-><init>(I)V

    filled-new-array {v13, v14, v15}, [Ljava/lang/Object;

    move-result-object v0

    const-string v13, "InvalidRegex"

    invoke-virtual {v1, v13, v0}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    :goto_3
    if-eqz v0, :cond_8

    .line 26
    new-instance v13, Ljava/util/Vector;

    invoke-direct {v13}, Ljava/util/Vector;-><init>()V

    iput-object v13, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fPattern:Ljava/util/Vector;

    .line 27
    invoke-virtual {v13, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 28
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fPatternStr:Ljava/util/Vector;

    .line 29
    iget-object v13, v2, Lcom/sun/org/apache/xerces/internal/impl/dv/XSFacets;->pattern:Ljava/lang/String;

    invoke-virtual {v0, v13}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 30
    iget-short v0, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    or-int/lit8 v0, v0, 0x8

    int-to-short v0, v0

    iput-short v0, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit8 v0, v4, 0x8

    if-eqz v0, :cond_8

    .line 31
    iget-short v0, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    or-int/lit8 v0, v0, 0x8

    int-to-short v0, v0

    iput-short v0, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    :cond_8
    :goto_4
    and-int/lit16 v0, v3, 0x800

    if-eqz v0, :cond_c

    and-int/lit16 v0, v9, 0x800

    if-nez v0, :cond_9

    const-string v0, "enumeration"

    .line 32
    iget-object v13, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    filled-new-array {v0, v13}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v10, v0}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_7

    .line 33
    :cond_9
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fEnumeration:Ljava/util/Vector;

    .line 34
    iget-object v0, v2, Lcom/sun/org/apache/xerces/internal/impl/dv/XSFacets;->enumeration:Ljava/util/Vector;

    .line 35
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v13

    new-array v13, v13, [S

    iput-object v13, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fEnumerationType:[S

    .line 36
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v13

    new-array v13, v13, [Lcom/sun/org/apache/xerces/internal/xs/ShortList;

    iput-object v13, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fEnumerationItemType:[Lcom/sun/org/apache/xerces/internal/xs/ShortList;

    .line 37
    iget-object v13, v2, Lcom/sun/org/apache/xerces/internal/impl/dv/XSFacets;->enumNSDecls:Ljava/util/Vector;

    .line 38
    new-instance v14, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl$ValidationContextImpl;

    invoke-direct {v14, v1, v6}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl$ValidationContextImpl;-><init>(Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;Lcom/sun/org/apache/xerces/internal/impl/dv/ValidationContext;)V

    .line 39
    iget-object v15, v2, Lcom/sun/org/apache/xerces/internal/impl/dv/XSFacets;->enumAnnotations:Lcom/sun/org/apache/xerces/internal/xs/XSObjectList;

    iput-object v15, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->enumerationAnnotations:Lcom/sun/org/apache/xerces/internal/xs/XSObjectList;

    move v15, v8

    .line 40
    :goto_5
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v8

    if-ge v15, v8, :cond_b

    if-eqz v13, :cond_a

    .line 41
    invoke-virtual {v13, v15}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sun/org/apache/xerces/internal/xni/NamespaceContext;

    invoke-virtual {v14, v8}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl$ValidationContextImpl;->setNSContext(Lcom/sun/org/apache/xerces/internal/xni/NamespaceContext;)V

    .line 42
    :cond_a
    :try_start_1
    iget-object v8, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;

    invoke-virtual {v0, v15}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v12, v17

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v8, v12, v14, v7}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->validateWithInfo(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/impl/dv/ValidationContext;Lcom/sun/org/apache/xerces/internal/impl/dv/ValidatedInfo;)Lcom/sun/org/apache/xerces/internal/impl/dv/ValidatedInfo;

    move-result-object v8

    .line 43
    iget-object v12, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fEnumeration:Ljava/util/Vector;

    iget-object v11, v8, Lcom/sun/org/apache/xerces/internal/impl/dv/ValidatedInfo;->actualValue:Ljava/lang/Object;

    invoke-virtual {v12, v11}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 44
    iget-object v11, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fEnumerationType:[S

    iget-short v12, v8, Lcom/sun/org/apache/xerces/internal/impl/dv/ValidatedInfo;->actualValueType:S

    aput-short v12, v11, v15

    .line 45
    iget-object v11, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fEnumerationItemType:[Lcom/sun/org/apache/xerces/internal/xs/ShortList;

    iget-object v8, v8, Lcom/sun/org/apache/xerces/internal/impl/dv/ValidatedInfo;->itemValueTypes:Lcom/sun/org/apache/xerces/internal/xs/ShortList;

    aput-object v8, v11, v15
    :try_end_1
    .catch Lcom/sun/org/apache/xerces/internal/impl/dv/InvalidDatatypeValueException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_6

    .line 46
    :catch_1
    invoke-virtual {v0, v15}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->getBaseType()Lcom/sun/org/apache/xerces/internal/xs/XSTypeDefinition;

    move-result-object v11

    invoke-interface {v11}, Lcom/sun/org/apache/xerces/internal/xs/XSObject;->getName()Ljava/lang/String;

    move-result-object v11

    filled-new-array {v8, v11}, [Ljava/lang/Object;

    move-result-object v8

    const-string v11, "enumeration-valid-restriction"

    invoke-virtual {v1, v11, v8}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_6
    add-int/lit8 v15, v15, 0x1

    const/4 v11, 0x1

    const/4 v12, 0x2

    goto :goto_5

    .line 47
    :cond_b
    iget-short v0, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    or-int/lit16 v0, v0, 0x800

    int-to-short v0, v0

    iput-short v0, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit16 v0, v4, 0x800

    if-eqz v0, :cond_c

    .line 48
    iget-short v0, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    or-int/lit16 v0, v0, 0x800

    int-to-short v0, v0

    iput-short v0, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    :cond_c
    :goto_7
    and-int/lit8 v0, v3, 0x10

    if-eqz v0, :cond_e

    and-int/lit8 v0, v9, 0x10

    if-nez v0, :cond_d

    const-string v0, "whiteSpace"

    .line 49
    iget-object v8, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    filled-new-array {v0, v8}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v10, v0}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_8

    .line 50
    :cond_d
    iget-short v0, v2, Lcom/sun/org/apache/xerces/internal/impl/dv/XSFacets;->whiteSpace:S

    iput-short v0, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fWhiteSpace:S

    .line 51
    iget-object v0, v2, Lcom/sun/org/apache/xerces/internal/impl/dv/XSFacets;->whiteSpaceAnnotation:Lcom/sun/org/apache/xerces/internal/xs/XSAnnotation;

    iput-object v0, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->whiteSpaceAnnotation:Lcom/sun/org/apache/xerces/internal/xs/XSAnnotation;

    .line 52
    iget-short v0, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    or-int/lit8 v0, v0, 0x10

    int-to-short v0, v0

    iput-short v0, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit8 v0, v4, 0x10

    if-eqz v0, :cond_e

    .line 53
    iget-short v0, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    or-int/lit8 v0, v0, 0x10

    int-to-short v0, v0

    iput-short v0, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    :cond_e
    :goto_8
    and-int/lit8 v0, v3, 0x20

    const-string v8, "FacetValueFromBase"

    const-string v11, "FixedFacetValue"

    if-eqz v0, :cond_12

    and-int/lit8 v0, v9, 0x20

    const-string v12, "maxInclusive"

    if-nez v0, :cond_f

    .line 54
    iget-object v0, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    filled-new-array {v12, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v10, v0}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_a

    .line 55
    :cond_f
    iget-object v0, v2, Lcom/sun/org/apache/xerces/internal/impl/dv/XSFacets;->maxInclusiveAnnotation:Lcom/sun/org/apache/xerces/internal/xs/XSAnnotation;

    iput-object v0, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->maxInclusiveAnnotation:Lcom/sun/org/apache/xerces/internal/xs/XSAnnotation;

    .line 56
    :try_start_2
    iget-object v0, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;

    iget-object v13, v2, Lcom/sun/org/apache/xerces/internal/impl/dv/XSFacets;->maxInclusive:Ljava/lang/String;

    const/4 v14, 0x1

    invoke-direct {v0, v13, v6, v7, v14}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->getActualValue(Ljava/lang/Object;Lcom/sun/org/apache/xerces/internal/impl/dv/ValidationContext;Lcom/sun/org/apache/xerces/internal/impl/dv/ValidatedInfo;Z)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fMaxInclusive:Ljava/lang/Object;

    .line 57
    iget-short v0, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    or-int/lit8 v0, v0, 0x20

    int-to-short v0, v0

    iput-short v0, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit8 v0, v4, 0x20

    if-eqz v0, :cond_10

    .line 58
    iget-short v0, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    or-int/lit8 v0, v0, 0x20

    int-to-short v0, v0

    iput-short v0, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S
    :try_end_2
    .catch Lcom/sun/org/apache/xerces/internal/impl/dv/InvalidDatatypeValueException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_9

    :catch_2
    move-exception v0

    .line 59
    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/impl/dv/DatatypeException;->getKey()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/impl/dv/DatatypeException;->getArgs()[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v13, v0}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 60
    iget-object v0, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    iget-object v13, v2, Lcom/sun/org/apache/xerces/internal/impl/dv/XSFacets;->maxInclusive:Ljava/lang/String;

    iget-object v14, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;

    invoke-virtual {v14}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->getName()Ljava/lang/String;

    move-result-object v14

    filled-new-array {v0, v13, v12, v14}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v8, v0}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 61
    :cond_10
    :goto_9
    iget-object v0, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v13, v0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit8 v13, v13, 0x20

    if-eqz v13, :cond_11

    .line 62
    iget-short v13, v0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    and-int/lit8 v13, v13, 0x20

    if-eqz v13, :cond_11

    .line 63
    sget-object v13, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fDVs:[Lcom/sun/org/apache/xerces/internal/impl/dv/xs/TypeValidator;

    iget-short v14, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    aget-object v13, v13, v14

    iget-object v14, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fMaxInclusive:Ljava/lang/Object;

    iget-object v0, v0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fMaxInclusive:Ljava/lang/Object;

    invoke-virtual {v13, v14, v0}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/TypeValidator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-eqz v0, :cond_11

    .line 64
    iget-object v0, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fMaxInclusive:Ljava/lang/Object;

    iget-object v13, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;

    iget-object v13, v13, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fMaxInclusive:Ljava/lang/Object;

    iget-object v14, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    filled-new-array {v12, v0, v13, v14}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v11, v0}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 65
    :cond_11
    :try_start_3
    iget-object v0, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;

    invoke-virtual {v0, v6, v7}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->validate(Lcom/sun/org/apache/xerces/internal/impl/dv/ValidationContext;Lcom/sun/org/apache/xerces/internal/impl/dv/ValidatedInfo;)V
    :try_end_3
    .catch Lcom/sun/org/apache/xerces/internal/impl/dv/InvalidDatatypeValueException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_a

    :catch_3
    move-exception v0

    .line 66
    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/impl/dv/DatatypeException;->getKey()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/impl/dv/DatatypeException;->getArgs()[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v13, v0}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 67
    iget-object v0, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    iget-object v13, v2, Lcom/sun/org/apache/xerces/internal/impl/dv/XSFacets;->maxInclusive:Ljava/lang/String;

    iget-object v14, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;

    invoke-virtual {v14}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->getName()Ljava/lang/String;

    move-result-object v14

    filled-new-array {v0, v13, v12, v14}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v8, v0}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_12
    :goto_a
    and-int/lit8 v0, v3, 0x40

    if-eqz v0, :cond_18

    and-int/lit8 v0, v9, 0x40

    const-string v12, "maxExclusive"

    if-nez v0, :cond_13

    .line 68
    iget-object v0, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    filled-new-array {v12, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v10, v0}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_d

    .line 69
    :cond_13
    iget-object v0, v2, Lcom/sun/org/apache/xerces/internal/impl/dv/XSFacets;->maxExclusiveAnnotation:Lcom/sun/org/apache/xerces/internal/xs/XSAnnotation;

    iput-object v0, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->maxExclusiveAnnotation:Lcom/sun/org/apache/xerces/internal/xs/XSAnnotation;

    .line 70
    :try_start_4
    iget-object v0, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;

    iget-object v13, v2, Lcom/sun/org/apache/xerces/internal/impl/dv/XSFacets;->maxExclusive:Ljava/lang/String;

    const/4 v14, 0x1

    invoke-direct {v0, v13, v6, v7, v14}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->getActualValue(Ljava/lang/Object;Lcom/sun/org/apache/xerces/internal/impl/dv/ValidationContext;Lcom/sun/org/apache/xerces/internal/impl/dv/ValidatedInfo;Z)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fMaxExclusive:Ljava/lang/Object;

    .line 71
    iget-short v0, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    or-int/lit8 v0, v0, 0x40

    int-to-short v0, v0

    iput-short v0, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit8 v0, v4, 0x40

    if-eqz v0, :cond_14

    .line 72
    iget-short v0, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    or-int/lit8 v0, v0, 0x40

    int-to-short v0, v0

    iput-short v0, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S
    :try_end_4
    .catch Lcom/sun/org/apache/xerces/internal/impl/dv/InvalidDatatypeValueException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_b

    :catch_4
    move-exception v0

    .line 73
    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/impl/dv/DatatypeException;->getKey()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/impl/dv/DatatypeException;->getArgs()[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v13, v0}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 74
    iget-object v0, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    iget-object v13, v2, Lcom/sun/org/apache/xerces/internal/impl/dv/XSFacets;->maxExclusive:Ljava/lang/String;

    iget-object v14, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;

    invoke-virtual {v14}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->getName()Ljava/lang/String;

    move-result-object v14

    filled-new-array {v0, v13, v12, v14}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v8, v0}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 75
    :cond_14
    :goto_b
    iget-object v0, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v13, v0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit8 v13, v13, 0x40

    if-eqz v13, :cond_16

    .line 76
    sget-object v13, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fDVs:[Lcom/sun/org/apache/xerces/internal/impl/dv/xs/TypeValidator;

    iget-short v14, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    aget-object v13, v13, v14

    iget-object v14, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fMaxExclusive:Ljava/lang/Object;

    iget-object v0, v0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fMaxExclusive:Ljava/lang/Object;

    invoke-virtual {v13, v14, v0}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/TypeValidator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 77
    iget-object v13, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v14, v13, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    and-int/lit8 v14, v14, 0x40

    if-eqz v14, :cond_15

    if-eqz v0, :cond_15

    .line 78
    iget-object v14, v2, Lcom/sun/org/apache/xerces/internal/impl/dv/XSFacets;->maxExclusive:Ljava/lang/String;

    iget-object v13, v13, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fMaxExclusive:Ljava/lang/Object;

    iget-object v15, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    filled-new-array {v12, v14, v13, v15}, [Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v1, v11, v13}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_15
    if-nez v0, :cond_16

    const/4 v0, 0x0

    goto :goto_c

    :cond_16
    const/4 v0, 0x1

    :goto_c
    if-eqz v0, :cond_17

    .line 79
    :try_start_5
    iget-object v0, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;

    invoke-virtual {v0, v6, v7}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->validate(Lcom/sun/org/apache/xerces/internal/impl/dv/ValidationContext;Lcom/sun/org/apache/xerces/internal/impl/dv/ValidatedInfo;)V
    :try_end_5
    .catch Lcom/sun/org/apache/xerces/internal/impl/dv/InvalidDatatypeValueException; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_d

    :catch_5
    move-exception v0

    .line 80
    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/impl/dv/DatatypeException;->getKey()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/impl/dv/DatatypeException;->getArgs()[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v13, v0}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 81
    iget-object v0, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    iget-object v13, v2, Lcom/sun/org/apache/xerces/internal/impl/dv/XSFacets;->maxExclusive:Ljava/lang/String;

    iget-object v14, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;

    invoke-virtual {v14}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->getName()Ljava/lang/String;

    move-result-object v14

    filled-new-array {v0, v13, v12, v14}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v8, v0}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_d

    .line 82
    :cond_17
    iget-object v0, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v12, v0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit8 v12, v12, 0x20

    if-eqz v12, :cond_18

    .line 83
    sget-object v12, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fDVs:[Lcom/sun/org/apache/xerces/internal/impl/dv/xs/TypeValidator;

    iget-short v13, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    aget-object v12, v12, v13

    iget-object v13, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fMaxExclusive:Ljava/lang/Object;

    iget-object v0, v0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fMaxInclusive:Ljava/lang/Object;

    invoke-virtual {v12, v13, v0}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/TypeValidator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-lez v0, :cond_18

    .line 84
    iget-object v0, v2, Lcom/sun/org/apache/xerces/internal/impl/dv/XSFacets;->maxExclusive:Ljava/lang/String;

    iget-object v12, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;

    iget-object v12, v12, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fMaxInclusive:Ljava/lang/Object;

    filled-new-array {v0, v12}, [Ljava/lang/Object;

    move-result-object v0

    const-string v12, "maxExclusive-valid-restriction.2"

    invoke-virtual {v1, v12, v0}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_18
    :goto_d
    and-int/lit16 v0, v3, 0x80

    if-eqz v0, :cond_1e

    and-int/lit16 v0, v9, 0x80

    const-string v12, "minExclusive"

    if-nez v0, :cond_19

    .line 85
    iget-object v0, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    filled-new-array {v12, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v10, v0}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_10

    .line 86
    :cond_19
    iget-object v0, v2, Lcom/sun/org/apache/xerces/internal/impl/dv/XSFacets;->minExclusiveAnnotation:Lcom/sun/org/apache/xerces/internal/xs/XSAnnotation;

    iput-object v0, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->minExclusiveAnnotation:Lcom/sun/org/apache/xerces/internal/xs/XSAnnotation;

    .line 87
    :try_start_6
    iget-object v0, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;

    iget-object v13, v2, Lcom/sun/org/apache/xerces/internal/impl/dv/XSFacets;->minExclusive:Ljava/lang/String;

    const/4 v14, 0x1

    invoke-direct {v0, v13, v6, v7, v14}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->getActualValue(Ljava/lang/Object;Lcom/sun/org/apache/xerces/internal/impl/dv/ValidationContext;Lcom/sun/org/apache/xerces/internal/impl/dv/ValidatedInfo;Z)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fMinExclusive:Ljava/lang/Object;

    .line 88
    iget-short v0, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    or-int/lit16 v0, v0, 0x80

    int-to-short v0, v0

    iput-short v0, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit16 v0, v4, 0x80

    if-eqz v0, :cond_1a

    .line 89
    iget-short v0, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    or-int/lit16 v0, v0, 0x80

    int-to-short v0, v0

    iput-short v0, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S
    :try_end_6
    .catch Lcom/sun/org/apache/xerces/internal/impl/dv/InvalidDatatypeValueException; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_e

    :catch_6
    move-exception v0

    .line 90
    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/impl/dv/DatatypeException;->getKey()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/impl/dv/DatatypeException;->getArgs()[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v13, v0}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 91
    iget-object v0, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    iget-object v13, v2, Lcom/sun/org/apache/xerces/internal/impl/dv/XSFacets;->minExclusive:Ljava/lang/String;

    iget-object v14, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;

    invoke-virtual {v14}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->getName()Ljava/lang/String;

    move-result-object v14

    filled-new-array {v0, v13, v12, v14}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v8, v0}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 92
    :cond_1a
    :goto_e
    iget-object v0, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v13, v0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit16 v13, v13, 0x80

    if-eqz v13, :cond_1c

    .line 93
    sget-object v13, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fDVs:[Lcom/sun/org/apache/xerces/internal/impl/dv/xs/TypeValidator;

    iget-short v14, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    aget-object v13, v13, v14

    iget-object v14, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fMinExclusive:Ljava/lang/Object;

    iget-object v0, v0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fMinExclusive:Ljava/lang/Object;

    invoke-virtual {v13, v14, v0}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/TypeValidator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 94
    iget-object v13, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v14, v13, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    and-int/lit16 v14, v14, 0x80

    if-eqz v14, :cond_1b

    if-eqz v0, :cond_1b

    .line 95
    iget-object v14, v2, Lcom/sun/org/apache/xerces/internal/impl/dv/XSFacets;->minExclusive:Ljava/lang/String;

    iget-object v13, v13, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fMinExclusive:Ljava/lang/Object;

    iget-object v15, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    filled-new-array {v12, v14, v13, v15}, [Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v1, v11, v13}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1b
    if-nez v0, :cond_1c

    const/16 v16, 0x0

    goto :goto_f

    :cond_1c
    const/16 v16, 0x1

    :goto_f
    if-eqz v16, :cond_1d

    .line 96
    :try_start_7
    iget-object v0, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;

    invoke-virtual {v0, v6, v7}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->validate(Lcom/sun/org/apache/xerces/internal/impl/dv/ValidationContext;Lcom/sun/org/apache/xerces/internal/impl/dv/ValidatedInfo;)V
    :try_end_7
    .catch Lcom/sun/org/apache/xerces/internal/impl/dv/InvalidDatatypeValueException; {:try_start_7 .. :try_end_7} :catch_7

    goto :goto_10

    :catch_7
    move-exception v0

    .line 97
    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/impl/dv/DatatypeException;->getKey()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/impl/dv/DatatypeException;->getArgs()[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v13, v0}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 98
    iget-object v0, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    iget-object v13, v2, Lcom/sun/org/apache/xerces/internal/impl/dv/XSFacets;->minExclusive:Ljava/lang/String;

    iget-object v14, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;

    invoke-virtual {v14}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->getName()Ljava/lang/String;

    move-result-object v14

    filled-new-array {v0, v13, v12, v14}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v8, v0}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_10

    .line 99
    :cond_1d
    iget-object v0, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v12, v0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit16 v12, v12, 0x100

    if-eqz v12, :cond_1e

    .line 100
    sget-object v12, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fDVs:[Lcom/sun/org/apache/xerces/internal/impl/dv/xs/TypeValidator;

    iget-short v13, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    aget-object v12, v12, v13

    iget-object v13, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fMinExclusive:Ljava/lang/Object;

    iget-object v0, v0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fMinInclusive:Ljava/lang/Object;

    invoke-virtual {v12, v13, v0}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/TypeValidator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_1e

    .line 101
    iget-object v0, v2, Lcom/sun/org/apache/xerces/internal/impl/dv/XSFacets;->minExclusive:Ljava/lang/String;

    iget-object v12, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;

    iget-object v12, v12, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fMinInclusive:Ljava/lang/Object;

    filled-new-array {v0, v12}, [Ljava/lang/Object;

    move-result-object v0

    const-string v12, "minExclusive-valid-restriction.3"

    invoke-virtual {v1, v12, v0}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1e
    :goto_10
    and-int/lit16 v0, v3, 0x100

    if-eqz v0, :cond_22

    and-int/lit16 v0, v9, 0x100

    const-string v12, "minInclusive"

    if-nez v0, :cond_1f

    .line 102
    iget-object v0, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    filled-new-array {v12, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v10, v0}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_12

    .line 103
    :cond_1f
    iget-object v0, v2, Lcom/sun/org/apache/xerces/internal/impl/dv/XSFacets;->minInclusiveAnnotation:Lcom/sun/org/apache/xerces/internal/xs/XSAnnotation;

    iput-object v0, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->minInclusiveAnnotation:Lcom/sun/org/apache/xerces/internal/xs/XSAnnotation;

    .line 104
    :try_start_8
    iget-object v0, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;

    iget-object v13, v2, Lcom/sun/org/apache/xerces/internal/impl/dv/XSFacets;->minInclusive:Ljava/lang/String;

    const/4 v14, 0x1

    invoke-direct {v0, v13, v6, v7, v14}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->getActualValue(Ljava/lang/Object;Lcom/sun/org/apache/xerces/internal/impl/dv/ValidationContext;Lcom/sun/org/apache/xerces/internal/impl/dv/ValidatedInfo;Z)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fMinInclusive:Ljava/lang/Object;

    .line 105
    iget-short v0, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    or-int/lit16 v0, v0, 0x100

    int-to-short v0, v0

    iput-short v0, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit16 v0, v4, 0x100

    if-eqz v0, :cond_20

    .line 106
    iget-short v0, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    or-int/lit16 v0, v0, 0x100

    int-to-short v0, v0

    iput-short v0, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S
    :try_end_8
    .catch Lcom/sun/org/apache/xerces/internal/impl/dv/InvalidDatatypeValueException; {:try_start_8 .. :try_end_8} :catch_8

    goto :goto_11

    :catch_8
    move-exception v0

    .line 107
    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/impl/dv/DatatypeException;->getKey()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/impl/dv/DatatypeException;->getArgs()[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v13, v0}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 108
    iget-object v0, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    iget-object v13, v2, Lcom/sun/org/apache/xerces/internal/impl/dv/XSFacets;->minInclusive:Ljava/lang/String;

    iget-object v14, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;

    invoke-virtual {v14}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->getName()Ljava/lang/String;

    move-result-object v14

    filled-new-array {v0, v13, v12, v14}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v8, v0}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 109
    :cond_20
    :goto_11
    iget-object v0, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v13, v0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit16 v13, v13, 0x100

    if-eqz v13, :cond_21

    .line 110
    iget-short v13, v0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    and-int/lit16 v13, v13, 0x100

    if-eqz v13, :cond_21

    .line 111
    sget-object v13, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fDVs:[Lcom/sun/org/apache/xerces/internal/impl/dv/xs/TypeValidator;

    iget-short v14, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    aget-object v13, v13, v14

    iget-object v14, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fMinInclusive:Ljava/lang/Object;

    iget-object v0, v0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fMinInclusive:Ljava/lang/Object;

    invoke-virtual {v13, v14, v0}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/TypeValidator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-eqz v0, :cond_21

    .line 112
    iget-object v0, v2, Lcom/sun/org/apache/xerces/internal/impl/dv/XSFacets;->minInclusive:Ljava/lang/String;

    iget-object v13, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;

    iget-object v13, v13, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fMinInclusive:Ljava/lang/Object;

    iget-object v14, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    filled-new-array {v12, v0, v13, v14}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v11, v0}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 113
    :cond_21
    :try_start_9
    iget-object v0, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;

    invoke-virtual {v0, v6, v7}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->validate(Lcom/sun/org/apache/xerces/internal/impl/dv/ValidationContext;Lcom/sun/org/apache/xerces/internal/impl/dv/ValidatedInfo;)V
    :try_end_9
    .catch Lcom/sun/org/apache/xerces/internal/impl/dv/InvalidDatatypeValueException; {:try_start_9 .. :try_end_9} :catch_9

    goto :goto_12

    :catch_9
    move-exception v0

    .line 114
    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/impl/dv/DatatypeException;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/impl/dv/DatatypeException;->getArgs()[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v6, v0}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 115
    iget-object v0, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    iget-object v6, v2, Lcom/sun/org/apache/xerces/internal/impl/dv/XSFacets;->minInclusive:Ljava/lang/String;

    iget-object v7, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;

    invoke-virtual {v7}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->getName()Ljava/lang/String;

    move-result-object v7

    filled-new-array {v0, v6, v12, v7}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v8, v0}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_22
    :goto_12
    and-int/lit16 v0, v3, 0x200

    if-eqz v0, :cond_24

    and-int/lit16 v0, v9, 0x200

    if-nez v0, :cond_23

    const-string v0, "totalDigits"

    .line 116
    iget-object v6, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    filled-new-array {v0, v6}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v10, v0}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_13

    .line 117
    :cond_23
    iget-object v0, v2, Lcom/sun/org/apache/xerces/internal/impl/dv/XSFacets;->totalDigitsAnnotation:Lcom/sun/org/apache/xerces/internal/xs/XSAnnotation;

    iput-object v0, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->totalDigitsAnnotation:Lcom/sun/org/apache/xerces/internal/xs/XSAnnotation;

    .line 118
    iget v0, v2, Lcom/sun/org/apache/xerces/internal/impl/dv/XSFacets;->totalDigits:I

    iput v0, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fTotalDigits:I

    .line 119
    iget-short v0, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    or-int/lit16 v0, v0, 0x200

    int-to-short v0, v0

    iput-short v0, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit16 v0, v4, 0x200

    if-eqz v0, :cond_24

    .line 120
    iget-short v0, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    or-int/lit16 v0, v0, 0x200

    int-to-short v0, v0

    iput-short v0, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    :cond_24
    :goto_13
    and-int/lit16 v0, v3, 0x400

    if-eqz v0, :cond_26

    and-int/lit16 v0, v9, 0x400

    if-nez v0, :cond_25

    const-string v0, "fractionDigits"

    .line 121
    iget-object v2, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v10, v0}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_14

    .line 122
    :cond_25
    iget v0, v2, Lcom/sun/org/apache/xerces/internal/impl/dv/XSFacets;->fractionDigits:I

    iput v0, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fFractionDigits:I

    .line 123
    iget-object v0, v2, Lcom/sun/org/apache/xerces/internal/impl/dv/XSFacets;->fractionDigitsAnnotation:Lcom/sun/org/apache/xerces/internal/xs/XSAnnotation;

    iput-object v0, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fractionDigitsAnnotation:Lcom/sun/org/apache/xerces/internal/xs/XSAnnotation;

    .line 124
    iget-short v0, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    or-int/lit16 v0, v0, 0x400

    int-to-short v0, v0

    iput-short v0, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit16 v0, v4, 0x400

    if-eqz v0, :cond_26

    .line 125
    iget-short v0, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    or-int/lit16 v0, v0, 0x400

    int-to-short v0, v0

    iput-short v0, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    :cond_26
    :goto_14
    if-eqz v5, :cond_27

    .line 126
    iput-short v5, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fPatternType:S

    .line 127
    :cond_27
    iget-short v0, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    if-eqz v0, :cond_46

    and-int/lit8 v2, v0, 0x1

    if-eqz v2, :cond_2a

    and-int/lit8 v2, v0, 0x2

    if-eqz v2, :cond_29

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_28

    .line 128
    iget-object v0, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    iget v2, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fLength:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    iget v3, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fMinLength:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    iget v4, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fMaxLength:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    filled-new-array {v0, v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "length-minLength-maxLength.a"

    invoke-virtual {v1, v2, v0}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_15

    .line 129
    :cond_28
    iget-object v0, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    iget v2, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fLength:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    iget v3, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fMinLength:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v0, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "length-minLength-maxLength.b"

    invoke-virtual {v1, v2, v0}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_15

    :cond_29
    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2a

    .line 130
    iget-object v0, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    iget v2, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fLength:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    iget v3, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fMaxLength:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v0, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "length-minLength-maxLength.c"

    invoke-virtual {v1, v2, v0}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 131
    :cond_2a
    :goto_15
    iget-short v0, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit8 v2, v0, 0x2

    const-string v3, "minLength-less-than-equal-to-maxLength"

    if-eqz v2, :cond_2b

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2b

    .line 132
    iget v0, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fMinLength:I

    iget v2, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fMaxLength:I

    if-le v0, v2, :cond_2b

    .line 133
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iget v2, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fMaxLength:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v4, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    filled-new-array {v0, v2, v4}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 134
    :cond_2b
    iget-short v0, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit8 v2, v0, 0x40

    if-eqz v2, :cond_2c

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_2c

    .line 135
    iget-object v0, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fMaxInclusive:Ljava/lang/Object;

    iget-object v2, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fMaxExclusive:Ljava/lang/Object;

    iget-object v4, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    filled-new-array {v0, v2, v4}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "maxInclusive-maxExclusive"

    invoke-virtual {v1, v2, v0}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 136
    :cond_2c
    iget-short v0, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit16 v2, v0, 0x80

    if-eqz v2, :cond_2d

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_2d

    .line 137
    iget-object v0, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fMinInclusive:Ljava/lang/Object;

    iget-object v2, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fMinExclusive:Ljava/lang/Object;

    iget-object v4, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    filled-new-array {v0, v2, v4}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "minInclusive-minExclusive"

    invoke-virtual {v1, v2, v0}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 138
    :cond_2d
    iget-short v0, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit8 v2, v0, 0x20

    const/4 v4, -0x1

    if-eqz v2, :cond_2e

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_2e

    .line 139
    sget-object v0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fDVs:[Lcom/sun/org/apache/xerces/internal/impl/dv/xs/TypeValidator;

    iget-short v2, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    aget-object v0, v0, v2

    iget-object v2, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fMinInclusive:Ljava/lang/Object;

    iget-object v5, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fMaxInclusive:Ljava/lang/Object;

    invoke-virtual {v0, v2, v5}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/TypeValidator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-eq v0, v4, :cond_2e

    if-eqz v0, :cond_2e

    .line 140
    iget-object v0, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fMinInclusive:Ljava/lang/Object;

    iget-object v2, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fMaxInclusive:Ljava/lang/Object;

    iget-object v5, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    filled-new-array {v0, v2, v5}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "minInclusive-less-than-equal-to-maxInclusive"

    invoke-virtual {v1, v2, v0}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 141
    :cond_2e
    iget-short v0, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit8 v2, v0, 0x40

    if-eqz v2, :cond_2f

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_2f

    .line 142
    sget-object v0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fDVs:[Lcom/sun/org/apache/xerces/internal/impl/dv/xs/TypeValidator;

    iget-short v2, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    aget-object v0, v0, v2

    iget-object v2, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fMinExclusive:Ljava/lang/Object;

    iget-object v5, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fMaxExclusive:Ljava/lang/Object;

    invoke-virtual {v0, v2, v5}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/TypeValidator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-eq v0, v4, :cond_2f

    if-eqz v0, :cond_2f

    .line 143
    iget-object v0, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fMinExclusive:Ljava/lang/Object;

    iget-object v2, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fMaxExclusive:Ljava/lang/Object;

    iget-object v5, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    filled-new-array {v0, v2, v5}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "minExclusive-less-than-equal-to-maxExclusive"

    invoke-virtual {v1, v2, v0}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 144
    :cond_2f
    iget-short v0, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit8 v2, v0, 0x20

    if-eqz v2, :cond_30

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_30

    .line 145
    sget-object v0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fDVs:[Lcom/sun/org/apache/xerces/internal/impl/dv/xs/TypeValidator;

    iget-short v2, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    aget-object v0, v0, v2

    iget-object v2, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fMinExclusive:Ljava/lang/Object;

    iget-object v5, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fMaxInclusive:Ljava/lang/Object;

    invoke-virtual {v0, v2, v5}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/TypeValidator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-eq v0, v4, :cond_30

    .line 146
    iget-object v0, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fMinExclusive:Ljava/lang/Object;

    iget-object v2, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fMaxInclusive:Ljava/lang/Object;

    iget-object v5, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    filled-new-array {v0, v2, v5}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "minExclusive-less-than-maxInclusive"

    invoke-virtual {v1, v2, v0}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 147
    :cond_30
    iget-short v0, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit8 v2, v0, 0x40

    if-eqz v2, :cond_31

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_31

    .line 148
    sget-object v0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fDVs:[Lcom/sun/org/apache/xerces/internal/impl/dv/xs/TypeValidator;

    iget-short v2, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    aget-object v0, v0, v2

    iget-object v2, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fMinInclusive:Ljava/lang/Object;

    iget-object v5, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fMaxExclusive:Ljava/lang/Object;

    invoke-virtual {v0, v2, v5}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/TypeValidator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-eq v0, v4, :cond_31

    .line 149
    iget-object v0, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fMinInclusive:Ljava/lang/Object;

    iget-object v2, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fMaxExclusive:Ljava/lang/Object;

    iget-object v4, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    filled-new-array {v0, v2, v4}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "minInclusive-less-than-maxExclusive"

    invoke-virtual {v1, v2, v0}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 150
    :cond_31
    iget-short v0, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit16 v2, v0, 0x400

    if-eqz v2, :cond_32

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_32

    .line 151
    iget v0, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fFractionDigits:I

    iget v2, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fTotalDigits:I

    if-le v0, v2, :cond_32

    .line 152
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iget v2, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fTotalDigits:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v4, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    filled-new-array {v0, v2, v4}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "fractionDigits-totalDigits"

    invoke-virtual {v1, v2, v0}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 153
    :cond_32
    iget-short v0, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit8 v2, v0, 0x1

    if-eqz v2, :cond_35

    .line 154
    iget-object v0, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v2, v0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    const/4 v4, 0x2

    and-int/2addr v2, v4

    if-eqz v2, :cond_33

    iget v2, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fLength:I

    iget v0, v0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fMinLength:I

    if-ge v2, v0, :cond_33

    .line 155
    iget-object v0, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v4, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;

    iget v4, v4, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fMinLength:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    filled-new-array {v0, v2, v4}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "length-minLength-maxLength.d"

    invoke-virtual {v1, v2, v0}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 156
    :cond_33
    iget-object v0, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v2, v0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_34

    iget v2, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fLength:I

    iget v0, v0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fMaxLength:I

    if-le v2, v0, :cond_34

    .line 157
    iget-object v0, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v4, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;

    iget v4, v4, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fMaxLength:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    filled-new-array {v0, v2, v4}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "length-minLength-maxLength.e"

    invoke-virtual {v1, v2, v0}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 158
    :cond_34
    iget-object v0, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v2, v0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    const/4 v4, 0x1

    and-int/2addr v2, v4

    if-eqz v2, :cond_37

    .line 159
    iget v2, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fLength:I

    iget v0, v0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fLength:I

    if-eq v2, v0, :cond_37

    .line 160
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;

    iget v2, v2, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fLength:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v4, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    filled-new-array {v0, v2, v4}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "length-valid-restriction"

    invoke-virtual {v1, v2, v0}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_16

    .line 161
    :cond_35
    iget-object v2, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v4, v2, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    const/4 v5, 0x1

    and-int/2addr v4, v5

    if-eqz v4, :cond_37

    const/4 v4, 0x2

    and-int/2addr v0, v4

    if-eqz v0, :cond_36

    .line 162
    iget v0, v2, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fLength:I

    iget v2, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fMinLength:I

    if-ge v0, v2, :cond_36

    .line 163
    iget-object v2, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iget v4, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fMinLength:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    filled-new-array {v2, v0, v4}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "length-minLength-maxLength.d"

    invoke-virtual {v1, v2, v0}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 164
    :cond_36
    iget-short v0, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_37

    iget-object v0, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;

    iget v0, v0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fLength:I

    iget v2, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fMaxLength:I

    if-le v0, v2, :cond_37

    .line 165
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iget v2, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fMaxLength:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v1, v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "length-minLength-maxLength.e"

    invoke-virtual {v1, v2, v0}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 166
    :cond_37
    :goto_16
    iget-short v0, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    const/4 v2, 0x2

    and-int/2addr v0, v2

    if-eqz v0, :cond_3a

    .line 167
    iget-object v0, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v2, v0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit8 v4, v2, 0x4

    if-eqz v4, :cond_38

    .line 168
    iget v2, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fMinLength:I

    iget v0, v0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fMaxLength:I

    if-le v2, v0, :cond_3a

    .line 169
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;

    iget v2, v2, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fMaxLength:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v4, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    filled-new-array {v0, v2, v4}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_17

    :cond_38
    const/4 v4, 0x2

    and-int/2addr v2, v4

    if-eqz v2, :cond_3a

    .line 170
    iget-short v2, v0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    and-int/2addr v2, v4

    if-eqz v2, :cond_39

    iget v2, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fMinLength:I

    iget v0, v0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fMinLength:I

    if-eq v2, v0, :cond_39

    .line 171
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;

    iget v2, v2, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fMinLength:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v4, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    const-string v5, "minLength"

    filled-new-array {v5, v0, v2, v4}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v11, v0}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 172
    :cond_39
    iget v0, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fMinLength:I

    iget-object v2, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;

    iget v2, v2, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fMinLength:I

    if-ge v0, v2, :cond_3a

    .line 173
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;

    iget v2, v2, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fMinLength:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v4, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    filled-new-array {v0, v2, v4}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "minLength-valid-restriction"

    invoke-virtual {v1, v2, v0}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 174
    :cond_3a
    :goto_17
    iget-short v0, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_3b

    iget-object v0, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v2, v0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    const/4 v4, 0x2

    and-int/2addr v2, v4

    if-eqz v2, :cond_3b

    .line 175
    iget v2, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fMaxLength:I

    iget v0, v0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fMinLength:I

    if-ge v2, v0, :cond_3b

    .line 176
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iget v2, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fMaxLength:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 177
    :cond_3b
    iget-short v0, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_3d

    .line 178
    iget-object v0, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v2, v0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_3d

    .line 179
    iget-short v2, v0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_3c

    iget v2, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fMaxLength:I

    iget v0, v0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fMaxLength:I

    if-eq v2, v0, :cond_3c

    .line 180
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;

    iget v2, v2, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fMaxLength:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    const-string v4, "maxLength"

    filled-new-array {v4, v0, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v11, v0}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 181
    :cond_3c
    iget v0, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fMaxLength:I

    iget-object v2, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;

    iget v2, v2, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fMaxLength:I

    if-le v0, v2, :cond_3d

    .line 182
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;

    iget v2, v2, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fMaxLength:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    filled-new-array {v0, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "maxLength-valid-restriction"

    invoke-virtual {v1, v2, v0}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 183
    :cond_3d
    iget-short v0, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_3f

    .line 184
    iget-object v0, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v2, v0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit16 v2, v2, 0x200

    if-eqz v2, :cond_3f

    .line 185
    iget-short v2, v0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    and-int/lit16 v2, v2, 0x200

    if-eqz v2, :cond_3e

    iget v2, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fTotalDigits:I

    iget v0, v0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fTotalDigits:I

    if-eq v2, v0, :cond_3e

    .line 186
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;

    iget v2, v2, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fTotalDigits:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    const-string v4, "totalDigits"

    filled-new-array {v4, v0, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v11, v0}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 187
    :cond_3e
    iget v0, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fTotalDigits:I

    iget-object v2, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;

    iget v2, v2, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fTotalDigits:I

    if-le v0, v2, :cond_3f

    .line 188
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;

    iget v2, v2, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fTotalDigits:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    filled-new-array {v0, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "totalDigits-valid-restriction"

    invoke-virtual {v1, v2, v0}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 189
    :cond_3f
    iget-short v0, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_40

    .line 190
    iget-object v0, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v2, v0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit16 v2, v2, 0x200

    if-eqz v2, :cond_40

    .line 191
    iget v2, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fFractionDigits:I

    iget v0, v0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fTotalDigits:I

    if-le v2, v0, :cond_40

    .line 192
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iget v2, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fTotalDigits:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    filled-new-array {v0, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "fractionDigits-totalDigits"

    invoke-virtual {v1, v2, v0}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 193
    :cond_40
    iget-short v0, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_42

    .line 194
    iget-object v0, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v2, v0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit16 v2, v2, 0x400

    if-eqz v2, :cond_42

    .line 195
    iget-short v2, v0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    and-int/lit16 v2, v2, 0x400

    if-eqz v2, :cond_41

    iget v2, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fFractionDigits:I

    iget v0, v0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fFractionDigits:I

    if-eq v2, v0, :cond_41

    .line 196
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;

    iget v2, v2, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fFractionDigits:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    const-string v4, "fractionDigits"

    filled-new-array {v4, v0, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v11, v0}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 197
    :cond_41
    iget v0, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fFractionDigits:I

    iget-object v2, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;

    iget v2, v2, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fFractionDigits:I

    if-le v0, v2, :cond_42

    .line 198
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;

    iget v2, v2, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fFractionDigits:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    filled-new-array {v0, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "fractionDigits-valid-restriction"

    invoke-virtual {v1, v2, v0}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 199
    :cond_42
    iget-short v0, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_46

    iget-object v0, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v2, v0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_46

    .line 200
    iget-short v2, v0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_43

    iget-short v2, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fWhiteSpace:S

    iget-short v0, v0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fWhiteSpace:S

    if-eq v2, v0, :cond_43

    .line 201
    invoke-direct {v1, v2}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->whiteSpaceValue(S)Ljava/lang/String;

    move-result-object v0

    iget-object v2, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v2, v2, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fWhiteSpace:S

    invoke-direct {v1, v2}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->whiteSpaceValue(S)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    const-string v4, "whiteSpace"

    filled-new-array {v4, v0, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v11, v0}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 202
    :cond_43
    iget-short v0, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fWhiteSpace:S

    if-nez v0, :cond_44

    iget-object v0, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v0, v0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fWhiteSpace:S

    const/4 v2, 0x2

    if-ne v0, v2, :cond_44

    .line 203
    iget-object v0, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    const-string v2, "preserve"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "whiteSpace-valid-restriction.1"

    invoke-virtual {v1, v2, v0}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 204
    :cond_44
    iget-short v0, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fWhiteSpace:S

    const/4 v2, 0x1

    if-ne v0, v2, :cond_45

    iget-object v0, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v0, v0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fWhiteSpace:S

    const/4 v2, 0x2

    if-ne v0, v2, :cond_45

    .line 205
    iget-object v0, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    const-string v2, "replace"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "whiteSpace-valid-restriction.1"

    invoke-virtual {v1, v2, v0}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 206
    :cond_45
    iget-short v0, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fWhiteSpace:S

    if-nez v0, :cond_46

    iget-object v0, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v0, v0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fWhiteSpace:S

    const/4 v2, 0x1

    if-ne v0, v2, :cond_46

    .line 207
    iget-object v0, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "whiteSpace-valid-restriction.2"

    invoke-virtual {v1, v2, v0}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 208
    :cond_46
    iget-short v0, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit8 v2, v0, 0x1

    if-nez v2, :cond_47

    iget-object v2, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v3, v2, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    const/4 v4, 0x1

    and-int/2addr v3, v4

    if-eqz v3, :cond_47

    or-int/2addr v0, v4

    int-to-short v0, v0

    .line 209
    iput-short v0, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    .line 210
    iget v0, v2, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fLength:I

    iput v0, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fLength:I

    .line 211
    iget-object v0, v2, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->lengthAnnotation:Lcom/sun/org/apache/xerces/internal/xs/XSAnnotation;

    iput-object v0, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->lengthAnnotation:Lcom/sun/org/apache/xerces/internal/xs/XSAnnotation;

    .line 212
    :cond_47
    iget-short v0, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit8 v2, v0, 0x2

    if-nez v2, :cond_48

    iget-object v2, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v3, v2, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    const/4 v4, 0x2

    and-int/2addr v3, v4

    if-eqz v3, :cond_48

    or-int/2addr v0, v4

    int-to-short v0, v0

    .line 213
    iput-short v0, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    .line 214
    iget v0, v2, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fMinLength:I

    iput v0, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fMinLength:I

    .line 215
    iget-object v0, v2, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->minLengthAnnotation:Lcom/sun/org/apache/xerces/internal/xs/XSAnnotation;

    iput-object v0, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->minLengthAnnotation:Lcom/sun/org/apache/xerces/internal/xs/XSAnnotation;

    .line 216
    :cond_48
    iget-short v0, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit8 v2, v0, 0x4

    if-nez v2, :cond_49

    iget-object v2, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v3, v2, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_49

    or-int/lit8 v0, v0, 0x4

    int-to-short v0, v0

    .line 217
    iput-short v0, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    .line 218
    iget v0, v2, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fMaxLength:I

    iput v0, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fMaxLength:I

    .line 219
    iget-object v0, v2, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->maxLengthAnnotation:Lcom/sun/org/apache/xerces/internal/xs/XSAnnotation;

    iput-object v0, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->maxLengthAnnotation:Lcom/sun/org/apache/xerces/internal/xs/XSAnnotation;

    .line 220
    :cond_49
    iget-object v0, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v2, v0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_4c

    .line 221
    iget-short v2, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit8 v3, v2, 0x8

    if-nez v3, :cond_4a

    .line 222
    iget-object v3, v0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fPattern:Ljava/util/Vector;

    iput-object v3, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fPattern:Ljava/util/Vector;

    .line 223
    iget-object v0, v0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fPatternStr:Ljava/util/Vector;

    iput-object v0, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fPatternStr:Ljava/util/Vector;

    or-int/lit8 v0, v2, 0x8

    int-to-short v0, v0

    .line 224
    iput-short v0, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    goto :goto_1a

    .line 225
    :cond_4a
    iget-object v0, v0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fPattern:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    :goto_18
    if-ltz v0, :cond_4b

    .line 226
    iget-object v2, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fPattern:Ljava/util/Vector;

    iget-object v3, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;

    iget-object v3, v3, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fPattern:Ljava/util/Vector;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 227
    iget-object v2, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fPatternStr:Ljava/util/Vector;

    iget-object v3, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;

    iget-object v3, v3, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fPatternStr:Ljava/util/Vector;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_18

    .line 228
    :cond_4b
    iget-object v0, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;

    iget-object v0, v0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->patternAnnotations:Lcom/sun/org/apache/xerces/internal/impl/xs/util/XSObjectListImpl;

    if-eqz v0, :cond_4c

    .line 229
    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/impl/xs/util/XSObjectListImpl;->getLength()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    :goto_19
    if-ltz v0, :cond_4c

    .line 230
    iget-object v2, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->patternAnnotations:Lcom/sun/org/apache/xerces/internal/impl/xs/util/XSObjectListImpl;

    iget-object v3, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;

    iget-object v3, v3, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->patternAnnotations:Lcom/sun/org/apache/xerces/internal/impl/xs/util/XSObjectListImpl;

    invoke-virtual {v3, v0}, Lcom/sun/org/apache/xerces/internal/impl/xs/util/XSObjectListImpl;->item(I)Lcom/sun/org/apache/xerces/internal/xs/XSObject;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sun/org/apache/xerces/internal/impl/xs/util/XSObjectListImpl;->add(Lcom/sun/org/apache/xerces/internal/xs/XSObject;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_19

    .line 231
    :cond_4c
    :goto_1a
    iget-short v0, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit8 v2, v0, 0x10

    if-nez v2, :cond_4d

    iget-object v2, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v3, v2, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit8 v3, v3, 0x10

    if-eqz v3, :cond_4d

    or-int/lit8 v0, v0, 0x10

    int-to-short v0, v0

    .line 232
    iput-short v0, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    .line 233
    iget-short v0, v2, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fWhiteSpace:S

    iput-short v0, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fWhiteSpace:S

    .line 234
    iget-object v0, v2, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->whiteSpaceAnnotation:Lcom/sun/org/apache/xerces/internal/xs/XSAnnotation;

    iput-object v0, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->whiteSpaceAnnotation:Lcom/sun/org/apache/xerces/internal/xs/XSAnnotation;

    .line 235
    :cond_4d
    iget-short v0, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit16 v2, v0, 0x800

    if-nez v2, :cond_4e

    iget-object v2, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v3, v2, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit16 v3, v3, 0x800

    if-eqz v3, :cond_4e

    or-int/lit16 v0, v0, 0x800

    int-to-short v0, v0

    .line 236
    iput-short v0, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    .line 237
    iget-object v0, v2, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fEnumeration:Ljava/util/Vector;

    iput-object v0, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fEnumeration:Ljava/util/Vector;

    .line 238
    iget-object v0, v2, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->enumerationAnnotations:Lcom/sun/org/apache/xerces/internal/xs/XSObjectList;

    iput-object v0, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->enumerationAnnotations:Lcom/sun/org/apache/xerces/internal/xs/XSObjectList;

    .line 239
    :cond_4e
    iget-object v0, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v2, v0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit8 v2, v2, 0x40

    if-eqz v2, :cond_4f

    iget-short v2, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit8 v3, v2, 0x40

    if-nez v3, :cond_4f

    and-int/lit8 v3, v2, 0x20

    if-nez v3, :cond_4f

    or-int/lit8 v2, v2, 0x40

    int-to-short v2, v2

    .line 240
    iput-short v2, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    .line 241
    iget-object v2, v0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fMaxExclusive:Ljava/lang/Object;

    iput-object v2, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fMaxExclusive:Ljava/lang/Object;

    .line 242
    iget-object v2, v0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->maxExclusiveAnnotation:Lcom/sun/org/apache/xerces/internal/xs/XSAnnotation;

    iput-object v2, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->maxExclusiveAnnotation:Lcom/sun/org/apache/xerces/internal/xs/XSAnnotation;

    .line 243
    :cond_4f
    iget-short v2, v0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit8 v2, v2, 0x20

    if-eqz v2, :cond_50

    iget-short v2, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit8 v3, v2, 0x40

    if-nez v3, :cond_50

    and-int/lit8 v3, v2, 0x20

    if-nez v3, :cond_50

    or-int/lit8 v2, v2, 0x20

    int-to-short v2, v2

    .line 244
    iput-short v2, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    .line 245
    iget-object v2, v0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fMaxInclusive:Ljava/lang/Object;

    iput-object v2, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fMaxInclusive:Ljava/lang/Object;

    .line 246
    iget-object v2, v0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->maxInclusiveAnnotation:Lcom/sun/org/apache/xerces/internal/xs/XSAnnotation;

    iput-object v2, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->maxInclusiveAnnotation:Lcom/sun/org/apache/xerces/internal/xs/XSAnnotation;

    .line 247
    :cond_50
    iget-short v2, v0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_51

    iget-short v2, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit16 v3, v2, 0x80

    if-nez v3, :cond_51

    and-int/lit16 v3, v2, 0x100

    if-nez v3, :cond_51

    or-int/lit16 v2, v2, 0x80

    int-to-short v2, v2

    .line 248
    iput-short v2, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    .line 249
    iget-object v2, v0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fMinExclusive:Ljava/lang/Object;

    iput-object v2, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fMinExclusive:Ljava/lang/Object;

    .line 250
    iget-object v2, v0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->minExclusiveAnnotation:Lcom/sun/org/apache/xerces/internal/xs/XSAnnotation;

    iput-object v2, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->minExclusiveAnnotation:Lcom/sun/org/apache/xerces/internal/xs/XSAnnotation;

    .line 251
    :cond_51
    iget-short v2, v0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit16 v2, v2, 0x100

    if-eqz v2, :cond_52

    iget-short v2, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit16 v3, v2, 0x80

    if-nez v3, :cond_52

    and-int/lit16 v3, v2, 0x100

    if-nez v3, :cond_52

    or-int/lit16 v2, v2, 0x100

    int-to-short v2, v2

    .line 252
    iput-short v2, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    .line 253
    iget-object v2, v0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fMinInclusive:Ljava/lang/Object;

    iput-object v2, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fMinInclusive:Ljava/lang/Object;

    .line 254
    iget-object v2, v0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->minInclusiveAnnotation:Lcom/sun/org/apache/xerces/internal/xs/XSAnnotation;

    iput-object v2, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->minInclusiveAnnotation:Lcom/sun/org/apache/xerces/internal/xs/XSAnnotation;

    .line 255
    :cond_52
    iget-short v2, v0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit16 v2, v2, 0x200

    if-eqz v2, :cond_53

    iget-short v2, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit16 v3, v2, 0x200

    if-nez v3, :cond_53

    or-int/lit16 v2, v2, 0x200

    int-to-short v2, v2

    .line 256
    iput-short v2, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    .line 257
    iget v2, v0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fTotalDigits:I

    iput v2, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fTotalDigits:I

    .line 258
    iget-object v2, v0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->totalDigitsAnnotation:Lcom/sun/org/apache/xerces/internal/xs/XSAnnotation;

    iput-object v2, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->totalDigitsAnnotation:Lcom/sun/org/apache/xerces/internal/xs/XSAnnotation;

    .line 259
    :cond_53
    iget-short v2, v0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit16 v2, v2, 0x400

    if-eqz v2, :cond_54

    iget-short v2, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit16 v3, v2, 0x400

    if-nez v3, :cond_54

    or-int/lit16 v2, v2, 0x400

    int-to-short v2, v2

    .line 260
    iput-short v2, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    .line 261
    iget v2, v0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fFractionDigits:I

    iput v2, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fFractionDigits:I

    .line 262
    iget-object v2, v0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fractionDigitsAnnotation:Lcom/sun/org/apache/xerces/internal/xs/XSAnnotation;

    iput-object v2, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fractionDigitsAnnotation:Lcom/sun/org/apache/xerces/internal/xs/XSAnnotation;

    .line 263
    :cond_54
    iget-short v2, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fPatternType:S

    if-nez v2, :cond_55

    iget-short v2, v0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fPatternType:S

    if-eqz v2, :cond_55

    .line 264
    iput-short v2, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fPatternType:S

    .line 265
    :cond_55
    iget-short v2, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    iget-short v0, v0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    or-int/2addr v0, v2

    int-to-short v0, v0

    iput-short v0, v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    .line 266
    invoke-direct/range {p0 .. p0}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->caclFundamentalFacets()V

    return-void
.end method

.method public applyFacets1(Lcom/sun/org/apache/xerces/internal/impl/dv/XSFacets;SS)V
    .locals 6

    const/4 v4, 0x0

    .line 1
    :try_start_0
    sget-object v5, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fDummyContext:Lcom/sun/org/apache/xerces/internal/impl/dv/ValidationContext;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->applyFacets(Lcom/sun/org/apache/xerces/internal/impl/dv/XSFacets;SSSLcom/sun/org/apache/xerces/internal/impl/dv/ValidationContext;)V
    :try_end_0
    .catch Lcom/sun/org/apache/xerces/internal/impl/dv/InvalidDatatypeFacetException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fIsImmutable:Z

    return-void

    .line 3
    :catch_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "internal error"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public applyFacets1(Lcom/sun/org/apache/xerces/internal/impl/dv/XSFacets;SSS)V
    .locals 6

    .line 4
    :try_start_0
    sget-object v5, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fDummyContext:Lcom/sun/org/apache/xerces/internal/impl/dv/ValidationContext;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->applyFacets(Lcom/sun/org/apache/xerces/internal/impl/dv/XSFacets;SSSLcom/sun/org/apache/xerces/internal/impl/dv/ValidationContext;)V
    :try_end_0
    .catch Lcom/sun/org/apache/xerces/internal/impl/dv/InvalidDatatypeFacetException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fIsImmutable:Z

    return-void

    .line 6
    :catch_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "internal error"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
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
    invoke-interface {p0}, Lcom/sun/org/apache/xerces/internal/xs/XSObject;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    if-nez p1, :cond_2

    invoke-interface {p0}, Lcom/sun/org/apache/xerces/internal/xs/XSObject;->getNamespace()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    :cond_2
    if-eqz p1, :cond_3

    invoke-interface {p0}, Lcom/sun/org/apache/xerces/internal/xs/XSObject;->getNamespace()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    sget-object v0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fAnySimpleType:Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;

    if-eq p0, v0, :cond_4

    invoke-interface {p0}, Lcom/sun/org/apache/xerces/internal/xs/XSTypeDefinition;->getBaseType()Lcom/sun/org/apache/xerces/internal/xs/XSTypeDefinition;

    move-result-object p0

    goto :goto_0

    :cond_4
    sget-object p1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fAnySimpleType:Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;

    if-eq p0, p1, :cond_5

    move p3, v1

    :cond_5
    return p3
.end method

.method public derivedFromType(Lcom/sun/org/apache/xerces/internal/xs/XSTypeDefinition;S)Z
    .locals 2

    const/4 p2, 0x0

    if-nez p1, :cond_0

    return p2

    :cond_0
    invoke-interface {p1}, Lcom/sun/org/apache/xerces/internal/xs/XSTypeDefinition;->getBaseType()Lcom/sun/org/apache/xerces/internal/xs/XSTypeDefinition;

    move-result-object v0

    const/4 v1, 0x1

    if-ne v0, p1, :cond_1

    return v1

    :cond_1
    :goto_0
    if-eq p0, p1, :cond_2

    sget-object v0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fAnySimpleType:Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;

    if-eq p0, v0, :cond_2

    invoke-interface {p0}, Lcom/sun/org/apache/xerces/internal/xs/XSTypeDefinition;->getBaseType()Lcom/sun/org/apache/xerces/internal/xs/XSTypeDefinition;

    move-result-object p0

    goto :goto_0

    :cond_2
    if-ne p0, p1, :cond_3

    move p2, v1

    :cond_3
    return p2
.end method

.method public getActualEnumeration()Lcom/sun/org/apache/xerces/internal/xs/datatypes/ObjectList;
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fActualEnumeration:Lcom/sun/org/apache/xerces/internal/xs/datatypes/ObjectList;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl$2;

    invoke-direct {v0, p0}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl$2;-><init>(Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;)V

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fActualEnumeration:Lcom/sun/org/apache/xerces/internal/xs/datatypes/ObjectList;

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fActualEnumeration:Lcom/sun/org/apache/xerces/internal/xs/datatypes/ObjectList;

    return-object p0
.end method

.method public getAnnotations()Lcom/sun/org/apache/xerces/internal/xs/XSObjectList;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fAnnotations:Lcom/sun/org/apache/xerces/internal/xs/XSObjectList;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/sun/org/apache/xerces/internal/impl/xs/util/XSObjectListImpl;->EMPTY_LIST:Lcom/sun/org/apache/xerces/internal/xs/XSObjectList;

    :goto_0
    return-object p0
.end method

.method public getAnonymous()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fAnonymous:Z

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

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

.method public getBaseType()Lcom/sun/org/apache/xerces/internal/xs/XSTypeDefinition;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;

    return-object p0
.end method

.method public getBounded()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fBounded:Z

    return p0
.end method

.method public getBuiltInKind()S
    .locals 0

    iget-short p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fBuiltInKind:S

    return p0
.end method

.method public getDefinedFacets()S
    .locals 2

    iget-short v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fPatternType:S

    if-eqz v0, :cond_0

    iget-short p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    or-int/lit8 p0, p0, 0x8

    :goto_0
    int-to-short p0, p0

    return p0

    :cond_0
    iget-short v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    const/16 v1, 0x18

    if-ne v0, v1, :cond_1

    iget-short p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    or-int/lit8 p0, p0, 0x8

    or-int/lit16 p0, p0, 0x400

    goto :goto_0

    :cond_1
    iget-short p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    return p0
.end method

.method public getEnumerationItemTypeList()Lcom/sun/org/apache/xerces/internal/xs/datatypes/ObjectList;
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fEnumerationItemTypeList:Lcom/sun/org/apache/xerces/internal/xs/datatypes/ObjectList;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fEnumerationItemType:[Lcom/sun/org/apache/xerces/internal/xs/ShortList;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl$3;

    invoke-direct {v0, p0}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl$3;-><init>(Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;)V

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fEnumerationItemTypeList:Lcom/sun/org/apache/xerces/internal/xs/datatypes/ObjectList;

    :cond_1
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fEnumerationItemTypeList:Lcom/sun/org/apache/xerces/internal/xs/datatypes/ObjectList;

    return-object p0
.end method

.method public getEnumerationTypeList()Lcom/sun/org/apache/xerces/internal/xs/ShortList;
    .locals 3

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fEnumerationTypeList:Lcom/sun/org/apache/xerces/internal/xs/ShortList;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fEnumerationType:[S

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v1, Lcom/sun/org/apache/xerces/internal/impl/xs/util/ShortListImpl;

    array-length v2, v0

    invoke-direct {v1, v0, v2}, Lcom/sun/org/apache/xerces/internal/impl/xs/util/ShortListImpl;-><init>([SI)V

    iput-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fEnumerationTypeList:Lcom/sun/org/apache/xerces/internal/xs/ShortList;

    :cond_1
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fEnumerationTypeList:Lcom/sun/org/apache/xerces/internal/xs/ShortList;

    return-object p0
.end method

.method public getFacets()Lcom/sun/org/apache/xerces/internal/xs/XSObjectList;
    .locals 11

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fFacets:Lcom/sun/org/apache/xerces/internal/impl/xs/util/XSObjectListImpl;

    if-nez v0, :cond_16

    iget-short v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    const/16 v1, 0x18

    if-nez v0, :cond_0

    iget-short v2, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    if-ne v2, v1, :cond_16

    :cond_0
    const/16 v2, 0xa

    new-array v2, v2, [Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl$XSFacetImpl;

    const/16 v3, 0x10

    and-int/2addr v0, v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v0, :cond_2

    new-instance v0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl$XSFacetImpl;

    sget-object v6, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->WS_FACET_STRING:[Ljava/lang/String;

    iget-short v7, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fWhiteSpace:S

    aget-object v6, v6, v7

    iget-short v7, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    and-int/2addr v7, v3

    if-eqz v7, :cond_1

    move v7, v5

    goto :goto_0

    :cond_1
    move v7, v4

    :goto_0
    iget-object v8, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->whiteSpaceAnnotation:Lcom/sun/org/apache/xerces/internal/xs/XSAnnotation;

    invoke-direct {v0, v3, v6, v7, v8}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl$XSFacetImpl;-><init>(SLjava/lang/String;ZLcom/sun/org/apache/xerces/internal/xs/XSAnnotation;)V

    aput-object v0, v2, v4

    move v0, v5

    goto :goto_1

    :cond_2
    move v0, v4

    :goto_1
    iget v3, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fLength:I

    const/4 v6, -0x1

    if-eq v3, v6, :cond_4

    new-instance v7, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl$XSFacetImpl;

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    iget-short v8, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    and-int/2addr v8, v5

    if-eqz v8, :cond_3

    move v8, v5

    goto :goto_2

    :cond_3
    move v8, v4

    :goto_2
    iget-object v9, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->lengthAnnotation:Lcom/sun/org/apache/xerces/internal/xs/XSAnnotation;

    invoke-direct {v7, v5, v3, v8, v9}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl$XSFacetImpl;-><init>(SLjava/lang/String;ZLcom/sun/org/apache/xerces/internal/xs/XSAnnotation;)V

    aput-object v7, v2, v0

    add-int/lit8 v0, v0, 0x1

    :cond_4
    iget v3, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fMinLength:I

    if-eq v3, v6, :cond_6

    new-instance v7, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl$XSFacetImpl;

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    iget-short v8, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    const/4 v9, 0x2

    and-int/2addr v8, v9

    if-eqz v8, :cond_5

    move v8, v5

    goto :goto_3

    :cond_5
    move v8, v4

    :goto_3
    iget-object v10, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->minLengthAnnotation:Lcom/sun/org/apache/xerces/internal/xs/XSAnnotation;

    invoke-direct {v7, v9, v3, v8, v10}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl$XSFacetImpl;-><init>(SLjava/lang/String;ZLcom/sun/org/apache/xerces/internal/xs/XSAnnotation;)V

    aput-object v7, v2, v0

    add-int/lit8 v0, v0, 0x1

    :cond_6
    iget v3, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fMaxLength:I

    if-eq v3, v6, :cond_8

    new-instance v7, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl$XSFacetImpl;

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    iget-short v8, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    const/4 v9, 0x4

    and-int/2addr v8, v9

    if-eqz v8, :cond_7

    move v8, v5

    goto :goto_4

    :cond_7
    move v8, v4

    :goto_4
    iget-object v10, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->maxLengthAnnotation:Lcom/sun/org/apache/xerces/internal/xs/XSAnnotation;

    invoke-direct {v7, v9, v3, v8, v10}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl$XSFacetImpl;-><init>(SLjava/lang/String;ZLcom/sun/org/apache/xerces/internal/xs/XSAnnotation;)V

    aput-object v7, v2, v0

    add-int/lit8 v0, v0, 0x1

    :cond_8
    iget v3, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fTotalDigits:I

    if-eq v3, v6, :cond_a

    new-instance v7, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl$XSFacetImpl;

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    iget-short v8, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    const/16 v9, 0x200

    and-int/2addr v8, v9

    if-eqz v8, :cond_9

    move v8, v5

    goto :goto_5

    :cond_9
    move v8, v4

    :goto_5
    iget-object v10, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->totalDigitsAnnotation:Lcom/sun/org/apache/xerces/internal/xs/XSAnnotation;

    invoke-direct {v7, v9, v3, v8, v10}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl$XSFacetImpl;-><init>(SLjava/lang/String;ZLcom/sun/org/apache/xerces/internal/xs/XSAnnotation;)V

    aput-object v7, v2, v0

    add-int/lit8 v0, v0, 0x1

    :cond_a
    iget-short v3, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    const/16 v7, 0x400

    if-ne v3, v1, :cond_b

    new-instance v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl$XSFacetImpl;

    const-string v3, "0"

    const/4 v8, 0x0

    invoke-direct {v1, v7, v3, v5, v8}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl$XSFacetImpl;-><init>(SLjava/lang/String;ZLcom/sun/org/apache/xerces/internal/xs/XSAnnotation;)V

    aput-object v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    :cond_b
    iget v1, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fFractionDigits:I

    if-eq v1, v6, :cond_d

    new-instance v3, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl$XSFacetImpl;

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    iget-short v6, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    and-int/2addr v6, v7

    if-eqz v6, :cond_c

    move v6, v5

    goto :goto_6

    :cond_c
    move v6, v4

    :goto_6
    iget-object v8, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fractionDigitsAnnotation:Lcom/sun/org/apache/xerces/internal/xs/XSAnnotation;

    invoke-direct {v3, v7, v1, v6, v8}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl$XSFacetImpl;-><init>(SLjava/lang/String;ZLcom/sun/org/apache/xerces/internal/xs/XSAnnotation;)V

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    :cond_d
    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fMaxInclusive:Ljava/lang/Object;

    if-eqz v1, :cond_f

    new-instance v3, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl$XSFacetImpl;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-short v6, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    const/16 v7, 0x20

    and-int/2addr v6, v7

    if-eqz v6, :cond_e

    move v6, v5

    goto :goto_7

    :cond_e
    move v6, v4

    :goto_7
    iget-object v8, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->maxInclusiveAnnotation:Lcom/sun/org/apache/xerces/internal/xs/XSAnnotation;

    invoke-direct {v3, v7, v1, v6, v8}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl$XSFacetImpl;-><init>(SLjava/lang/String;ZLcom/sun/org/apache/xerces/internal/xs/XSAnnotation;)V

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    :cond_f
    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fMaxExclusive:Ljava/lang/Object;

    if-eqz v1, :cond_11

    new-instance v3, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl$XSFacetImpl;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-short v6, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    const/16 v7, 0x40

    and-int/2addr v6, v7

    if-eqz v6, :cond_10

    move v6, v5

    goto :goto_8

    :cond_10
    move v6, v4

    :goto_8
    iget-object v8, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->maxExclusiveAnnotation:Lcom/sun/org/apache/xerces/internal/xs/XSAnnotation;

    invoke-direct {v3, v7, v1, v6, v8}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl$XSFacetImpl;-><init>(SLjava/lang/String;ZLcom/sun/org/apache/xerces/internal/xs/XSAnnotation;)V

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    :cond_11
    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fMinExclusive:Ljava/lang/Object;

    if-eqz v1, :cond_13

    new-instance v3, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl$XSFacetImpl;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-short v6, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    const/16 v7, 0x80

    and-int/2addr v6, v7

    if-eqz v6, :cond_12

    move v6, v5

    goto :goto_9

    :cond_12
    move v6, v4

    :goto_9
    iget-object v8, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->minExclusiveAnnotation:Lcom/sun/org/apache/xerces/internal/xs/XSAnnotation;

    invoke-direct {v3, v7, v1, v6, v8}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl$XSFacetImpl;-><init>(SLjava/lang/String;ZLcom/sun/org/apache/xerces/internal/xs/XSAnnotation;)V

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    :cond_13
    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fMinInclusive:Ljava/lang/Object;

    if-eqz v1, :cond_15

    new-instance v3, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl$XSFacetImpl;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-short v6, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    const/16 v7, 0x100

    and-int/2addr v6, v7

    if-eqz v6, :cond_14

    move v4, v5

    :cond_14
    iget-object v5, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->minInclusiveAnnotation:Lcom/sun/org/apache/xerces/internal/xs/XSAnnotation;

    invoke-direct {v3, v7, v1, v4, v5}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl$XSFacetImpl;-><init>(SLjava/lang/String;ZLcom/sun/org/apache/xerces/internal/xs/XSAnnotation;)V

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    :cond_15
    new-instance v1, Lcom/sun/org/apache/xerces/internal/impl/xs/util/XSObjectListImpl;

    invoke-direct {v1, v2, v0}, Lcom/sun/org/apache/xerces/internal/impl/xs/util/XSObjectListImpl;-><init>([Lcom/sun/org/apache/xerces/internal/xs/XSObject;I)V

    iput-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fFacets:Lcom/sun/org/apache/xerces/internal/impl/xs/util/XSObjectListImpl;

    :cond_16
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fFacets:Lcom/sun/org/apache/xerces/internal/impl/xs/util/XSObjectListImpl;

    if-eqz p0, :cond_17

    goto :goto_a

    :cond_17
    sget-object p0, Lcom/sun/org/apache/xerces/internal/impl/xs/util/XSObjectListImpl;->EMPTY_LIST:Lcom/sun/org/apache/xerces/internal/xs/XSObjectList;

    :goto_a
    return-object p0
.end method

.method public getFinal()S
    .locals 0

    iget-short p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fFinalSet:S

    return p0
.end method

.method public getFinite()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fFinite:Z

    return p0
.end method

.method public getFixedFacets()S
    .locals 2

    iget-short v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    const/16 v1, 0x18

    if-ne v0, v1, :cond_0

    iget-short p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    or-int/lit16 p0, p0, 0x400

    int-to-short p0, p0

    return p0

    :cond_0
    iget-short p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    return p0
.end method

.method public getItemType()Lcom/sun/org/apache/xerces/internal/xs/XSSimpleTypeDefinition;
    .locals 2

    iget-short v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fVariety:S

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fItemType:Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getLexicalEnumeration()Lcom/sun/org/apache/xerces/internal/xs/StringList;
    .locals 4

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fLexicalEnumeration:Lcom/sun/org/apache/xerces/internal/xs/StringList;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fEnumeration:Ljava/util/Vector;

    if-nez v0, :cond_0

    sget-object p0, Lcom/sun/org/apache/xerces/internal/impl/xs/util/StringListImpl;->EMPTY_LIST:Lcom/sun/org/apache/xerces/internal/xs/StringList;

    return-object p0

    :cond_0
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fEnumeration:Ljava/util/Vector;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance v2, Lcom/sun/org/apache/xerces/internal/impl/xs/util/StringListImpl;

    invoke-direct {v2, v1, v0}, Lcom/sun/org/apache/xerces/internal/impl/xs/util/StringListImpl;-><init>([Ljava/lang/String;I)V

    iput-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fLexicalEnumeration:Lcom/sun/org/apache/xerces/internal/xs/StringList;

    :cond_2
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fLexicalEnumeration:Lcom/sun/org/apache/xerces/internal/xs/StringList;

    return-object p0
.end method

.method public getLexicalFacetValue(S)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eq p1, v0, :cond_12

    const/4 v0, 0x2

    if-eq p1, v0, :cond_10

    const/4 v0, 0x4

    if-eq p1, v0, :cond_e

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

    if-eq p1, v0, :cond_2

    const/16 v0, 0x400

    if-eq p1, v0, :cond_0

    return-object v2

    :cond_0
    iget p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fFractionDigits:I

    if-ne p0, v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    :goto_0
    return-object v2

    :cond_2
    iget-short p1, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    const/16 v0, 0x18

    if-ne p1, v0, :cond_3

    const-string p0, "0"

    return-object p0

    :cond_3
    iget p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fTotalDigits:I

    if-ne p0, v1, :cond_4

    goto :goto_1

    :cond_4
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    :goto_1
    return-object v2

    :cond_5
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fMinInclusive:Ljava/lang/Object;

    if-nez p0, :cond_6

    goto :goto_2

    :cond_6
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_2
    return-object v2

    :cond_7
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fMinExclusive:Ljava/lang/Object;

    if-nez p0, :cond_8

    goto :goto_3

    :cond_8
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_3
    return-object v2

    :cond_9
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fMaxExclusive:Ljava/lang/Object;

    if-nez p0, :cond_a

    goto :goto_4

    :cond_a
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_4
    return-object v2

    :cond_b
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fMaxInclusive:Ljava/lang/Object;

    if-nez p0, :cond_c

    goto :goto_5

    :cond_c
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_5
    return-object v2

    :cond_d
    sget-object p1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->WS_FACET_STRING:[Ljava/lang/String;

    iget-short p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fWhiteSpace:S

    aget-object p0, p1, p0

    return-object p0

    :cond_e
    iget p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fMaxLength:I

    if-ne p0, v1, :cond_f

    goto :goto_6

    :cond_f
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    :goto_6
    return-object v2

    :cond_10
    iget p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fMinLength:I

    if-ne p0, v1, :cond_11

    goto :goto_7

    :cond_11
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    :goto_7
    return-object v2

    :cond_12
    iget p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fLength:I

    if-ne p0, v1, :cond_13

    goto :goto_8

    :cond_13
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    :goto_8
    return-object v2
.end method

.method public getLexicalPattern()Lcom/sun/org/apache/xerces/internal/xs/StringList;
    .locals 6

    iget-short v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fPatternType:S

    const/16 v1, 0x18

    if-nez v0, :cond_0

    iget-short v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fPatternStr:Ljava/util/Vector;

    if-nez v0, :cond_0

    sget-object p0, Lcom/sun/org/apache/xerces/internal/impl/xs/util/StringListImpl;->EMPTY_LIST:Lcom/sun/org/apache/xerces/internal/xs/StringList;

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fLexicalPattern:Lcom/sun/org/apache/xerces/internal/xs/StringList;

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fPatternStr:Ljava/util/Vector;

    const/4 v2, 0x0

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    :goto_0
    iget-short v3, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fPatternType:S

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
    iget-short v3, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    if-ne v3, v1, :cond_5

    add-int/lit8 v1, v0, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const-string v3, "[\\-+]?[0-9]+"

    aput-object v3, v1, v0

    goto :goto_1

    :cond_5
    new-array v1, v0, [Ljava/lang/String;

    :goto_1
    if-ge v2, v0, :cond_6

    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fPatternStr:Ljava/util/Vector;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_6
    new-instance v0, Lcom/sun/org/apache/xerces/internal/impl/xs/util/StringListImpl;

    array-length v2, v1

    invoke-direct {v0, v1, v2}, Lcom/sun/org/apache/xerces/internal/impl/xs/util/StringListImpl;-><init>([Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fLexicalPattern:Lcom/sun/org/apache/xerces/internal/xs/StringList;

    :cond_7
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fLexicalPattern:Lcom/sun/org/apache/xerces/internal/xs/StringList;

    return-object p0
.end method

.method public getMaxExclusiveValue()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fMaxExclusive:Ljava/lang/Object;

    return-object p0
.end method

.method public getMaxInclusiveValue()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fMaxInclusive:Ljava/lang/Object;

    return-object p0
.end method

.method public getMemberTypes()Lcom/sun/org/apache/xerces/internal/xs/XSObjectList;
    .locals 2

    iget-short v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fVariety:S

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    new-instance v0, Lcom/sun/org/apache/xerces/internal/impl/xs/util/XSObjectListImpl;

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fMemberTypes:[Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;

    array-length v1, p0

    invoke-direct {v0, p0, v1}, Lcom/sun/org/apache/xerces/internal/impl/xs/util/XSObjectListImpl;-><init>([Lcom/sun/org/apache/xerces/internal/xs/XSObject;I)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getMinExclusiveValue()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fMinExclusive:Ljava/lang/Object;

    return-object p0
.end method

.method public getMinInclusiveValue()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fMinInclusive:Ljava/lang/Object;

    return-object p0
.end method

.method public getMultiValueFacets()Lcom/sun/org/apache/xerces/internal/xs/XSObjectList;
    .locals 6

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fMultiValueFacets:Lcom/sun/org/apache/xerces/internal/impl/xs/util/XSObjectListImpl;

    if-nez v0, :cond_4

    iget-short v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit16 v1, v0, 0x800

    const/16 v2, 0x18

    if-nez v1, :cond_0

    and-int/lit8 v1, v0, 0x8

    if-nez v1, :cond_0

    iget-short v1, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fPatternType:S

    if-nez v1, :cond_0

    iget-short v1, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    if-ne v1, v2, :cond_4

    :cond_0
    const/4 v1, 0x2

    new-array v1, v1, [Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl$XSMVFacetImpl;

    const/16 v3, 0x8

    and-int/2addr v0, v3

    const/4 v4, 0x0

    if-nez v0, :cond_1

    iget-short v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fPatternType:S

    if-nez v0, :cond_1

    iget-short v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    if-ne v0, v2, :cond_2

    :cond_1
    new-instance v0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl$XSMVFacetImpl;

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->getLexicalPattern()Lcom/sun/org/apache/xerces/internal/xs/StringList;

    move-result-object v2

    iget-object v5, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->patternAnnotations:Lcom/sun/org/apache/xerces/internal/impl/xs/util/XSObjectListImpl;

    invoke-direct {v0, v3, v2, v5}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl$XSMVFacetImpl;-><init>(SLcom/sun/org/apache/xerces/internal/xs/StringList;Lcom/sun/org/apache/xerces/internal/xs/XSObjectList;)V

    aput-object v0, v1, v4

    const/4 v4, 0x1

    :cond_2
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fEnumeration:Ljava/util/Vector;

    if-eqz v0, :cond_3

    new-instance v0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl$XSMVFacetImpl;

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->getLexicalEnumeration()Lcom/sun/org/apache/xerces/internal/xs/StringList;

    move-result-object v2

    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->enumerationAnnotations:Lcom/sun/org/apache/xerces/internal/xs/XSObjectList;

    const/16 v5, 0x800

    invoke-direct {v0, v5, v2, v3}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl$XSMVFacetImpl;-><init>(SLcom/sun/org/apache/xerces/internal/xs/StringList;Lcom/sun/org/apache/xerces/internal/xs/XSObjectList;)V

    aput-object v0, v1, v4

    add-int/lit8 v4, v4, 0x1

    :cond_3
    new-instance v0, Lcom/sun/org/apache/xerces/internal/impl/xs/util/XSObjectListImpl;

    invoke-direct {v0, v1, v4}, Lcom/sun/org/apache/xerces/internal/impl/xs/util/XSObjectListImpl;-><init>([Lcom/sun/org/apache/xerces/internal/xs/XSObject;I)V

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fMultiValueFacets:Lcom/sun/org/apache/xerces/internal/impl/xs/util/XSObjectListImpl;

    :cond_4
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fMultiValueFacets:Lcom/sun/org/apache/xerces/internal/impl/xs/util/XSObjectListImpl;

    if-eqz p0, :cond_5

    goto :goto_0

    :cond_5
    sget-object p0, Lcom/sun/org/apache/xerces/internal/impl/xs/util/XSObjectListImpl;->EMPTY_LIST:Lcom/sun/org/apache/xerces/internal/xs/XSObjectList;

    :goto_0
    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->getAnonymous()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    :goto_0
    return-object p0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fTargetNamespace:Ljava/lang/String;

    return-object p0
.end method

.method public getNamespaceItem()Lcom/sun/org/apache/xerces/internal/xs/XSNamespaceItem;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getNumeric()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fNumeric:Z

    return p0
.end method

.method public getOrdered()S
    .locals 0

    iget-short p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fOrdered:S

    return p0
.end method

.method public getPrimitiveKind()S
    .locals 2

    iget-short v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fVariety:S

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    iget-short p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

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

.method public getPrimitiveType()Lcom/sun/org/apache/xerces/internal/xs/XSSimpleTypeDefinition;
    .locals 2

    iget-short v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fVariety:S

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-short v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    if-eqz v0, :cond_1

    :goto_0
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;

    sget-object v1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fAnySimpleType:Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;

    if-eq v0, v1, :cond_0

    move-object p0, v0

    goto :goto_0

    :cond_0
    return-object p0

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

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    return-object p0
.end method

.method public getTypeNamespace()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->getNamespace()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getVariety()S
    .locals 1

    iget-short v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-short p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fVariety:S

    :goto_0
    return p0
.end method

.method public getWhitespace()S
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/impl/dv/DatatypeException;
        }
    .end annotation

    iget-short v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fVariety:S

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget-short p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fWhiteSpace:S

    return p0

    :cond_0
    new-instance v0, Lcom/sun/org/apache/xerces/internal/impl/dv/DatatypeException;

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v1, "dt-whitespace"

    invoke-direct {v0, v1, p0}, Lcom/sun/org/apache/xerces/internal/impl/dv/DatatypeException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method

.method public isDOMDerivedFrom(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 6

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    :cond_0
    sget-object v1, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaSymbols;->URI_SCHEMAFORSCHEMA:Ljava/lang/String;

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

    invoke-direct {p0, p1, p2, p0}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->isDerivedByRestriction(Ljava/lang/String;Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xs/XSTypeDefinition;)Z

    move-result v3

    if-eqz v3, :cond_3

    return v2

    :cond_3
    and-int/lit8 v3, p3, 0x8

    if-eqz v3, :cond_4

    invoke-direct {p0, p1, p2, p0}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->isDerivedByList(Ljava/lang/String;Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xs/XSTypeDefinition;)Z

    move-result v4

    if-eqz v4, :cond_4

    return v2

    :cond_4
    and-int/lit8 v4, p3, 0x4

    if-eqz v4, :cond_5

    invoke-direct {p0, p1, p2, p0}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->isDerivedByUnion(Ljava/lang/String;Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xs/XSTypeDefinition;)Z

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

    invoke-direct {p0, p1, p2, p0}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->isDerivedByAny(Ljava/lang/String;Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xs/XSTypeDefinition;)Z

    move-result p0

    return p0

    :cond_7
    return v0
.end method

.method public isDefinedFacet(S)Z
    .locals 4

    iget-short v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/2addr v0, p1

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-short v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fPatternType:S

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    if-ne p1, v2, :cond_1

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_0
    return v1

    :cond_2
    iget-short p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    const/16 v0, 0x18

    if-ne p0, v0, :cond_5

    if-eq p1, v2, :cond_4

    const/16 p0, 0x400

    if-ne p1, p0, :cond_3

    goto :goto_1

    :cond_3
    move v1, v3

    :cond_4
    :goto_1
    return v1

    :cond_5
    return v3
.end method

.method public isDerivedFrom(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->isDOMDerivedFrom(Ljava/lang/String;Ljava/lang/String;I)Z

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

    iget-short p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fFinalSet:S

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

    iget-short v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    and-int/2addr v0, p1

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-short p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

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

    iget-short v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fVariety:S

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
    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fMemberTypes:[Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;

    array-length v4, v3

    if-ge v0, v4, :cond_2

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->isIDType()Z

    move-result v3

    if-eqz v3, :cond_1

    return v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v1

    :cond_3
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fItemType:Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->isIDType()Z

    move-result p0

    return p0

    :cond_4
    iget-short p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

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
    sget-object v0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fDVs:[Lcom/sun/org/apache/xerces/internal/impl/dv/xs/TypeValidator;

    iget-short p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    aget-object p0, v0, p0

    invoke-virtual {p0, p1, p2}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/TypeValidator;->isIdentical(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public normalize(Ljava/lang/Object;S)Ljava/lang/String;
    .locals 11

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 11
    :cond_0
    iget-short v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit8 v0, v0, 0x8

    const/4 v1, 0x1

    if-nez v0, :cond_2

    .line 12
    sget-object v0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fDVNormalizeType:[S

    iget-short p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    aget-short p0, v0, p0

    if-nez p0, :cond_1

    .line 13
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    if-ne p0, v1, :cond_2

    .line 14
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 15
    :cond_2
    instance-of p0, p1, Ljava/lang/StringBuffer;

    if-nez p0, :cond_3

    .line 16
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    .line 17
    invoke-static {p0, p2}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->normalize(Ljava/lang/String;S)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 18
    :cond_3
    check-cast p1, Ljava/lang/StringBuffer;

    .line 19
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result p0

    if-nez p0, :cond_4

    const-string p0, ""

    return-object p0

    :cond_4
    if-nez p2, :cond_5

    .line 20
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5
    const/16 v0, 0xd

    const/16 v2, 0xa

    const/16 v3, 0x9

    const/16 v4, 0x20

    const/4 v5, 0x0

    if-ne p2, v1, :cond_8

    :goto_0
    if-ge v5, p0, :cond_e

    .line 21
    invoke-virtual {p1, v5}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result p2

    if-eq p2, v3, :cond_6

    if-eq p2, v2, :cond_6

    if-ne p2, v0, :cond_7

    .line 22
    :cond_6
    invoke-virtual {p1, v5, v4}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_8
    move v7, v1

    move p2, v5

    move v6, p2

    :goto_1
    if-ge p2, p0, :cond_d

    .line 23
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v8

    if-eq v8, v3, :cond_9

    if-eq v8, v2, :cond_9

    if-eq v8, v0, :cond_9

    if-eq v8, v4, :cond_9

    add-int/lit8 v7, v6, 0x1

    .line 24
    invoke-virtual {p1, v6, v8}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    move v6, v7

    move v7, v5

    goto :goto_4

    :cond_9
    :goto_2
    add-int/lit8 v8, p0, -0x1

    if-ge p2, v8, :cond_b

    add-int/lit8 v9, p2, 0x1

    .line 25
    invoke-virtual {p1, v9}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v10

    if-eq v10, v3, :cond_a

    if-eq v10, v2, :cond_a

    if-eq v10, v0, :cond_a

    if-eq v10, v4, :cond_a

    goto :goto_3

    :cond_a
    move p2, v9

    goto :goto_2

    :cond_b
    :goto_3
    if-ge p2, v8, :cond_c

    if-nez v7, :cond_c

    add-int/lit8 v8, v6, 0x1

    .line 26
    invoke-virtual {p1, v6, v4}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    move v6, v8

    :cond_c
    :goto_4
    add-int/2addr p2, v1

    goto :goto_1

    .line 27
    :cond_d
    invoke-virtual {p1, v6}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 28
    :cond_e
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public reportError(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/impl/dv/InvalidDatatypeFacetException;
        }
    .end annotation

    new-instance p0, Lcom/sun/org/apache/xerces/internal/impl/dv/InvalidDatatypeFacetException;

    invoke-direct {p0, p1, p2}, Lcom/sun/org/apache/xerces/internal/impl/dv/InvalidDatatypeFacetException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p0
.end method

.method public reset()V
    .locals 3

    iget-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fIsImmutable:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fItemType:Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fMemberTypes:[Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fTargetNamespace:Ljava/lang/String;

    const/4 v1, 0x0

    iput-short v1, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fFinalSet:S

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;

    const/4 v2, -0x1

    iput-short v2, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fVariety:S

    iput-short v2, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    iput-short v1, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    iput-short v1, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    iput-short v1, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fWhiteSpace:S

    iput v2, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fLength:I

    iput v2, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fMinLength:I

    iput v2, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fMaxLength:I

    iput v2, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fTotalDigits:I

    iput v2, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fFractionDigits:I

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fPattern:Ljava/util/Vector;

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fPatternStr:Ljava/util/Vector;

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fEnumeration:Ljava/util/Vector;

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fEnumerationType:[S

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fEnumerationItemType:[Lcom/sun/org/apache/xerces/internal/xs/ShortList;

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fLexicalPattern:Lcom/sun/org/apache/xerces/internal/xs/StringList;

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fLexicalEnumeration:Lcom/sun/org/apache/xerces/internal/xs/StringList;

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fMaxInclusive:Ljava/lang/Object;

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fMaxExclusive:Ljava/lang/Object;

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fMinExclusive:Ljava/lang/Object;

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fMinInclusive:Ljava/lang/Object;

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->lengthAnnotation:Lcom/sun/org/apache/xerces/internal/xs/XSAnnotation;

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->minLengthAnnotation:Lcom/sun/org/apache/xerces/internal/xs/XSAnnotation;

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->maxLengthAnnotation:Lcom/sun/org/apache/xerces/internal/xs/XSAnnotation;

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->whiteSpaceAnnotation:Lcom/sun/org/apache/xerces/internal/xs/XSAnnotation;

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->totalDigitsAnnotation:Lcom/sun/org/apache/xerces/internal/xs/XSAnnotation;

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fractionDigitsAnnotation:Lcom/sun/org/apache/xerces/internal/xs/XSAnnotation;

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->patternAnnotations:Lcom/sun/org/apache/xerces/internal/impl/xs/util/XSObjectListImpl;

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->enumerationAnnotations:Lcom/sun/org/apache/xerces/internal/xs/XSObjectList;

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->maxInclusiveAnnotation:Lcom/sun/org/apache/xerces/internal/xs/XSAnnotation;

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->maxExclusiveAnnotation:Lcom/sun/org/apache/xerces/internal/xs/XSAnnotation;

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->minInclusiveAnnotation:Lcom/sun/org/apache/xerces/internal/xs/XSAnnotation;

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->minExclusiveAnnotation:Lcom/sun/org/apache/xerces/internal/xs/XSAnnotation;

    iput-short v1, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fPatternType:S

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fAnnotations:Lcom/sun/org/apache/xerces/internal/xs/XSObjectList;

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fFacets:Lcom/sun/org/apache/xerces/internal/impl/xs/util/XSObjectListImpl;

    return-void
.end method

.method public setAnonymous(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fAnonymous:Z

    return-void
.end method

.method public setListValues(Ljava/lang/String;Ljava/lang/String;SLcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;Lcom/sun/org/apache/xerces/internal/xs/XSObjectList;)Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;
    .locals 1

    iget-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fIsImmutable:Z

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object v0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fAnySimpleType:Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    iput-object p2, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fTargetNamespace:Ljava/lang/String;

    iput-short p3, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fFinalSet:S

    iput-object p5, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fAnnotations:Lcom/sun/org/apache/xerces/internal/xs/XSObjectList;

    const/4 p1, 0x2

    iput-short p1, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fVariety:S

    iput-object p4, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fItemType:Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;

    const/16 p2, 0x19

    iput-short p2, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    const/16 p2, 0x10

    iput-short p2, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    iput-short p2, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    iput-short p1, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fWhiteSpace:S

    invoke-direct {p0}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->caclFundamentalFacets()V

    const/16 p1, 0x2c

    iput-short p1, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fBuiltInKind:S

    return-object p0
.end method

.method public setRestrictionValues(Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;Ljava/lang/String;SLcom/sun/org/apache/xerces/internal/xs/XSObjectList;)Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;
    .locals 1

    iget-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fIsImmutable:Z

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;

    iput-object p2, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    iput-object p3, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fTargetNamespace:Ljava/lang/String;

    iput-short p4, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fFinalSet:S

    iput-object p5, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fAnnotations:Lcom/sun/org/apache/xerces/internal/xs/XSObjectList;

    iget-short p2, p1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fVariety:S

    iput-short p2, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fVariety:S

    iget-short p3, p1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    iput-short p3, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    const/4 p3, 0x2

    if-eq p2, p3, :cond_2

    const/4 p3, 0x3

    if-eq p2, p3, :cond_1

    goto :goto_0

    :cond_1
    iget-object p2, p1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fMemberTypes:[Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;

    iput-object p2, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fMemberTypes:[Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;

    goto :goto_0

    :cond_2
    iget-object p2, p1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fItemType:Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;

    iput-object p2, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fItemType:Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;

    :goto_0
    iget p2, p1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fLength:I

    iput p2, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fLength:I

    iget p2, p1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fMinLength:I

    iput p2, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fMinLength:I

    iget p2, p1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fMaxLength:I

    iput p2, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fMaxLength:I

    iget-object p2, p1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fPattern:Ljava/util/Vector;

    iput-object p2, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fPattern:Ljava/util/Vector;

    iget-object p2, p1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fPatternStr:Ljava/util/Vector;

    iput-object p2, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fPatternStr:Ljava/util/Vector;

    iget-object p2, p1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fEnumeration:Ljava/util/Vector;

    iput-object p2, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fEnumeration:Ljava/util/Vector;

    iget-object p2, p1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fEnumerationType:[S

    iput-object p2, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fEnumerationType:[S

    iget-object p2, p1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fEnumerationItemType:[Lcom/sun/org/apache/xerces/internal/xs/ShortList;

    iput-object p2, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fEnumerationItemType:[Lcom/sun/org/apache/xerces/internal/xs/ShortList;

    iget-short p2, p1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fWhiteSpace:S

    iput-short p2, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fWhiteSpace:S

    iget-object p2, p1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fMaxExclusive:Ljava/lang/Object;

    iput-object p2, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fMaxExclusive:Ljava/lang/Object;

    iget-object p2, p1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fMaxInclusive:Ljava/lang/Object;

    iput-object p2, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fMaxInclusive:Ljava/lang/Object;

    iget-object p2, p1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fMinExclusive:Ljava/lang/Object;

    iput-object p2, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fMinExclusive:Ljava/lang/Object;

    iget-object p2, p1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fMinInclusive:Ljava/lang/Object;

    iput-object p2, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fMinInclusive:Ljava/lang/Object;

    iget p2, p1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fTotalDigits:I

    iput p2, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fTotalDigits:I

    iget p2, p1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fFractionDigits:I

    iput p2, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fFractionDigits:I

    iget-short p2, p1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fPatternType:S

    iput-short p2, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fPatternType:S

    iget-short p2, p1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    iput-short p2, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    iget-short p2, p1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    iput-short p2, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    invoke-direct {p0}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->caclFundamentalFacets()V

    iget-short p1, p1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fBuiltInKind:S

    iput-short p1, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fBuiltInKind:S

    return-object p0
.end method

.method public setUnionValues(Ljava/lang/String;Ljava/lang/String;S[Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;Lcom/sun/org/apache/xerces/internal/xs/XSObjectList;)Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;
    .locals 1

    iget-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fIsImmutable:Z

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object v0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fAnySimpleType:Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    iput-object p2, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fTargetNamespace:Ljava/lang/String;

    iput-short p3, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fFinalSet:S

    iput-object p5, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fAnnotations:Lcom/sun/org/apache/xerces/internal/xs/XSObjectList;

    const/4 p1, 0x3

    iput-short p1, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fVariety:S

    iput-object p4, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fMemberTypes:[Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;

    const/16 p1, 0x1a

    iput-short p1, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    const/16 p1, 0x10

    iput-short p1, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    const/4 p1, 0x2

    iput-short p1, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fWhiteSpace:S

    invoke-direct {p0}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->caclFundamentalFacets()V

    const/16 p1, 0x2d

    iput-short p1, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fBuiltInKind:S

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fTargetNamespace:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public validate(Ljava/lang/Object;Lcom/sun/org/apache/xerces/internal/impl/dv/ValidationContext;Lcom/sun/org/apache/xerces/internal/impl/dv/ValidatedInfo;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/impl/dv/InvalidDatatypeValueException;
        }
    .end annotation

    if-nez p2, :cond_0

    .line 7
    sget-object p2, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fEmptyContext:Lcom/sun/org/apache/xerces/internal/impl/dv/ValidationContext;

    :cond_0
    if-nez p3, :cond_1

    .line 8
    new-instance p3, Lcom/sun/org/apache/xerces/internal/impl/dv/ValidatedInfo;

    invoke-direct {p3}, Lcom/sun/org/apache/xerces/internal/impl/dv/ValidatedInfo;-><init>()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 9
    iput-object v0, p3, Lcom/sun/org/apache/xerces/internal/impl/dv/ValidatedInfo;->memberType:Lcom/sun/org/apache/xerces/internal/impl/dv/XSSimpleType;

    :goto_0
    if-eqz p2, :cond_3

    .line 10
    invoke-interface {p2}, Lcom/sun/org/apache/xerces/internal/impl/dv/ValidationContext;->needToNormalize()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v0, 0x1

    .line 11
    :goto_2
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->getActualValue(Ljava/lang/Object;Lcom/sun/org/apache/xerces/internal/impl/dv/ValidationContext;Lcom/sun/org/apache/xerces/internal/impl/dv/ValidatedInfo;Z)Ljava/lang/Object;

    move-result-object p1

    .line 12
    invoke-virtual {p0, p2, p3}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->validate(Lcom/sun/org/apache/xerces/internal/impl/dv/ValidationContext;Lcom/sun/org/apache/xerces/internal/impl/dv/ValidatedInfo;)V

    return-object p1
.end method

.method public validate(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/impl/dv/ValidationContext;Lcom/sun/org/apache/xerces/internal/impl/dv/ValidatedInfo;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/impl/dv/InvalidDatatypeValueException;
        }
    .end annotation

    if-nez p2, :cond_0

    .line 1
    sget-object p2, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fEmptyContext:Lcom/sun/org/apache/xerces/internal/impl/dv/ValidationContext;

    :cond_0
    if-nez p3, :cond_1

    .line 2
    new-instance p3, Lcom/sun/org/apache/xerces/internal/impl/dv/ValidatedInfo;

    invoke-direct {p3}, Lcom/sun/org/apache/xerces/internal/impl/dv/ValidatedInfo;-><init>()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 3
    iput-object v0, p3, Lcom/sun/org/apache/xerces/internal/impl/dv/ValidatedInfo;->memberType:Lcom/sun/org/apache/xerces/internal/impl/dv/XSSimpleType;

    :goto_0
    if-eqz p2, :cond_3

    .line 4
    invoke-interface {p2}, Lcom/sun/org/apache/xerces/internal/impl/dv/ValidationContext;->needToNormalize()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v0, 0x1

    .line 5
    :goto_2
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->getActualValue(Ljava/lang/Object;Lcom/sun/org/apache/xerces/internal/impl/dv/ValidationContext;Lcom/sun/org/apache/xerces/internal/impl/dv/ValidatedInfo;Z)Ljava/lang/Object;

    move-result-object p1

    .line 6
    invoke-virtual {p0, p2, p3}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->validate(Lcom/sun/org/apache/xerces/internal/impl/dv/ValidationContext;Lcom/sun/org/apache/xerces/internal/impl/dv/ValidatedInfo;)V

    return-object p1
.end method

.method public validate(Lcom/sun/org/apache/xerces/internal/impl/dv/ValidationContext;Lcom/sun/org/apache/xerces/internal/impl/dv/ValidatedInfo;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/impl/dv/InvalidDatatypeValueException;
        }
    .end annotation

    if-nez p1, :cond_0

    .line 13
    sget-object p1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fEmptyContext:Lcom/sun/org/apache/xerces/internal/impl/dv/ValidationContext;

    .line 14
    :cond_0
    invoke-interface {p1}, Lcom/sun/org/apache/xerces/internal/impl/dv/ValidationContext;->needFacetChecking()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-short v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    if-eqz v0, :cond_1

    const/16 v1, 0x10

    if-eq v0, v1, :cond_1

    .line 15
    invoke-direct {p0, p2}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->checkFacets(Lcom/sun/org/apache/xerces/internal/impl/dv/ValidatedInfo;)V

    .line 16
    :cond_1
    invoke-interface {p1}, Lcom/sun/org/apache/xerces/internal/impl/dv/ValidationContext;->needExtraChecking()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 17
    invoke-direct {p0, p1, p2}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->checkExtraRules(Lcom/sun/org/apache/xerces/internal/impl/dv/ValidationContext;Lcom/sun/org/apache/xerces/internal/impl/dv/ValidatedInfo;)V

    :cond_2
    return-void
.end method

.method public validateWithInfo(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/impl/dv/ValidationContext;Lcom/sun/org/apache/xerces/internal/impl/dv/ValidatedInfo;)Lcom/sun/org/apache/xerces/internal/impl/dv/ValidatedInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/impl/dv/InvalidDatatypeValueException;
        }
    .end annotation

    if-nez p2, :cond_0

    sget-object p2, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->fEmptyContext:Lcom/sun/org/apache/xerces/internal/impl/dv/ValidationContext;

    :cond_0
    if-nez p3, :cond_1

    new-instance p3, Lcom/sun/org/apache/xerces/internal/impl/dv/ValidatedInfo;

    invoke-direct {p3}, Lcom/sun/org/apache/xerces/internal/impl/dv/ValidatedInfo;-><init>()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p3, Lcom/sun/org/apache/xerces/internal/impl/dv/ValidatedInfo;->memberType:Lcom/sun/org/apache/xerces/internal/impl/dv/XSSimpleType;

    :goto_0
    if-eqz p2, :cond_3

    invoke-interface {p2}, Lcom/sun/org/apache/xerces/internal/impl/dv/ValidationContext;->needToNormalize()Z

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
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->getActualValue(Ljava/lang/Object;Lcom/sun/org/apache/xerces/internal/impl/dv/ValidationContext;Lcom/sun/org/apache/xerces/internal/impl/dv/ValidatedInfo;Z)Ljava/lang/Object;

    invoke-virtual {p0, p2, p3}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->validate(Lcom/sun/org/apache/xerces/internal/impl/dv/ValidationContext;Lcom/sun/org/apache/xerces/internal/impl/dv/ValidatedInfo;)V

    return-object p3
.end method
