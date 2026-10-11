.class public final enum Lnet/sf/saxon/type/AnySimpleType;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/type/SimpleType;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/sf/saxon/type/AnySimpleType;",
        ">;",
        "Lnet/sf/saxon/type/SimpleType;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/sf/saxon/type/AnySimpleType;

.field public static final enum INSTANCE:Lnet/sf/saxon/type/AnySimpleType;

.field public static final NAME:Lnet/sf/saxon/om/StructuredQName;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Lnet/sf/saxon/type/AnySimpleType;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/sf/saxon/type/AnySimpleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/sf/saxon/type/AnySimpleType;->INSTANCE:Lnet/sf/saxon/type/AnySimpleType;

    filled-new-array {v0}, [Lnet/sf/saxon/type/AnySimpleType;

    move-result-object v0

    sput-object v0, Lnet/sf/saxon/type/AnySimpleType;->$VALUES:[Lnet/sf/saxon/type/AnySimpleType;

    new-instance v0, Lnet/sf/saxon/om/StructuredQName;

    const-string v1, "http://www.w3.org/2001/XMLSchema"

    const-string v2, "anySimpleType"

    const-string v3, "xs"

    invoke-direct {v0, v3, v1, v2}, Lnet/sf/saxon/om/StructuredQName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lnet/sf/saxon/type/AnySimpleType;->NAME:Lnet/sf/saxon/om/StructuredQName;

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

.method public static getInstance()Lnet/sf/saxon/type/AnySimpleType;
    .locals 1

    sget-object v0, Lnet/sf/saxon/type/AnySimpleType;->INSTANCE:Lnet/sf/saxon/type/AnySimpleType;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/sf/saxon/type/AnySimpleType;
    .locals 1

    const-class v0, Lnet/sf/saxon/type/AnySimpleType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/type/AnySimpleType;

    return-object p0
.end method

.method public static values()[Lnet/sf/saxon/type/AnySimpleType;
    .locals 1

    sget-object v0, Lnet/sf/saxon/type/AnySimpleType;->$VALUES:[Lnet/sf/saxon/type/AnySimpleType;

    invoke-virtual {v0}, [Lnet/sf/saxon/type/AnySimpleType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/sf/saxon/type/AnySimpleType;

    return-object v0
.end method


# virtual methods
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

    if-ne p1, p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Lnet/sf/saxon/type/SchemaException;

    const-string p1, "Cannot derive xs:anySimpleType from another type"

    invoke-direct {p0, p1}, Lnet/sf/saxon/type/SchemaException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getBaseType()Lnet/sf/saxon/type/SchemaType;
    .locals 0

    invoke-static {}, Lnet/sf/saxon/type/AnyType;->getInstance()Lnet/sf/saxon/type/AnyType;

    move-result-object p0

    return-object p0
.end method

.method public getBlock()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getBuiltInBaseType()Lnet/sf/saxon/type/SchemaType;
    .locals 0

    return-object p0
.end method

.method public getDerivationMethod()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 0

    const-string p0, "xs:anySimpleType"

    return-object p0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 0

    const-string p0, "xs:anySimpleType"

    return-object p0
.end method

.method public getEQName()Ljava/lang/String;
    .locals 0

    const-string p0, "Q{http://www.w3.org/2001/XMLSchema}anySimpleType"

    return-object p0
.end method

.method public getFinalProhibitions()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getFingerprint()I
    .locals 0

    const/16 p0, 0x23d

    return p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    const-string p0, "anySimpleType"

    return-object p0
.end method

.method public getRedefinitionLevel()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getStructuredQName()Lnet/sf/saxon/om/StructuredQName;
    .locals 0

    sget-object p0, Lnet/sf/saxon/type/AnySimpleType;->NAME:Lnet/sf/saxon/om/StructuredQName;

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

.method public getTypedValue(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/om/NamespaceResolver;Lnet/sf/saxon/lib/ConversionRules;)Lnet/sf/saxon/om/AtomicSequence;
    .locals 0

    invoke-static {p1}, Lnet/sf/saxon/value/StringValue;->makeUntypedAtomic(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/value/StringValue;

    move-result-object p0

    return-object p0
.end method

.method public getValidationStatus()Lnet/sf/saxon/type/SchemaValidationStatus;
    .locals 0

    sget-object p0, Lnet/sf/saxon/type/SchemaValidationStatus;->VALIDATED:Lnet/sf/saxon/type/SchemaValidationStatus;

    return-object p0
.end method

.method public getWhitespaceAction()I
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

.method public isBuiltInType()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isComplexType()Z
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

.method public isListType()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isNamespaceSensitive()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSameType(Lnet/sf/saxon/type/SchemaType;)Z
    .locals 0

    sget-object p0, Lnet/sf/saxon/type/AnySimpleType;->INSTANCE:Lnet/sf/saxon/type/AnySimpleType;

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSimpleType()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isUnionType()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public postprocess(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/str/UnicodeString;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/type/ValidationException;
        }
    .end annotation

    return-object p1
.end method

.method public preprocess(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/str/UnicodeString;
    .locals 0

    return-object p1
.end method

.method public validateContent(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/om/NamespaceResolver;Lnet/sf/saxon/lib/ConversionRules;)Lnet/sf/saxon/type/ValidationFailure;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method
