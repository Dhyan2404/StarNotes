.class public Lnet/sf/saxon/functions/registry/ExsltCommonFunctionSet;
.super Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/sf/saxon/functions/registry/ExsltCommonFunctionSet$ObjectTypeFn;,
        Lnet/sf/saxon/functions/registry/ExsltCommonFunctionSet$NodeSetFn;
    }
.end annotation


# static fields
.field public static final c:Lnet/sf/saxon/functions/registry/ExsltCommonFunctionSet;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lnet/sf/saxon/functions/registry/ExsltCommonFunctionSet;

    invoke-direct {v0}, Lnet/sf/saxon/functions/registry/ExsltCommonFunctionSet;-><init>()V

    sput-object v0, Lnet/sf/saxon/functions/registry/ExsltCommonFunctionSet;->c:Lnet/sf/saxon/functions/registry/ExsltCommonFunctionSet;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;-><init>()V

    invoke-virtual {p0}, Lnet/sf/saxon/functions/registry/ExsltCommonFunctionSet;->init()V

    return-void
.end method

.method public static getInstance()Lnet/sf/saxon/functions/registry/ExsltCommonFunctionSet;
    .locals 1

    sget-object v0, Lnet/sf/saxon/functions/registry/ExsltCommonFunctionSet;->c:Lnet/sf/saxon/functions/registry/ExsltCommonFunctionSet;

    return-object v0
.end method


# virtual methods
.method public getConventionalPrefix()Ljava/lang/String;
    .locals 0

    const-string p0, "exsltCommon"

    return-object p0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 0

    const-string p0, "http://exslt.org/common"

    return-object p0
.end method

.method public final init()V
    .locals 12

    const-string v1, "node-set"

    const/4 v2, 0x1

    const-class v3, Lnet/sf/saxon/functions/registry/ExsltCommonFunctionSet$NodeSetFn;

    invoke-static {}, Lnet/sf/saxon/type/AnyItemType;->getInstance()Lnet/sf/saxon/type/AnyItemType;

    move-result-object v4

    const/16 v5, 0x6000

    const/4 v6, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v0

    invoke-static {}, Lnet/sf/saxon/type/AnyItemType;->getInstance()Lnet/sf/saxon/type/AnyItemType;

    move-result-object v1

    const/16 v2, 0x6000

    sget-object v3, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->EMPTY:Lnet/sf/saxon/om/Sequence;

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v1, v2, v3}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v6, "object-type"

    const/4 v7, 0x1

    const-class v8, Lnet/sf/saxon/functions/registry/ExsltCommonFunctionSet$ObjectTypeFn;

    sget-object v9, Lnet/sf/saxon/type/BuiltInAtomicType;->STRING:Lnet/sf/saxon/type/BuiltInAtomicType;

    const/16 v10, 0x4000

    const/4 v11, 0x0

    move-object v5, p0

    invoke-virtual/range {v5 .. v11}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object p0

    invoke-static {}, Lnet/sf/saxon/type/AnyItemType;->getInstance()Lnet/sf/saxon/type/AnyItemType;

    move-result-object v0

    const/16 v1, 0x4000

    const/4 v2, 0x0

    invoke-virtual {p0, v4, v0, v1, v2}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    return-void
.end method
