.class public Lorg/apache/xerces/impl/dv/XSFacets;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public enumAnnotations:Lorg/apache/xerces/xs/XSObjectList;

.field public enumNSDecls:Ljava/util/Vector;

.field public enumeration:Ljava/util/Vector;

.field public fractionDigits:I

.field public fractionDigitsAnnotation:Lorg/apache/xerces/xs/XSAnnotation;

.field public length:I

.field public lengthAnnotation:Lorg/apache/xerces/xs/XSAnnotation;

.field public maxExclusive:Ljava/lang/String;

.field public maxExclusiveAnnotation:Lorg/apache/xerces/xs/XSAnnotation;

.field public maxInclusive:Ljava/lang/String;

.field public maxInclusiveAnnotation:Lorg/apache/xerces/xs/XSAnnotation;

.field public maxLength:I

.field public maxLengthAnnotation:Lorg/apache/xerces/xs/XSAnnotation;

.field public minExclusive:Ljava/lang/String;

.field public minExclusiveAnnotation:Lorg/apache/xerces/xs/XSAnnotation;

.field public minInclusive:Ljava/lang/String;

.field public minInclusiveAnnotation:Lorg/apache/xerces/xs/XSAnnotation;

.field public minLength:I

.field public minLengthAnnotation:Lorg/apache/xerces/xs/XSAnnotation;

.field public pattern:Ljava/lang/String;

.field public patternAnnotations:Lorg/apache/xerces/impl/xs/util/XSObjectListImpl;

.field public totalDigits:I

.field public totalDigitsAnnotation:Lorg/apache/xerces/xs/XSAnnotation;

.field public whiteSpace:S

.field public whiteSpaceAnnotation:Lorg/apache/xerces/xs/XSAnnotation;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public reset()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xerces/impl/dv/XSFacets;->lengthAnnotation:Lorg/apache/xerces/xs/XSAnnotation;

    iput-object v0, p0, Lorg/apache/xerces/impl/dv/XSFacets;->minLengthAnnotation:Lorg/apache/xerces/xs/XSAnnotation;

    iput-object v0, p0, Lorg/apache/xerces/impl/dv/XSFacets;->maxLengthAnnotation:Lorg/apache/xerces/xs/XSAnnotation;

    iput-object v0, p0, Lorg/apache/xerces/impl/dv/XSFacets;->whiteSpaceAnnotation:Lorg/apache/xerces/xs/XSAnnotation;

    iput-object v0, p0, Lorg/apache/xerces/impl/dv/XSFacets;->totalDigitsAnnotation:Lorg/apache/xerces/xs/XSAnnotation;

    iput-object v0, p0, Lorg/apache/xerces/impl/dv/XSFacets;->fractionDigitsAnnotation:Lorg/apache/xerces/xs/XSAnnotation;

    iput-object v0, p0, Lorg/apache/xerces/impl/dv/XSFacets;->patternAnnotations:Lorg/apache/xerces/impl/xs/util/XSObjectListImpl;

    iput-object v0, p0, Lorg/apache/xerces/impl/dv/XSFacets;->enumAnnotations:Lorg/apache/xerces/xs/XSObjectList;

    iput-object v0, p0, Lorg/apache/xerces/impl/dv/XSFacets;->maxInclusiveAnnotation:Lorg/apache/xerces/xs/XSAnnotation;

    iput-object v0, p0, Lorg/apache/xerces/impl/dv/XSFacets;->maxExclusiveAnnotation:Lorg/apache/xerces/xs/XSAnnotation;

    iput-object v0, p0, Lorg/apache/xerces/impl/dv/XSFacets;->minInclusiveAnnotation:Lorg/apache/xerces/xs/XSAnnotation;

    iput-object v0, p0, Lorg/apache/xerces/impl/dv/XSFacets;->minExclusiveAnnotation:Lorg/apache/xerces/xs/XSAnnotation;

    return-void
.end method
