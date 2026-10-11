.class public Lnet/sf/saxon/functions/MathFunctionSet;
.super Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/sf/saxon/functions/MathFunctionSet$Atan2Fn;,
        Lnet/sf/saxon/functions/MathFunctionSet$PowFn;,
        Lnet/sf/saxon/functions/MathFunctionSet$Exp10Fn;,
        Lnet/sf/saxon/functions/MathFunctionSet$ExpFn;,
        Lnet/sf/saxon/functions/MathFunctionSet$Log10Fn;,
        Lnet/sf/saxon/functions/MathFunctionSet$LogFn;,
        Lnet/sf/saxon/functions/MathFunctionSet$SqrtFn;,
        Lnet/sf/saxon/functions/MathFunctionSet$AtanFn;,
        Lnet/sf/saxon/functions/MathFunctionSet$AcosFn;,
        Lnet/sf/saxon/functions/MathFunctionSet$AsinFn;,
        Lnet/sf/saxon/functions/MathFunctionSet$TanFn;,
        Lnet/sf/saxon/functions/MathFunctionSet$CosFn;,
        Lnet/sf/saxon/functions/MathFunctionSet$SinFn;,
        Lnet/sf/saxon/functions/MathFunctionSet$TrigFn1;,
        Lnet/sf/saxon/functions/MathFunctionSet$PiFn;
    }
.end annotation


# static fields
.field public static final c:Lnet/sf/saxon/functions/MathFunctionSet;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lnet/sf/saxon/functions/MathFunctionSet;

    invoke-direct {v0}, Lnet/sf/saxon/functions/MathFunctionSet;-><init>()V

    sput-object v0, Lnet/sf/saxon/functions/MathFunctionSet;->c:Lnet/sf/saxon/functions/MathFunctionSet;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;-><init>()V

    invoke-virtual {p0}, Lnet/sf/saxon/functions/MathFunctionSet;->init()V

    return-void
.end method

.method public static getInstance()Lnet/sf/saxon/functions/MathFunctionSet;
    .locals 1

    sget-object v0, Lnet/sf/saxon/functions/MathFunctionSet;->c:Lnet/sf/saxon/functions/MathFunctionSet;

    return-object v0
.end method


# virtual methods
.method public final c(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+",
            "Lnet/sf/saxon/functions/SystemFunction;",
            ">;)V"
        }
    .end annotation

    const/4 v2, 0x1

    sget-object v7, Lnet/sf/saxon/type/BuiltInAtomicType;->DOUBLE:Lnet/sf/saxon/type/BuiltInAtomicType;

    const/16 v5, 0x6000

    const v6, 0x8000

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, v7

    invoke-virtual/range {v0 .. v6}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object p0

    const/16 p1, 0x6000

    sget-object p2, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->EMPTY:Lnet/sf/saxon/om/Sequence;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v7, p1, p2}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    return-void
.end method

.method public getConventionalPrefix()Ljava/lang/String;
    .locals 0

    const-string p0, "math"

    return-object p0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 0

    const-string p0, "http://www.w3.org/2005/xpath-functions/math"

    return-object p0
.end method

.method public final init()V
    .locals 13

    const-string v1, "pi"

    const/4 v2, 0x0

    const-class v3, Lnet/sf/saxon/functions/MathFunctionSet$PiFn;

    sget-object v11, Lnet/sf/saxon/type/BuiltInAtomicType;->DOUBLE:Lnet/sf/saxon/type/BuiltInAtomicType;

    const/16 v5, 0x4000

    const/4 v6, 0x0

    move-object v0, p0

    move-object v4, v11

    invoke-virtual/range {v0 .. v6}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v0, "sin"

    const-class v1, Lnet/sf/saxon/functions/MathFunctionSet$SinFn;

    invoke-virtual {p0, v0, v1}, Lnet/sf/saxon/functions/MathFunctionSet;->c(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v0, "cos"

    const-class v1, Lnet/sf/saxon/functions/MathFunctionSet$CosFn;

    invoke-virtual {p0, v0, v1}, Lnet/sf/saxon/functions/MathFunctionSet;->c(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v0, "tan"

    const-class v1, Lnet/sf/saxon/functions/MathFunctionSet$TanFn;

    invoke-virtual {p0, v0, v1}, Lnet/sf/saxon/functions/MathFunctionSet;->c(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v0, "asin"

    const-class v1, Lnet/sf/saxon/functions/MathFunctionSet$AsinFn;

    invoke-virtual {p0, v0, v1}, Lnet/sf/saxon/functions/MathFunctionSet;->c(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v0, "acos"

    const-class v1, Lnet/sf/saxon/functions/MathFunctionSet$AcosFn;

    invoke-virtual {p0, v0, v1}, Lnet/sf/saxon/functions/MathFunctionSet;->c(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v0, "atan"

    const-class v1, Lnet/sf/saxon/functions/MathFunctionSet$AtanFn;

    invoke-virtual {p0, v0, v1}, Lnet/sf/saxon/functions/MathFunctionSet;->c(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v0, "sqrt"

    const-class v1, Lnet/sf/saxon/functions/MathFunctionSet$SqrtFn;

    invoke-virtual {p0, v0, v1}, Lnet/sf/saxon/functions/MathFunctionSet;->c(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v0, "log"

    const-class v1, Lnet/sf/saxon/functions/MathFunctionSet$LogFn;

    invoke-virtual {p0, v0, v1}, Lnet/sf/saxon/functions/MathFunctionSet;->c(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v0, "log10"

    const-class v1, Lnet/sf/saxon/functions/MathFunctionSet$Log10Fn;

    invoke-virtual {p0, v0, v1}, Lnet/sf/saxon/functions/MathFunctionSet;->c(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v0, "exp"

    const-class v1, Lnet/sf/saxon/functions/MathFunctionSet$ExpFn;

    invoke-virtual {p0, v0, v1}, Lnet/sf/saxon/functions/MathFunctionSet;->c(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v0, "exp10"

    const-class v1, Lnet/sf/saxon/functions/MathFunctionSet$Exp10Fn;

    invoke-virtual {p0, v0, v1}, Lnet/sf/saxon/functions/MathFunctionSet;->c(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v5, "pow"

    const/4 v6, 0x2

    const-class v7, Lnet/sf/saxon/functions/MathFunctionSet$PowFn;

    const/16 v9, 0x6000

    const v10, 0x8000

    move-object v4, p0

    move-object v8, v11

    invoke-virtual/range {v4 .. v10}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v0

    const/16 v1, 0x6000

    sget-object v2, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->EMPTY:Lnet/sf/saxon/om/Sequence;

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v11, v1, v2}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v0

    const/4 v1, 0x1

    const/16 v2, 0x4000

    const/4 v12, 0x0

    invoke-virtual {v0, v1, v11, v2, v12}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    const-string v5, "atan2"

    const-class v7, Lnet/sf/saxon/functions/MathFunctionSet$Atan2Fn;

    const/16 v9, 0x4000

    const/4 v10, 0x0

    invoke-virtual/range {v4 .. v10}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->register(Ljava/lang/String;ILjava/lang/Class;Lnet/sf/saxon/type/ItemType;II)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object p0

    invoke-virtual {p0, v3, v11, v2, v12}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object p0

    invoke-virtual {p0, v1, v11, v2, v12}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    return-void
.end method
