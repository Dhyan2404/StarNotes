.class public Lcom/sun/org/apache/xerces/internal/impl/dv/XSFacets;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public enumAnnotations:Lcom/sun/org/apache/xerces/internal/xs/XSObjectList;

.field public enumNSDecls:Ljava/util/Vector;

.field public enumeration:Ljava/util/Vector;

.field public fractionDigits:I

.field public fractionDigitsAnnotation:Lcom/sun/org/apache/xerces/internal/xs/XSAnnotation;

.field public length:I

.field public lengthAnnotation:Lcom/sun/org/apache/xerces/internal/xs/XSAnnotation;

.field public maxExclusive:Ljava/lang/String;

.field public maxExclusiveAnnotation:Lcom/sun/org/apache/xerces/internal/xs/XSAnnotation;

.field public maxInclusive:Ljava/lang/String;

.field public maxInclusiveAnnotation:Lcom/sun/org/apache/xerces/internal/xs/XSAnnotation;

.field public maxLength:I

.field public maxLengthAnnotation:Lcom/sun/org/apache/xerces/internal/xs/XSAnnotation;

.field public minExclusive:Ljava/lang/String;

.field public minExclusiveAnnotation:Lcom/sun/org/apache/xerces/internal/xs/XSAnnotation;

.field public minInclusive:Ljava/lang/String;

.field public minInclusiveAnnotation:Lcom/sun/org/apache/xerces/internal/xs/XSAnnotation;

.field public minLength:I

.field public minLengthAnnotation:Lcom/sun/org/apache/xerces/internal/xs/XSAnnotation;

.field public pattern:Ljava/lang/String;

.field public patternAnnotations:Lcom/sun/org/apache/xerces/internal/impl/xs/util/XSObjectListImpl;

.field public totalDigits:I

.field public totalDigitsAnnotation:Lcom/sun/org/apache/xerces/internal/xs/XSAnnotation;

.field public whiteSpace:S

.field public whiteSpaceAnnotation:Lcom/sun/org/apache/xerces/internal/xs/XSAnnotation;


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

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/XSFacets;->lengthAnnotation:Lcom/sun/org/apache/xerces/internal/xs/XSAnnotation;

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/XSFacets;->minLengthAnnotation:Lcom/sun/org/apache/xerces/internal/xs/XSAnnotation;

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/XSFacets;->maxLengthAnnotation:Lcom/sun/org/apache/xerces/internal/xs/XSAnnotation;

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/XSFacets;->whiteSpaceAnnotation:Lcom/sun/org/apache/xerces/internal/xs/XSAnnotation;

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/XSFacets;->totalDigitsAnnotation:Lcom/sun/org/apache/xerces/internal/xs/XSAnnotation;

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/XSFacets;->fractionDigitsAnnotation:Lcom/sun/org/apache/xerces/internal/xs/XSAnnotation;

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/XSFacets;->patternAnnotations:Lcom/sun/org/apache/xerces/internal/impl/xs/util/XSObjectListImpl;

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/XSFacets;->enumAnnotations:Lcom/sun/org/apache/xerces/internal/xs/XSObjectList;

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/XSFacets;->maxInclusiveAnnotation:Lcom/sun/org/apache/xerces/internal/xs/XSAnnotation;

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/XSFacets;->maxExclusiveAnnotation:Lcom/sun/org/apache/xerces/internal/xs/XSAnnotation;

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/XSFacets;->minInclusiveAnnotation:Lcom/sun/org/apache/xerces/internal/xs/XSAnnotation;

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/XSFacets;->minExclusiveAnnotation:Lcom/sun/org/apache/xerces/internal/xs/XSAnnotation;

    return-void
.end method
