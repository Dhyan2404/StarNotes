.class public Lnet/sf/saxon/functions/registry/UseWhen30FunctionSet;
.super Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;
.source "SourceFile"


# static fields
.field public static final c:Lnet/sf/saxon/functions/registry/UseWhen30FunctionSet;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lnet/sf/saxon/functions/registry/UseWhen30FunctionSet;

    invoke-direct {v0}, Lnet/sf/saxon/functions/registry/UseWhen30FunctionSet;-><init>()V

    sput-object v0, Lnet/sf/saxon/functions/registry/UseWhen30FunctionSet;->c:Lnet/sf/saxon/functions/registry/UseWhen30FunctionSet;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;-><init>()V

    invoke-virtual {p0}, Lnet/sf/saxon/functions/registry/UseWhen30FunctionSet;->init()V

    return-void
.end method

.method public static getInstance()Lnet/sf/saxon/functions/registry/UseWhen30FunctionSet;
    .locals 1

    sget-object v0, Lnet/sf/saxon/functions/registry/UseWhen30FunctionSet;->c:Lnet/sf/saxon/functions/registry/UseWhen30FunctionSet;

    return-object v0
.end method


# virtual methods
.method public addXPathFunctions()V
    .locals 1

    invoke-static {}, Lnet/sf/saxon/functions/registry/XPath31FunctionSet;->getInstance()Lnet/sf/saxon/functions/registry/XPath31FunctionSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->importFunctionSet(Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;)V

    return-void
.end method

.method public init()V
    .locals 15

    invoke-virtual {p0}, Lnet/sf/saxon/functions/registry/UseWhen30FunctionSet;->addXPathFunctions()V

    const-string v1, "available-system-properties"

    const/4 v2, 0x0

    const-class v3, Lnet/sf/saxon/functions/AvailableSystemProperties;

    sget-object v4, Lnet/sf/saxon/type/BuiltInAtomicType;->QNAME:Lnet/sf/saxon/type/BuiltInAtomicType;

    const v5, 0xe000

    const/16 v6, 0x200

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v8, "element-available"

    const/4 v9, 0x1

    const-class v10, Lnet/sf/saxon/functions/ElementAvailable;

    sget-object v14, Lnet/sf/saxon/type/BuiltInAtomicType;->BOOLEAN:Lnet/sf/saxon/type/BuiltInAtomicType;

    const/16 v12, 0x4000

    const/16 v13, 0x10

    move-object v7, p0

    move-object v11, v14

    invoke-virtual/range {v7 .. v13}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v0

    sget-object v8, Lnet/sf/saxon/type/BuiltInAtomicType;->STRING:Lnet/sf/saxon/type/BuiltInAtomicType;

    const/4 v9, 0x0

    const/16 v10, 0x4000

    const/4 v11, 0x0

    invoke-virtual {v0, v9, v8, v10, v11}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v1, "function-available"

    const/4 v2, 0x1

    const-class v3, Lnet/sf/saxon/functions/FunctionAvailable;

    const/16 v5, 0x4000

    const/16 v6, 0x210

    move-object v0, p0

    move-object v4, v14

    invoke-virtual/range {v0 .. v6}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v0

    invoke-virtual {v0, v9, v8, v10, v11}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v1, "function-available"

    const/4 v2, 0x2

    const-class v3, Lnet/sf/saxon/functions/FunctionAvailable;

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v0

    invoke-virtual {v0, v9, v8, v10, v11}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v0

    const/4 v1, 0x1

    sget-object v2, Lnet/sf/saxon/type/BuiltInAtomicType;->INTEGER:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-virtual {v0, v1, v2, v10, v11}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v2, "system-property"

    const/4 v3, 0x1

    const-class v4, Lnet/sf/saxon/functions/SystemProperty;

    const/16 v6, 0x4000

    const/16 v7, 0x210

    move-object v1, p0

    move-object v5, v8

    invoke-virtual/range {v1 .. v7}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v0

    invoke-virtual {v0, v9, v8, v10, v11}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v1, "type-available"

    const/4 v2, 0x1

    const-class v3, Lnet/sf/saxon/functions/TypeAvailable;

    const/16 v5, 0x4000

    const/16 v6, 0x10

    move-object v0, p0

    move-object v4, v14

    invoke-virtual/range {v0 .. v6}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object p0

    invoke-virtual {p0, v9, v8, v10, v11}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    return-void
.end method
