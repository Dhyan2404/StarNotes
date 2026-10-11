.class public final enum Lnet/sf/saxon/type/AnyType;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/type/ComplexType;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/sf/saxon/type/AnyType;",
        ">;",
        "Lnet/sf/saxon/type/ComplexType;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/sf/saxon/type/AnyType;

.field public static final enum INSTANCE:Lnet/sf/saxon/type/AnyType;

.field public static final QNAME:Lnet/sf/saxon/om/StructuredQName;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Lnet/sf/saxon/type/AnyType;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/sf/saxon/type/AnyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/sf/saxon/type/AnyType;->INSTANCE:Lnet/sf/saxon/type/AnyType;

    filled-new-array {v0}, [Lnet/sf/saxon/type/AnyType;

    move-result-object v0

    sput-object v0, Lnet/sf/saxon/type/AnyType;->$VALUES:[Lnet/sf/saxon/type/AnyType;

    new-instance v0, Lnet/sf/saxon/om/StructuredQName;

    const-string v1, "http://www.w3.org/2001/XMLSchema"

    const-string v2, "anyType"

    const-string v3, "xs"

    invoke-direct {v0, v3, v1, v2}, Lnet/sf/saxon/om/StructuredQName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lnet/sf/saxon/type/AnyType;->QNAME:Lnet/sf/saxon/om/StructuredQName;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getInstance()Lnet/sf/saxon/type/AnyType;
    .locals 1

    sget-object v0, Lnet/sf/saxon/type/AnyType;->INSTANCE:Lnet/sf/saxon/type/AnyType;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/sf/saxon/type/AnyType;
    .locals 1

    const-class v0, Lnet/sf/saxon/type/AnyType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/type/AnyType;

    return-object p0
.end method

.method public static values()[Lnet/sf/saxon/type/AnyType;
    .locals 1

    sget-object v0, Lnet/sf/saxon/type/AnyType;->$VALUES:[Lnet/sf/saxon/type/AnyType;

    invoke-virtual {v0}, [Lnet/sf/saxon/type/AnyType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/sf/saxon/type/AnyType;

    return-object v0
.end method


# virtual methods
.method public allowsAttributes()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public allowsDerivation(I)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public analyzeContentExpression(Lnet/sf/saxon/expr/Expression;I)V
    .locals 0

    return-void
.end method

.method public atomize(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/om/AtomicSequence;
    .locals 0

    invoke-interface {p1}, Lnet/sf/saxon/om/Item;->getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    invoke-static {p0}, Lnet/sf/saxon/value/StringValue;->makeUntypedAtomic(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/value/StringValue;

    move-result-object p0

    return-object p0
.end method

.method public checkTypeDerivationIsOK(Lnet/sf/saxon/type/SchemaType;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/type/SchemaException;
        }
    .end annotation

    instance-of p0, p1, Lnet/sf/saxon/type/AnyType;

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Lnet/sf/saxon/type/SchemaException;

    const-string p1, "Cannot derive xs:anyType from another type"

    invoke-direct {p0, p1}, Lnet/sf/saxon/type/SchemaException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public containsElementWildcard()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public gatherAllPermittedChildren(Lnet/sf/saxon/z/IntHashSet;Z)V
    .locals 0

    const/4 p0, -0x1

    invoke-virtual {p1, p0}, Lnet/sf/saxon/z/IntHashSet;->add(I)Z

    return-void
.end method

.method public gatherAllPermittedDescendants(Lnet/sf/saxon/z/IntHashSet;)V
    .locals 0

    const/4 p0, -0x1

    invoke-virtual {p1, p0}, Lnet/sf/saxon/z/IntHashSet;->add(I)Z

    return-void
.end method

.method public getAttributeUseCardinality(Lnet/sf/saxon/om/StructuredQName;)I
    .locals 0

    const/16 p0, 0x6000

    return p0
.end method

.method public getAttributeUseType(Lnet/sf/saxon/om/StructuredQName;)Lnet/sf/saxon/type/SimpleType;
    .locals 0

    invoke-static {}, Lnet/sf/saxon/type/AnySimpleType;->getInstance()Lnet/sf/saxon/type/AnySimpleType;

    move-result-object p0

    return-object p0
.end method

.method public getBaseType()Lnet/sf/saxon/type/SchemaType;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getBlock()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getDerivationMethod()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getDescendantElementCardinality(I)I
    .locals 0

    const p0, 0xe000

    return p0
.end method

.method public getDescendantElementType(I)Lnet/sf/saxon/type/SchemaType;
    .locals 0

    return-object p0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 0

    const-string p0, "xs:anyType"

    return-object p0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 0

    const-string p0, "xs:anyType"

    return-object p0
.end method

.method public getEQName()Ljava/lang/String;
    .locals 0

    const-string p0, "Q{http://www.w3.org/2001/XMLSchema}anyType"

    return-object p0
.end method

.method public getElementParticleCardinality(IZ)I
    .locals 0

    const p0, 0xe000

    return p0
.end method

.method public getElementParticleType(IZ)Lnet/sf/saxon/type/SchemaType;
    .locals 0

    return-object p0
.end method

.method public getFinalProhibitions()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getFingerprint()I
    .locals 0

    const/16 p0, 0x23c

    return p0
.end method

.method public getKnownBaseType()Lnet/sf/saxon/type/SchemaType;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    const-string p0, "anyType"

    return-object p0
.end method

.method public getRedefinitionLevel()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getSimpleContentType()Lnet/sf/saxon/type/SimpleType;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getStructuredQName()Lnet/sf/saxon/om/StructuredQName;
    .locals 0

    sget-object p0, Lnet/sf/saxon/type/AnyType;->QNAME:Lnet/sf/saxon/om/StructuredQName;

    return-object p0
.end method

.method public getSystemId()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getTargetNamespace()Ljava/lang/String;
    .locals 0

    const-string p0, "http://www.w3.org/2001/XMLSchema"

    return-object p0
.end method

.method public getValidationStatus()Lnet/sf/saxon/type/SchemaValidationStatus;
    .locals 0

    sget-object p0, Lnet/sf/saxon/type/SchemaValidationStatus;->VALIDATED:Lnet/sf/saxon/type/SchemaValidationStatus;

    return-object p0
.end method

.method public getVariety()Lnet/sf/saxon/type/ComplexVariety;
    .locals 0

    sget-object p0, Lnet/sf/saxon/type/ComplexVariety;->MIXED:Lnet/sf/saxon/type/ComplexVariety;

    return-object p0
.end method

.method public hasAssertions()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isAbstract()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isAllContent()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isAnonymousType()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isAtomicType()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isComplexContent()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isComplexType()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isEmptiable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isEmptyContent()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isIdRefType()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isIdType()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isMixedContent()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isRestricted()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSameType(Lnet/sf/saxon/type/SchemaType;)Z
    .locals 0

    instance-of p0, p1, Lnet/sf/saxon/type/AnyType;

    return p0
.end method

.method public isSimpleContent()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSimpleType()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
