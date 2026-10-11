.class public Lnet/sf/saxon/expr/sort/MergeInstr$MergeSource;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/saxon/expr/sort/MergeInstr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MergeSource"
.end annotation


# instance fields
.field public final a:Lnet/sf/saxon/expr/sort/MergeInstr;

.field public accumulators:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lnet/sf/saxon/expr/accum/Accumulator;",
            ">;"
        }
    .end annotation
.end field

.field public baseURI:Ljava/lang/String;

.field public forEachItemOp:Lnet/sf/saxon/expr/Operand;

.field public forEachStreamOp:Lnet/sf/saxon/expr/Operand;

.field public invertedAction:Ljava/lang/Object;

.field public location:Lnet/sf/saxon/s9api/Location;

.field public mergeKeyDefinitions:Lnet/sf/saxon/expr/sort/SortKeyDefinitionList;

.field public rowSelectOp:Lnet/sf/saxon/expr/Operand;

.field public schemaType:Lnet/sf/saxon/type/SchemaType;

.field public sourceName:Ljava/lang/String;

.field public streamable:Z

.field public validation:I


# direct methods
.method public constructor <init>(Lnet/sf/saxon/expr/sort/MergeInstr;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lnet/sf/saxon/expr/sort/MergeInstr$MergeSource;->forEachItemOp:Lnet/sf/saxon/expr/Operand;

    .line 3
    iput-object v0, p0, Lnet/sf/saxon/expr/sort/MergeInstr$MergeSource;->forEachStreamOp:Lnet/sf/saxon/expr/Operand;

    .line 4
    iput-object v0, p0, Lnet/sf/saxon/expr/sort/MergeInstr$MergeSource;->rowSelectOp:Lnet/sf/saxon/expr/Operand;

    .line 5
    iput-object v0, p0, Lnet/sf/saxon/expr/sort/MergeInstr$MergeSource;->sourceName:Ljava/lang/String;

    .line 6
    iput-object v0, p0, Lnet/sf/saxon/expr/sort/MergeInstr$MergeSource;->mergeKeyDefinitions:Lnet/sf/saxon/expr/sort/SortKeyDefinitionList;

    .line 7
    iput-object v0, p0, Lnet/sf/saxon/expr/sort/MergeInstr$MergeSource;->baseURI:Ljava/lang/String;

    .line 8
    iput-object p1, p0, Lnet/sf/saxon/expr/sort/MergeInstr$MergeSource;->a:Lnet/sf/saxon/expr/sort/MergeInstr;

    return-void
.end method

.method public constructor <init>(Lnet/sf/saxon/expr/sort/MergeInstr;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;Ljava/lang/String;Lnet/sf/saxon/expr/sort/SortKeyDefinitionList;Ljava/lang/String;)V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lnet/sf/saxon/expr/sort/MergeInstr$MergeSource;->forEachItemOp:Lnet/sf/saxon/expr/Operand;

    .line 11
    iput-object v0, p0, Lnet/sf/saxon/expr/sort/MergeInstr$MergeSource;->forEachStreamOp:Lnet/sf/saxon/expr/Operand;

    .line 12
    iput-object v0, p0, Lnet/sf/saxon/expr/sort/MergeInstr$MergeSource;->rowSelectOp:Lnet/sf/saxon/expr/Operand;

    .line 13
    iput-object v0, p0, Lnet/sf/saxon/expr/sort/MergeInstr$MergeSource;->sourceName:Ljava/lang/String;

    .line 14
    iput-object v0, p0, Lnet/sf/saxon/expr/sort/MergeInstr$MergeSource;->mergeKeyDefinitions:Lnet/sf/saxon/expr/sort/SortKeyDefinitionList;

    .line 15
    iput-object v0, p0, Lnet/sf/saxon/expr/sort/MergeInstr$MergeSource;->baseURI:Ljava/lang/String;

    .line 16
    iput-object p1, p0, Lnet/sf/saxon/expr/sort/MergeInstr$MergeSource;->a:Lnet/sf/saxon/expr/sort/MergeInstr;

    if-eqz p2, :cond_0

    .line 17
    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/expr/sort/MergeInstr$MergeSource;->initForEachItem(Lnet/sf/saxon/expr/sort/MergeInstr;Lnet/sf/saxon/expr/Expression;)V

    :cond_0
    if-eqz p3, :cond_1

    .line 18
    invoke-virtual {p0, p1, p3}, Lnet/sf/saxon/expr/sort/MergeInstr$MergeSource;->initForEachStream(Lnet/sf/saxon/expr/sort/MergeInstr;Lnet/sf/saxon/expr/Expression;)V

    :cond_1
    if-eqz p4, :cond_2

    .line 19
    invoke-virtual {p0, p1, p4}, Lnet/sf/saxon/expr/sort/MergeInstr$MergeSource;->initRowSelect(Lnet/sf/saxon/expr/sort/MergeInstr;Lnet/sf/saxon/expr/Expression;)V

    .line 20
    :cond_2
    iput-object p5, p0, Lnet/sf/saxon/expr/sort/MergeInstr$MergeSource;->sourceName:Ljava/lang/String;

    .line 21
    iput-object p6, p0, Lnet/sf/saxon/expr/sort/MergeInstr$MergeSource;->mergeKeyDefinitions:Lnet/sf/saxon/expr/sort/SortKeyDefinitionList;

    .line 22
    iput-object p7, p0, Lnet/sf/saxon/expr/sort/MergeInstr$MergeSource;->baseURI:Ljava/lang/String;

    return-void
.end method

.method public static a(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/Expression;
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/Expression;->copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public copyMergeSource(Lnet/sf/saxon/expr/sort/MergeInstr;Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/sort/MergeInstr$MergeSource;
    .locals 10

    iget-object v0, p0, Lnet/sf/saxon/expr/sort/MergeInstr$MergeSource;->mergeKeyDefinitions:Lnet/sf/saxon/expr/sort/SortKeyDefinitionList;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/sort/SortKeyDefinitionList;->size()I

    move-result v0

    new-array v0, v0, [Lnet/sf/saxon/expr/sort/SortKeyDefinition;

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lnet/sf/saxon/expr/sort/MergeInstr$MergeSource;->mergeKeyDefinitions:Lnet/sf/saxon/expr/sort/SortKeyDefinitionList;

    invoke-virtual {v2}, Lnet/sf/saxon/expr/sort/SortKeyDefinitionList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lnet/sf/saxon/expr/sort/MergeInstr$MergeSource;->mergeKeyDefinitions:Lnet/sf/saxon/expr/sort/SortKeyDefinitionList;

    invoke-virtual {v2, v1}, Lnet/sf/saxon/expr/sort/SortKeyDefinitionList;->getSortKeyDefinition(I)Lnet/sf/saxon/expr/sort/SortKeyDefinition;

    move-result-object v2

    invoke-virtual {v2, p2}, Lnet/sf/saxon/expr/sort/SortKeyDefinition;->copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/sort/SortKeyDefinition;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v1, Lnet/sf/saxon/expr/sort/MergeInstr$MergeSource;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/sort/MergeInstr$MergeSource;->getForEachItem()Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    invoke-static {v2, p2}, Lnet/sf/saxon/expr/sort/MergeInstr$MergeSource;->a(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/Expression;

    move-result-object v4

    invoke-virtual {p0}, Lnet/sf/saxon/expr/sort/MergeInstr$MergeSource;->getForEachSource()Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    invoke-static {v2, p2}, Lnet/sf/saxon/expr/sort/MergeInstr$MergeSource;->a(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/Expression;

    move-result-object v5

    invoke-virtual {p0}, Lnet/sf/saxon/expr/sort/MergeInstr$MergeSource;->getRowSelect()Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    invoke-static {v2, p2}, Lnet/sf/saxon/expr/sort/MergeInstr$MergeSource;->a(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/Expression;

    move-result-object v6

    iget-object v7, p0, Lnet/sf/saxon/expr/sort/MergeInstr$MergeSource;->sourceName:Ljava/lang/String;

    new-instance v8, Lnet/sf/saxon/expr/sort/SortKeyDefinitionList;

    invoke-direct {v8, v0}, Lnet/sf/saxon/expr/sort/SortKeyDefinitionList;-><init>([Lnet/sf/saxon/expr/sort/SortKeyDefinition;)V

    iget-object v9, p0, Lnet/sf/saxon/expr/sort/MergeInstr$MergeSource;->baseURI:Ljava/lang/String;

    move-object v2, v1

    move-object v3, p1

    invoke-direct/range {v2 .. v9}, Lnet/sf/saxon/expr/sort/MergeInstr$MergeSource;-><init>(Lnet/sf/saxon/expr/sort/MergeInstr;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;Ljava/lang/String;Lnet/sf/saxon/expr/sort/SortKeyDefinitionList;Ljava/lang/String;)V

    iget p1, p0, Lnet/sf/saxon/expr/sort/MergeInstr$MergeSource;->validation:I

    iput p1, v1, Lnet/sf/saxon/expr/sort/MergeInstr$MergeSource;->validation:I

    iget-object p1, p0, Lnet/sf/saxon/expr/sort/MergeInstr$MergeSource;->schemaType:Lnet/sf/saxon/type/SchemaType;

    iput-object p1, v1, Lnet/sf/saxon/expr/sort/MergeInstr$MergeSource;->schemaType:Lnet/sf/saxon/type/SchemaType;

    iget-boolean p1, p0, Lnet/sf/saxon/expr/sort/MergeInstr$MergeSource;->streamable:Z

    iput-boolean p1, v1, Lnet/sf/saxon/expr/sort/MergeInstr$MergeSource;->streamable:Z

    iget-object p0, p0, Lnet/sf/saxon/expr/sort/MergeInstr$MergeSource;->location:Lnet/sf/saxon/s9api/Location;

    iput-object p0, v1, Lnet/sf/saxon/expr/sort/MergeInstr$MergeSource;->location:Lnet/sf/saxon/s9api/Location;

    return-object v1
.end method

.method public getForEachItem()Lnet/sf/saxon/expr/Expression;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/sort/MergeInstr$MergeSource;->forEachItemOp:Lnet/sf/saxon/expr/Operand;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getForEachSource()Lnet/sf/saxon/expr/Expression;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/sort/MergeInstr$MergeSource;->forEachStreamOp:Lnet/sf/saxon/expr/Operand;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getMergeKeyDefinitionSet()Lnet/sf/saxon/expr/sort/SortKeyDefinitionList;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/sort/MergeInstr$MergeSource;->mergeKeyDefinitions:Lnet/sf/saxon/expr/sort/SortKeyDefinitionList;

    return-object p0
.end method

.method public getRowSelect()Lnet/sf/saxon/expr/Expression;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/sort/MergeInstr$MergeSource;->rowSelectOp:Lnet/sf/saxon/expr/Operand;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0
.end method

.method public initForEachItem(Lnet/sf/saxon/expr/sort/MergeInstr;Lnet/sf/saxon/expr/Expression;)V
    .locals 2

    new-instance v0, Lnet/sf/saxon/expr/Operand;

    sget-object v1, Lnet/sf/saxon/expr/OperandRole;->INSPECT:Lnet/sf/saxon/expr/OperandRole;

    invoke-direct {v0, p1, p2, v1}, Lnet/sf/saxon/expr/Operand;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/OperandRole;)V

    iput-object v0, p0, Lnet/sf/saxon/expr/sort/MergeInstr$MergeSource;->forEachItemOp:Lnet/sf/saxon/expr/Operand;

    return-void
.end method

.method public initForEachStream(Lnet/sf/saxon/expr/sort/MergeInstr;Lnet/sf/saxon/expr/Expression;)V
    .locals 2

    new-instance v0, Lnet/sf/saxon/expr/Operand;

    sget-object v1, Lnet/sf/saxon/expr/OperandRole;->INSPECT:Lnet/sf/saxon/expr/OperandRole;

    invoke-direct {v0, p1, p2, v1}, Lnet/sf/saxon/expr/Operand;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/OperandRole;)V

    iput-object v0, p0, Lnet/sf/saxon/expr/sort/MergeInstr$MergeSource;->forEachStreamOp:Lnet/sf/saxon/expr/Operand;

    return-void
.end method

.method public initRowSelect(Lnet/sf/saxon/expr/sort/MergeInstr;Lnet/sf/saxon/expr/Expression;)V
    .locals 2

    new-instance v0, Lnet/sf/saxon/expr/Operand;

    invoke-static {}, Lnet/sf/saxon/expr/sort/MergeInstr;->h()Lnet/sf/saxon/expr/OperandRole;

    move-result-object v1

    invoke-direct {v0, p1, p2, v1}, Lnet/sf/saxon/expr/Operand;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/OperandRole;)V

    iput-object v0, p0, Lnet/sf/saxon/expr/sort/MergeInstr$MergeSource;->rowSelectOp:Lnet/sf/saxon/expr/Operand;

    return-void
.end method

.method public prepareForStreaming()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    return-void
.end method

.method public setForEachItem(Lnet/sf/saxon/expr/Expression;)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p0, p0, Lnet/sf/saxon/expr/sort/MergeInstr$MergeSource;->forEachItemOp:Lnet/sf/saxon/expr/Operand;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/Operand;->setChildExpression(Lnet/sf/saxon/expr/Expression;)V

    :cond_0
    return-void
.end method

.method public setForEachStream(Lnet/sf/saxon/expr/Expression;)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p0, p0, Lnet/sf/saxon/expr/sort/MergeInstr$MergeSource;->forEachStreamOp:Lnet/sf/saxon/expr/Operand;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/Operand;->setChildExpression(Lnet/sf/saxon/expr/Expression;)V

    :cond_0
    return-void
.end method

.method public setMergeKeyDefinitionSet(Lnet/sf/saxon/expr/sort/SortKeyDefinitionList;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/expr/sort/MergeInstr$MergeSource;->mergeKeyDefinitions:Lnet/sf/saxon/expr/sort/SortKeyDefinitionList;

    return-void
.end method

.method public setRowSelect(Lnet/sf/saxon/expr/Expression;)V
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/sort/MergeInstr$MergeSource;->rowSelectOp:Lnet/sf/saxon/expr/Operand;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/Operand;->setChildExpression(Lnet/sf/saxon/expr/Expression;)V

    return-void
.end method

.method public setStreamable(Z)V
    .locals 3

    iput-boolean p1, p0, Lnet/sf/saxon/expr/sort/MergeInstr$MergeSource;->streamable:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lnet/sf/saxon/expr/sort/MergeInstr$MergeSource;->a:Lnet/sf/saxon/expr/sort/MergeInstr;

    invoke-virtual {p1}, Lnet/sf/saxon/expr/Expression;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p1

    sget-object v0, Lnet/sf/saxon/lib/Feature;->STREAMING_FALLBACK:Lnet/sf/saxon/lib/Feature;

    invoke-virtual {p1, v0}, Lnet/sf/saxon/Configuration;->getBooleanProperty(Lnet/sf/saxon/lib/Feature;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lnet/sf/saxon/expr/sort/MergeInstr$MergeSource;->streamable:Z

    iget-object v0, p0, Lnet/sf/saxon/expr/sort/MergeInstr$MergeSource;->rowSelectOp:Lnet/sf/saxon/expr/Operand;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    iget-object p0, p0, Lnet/sf/saxon/expr/sort/MergeInstr$MergeSource;->rowSelectOp:Lnet/sf/saxon/expr/Operand;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Expression;->getRetainedStaticContext()Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Lnet/sf/saxon/expr/Expression;

    aput-object v0, v2, p1

    const-string p1, "snapshot"

    invoke-static {p1, v1, v2}, Lnet/sf/saxon/functions/SystemFunction;->makeCall(Ljava/lang/String;Lnet/sf/saxon/expr/parser/RetainedStaticContext;[Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/Operand;->setChildExpression(Lnet/sf/saxon/expr/Expression;)V

    :cond_0
    return-void
.end method
