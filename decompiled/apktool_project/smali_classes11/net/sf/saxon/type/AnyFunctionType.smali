.class public Lnet/sf/saxon/type/AnyFunctionType;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/type/FunctionItemType;


# static fields
.field public static final ANY_FUNCTION:Lnet/sf/saxon/type/AnyFunctionType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lnet/sf/saxon/type/AnyFunctionType;

    invoke-direct {v0}, Lnet/sf/saxon/type/AnyFunctionType;-><init>()V

    sput-object v0, Lnet/sf/saxon/type/AnyFunctionType;->ANY_FUNCTION:Lnet/sf/saxon/type/AnyFunctionType;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lnet/sf/saxon/type/AnyFunctionType;
    .locals 1

    sget-object v0, Lnet/sf/saxon/type/AnyFunctionType;->ANY_FUNCTION:Lnet/sf/saxon/type/AnyFunctionType;

    return-object v0
.end method


# virtual methods
.method public getAnnotationAssertions()Lnet/sf/saxon/query/AnnotationList;
    .locals 0

    sget-object p0, Lnet/sf/saxon/query/AnnotationList;->EMPTY:Lnet/sf/saxon/query/AnnotationList;

    return-object p0
.end method

.method public getArgumentTypes()[Lnet/sf/saxon/value/SequenceType;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getAtomizedItemType()Lnet/sf/saxon/type/PlainType;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getBasicAlphaCode()Ljava/lang/String;
    .locals 0

    const-string p0, "F"

    return-object p0
.end method

.method public getDefaultPriority()D
    .locals 2

    const-wide/high16 v0, -0x4020000000000000L    # -0.5

    return-wide v0
.end method

.method public final getPrimitiveItemType()Lnet/sf/saxon/type/ItemType;
    .locals 0

    sget-object p0, Lnet/sf/saxon/type/AnyFunctionType;->ANY_FUNCTION:Lnet/sf/saxon/type/AnyFunctionType;

    return-object p0
.end method

.method public final getPrimitiveType()I
    .locals 0

    const/16 p0, 0x63

    return p0
.end method

.method public getResultType()Lnet/sf/saxon/value/SequenceType;
    .locals 0

    sget-object p0, Lnet/sf/saxon/value/SequenceType;->ANY_SEQUENCE:Lnet/sf/saxon/value/SequenceType;

    return-object p0
.end method

.method public getUType()Lnet/sf/saxon/type/UType;
    .locals 0

    sget-object p0, Lnet/sf/saxon/type/UType;->FUNCTION:Lnet/sf/saxon/type/UType;

    return-object p0
.end method

.method public isArrayType()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isAtomicType()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isAtomizable(Lnet/sf/saxon/type/TypeHierarchy;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isMapType()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isPlainType()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public makeFunctionSequenceCoercer(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/parser/RoleDiagnostic;)Lnet/sf/saxon/expr/Expression;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    new-instance v0, Lnet/sf/saxon/expr/ItemChecker;

    invoke-direct {v0, p1, p0, p2}, Lnet/sf/saxon/expr/ItemChecker;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/expr/parser/RoleDiagnostic;)V

    return-object v0
.end method

.method public matches(Lnet/sf/saxon/om/Item;Lnet/sf/saxon/type/TypeHierarchy;)Z
    .locals 0

    instance-of p0, p1, Lnet/sf/saxon/om/Function;

    return p0
.end method

.method public relationship(Lnet/sf/saxon/type/FunctionItemType;Lnet/sf/saxon/type/TypeHierarchy;)Lnet/sf/saxon/type/Affinity;
    .locals 0

    if-ne p1, p0, :cond_0

    sget-object p0, Lnet/sf/saxon/type/Affinity;->SAME_TYPE:Lnet/sf/saxon/type/Affinity;

    return-object p0

    :cond_0
    sget-object p0, Lnet/sf/saxon/type/Affinity;->SUBSUMES:Lnet/sf/saxon/type/Affinity;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    const-string p0, "function(*)"

    return-object p0
.end method
