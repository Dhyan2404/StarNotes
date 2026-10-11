.class public Lnet/sf/saxon/ma/map/SelfReferenceRecordTest;
.super Lnet/sf/saxon/type/AnyFunctionType;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/ma/map/TupleType;


# instance fields
.field public final e:Lnet/sf/saxon/ma/map/RecordTest;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/ma/map/RecordTest;)V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/type/AnyFunctionType;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/ma/map/SelfReferenceRecordTest;->e:Lnet/sf/saxon/ma/map/RecordTest;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p0, p1, :cond_1

    iget-object v0, p0, Lnet/sf/saxon/ma/map/SelfReferenceRecordTest;->e:Lnet/sf/saxon/ma/map/RecordTest;

    invoke-virtual {v0, p1}, Lnet/sf/saxon/ma/map/RecordTest;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    instance-of v0, p1, Lnet/sf/saxon/ma/map/SelfReferenceRecordTest;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lnet/sf/saxon/ma/map/SelfReferenceRecordTest;->e:Lnet/sf/saxon/ma/map/RecordTest;

    check-cast p1, Lnet/sf/saxon/ma/map/SelfReferenceRecordTest;

    iget-object p1, p1, Lnet/sf/saxon/ma/map/SelfReferenceRecordTest;->e:Lnet/sf/saxon/ma/map/RecordTest;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/ma/map/RecordTest;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

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

.method public getArgumentTypes()[Lnet/sf/saxon/value/SequenceType;
    .locals 0

    sget-object p0, Lnet/sf/saxon/value/SequenceType;->SINGLE_ATOMIC:Lnet/sf/saxon/value/SequenceType;

    filled-new-array {p0}, [Lnet/sf/saxon/value/SequenceType;

    move-result-object p0

    return-object p0
.end method

.method public getArity()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getBasicAlphaCode()Ljava/lang/String;
    .locals 0

    const-string p0, ".."

    return-object p0
.end method

.method public getDefaultPriority()D
    .locals 2

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    return-wide v0
.end method

.method public getFieldNames()Ljava/lang/Iterable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/ma/map/SelfReferenceRecordTest;->e:Lnet/sf/saxon/ma/map/RecordTest;

    invoke-virtual {p0}, Lnet/sf/saxon/ma/map/RecordTest;->getFieldNames()Ljava/lang/Iterable;

    move-result-object p0

    return-object p0
.end method

.method public getFieldType(Ljava/lang/String;)Lnet/sf/saxon/value/SequenceType;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/ma/map/SelfReferenceRecordTest;->e:Lnet/sf/saxon/ma/map/RecordTest;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/ma/map/RecordTest;->getFieldType(Ljava/lang/String;)Lnet/sf/saxon/value/SequenceType;

    move-result-object p0

    return-object p0
.end method

.method public getGenre()Lnet/sf/saxon/om/Genre;
    .locals 0

    sget-object p0, Lnet/sf/saxon/om/Genre;->MAP:Lnet/sf/saxon/om/Genre;

    return-object p0
.end method

.method public getResultType()Lnet/sf/saxon/value/SequenceType;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/ma/map/SelfReferenceRecordTest;->e:Lnet/sf/saxon/ma/map/RecordTest;

    invoke-virtual {p0}, Lnet/sf/saxon/ma/map/RecordTest;->getResultType()Lnet/sf/saxon/value/SequenceType;

    move-result-object p0

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    const p0, 0x27ca481f

    return p0
.end method

.method public isArrayType()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isExtensible()Z
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/ma/map/SelfReferenceRecordTest;->e:Lnet/sf/saxon/ma/map/RecordTest;

    invoke-virtual {p0}, Lnet/sf/saxon/ma/map/RecordTest;->isExtensible()Z

    move-result p0

    return p0
.end method

.method public isMapType()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isOptionalField(Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/ma/map/SelfReferenceRecordTest;->e:Lnet/sf/saxon/ma/map/RecordTest;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/ma/map/RecordTest;->isOptionalField(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public makeFunctionSequenceCoercer(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/parser/RoleDiagnostic;)Lnet/sf/saxon/expr/Expression;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    new-instance v0, Lnet/sf/saxon/type/SpecificFunctionType;

    invoke-virtual {p0}, Lnet/sf/saxon/ma/map/SelfReferenceRecordTest;->getArgumentTypes()[Lnet/sf/saxon/value/SequenceType;

    move-result-object v1

    invoke-virtual {p0}, Lnet/sf/saxon/ma/map/SelfReferenceRecordTest;->getResultType()Lnet/sf/saxon/value/SequenceType;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lnet/sf/saxon/type/SpecificFunctionType;-><init>([Lnet/sf/saxon/value/SequenceType;Lnet/sf/saxon/value/SequenceType;)V

    invoke-virtual {v0, p1, p2}, Lnet/sf/saxon/type/SpecificFunctionType;->makeFunctionSequenceCoercer(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/parser/RoleDiagnostic;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0
.end method

.method public matches(Lnet/sf/saxon/om/Item;Lnet/sf/saxon/type/TypeHierarchy;)Z
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/ma/map/SelfReferenceRecordTest;->e:Lnet/sf/saxon/ma/map/RecordTest;

    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/ma/map/RecordTest;->matches(Lnet/sf/saxon/om/Item;Lnet/sf/saxon/type/TypeHierarchy;)Z

    move-result p0

    return p0
.end method

.method public relationship(Lnet/sf/saxon/type/FunctionItemType;Lnet/sf/saxon/type/TypeHierarchy;)Lnet/sf/saxon/type/Affinity;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/ma/map/SelfReferenceRecordTest;->e:Lnet/sf/saxon/ma/map/RecordTest;

    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/ma/map/RecordTest;->relationship(Lnet/sf/saxon/type/FunctionItemType;Lnet/sf/saxon/type/TypeHierarchy;)Lnet/sf/saxon/type/Affinity;

    move-result-object p0

    return-object p0
.end method

.method public toExportString()Ljava/lang/String;
    .locals 0

    const-string p0, ".."

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    const-string p0, ".."

    return-object p0
.end method
