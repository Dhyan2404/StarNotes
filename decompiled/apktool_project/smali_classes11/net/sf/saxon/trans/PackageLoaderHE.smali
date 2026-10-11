.class public Lnet/sf/saxon/trans/PackageLoaderHE;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/trans/packages/IPackageLoader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/sf/saxon/trans/PackageLoaderHE$PatternLoader;,
        Lnet/sf/saxon/trans/PackageLoaderHE$ExpressionLoader;
    }
.end annotation


# static fields
.field protected static final eMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lnet/sf/saxon/trans/PackageLoaderHE$ExpressionLoader;",
            ">;"
        }
    .end annotation
.end field

.field public static final l:Lnet/sf/saxon/value/NestedIntegerValue;

.field protected static final licensableConstructs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final m:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lnet/sf/saxon/trans/PackageLoaderHE$PatternLoader;",
            ">;"
        }
    .end annotation
.end field

.field public static final synthetic n:Z


# instance fields
.field public final a:Lnet/sf/saxon/Configuration;

.field public final allPackages:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lnet/sf/saxon/style/StylesheetPackage;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lnet/sf/saxon/expr/parser/XPathParser;

.field public final c:Lnet/sf/saxon/functions/ExecutableFunctionLibrary;

.field public final completionActions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/sf/saxon/om/Action;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Lnet/sf/saxon/functions/ExecutableFunctionLibrary;

.field public final e:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lnet/sf/saxon/expr/parser/RetainedStaticContext;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lnet/sf/saxon/z/IntHashMap<",
            "Lnet/sf/saxon/s9api/Location;",
            ">;>;"
        }
    .end annotation
.end field

.field public final fixups:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Ljava/util/List<",
            "Lnet/sf/saxon/expr/ComponentInvocation;",
            ">;>;"
        }
    .end annotation
.end field

.field public final g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lnet/sf/saxon/expr/Component;",
            ">;"
        }
    .end annotation
.end field

.field public final h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lnet/sf/saxon/expr/Component;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public i:Ljava/lang/String;

.field public j:Lnet/sf/saxon/value/NestedIntegerValue;

.field public k:Lnet/sf/saxon/expr/instruct/UserFunction;

.field public localBindings:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lnet/sf/saxon/expr/LocalBinding;",
            ">;"
        }
    .end annotation
.end field

.field protected final packStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lnet/sf/saxon/style/StylesheetPackage;",
            ">;"
        }
    .end annotation
.end field

.field public topLevelPackage:Lnet/sf/saxon/style/StylesheetPackage;

.field public final userFunctions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lnet/sf/saxon/trans/SymbolicName;",
            "Lnet/sf/saxon/expr/instruct/UserFunction;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Lnet/sf/saxon/value/NestedIntegerValue;

    const/4 v1, 0x1

    const/16 v2, 0x9

    filled-new-array {v2, v2, v1, v1}, [I

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/sf/saxon/value/NestedIntegerValue;-><init>([I)V

    sput-object v0, Lnet/sf/saxon/trans/PackageLoaderHE;->l:Lnet/sf/saxon/value/NestedIntegerValue;

    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0xc8

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lnet/sf/saxon/trans/PackageLoaderHE;->eMap:Ljava/util/Map;

    new-instance v1, Ljava/util/HashMap;

    const/16 v2, 0x1e

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    sput-object v1, Lnet/sf/saxon/trans/PackageLoaderHE;->licensableConstructs:Ljava/util/Map;

    const-string v2, "gcEE"

    const-string v3, "EE"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "indexedFilter"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "indexedFilter2"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "indexedLookup"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "stream"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "switch"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "acFnRef"

    const-string v3, "PE"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "assign"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "do"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "javaCall"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "while"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/yqk;

    invoke-direct {v1}, Lcom/sunia/HTREnginev2/yqk;-><init>()V

    const-string v2, "among"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/opk;

    invoke-direct {v1}, Lcom/sunia/HTREnginev2/opk;-><init>()V

    const-string v2, "analyzeString"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/aqk;

    invoke-direct {v1}, Lcom/sunia/HTREnginev2/aqk;-><init>()V

    const-string v2, "and"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/mqk;

    invoke-direct {v1}, Lcom/sunia/HTREnginev2/mqk;-><init>()V

    const-string v2, "applyImports"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/zqk;

    invoke-direct {v1}, Lcom/sunia/HTREnginev2/zqk;-><init>()V

    const-string v2, "applyT"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/olk;

    invoke-direct {v1}, Lcom/sunia/HTREnginev2/olk;-><init>()V

    const-string v2, "arith"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/amk;

    invoke-direct {v1}, Lcom/sunia/HTREnginev2/amk;-><init>()V

    const-string v2, "arith10"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/mmk;

    invoke-direct {v1}, Lcom/sunia/HTREnginev2/mmk;-><init>()V

    const-string v2, "array"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/ymk;

    invoke-direct {v1}, Lcom/sunia/HTREnginev2/ymk;-><init>()V

    const-string v2, "arrayBlock"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/knk;

    invoke-direct {v1}, Lcom/sunia/HTREnginev2/knk;-><init>()V

    const-string v2, "atomic"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/ynk;

    invoke-direct {v1}, Lcom/sunia/HTREnginev2/ynk;-><init>()V

    const-string v2, "atomSing"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/lok;

    invoke-direct {v1}, Lcom/sunia/HTREnginev2/lok;-><init>()V

    const-string v2, "att"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/xok;

    invoke-direct {v1}, Lcom/sunia/HTREnginev2/xok;-><init>()V

    const-string v2, "attVal"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/hpk;

    invoke-direct {v1}, Lcom/sunia/HTREnginev2/hpk;-><init>()V

    const-string v2, "axis"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/ipk;

    invoke-direct {v1}, Lcom/sunia/HTREnginev2/ipk;-><init>()V

    const-string v2, "break"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/jpk;

    invoke-direct {v1}, Lcom/sunia/HTREnginev2/jpk;-><init>()V

    const-string v2, "callT"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/kpk;

    invoke-direct {v1}, Lcom/sunia/HTREnginev2/kpk;-><init>()V

    const-string v2, "cast"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/lpk;

    invoke-direct {v1}, Lcom/sunia/HTREnginev2/lpk;-><init>()V

    const-string v2, "castable"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/mpk;

    invoke-direct {v1}, Lcom/sunia/HTREnginev2/mpk;-><init>()V

    const-string v2, "check"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/npk;

    invoke-direct {v1}, Lcom/sunia/HTREnginev2/npk;-><init>()V

    const-string v2, "choose"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/ppk;

    invoke-direct {v1}, Lcom/sunia/HTREnginev2/ppk;-><init>()V

    const-string v2, "coercedFn"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/qpk;

    invoke-direct {v1}, Lcom/sunia/HTREnginev2/qpk;-><init>()V

    const-string v2, "comment"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/spk;

    invoke-direct {v1}, Lcom/sunia/HTREnginev2/spk;-><init>()V

    const-string v2, "compareToInt"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/tpk;

    invoke-direct {v1}, Lcom/sunia/HTREnginev2/tpk;-><init>()V

    const-string v2, "compareToString"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/upk;

    invoke-direct {v1}, Lcom/sunia/HTREnginev2/upk;-><init>()V

    const-string v2, "compAtt"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/vpk;

    invoke-direct {v1}, Lcom/sunia/HTREnginev2/vpk;-><init>()V

    const-string v2, "compElem"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/wpk;

    invoke-direct {v1}, Lcom/sunia/HTREnginev2/wpk;-><init>()V

    const-string v2, "conditionalSort"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/xpk;

    invoke-direct {v1}, Lcom/sunia/HTREnginev2/xpk;-><init>()V

    const-string v2, "condCont"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/ypk;

    invoke-direct {v1}, Lcom/sunia/HTREnginev2/ypk;-><init>()V

    const-string v2, "condSeq"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/zpk;

    invoke-direct {v1}, Lcom/sunia/HTREnginev2/zpk;-><init>()V

    const-string v2, "consume"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/bqk;

    invoke-direct {v1}, Lcom/sunia/HTREnginev2/bqk;-><init>()V

    const-string v2, "convert"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/dqk;

    invoke-direct {v1}, Lcom/sunia/HTREnginev2/dqk;-><init>()V

    const-string v2, "copy"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/eqk;

    invoke-direct {v1}, Lcom/sunia/HTREnginev2/eqk;-><init>()V

    const-string v2, "copyOf"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/fqk;

    invoke-direct {v1}, Lcom/sunia/HTREnginev2/fqk;-><init>()V

    const-string v2, "currentGroup"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/gqk;

    invoke-direct {v1}, Lcom/sunia/HTREnginev2/gqk;-><init>()V

    const-string v2, "currentGroupingKey"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/hqk;

    invoke-direct {v1}, Lcom/sunia/HTREnginev2/hqk;-><init>()V

    const-string v2, "curriedFunc"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/iqk;

    invoke-direct {v1}, Lcom/sunia/HTREnginev2/iqk;-><init>()V

    const-string v2, "cvUntyped"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/jqk;

    invoke-direct {v1}, Lcom/sunia/HTREnginev2/jqk;-><init>()V

    const-string v2, "data"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/kqk;

    invoke-direct {v1}, Lcom/sunia/HTREnginev2/kqk;-><init>()V

    const-string v2, "dbl"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/lqk;

    invoke-direct {v1}, Lcom/sunia/HTREnginev2/lqk;-><init>()V

    const-string v2, "dec"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/oqk;

    invoke-direct {v1}, Lcom/sunia/HTREnginev2/oqk;-><init>()V

    const-string v2, "doc"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/pqk;

    invoke-direct {v1}, Lcom/sunia/HTREnginev2/pqk;-><init>()V

    const-string v2, "docOrder"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/qqk;

    invoke-direct {v1}, Lcom/sunia/HTREnginev2/qqk;-><init>()V

    const-string v2, "dot"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/rqk;

    invoke-direct {v1}, Lcom/sunia/HTREnginev2/rqk;-><init>()V

    const-string v2, "elem"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/sqk;

    invoke-direct {v1}, Lcom/sunia/HTREnginev2/sqk;-><init>()V

    const-string v2, "empty"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/tqk;

    invoke-direct {v1}, Lcom/sunia/HTREnginev2/tqk;-><init>()V

    const-string v2, "emptyTextNodeRemover"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/uqk;

    invoke-direct {v1}, Lcom/sunia/HTREnginev2/uqk;-><init>()V

    const-string v2, "error"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/vqk;

    invoke-direct {v1}, Lcom/sunia/HTREnginev2/vqk;-><init>()V

    const-string v2, "evaluate"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/wqk;

    invoke-direct {v1}, Lcom/sunia/HTREnginev2/wqk;-><init>()V

    const-string v2, "every"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/xqk;

    invoke-direct {v1}, Lcom/sunia/HTREnginev2/xqk;-><init>()V

    const-string v2, "except"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/ark;

    invoke-direct {v1}, Lcom/sunia/HTREnginev2/ark;-><init>()V

    const-string v2, "false"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/brk;

    invoke-direct {v1}, Lcom/sunia/HTREnginev2/brk;-><init>()V

    const-string v2, "filter"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/crk;

    invoke-direct {v1}, Lcom/sunia/HTREnginev2/crk;-><init>()V

    const-string v2, "first"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/drk;

    invoke-direct {v1}, Lcom/sunia/HTREnginev2/drk;-><init>()V

    const-string v2, "fn"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/erk;

    invoke-direct {v1}, Lcom/sunia/HTREnginev2/erk;-><init>()V

    const-string v2, "fnCoercer"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/frk;

    invoke-direct {v1}, Lcom/sunia/HTREnginev2/frk;-><init>()V

    const-string v2, "fnRef"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/grk;

    invoke-direct {v1}, Lcom/sunia/HTREnginev2/grk;-><init>()V

    const-string v2, "follows"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/hrk;

    invoke-direct {v1}, Lcom/sunia/HTREnginev2/hrk;-><init>()V

    const-string v2, "for"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/irk;

    invoke-direct {v1}, Lcom/sunia/HTREnginev2/irk;-><init>()V

    const-string v2, "forEach"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/nlk;

    invoke-direct {v1}, Lcom/sunia/HTREnginev2/nlk;-><init>()V

    const-string v2, "forEachGroup"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/plk;

    invoke-direct {v1}, Lcom/sunia/HTREnginev2/plk;-><init>()V

    const-string v2, "fork"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/qlk;

    invoke-direct {v1}, Lcom/sunia/HTREnginev2/qlk;-><init>()V

    const-string v2, "gc"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/rlk;

    invoke-direct {v1}, Lcom/sunia/HTREnginev2/rlk;-><init>()V

    const-string v2, "gc10"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/slk;

    invoke-direct {v1}, Lcom/sunia/HTREnginev2/slk;-><init>()V

    const-string v2, "gVarRef"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/tlk;

    invoke-direct {v1}, Lcom/sunia/HTREnginev2/tlk;-><init>()V

    const-string v2, "homCheck"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/ulk;

    invoke-direct {v1}, Lcom/sunia/HTREnginev2/ulk;-><init>()V

    const-string v2, "ifCall"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/vlk;

    invoke-direct {v1}, Lcom/sunia/HTREnginev2/vlk;-><init>()V

    const-string v2, "inlineFn"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/wlk;

    invoke-direct {v1}, Lcom/sunia/HTREnginev2/wlk;-><init>()V

    const-string v2, "instance"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/ylk;

    invoke-direct {v1}, Lcom/sunia/HTREnginev2/ylk;-><init>()V

    const-string v2, "int"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/zlk;

    invoke-direct {v1}, Lcom/sunia/HTREnginev2/zlk;-><init>()V

    const-string v2, "intersect"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/bmk;

    invoke-direct {v1}, Lcom/sunia/HTREnginev2/bmk;-><init>()V

    const-string v2, "intRangeTest"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/cmk;

    invoke-direct {v1}, Lcom/sunia/HTREnginev2/cmk;-><init>()V

    const-string v2, "is"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/dmk;

    invoke-direct {v1}, Lcom/sunia/HTREnginev2/dmk;-><init>()V

    const-string v2, "isLast"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/emk;

    invoke-direct {v1}, Lcom/sunia/HTREnginev2/emk;-><init>()V

    const-string v2, "iterate"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/fmk;

    invoke-direct {v1}, Lcom/sunia/HTREnginev2/fmk;-><init>()V

    const-string v2, "lastOf"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/gmk;

    invoke-direct {v1}, Lcom/sunia/HTREnginev2/gmk;-><init>()V

    const-string v2, "let"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/hmk;

    invoke-direct {v1}, Lcom/sunia/HTREnginev2/hmk;-><init>()V

    const-string v2, "literal"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/jmk;

    invoke-direct {v1}, Lcom/sunia/HTREnginev2/jmk;-><init>()V

    const-string v2, "lookup"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/kmk;

    invoke-direct {v1}, Lcom/sunia/HTREnginev2/kmk;-><init>()V

    const-string v2, "lookupAll"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/lmk;

    invoke-direct {v1}, Lcom/sunia/HTREnginev2/lmk;-><init>()V

    const-string v2, "map"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/nmk;

    invoke-direct {v1}, Lcom/sunia/HTREnginev2/nmk;-><init>()V

    const-string v2, "merge"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/omk;

    invoke-direct {v1}, Lcom/sunia/HTREnginev2/omk;-><init>()V

    const-string v2, "mergeAdj"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/pmk;

    invoke-direct {v1}, Lcom/sunia/HTREnginev2/pmk;-><init>()V

    const-string v2, "message"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/qmk;

    invoke-direct {v1}, Lcom/sunia/HTREnginev2/qmk;-><init>()V

    const-string v2, "minus"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/rmk;

    invoke-direct {v1}, Lcom/sunia/HTREnginev2/rmk;-><init>()V

    const-string v2, "namespace"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/smk;

    invoke-direct {v1}, Lcom/sunia/HTREnginev2/smk;-><init>()V

    const-string v2, "nextIteration"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/umk;

    invoke-direct {v1}, Lcom/sunia/HTREnginev2/umk;-><init>()V

    const-string v2, "nextMatch"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/vmk;

    invoke-direct {v1}, Lcom/sunia/HTREnginev2/vmk;-><init>()V

    const-string v2, "node"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/wmk;

    invoke-direct {v1}, Lcom/sunia/HTREnginev2/wmk;-><init>()V

    const-string v2, "nodeNum"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/xmk;

    invoke-direct {v1}, Lcom/sunia/HTREnginev2/xmk;-><init>()V

    const-string v2, "numSeqFmt"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/zmk;

    invoke-direct {v1}, Lcom/sunia/HTREnginev2/zmk;-><init>()V

    const-string v2, "onEmpty"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/ank;

    invoke-direct {v1}, Lcom/sunia/HTREnginev2/ank;-><init>()V

    const-string v2, "onNonEmpty"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/bnk;

    invoke-direct {v1}, Lcom/sunia/HTREnginev2/bnk;-><init>()V

    const-string v2, "or"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/cnk;

    invoke-direct {v1}, Lcom/sunia/HTREnginev2/cnk;-><init>()V

    const-string v2, "origF"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/dnk;

    invoke-direct {v1}, Lcom/sunia/HTREnginev2/dnk;-><init>()V

    const-string v2, "origFC"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/fnk;

    invoke-direct {v1}, Lcom/sunia/HTREnginev2/fnk;-><init>()V

    const-string v2, "param"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/gnk;

    invoke-direct {v1}, Lcom/sunia/HTREnginev2/gnk;-><init>()V

    const-string v2, "params"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/hnk;

    invoke-direct {v1}, Lcom/sunia/HTREnginev2/hnk;-><init>()V

    const-string v2, "partialApply"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/ink;

    invoke-direct {v1}, Lcom/sunia/HTREnginev2/ink;-><init>()V

    const-string v2, "precedes"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/jnk;

    invoke-direct {v1}, Lcom/sunia/HTREnginev2/jnk;-><init>()V

    const-string v2, "procInst"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/jrk;

    invoke-direct {v1}, Lcom/sunia/HTREnginev2/jrk;-><init>()V

    const-string v2, "qName"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/xlk;

    invoke-direct {v1}, Lcom/sunia/HTREnginev2/xlk;-><init>()V

    const-string v2, "range"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/imk;

    invoke-direct {v1}, Lcom/sunia/HTREnginev2/imk;-><init>()V

    const-string v2, "resultDoc"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/tmk;

    invoke-direct {v1}, Lcom/sunia/HTREnginev2/tmk;-><init>()V

    const-string v2, "root"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/enk;

    invoke-direct {v1}, Lcom/sunia/HTREnginev2/enk;-><init>()V

    const-string v2, "saxonDoctype"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/pnk;

    invoke-direct {v1}, Lcom/sunia/HTREnginev2/pnk;-><init>()V

    const-string v2, "sequence"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/unk;

    invoke-direct {v1}, Lcom/sunia/HTREnginev2/unk;-><init>()V

    const-string v2, "slash"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/vnk;

    invoke-direct {v1}, Lcom/sunia/HTREnginev2/vnk;-><init>()V

    const-string v2, "some"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/wnk;

    invoke-direct {v1}, Lcom/sunia/HTREnginev2/wnk;-><init>()V

    const-string v2, "sort"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/xnk;

    invoke-direct {v1}, Lcom/sunia/HTREnginev2/xnk;-><init>()V

    const-string v2, "sourceDoc"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/aok;

    invoke-direct {v1}, Lcom/sunia/HTREnginev2/aok;-><init>()V

    const-string v2, "str"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/bok;

    invoke-direct {v1}, Lcom/sunia/HTREnginev2/bok;-><init>()V

    const-string v2, "subscript"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/cok;

    invoke-direct {v1}, Lcom/sunia/HTREnginev2/cok;-><init>()V

    const-string v2, "supplied"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/dok;

    invoke-direct {v1}, Lcom/sunia/HTREnginev2/dok;-><init>()V

    const-string v2, "tail"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/eok;

    invoke-direct {v1}, Lcom/sunia/HTREnginev2/eok;-><init>()V

    const-string v2, "tailCallLoop"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/fok;

    invoke-direct {v1}, Lcom/sunia/HTREnginev2/fok;-><init>()V

    const-string v2, "to"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/gok;

    invoke-direct {v1}, Lcom/sunia/HTREnginev2/gok;-><init>()V

    const-string v2, "treat"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/hok;

    invoke-direct {v1}, Lcom/sunia/HTREnginev2/hok;-><init>()V

    const-string v2, "true"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/iok;

    invoke-direct {v1}, Lcom/sunia/HTREnginev2/iok;-><init>()V

    const-string v2, "try"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/jok;

    invoke-direct {v1}, Lcom/sunia/HTREnginev2/jok;-><init>()V

    const-string v2, "ufCall"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/mok;

    invoke-direct {v1}, Lcom/sunia/HTREnginev2/mok;-><init>()V

    const-string v2, "ufRef"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/nok;

    invoke-direct {v1}, Lcom/sunia/HTREnginev2/nok;-><init>()V

    const-string v2, "union"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/ook;

    invoke-direct {v1}, Lcom/sunia/HTREnginev2/ook;-><init>()V

    const-string v2, "useAS"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/pok;

    invoke-direct {v1}, Lcom/sunia/HTREnginev2/pok;-><init>()V

    const-string v2, "valueOf"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/qok;

    invoke-direct {v1}, Lcom/sunia/HTREnginev2/qok;-><init>()V

    const-string v2, "varRef"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/rok;

    invoke-direct {v1}, Lcom/sunia/HTREnginev2/rok;-><init>()V

    const-string v2, "vc"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0xc8

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lnet/sf/saxon/trans/PackageLoaderHE;->m:Ljava/util/Map;

    new-instance v1, Lcom/sunia/HTREnginev2/sok;

    invoke-direct {v1}, Lcom/sunia/HTREnginev2/sok;-><init>()V

    const-string v2, "p.anchor"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/tok;

    invoke-direct {v1}, Lcom/sunia/HTREnginev2/tok;-><init>()V

    const-string v2, "p.any"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/uok;

    invoke-direct {v1}, Lcom/sunia/HTREnginev2/uok;-><init>()V

    const-string v2, "p.booleanExp"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/wok;

    invoke-direct {v1}, Lcom/sunia/HTREnginev2/wok;-><init>()V

    const-string v2, "p.genNode"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/yok;

    invoke-direct {v1}, Lcom/sunia/HTREnginev2/yok;-><init>()V

    const-string v2, "p.genPos"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/zok;

    invoke-direct {v1}, Lcom/sunia/HTREnginev2/zok;-><init>()V

    const-string v2, "p.nodeSet"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/apk;

    invoke-direct {v1}, Lcom/sunia/HTREnginev2/apk;-><init>()V

    const-string v2, "p.nodeTest"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/bpk;

    invoke-direct {v1}, Lcom/sunia/HTREnginev2/bpk;-><init>()V

    const-string v2, "p.venn"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/cpk;

    invoke-direct {v1}, Lcom/sunia/HTREnginev2/cpk;-><init>()V

    const-string v2, "p.simPos"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/dpk;

    invoke-direct {v1}, Lcom/sunia/HTREnginev2/dpk;-><init>()V

    const-string v2, "p.withCurrent"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/epk;

    invoke-direct {v1}, Lcom/sunia/HTREnginev2/epk;-><init>()V

    const-string v2, "p.withUpper"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/fpk;

    invoke-direct {v1}, Lcom/sunia/HTREnginev2/fpk;-><init>()V

    const-string v2, "p.withPredicate"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lnet/sf/saxon/Configuration;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lnet/sf/saxon/trans/PackageLoaderHE;->packStack:Ljava/util/Stack;

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lnet/sf/saxon/trans/PackageLoaderHE;->fixups:Ljava/util/Stack;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/sf/saxon/trans/PackageLoaderHE;->completionActions:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnet/sf/saxon/trans/PackageLoaderHE;->allPackages:Ljava/util/Map;

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lnet/sf/saxon/trans/PackageLoaderHE;->e:Ljava/util/Stack;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnet/sf/saxon/trans/PackageLoaderHE;->userFunctions:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnet/sf/saxon/trans/PackageLoaderHE;->f:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnet/sf/saxon/trans/PackageLoaderHE;->g:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnet/sf/saxon/trans/PackageLoaderHE;->h:Ljava/util/Map;

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sf/saxon/trans/PackageLoaderHE;->i:Ljava/lang/String;

    iput-object v0, p0, Lnet/sf/saxon/trans/PackageLoaderHE;->j:Lnet/sf/saxon/value/NestedIntegerValue;

    iput-object p1, p0, Lnet/sf/saxon/trans/PackageLoaderHE;->a:Lnet/sf/saxon/Configuration;

    new-instance v1, Lnet/sf/saxon/functions/ExecutableFunctionLibrary;

    invoke-direct {v1, p1}, Lnet/sf/saxon/functions/ExecutableFunctionLibrary;-><init>(Lnet/sf/saxon/Configuration;)V

    iput-object v1, p0, Lnet/sf/saxon/trans/PackageLoaderHE;->c:Lnet/sf/saxon/functions/ExecutableFunctionLibrary;

    new-instance v1, Lnet/sf/saxon/functions/ExecutableFunctionLibrary;

    invoke-direct {v1, p1}, Lnet/sf/saxon/functions/ExecutableFunctionLibrary;-><init>(Lnet/sf/saxon/Configuration;)V

    iput-object v1, p0, Lnet/sf/saxon/trans/PackageLoaderHE;->d:Lnet/sf/saxon/functions/ExecutableFunctionLibrary;

    :try_start_0
    const-string v1, "XP"

    const/4 v2, 0x0

    const/16 v3, 0x1f

    invoke-virtual {p1, v1, v2, v3}, Lnet/sf/saxon/Configuration;->newExpressionParser(Ljava/lang/String;ZI)Lnet/sf/saxon/expr/parser/XPathParser;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/trans/PackageLoaderHE;->b:Lnet/sf/saxon/expr/parser/XPathParser;

    new-instance p0, Lnet/sf/saxon/om/QNameParser;

    invoke-direct {p0, v0}, Lnet/sf/saxon/om/QNameParser;-><init>(Lnet/sf/saxon/om/NamespaceResolver;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lnet/sf/saxon/om/QNameParser;->withAcceptEQName(Z)Lnet/sf/saxon/om/QNameParser;

    move-result-object p0

    invoke-virtual {p1, p0}, Lnet/sf/saxon/expr/parser/XPathParser;->setQNameParser(Lnet/sf/saxon/om/QNameParser;)V
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method

.method public static synthetic A(Lnet/sf/saxon/om/NodeInfo;)Z
    .locals 0

    invoke-static {p0}, Lnet/sf/saxon/trans/PackageLoaderHE;->l2(Lnet/sf/saxon/om/NodeInfo;)Z

    move-result p0

    return p0
.end method

.method public static synthetic A0(Lnet/sf/saxon/functions/SystemFunction;[Lnet/sf/saxon/expr/Expression;)V
    .locals 0

    invoke-static {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->n2(Lnet/sf/saxon/functions/SystemFunction;[Lnet/sf/saxon/expr/Expression;)V

    return-void
.end method

.method public static synthetic A1(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 0

    invoke-static {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->U3(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic A2(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const-string v0, ""

    const-string v1, "level"

    invoke-interface {p1, v0, v1}, Lnet/sf/saxon/om/NodeInfo;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/sf/saxon/trans/PackageLoaderHE;->c2(Ljava/lang/String;)I

    move-result v0

    const-string v1, "select"

    invoke-virtual {p0, p1, v1}, Lnet/sf/saxon/trans/PackageLoaderHE;->getExpressionWithRole(Lnet/sf/saxon/om/NodeInfo;Ljava/lang/String;)Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    const-string v2, "count"

    invoke-virtual {p0, p1, v2}, Lnet/sf/saxon/trans/PackageLoaderHE;->getPatternWithRole(Lnet/sf/saxon/om/NodeInfo;Ljava/lang/String;)Lnet/sf/saxon/pattern/Pattern;

    move-result-object v2

    const-string v3, "from"

    invoke-virtual {p0, p1, v3}, Lnet/sf/saxon/trans/PackageLoaderHE;->getPatternWithRole(Lnet/sf/saxon/om/NodeInfo;Ljava/lang/String;)Lnet/sf/saxon/pattern/Pattern;

    move-result-object p0

    new-instance p1, Lnet/sf/saxon/expr/instruct/NumberInstruction;

    invoke-direct {p1, v1, v0, v2, p0}, Lnet/sf/saxon/expr/instruct/NumberInstruction;-><init>(Lnet/sf/saxon/expr/Expression;ILnet/sf/saxon/pattern/Pattern;Lnet/sf/saxon/pattern/Pattern;)V

    return-object p1
.end method

.method public static synthetic A3(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/pattern/Pattern;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    new-instance v0, Lnet/sf/saxon/expr/flwor/LocalVariableBinding;

    sget-object v1, Lnet/sf/saxon/functions/Current;->FN_CURRENT:Lnet/sf/saxon/om/StructuredQName;

    sget-object v2, Lnet/sf/saxon/value/SequenceType;->SINGLE_ITEM:Lnet/sf/saxon/value/SequenceType;

    invoke-direct {v0, v1, v2}, Lnet/sf/saxon/expr/flwor/LocalVariableBinding;-><init>(Lnet/sf/saxon/om/StructuredQName;Lnet/sf/saxon/value/SequenceType;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/sf/saxon/expr/flwor/LocalVariableBinding;->setSlotNumber(I)V

    iget-object v1, p0, Lnet/sf/saxon/trans/PackageLoaderHE;->localBindings:Ljava/util/Stack;

    invoke-virtual {v1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->b2(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/pattern/Pattern;

    move-result-object p1

    iget-object p0, p0, Lnet/sf/saxon/trans/PackageLoaderHE;->localBindings:Ljava/util/Stack;

    invoke-virtual {p0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    new-instance p0, Lnet/sf/saxon/pattern/PatternThatSetsCurrent;

    invoke-direct {p0, p1, v0}, Lnet/sf/saxon/pattern/PatternThatSetsCurrent;-><init>(Lnet/sf/saxon/pattern/Pattern;Lnet/sf/saxon/expr/flwor/LocalVariableBinding;)V

    return-object p0
.end method

.method public static synthetic A4(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->getFirstChildExpression(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    const-string v1, "slot"

    invoke-virtual {p0, p1, v1}, Lnet/sf/saxon/trans/PackageLoaderHE;->getIntegerAttribute(Lnet/sf/saxon/om/NodeInfo;Ljava/lang/String;)I

    move-result v1

    const-string v2, "var"

    invoke-virtual {p0, p1, v2}, Lnet/sf/saxon/trans/PackageLoaderHE;->getQNameAttribute(Lnet/sf/saxon/om/NodeInfo;Ljava/lang/String;)Lnet/sf/saxon/om/StructuredQName;

    move-result-object v2

    const-string v3, "as"

    invoke-virtual {p0, p1, v3}, Lnet/sf/saxon/trans/PackageLoaderHE;->parseAlphaCode(Lnet/sf/saxon/om/NodeInfo;Ljava/lang/String;)Lnet/sf/saxon/value/SequenceType;

    move-result-object v3

    new-instance v4, Lnet/sf/saxon/expr/ForExpression;

    invoke-direct {v4}, Lnet/sf/saxon/expr/ForExpression;-><init>()V

    invoke-virtual {v4, v0}, Lnet/sf/saxon/expr/Assignation;->setSequence(Lnet/sf/saxon/expr/Expression;)V

    invoke-virtual {v4, v3}, Lnet/sf/saxon/expr/Assignation;->setRequiredType(Lnet/sf/saxon/value/SequenceType;)V

    invoke-virtual {v4, v1}, Lnet/sf/saxon/expr/Assignation;->setSlotNumber(I)V

    invoke-virtual {v4, v2}, Lnet/sf/saxon/expr/Assignation;->setVariableQName(Lnet/sf/saxon/om/StructuredQName;)V

    iget-object v0, p0, Lnet/sf/saxon/trans/PackageLoaderHE;->localBindings:Ljava/util/Stack;

    invoke-virtual {v0, v4}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->getSecondChildExpression(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    iget-object p0, p0, Lnet/sf/saxon/trans/PackageLoaderHE;->localBindings:Ljava/util/Stack;

    invoke-virtual {p0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    invoke-virtual {v4, p1}, Lnet/sf/saxon/expr/Assignation;->setAction(Lnet/sf/saxon/expr/Expression;)V

    return-object v4
.end method

.method public static synthetic B(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 0

    invoke-static {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->h4(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic B0(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 0

    invoke-static {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->a4(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic B1(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 0

    invoke-static {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->E4(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic B2(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const-string v0, "value"

    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/trans/PackageLoaderHE;->getExpressionWithRole(Lnet/sf/saxon/om/NodeInfo;Ljava/lang/String;)Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    const-string v0, "format"

    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/trans/PackageLoaderHE;->getExpressionWithRole(Lnet/sf/saxon/om/NodeInfo;Ljava/lang/String;)Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    const-string v1, "1"

    if-nez v0, :cond_0

    new-instance v0, Lnet/sf/saxon/expr/StringLiteral;

    invoke-direct {v0, v1}, Lnet/sf/saxon/expr/StringLiteral;-><init>(Ljava/lang/String;)V

    :cond_0
    move-object v3, v0

    const-string v0, "gpSize"

    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/trans/PackageLoaderHE;->getExpressionWithRole(Lnet/sf/saxon/om/NodeInfo;Ljava/lang/String;)Lnet/sf/saxon/expr/Expression;

    move-result-object v4

    const-string v0, "gpSep"

    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/trans/PackageLoaderHE;->getExpressionWithRole(Lnet/sf/saxon/om/NodeInfo;Ljava/lang/String;)Lnet/sf/saxon/expr/Expression;

    move-result-object v5

    const-string v0, "letterValue"

    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/trans/PackageLoaderHE;->getExpressionWithRole(Lnet/sf/saxon/om/NodeInfo;Ljava/lang/String;)Lnet/sf/saxon/expr/Expression;

    move-result-object v6

    const-string v0, "ordinal"

    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/trans/PackageLoaderHE;->getExpressionWithRole(Lnet/sf/saxon/om/NodeInfo;Ljava/lang/String;)Lnet/sf/saxon/expr/Expression;

    move-result-object v7

    const-string v0, "startAt"

    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/trans/PackageLoaderHE;->getExpressionWithRole(Lnet/sf/saxon/om/NodeInfo;Ljava/lang/String;)Lnet/sf/saxon/expr/Expression;

    move-result-object v8

    const-string v0, "lang"

    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/trans/PackageLoaderHE;->getExpressionWithRole(Lnet/sf/saxon/om/NodeInfo;Ljava/lang/String;)Lnet/sf/saxon/expr/Expression;

    move-result-object v9

    const-string v0, ""

    const-string v10, "flags"

    invoke-interface {p1, v0, v10}, Lnet/sf/saxon/om/NodeInfo;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    move v11, p1

    const/4 v10, 0x0

    new-instance p1, Lnet/sf/saxon/expr/NumberSequenceFormatter;

    move-object v1, p1

    invoke-direct/range {v1 .. v11}, Lnet/sf/saxon/expr/NumberSequenceFormatter;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/number/NumberFormatter;Z)V

    iget-object p0, p0, Lnet/sf/saxon/trans/PackageLoaderHE;->a:Lnet/sf/saxon/Configuration;

    invoke-virtual {p1, p0}, Lnet/sf/saxon/expr/NumberSequenceFormatter;->preallocateNumberer(Lnet/sf/saxon/Configuration;)V

    return-object p1
.end method

.method public static synthetic B3(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/pattern/Pattern;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const-string v0, ""

    const-string v1, "axis"

    invoke-interface {p1, v0, v1}, Lnet/sf/saxon/om/NodeInfo;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/sf/saxon/om/AxisInfo;->getAxisNumber(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->b2(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/pattern/Pattern;

    move-result-object v1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->d2(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/pattern/Pattern;

    move-result-object p0

    new-instance p1, Lnet/sf/saxon/pattern/AncestorQualifiedPattern;

    invoke-direct {p1, v1, p0, v0}, Lnet/sf/saxon/pattern/AncestorQualifiedPattern;-><init>(Lnet/sf/saxon/pattern/Pattern;Lnet/sf/saxon/pattern/Pattern;I)V

    return-object p1
.end method

.method public static synthetic B4(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->getFirstChildExpression(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->getSecondChildExpression(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    const-string v2, "threads"

    invoke-virtual {p0, p1, v2}, Lnet/sf/saxon/trans/PackageLoaderHE;->getExpressionWithRole(Lnet/sf/saxon/om/NodeInfo;Ljava/lang/String;)Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    const-string v3, "separator"

    if-nez v2, :cond_1

    new-instance v2, Lnet/sf/saxon/expr/instruct/ForEach;

    invoke-direct {v2, v0, v1}, Lnet/sf/saxon/expr/instruct/ForEach;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    invoke-virtual {p0, p1, v3}, Lnet/sf/saxon/trans/PackageLoaderHE;->getExpressionWithRole(Lnet/sf/saxon/om/NodeInfo;Ljava/lang/String;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {v2, p0}, Lnet/sf/saxon/expr/instruct/ForEach;->setSeparatorExpression(Lnet/sf/saxon/expr/Expression;)V

    :cond_0
    return-object v2

    :cond_1
    new-instance v4, Lnet/sf/saxon/expr/instruct/ForEach;

    const/4 v5, 0x0

    invoke-direct {v4, v0, v1, v5, v2}, Lnet/sf/saxon/expr/instruct/ForEach;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;ZLnet/sf/saxon/expr/Expression;)V

    invoke-virtual {p0, p1, v3}, Lnet/sf/saxon/trans/PackageLoaderHE;->getExpressionWithRole(Lnet/sf/saxon/om/NodeInfo;Ljava/lang/String;)Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {v4, p1}, Lnet/sf/saxon/expr/instruct/ForEach;->setSeparatorExpression(Lnet/sf/saxon/expr/Expression;)V

    :cond_2
    invoke-virtual {p0}, Lnet/sf/saxon/trans/PackageLoaderHE;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/Configuration;->obtainOptimizer()Lnet/sf/saxon/expr/parser/Optimizer;

    move-result-object p0

    invoke-virtual {p0, v4}, Lnet/sf/saxon/expr/parser/Optimizer;->generateMultithreadedInstruction(Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic C(Lnet/sf/saxon/expr/sort/MergeInstr$MergeSource;)V
    .locals 0

    invoke-static {p0}, Lnet/sf/saxon/trans/PackageLoaderHE;->o2(Lnet/sf/saxon/expr/sort/MergeInstr$MergeSource;)V

    return-void
.end method

.method public static synthetic C0(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/pattern/Pattern;
    .locals 0

    invoke-static {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->u3(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/pattern/Pattern;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic C1(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 0

    invoke-static {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->V2(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic C2(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->getFirstChildExpression(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    new-instance p1, Lnet/sf/saxon/expr/instruct/OnEmptyExpr;

    invoke-direct {p1, p0}, Lnet/sf/saxon/expr/instruct/OnEmptyExpr;-><init>(Lnet/sf/saxon/expr/Expression;)V

    return-object p1
.end method

.method public static synthetic C3(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/pattern/Pattern;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->b2(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/pattern/Pattern;

    move-result-object v0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->getSecondChildExpression(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    new-instance p1, Lnet/sf/saxon/pattern/BasePatternWithPredicate;

    invoke-direct {p1, v0, p0}, Lnet/sf/saxon/pattern/BasePatternWithPredicate;-><init>(Lnet/sf/saxon/pattern/Pattern;Lnet/sf/saxon/expr/Expression;)V

    return-object p1
.end method

.method public static synthetic C4(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const-string v0, "algorithm"

    const-string v1, ""

    invoke-interface {p1, v1, v0}, Lnet/sf/saxon/om/NodeInfo;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "by"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x4

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v2, :cond_0

    move v9, v4

    goto :goto_1

    :cond_0
    const-string v2, "adjacent"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v9, v5

    goto :goto_1

    :cond_1
    const-string v2, "starting"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x2

    :goto_0
    move v9, v0

    goto :goto_1

    :cond_2
    const-string v2, "ending"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v0, 0x3

    goto :goto_0

    :cond_3
    const-string v2, "breaking"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    move v9, v3

    :goto_1
    const-string v0, "flags"

    invoke-interface {p1, v1, v0}, Lnet/sf/saxon/om/NodeInfo;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string v1, "c"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    move v1, v5

    goto :goto_2

    :cond_4
    move v1, v4

    :goto_2
    if-eqz v0, :cond_5

    const-string v2, "k"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    move v4, v5

    :cond_5
    const-string v0, "select"

    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/trans/PackageLoaderHE;->getExpressionWithRole(Lnet/sf/saxon/om/NodeInfo;Ljava/lang/String;)Lnet/sf/saxon/expr/Expression;

    move-result-object v7

    if-eqz v9, :cond_7

    if-eq v9, v5, :cond_7

    if-ne v9, v3, :cond_6

    goto :goto_3

    :cond_6
    const-string v0, "match"

    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/trans/PackageLoaderHE;->getPatternWithRole(Lnet/sf/saxon/om/NodeInfo;Ljava/lang/String;)Lnet/sf/saxon/pattern/Pattern;

    move-result-object v0

    goto :goto_4

    :cond_7
    :goto_3
    const-string v0, "key"

    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/trans/PackageLoaderHE;->getExpressionWithRole(Lnet/sf/saxon/om/NodeInfo;Ljava/lang/String;)Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    :goto_4
    move-object v10, v0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->f5(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/sort/SortKeyDefinitionList;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/expr/sort/SortKeyDefinitionList;->size()I

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_8

    move-object v13, v3

    goto :goto_5

    :cond_8
    move-object v13, v0

    :goto_5
    const-string v0, "collation"

    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/trans/PackageLoaderHE;->getExpressionWithRole(Lnet/sf/saxon/om/NodeInfo;Ljava/lang/String;)Lnet/sf/saxon/expr/Expression;

    move-result-object v12

    const-string v0, "content"

    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/trans/PackageLoaderHE;->getExpressionWithRole(Lnet/sf/saxon/om/NodeInfo;Ljava/lang/String;)Lnet/sf/saxon/expr/Expression;

    move-result-object v8

    instance-of p1, v12, Lnet/sf/saxon/expr/StringLiteral;

    if-eqz p1, :cond_9

    move-object p1, v12

    check-cast p1, Lnet/sf/saxon/expr/StringLiteral;

    invoke-virtual {p1}, Lnet/sf/saxon/expr/StringLiteral;->getString()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lnet/sf/saxon/trans/PackageLoaderHE;->a:Lnet/sf/saxon/Configuration;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/Configuration;->getCollation(Ljava/lang/String;)Lnet/sf/saxon/lib/StringCollator;

    move-result-object p0

    move-object v11, p0

    goto :goto_6

    :cond_9
    move-object v11, v3

    :goto_6
    new-instance p0, Lnet/sf/saxon/expr/instruct/ForEachGroup;

    move-object v6, p0

    invoke-direct/range {v6 .. v13}, Lnet/sf/saxon/expr/instruct/ForEachGroup;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;BLnet/sf/saxon/expr/Expression;Lnet/sf/saxon/lib/StringCollator;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/sort/SortKeyDefinitionList;)V

    invoke-virtual {p0, v1}, Lnet/sf/saxon/expr/instruct/ForEachGroup;->setComposite(Z)V

    invoke-virtual {p0, v4}, Lnet/sf/saxon/expr/instruct/ForEachGroup;->setIsInFork(Z)V

    return-object p0

    :cond_a
    new-instance p0, Ljava/lang/AssertionError;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown grouping algorithm: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0
.end method

.method public static synthetic D(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 0

    invoke-static {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->R4(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic D0(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 0

    invoke-static {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->y4(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic D1(Lnet/sf/saxon/expr/Expression;[Lnet/sf/saxon/expr/Expression;)V
    .locals 0

    invoke-static {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->m2(Lnet/sf/saxon/expr/Expression;[Lnet/sf/saxon/expr/Expression;)V

    return-void
.end method

.method public static synthetic D2(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->getFirstChildExpression(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    new-instance p1, Lnet/sf/saxon/expr/instruct/OnNonEmptyExpr;

    invoke-direct {p1, p0}, Lnet/sf/saxon/expr/instruct/OnNonEmptyExpr;-><init>(Lnet/sf/saxon/expr/Expression;)V

    return-object p1
.end method

.method public static synthetic D3(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-static {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->getChildExpressionList(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Ljava/util/List;

    move-result-object p0

    new-instance p1, Lnet/sf/saxon/ma/arrays/SquareArrayConstructor;

    invoke-direct {p1, p0}, Lnet/sf/saxon/ma/arrays/SquareArrayConstructor;-><init>(Ljava/util/List;)V

    return-object p1
.end method

.method public static synthetic D4(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-static {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->getChildExpressionArray(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)[Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    new-instance p1, Lnet/sf/saxon/expr/instruct/Fork;

    invoke-direct {p1, p0}, Lnet/sf/saxon/expr/instruct/Fork;-><init>([Lnet/sf/saxon/expr/Expression;)V

    return-object p1
.end method

.method public static synthetic E(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 0

    invoke-static {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->L4(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic E0(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 0

    invoke-static {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->g4(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic E1(Lnet/sf/saxon/expr/sort/MergeInstr;)V
    .locals 0

    invoke-static {p0}, Lnet/sf/saxon/trans/PackageLoaderHE;->q2(Lnet/sf/saxon/expr/sort/MergeInstr;)V

    return-void
.end method

.method public static synthetic E2(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->getFirstChildExpression(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->getSecondChildExpression(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    new-instance p1, Lnet/sf/saxon/expr/OrExpression;

    invoke-direct {p1, v0, p0}, Lnet/sf/saxon/expr/OrExpression;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    return-object p1
.end method

.method public static synthetic E3(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const-string v0, ""

    const-string v1, "val"

    invoke-interface {p1, v0, v1}, Lnet/sf/saxon/om/NodeInfo;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "type"

    invoke-virtual {p0, p1, v1}, Lnet/sf/saxon/trans/PackageLoaderHE;->parseAlphaCodeForItemType(Lnet/sf/saxon/om/NodeInfo;Ljava/lang/String;)Lnet/sf/saxon/type/ItemType;

    move-result-object p1

    check-cast p1, Lnet/sf/saxon/type/AtomicType;

    iget-object p0, p0, Lnet/sf/saxon/trans/PackageLoaderHE;->a:Lnet/sf/saxon/Configuration;

    invoke-virtual {p0}, Lnet/sf/saxon/Configuration;->getConversionRules()Lnet/sf/saxon/lib/ConversionRules;

    move-result-object p0

    invoke-interface {p1, p0}, Lnet/sf/saxon/type/AtomicType;->getStringConverter(Lnet/sf/saxon/lib/ConversionRules;)Lnet/sf/saxon/type/StringConverter;

    move-result-object p0

    invoke-static {v0}, Lnet/sf/saxon/str/StringView;->of(Ljava/lang/String;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sf/saxon/str/UnicodeString;->tidy()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/type/StringConverter;->convertString(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/type/ConversionResult;

    move-result-object p0

    invoke-interface {p0}, Lnet/sf/saxon/type/ConversionResult;->asAtomic()Lnet/sf/saxon/value/AtomicValue;

    move-result-object p0

    invoke-static {p0}, Lnet/sf/saxon/expr/Literal;->makeLiteral(Lnet/sf/saxon/om/GroundedValue;)Lnet/sf/saxon/expr/Literal;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic E4(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const-string v0, "op"

    const-string v1, ""

    invoke-interface {p1, v1, v0}, Lnet/sf/saxon/om/NodeInfo;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/sf/saxon/trans/PackageLoaderHE;->getOperator(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->getFirstChildExpression(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->getSecondChildExpression(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object v3

    const-string v4, "comp"

    invoke-interface {p1, v1, v4}, Lnet/sf/saxon/om/NodeInfo;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->makeAtomicComparer(Ljava/lang/String;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/sort/AtomicComparer;

    move-result-object p0

    new-instance p1, Lnet/sf/saxon/expr/GeneralComparison20;

    invoke-direct {p1, v2, v0, v3}, Lnet/sf/saxon/expr/GeneralComparison20;-><init>(Lnet/sf/saxon/expr/Expression;ILnet/sf/saxon/expr/Expression;)V

    invoke-virtual {p1, p0}, Lnet/sf/saxon/expr/GeneralComparison;->setAtomicComparer(Lnet/sf/saxon/expr/sort/AtomicComparer;)V

    return-object p1
.end method

.method public static synthetic F(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/pattern/Pattern;
    .locals 0

    invoke-static {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->v3(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/pattern/Pattern;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic F0(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 0

    invoke-static {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->H2(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic F1(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 0

    invoke-static {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->r4(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic F2(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const-string v0, "name"

    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/trans/PackageLoaderHE;->getQNameAttribute(Lnet/sf/saxon/om/NodeInfo;Ljava/lang/String;)Lnet/sf/saxon/om/StructuredQName;

    move-result-object v0

    const-string v1, ""

    const-string v2, "pack"

    invoke-interface {p1, v1, v2}, Lnet/sf/saxon/om/NodeInfo;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lnet/sf/saxon/trans/PackageLoaderHE;->getPackage(Ljava/lang/String;)Lnet/sf/saxon/style/StylesheetPackage;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v1, "arity"

    invoke-virtual {p0, p1, v1}, Lnet/sf/saxon/trans/PackageLoaderHE;->getIntegerAttribute(Lnet/sf/saxon/om/NodeInfo;Ljava/lang/String;)I

    move-result p0

    new-instance p1, Lnet/sf/saxon/trans/SymbolicName$F;

    invoke-direct {p1, v0, p0}, Lnet/sf/saxon/trans/SymbolicName$F;-><init>(Lnet/sf/saxon/om/StructuredQName;I)V

    invoke-virtual {v2, p1}, Lnet/sf/saxon/style/StylesheetPackage;->getComponent(Lnet/sf/saxon/trans/SymbolicName;)Lnet/sf/saxon/expr/Component;

    move-result-object p0

    new-instance p1, Lnet/sf/saxon/expr/instruct/OriginalFunction;

    invoke-direct {p1, p0}, Lnet/sf/saxon/expr/instruct/OriginalFunction;-><init>(Lnet/sf/saxon/expr/Component;)V

    new-instance p0, Lnet/sf/saxon/functions/hof/FunctionLiteral;

    invoke-direct {p0, p1}, Lnet/sf/saxon/functions/hof/FunctionLiteral;-><init>(Lnet/sf/saxon/om/Function;)V

    return-object p0

    :cond_0
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown package key "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic F3(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->getFirstChildExpression(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    const-string v0, "diag"

    const-string v1, ""

    invoke-interface {p1, v1, v0}, Lnet/sf/saxon/om/NodeInfo;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/sf/saxon/expr/parser/RoleDiagnostic;->reconstruct(Ljava/lang/String;)Lnet/sf/saxon/expr/parser/RoleDiagnostic;

    move-result-object v0

    const-string v2, "card"

    invoke-interface {p1, v1, v2}, Lnet/sf/saxon/om/NodeInfo;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "?"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    new-instance v1, Lnet/sf/saxon/expr/SingletonAtomizer;

    invoke-direct {v1, p0, v0, p1}, Lnet/sf/saxon/expr/SingletonAtomizer;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/parser/RoleDiagnostic;Z)V

    return-object v1
.end method

.method public static synthetic F4(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const-string v0, "op"

    const-string v1, ""

    invoke-interface {p1, v1, v0}, Lnet/sf/saxon/om/NodeInfo;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/sf/saxon/trans/PackageLoaderHE;->getOperator(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->getFirstChildExpression(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->getSecondChildExpression(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object v3

    const-string v4, "comp"

    invoke-interface {p1, v1, v4}, Lnet/sf/saxon/om/NodeInfo;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v4, Lnet/sf/saxon/expr/compat/GeneralComparison10;

    invoke-direct {v4, v2, v0, v3}, Lnet/sf/saxon/expr/compat/GeneralComparison10;-><init>(Lnet/sf/saxon/expr/Expression;ILnet/sf/saxon/expr/Expression;)V

    invoke-virtual {p0, v1, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->makeAtomicComparer(Ljava/lang/String;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/sort/AtomicComparer;

    move-result-object p0

    invoke-virtual {v4, p0}, Lnet/sf/saxon/expr/compat/GeneralComparison10;->setAtomicComparer(Lnet/sf/saxon/expr/sort/AtomicComparer;)V

    return-object v4
.end method

.method public static synthetic G(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 0

    invoke-static {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->X4(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic G0(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 0

    invoke-static {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->u4(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic G1(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 0

    invoke-static {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->O4(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic G2(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const-string v0, "name"

    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/trans/PackageLoaderHE;->getQNameAttribute(Lnet/sf/saxon/om/NodeInfo;Ljava/lang/String;)Lnet/sf/saxon/om/StructuredQName;

    move-result-object v0

    const-string v1, ""

    const-string v2, "pack"

    invoke-interface {p1, v1, v2}, Lnet/sf/saxon/om/NodeInfo;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lnet/sf/saxon/trans/PackageLoaderHE;->getPackage(Ljava/lang/String;)Lnet/sf/saxon/style/StylesheetPackage;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->getChildExpressionArray(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)[Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    array-length p1, p0

    new-instance v1, Lnet/sf/saxon/trans/SymbolicName$F;

    invoke-direct {v1, v0, p1}, Lnet/sf/saxon/trans/SymbolicName$F;-><init>(Lnet/sf/saxon/om/StructuredQName;I)V

    invoke-virtual {v2, v1}, Lnet/sf/saxon/style/StylesheetPackage;->getComponent(Lnet/sf/saxon/trans/SymbolicName;)Lnet/sf/saxon/expr/Component;

    move-result-object p1

    new-instance v0, Lnet/sf/saxon/expr/instruct/OriginalFunction;

    invoke-direct {v0, p1}, Lnet/sf/saxon/expr/instruct/OriginalFunction;-><init>(Lnet/sf/saxon/expr/Component;)V

    new-instance p1, Lnet/sf/saxon/expr/StaticFunctionCall;

    invoke-direct {p1, v0, p0}, Lnet/sf/saxon/expr/StaticFunctionCall;-><init>(Lnet/sf/saxon/om/Function;[Lnet/sf/saxon/expr/Expression;)V

    return-object p1

    :cond_0
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown package key "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic G3(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const-string v0, "name"

    const-string v1, ""

    invoke-interface {p1, v1, v0}, Lnet/sf/saxon/om/NodeInfo;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-static {v0}, Lnet/sf/saxon/om/NameChecker;->getQNameParts(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lnet/sf/saxon/om/QNameException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "nsuri"

    invoke-interface {p1, v1, v2}, Lnet/sf/saxon/om/NodeInfo;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    move-object v2, v1

    :cond_0
    new-instance v3, Lnet/sf/saxon/om/StructuredQName;

    const/4 v4, 0x0

    aget-object v4, v0, v4

    const/4 v5, 0x1

    aget-object v0, v0, v5

    invoke-direct {v3, v4, v2, v0}, Lnet/sf/saxon/om/StructuredQName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lnet/sf/saxon/om/FingerprintedQName;

    iget-object v2, p0, Lnet/sf/saxon/trans/PackageLoaderHE;->a:Lnet/sf/saxon/Configuration;

    invoke-virtual {v2}, Lnet/sf/saxon/Configuration;->getNamePool()Lnet/sf/saxon/om/NamePool;

    move-result-object v2

    invoke-direct {v0, v3, v2}, Lnet/sf/saxon/om/FingerprintedQName;-><init>(Lnet/sf/saxon/om/StructuredQName;Lnet/sf/saxon/om/NamePool;)V

    const-string v2, "validation"

    invoke-interface {p1, v1, v2}, Lnet/sf/saxon/om/NodeInfo;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {v1}, Lnet/sf/saxon/lib/Validation;->getCode(Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x4

    :goto_0
    const-string v2, "type"

    invoke-virtual {p0, p1, v2}, Lnet/sf/saxon/trans/PackageLoaderHE;->getTypeAttribute(Lnet/sf/saxon/om/NodeInfo;Ljava/lang/String;)Lnet/sf/saxon/type/SchemaType;

    move-result-object v2

    if-eqz v2, :cond_2

    const/16 v1, 0x8

    :cond_2
    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->getFirstChildExpression(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    new-instance p1, Lnet/sf/saxon/expr/instruct/FixedAttribute;

    check-cast v2, Lnet/sf/saxon/type/SimpleType;

    invoke-direct {p1, v0, v1, v2}, Lnet/sf/saxon/expr/instruct/FixedAttribute;-><init>(Lnet/sf/saxon/om/NodeName;ILnet/sf/saxon/type/SimpleType;)V

    invoke-virtual {p1, p0}, Lnet/sf/saxon/expr/instruct/SimpleNodeConstructor;->setSelect(Lnet/sf/saxon/expr/Expression;)V

    return-object p1

    :catch_0
    move-exception p0

    new-instance p1, Lnet/sf/saxon/trans/XPathException;

    invoke-direct {p1, p0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static synthetic G4(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const-string v0, "name"

    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/trans/PackageLoaderHE;->getQNameAttribute(Lnet/sf/saxon/om/NodeInfo;Ljava/lang/String;)Lnet/sf/saxon/om/StructuredQName;

    move-result-object v0

    new-instance v1, Lnet/sf/saxon/expr/GlobalVariableReference;

    invoke-direct {v1, v0}, Lnet/sf/saxon/expr/GlobalVariableReference;-><init>(Lnet/sf/saxon/om/StructuredQName;)V

    const-string v0, "bSlot"

    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/trans/PackageLoaderHE;->getIntegerAttribute(Lnet/sf/saxon/om/NodeInfo;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v1, p1}, Lnet/sf/saxon/expr/GlobalVariableReference;->setBindingSlot(I)V

    invoke-virtual {p0, v1}, Lnet/sf/saxon/trans/PackageLoaderHE;->Y1(Lnet/sf/saxon/expr/ComponentInvocation;)V

    return-object v1
.end method

.method public static synthetic H(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 0

    invoke-static {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->J2(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic H0(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 0

    invoke-static {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->K2(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic H1(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 0

    invoke-static {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->I3(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic H2(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    new-instance v0, Lnet/sf/saxon/expr/instruct/ApplyImports;

    invoke-direct {v0}, Lnet/sf/saxon/expr/instruct/ApplyImports;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lnet/sf/saxon/trans/PackageLoaderHE;->g5(Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/expr/Expression;Z)[Lnet/sf/saxon/expr/instruct/WithParam;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0, p1, v0, v2}, Lnet/sf/saxon/trans/PackageLoaderHE;->g5(Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/expr/Expression;Z)[Lnet/sf/saxon/expr/instruct/WithParam;

    move-result-object p0

    invoke-virtual {v0, v1}, Lnet/sf/saxon/expr/instruct/ApplyNextMatchingTemplate;->setActualParams([Lnet/sf/saxon/expr/instruct/WithParam;)V

    invoke-virtual {v0, p0}, Lnet/sf/saxon/expr/instruct/ApplyNextMatchingTemplate;->setTunnelParams([Lnet/sf/saxon/expr/instruct/WithParam;)V

    return-object v0
.end method

.method public static synthetic H3(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const-string v0, "name"

    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/trans/PackageLoaderHE;->getQNameAttribute(Lnet/sf/saxon/om/NodeInfo;Ljava/lang/String;)Lnet/sf/saxon/om/StructuredQName;

    move-result-object v0

    new-instance v1, Lnet/sf/saxon/om/FingerprintedQName;

    iget-object v2, p0, Lnet/sf/saxon/trans/PackageLoaderHE;->a:Lnet/sf/saxon/Configuration;

    invoke-virtual {v2}, Lnet/sf/saxon/Configuration;->getNamePool()Lnet/sf/saxon/om/NamePool;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lnet/sf/saxon/om/FingerprintedQName;-><init>(Lnet/sf/saxon/om/StructuredQName;Lnet/sf/saxon/om/NamePool;)V

    new-instance v0, Lnet/sf/saxon/expr/AttributeGetter;

    invoke-direct {v0, v1}, Lnet/sf/saxon/expr/AttributeGetter;-><init>(Lnet/sf/saxon/om/FingerprintedQName;)V

    const-string v1, "chk"

    invoke-virtual {p0, p1, v1}, Lnet/sf/saxon/trans/PackageLoaderHE;->getIntegerAttribute(Lnet/sf/saxon/om/NodeInfo;Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v0, p0}, Lnet/sf/saxon/expr/AttributeGetter;->setRequiredChecks(I)V

    return-object v0
.end method

.method public static synthetic H4(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->getFirstChildExpression(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    new-instance p1, Lnet/sf/saxon/expr/HomogeneityChecker;

    invoke-direct {p1, p0}, Lnet/sf/saxon/expr/HomogeneityChecker;-><init>(Lnet/sf/saxon/expr/Expression;)V

    return-object p1
.end method

.method public static synthetic I(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 0

    invoke-static {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->k3(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic I0(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 0

    invoke-static {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->m3(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic I1(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 0

    invoke-static {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->i4(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic I2(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const-string v0, "name"

    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/trans/PackageLoaderHE;->getQNameAttribute(Lnet/sf/saxon/om/NodeInfo;Ljava/lang/String;)Lnet/sf/saxon/om/StructuredQName;

    move-result-object v0

    const-string v1, "slot"

    invoke-virtual {p0, p1, v1}, Lnet/sf/saxon/trans/PackageLoaderHE;->getIntegerAttribute(Lnet/sf/saxon/om/NodeInfo;Ljava/lang/String;)I

    move-result v1

    new-instance v2, Lnet/sf/saxon/expr/instruct/LocalParam;

    invoke-direct {v2}, Lnet/sf/saxon/expr/instruct/LocalParam;-><init>()V

    invoke-virtual {v2, v0}, Lnet/sf/saxon/expr/instruct/LocalParam;->setVariableQName(Lnet/sf/saxon/om/StructuredQName;)V

    invoke-virtual {v2, v1}, Lnet/sf/saxon/expr/instruct/LocalParam;->setSlotNumber(I)V

    const-string v0, "select"

    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/trans/PackageLoaderHE;->getExpressionWithRole(Lnet/sf/saxon/om/NodeInfo;Ljava/lang/String;)Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v2, v0}, Lnet/sf/saxon/expr/instruct/LocalParam;->setSelectExpression(Lnet/sf/saxon/expr/Expression;)V

    invoke-virtual {v2}, Lnet/sf/saxon/expr/instruct/LocalParam;->computeEvaluationMode()V

    :cond_0
    const-string v0, "conversion"

    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/trans/PackageLoaderHE;->getExpressionWithRole(Lnet/sf/saxon/om/NodeInfo;Ljava/lang/String;)Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v2, v0}, Lnet/sf/saxon/expr/instruct/LocalParam;->setConversion(Lnet/sf/saxon/expr/Expression;)V

    :cond_1
    const-string v0, "as"

    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/trans/PackageLoaderHE;->parseAlphaCode(Lnet/sf/saxon/om/NodeInfo;Ljava/lang/String;)Lnet/sf/saxon/value/SequenceType;

    move-result-object v0

    invoke-virtual {v2, v0}, Lnet/sf/saxon/expr/instruct/LocalParam;->setRequiredType(Lnet/sf/saxon/value/SequenceType;)V

    const-string v0, ""

    const-string v1, "flags"

    invoke-interface {p1, v0, v1}, Lnet/sf/saxon/om/NodeInfo;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    const-string v0, "t"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    invoke-virtual {v2, v0}, Lnet/sf/saxon/expr/instruct/LocalParam;->setTunnel(Z)V

    const-string v0, "r"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    invoke-virtual {v2, v0}, Lnet/sf/saxon/expr/instruct/LocalParam;->setRequiredParam(Z)V

    const-string v0, "i"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    invoke-virtual {v2, p1}, Lnet/sf/saxon/expr/instruct/LocalParam;->setImplicitlyRequiredParam(Z)V

    :cond_2
    iget-object p0, p0, Lnet/sf/saxon/trans/PackageLoaderHE;->localBindings:Ljava/util/Stack;

    invoke-virtual {p0, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v2
.end method

.method public static synthetic I3(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const-string v0, ""

    const-string v1, "name"

    invoke-interface {p1, v0, v1}, Lnet/sf/saxon/om/NodeInfo;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/sf/saxon/om/AxisInfo;->getAxisNumber(Ljava/lang/String;)I

    move-result v0

    const-string v1, "nodeTest"

    invoke-virtual {p0, p1, v1}, Lnet/sf/saxon/trans/PackageLoaderHE;->parseAlphaCodeForItemType(Lnet/sf/saxon/om/NodeInfo;Ljava/lang/String;)Lnet/sf/saxon/type/ItemType;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/pattern/NodeTest;

    new-instance p1, Lnet/sf/saxon/expr/AxisExpression;

    invoke-direct {p1, v0, p0}, Lnet/sf/saxon/expr/AxisExpression;-><init>(ILnet/sf/saxon/pattern/NodeTest;)V

    return-object p1
.end method

.method public static synthetic I4(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-static {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->getChildExpressionArray(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)[Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    const-string v1, "name"

    invoke-virtual {p0, p1, v1}, Lnet/sf/saxon/trans/PackageLoaderHE;->getQNameAttribute(Lnet/sf/saxon/om/NodeInfo;Ljava/lang/String;)Lnet/sf/saxon/om/StructuredQName;

    move-result-object v1

    const-string v2, "http://www.w3.org/2005/xpath-functions/math"

    invoke-virtual {v1, v2}, Lnet/sf/saxon/om/StructuredQName;->hasURI(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lnet/sf/saxon/functions/MathFunctionSet;->getInstance()Lnet/sf/saxon/functions/MathFunctionSet;

    move-result-object v2

    invoke-virtual {v1}, Lnet/sf/saxon/om/StructuredQName;->getLocalPart()Ljava/lang/String;

    move-result-object v3

    array-length v4, v0

    invoke-virtual {v2, v3, v4}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->makeFunction(Ljava/lang/String;I)Lnet/sf/saxon/functions/SystemFunction;

    move-result-object v2

    invoke-virtual {v2, v0}, Lnet/sf/saxon/functions/SystemFunction;->makeFunctionCall([Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    goto :goto_0

    :cond_0
    const-string v2, "http://www.w3.org/2005/xpath-functions/map"

    invoke-virtual {v1, v2}, Lnet/sf/saxon/om/StructuredQName;->hasURI(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lnet/sf/saxon/ma/map/MapFunctionSet;->getInstance()Lnet/sf/saxon/ma/map/MapFunctionSet;

    move-result-object v2

    invoke-virtual {v1}, Lnet/sf/saxon/om/StructuredQName;->getLocalPart()Ljava/lang/String;

    move-result-object v3

    array-length v4, v0

    invoke-virtual {v2, v3, v4}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->makeFunction(Ljava/lang/String;I)Lnet/sf/saxon/functions/SystemFunction;

    move-result-object v2

    invoke-virtual {v2, v0}, Lnet/sf/saxon/functions/SystemFunction;->makeFunctionCall([Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    goto :goto_0

    :cond_1
    const-string v2, "http://www.w3.org/2005/xpath-functions/array"

    invoke-virtual {v1, v2}, Lnet/sf/saxon/om/StructuredQName;->hasURI(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lnet/sf/saxon/ma/arrays/ArrayFunctionSet;->getInstance()Lnet/sf/saxon/ma/arrays/ArrayFunctionSet;

    move-result-object v2

    invoke-virtual {v1}, Lnet/sf/saxon/om/StructuredQName;->getLocalPart()Ljava/lang/String;

    move-result-object v3

    array-length v4, v0

    invoke-virtual {v2, v3, v4}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->makeFunction(Ljava/lang/String;I)Lnet/sf/saxon/functions/SystemFunction;

    move-result-object v2

    invoke-virtual {v2, v0}, Lnet/sf/saxon/functions/SystemFunction;->makeFunctionCall([Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    goto :goto_0

    :cond_2
    const-string v2, "http://saxon.sf.net/"

    invoke-virtual {v1, v2}, Lnet/sf/saxon/om/StructuredQName;->hasURI(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    const-string v2, "Saxon extension functions"

    invoke-virtual {p0, v2}, Lnet/sf/saxon/trans/PackageLoaderHE;->needsPELicense(Ljava/lang/String;)V

    :cond_3
    move-object v2, v3

    :goto_0
    if-nez v2, :cond_a

    new-instance v2, Lnet/sf/saxon/trans/SymbolicName$F;

    array-length v3, v0

    invoke-direct {v2, v1, v3}, Lnet/sf/saxon/trans/SymbolicName$F;-><init>(Lnet/sf/saxon/om/StructuredQName;I)V

    const-string v1, "type"

    invoke-virtual {p0, p1, v1}, Lnet/sf/saxon/trans/PackageLoaderHE;->parseAlphaCode(Lnet/sf/saxon/om/NodeInfo;Ljava/lang/String;)Lnet/sf/saxon/value/SequenceType;

    move-result-object v1

    new-instance v3, Lnet/sf/saxon/sxpath/IndependentContext;

    iget-object v4, p0, Lnet/sf/saxon/trans/PackageLoaderHE;->a:Lnet/sf/saxon/Configuration;

    invoke-direct {v3, v4}, Lnet/sf/saxon/sxpath/IndependentContext;-><init>(Lnet/sf/saxon/Configuration;)V

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->makeRetainedStaticContext(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    move-result-object v4

    invoke-virtual {v4}, Lnet/sf/saxon/expr/parser/RetainedStaticContext;->getStaticBaseUriString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lnet/sf/saxon/sxpath/AbstractStaticContext;->setBaseURI(Ljava/lang/String;)V

    invoke-virtual {v4}, Lnet/sf/saxon/expr/parser/RetainedStaticContext;->getPackageData()Lnet/sf/saxon/expr/PackageData;

    move-result-object v5

    invoke-virtual {v3, v5}, Lnet/sf/saxon/sxpath/AbstractStaticContext;->setPackageData(Lnet/sf/saxon/expr/PackageData;)V

    const/16 v5, 0x1f

    invoke-virtual {v3, v5}, Lnet/sf/saxon/sxpath/AbstractStaticContext;->setXPathLanguageLevel(I)V

    invoke-virtual {v4}, Lnet/sf/saxon/expr/parser/RetainedStaticContext;->getDefaultElementNamespace()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lnet/sf/saxon/sxpath/IndependentContext;->setDefaultElementNamespace(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lnet/sf/saxon/sxpath/IndependentContext;->setNamespaceResolver(Lnet/sf/saxon/om/NamespaceResolver;)V

    invoke-virtual {v4}, Lnet/sf/saxon/expr/parser/RetainedStaticContext;->isBackwardsCompatibility()Z

    move-result v5

    invoke-virtual {v3, v5}, Lnet/sf/saxon/sxpath/AbstractStaticContext;->setBackwardsCompatibilityMode(Z)V

    invoke-virtual {v4}, Lnet/sf/saxon/expr/parser/RetainedStaticContext;->getDefaultCollationName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lnet/sf/saxon/sxpath/AbstractStaticContext;->setDefaultCollationName(Ljava/lang/String;)V

    invoke-virtual {v4}, Lnet/sf/saxon/expr/parser/RetainedStaticContext;->getDefaultFunctionNamespace()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lnet/sf/saxon/sxpath/AbstractStaticContext;->setDefaultFunctionNamespace(Ljava/lang/String;)V

    invoke-virtual {v4}, Lnet/sf/saxon/expr/parser/RetainedStaticContext;->getDecimalFormatManager()Lnet/sf/saxon/trans/DecimalFormatManager;

    move-result-object v4

    invoke-virtual {v3, v4}, Lnet/sf/saxon/sxpath/AbstractStaticContext;->setDecimalFormatManager(Lnet/sf/saxon/trans/DecimalFormatManager;)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget-object v5, p0, Lnet/sf/saxon/trans/PackageLoaderHE;->a:Lnet/sf/saxon/Configuration;

    invoke-virtual {v5}, Lnet/sf/saxon/Configuration;->getIntegratedFunctionLibrary()Lnet/sf/saxon/functions/IntegratedFunctionLibrary;

    move-result-object v5

    invoke-virtual {v5, v2, v0, v3, v4}, Lnet/sf/saxon/functions/IntegratedFunctionLibrary;->bind(Lnet/sf/saxon/trans/SymbolicName$F;[Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/StaticContext;Ljava/util/List;)Lnet/sf/saxon/expr/Expression;

    move-result-object v5

    if-nez v5, :cond_4

    iget-object v5, p0, Lnet/sf/saxon/trans/PackageLoaderHE;->a:Lnet/sf/saxon/Configuration;

    invoke-virtual {v5}, Lnet/sf/saxon/Configuration;->getBuiltInExtensionLibraryList()Lnet/sf/saxon/functions/FunctionLibraryList;

    move-result-object v5

    invoke-virtual {v5, v2, v0, v3, v4}, Lnet/sf/saxon/functions/FunctionLibraryList;->bind(Lnet/sf/saxon/trans/SymbolicName$F;[Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/StaticContext;Ljava/util/List;)Lnet/sf/saxon/expr/Expression;

    move-result-object v5

    :cond_4
    instance-of v6, v5, Lnet/sf/saxon/expr/SystemFunctionCall;

    if-eqz v6, :cond_6

    move-object v6, v5

    check-cast v6, Lnet/sf/saxon/expr/SystemFunctionCall;

    invoke-virtual {v6}, Lnet/sf/saxon/expr/SystemFunctionCall;->getTargetFunction()Lnet/sf/saxon/functions/SystemFunction;

    move-result-object v6

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->makeRetainedStaticContext(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    move-result-object p0

    invoke-virtual {v6, p0}, Lnet/sf/saxon/functions/SystemFunction;->setRetainedStaticContext(Lnet/sf/saxon/expr/parser/RetainedStaticContext;)V

    const/4 p0, 0x2

    invoke-interface {p1, p0}, Lnet/sf/saxon/om/NodeInfo;->iterateAxis(I)Lnet/sf/saxon/tree/iter/AxisIterator;

    move-result-object p0

    new-instance p1, Ljava/util/Properties;

    invoke-direct {p1}, Ljava/util/Properties;-><init>()V

    :goto_1
    invoke-interface {p0}, Lnet/sf/saxon/om/SequenceIterator;->next()Lnet/sf/saxon/om/Item;

    move-result-object v7

    check-cast v7, Lnet/sf/saxon/om/NodeInfo;

    if-eqz v7, :cond_5

    invoke-interface {v7}, Lnet/sf/saxon/om/NodeInfo;->getLocalPart()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7}, Lnet/sf/saxon/om/Item;->getStringValue()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v8, v7}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_1

    :cond_5
    invoke-virtual {v6, p1}, Lnet/sf/saxon/functions/SystemFunction;->importAttributes(Ljava/util/Properties;)V

    :cond_6
    if-nez v5, :cond_8

    new-instance p0, Ljava/lang/StringBuilder;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "IntegratedFunctionCall to "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " not found"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, ". "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_7
    new-instance p1, Lnet/sf/saxon/trans/XPathException;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    instance-of p0, v5, Lnet/sf/saxon/functions/IntegratedFunctionCall;

    if-eqz p0, :cond_9

    move-object p0, v5

    check-cast p0, Lnet/sf/saxon/functions/IntegratedFunctionCall;

    invoke-virtual {p0}, Lnet/sf/saxon/functions/IntegratedFunctionCall;->getFunction()Lnet/sf/saxon/lib/ExtensionFunctionCall;

    move-result-object p1

    const/4 v2, -0x1

    invoke-virtual {p1, v3, v2, v0}, Lnet/sf/saxon/lib/ExtensionFunctionCall;->supplyStaticContext(Lnet/sf/saxon/expr/StaticContext;I[Lnet/sf/saxon/expr/Expression;)V

    invoke-virtual {p0, v1}, Lnet/sf/saxon/functions/IntegratedFunctionCall;->setResultType(Lnet/sf/saxon/value/SequenceType;)V

    :cond_9
    move-object v2, v5

    :cond_a
    instance-of p0, v2, Lnet/sf/saxon/expr/SystemFunctionCall;

    if-eqz p0, :cond_b

    move-object p0, v2

    check-cast p0, Lnet/sf/saxon/expr/SystemFunctionCall;

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/SystemFunctionCall;->allocateArgumentEvaluators([Lnet/sf/saxon/expr/Expression;)V

    :cond_b
    return-object v2
.end method

.method public static synthetic J(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 0

    invoke-static {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->c3(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic J0(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 0

    invoke-static {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->j3(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic J1(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 0

    invoke-static {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->X3(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic J2(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x3

    sget-object v2, Lnet/sf/saxon/pattern/NodeKindTest;->ELEMENT:Lnet/sf/saxon/pattern/NodeKindTest;

    invoke-interface {p1, v1, v2}, Lnet/sf/saxon/om/NodeInfo;->iterateAxis(ILnet/sf/saxon/pattern/NodePredicate;)Lnet/sf/saxon/tree/iter/AxisIterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Lnet/sf/saxon/tree/iter/AxisIterator;->next()Lnet/sf/saxon/om/NodeInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v1}, Lnet/sf/saxon/trans/PackageLoaderHE;->loadExpression(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/expr/instruct/LocalParam;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance p0, Lnet/sf/saxon/expr/instruct/LocalParamBlock;

    const/4 p1, 0x0

    new-array p1, p1, [Lnet/sf/saxon/expr/instruct/LocalParam;

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lnet/sf/saxon/expr/instruct/LocalParam;

    invoke-direct {p0, p1}, Lnet/sf/saxon/expr/instruct/LocalParamBlock;-><init>([Lnet/sf/saxon/expr/instruct/LocalParam;)V

    return-object p0
.end method

.method public static synthetic J3(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    new-instance p0, Lnet/sf/saxon/expr/instruct/BreakInstr;

    invoke-direct {p0}, Lnet/sf/saxon/expr/instruct/BreakInstr;-><init>()V

    return-object p0
.end method

.method public static synthetic J4(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/trans/PackageLoaderHE;->getChild(Lnet/sf/saxon/om/NodeInfo;I)Lnet/sf/saxon/om/NodeInfo;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->readFunction(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/instruct/UserFunction;

    move-result-object p0

    new-instance p1, Lnet/sf/saxon/functions/hof/UserFunctionReference;

    invoke-direct {p1, p0}, Lnet/sf/saxon/functions/hof/UserFunctionReference;-><init>(Lnet/sf/saxon/expr/instruct/UserFunction;)V

    return-object p1
.end method

.method public static synthetic K(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 0

    invoke-static {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->o4(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic K0(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 0

    invoke-static {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->W4(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic K1(Ljava/util/List;Lnet/sf/saxon/style/StylesheetPackage;Lnet/sf/saxon/expr/sort/MergeInstr$MergeSource;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lnet/sf/saxon/trans/PackageLoaderHE;->p2(Ljava/util/List;Lnet/sf/saxon/style/StylesheetPackage;Lnet/sf/saxon/expr/sort/MergeInstr$MergeSource;)V

    return-void
.end method

.method public static synthetic K2(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    sget-object v0, Lnet/sf/saxon/pattern/NodeKindTest;->ELEMENT:Lnet/sf/saxon/pattern/NodeKindTest;

    const/4 v1, 0x3

    invoke-interface {p1, v1, v0}, Lnet/sf/saxon/om/NodeInfo;->iterateAxis(ILnet/sf/saxon/pattern/NodePredicate;)Lnet/sf/saxon/tree/iter/AxisIterator;

    move-result-object v1

    invoke-static {v1}, Lnet/sf/saxon/functions/Count;->count(Lnet/sf/saxon/om/SequenceIterator;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    new-array v1, v1, [Lnet/sf/saxon/expr/Expression;

    invoke-interface {p1, v0}, Lnet/sf/saxon/om/NodeInfo;->children(Lnet/sf/saxon/pattern/NodePredicate;)Ljava/lang/Iterable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v2, 0x0

    move-object v3, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnet/sf/saxon/om/NodeInfo;

    if-nez v2, :cond_0

    invoke-virtual {p0, v4}, Lnet/sf/saxon/trans/PackageLoaderHE;->loadExpression(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object v3

    goto :goto_1

    :cond_0
    invoke-interface {v4}, Lnet/sf/saxon/om/NodeInfo;->getLocalPart()Ljava/lang/String;

    move-result-object v5

    const-string v6, "null"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    add-int/lit8 v4, v2, -0x1

    aput-object v0, v1, v4

    goto :goto_1

    :cond_1
    add-int/lit8 v5, v2, -0x1

    invoke-virtual {p0, v4}, Lnet/sf/saxon/trans/PackageLoaderHE;->loadExpression(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object v4

    aput-object v4, v1, v5

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    new-instance p0, Lnet/sf/saxon/functions/hof/PartialApply;

    invoke-direct {p0, v3, v1}, Lnet/sf/saxon/functions/hof/PartialApply;-><init>(Lnet/sf/saxon/expr/Expression;[Lnet/sf/saxon/expr/Expression;)V

    return-object p0
.end method

.method public static synthetic K3(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/trans/PackageLoaderHE;->packStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/style/StylesheetPackage;

    const-string v1, "name"

    invoke-virtual {p0, p1, v1}, Lnet/sf/saxon/trans/PackageLoaderHE;->getQNameAttribute(Lnet/sf/saxon/om/NodeInfo;Ljava/lang/String;)Lnet/sf/saxon/om/StructuredQName;

    move-result-object v1

    new-instance v2, Lnet/sf/saxon/trans/SymbolicName;

    const/16 v3, 0xd2

    invoke-direct {v2, v3, v1}, Lnet/sf/saxon/trans/SymbolicName;-><init>(ILnet/sf/saxon/om/StructuredQName;)V

    invoke-virtual {v0, v2}, Lnet/sf/saxon/style/StylesheetPackage;->getComponent(Lnet/sf/saxon/trans/SymbolicName;)Lnet/sf/saxon/expr/Component;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lnet/sf/saxon/expr/instruct/NamedTemplate;

    invoke-direct {v0, v1}, Lnet/sf/saxon/expr/instruct/NamedTemplate;-><init>(Lnet/sf/saxon/om/StructuredQName;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lnet/sf/saxon/expr/Component;->getActor()Lnet/sf/saxon/expr/instruct/Actor;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/expr/instruct/NamedTemplate;

    :goto_0
    const-string v2, ""

    const-string v3, "flags"

    invoke-interface {p1, v2, v3}, Lnet/sf/saxon/om/NodeInfo;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    const-string v5, "t"

    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v5, v3

    goto :goto_1

    :cond_1
    move v5, v4

    :goto_1
    if-eqz v2, :cond_2

    const-string v6, "d"

    invoke-virtual {v2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v3

    goto :goto_2

    :cond_2
    move v2, v4

    :goto_2
    new-instance v6, Lnet/sf/saxon/expr/instruct/CallTemplate;

    invoke-direct {v6, v0, v1, v5, v2}, Lnet/sf/saxon/expr/instruct/CallTemplate;-><init>(Lnet/sf/saxon/expr/instruct/NamedTemplate;Lnet/sf/saxon/om/StructuredQName;ZZ)V

    invoke-virtual {p0, p1, v6, v4}, Lnet/sf/saxon/trans/PackageLoaderHE;->g5(Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/expr/Expression;Z)[Lnet/sf/saxon/expr/instruct/WithParam;

    move-result-object v0

    invoke-virtual {p0, p1, v6, v3}, Lnet/sf/saxon/trans/PackageLoaderHE;->g5(Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/expr/Expression;Z)[Lnet/sf/saxon/expr/instruct/WithParam;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Lnet/sf/saxon/expr/instruct/CallTemplate;->setActualParameters([Lnet/sf/saxon/expr/instruct/WithParam;[Lnet/sf/saxon/expr/instruct/WithParam;)V

    const-string v0, "bSlot"

    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/trans/PackageLoaderHE;->getIntegerAttribute(Lnet/sf/saxon/om/NodeInfo;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v6, p1}, Lnet/sf/saxon/expr/instruct/CallTemplate;->setBindingSlot(I)V

    invoke-virtual {p0, v6}, Lnet/sf/saxon/trans/PackageLoaderHE;->Y1(Lnet/sf/saxon/expr/ComponentInvocation;)V

    return-object v6
.end method

.method public static synthetic K4(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->getFirstChildExpression(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    const-string v1, "of"

    invoke-virtual {p0, p1, v1}, Lnet/sf/saxon/trans/PackageLoaderHE;->parseAlphaCode(Lnet/sf/saxon/om/NodeInfo;Ljava/lang/String;)Lnet/sf/saxon/value/SequenceType;

    move-result-object p0

    new-instance p1, Lnet/sf/saxon/expr/InstanceOfExpression;

    invoke-direct {p1, v0, p0}, Lnet/sf/saxon/expr/InstanceOfExpression;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/value/SequenceType;)V

    return-object p1
.end method

.method public static synthetic L(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 0

    invoke-static {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->W2(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic L0(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/pattern/Pattern;
    .locals 0

    invoke-static {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->r3(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/pattern/Pattern;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic L1(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 0

    invoke-static {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->F3(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic L2(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->getFirstChildExpression(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->getSecondChildExpression(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    new-instance p1, Lnet/sf/saxon/expr/IdentityComparison;

    const/16 v1, 0x26

    invoke-direct {p1, v0, v1, p0}, Lnet/sf/saxon/expr/IdentityComparison;-><init>(Lnet/sf/saxon/expr/Expression;ILnet/sf/saxon/expr/Expression;)V

    return-object p1
.end method

.method public static synthetic L3(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->getFirstChildExpression(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    const-string v1, "flags"

    const-string v2, ""

    invoke-interface {p1, v2, v1}, Lnet/sf/saxon/om/NodeInfo;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "e"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    const-string v4, "a"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    const-string v5, "as"

    if-eqz v4, :cond_0

    invoke-virtual {p0, p1, v5}, Lnet/sf/saxon/trans/PackageLoaderHE;->parseAlphaCode(Lnet/sf/saxon/om/NodeInfo;Ljava/lang/String;)Lnet/sf/saxon/value/SequenceType;

    move-result-object p0

    new-instance p1, Lnet/sf/saxon/expr/CastExpression;

    invoke-virtual {p0}, Lnet/sf/saxon/value/SequenceType;->getPrimaryType()Lnet/sf/saxon/type/ItemType;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/type/AtomicType;

    invoke-direct {p1, v0, p0, v3}, Lnet/sf/saxon/expr/CastExpression;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/type/AtomicType;Z)V

    return-object p1

    :cond_0
    const-string v4, "l"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v4, :cond_1

    invoke-interface {p1, v2, v5}, Lnet/sf/saxon/om/NodeInfo;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnet/sf/saxon/om/StructuredQName;->fromEQName(Ljava/lang/String;)Lnet/sf/saxon/om/StructuredQName;

    move-result-object v1

    iget-object p0, p0, Lnet/sf/saxon/trans/PackageLoaderHE;->a:Lnet/sf/saxon/Configuration;

    invoke-virtual {p0, v1}, Lnet/sf/saxon/Configuration;->getSchemaType(Lnet/sf/saxon/om/StructuredQName;)Lnet/sf/saxon/type/SchemaType;

    move-result-object p0

    invoke-interface {p1}, Lnet/sf/saxon/om/NodeInfo;->getAllNamespaces()Lnet/sf/saxon/om/NamespaceMap;

    move-result-object p1

    new-instance v1, Lnet/sf/saxon/expr/ListConstructorFunction;

    check-cast p0, Lnet/sf/saxon/type/ListType;

    invoke-direct {v1, p0, p1, v3}, Lnet/sf/saxon/expr/ListConstructorFunction;-><init>(Lnet/sf/saxon/type/ListType;Lnet/sf/saxon/om/NamespaceResolver;Z)V

    new-instance p0, Lnet/sf/saxon/expr/StaticFunctionCall;

    new-array p1, v7, [Lnet/sf/saxon/expr/Expression;

    aput-object v0, p1, v6

    invoke-direct {p0, v1, p1}, Lnet/sf/saxon/expr/StaticFunctionCall;-><init>(Lnet/sf/saxon/om/Function;[Lnet/sf/saxon/expr/Expression;)V

    return-object p0

    :cond_1
    const-string v4, "u"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {p1, v2, v5}, Lnet/sf/saxon/om/NodeInfo;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {p1, v2, v5}, Lnet/sf/saxon/om/NodeInfo;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnet/sf/saxon/om/StructuredQName;->fromEQName(Ljava/lang/String;)Lnet/sf/saxon/om/StructuredQName;

    move-result-object v1

    iget-object p0, p0, Lnet/sf/saxon/trans/PackageLoaderHE;->a:Lnet/sf/saxon/Configuration;

    invoke-virtual {p0, v1}, Lnet/sf/saxon/Configuration;->getSchemaType(Lnet/sf/saxon/om/StructuredQName;)Lnet/sf/saxon/type/SchemaType;

    move-result-object p0

    invoke-interface {p1}, Lnet/sf/saxon/om/NodeInfo;->getAllNamespaces()Lnet/sf/saxon/om/NamespaceMap;

    move-result-object p1

    new-instance v1, Lnet/sf/saxon/expr/UnionConstructorFunction;

    check-cast p0, Lnet/sf/saxon/type/UnionType;

    invoke-direct {v1, p0, p1, v3}, Lnet/sf/saxon/expr/UnionConstructorFunction;-><init>(Lnet/sf/saxon/type/UnionType;Lnet/sf/saxon/om/NamespaceResolver;Z)V

    new-instance p0, Lnet/sf/saxon/expr/StaticFunctionCall;

    new-array p1, v7, [Lnet/sf/saxon/expr/Expression;

    aput-object v0, p1, v6

    invoke-direct {p0, v1, p1}, Lnet/sf/saxon/expr/StaticFunctionCall;-><init>(Lnet/sf/saxon/om/Function;[Lnet/sf/saxon/expr/Expression;)V

    return-object p0

    :cond_2
    const-string v1, "to"

    invoke-virtual {p0, p1, v1}, Lnet/sf/saxon/trans/PackageLoaderHE;->parseAlphaCode(Lnet/sf/saxon/om/NodeInfo;Ljava/lang/String;)Lnet/sf/saxon/value/SequenceType;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/value/SequenceType;->getPrimaryType()Lnet/sf/saxon/type/ItemType;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/type/LocalUnionType;

    invoke-interface {p1}, Lnet/sf/saxon/om/NodeInfo;->getAllNamespaces()Lnet/sf/saxon/om/NamespaceMap;

    move-result-object p1

    new-instance v1, Lnet/sf/saxon/expr/UnionConstructorFunction;

    invoke-direct {v1, p0, p1, v3}, Lnet/sf/saxon/expr/UnionConstructorFunction;-><init>(Lnet/sf/saxon/type/UnionType;Lnet/sf/saxon/om/NamespaceResolver;Z)V

    new-instance p0, Lnet/sf/saxon/expr/StaticFunctionCall;

    new-array p1, v7, [Lnet/sf/saxon/expr/Expression;

    aput-object v0, p1, v6

    invoke-direct {p0, v1, p1}, Lnet/sf/saxon/expr/StaticFunctionCall;-><init>(Lnet/sf/saxon/om/Function;[Lnet/sf/saxon/expr/Expression;)V

    return-object p0

    :cond_3
    new-instance p0, Ljava/lang/AssertionError;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown simple type variety "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0
.end method

.method public static synthetic L4(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->getFirstChildExpression(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->getSecondChildExpression(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    new-instance p1, Lnet/sf/saxon/expr/SingletonIntersectExpression;

    const/16 v1, 0x17

    invoke-direct {p1, v0, v1, p0}, Lnet/sf/saxon/expr/SingletonIntersectExpression;-><init>(Lnet/sf/saxon/expr/Expression;ILnet/sf/saxon/expr/Expression;)V

    return-object p1
.end method

.method public static synthetic M(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 0

    invoke-static {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->C2(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic M0(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 0

    invoke-static {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->B4(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic M1(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 0

    invoke-static {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->d4(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic M2(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->getFirstChildExpression(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->getSecondChildExpression(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    new-instance p1, Lnet/sf/saxon/expr/instruct/ProcessingInstruction;

    invoke-direct {p1, v0}, Lnet/sf/saxon/expr/instruct/ProcessingInstruction;-><init>(Lnet/sf/saxon/expr/Expression;)V

    invoke-virtual {p1, p0}, Lnet/sf/saxon/expr/instruct/SimpleNodeConstructor;->setSelect(Lnet/sf/saxon/expr/Expression;)V

    return-object p1
.end method

.method public static synthetic M3(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->getFirstChildExpression(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    const-string v1, "flags"

    const-string v2, ""

    invoke-interface {p1, v2, v1}, Lnet/sf/saxon/om/NodeInfo;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "e"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    const-string v4, "a"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    const-string v5, "as"

    if-eqz v4, :cond_0

    invoke-virtual {p0, p1, v5}, Lnet/sf/saxon/trans/PackageLoaderHE;->parseAlphaCode(Lnet/sf/saxon/om/NodeInfo;Ljava/lang/String;)Lnet/sf/saxon/value/SequenceType;

    move-result-object p0

    new-instance p1, Lnet/sf/saxon/expr/CastableExpression;

    invoke-virtual {p0}, Lnet/sf/saxon/value/SequenceType;->getPrimaryType()Lnet/sf/saxon/type/ItemType;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/type/AtomicType;

    invoke-direct {p1, v0, p0, v3}, Lnet/sf/saxon/expr/CastableExpression;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/type/AtomicType;Z)V

    return-object p1

    :cond_0
    const-string v4, "l"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v4, :cond_1

    invoke-interface {p1, v2, v5}, Lnet/sf/saxon/om/NodeInfo;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnet/sf/saxon/om/StructuredQName;->fromEQName(Ljava/lang/String;)Lnet/sf/saxon/om/StructuredQName;

    move-result-object v1

    iget-object p0, p0, Lnet/sf/saxon/trans/PackageLoaderHE;->a:Lnet/sf/saxon/Configuration;

    invoke-virtual {p0, v1}, Lnet/sf/saxon/Configuration;->getSchemaType(Lnet/sf/saxon/om/StructuredQName;)Lnet/sf/saxon/type/SchemaType;

    move-result-object p0

    invoke-interface {p1}, Lnet/sf/saxon/om/NodeInfo;->getAllNamespaces()Lnet/sf/saxon/om/NamespaceMap;

    move-result-object p1

    new-instance v1, Lnet/sf/saxon/expr/ListCastableFunction;

    check-cast p0, Lnet/sf/saxon/type/ListType;

    invoke-direct {v1, p0, p1, v3}, Lnet/sf/saxon/expr/ListCastableFunction;-><init>(Lnet/sf/saxon/type/ListType;Lnet/sf/saxon/om/NamespaceResolver;Z)V

    new-instance p0, Lnet/sf/saxon/expr/StaticFunctionCall;

    new-array p1, v7, [Lnet/sf/saxon/expr/Expression;

    aput-object v0, p1, v6

    invoke-direct {p0, v1, p1}, Lnet/sf/saxon/expr/StaticFunctionCall;-><init>(Lnet/sf/saxon/om/Function;[Lnet/sf/saxon/expr/Expression;)V

    return-object p0

    :cond_1
    const-string v4, "u"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {p1, v2, v5}, Lnet/sf/saxon/om/NodeInfo;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {p1, v2, v5}, Lnet/sf/saxon/om/NodeInfo;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnet/sf/saxon/om/StructuredQName;->fromEQName(Ljava/lang/String;)Lnet/sf/saxon/om/StructuredQName;

    move-result-object v1

    iget-object p0, p0, Lnet/sf/saxon/trans/PackageLoaderHE;->a:Lnet/sf/saxon/Configuration;

    invoke-virtual {p0, v1}, Lnet/sf/saxon/Configuration;->getSchemaType(Lnet/sf/saxon/om/StructuredQName;)Lnet/sf/saxon/type/SchemaType;

    move-result-object p0

    invoke-interface {p1}, Lnet/sf/saxon/om/NodeInfo;->getAllNamespaces()Lnet/sf/saxon/om/NamespaceMap;

    move-result-object p1

    new-instance v1, Lnet/sf/saxon/expr/UnionCastableFunction;

    check-cast p0, Lnet/sf/saxon/type/UnionType;

    invoke-direct {v1, p0, p1, v3}, Lnet/sf/saxon/expr/UnionCastableFunction;-><init>(Lnet/sf/saxon/type/UnionType;Lnet/sf/saxon/om/NamespaceResolver;Z)V

    new-instance p0, Lnet/sf/saxon/expr/StaticFunctionCall;

    new-array p1, v7, [Lnet/sf/saxon/expr/Expression;

    aput-object v0, p1, v6

    invoke-direct {p0, v1, p1}, Lnet/sf/saxon/expr/StaticFunctionCall;-><init>(Lnet/sf/saxon/om/Function;[Lnet/sf/saxon/expr/Expression;)V

    return-object p0

    :cond_2
    const-string v1, "to"

    invoke-virtual {p0, p1, v1}, Lnet/sf/saxon/trans/PackageLoaderHE;->parseAlphaCode(Lnet/sf/saxon/om/NodeInfo;Ljava/lang/String;)Lnet/sf/saxon/value/SequenceType;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/value/SequenceType;->getPrimaryType()Lnet/sf/saxon/type/ItemType;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/type/LocalUnionType;

    invoke-interface {p1}, Lnet/sf/saxon/om/NodeInfo;->getAllNamespaces()Lnet/sf/saxon/om/NamespaceMap;

    move-result-object p1

    new-instance v1, Lnet/sf/saxon/expr/UnionCastableFunction;

    invoke-direct {v1, p0, p1, v3}, Lnet/sf/saxon/expr/UnionCastableFunction;-><init>(Lnet/sf/saxon/type/UnionType;Lnet/sf/saxon/om/NamespaceResolver;Z)V

    new-instance p0, Lnet/sf/saxon/expr/StaticFunctionCall;

    new-array p1, v7, [Lnet/sf/saxon/expr/Expression;

    aput-object v0, p1, v6

    invoke-direct {p0, v1, p1}, Lnet/sf/saxon/expr/StaticFunctionCall;-><init>(Lnet/sf/saxon/om/Function;[Lnet/sf/saxon/expr/Expression;)V

    return-object p0

    :cond_3
    new-instance p0, Ljava/lang/AssertionError;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown simple type variety "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0
.end method

.method public static synthetic M4(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    new-instance p0, Ljava/math/BigInteger;

    const-string v0, ""

    const-string v1, "val"

    invoke-interface {p1, v0, v1}, Lnet/sf/saxon/om/NodeInfo;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lnet/sf/saxon/value/IntegerValue;->makeIntegerValue(Ljava/math/BigInteger;)Lnet/sf/saxon/value/IntegerValue;

    move-result-object p0

    invoke-static {p0}, Lnet/sf/saxon/expr/Literal;->makeLiteral(Lnet/sf/saxon/om/GroundedValue;)Lnet/sf/saxon/expr/Literal;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic N(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 0

    invoke-static {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->s4(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic N0(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/pattern/Pattern;
    .locals 0

    invoke-static {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->w3(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/pattern/Pattern;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic N1(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/pattern/Pattern;
    .locals 0

    invoke-static {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->A3(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/pattern/Pattern;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic N2(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const-string v0, "pre"

    const-string v1, ""

    invoke-interface {p1, v1, v0}, Lnet/sf/saxon/om/NodeInfo;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "uri"

    invoke-interface {p1, v1, v0}, Lnet/sf/saxon/om/NodeInfo;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v0, "loc"

    invoke-interface {p1, v1, v0}, Lnet/sf/saxon/om/NodeInfo;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget-object v0, Lnet/sf/saxon/type/BuiltInAtomicType;->QNAME:Lnet/sf/saxon/type/BuiltInAtomicType;

    const-string v2, "type"

    invoke-interface {p1, v1, v2}, Lnet/sf/saxon/om/NodeInfo;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1, v2}, Lnet/sf/saxon/trans/PackageLoaderHE;->parseItemTypeAttribute(Lnet/sf/saxon/om/NodeInfo;Ljava/lang/String;)Lnet/sf/saxon/type/ItemType;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/type/AtomicType;

    move-object v6, p0

    goto :goto_0

    :cond_0
    move-object v6, v0

    :goto_0
    invoke-interface {v6}, Lnet/sf/saxon/type/ItemType;->getPrimitiveType()I

    move-result p0

    const/16 p1, 0x212

    if-ne p0, p1, :cond_1

    new-instance p0, Lnet/sf/saxon/value/QNameValue;

    const/4 v7, 0x0

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lnet/sf/saxon/value/QNameValue;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lnet/sf/saxon/type/AtomicType;Z)V

    goto :goto_1

    :cond_1
    new-instance p0, Lnet/sf/saxon/value/NotationValue;

    const/4 p1, 0x0

    invoke-direct {p0, v3, v4, v5, p1}, Lnet/sf/saxon/value/NotationValue;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lnet/sf/saxon/type/AtomicType;)V

    invoke-virtual {p0, v6}, Lnet/sf/saxon/value/AtomicValue;->setTypeLabel(Lnet/sf/saxon/type/AtomicType;)V

    :goto_1
    invoke-static {p0}, Lnet/sf/saxon/expr/Literal;->makeLiteral(Lnet/sf/saxon/om/GroundedValue;)Lnet/sf/saxon/expr/Literal;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic N3(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->getFirstChildExpression(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    const-string v0, "card"

    const-string v1, ""

    invoke-interface {p1, v1, v0}, Lnet/sf/saxon/om/NodeInfo;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, -0x1

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v2, "\u00b0"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x5

    goto :goto_0

    :sswitch_1
    const-string v2, "?"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x4

    goto :goto_0

    :sswitch_2
    const-string v2, "1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x3

    goto :goto_0

    :sswitch_3
    const-string v2, "0"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    const/4 v3, 0x2

    goto :goto_0

    :sswitch_4
    const-string v2, "+"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_0

    :cond_4
    const/4 v3, 0x1

    goto :goto_0

    :sswitch_5
    const-string v2, "*"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_0

    :cond_5
    const/4 v3, 0x0

    :goto_0
    packed-switch v3, :pswitch_data_0

    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Occurrence indicator: \'"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\'"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    const/16 v0, 0x6000

    goto :goto_1

    :pswitch_1
    const/16 v0, 0x4000

    goto :goto_1

    :pswitch_2
    const/16 v0, 0x2000

    goto :goto_1

    :pswitch_3
    const v0, 0xc000

    goto :goto_1

    :pswitch_4
    const v0, 0xe000

    :goto_1
    const-string v2, "diag"

    invoke-interface {p1, v1, v2}, Lnet/sf/saxon/om/NodeInfo;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lnet/sf/saxon/expr/parser/RoleDiagnostic;->reconstruct(Ljava/lang/String;)Lnet/sf/saxon/expr/parser/RoleDiagnostic;

    move-result-object p1

    invoke-static {p0, v0, p1}, Lnet/sf/saxon/expr/CardinalityChecker;->makeCardinalityChecker(Lnet/sf/saxon/expr/Expression;ILnet/sf/saxon/expr/parser/RoleDiagnostic;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        0x2a -> :sswitch_5
        0x2b -> :sswitch_4
        0x30 -> :sswitch_3
        0x31 -> :sswitch_2
        0x3f -> :sswitch_1
        0xb0 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static synthetic N4(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->getFirstChildExpression(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->getSecondChildExpression(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    new-instance p1, Lnet/sf/saxon/expr/VennExpression;

    const/16 v1, 0x17

    invoke-direct {p1, v0, v1, p0}, Lnet/sf/saxon/expr/VennExpression;-><init>(Lnet/sf/saxon/expr/Expression;ILnet/sf/saxon/expr/Expression;)V

    return-object p1
.end method

.method public static synthetic O(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 0

    invoke-static {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->D3(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic O0(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/pattern/Pattern;
    .locals 0

    invoke-static {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->s3(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/pattern/Pattern;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic O1(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 0

    invoke-static {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->n3(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic O2(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const-string v0, "from"

    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/trans/PackageLoaderHE;->getIntegerAttribute(Lnet/sf/saxon/om/NodeInfo;Ljava/lang/String;)I

    move-result v0

    const-string v1, "to"

    invoke-virtual {p0, p1, v1}, Lnet/sf/saxon/trans/PackageLoaderHE;->getIntegerAttribute(Lnet/sf/saxon/om/NodeInfo;Ljava/lang/String;)I

    move-result p0

    new-instance p1, Lnet/sf/saxon/value/IntegerRange;

    int-to-long v2, v0

    const-wide/16 v4, 0x1

    int-to-long v6, p0

    move-object v1, p1

    invoke-direct/range {v1 .. v7}, Lnet/sf/saxon/value/IntegerRange;-><init>(JJJ)V

    invoke-static {p1}, Lnet/sf/saxon/expr/Literal;->makeLiteral(Lnet/sf/saxon/om/GroundedValue;)Lnet/sf/saxon/expr/Literal;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic O3(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x3

    sget-object v3, Lnet/sf/saxon/pattern/NodeKindTest;->ELEMENT:Lnet/sf/saxon/pattern/NodeKindTest;

    invoke-interface {p1, v2, v3}, Lnet/sf/saxon/om/NodeInfo;->iterateAxis(ILnet/sf/saxon/pattern/NodePredicate;)Lnet/sf/saxon/tree/iter/AxisIterator;

    move-result-object p1

    const/4 v2, 0x1

    :goto_0
    invoke-interface {p1}, Lnet/sf/saxon/tree/iter/AxisIterator;->next()Lnet/sf/saxon/om/NodeInfo;

    move-result-object v3

    if-eqz v3, :cond_1

    if-eqz v2, :cond_0

    invoke-virtual {p0, v3}, Lnet/sf/saxon/trans/PackageLoaderHE;->loadExpression(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    invoke-virtual {p0, v3}, Lnet/sf/saxon/trans/PackageLoaderHE;->loadExpression(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    xor-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance p0, Lnet/sf/saxon/expr/instruct/Choose;

    const/4 p1, 0x0

    new-array v2, p1, [Lnet/sf/saxon/expr/Expression;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/sf/saxon/expr/Expression;

    new-array p1, p1, [Lnet/sf/saxon/expr/Expression;

    invoke-interface {v1, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lnet/sf/saxon/expr/Expression;

    invoke-direct {p0, v0, p1}, Lnet/sf/saxon/expr/instruct/Choose;-><init>([Lnet/sf/saxon/expr/Expression;[Lnet/sf/saxon/expr/Expression;)V

    return-object p0
.end method

.method public static synthetic O4(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->getFirstChildExpression(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->getSecondChildExpression(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {p0, p1, v2}, Lnet/sf/saxon/trans/PackageLoaderHE;->getNthChildExpression(Lnet/sf/saxon/om/NodeInfo;I)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    new-instance p1, Lnet/sf/saxon/expr/IntegerRangeTest;

    invoke-direct {p1, v0, v1, p0}, Lnet/sf/saxon/expr/IntegerRangeTest;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    return-object p1
.end method

.method public static synthetic P(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 0

    invoke-static {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->S4(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic P0(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/pattern/Pattern;
    .locals 0

    invoke-static {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->q3(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/pattern/Pattern;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic P1(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 0

    invoke-static {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->d3(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic P2(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/trans/PackageLoaderHE;->packStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/style/StylesheetPackage;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/style/StylesheetPackage;->setCreatesSecondaryResultDocuments(Z)V

    const-string v0, "global"

    const-string v2, ""

    invoke-interface {p1, v2, v0}, Lnet/sf/saxon/om/NodeInfo;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "local"

    invoke-interface {p1, v2, v3}, Lnet/sf/saxon/om/NodeInfo;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lnet/sf/saxon/trans/PackageLoaderHE;->f2(Ljava/lang/String;)Ljava/util/Properties;

    move-result-object v0

    :goto_0
    move-object v5, v0

    if-nez v3, :cond_1

    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v3}, Lnet/sf/saxon/trans/PackageLoaderHE;->f2(Ljava/lang/String;)Ljava/util/Properties;

    move-result-object v0

    :goto_1
    move-object v6, v0

    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    const/4 v0, 0x3

    sget-object v3, Lnet/sf/saxon/pattern/NodeKindTest;->ELEMENT:Lnet/sf/saxon/pattern/NodeKindTest;

    invoke-interface {p1, v0, v3}, Lnet/sf/saxon/om/NodeInfo;->iterateAxis(ILnet/sf/saxon/pattern/NodePredicate;)Lnet/sf/saxon/tree/iter/AxisIterator;

    move-result-object v0

    const/4 v3, 0x0

    move-object v7, v3

    move-object v8, v7

    move-object v13, v8

    :goto_2
    invoke-interface {v0}, Lnet/sf/saxon/tree/iter/AxisIterator;->next()Lnet/sf/saxon/om/NodeInfo;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-virtual {p0, v4}, Lnet/sf/saxon/trans/PackageLoaderHE;->loadExpression(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object v9

    const-string v10, "role"

    invoke-interface {v4, v2, v10}, Lnet/sf/saxon/om/NodeInfo;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v10, "href"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    move-object v7, v9

    goto :goto_2

    :cond_2
    const-string v10, "format"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    move-object v8, v9

    goto :goto_2

    :cond_3
    const-string v10, "content"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    move-object v13, v9

    goto :goto_2

    :cond_4
    invoke-static {v4}, Lnet/sf/saxon/om/StructuredQName;->fromEQName(Ljava/lang/String;)Lnet/sf/saxon/om/StructuredQName;

    move-result-object v4

    invoke-interface {v11, v4, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_5
    const-string v0, "validation"

    invoke-interface {p1, v2, v0}, Lnet/sf/saxon/om/NodeInfo;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-static {v0}, Lnet/sf/saxon/lib/Validation;->getCode(Ljava/lang/String;)I

    move-result v0

    goto :goto_3

    :cond_6
    const/4 v0, 0x4

    :goto_3
    const-string v4, "type"

    invoke-virtual {p0, p1, v4}, Lnet/sf/saxon/trans/PackageLoaderHE;->getQNameAttribute(Lnet/sf/saxon/om/NodeInfo;Ljava/lang/String;)Lnet/sf/saxon/om/StructuredQName;

    move-result-object v4

    if-eqz v4, :cond_7

    iget-object v0, p0, Lnet/sf/saxon/trans/PackageLoaderHE;->a:Lnet/sf/saxon/Configuration;

    invoke-virtual {v0, v4}, Lnet/sf/saxon/Configuration;->getSchemaType(Lnet/sf/saxon/om/StructuredQName;)Lnet/sf/saxon/type/SchemaType;

    move-result-object v0

    const/16 v3, 0x8

    move-object v10, v0

    move v9, v3

    goto :goto_4

    :cond_7
    move v9, v0

    move-object v10, v3

    :goto_4
    new-instance v0, Lnet/sf/saxon/expr/instruct/ResultDocument;

    iget-object p0, p0, Lnet/sf/saxon/trans/PackageLoaderHE;->packStack:Ljava/util/Stack;

    invoke-virtual {p0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/style/StylesheetPackage;

    invoke-virtual {p0}, Lnet/sf/saxon/style/StylesheetPackage;->getCharacterMapIndex()Lnet/sf/saxon/serialize/CharacterMapIndex;

    move-result-object v12

    move-object v4, v0

    invoke-direct/range {v4 .. v12}, Lnet/sf/saxon/expr/instruct/ResultDocument;-><init>(Ljava/util/Properties;Ljava/util/Properties;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;ILnet/sf/saxon/type/SchemaType;Ljava/util/Map;Lnet/sf/saxon/serialize/CharacterMapIndex;)V

    invoke-virtual {v0, v13}, Lnet/sf/saxon/expr/instruct/ResultDocument;->setContentExpression(Lnet/sf/saxon/expr/Expression;)V

    const-string p0, "flags"

    invoke-interface {p1, v2, p0}, Lnet/sf/saxon/om/NodeInfo;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "a"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8

    invoke-virtual {v0, v1}, Lnet/sf/saxon/expr/instruct/ResultDocument;->setAsynchronous(Z)V

    :cond_8
    return-object v0
.end method

.method public static synthetic P3(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const-string v0, "type"

    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/trans/PackageLoaderHE;->parseItemTypeAttribute(Lnet/sf/saxon/om/NodeInfo;Ljava/lang/String;)Lnet/sf/saxon/type/ItemType;

    move-result-object v0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->getFirstChildExpression(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    instance-of v1, p1, Lnet/sf/saxon/functions/hof/UserFunctionReference;

    if-eqz v1, :cond_0

    new-instance v1, Lnet/sf/saxon/functions/hof/CoercedFunction;

    check-cast v0, Lnet/sf/saxon/type/SpecificFunctionType;

    invoke-direct {v1, v0}, Lnet/sf/saxon/functions/hof/CoercedFunction;-><init>(Lnet/sf/saxon/type/SpecificFunctionType;)V

    check-cast p1, Lnet/sf/saxon/functions/hof/UserFunctionReference;

    invoke-virtual {p1}, Lnet/sf/saxon/functions/hof/UserFunctionReference;->getSymbolicName()Lnet/sf/saxon/trans/SymbolicName;

    move-result-object p1

    new-instance v0, Lcom/sunia/HTREnginev2/nqk;

    invoke-direct {v0, v1, p0, p1}, Lcom/sunia/HTREnginev2/nqk;-><init>(Lnet/sf/saxon/functions/hof/CoercedFunction;Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/trans/SymbolicName;)V

    invoke-virtual {p0, v0}, Lnet/sf/saxon/trans/PackageLoaderHE;->addCompletionAction(Lnet/sf/saxon/om/Action;)V

    goto :goto_0

    :cond_0
    instance-of p0, p1, Lnet/sf/saxon/expr/Literal;

    if-eqz p0, :cond_1

    check-cast p1, Lnet/sf/saxon/expr/Literal;

    invoke-virtual {p1}, Lnet/sf/saxon/expr/Literal;->getGroundedValue()Lnet/sf/saxon/om/GroundedValue;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/om/Function;

    new-instance v1, Lnet/sf/saxon/functions/hof/CoercedFunction;

    check-cast v0, Lnet/sf/saxon/type/SpecificFunctionType;

    invoke-direct {v1, p0, v0}, Lnet/sf/saxon/functions/hof/CoercedFunction;-><init>(Lnet/sf/saxon/om/Function;Lnet/sf/saxon/type/SpecificFunctionType;)V

    :goto_0
    invoke-static {v1}, Lnet/sf/saxon/expr/Literal;->makeLiteral(Lnet/sf/saxon/om/GroundedValue;)Lnet/sf/saxon/expr/Literal;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0
.end method

.method public static synthetic P4(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->getFirstChildExpression(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->getSecondChildExpression(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    new-instance p1, Lnet/sf/saxon/expr/IdentityComparison;

    const/16 v1, 0x14

    invoke-direct {p1, v0, v1, p0}, Lnet/sf/saxon/expr/IdentityComparison;-><init>(Lnet/sf/saxon/expr/Expression;ILnet/sf/saxon/expr/Expression;)V

    return-object p1
.end method

.method public static synthetic Q(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 0

    invoke-static {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->o3(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic Q0(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/pattern/Pattern;
    .locals 0

    invoke-static {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->z3(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/pattern/Pattern;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic Q1(Lnet/sf/saxon/style/StylesheetPackage;Ljava/util/List;Lnet/sf/saxon/trans/SimpleMode;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lnet/sf/saxon/trans/PackageLoaderHE;->u2(Lnet/sf/saxon/style/StylesheetPackage;Ljava/util/List;Lnet/sf/saxon/trans/SimpleMode;)V

    return-void
.end method

.method public static synthetic Q2(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    new-instance p0, Lnet/sf/saxon/expr/RootExpression;

    invoke-direct {p0}, Lnet/sf/saxon/expr/RootExpression;-><init>()V

    return-object p0
.end method

.method public static synthetic Q3(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->getFirstChildExpression(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    new-instance p1, Lnet/sf/saxon/expr/instruct/Comment;

    invoke-direct {p1}, Lnet/sf/saxon/expr/instruct/Comment;-><init>()V

    invoke-virtual {p1, p0}, Lnet/sf/saxon/expr/instruct/SimpleNodeConstructor;->setSelect(Lnet/sf/saxon/expr/Expression;)V

    return-object p1
.end method

.method public static synthetic Q4(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const-string p0, ""

    const-string v0, "test"

    invoke-interface {p1, p0, v0}, Lnet/sf/saxon/om/NodeInfo;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "1"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    new-instance p1, Lnet/sf/saxon/expr/IsLastExpression;

    invoke-direct {p1, p0}, Lnet/sf/saxon/expr/IsLastExpression;-><init>(Z)V

    return-object p1
.end method

.method public static synthetic R(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 0

    invoke-static {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->S2(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic R0(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 0

    invoke-static {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->M4(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic R1(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 0

    invoke-static {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->z2(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic R2(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->getFirstChildExpression(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    new-instance p1, Lnet/sf/saxon/expr/instruct/Doctype;

    invoke-direct {p1, p0}, Lnet/sf/saxon/expr/instruct/Doctype;-><init>(Lnet/sf/saxon/expr/Expression;)V

    return-object p1
.end method

.method public static synthetic R3(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "val"

    const-string v2, ""

    invoke-interface {p1, v2, v1}, Lnet/sf/saxon/om/NodeInfo;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    const-string v1, "op"

    invoke-interface {p1, v2, v1}, Lnet/sf/saxon/om/NodeInfo;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->getFirstChildExpression(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    new-instance p1, Lnet/sf/saxon/expr/CompareToIntegerConstant;

    invoke-static {v1}, Lnet/sf/saxon/trans/PackageLoaderHE;->k5(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v2

    invoke-direct {p1, p0, v1, v2, v3}, Lnet/sf/saxon/expr/CompareToIntegerConstant;-><init>(Lnet/sf/saxon/expr/Expression;IJ)V

    return-object p1
.end method

.method public static synthetic R4(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const-string v0, "select"

    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/trans/PackageLoaderHE;->getExpressionWithRole(Lnet/sf/saxon/om/NodeInfo;Ljava/lang/String;)Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    const-string v1, "params"

    invoke-virtual {p0, p1, v1}, Lnet/sf/saxon/trans/PackageLoaderHE;->getExpressionWithRole(Lnet/sf/saxon/om/NodeInfo;Ljava/lang/String;)Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/expr/instruct/LocalParamBlock;

    const-string v2, "on-completion"

    invoke-virtual {p0, p1, v2}, Lnet/sf/saxon/trans/PackageLoaderHE;->getExpressionWithRole(Lnet/sf/saxon/om/NodeInfo;Ljava/lang/String;)Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    const-string v3, "action"

    invoke-virtual {p0, p1, v3}, Lnet/sf/saxon/trans/PackageLoaderHE;->getExpressionWithRole(Lnet/sf/saxon/om/NodeInfo;Ljava/lang/String;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    new-instance p1, Lnet/sf/saxon/expr/instruct/IterateInstr;

    invoke-direct {p1, v0, v1, p0, v2}, Lnet/sf/saxon/expr/instruct/IterateInstr;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/instruct/LocalParamBlock;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    return-object p1
.end method

.method public static synthetic S(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 0

    invoke-static {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->A4(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic S0(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 0

    invoke-static {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->P3(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic S1(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 0

    invoke-static {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->l4(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic S2(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/trans/PackageLoaderHE;->packStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/style/StylesheetPackage;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->getFirstChildExpression(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    const-string v1, "mode"

    invoke-virtual {p0, p1, v1}, Lnet/sf/saxon/trans/PackageLoaderHE;->getQNameAttribute(Lnet/sf/saxon/om/NodeInfo;Ljava/lang/String;)Lnet/sf/saxon/om/StructuredQName;

    move-result-object v1

    const/4 v9, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lnet/sf/saxon/style/StylesheetPackage;->getRuleManager()Lnet/sf/saxon/trans/rules/RuleManager;

    move-result-object v0

    invoke-virtual {v0, v1, v9}, Lnet/sf/saxon/trans/rules/RuleManager;->obtainMode(Lnet/sf/saxon/om/StructuredQName;Z)Lnet/sf/saxon/trans/Mode;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/trans/SimpleMode;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lnet/sf/saxon/style/StylesheetPackage;->getRuleManager()Lnet/sf/saxon/trans/rules/RuleManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v9}, Lnet/sf/saxon/trans/rules/RuleManager;->obtainMode(Lnet/sf/saxon/om/StructuredQName;Z)Lnet/sf/saxon/trans/Mode;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/trans/SimpleMode;

    :goto_0
    move-object v7, v0

    const-string v0, "flags"

    const-string v1, ""

    invoke-interface {p1, v1, v0}, Lnet/sf/saxon/om/NodeInfo;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    move-object v1, v0

    :goto_1
    const-string v0, "c"

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    const-string v0, "t"

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    const-string v0, "i"

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    const-string v0, "d"

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    new-instance v0, Lnet/sf/saxon/expr/instruct/ApplyTemplates;

    iget-object v1, p0, Lnet/sf/saxon/trans/PackageLoaderHE;->packStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/style/StylesheetPackage;

    invoke-virtual {v1}, Lnet/sf/saxon/style/StylesheetPackage;->getRuleManager()Lnet/sf/saxon/trans/rules/RuleManager;

    move-result-object v8

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lnet/sf/saxon/expr/instruct/ApplyTemplates;-><init>(Lnet/sf/saxon/expr/Expression;ZZZZLnet/sf/saxon/trans/Mode;Lnet/sf/saxon/trans/rules/RuleManager;)V

    const-string v1, "separator"

    invoke-virtual {p0, p1, v1}, Lnet/sf/saxon/trans/PackageLoaderHE;->getExpressionWithRole(Lnet/sf/saxon/om/NodeInfo;Ljava/lang/String;)Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0, v1}, Lnet/sf/saxon/expr/instruct/ApplyTemplates;->setSeparatorExpression(Lnet/sf/saxon/expr/Expression;)V

    :cond_2
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lnet/sf/saxon/trans/PackageLoaderHE;->g5(Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/expr/Expression;Z)[Lnet/sf/saxon/expr/instruct/WithParam;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v9}, Lnet/sf/saxon/trans/PackageLoaderHE;->g5(Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/expr/Expression;Z)[Lnet/sf/saxon/expr/instruct/WithParam;

    move-result-object v2

    invoke-virtual {v0, v1}, Lnet/sf/saxon/expr/instruct/ApplyTemplates;->setActualParams([Lnet/sf/saxon/expr/instruct/WithParam;)V

    invoke-virtual {v0, v2}, Lnet/sf/saxon/expr/instruct/ApplyTemplates;->setTunnelParams([Lnet/sf/saxon/expr/instruct/WithParam;)V

    const-string v1, "bSlot"

    invoke-virtual {p0, p1, v1}, Lnet/sf/saxon/trans/PackageLoaderHE;->getIntegerAttribute(Lnet/sf/saxon/om/NodeInfo;Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v0, p0}, Lnet/sf/saxon/expr/instruct/ApplyTemplates;->setBindingSlot(I)V

    return-object v0
.end method

.method public static synthetic S3(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const-string v0, "val"

    const-string v1, ""

    invoke-interface {p1, v1, v0}, Lnet/sf/saxon/om/NodeInfo;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "op"

    invoke-interface {p1, v1, v2}, Lnet/sf/saxon/om/NodeInfo;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->getFirstChildExpression(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    new-instance p1, Lnet/sf/saxon/expr/CompareToStringConstant;

    invoke-static {v1}, Lnet/sf/saxon/trans/PackageLoaderHE;->k5(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0}, Lnet/sf/saxon/str/StringView;->tidy(Ljava/lang/String;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object v0

    invoke-direct {p1, p0, v1, v0}, Lnet/sf/saxon/expr/CompareToStringConstant;-><init>(Lnet/sf/saxon/expr/Expression;ILnet/sf/saxon/str/UnicodeString;)V

    return-object p1
.end method

.method public static synthetic S4(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->getFirstChildExpression(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    new-instance p1, Lnet/sf/saxon/expr/LastItemExpression;

    invoke-direct {p1, p0}, Lnet/sf/saxon/expr/LastItemExpression;-><init>(Lnet/sf/saxon/expr/Expression;)V

    return-object p1
.end method

.method public static synthetic T(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 0

    invoke-static {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->X2(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic T0(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 0

    invoke-static {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->D2(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic T1(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 0

    invoke-static {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->G4(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic T2(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-static {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->getChildExpressionArray(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)[Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    new-instance p1, Lnet/sf/saxon/expr/instruct/Block;

    invoke-direct {p1, p0}, Lnet/sf/saxon/expr/instruct/Block;-><init>([Lnet/sf/saxon/expr/Expression;)V

    return-object p1
.end method

.method public static synthetic T3(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const-string v0, "name"

    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/trans/PackageLoaderHE;->getExpressionWithRole(Lnet/sf/saxon/om/NodeInfo;Ljava/lang/String;)Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    const-string v0, "namespace"

    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/trans/PackageLoaderHE;->getExpressionWithRole(Lnet/sf/saxon/om/NodeInfo;Ljava/lang/String;)Lnet/sf/saxon/expr/Expression;

    move-result-object v3

    const-string v0, "select"

    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/trans/PackageLoaderHE;->getExpressionWithRole(Lnet/sf/saxon/om/NodeInfo;Ljava/lang/String;)Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    const-string v1, ""

    const-string v4, "validation"

    invoke-interface {p1, v1, v4}, Lnet/sf/saxon/om/NodeInfo;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1}, Lnet/sf/saxon/lib/Validation;->getCode(Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    :goto_0
    const-string v4, "type"

    invoke-virtual {p0, p1, v4}, Lnet/sf/saxon/trans/PackageLoaderHE;->getTypeAttribute(Lnet/sf/saxon/om/NodeInfo;Ljava/lang/String;)Lnet/sf/saxon/type/SchemaType;

    move-result-object p0

    if-eqz p0, :cond_1

    const/16 p1, 0x8

    move v5, p1

    goto :goto_1

    :cond_1
    move v5, v1

    :goto_1
    new-instance p1, Lnet/sf/saxon/expr/instruct/ComputedAttribute;

    const/4 v4, 0x0

    move-object v6, p0

    check-cast v6, Lnet/sf/saxon/type/SimpleType;

    const/4 v7, 0x0

    move-object v1, p1

    invoke-direct/range {v1 .. v7}, Lnet/sf/saxon/expr/instruct/ComputedAttribute;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/om/NamespaceResolver;ILnet/sf/saxon/type/SimpleType;Z)V

    invoke-virtual {p1, v0}, Lnet/sf/saxon/expr/instruct/SimpleNodeConstructor;->setSelect(Lnet/sf/saxon/expr/Expression;)V

    return-object p1
.end method

.method public static synthetic T4(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->getFirstChildExpression(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    const-string v1, "slot"

    invoke-virtual {p0, p1, v1}, Lnet/sf/saxon/trans/PackageLoaderHE;->getIntegerAttribute(Lnet/sf/saxon/om/NodeInfo;Ljava/lang/String;)I

    move-result v1

    const-string v2, "eval"

    invoke-virtual {p0, p1, v2}, Lnet/sf/saxon/trans/PackageLoaderHE;->getIntegerAttribute(Lnet/sf/saxon/om/NodeInfo;Ljava/lang/String;)I

    move-result v2

    const-string v3, "var"

    invoke-virtual {p0, p1, v3}, Lnet/sf/saxon/trans/PackageLoaderHE;->getQNameAttribute(Lnet/sf/saxon/om/NodeInfo;Ljava/lang/String;)Lnet/sf/saxon/om/StructuredQName;

    move-result-object v3

    const-string v4, "as"

    invoke-virtual {p0, p1, v4}, Lnet/sf/saxon/trans/PackageLoaderHE;->parseAlphaCode(Lnet/sf/saxon/om/NodeInfo;Ljava/lang/String;)Lnet/sf/saxon/value/SequenceType;

    move-result-object v4

    new-instance v5, Lnet/sf/saxon/expr/LetExpression;

    invoke-direct {v5}, Lnet/sf/saxon/expr/LetExpression;-><init>()V

    invoke-virtual {v5, v0}, Lnet/sf/saxon/expr/Assignation;->setSequence(Lnet/sf/saxon/expr/Expression;)V

    invoke-virtual {v5, v4}, Lnet/sf/saxon/expr/Assignation;->setRequiredType(Lnet/sf/saxon/value/SequenceType;)V

    invoke-virtual {v5, v1}, Lnet/sf/saxon/expr/Assignation;->setSlotNumber(I)V

    invoke-virtual {v5, v3}, Lnet/sf/saxon/expr/Assignation;->setVariableQName(Lnet/sf/saxon/om/StructuredQName;)V

    invoke-static {v2}, Lnet/sf/saxon/expr/parser/Evaluators;->getEvaluator(I)Lnet/sf/saxon/expr/parser/Evaluator;

    move-result-object v0

    invoke-virtual {v5, v0}, Lnet/sf/saxon/expr/LetExpression;->setEvaluator(Lnet/sf/saxon/expr/parser/Evaluator;)V

    iget-object v0, p0, Lnet/sf/saxon/trans/PackageLoaderHE;->localBindings:Ljava/util/Stack;

    invoke-virtual {v0, v5}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->getSecondChildExpression(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    iget-object p0, p0, Lnet/sf/saxon/trans/PackageLoaderHE;->localBindings:Ljava/util/Stack;

    invoke-virtual {p0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    invoke-virtual {v5, p1}, Lnet/sf/saxon/expr/Assignation;->setAction(Lnet/sf/saxon/expr/Expression;)V

    return-object v5
.end method

.method public static synthetic U(Lnet/sf/saxon/trans/SimpleMode;)V
    .locals 0

    invoke-static {p0}, Lnet/sf/saxon/trans/PackageLoaderHE;->v2(Lnet/sf/saxon/trans/SimpleMode;)V

    return-void
.end method

.method public static synthetic U0(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 0

    invoke-static {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->G2(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic U1(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 0

    invoke-static {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->Q2(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic U2(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->getFirstChildExpression(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->getSecondChildExpression(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    const-string v1, ""

    const-string v2, "simple"

    invoke-interface {p1, v1, v2}, Lnet/sf/saxon/om/NodeInfo;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "1"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance p1, Lnet/sf/saxon/expr/SimpleStepExpression;

    invoke-direct {p1, v0, p0}, Lnet/sf/saxon/expr/SimpleStepExpression;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    return-object p1

    :cond_0
    new-instance v1, Lnet/sf/saxon/expr/SlashExpression;

    invoke-direct {v1, v0, p0}, Lnet/sf/saxon/expr/SlashExpression;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    const-string p0, "2"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    invoke-virtual {v1, p0}, Lnet/sf/saxon/expr/SlashExpression;->setContextFree(Z)V

    :cond_1
    return-object v1
.end method

.method public static synthetic U3(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const-string v0, "name"

    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/trans/PackageLoaderHE;->getExpressionWithRole(Lnet/sf/saxon/om/NodeInfo;Ljava/lang/String;)Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    const-string v0, "namespace"

    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/trans/PackageLoaderHE;->getExpressionWithRole(Lnet/sf/saxon/om/NodeInfo;Ljava/lang/String;)Lnet/sf/saxon/expr/Expression;

    move-result-object v3

    const-string v0, "content"

    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/trans/PackageLoaderHE;->getExpressionWithRole(Lnet/sf/saxon/om/NodeInfo;Ljava/lang/String;)Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    const-string v1, "validation"

    const-string v4, ""

    invoke-interface {p1, v4, v1}, Lnet/sf/saxon/om/NodeInfo;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1}, Lnet/sf/saxon/lib/Validation;->getCode(Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    :goto_0
    const-string v5, "type"

    invoke-virtual {p0, p1, v5}, Lnet/sf/saxon/trans/PackageLoaderHE;->getTypeAttribute(Lnet/sf/saxon/om/NodeInfo;Ljava/lang/String;)Lnet/sf/saxon/type/SchemaType;

    move-result-object p0

    if-eqz p0, :cond_1

    const/16 v1, 0x8

    :cond_1
    move v5, v1

    const-string v1, "flags"

    invoke-interface {p1, v4, v1}, Lnet/sf/saxon/om/NodeInfo;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v8, Lnet/sf/saxon/expr/instruct/ComputedElement;

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v1, v8

    move-object v4, p0

    invoke-direct/range {v1 .. v7}, Lnet/sf/saxon/expr/instruct/ComputedElement;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/type/SchemaType;IZZ)V

    if-eqz p1, :cond_2

    invoke-virtual {v8, p1}, Lnet/sf/saxon/expr/instruct/ElementCreator;->setInheritanceFlags(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v8, v0}, Lnet/sf/saxon/expr/instruct/ParentNodeConstructor;->setContentExpression(Lnet/sf/saxon/expr/Expression;)V

    invoke-virtual {v8}, Lnet/sf/saxon/expr/instruct/ComputedElement;->simplify()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic U4(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x3

    sget-object v2, Lnet/sf/saxon/pattern/NodeKindTest;->ELEMENT:Lnet/sf/saxon/pattern/NodeKindTest;

    invoke-interface {p1, v1, v2}, Lnet/sf/saxon/om/NodeInfo;->iterateAxis(ILnet/sf/saxon/pattern/NodePredicate;)Lnet/sf/saxon/tree/iter/AxisIterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Lnet/sf/saxon/tree/iter/AxisIterator;->next()Lnet/sf/saxon/om/NodeInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v1}, Lnet/sf/saxon/trans/PackageLoaderHE;->loadExpression(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/expr/Literal;

    invoke-virtual {v1}, Lnet/sf/saxon/expr/Literal;->getGroundedValue()Lnet/sf/saxon/om/GroundedValue;

    move-result-object v1

    invoke-interface {v1}, Lnet/sf/saxon/om/GroundedValue;->head()Lnet/sf/saxon/om/Item;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lnet/sf/saxon/value/SequenceExtent;->makeSequenceExtent(Ljava/util/List;)Lnet/sf/saxon/om/GroundedValue;

    move-result-object p0

    invoke-static {p0}, Lnet/sf/saxon/expr/Literal;->makeLiteral(Lnet/sf/saxon/om/GroundedValue;)Lnet/sf/saxon/expr/Literal;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic V(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 0

    invoke-static {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->C4(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic V0(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 0

    invoke-static {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->J3(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic V1(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 0

    invoke-static {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->a3(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic V2(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->getFirstChildExpression(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    const-string v1, "slot"

    invoke-virtual {p0, p1, v1}, Lnet/sf/saxon/trans/PackageLoaderHE;->getIntegerAttribute(Lnet/sf/saxon/om/NodeInfo;Ljava/lang/String;)I

    move-result v1

    const-string v2, "var"

    invoke-virtual {p0, p1, v2}, Lnet/sf/saxon/trans/PackageLoaderHE;->getQNameAttribute(Lnet/sf/saxon/om/NodeInfo;Ljava/lang/String;)Lnet/sf/saxon/om/StructuredQName;

    move-result-object v2

    const-string v3, "as"

    invoke-virtual {p0, p1, v3}, Lnet/sf/saxon/trans/PackageLoaderHE;->parseAlphaCode(Lnet/sf/saxon/om/NodeInfo;Ljava/lang/String;)Lnet/sf/saxon/value/SequenceType;

    move-result-object v3

    new-instance v4, Lnet/sf/saxon/expr/QuantifiedExpression;

    invoke-direct {v4}, Lnet/sf/saxon/expr/QuantifiedExpression;-><init>()V

    const/16 v5, 0x20

    invoke-virtual {v4, v5}, Lnet/sf/saxon/expr/QuantifiedExpression;->setOperator(I)V

    invoke-virtual {v4, v0}, Lnet/sf/saxon/expr/Assignation;->setSequence(Lnet/sf/saxon/expr/Expression;)V

    invoke-virtual {v4, v3}, Lnet/sf/saxon/expr/Assignation;->setRequiredType(Lnet/sf/saxon/value/SequenceType;)V

    invoke-virtual {v4, v1}, Lnet/sf/saxon/expr/Assignation;->setSlotNumber(I)V

    invoke-virtual {v4, v2}, Lnet/sf/saxon/expr/Assignation;->setVariableQName(Lnet/sf/saxon/om/StructuredQName;)V

    iget-object v0, p0, Lnet/sf/saxon/trans/PackageLoaderHE;->localBindings:Ljava/util/Stack;

    invoke-virtual {v0, v4}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->getSecondChildExpression(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    iget-object p0, p0, Lnet/sf/saxon/trans/PackageLoaderHE;->localBindings:Ljava/util/Stack;

    invoke-virtual {p0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    invoke-virtual {v4, p1}, Lnet/sf/saxon/expr/Assignation;->setAction(Lnet/sf/saxon/expr/Expression;)V

    return-object v4
.end method

.method public static synthetic V3(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->getFirstChildExpression(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->getSecondChildExpression(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    new-instance p1, Lnet/sf/saxon/expr/sort/ConditionalSorter;

    check-cast p0, Lnet/sf/saxon/expr/sort/DocumentSorter;

    invoke-direct {p1, v0, p0}, Lnet/sf/saxon/expr/sort/ConditionalSorter;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/sort/DocumentSorter;)V

    return-object p1
.end method

.method public static synthetic V4(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->getFirstChildExpression(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->getSecondChildExpression(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    new-instance p1, Lnet/sf/saxon/expr/LookupExpression;

    invoke-direct {p1, v0, p0}, Lnet/sf/saxon/expr/LookupExpression;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    return-object p1
.end method

.method public static synthetic W(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 0

    invoke-static {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->B2(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic W0(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 0

    invoke-static {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->l3(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic W1(Ljava/util/List;Lnet/sf/saxon/event/Receiver;)Lnet/sf/saxon/event/Receiver;
    .locals 0

    invoke-static {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->g2(Ljava/util/List;Lnet/sf/saxon/event/Receiver;)Lnet/sf/saxon/event/Receiver;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic W2(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->getFirstChildExpression(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->f5(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/sort/SortKeyDefinitionList;

    move-result-object p0

    new-instance p1, Lnet/sf/saxon/expr/sort/SortExpression;

    invoke-direct {p1, v0, p0}, Lnet/sf/saxon/expr/sort/SortExpression;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/sort/SortKeyDefinitionList;)V

    return-object p1
.end method

.method public static synthetic W3(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->getFirstChildExpression(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    new-instance p1, Lnet/sf/saxon/expr/instruct/WherePopulated;

    invoke-direct {p1, p0}, Lnet/sf/saxon/expr/instruct/WherePopulated;-><init>(Lnet/sf/saxon/expr/Expression;)V

    return-object p1
.end method

.method public static synthetic W4(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const-string v0, "select"

    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/trans/PackageLoaderHE;->getExpressionWithRole(Lnet/sf/saxon/om/NodeInfo;Ljava/lang/String;)Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    const-string v0, "regex"

    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/trans/PackageLoaderHE;->getExpressionWithRole(Lnet/sf/saxon/om/NodeInfo;Ljava/lang/String;)Lnet/sf/saxon/expr/Expression;

    move-result-object v3

    const-string v0, "flags"

    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/trans/PackageLoaderHE;->getExpressionWithRole(Lnet/sf/saxon/om/NodeInfo;Ljava/lang/String;)Lnet/sf/saxon/expr/Expression;

    move-result-object v4

    const-string v0, "matching"

    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/trans/PackageLoaderHE;->getExpressionWithRole(Lnet/sf/saxon/om/NodeInfo;Ljava/lang/String;)Lnet/sf/saxon/expr/Expression;

    move-result-object v5

    const-string v0, "nonMatching"

    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/trans/PackageLoaderHE;->getExpressionWithRole(Lnet/sf/saxon/om/NodeInfo;Ljava/lang/String;)Lnet/sf/saxon/expr/Expression;

    move-result-object v6

    new-instance p1, Lnet/sf/saxon/expr/instruct/AnalyzeString;

    const/4 v7, 0x0

    move-object v1, p1

    invoke-direct/range {v1 .. v7}, Lnet/sf/saxon/expr/instruct/AnalyzeString;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/regex/RegularExpression;)V

    invoke-virtual {p0}, Lnet/sf/saxon/trans/PackageLoaderHE;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Lnet/sf/saxon/expr/instruct/AnalyzeString;->precomputeRegex(Lnet/sf/saxon/Configuration;Ljava/util/List;)V

    return-object p1
.end method

.method public static synthetic X(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 0

    invoke-static {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->f3(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic X0(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 0

    invoke-static {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->c4(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic X1(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 0

    invoke-static {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->i3(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic X2(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const-string v0, "validation"

    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/trans/PackageLoaderHE;->getIntegerAttribute(Lnet/sf/saxon/om/NodeInfo;Ljava/lang/String;)I

    move-result v0

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_0

    const/4 v0, 0x4

    :cond_0
    const-string v1, "schemaType"

    invoke-virtual {p0, p1, v1}, Lnet/sf/saxon/trans/PackageLoaderHE;->getQNameAttribute(Lnet/sf/saxon/om/NodeInfo;Ljava/lang/String;)Lnet/sf/saxon/om/StructuredQName;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lnet/sf/saxon/trans/PackageLoaderHE;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v0

    invoke-virtual {v0, v1}, Lnet/sf/saxon/Configuration;->getSchemaType(Lnet/sf/saxon/om/StructuredQName;)Lnet/sf/saxon/type/SchemaType;

    move-result-object v0

    const/16 v1, 0x8

    move v5, v1

    move-object v1, v0

    move v0, v5

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    new-instance v2, Lnet/sf/saxon/lib/ParseOptions;

    invoke-virtual {p0}, Lnet/sf/saxon/trans/PackageLoaderHE;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v3

    invoke-virtual {v3}, Lnet/sf/saxon/Configuration;->getParseOptions()Lnet/sf/saxon/lib/ParseOptions;

    move-result-object v3

    invoke-direct {v2, v3}, Lnet/sf/saxon/lib/ParseOptions;-><init>(Lnet/sf/saxon/lib/ParseOptions;)V

    invoke-virtual {v2, v0}, Lnet/sf/saxon/lib/ParseOptions;->setSchemaValidationMode(I)V

    invoke-virtual {v2, v1}, Lnet/sf/saxon/lib/ParseOptions;->setTopLevelType(Lnet/sf/saxon/type/SchemaType;)V

    const-string v0, "flags"

    const-string v1, ""

    invoke-interface {p1, v1, v0}, Lnet/sf/saxon/om/NodeInfo;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    const-string v3, "s"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance v3, Lcom/sunia/HTREnginev2/cqk;

    invoke-direct {v3, v2, p0}, Lcom/sunia/HTREnginev2/cqk;-><init>(Lnet/sf/saxon/lib/ParseOptions;Lnet/sf/saxon/trans/PackageLoaderHE;)V

    invoke-virtual {p0, v3}, Lnet/sf/saxon/trans/PackageLoaderHE;->addCompletionAction(Lnet/sf/saxon/om/Action;)V

    :cond_2
    const-string v3, "S"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {}, Lnet/sf/saxon/om/AllElementsSpaceStrippingRule;->getInstance()Lnet/sf/saxon/om/AllElementsSpaceStrippingRule;

    move-result-object v3

    invoke-virtual {v2, v3}, Lnet/sf/saxon/lib/ParseOptions;->setSpaceStrippingRule(Lnet/sf/saxon/om/SpaceStrippingRule;)V

    :cond_3
    const-string v3, "l"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_4

    invoke-virtual {v2, v4}, Lnet/sf/saxon/lib/ParseOptions;->setLineNumbering(Z)V

    :cond_4
    const-string v3, "a"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    invoke-virtual {v2, v3}, Lnet/sf/saxon/lib/ParseOptions;->setExpandAttributeDefaults(Z)V

    const-string v3, "d"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v2, v4}, Lnet/sf/saxon/lib/ParseOptions;->setDTDValidationMode(I)V

    :cond_5
    const-string v3, "i"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {v2, v4}, Lnet/sf/saxon/lib/ParseOptions;->setXIncludeAware(Z)V

    :cond_6
    const-string v0, "body"

    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/trans/PackageLoaderHE;->getExpressionWithRole(Lnet/sf/saxon/om/NodeInfo;Ljava/lang/String;)Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    const-string v3, "href"

    invoke-virtual {p0, p1, v3}, Lnet/sf/saxon/trans/PackageLoaderHE;->getExpressionWithRole(Lnet/sf/saxon/om/NodeInfo;Ljava/lang/String;)Lnet/sf/saxon/expr/Expression;

    move-result-object v3

    new-instance v4, Lnet/sf/saxon/expr/instruct/SourceDocument;

    invoke-direct {v4, v3, v0, v2}, Lnet/sf/saxon/expr/instruct/SourceDocument;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/lib/ParseOptions;)V

    const-string v0, "accum"

    invoke-interface {p1, v1, v0}, Lnet/sf/saxon/om/NodeInfo;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v4, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->processAccumulatorList(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/expr/instruct/SourceDocument;Ljava/lang/String;)V

    return-object v4
.end method

.method public static synthetic X3(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-static {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->getChildExpressionArray(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)[Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    new-instance p1, Lnet/sf/saxon/expr/instruct/ConditionalBlock;

    invoke-direct {p1, p0}, Lnet/sf/saxon/expr/instruct/ConditionalBlock;-><init>([Lnet/sf/saxon/expr/Expression;)V

    return-object p1
.end method

.method public static synthetic X4(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->getFirstChildExpression(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    new-instance p1, Lnet/sf/saxon/expr/LookupAllExpression;

    invoke-direct {p1, p0}, Lnet/sf/saxon/expr/LookupAllExpression;-><init>(Lnet/sf/saxon/expr/Expression;)V

    return-object p1
.end method

.method public static synthetic Y(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 0

    invoke-static {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->x4(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic Y0(Lnet/sf/saxon/om/NodeInfo;)Z
    .locals 0

    invoke-static {p0}, Lnet/sf/saxon/trans/PackageLoaderHE;->h2(Lnet/sf/saxon/om/NodeInfo;)Z

    move-result p0

    return p0
.end method

.method public static synthetic Y2(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    new-instance p0, Lnet/sf/saxon/value/StringValue;

    const-string v0, ""

    const-string v1, "val"

    invoke-interface {p1, v0, v1}, Lnet/sf/saxon/om/NodeInfo;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lnet/sf/saxon/value/StringValue;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lnet/sf/saxon/expr/Literal;->makeLiteral(Lnet/sf/saxon/om/GroundedValue;)Lnet/sf/saxon/expr/Literal;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic Y3(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->getFirstChildExpression(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    new-instance p1, Lnet/sf/saxon/expr/ConsumingOperand;

    invoke-direct {p1, p0}, Lnet/sf/saxon/expr/ConsumingOperand;-><init>(Lnet/sf/saxon/expr/Expression;)V

    return-object p1
.end method

.method public static synthetic Y4(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-static {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->getChildExpressionList(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Ljava/util/List;

    move-result-object p0

    new-instance p1, Lnet/sf/saxon/ma/map/HashTrieMap;

    invoke-direct {p1}, Lnet/sf/saxon/ma/map/HashTrieMap;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :goto_0
    move-object v1, v0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/sf/saxon/expr/Expression;

    if-nez v1, :cond_0

    check-cast v2, Lnet/sf/saxon/expr/Literal;

    invoke-virtual {v2}, Lnet/sf/saxon/expr/Literal;->getGroundedValue()Lnet/sf/saxon/om/GroundedValue;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/value/AtomicValue;

    goto :goto_1

    :cond_0
    check-cast v2, Lnet/sf/saxon/expr/Literal;

    invoke-virtual {v2}, Lnet/sf/saxon/expr/Literal;->getGroundedValue()Lnet/sf/saxon/om/GroundedValue;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lnet/sf/saxon/ma/map/HashTrieMap;->initialPut(Lnet/sf/saxon/value/AtomicValue;Lnet/sf/saxon/om/GroundedValue;)Z

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lnet/sf/saxon/expr/Literal;->makeLiteral(Lnet/sf/saxon/om/GroundedValue;)Lnet/sf/saxon/expr/Literal;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic Z(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 0

    invoke-static {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->N2(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic Z0(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 0

    invoke-static {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->n4(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic Z2(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->getFirstChildExpression(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->getSecondChildExpression(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    new-instance p1, Lnet/sf/saxon/expr/SubscriptExpression;

    invoke-direct {p1, v0, p0}, Lnet/sf/saxon/expr/SubscriptExpression;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    return-object p1
.end method

.method public static synthetic Z3(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->getFirstChildExpression(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    const-string v1, "from"

    invoke-virtual {p0, p1, v1}, Lnet/sf/saxon/trans/PackageLoaderHE;->parseAlphaCodeForItemType(Lnet/sf/saxon/om/NodeInfo;Ljava/lang/String;)Lnet/sf/saxon/type/ItemType;

    move-result-object v1

    const-string v2, "to"

    invoke-virtual {p0, p1, v2}, Lnet/sf/saxon/trans/PackageLoaderHE;->parseAlphaCodeForItemType(Lnet/sf/saxon/om/NodeInfo;Ljava/lang/String;)Lnet/sf/saxon/type/ItemType;

    move-result-object v2

    new-instance v3, Lnet/sf/saxon/expr/AtomicSequenceConverter;

    move-object v4, v2

    check-cast v4, Lnet/sf/saxon/type/PlainType;

    invoke-direct {v3, v0, v4}, Lnet/sf/saxon/expr/AtomicSequenceConverter;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/type/PlainType;)V

    const-string v0, "flags"

    const-string v4, ""

    invoke-interface {p1, v4, v0}, Lnet/sf/saxon/om/NodeInfo;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v5, "p"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p0, Lnet/sf/saxon/type/BuiltInAtomicType;->DOUBLE:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-virtual {v2, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Lnet/sf/saxon/type/Converter$PromoterToDouble;

    invoke-direct {p0}, Lnet/sf/saxon/type/Converter$PromoterToDouble;-><init>()V

    invoke-virtual {v3, p0}, Lnet/sf/saxon/expr/AtomicSequenceConverter;->setConverter(Lnet/sf/saxon/type/Converter;)V

    goto :goto_0

    :cond_0
    new-instance p0, Lnet/sf/saxon/type/Converter$PromoterToFloat;

    invoke-direct {p0}, Lnet/sf/saxon/type/Converter$PromoterToFloat;-><init>()V

    invoke-virtual {v3, p0}, Lnet/sf/saxon/expr/AtomicSequenceConverter;->setConverter(Lnet/sf/saxon/type/Converter;)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lnet/sf/saxon/trans/PackageLoaderHE;->a:Lnet/sf/saxon/Configuration;

    const/4 v0, 0x0

    invoke-virtual {v3, p0, v0, v1}, Lnet/sf/saxon/expr/AtomicSequenceConverter;->allocateConverter(Lnet/sf/saxon/Configuration;ZLnet/sf/saxon/type/ItemType;)Lnet/sf/saxon/type/Converter;

    move-result-object p0

    invoke-virtual {v3, p0}, Lnet/sf/saxon/expr/AtomicSequenceConverter;->setConverter(Lnet/sf/saxon/type/Converter;)V

    :goto_0
    const-string p0, "diag"

    invoke-interface {p1, v4, p0}, Lnet/sf/saxon/om/NodeInfo;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-static {p0}, Lnet/sf/saxon/expr/parser/RoleDiagnostic;->reconstruct(Ljava/lang/String;)Lnet/sf/saxon/expr/parser/RoleDiagnostic;

    move-result-object p0

    invoke-virtual {v3, p0}, Lnet/sf/saxon/expr/AtomicSequenceConverter;->setRoleDiagnostic(Lnet/sf/saxon/expr/parser/RoleDiagnostic;)V

    :cond_2
    return-object v3
.end method

.method public static synthetic Z4(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    new-instance v0, Lnet/sf/saxon/expr/sort/MergeInstr;

    invoke-direct {v0}, Lnet/sf/saxon/expr/sort/MergeInstr;-><init>()V

    new-instance v1, Lnet/sf/saxon/pattern/NameTest;

    iget-object v2, p0, Lnet/sf/saxon/trans/PackageLoaderHE;->a:Lnet/sf/saxon/Configuration;

    invoke-virtual {v2}, Lnet/sf/saxon/Configuration;->getNamePool()Lnet/sf/saxon/om/NamePool;

    move-result-object v2

    const/4 v3, 0x1

    const-string v4, "http://ns.saxonica.com/xslt/export"

    const-string v5, "mergeSrc"

    invoke-direct {v1, v3, v4, v5, v2}, Lnet/sf/saxon/pattern/NameTest;-><init>(ILjava/lang/String;Ljava/lang/String;Lnet/sf/saxon/om/NamePool;)V

    const/4 v2, 0x3

    invoke-interface {p1, v2, v1}, Lnet/sf/saxon/om/NodeInfo;->iterateAxis(ILnet/sf/saxon/pattern/NodePredicate;)Lnet/sf/saxon/tree/iter/AxisIterator;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-interface {v1}, Lnet/sf/saxon/tree/iter/AxisIterator;->next()Lnet/sf/saxon/om/NodeInfo;

    move-result-object v3

    if-eqz v3, :cond_9

    new-instance v4, Lnet/sf/saxon/expr/sort/MergeInstr$MergeSource;

    invoke-direct {v4, v0}, Lnet/sf/saxon/expr/sort/MergeInstr$MergeSource;-><init>(Lnet/sf/saxon/expr/sort/MergeInstr;)V

    const-string v5, "name"

    const-string v6, ""

    invoke-interface {v3, v6, v5}, Lnet/sf/saxon/om/NodeInfo;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    iput-object v5, v4, Lnet/sf/saxon/expr/sort/MergeInstr$MergeSource;->sourceName:Ljava/lang/String;

    :cond_0
    const-string v5, "validation"

    invoke-interface {v3, v6, v5}, Lnet/sf/saxon/om/NodeInfo;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-static {v5}, Lnet/sf/saxon/lib/Validation;->getCode(Ljava/lang/String;)I

    move-result v5

    iput v5, v4, Lnet/sf/saxon/expr/sort/MergeInstr$MergeSource;->validation:I

    :cond_1
    const-string v5, "type"

    invoke-virtual {p0, v3, v5}, Lnet/sf/saxon/trans/PackageLoaderHE;->getTypeAttribute(Lnet/sf/saxon/om/NodeInfo;Ljava/lang/String;)Lnet/sf/saxon/type/SchemaType;

    move-result-object v5

    if-eqz v5, :cond_2

    iput-object v5, v4, Lnet/sf/saxon/expr/sort/MergeInstr$MergeSource;->schemaType:Lnet/sf/saxon/type/SchemaType;

    const/16 v5, 0x8

    iput v5, v4, Lnet/sf/saxon/expr/sort/MergeInstr$MergeSource;->validation:I

    :cond_2
    const-string v5, "flags"

    invoke-interface {v3, v6, v5}, Lnet/sf/saxon/om/NodeInfo;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v7, "s"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    iput-boolean v5, v4, Lnet/sf/saxon/expr/sort/MergeInstr$MergeSource;->streamable:Z

    if-eqz v5, :cond_3

    new-instance v5, Lcom/sunia/HTREnginev2/lnk;

    invoke-direct {v5, v4}, Lcom/sunia/HTREnginev2/lnk;-><init>(Lnet/sf/saxon/expr/sort/MergeInstr$MergeSource;)V

    invoke-virtual {p0, v5}, Lnet/sf/saxon/trans/PackageLoaderHE;->addCompletionAction(Lnet/sf/saxon/om/Action;)V

    :cond_3
    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->makeRetainedStaticContext(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    move-result-object v5

    invoke-virtual {v5}, Lnet/sf/saxon/expr/parser/RetainedStaticContext;->getStaticBaseUriString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lnet/sf/saxon/expr/sort/MergeInstr$MergeSource;->baseURI:Ljava/lang/String;

    const-string v5, "accum"

    invoke-interface {v3, v6, v5}, Lnet/sf/saxon/om/NodeInfo;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_4

    goto :goto_1

    :cond_4
    move-object v6, v5

    :goto_1
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Ljava/util/StringTokenizer;

    invoke-direct {v7, v6}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    :goto_2
    invoke-virtual {v7}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {v7}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lnet/sf/saxon/om/StructuredQName;->fromEQName(Ljava/lang/String;)Lnet/sf/saxon/om/StructuredQName;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    invoke-virtual {p0}, Lnet/sf/saxon/trans/PackageLoaderHE;->getPackStack()Ljava/util/Stack;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lnet/sf/saxon/style/StylesheetPackage;

    new-instance v7, Lcom/sunia/HTREnginev2/mnk;

    invoke-direct {v7, v5, v6, v4}, Lcom/sunia/HTREnginev2/mnk;-><init>(Ljava/util/List;Lnet/sf/saxon/style/StylesheetPackage;Lnet/sf/saxon/expr/sort/MergeInstr$MergeSource;)V

    invoke-virtual {p0, v7}, Lnet/sf/saxon/trans/PackageLoaderHE;->addCompletionAction(Lnet/sf/saxon/om/Action;)V

    const-string v5, "forEachItem"

    invoke-virtual {p0, v3, v5}, Lnet/sf/saxon/trans/PackageLoaderHE;->getExpressionWithRole(Lnet/sf/saxon/om/NodeInfo;Ljava/lang/String;)Lnet/sf/saxon/expr/Expression;

    move-result-object v5

    if-eqz v5, :cond_6

    invoke-virtual {v4, v0, v5}, Lnet/sf/saxon/expr/sort/MergeInstr$MergeSource;->initForEachItem(Lnet/sf/saxon/expr/sort/MergeInstr;Lnet/sf/saxon/expr/Expression;)V

    :cond_6
    const-string v5, "forEachStream"

    invoke-virtual {p0, v3, v5}, Lnet/sf/saxon/trans/PackageLoaderHE;->getExpressionWithRole(Lnet/sf/saxon/om/NodeInfo;Ljava/lang/String;)Lnet/sf/saxon/expr/Expression;

    move-result-object v5

    if-eqz v5, :cond_7

    invoke-virtual {v4, v0, v5}, Lnet/sf/saxon/expr/sort/MergeInstr$MergeSource;->initForEachStream(Lnet/sf/saxon/expr/sort/MergeInstr;Lnet/sf/saxon/expr/Expression;)V

    :cond_7
    const-string v5, "selectRows"

    invoke-virtual {p0, v3, v5}, Lnet/sf/saxon/trans/PackageLoaderHE;->getExpressionWithRole(Lnet/sf/saxon/om/NodeInfo;Ljava/lang/String;)Lnet/sf/saxon/expr/Expression;

    move-result-object v5

    if-eqz v5, :cond_8

    invoke-virtual {v4, v0, v5}, Lnet/sf/saxon/expr/sort/MergeInstr$MergeSource;->initRowSelect(Lnet/sf/saxon/expr/sort/MergeInstr;Lnet/sf/saxon/expr/Expression;)V

    :cond_8
    invoke-virtual {p0, v3}, Lnet/sf/saxon/trans/PackageLoaderHE;->f5(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/sort/SortKeyDefinitionList;

    move-result-object v3

    invoke-virtual {v4, v3}, Lnet/sf/saxon/expr/sort/MergeInstr$MergeSource;->setMergeKeyDefinitionSet(Lnet/sf/saxon/expr/sort/SortKeyDefinitionList;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_9
    const-string v1, "action"

    invoke-virtual {p0, p1, v1}, Lnet/sf/saxon/trans/PackageLoaderHE;->getExpressionWithRole(Lnet/sf/saxon/om/NodeInfo;Ljava/lang/String;)Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    const/4 v1, 0x0

    new-array v1, v1, [Lnet/sf/saxon/expr/sort/MergeInstr$MergeSource;

    invoke-interface {v2, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lnet/sf/saxon/expr/sort/MergeInstr$MergeSource;

    invoke-virtual {v0, v1, p1}, Lnet/sf/saxon/expr/sort/MergeInstr;->init([Lnet/sf/saxon/expr/sort/MergeInstr$MergeSource;Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/sort/MergeInstr;

    new-instance p1, Lcom/sunia/HTREnginev2/nnk;

    invoke-direct {p1, v0}, Lcom/sunia/HTREnginev2/nnk;-><init>(Lnet/sf/saxon/expr/sort/MergeInstr;)V

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->addCompletionAction(Lnet/sf/saxon/om/Action;)V

    return-object v0
.end method

.method public static synthetic a(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 0

    invoke-static {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->m4(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a0(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 0

    invoke-static {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->F4(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a1(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 0

    invoke-static {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->b5(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static a2(Ljava/util/Stack;Lnet/sf/saxon/om/StructuredQName;)Lnet/sf/saxon/expr/LocalBinding;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Stack<",
            "Lnet/sf/saxon/expr/LocalBinding;",
            ">;",
            "Lnet/sf/saxon/om/StructuredQName;",
            ")",
            "Lnet/sf/saxon/expr/LocalBinding;"
        }
    .end annotation

    new-instance v0, Lnet/sf/saxon/tree/jiter/TopDownStackIterable;

    invoke-direct {v0, p0}, Lnet/sf/saxon/tree/jiter/TopDownStackIterable;-><init>(Ljava/util/Stack;)V

    invoke-virtual {v0}, Lnet/sf/saxon/tree/jiter/TopDownStackIterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/expr/LocalBinding;

    invoke-interface {v0}, Lnet/sf/saxon/expr/Binding;->getVariableQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v1

    invoke-virtual {v1, p1}, Lnet/sf/saxon/om/StructuredQName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static synthetic a3(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const-string v0, "slot"

    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/trans/PackageLoaderHE;->getIntegerAttribute(Lnet/sf/saxon/om/NodeInfo;Ljava/lang/String;)I

    move-result p0

    new-instance p1, Lnet/sf/saxon/expr/SuppliedParameterReference;

    invoke-direct {p1, p0}, Lnet/sf/saxon/expr/SuppliedParameterReference;-><init>(I)V

    return-object p1
.end method

.method public static synthetic a4(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const-string v0, "validation"

    const-string v1, ""

    invoke-interface {p1, v1, v0}, Lnet/sf/saxon/om/NodeInfo;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lnet/sf/saxon/lib/Validation;->getCode(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    :goto_0
    const-string v2, "type"

    invoke-virtual {p0, p1, v2}, Lnet/sf/saxon/trans/PackageLoaderHE;->getTypeAttribute(Lnet/sf/saxon/om/NodeInfo;Ljava/lang/String;)Lnet/sf/saxon/type/SchemaType;

    move-result-object v2

    if-eqz v2, :cond_1

    const/16 v0, 0x8

    :cond_1
    const-string v3, "sit"

    invoke-interface {p1, v1, v3}, Lnet/sf/saxon/om/NodeInfo;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lnet/sf/saxon/expr/instruct/Copy;

    const/4 v5, 0x0

    invoke-direct {v4, v5, v5, v2, v0}, Lnet/sf/saxon/expr/instruct/Copy;-><init>(ZZLnet/sf/saxon/type/SchemaType;I)V

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->getFirstChildExpression(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {v4, v0}, Lnet/sf/saxon/expr/instruct/ParentNodeConstructor;->setContentExpression(Lnet/sf/saxon/expr/Expression;)V

    const-string v0, "flags"

    invoke-interface {p1, v1, v0}, Lnet/sf/saxon/om/NodeInfo;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "c"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    invoke-virtual {v4, v0}, Lnet/sf/saxon/expr/instruct/Copy;->setCopyNamespaces(Z)V

    const-string v0, "i"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    invoke-virtual {v4, v0}, Lnet/sf/saxon/expr/instruct/ElementCreator;->setBequeathNamespacesToChildren(Z)V

    const-string v0, "n"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    invoke-virtual {v4, p1}, Lnet/sf/saxon/expr/instruct/ElementCreator;->setInheritNamespacesFromParent(Z)V

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lnet/sf/saxon/trans/PackageLoaderHE;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p0

    invoke-static {v3, p0}, Lnet/sf/saxon/type/AlphaCode;->toSequenceType(Ljava/lang/String;Lnet/sf/saxon/Configuration;)Lnet/sf/saxon/value/SequenceType;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/value/SequenceType;->getPrimaryType()Lnet/sf/saxon/type/ItemType;

    move-result-object p0

    invoke-virtual {v4, p0}, Lnet/sf/saxon/expr/instruct/Copy;->setSelectItemType(Lnet/sf/saxon/type/ItemType;)V

    :cond_2
    return-object v4
.end method

.method public static synthetic a5(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->getFirstChildExpression(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    new-instance p1, Lnet/sf/saxon/expr/AdjacentTextNodeMerger;

    invoke-direct {p1, p0}, Lnet/sf/saxon/expr/AdjacentTextNodeMerger;-><init>(Lnet/sf/saxon/expr/Expression;)V

    return-object p1
.end method

.method public static synthetic b(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 0

    invoke-static {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->W3(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b0(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 0

    invoke-static {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->S3(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b1(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 0

    invoke-static {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->F2(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b3(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->getFirstChildExpression(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    const-string v1, "start"

    invoke-virtual {p0, p1, v1}, Lnet/sf/saxon/trans/PackageLoaderHE;->getIntegerAttribute(Lnet/sf/saxon/om/NodeInfo;Ljava/lang/String;)I

    move-result p0

    new-instance p1, Lnet/sf/saxon/expr/TailExpression;

    invoke-direct {p1, v0, p0}, Lnet/sf/saxon/expr/TailExpression;-><init>(Lnet/sf/saxon/expr/Expression;I)V

    return-object p1
.end method

.method public static synthetic b4(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->getFirstChildExpression(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    const-string v0, "flags"

    const-string v2, ""

    invoke-interface {p1, v2, v0}, Lnet/sf/saxon/om/NodeInfo;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    move-object v6, v2

    goto :goto_0

    :cond_0
    move-object v6, v0

    :goto_0
    const-string v0, "c"

    invoke-virtual {v6, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    const-string v0, "d"

    invoke-virtual {v6, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    const-string v0, "validation"

    invoke-interface {p1, v2, v0}, Lnet/sf/saxon/om/NodeInfo;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v0}, Lnet/sf/saxon/lib/Validation;->getCode(Ljava/lang/String;)I

    move-result v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x4

    :goto_1
    const-string v2, "type"

    invoke-virtual {p0, p1, v2}, Lnet/sf/saxon/trans/PackageLoaderHE;->getTypeAttribute(Lnet/sf/saxon/om/NodeInfo;Ljava/lang/String;)Lnet/sf/saxon/type/SchemaType;

    move-result-object v4

    if-eqz v4, :cond_2

    const/16 p0, 0x8

    goto :goto_2

    :cond_2
    move p0, v0

    :goto_2
    new-instance p1, Lnet/sf/saxon/expr/instruct/CopyOf;

    move-object v0, p1

    move v2, v3

    move v3, p0

    invoke-direct/range {v0 .. v5}, Lnet/sf/saxon/expr/instruct/CopyOf;-><init>(Lnet/sf/saxon/expr/Expression;ZILnet/sf/saxon/type/SchemaType;Z)V

    const-string p0, "m"

    invoke-virtual {v6, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    invoke-virtual {p1, p0}, Lnet/sf/saxon/expr/instruct/CopyOf;->setCopyAccumulators(Z)V

    const-string p0, "l"

    invoke-virtual {v6, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    invoke-virtual {p1, p0}, Lnet/sf/saxon/expr/instruct/CopyOf;->setCopyLineNumbers(Z)V

    const-string p0, "s"

    invoke-virtual {v6, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    invoke-virtual {p1, p0}, Lnet/sf/saxon/expr/instruct/CopyOf;->setSchemaAware(Z)V

    const-string p0, "u"

    invoke-virtual {v6, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    invoke-virtual {p1, p0}, Lnet/sf/saxon/expr/instruct/CopyOf;->setCopyForUpdate(Z)V

    return-object p1
.end method

.method public static synthetic b5(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const-string v0, "select"

    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/trans/PackageLoaderHE;->getExpressionWithRole(Lnet/sf/saxon/om/NodeInfo;Ljava/lang/String;)Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    const-string v1, "terminate"

    invoke-virtual {p0, p1, v1}, Lnet/sf/saxon/trans/PackageLoaderHE;->getExpressionWithRole(Lnet/sf/saxon/om/NodeInfo;Ljava/lang/String;)Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    const-string v2, "error"

    invoke-virtual {p0, p1, v2}, Lnet/sf/saxon/trans/PackageLoaderHE;->getExpressionWithRole(Lnet/sf/saxon/om/NodeInfo;Ljava/lang/String;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    new-instance p1, Lnet/sf/saxon/expr/instruct/MessageInstr;

    invoke-direct {p1, v0, v1, p0}, Lnet/sf/saxon/expr/instruct/MessageInstr;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    return-object p1
.end method

.method public static synthetic c(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 0

    invoke-static {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->Q3(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c0(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 0

    invoke-static {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->O2(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c1(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 0

    invoke-static {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->O3(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static c2(Ljava/lang/String;)I
    .locals 6

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, -0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "multi"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    move v5, v2

    goto :goto_0

    :sswitch_1
    const-string v1, "any"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    move v5, v3

    goto :goto_0

    :sswitch_2
    const-string v1, "single"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    move v5, v4

    goto :goto_0

    :sswitch_3
    const-string v1, "simple"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_0

    :cond_4
    move v5, v0

    :goto_0
    packed-switch v5, :pswitch_data_0

    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :pswitch_0
    return v4

    :pswitch_1
    return v3

    :pswitch_2
    return v0

    :pswitch_3
    return v2

    :sswitch_data_0
    .sparse-switch
        -0x35c7ce4e -> :sswitch_3
        -0x35c77bb8 -> :sswitch_2
        0x179ec -> :sswitch_1
        0x636d539 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static synthetic c3(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->getFirstChildExpression(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->getSecondChildExpression(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    const-string v1, ""

    const-string v2, "calc"

    invoke-interface {p1, v1, v2}, Lnet/sf/saxon/om/NodeInfo;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lnet/sf/saxon/expr/Calculator;->reconstructCalculator(Ljava/lang/String;)Lnet/sf/saxon/expr/Calculator;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-static {p1}, Lnet/sf/saxon/expr/Calculator;->operatorFromCode(C)I

    move-result p1

    invoke-static {p1}, Lnet/sf/saxon/expr/Calculator;->getTokenFromOperator(I)I

    move-result p1

    new-instance v2, Lnet/sf/saxon/expr/ArithmeticExpression;

    invoke-direct {v2, v0, p1, p0}, Lnet/sf/saxon/expr/ArithmeticExpression;-><init>(Lnet/sf/saxon/expr/Expression;ILnet/sf/saxon/expr/Expression;)V

    invoke-virtual {v2, v1}, Lnet/sf/saxon/expr/ArithmeticExpression;->setCalculator(Lnet/sf/saxon/expr/Calculator;)V

    return-object v2
.end method

.method public static synthetic c4(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    new-instance p0, Lnet/sf/saxon/functions/CurrentGroupCall;

    invoke-direct {p0}, Lnet/sf/saxon/functions/CurrentGroupCall;-><init>()V

    return-object p0
.end method

.method public static synthetic c5(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->getFirstChildExpression(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    new-instance p1, Lnet/sf/saxon/expr/NegateExpression;

    invoke-direct {p1, p0}, Lnet/sf/saxon/expr/NegateExpression;-><init>(Lnet/sf/saxon/expr/Expression;)V

    return-object p1
.end method

.method public static synthetic d(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/pattern/Pattern;
    .locals 0

    invoke-static {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->x3(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/pattern/Pattern;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d0(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 0

    invoke-static {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->w4(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d1(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 0

    invoke-static {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->Z3(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d3(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->getFirstChildExpression(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    new-instance v0, Lnet/sf/saxon/expr/TailCallLoop;

    iget-object p0, p0, Lnet/sf/saxon/trans/PackageLoaderHE;->k:Lnet/sf/saxon/expr/instruct/UserFunction;

    invoke-direct {v0, p0, p1}, Lnet/sf/saxon/expr/TailCallLoop;-><init>(Lnet/sf/saxon/expr/instruct/UserFunction;Lnet/sf/saxon/expr/Expression;)V

    return-object v0
.end method

.method public static synthetic d4(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    new-instance p0, Lnet/sf/saxon/functions/CurrentGroupingKeyCall;

    invoke-direct {p0}, Lnet/sf/saxon/functions/CurrentGroupingKeyCall;-><init>()V

    return-object p0
.end method

.method public static synthetic d5(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->getFirstChildExpression(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->getSecondChildExpression(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    new-instance p1, Lnet/sf/saxon/expr/instruct/NamespaceConstructor;

    invoke-direct {p1, v0}, Lnet/sf/saxon/expr/instruct/NamespaceConstructor;-><init>(Lnet/sf/saxon/expr/Expression;)V

    invoke-virtual {p1, p0}, Lnet/sf/saxon/expr/instruct/SimpleNodeConstructor;->setSelect(Lnet/sf/saxon/expr/Expression;)V

    return-object p1
.end method

.method public static synthetic e(Lnet/sf/saxon/expr/instruct/UserFunction;)V
    .locals 0

    invoke-static {p0}, Lnet/sf/saxon/trans/PackageLoaderHE;->s2(Lnet/sf/saxon/expr/instruct/UserFunction;)V

    return-void
.end method

.method public static synthetic e0(Ljava/util/List;Lnet/sf/saxon/style/StylesheetPackage;Lnet/sf/saxon/expr/instruct/SourceDocument;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lnet/sf/saxon/trans/PackageLoaderHE;->r2(Ljava/util/List;Lnet/sf/saxon/style/StylesheetPackage;Lnet/sf/saxon/expr/instruct/SourceDocument;)V

    return-void
.end method

.method public static synthetic e1(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 0

    invoke-static {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->M2(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e3(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->getFirstChildExpression(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->getSecondChildExpression(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    new-instance p1, Lnet/sf/saxon/expr/RangeExpression;

    invoke-direct {p1, v0, p0}, Lnet/sf/saxon/expr/RangeExpression;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    return-object p1
.end method

.method public static synthetic e4(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->getFirstChildExpression(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/expr/Literal;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Literal;->getGroundedValue()Lnet/sf/saxon/om/GroundedValue;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/om/Function;

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Lnet/sf/saxon/trans/PackageLoaderHE;->getChild(Lnet/sf/saxon/om/NodeInfo;I)Lnet/sf/saxon/om/NodeInfo;

    move-result-object p1

    sget-object v1, Lnet/sf/saxon/pattern/NodeKindTest;->ELEMENT:Lnet/sf/saxon/pattern/NodeKindTest;

    const/4 v2, 0x3

    invoke-interface {p1, v2, v1}, Lnet/sf/saxon/om/NodeInfo;->iterateAxis(ILnet/sf/saxon/pattern/NodePredicate;)Lnet/sf/saxon/tree/iter/AxisIterator;

    move-result-object v2

    invoke-static {v2}, Lnet/sf/saxon/functions/Count;->count(Lnet/sf/saxon/om/SequenceIterator;)I

    move-result v2

    new-array v2, v2, [Lnet/sf/saxon/om/Sequence;

    invoke-interface {p1, v1}, Lnet/sf/saxon/om/NodeInfo;->children(Lnet/sf/saxon/pattern/NodePredicate;)Ljava/lang/Iterable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/sf/saxon/om/NodeInfo;

    invoke-interface {v3}, Lnet/sf/saxon/om/NodeInfo;->getLocalPart()Ljava/lang/String;

    move-result-object v4

    const-string v5, "x"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    add-int/lit8 v3, v1, 0x1

    const/4 v4, 0x0

    aput-object v4, v2, v1

    move v1, v3

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v3}, Lnet/sf/saxon/trans/PackageLoaderHE;->loadExpression(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object v3

    add-int/lit8 v4, v1, 0x1

    check-cast v3, Lnet/sf/saxon/expr/Literal;

    invoke-virtual {v3}, Lnet/sf/saxon/expr/Literal;->getGroundedValue()Lnet/sf/saxon/om/GroundedValue;

    move-result-object v3

    aput-object v3, v2, v1

    move v1, v4

    goto :goto_0

    :cond_1
    new-instance p0, Lnet/sf/saxon/functions/hof/CurriedFunction;

    invoke-direct {p0, v0, v2}, Lnet/sf/saxon/functions/hof/CurriedFunction;-><init>(Lnet/sf/saxon/om/Function;[Lnet/sf/saxon/om/Sequence;)V

    invoke-static {p0}, Lnet/sf/saxon/expr/Literal;->makeLiteral(Lnet/sf/saxon/om/GroundedValue;)Lnet/sf/saxon/expr/Literal;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 0

    invoke-static {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->t4(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f0(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 0

    invoke-static {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->N4(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f1(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 0

    invoke-static {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->K4(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f3(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->getFirstChildExpression(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    const-string v1, "as"

    invoke-virtual {p0, p1, v1}, Lnet/sf/saxon/trans/PackageLoaderHE;->parseAlphaCodeForItemType(Lnet/sf/saxon/om/NodeInfo;Ljava/lang/String;)Lnet/sf/saxon/type/ItemType;

    move-result-object p0

    const-string v1, ""

    const-string v2, "diag"

    invoke-interface {p1, v1, v2}, Lnet/sf/saxon/om/NodeInfo;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lnet/sf/saxon/expr/parser/RoleDiagnostic;->reconstruct(Ljava/lang/String;)Lnet/sf/saxon/expr/parser/RoleDiagnostic;

    move-result-object p1

    new-instance v1, Lnet/sf/saxon/expr/ItemChecker;

    invoke-direct {v1, v0, p0, p1}, Lnet/sf/saxon/expr/ItemChecker;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/expr/parser/RoleDiagnostic;)V

    return-object v1
.end method

.method public static synthetic f4(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->getFirstChildExpression(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    const-string v1, "to"

    invoke-virtual {p0, p1, v1}, Lnet/sf/saxon/trans/PackageLoaderHE;->parseAlphaCodeForItemType(Lnet/sf/saxon/om/NodeInfo;Ljava/lang/String;)Lnet/sf/saxon/type/ItemType;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lnet/sf/saxon/type/SimpleType;

    invoke-interface {v2}, Lnet/sf/saxon/type/HyperType;->isNamespaceSensitive()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object p0, p0, Lnet/sf/saxon/trans/PackageLoaderHE;->a:Lnet/sf/saxon/Configuration;

    check-cast v1, Lnet/sf/saxon/type/PlainType;

    invoke-static {p0, v0, v1}, Lnet/sf/saxon/expr/UntypedSequenceConverter;->makeUntypedSequenceRejector(Lnet/sf/saxon/Configuration;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/type/PlainType;)Lnet/sf/saxon/expr/UntypedSequenceConverter;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lnet/sf/saxon/trans/PackageLoaderHE;->a:Lnet/sf/saxon/Configuration;

    check-cast v1, Lnet/sf/saxon/type/PlainType;

    invoke-static {p0, v0, v1}, Lnet/sf/saxon/expr/UntypedSequenceConverter;->makeUntypedSequenceConverter(Lnet/sf/saxon/Configuration;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/type/PlainType;)Lnet/sf/saxon/expr/UntypedSequenceConverter;

    move-result-object p0

    const-string v0, ""

    const-string v1, "diag"

    invoke-interface {p1, v0, v1}, Lnet/sf/saxon/om/NodeInfo;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-static {p1}, Lnet/sf/saxon/expr/parser/RoleDiagnostic;->reconstruct(Ljava/lang/String;)Lnet/sf/saxon/expr/parser/RoleDiagnostic;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/AtomicSequenceConverter;->setRoleDiagnostic(Lnet/sf/saxon/expr/parser/RoleDiagnostic;)V

    :cond_1
    return-object p0
.end method

.method public static synthetic g(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 0

    invoke-static {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->Q4(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic g0(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 0

    invoke-static {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->k4(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic g1(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 0

    invoke-static {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->h3(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic g2(Ljava/util/List;Lnet/sf/saxon/event/Receiver;)Lnet/sf/saxon/event/Receiver;
    .locals 1

    new-instance v0, Lnet/sf/saxon/event/CheckSumFilter;

    invoke-direct {v0, p1}, Lnet/sf/saxon/event/CheckSumFilter;-><init>(Lnet/sf/saxon/event/Receiver;)V

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Lnet/sf/saxon/event/CheckSumFilter;->setCheckExistingChecksum(Z)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static synthetic g3(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    sget-object p0, Lnet/sf/saxon/value/BooleanValue;->TRUE:Lnet/sf/saxon/value/BooleanValue;

    invoke-static {p0}, Lnet/sf/saxon/expr/Literal;->makeLiteral(Lnet/sf/saxon/om/GroundedValue;)Lnet/sf/saxon/expr/Literal;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic g4(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->getFirstChildExpression(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    const-string v0, ""

    const-string v1, "diag"

    invoke-interface {p1, v0, v1}, Lnet/sf/saxon/om/NodeInfo;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lnet/sf/saxon/expr/Atomizer;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lnet/sf/saxon/expr/parser/RoleDiagnostic;->reconstruct(Ljava/lang/String;)Lnet/sf/saxon/expr/parser/RoleDiagnostic;

    move-result-object p1

    :goto_0
    invoke-direct {v0, p0, p1}, Lnet/sf/saxon/expr/Atomizer;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/parser/RoleDiagnostic;)V

    return-object v0
.end method

.method public static getChildExpressionArray(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)[Lnet/sf/saxon/expr/Expression;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-static {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->getChildExpressionList(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Ljava/util/List;

    move-result-object p0

    const/4 p1, 0x0

    new-array p1, p1, [Lnet/sf/saxon/expr/Expression;

    invoke-interface {p0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lnet/sf/saxon/expr/Expression;

    return-object p0
.end method

.method public static getChildExpressionList(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/sf/saxon/trans/PackageLoaderHE;",
            "Lnet/sf/saxon/om/NodeInfo;",
            ")",
            "Ljava/util/List<",
            "Lnet/sf/saxon/expr/Expression;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x3

    sget-object v2, Lnet/sf/saxon/pattern/NodeKindTest;->ELEMENT:Lnet/sf/saxon/pattern/NodeKindTest;

    invoke-interface {p1, v1, v2}, Lnet/sf/saxon/om/NodeInfo;->iterateAxis(ILnet/sf/saxon/pattern/NodePredicate;)Lnet/sf/saxon/tree/iter/AxisIterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Lnet/sf/saxon/tree/iter/AxisIterator;->next()Lnet/sf/saxon/om/NodeInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v1}, Lnet/sf/saxon/trans/PackageLoaderHE;->loadExpression(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static getOperator(Ljava/lang/String;)I
    .locals 2

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, ">="

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x5

    goto :goto_0

    :sswitch_1
    const-string v0, "<="

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_2
    const-string v0, "!="

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_3
    const-string v0, ">"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_4
    const-string v0, "="

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_5
    const-string v0, "<"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :pswitch_0
    const/16 p0, 0xd

    goto :goto_1

    :pswitch_1
    const/16 p0, 0xe

    goto :goto_1

    :pswitch_2
    const/16 p0, 0x16

    goto :goto_1

    :pswitch_3
    const/16 p0, 0xb

    goto :goto_1

    :pswitch_4
    const/4 p0, 0x6

    goto :goto_1

    :pswitch_5
    const/16 p0, 0xc

    :goto_1
    return p0

    nop

    :sswitch_data_0
    .sparse-switch
        0x3c -> :sswitch_5
        0x3d -> :sswitch_4
        0x3e -> :sswitch_3
        0x43c -> :sswitch_2
        0x781 -> :sswitch_1
        0x7bf -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static synthetic h(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 0

    invoke-static {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->H4(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic h0(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 0

    invoke-static {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->e3(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic h1(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 0

    invoke-static {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->V3(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic h2(Lnet/sf/saxon/om/NodeInfo;)Z
    .locals 1

    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->getLocalPart()Ljava/lang/String;

    move-result-object p0

    const-string v0, "package"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic h3(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->getFirstChildExpression(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    new-instance v1, Lnet/sf/saxon/expr/TryCatch;

    invoke-direct {v1, v0}, Lnet/sf/saxon/expr/TryCatch;-><init>(Lnet/sf/saxon/expr/Expression;)V

    const-string v0, "flags"

    const-string v2, ""

    invoke-interface {p1, v2, v0}, Lnet/sf/saxon/om/NodeInfo;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "r"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v1, v3}, Lnet/sf/saxon/expr/TryCatch;->setRollbackOutput(Z)V

    :cond_0
    new-instance v0, Lnet/sf/saxon/pattern/NameTest;

    iget-object v4, p0, Lnet/sf/saxon/trans/PackageLoaderHE;->a:Lnet/sf/saxon/Configuration;

    invoke-virtual {v4}, Lnet/sf/saxon/Configuration;->getNamePool()Lnet/sf/saxon/om/NamePool;

    move-result-object v4

    const-string v5, "http://ns.saxonica.com/xslt/export"

    const-string v6, "catch"

    invoke-direct {v0, v3, v5, v6, v4}, Lnet/sf/saxon/pattern/NameTest;-><init>(ILjava/lang/String;Ljava/lang/String;Lnet/sf/saxon/om/NamePool;)V

    const/4 v4, 0x3

    invoke-interface {p1, v4, v0}, Lnet/sf/saxon/om/NodeInfo;->iterateAxis(ILnet/sf/saxon/pattern/NodePredicate;)Lnet/sf/saxon/tree/iter/AxisIterator;

    move-result-object p1

    invoke-virtual {p0}, Lnet/sf/saxon/trans/PackageLoaderHE;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/Configuration;->getNamePool()Lnet/sf/saxon/om/NamePool;

    move-result-object v0

    :goto_0
    invoke-interface {p1}, Lnet/sf/saxon/tree/iter/AxisIterator;->next()Lnet/sf/saxon/om/NodeInfo;

    move-result-object v4

    if-eqz v4, :cond_6

    const-string v5, "errors"

    invoke-interface {v4, v2, v5}, Lnet/sf/saxon/om/NodeInfo;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    array-length v7, v5

    const/4 v8, 0x0

    move v9, v8

    :goto_1
    if-ge v9, v7, :cond_4

    aget-object v10, v5, v9

    const-string v11, "*"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-static {}, Lnet/sf/saxon/pattern/AnyNodeTest;->getInstance()Lnet/sf/saxon/pattern/AnyNodeTest;

    move-result-object v10

    invoke-interface {v6, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_1
    const-string v11, "*:"

    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    const/4 v12, 0x2

    if-eqz v11, :cond_2

    new-instance v11, Lnet/sf/saxon/pattern/LocalNameTest;

    invoke-virtual {v10, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v11, v0, v3, v10}, Lnet/sf/saxon/pattern/LocalNameTest;-><init>(Lnet/sf/saxon/om/NamePool;ILjava/lang/String;)V

    invoke-interface {v6, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    const-string v11, "}*"

    invoke-virtual {v10, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3

    new-instance v11, Lnet/sf/saxon/pattern/NamespaceTest;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v13

    sub-int/2addr v13, v12

    invoke-virtual {v10, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v11, v0, v3, v10}, Lnet/sf/saxon/pattern/NamespaceTest;-><init>(Lnet/sf/saxon/om/NamePool;ILjava/lang/String;)V

    invoke-interface {v6, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    invoke-static {v10}, Lnet/sf/saxon/om/StructuredQName;->fromEQName(Ljava/lang/String;)Lnet/sf/saxon/om/StructuredQName;

    move-result-object v10

    new-instance v11, Lnet/sf/saxon/pattern/NameTest;

    new-instance v12, Lnet/sf/saxon/om/FingerprintedQName;

    invoke-direct {v12, v10, v0}, Lnet/sf/saxon/om/FingerprintedQName;-><init>(Lnet/sf/saxon/om/StructuredQName;Lnet/sf/saxon/om/NamePool;)V

    invoke-direct {v11, v3, v12, v0}, Lnet/sf/saxon/pattern/NameTest;-><init>(ILnet/sf/saxon/om/NodeName;Lnet/sf/saxon/om/NamePool;)V

    invoke-interface {v6, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_4
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v5

    if-ne v5, v3, :cond_5

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lnet/sf/saxon/pattern/QNameTest;

    goto :goto_3

    :cond_5
    new-instance v5, Lnet/sf/saxon/pattern/UnionQNameTest;

    invoke-direct {v5, v6}, Lnet/sf/saxon/pattern/UnionQNameTest;-><init>(Ljava/util/List;)V

    :goto_3
    invoke-virtual {p0, v4}, Lnet/sf/saxon/trans/PackageLoaderHE;->getFirstChildExpression(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object v4

    invoke-virtual {v1, v5, v4}, Lnet/sf/saxon/expr/TryCatch;->addCatchExpression(Lnet/sf/saxon/pattern/QNameTest;Lnet/sf/saxon/expr/Expression;)V

    goto/16 :goto_0

    :cond_6
    return-object v1
.end method

.method public static synthetic h4(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const-string p0, ""

    const-string v0, "val"

    invoke-interface {p1, p0, v0}, Lnet/sf/saxon/om/NodeInfo;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lnet/sf/saxon/type/StringToDouble;->getInstance()Lnet/sf/saxon/type/StringToDouble;

    move-result-object p1

    invoke-static {p0}, Lnet/sf/saxon/str/StringView;->of(Ljava/lang/String;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/str/UnicodeString;->tidy()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    invoke-virtual {p1, p0}, Lnet/sf/saxon/type/StringToDouble;->stringToNumber(Lnet/sf/saxon/str/UnicodeString;)D

    move-result-wide p0

    new-instance v0, Lnet/sf/saxon/value/DoubleValue;

    invoke-direct {v0, p0, p1}, Lnet/sf/saxon/value/DoubleValue;-><init>(D)V

    invoke-static {v0}, Lnet/sf/saxon/expr/Literal;->makeLiteral(Lnet/sf/saxon/om/GroundedValue;)Lnet/sf/saxon/expr/Literal;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic i(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 0

    invoke-static {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->R2(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic i0(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 0

    invoke-static {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->Y4(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic i1(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 0

    invoke-static {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->g3(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic i2(Lnet/sf/saxon/pattern/Pattern;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    check-cast p0, Lnet/sf/saxon/pattern/GeneralNodePattern;

    invoke-virtual {p0}, Lnet/sf/saxon/pattern/GeneralNodePattern;->makeTopNodeEquivalent()V

    return-void
.end method

.method public static synthetic i3(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-static {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->getChildExpressionArray(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)[Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    const-string v1, "name"

    invoke-virtual {p0, p1, v1}, Lnet/sf/saxon/trans/PackageLoaderHE;->getQNameAttribute(Lnet/sf/saxon/om/NodeInfo;Ljava/lang/String;)Lnet/sf/saxon/om/StructuredQName;

    move-result-object v1

    new-instance v2, Lnet/sf/saxon/expr/UserFunctionCall;

    invoke-direct {v2}, Lnet/sf/saxon/expr/UserFunctionCall;-><init>()V

    invoke-virtual {v2, v1}, Lnet/sf/saxon/expr/UserFunctionCall;->setFunctionName(Lnet/sf/saxon/om/StructuredQName;)V

    invoke-virtual {v2, v0}, Lnet/sf/saxon/expr/FunctionCall;->setArguments([Lnet/sf/saxon/expr/Expression;)V

    const-string v0, "bSlot"

    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/trans/PackageLoaderHE;->getIntegerAttribute(Lnet/sf/saxon/om/NodeInfo;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Lnet/sf/saxon/expr/UserFunctionCall;->setBindingSlot(I)V

    const-string v0, ""

    const-string v1, "eval"

    invoke-interface {p1, v0, v1}, Lnet/sf/saxon/om/NodeInfo;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v0, p1

    new-array v0, v0, [Lnet/sf/saxon/expr/parser/Evaluator;

    const/4 v1, 0x0

    :goto_0
    array-length v3, p1

    if-ge v1, v3, :cond_0

    aget-object v3, p1, v1

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Lnet/sf/saxon/expr/parser/Evaluators;->getEvaluator(I)Lnet/sf/saxon/expr/parser/Evaluator;

    move-result-object v3

    aput-object v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v2, v0}, Lnet/sf/saxon/expr/UserFunctionCall;->setArgumentEvaluators([Lnet/sf/saxon/expr/parser/Evaluator;)V

    :cond_1
    invoke-virtual {p0, v2}, Lnet/sf/saxon/trans/PackageLoaderHE;->Y1(Lnet/sf/saxon/expr/ComponentInvocation;)V

    return-object v2
.end method

.method public static synthetic i4(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const-string p0, ""

    const-string v0, "val"

    invoke-interface {p1, p0, v0}, Lnet/sf/saxon/om/NodeInfo;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lnet/sf/saxon/value/BigDecimalValue;->makeDecimalValue(Ljava/lang/String;Z)Lnet/sf/saxon/type/ConversionResult;

    move-result-object p0

    invoke-interface {p0}, Lnet/sf/saxon/type/ConversionResult;->asAtomic()Lnet/sf/saxon/value/AtomicValue;

    move-result-object p0

    invoke-static {p0}, Lnet/sf/saxon/expr/Literal;->makeLiteral(Lnet/sf/saxon/om/GroundedValue;)Lnet/sf/saxon/expr/Literal;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic j(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 0

    invoke-static {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->d5(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic j0(Lnet/sf/saxon/om/NodeInfo;)Z
    .locals 0

    invoke-static {p0}, Lnet/sf/saxon/trans/PackageLoaderHE;->t2(Lnet/sf/saxon/om/NodeInfo;)Z

    move-result p0

    return p0
.end method

.method public static synthetic j1(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 0

    invoke-static {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->y2(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic j2(Lnet/sf/saxon/lib/ParseOptions;Lnet/sf/saxon/trans/PackageLoaderHE;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->getTopLevelPackage()Lnet/sf/saxon/style/StylesheetPackage;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sf/saxon/style/StylesheetPackage;->getSpaceStrippingRule()Lnet/sf/saxon/om/SpaceStrippingRule;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/lib/ParseOptions;->setSpaceStrippingRule(Lnet/sf/saxon/om/SpaceStrippingRule;)V

    return-void
.end method

.method public static synthetic j3(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const-string v0, "name"

    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/trans/PackageLoaderHE;->getQNameAttribute(Lnet/sf/saxon/om/NodeInfo;Ljava/lang/String;)Lnet/sf/saxon/om/StructuredQName;

    move-result-object v0

    const-string v1, "arity"

    invoke-virtual {p0, p1, v1}, Lnet/sf/saxon/trans/PackageLoaderHE;->getIntegerAttribute(Lnet/sf/saxon/om/NodeInfo;Ljava/lang/String;)I

    move-result v1

    new-instance v2, Lnet/sf/saxon/trans/SymbolicName$F;

    invoke-direct {v2, v0, v1}, Lnet/sf/saxon/trans/SymbolicName$F;-><init>(Lnet/sf/saxon/om/StructuredQName;I)V

    new-instance v0, Lnet/sf/saxon/functions/hof/UserFunctionReference;

    invoke-direct {v0, v2}, Lnet/sf/saxon/functions/hof/UserFunctionReference;-><init>(Lnet/sf/saxon/trans/SymbolicName;)V

    const-string v1, "bSlot"

    invoke-virtual {p0, p1, v1}, Lnet/sf/saxon/trans/PackageLoaderHE;->getIntegerAttribute(Lnet/sf/saxon/om/NodeInfo;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Lnet/sf/saxon/functions/hof/UserFunctionReference;->setBindingSlot(I)V

    invoke-virtual {p0, v0}, Lnet/sf/saxon/trans/PackageLoaderHE;->Y1(Lnet/sf/saxon/expr/ComponentInvocation;)V

    return-object v0
.end method

.method public static synthetic j4(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const-string v0, "validation"

    const-string v1, ""

    invoke-interface {p1, v1, v0}, Lnet/sf/saxon/om/NodeInfo;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lnet/sf/saxon/lib/Validation;->getCode(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    :goto_0
    const-string v2, "type"

    invoke-virtual {p0, p1, v2}, Lnet/sf/saxon/trans/PackageLoaderHE;->getTypeAttribute(Lnet/sf/saxon/om/NodeInfo;Ljava/lang/String;)Lnet/sf/saxon/type/SchemaType;

    move-result-object v2

    if-eqz v2, :cond_1

    const/16 v0, 0x8

    :cond_1
    const-string v3, "flags"

    invoke-interface {p1, v1, v3}, Lnet/sf/saxon/om/NodeInfo;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    const-string v4, "t"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    const-string v4, "base"

    invoke-interface {p1, v1, v4}, Lnet/sf/saxon/om/NodeInfo;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v4, "text"

    invoke-interface {p1, v1, v4}, Lnet/sf/saxon/om/NodeInfo;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->getFirstChildExpression(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    new-instance p1, Lnet/sf/saxon/expr/instruct/DocumentInstr;

    if-nez v1, :cond_3

    const/4 v1, 0x0

    goto :goto_2

    :cond_3
    invoke-static {v1}, Lnet/sf/saxon/str/StringView;->tidy(Ljava/lang/String;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object v1

    :goto_2
    invoke-direct {p1, v3, v1}, Lnet/sf/saxon/expr/instruct/DocumentInstr;-><init>(ZLnet/sf/saxon/str/UnicodeString;)V

    invoke-virtual {p1, p0}, Lnet/sf/saxon/expr/instruct/ParentNodeConstructor;->setContentExpression(Lnet/sf/saxon/expr/Expression;)V

    invoke-virtual {p1, v0, v2}, Lnet/sf/saxon/expr/instruct/ParentNodeConstructor;->setValidationAction(ILnet/sf/saxon/type/SchemaType;)V

    return-object p1
.end method

.method public static synthetic k(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 0

    invoke-static {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->T2(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic k0(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 0

    invoke-static {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->U4(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic k1(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 0

    invoke-static {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->f4(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic k2(Lnet/sf/saxon/functions/hof/CoercedFunction;Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/trans/SymbolicName;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    check-cast p2, Lnet/sf/saxon/trans/SymbolicName$F;

    invoke-virtual {p1, p2}, Lnet/sf/saxon/trans/PackageLoaderHE;->e2(Lnet/sf/saxon/trans/SymbolicName$F;)Lnet/sf/saxon/expr/instruct/UserFunction;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/functions/hof/CoercedFunction;->setTargetFunction(Lnet/sf/saxon/om/Function;)V

    return-void
.end method

.method public static synthetic k3(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->getFirstChildExpression(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->getSecondChildExpression(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    new-instance p1, Lnet/sf/saxon/expr/VennExpression;

    const/4 v1, 0x1

    invoke-direct {p1, v0, v1, p0}, Lnet/sf/saxon/expr/VennExpression;-><init>(Lnet/sf/saxon/expr/Expression;ILnet/sf/saxon/expr/Expression;)V

    return-object p1
.end method

.method public static synthetic k4(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->getFirstChildExpression(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    const-string v0, ""

    const-string v1, "intra"

    invoke-interface {p1, v0, v1}, Lnet/sf/saxon/om/NodeInfo;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    new-instance v0, Lnet/sf/saxon/expr/sort/DocumentSorter;

    invoke-direct {v0, p0, p1}, Lnet/sf/saxon/expr/sort/DocumentSorter;-><init>(Lnet/sf/saxon/expr/Expression;Z)V

    return-object v0
.end method

.method public static k5(Ljava/lang/String;)I
    .locals 2

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "ne"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x5

    goto :goto_0

    :sswitch_1
    const-string v0, "lt"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_2
    const-string v0, "le"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_3
    const-string v0, "gt"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_4
    const-string v0, "ge"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_5
    const-string v0, "eq"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :pswitch_0
    const/16 p0, 0x33

    goto :goto_1

    :pswitch_1
    const/16 p0, 0x35

    goto :goto_1

    :pswitch_2
    const/16 p0, 0x37

    goto :goto_1

    :pswitch_3
    const/16 p0, 0x34

    goto :goto_1

    :pswitch_4
    const/16 p0, 0x36

    goto :goto_1

    :pswitch_5
    const/16 p0, 0x32

    :goto_1
    return p0

    :sswitch_data_0
    .sparse-switch
        0xcac -> :sswitch_5
        0xcde -> :sswitch_4
        0xced -> :sswitch_3
        0xd79 -> :sswitch_2
        0xd88 -> :sswitch_1
        0xdb7 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static synthetic l(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 0

    invoke-static {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->p4(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic l0(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 0

    invoke-static {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->b4(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic l1(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 0

    invoke-static {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->w2(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic l2(Lnet/sf/saxon/om/NodeInfo;)Z
    .locals 1

    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->getLocalPart()Ljava/lang/String;

    move-result-object p0

    const-string v0, "withParam"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic l3(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const-string v0, "name"

    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/trans/PackageLoaderHE;->getQNameAttribute(Lnet/sf/saxon/om/NodeInfo;Ljava/lang/String;)Lnet/sf/saxon/om/StructuredQName;

    move-result-object v0

    const-string v1, ""

    const-string v2, "flags"

    invoke-interface {p1, v1, v2}, Lnet/sf/saxon/om/NodeInfo;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "s"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    new-instance v2, Lnet/sf/saxon/expr/instruct/UseAttributeSet;

    invoke-direct {v2, v0, v1}, Lnet/sf/saxon/expr/instruct/UseAttributeSet;-><init>(Lnet/sf/saxon/om/StructuredQName;Z)V

    const-string v0, "bSlot"

    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/trans/PackageLoaderHE;->getIntegerAttribute(Lnet/sf/saxon/om/NodeInfo;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v2, p1}, Lnet/sf/saxon/expr/instruct/UseAttributeSet;->setBindingSlot(I)V

    invoke-virtual {p0, v2}, Lnet/sf/saxon/trans/PackageLoaderHE;->Y1(Lnet/sf/saxon/expr/ComponentInvocation;)V

    return-object v2
.end method

.method public static synthetic l4(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    new-instance v0, Lnet/sf/saxon/expr/ContextItemExpression;

    invoke-direct {v0}, Lnet/sf/saxon/expr/ContextItemExpression;-><init>()V

    const-string v1, "type"

    invoke-virtual {p0, p1, v1}, Lnet/sf/saxon/trans/PackageLoaderHE;->parseAlphaCode(Lnet/sf/saxon/om/NodeInfo;Ljava/lang/String;)Lnet/sf/saxon/value/SequenceType;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sf/saxon/value/SequenceType;->getPrimaryType()Lnet/sf/saxon/type/ItemType;

    move-result-object v1

    const-string v2, ""

    const-string v3, "flags"

    invoke-interface {p1, v2, v3}, Lnet/sf/saxon/om/NodeInfo;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "a"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    invoke-virtual {p0}, Lnet/sf/saxon/trans/PackageLoaderHE;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p0

    invoke-virtual {p0, v1, p1}, Lnet/sf/saxon/Configuration;->makeContextItemStaticInfo(Lnet/sf/saxon/type/ItemType;Z)Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;

    move-result-object p0

    invoke-virtual {v0, p0}, Lnet/sf/saxon/expr/ContextItemExpression;->setStaticInfo(Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)V

    return-object v0
.end method

.method public static synthetic m(Lnet/sf/saxon/functions/hof/CoercedFunction;Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/trans/SymbolicName;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lnet/sf/saxon/trans/PackageLoaderHE;->k2(Lnet/sf/saxon/functions/hof/CoercedFunction;Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/trans/SymbolicName;)V

    return-void
.end method

.method public static synthetic m0(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 0

    invoke-static {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->Z4(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic m1(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 0

    invoke-static {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->c5(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic m2(Lnet/sf/saxon/expr/Expression;[Lnet/sf/saxon/expr/Expression;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    check-cast p0, Lnet/sf/saxon/expr/SystemFunctionCall;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/SystemFunctionCall;->allocateArgumentEvaluators([Lnet/sf/saxon/expr/Expression;)V

    return-void
.end method

.method public static synthetic m3(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->getFirstChildExpression(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    const-string v0, ""

    const-string v1, "flags"

    invoke-interface {p1, v0, v1}, Lnet/sf/saxon/om/NodeInfo;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const-string v2, "d"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-eqz p1, :cond_1

    const-string v3, "e"

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    new-instance p1, Lnet/sf/saxon/expr/instruct/ValueOf;

    invoke-direct {p1, p0, v2, v0}, Lnet/sf/saxon/expr/instruct/ValueOf;-><init>(Lnet/sf/saxon/expr/Expression;ZZ)V

    return-object p1
.end method

.method public static synthetic m4(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const-string v0, "name"

    const-string v1, ""

    invoke-interface {p1, v1, v0}, Lnet/sf/saxon/om/NodeInfo;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-static {v0}, Lnet/sf/saxon/om/NameChecker;->getQNameParts(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lnet/sf/saxon/om/QNameException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "nsuri"

    invoke-interface {p1, v1, v2}, Lnet/sf/saxon/om/NodeInfo;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lnet/sf/saxon/om/StructuredQName;

    const/4 v4, 0x0

    aget-object v5, v0, v4

    const/4 v6, 0x1

    aget-object v0, v0, v6

    invoke-direct {v3, v5, v2, v0}, Lnet/sf/saxon/om/StructuredQName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v8, Lnet/sf/saxon/om/FingerprintedQName;

    iget-object v0, p0, Lnet/sf/saxon/trans/PackageLoaderHE;->a:Lnet/sf/saxon/Configuration;

    invoke-virtual {v0}, Lnet/sf/saxon/Configuration;->getNamePool()Lnet/sf/saxon/om/NamePool;

    move-result-object v0

    invoke-direct {v8, v3, v0}, Lnet/sf/saxon/om/FingerprintedQName;-><init>(Lnet/sf/saxon/om/StructuredQName;Lnet/sf/saxon/om/NamePool;)V

    const-string v0, "namespaces"

    invoke-interface {p1, v1, v0}, Lnet/sf/saxon/om/NodeInfo;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lnet/sf/saxon/om/NamespaceMap;->emptyMap()Lnet/sf/saxon/om/NamespaceMap;

    move-result-object v2

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v3, v0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_4

    aget-object v7, v0, v5

    const/16 v9, 0x3d

    invoke-virtual {v7, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    const-string v10, "#"

    if-ltz v9, :cond_2

    invoke-virtual {v7, v4, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    move-object v11, v1

    :cond_0
    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v7, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    const-string v9, "~"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-static {v11}, Lnet/sf/saxon/lib/NamespaceConstant;->getUriForConventionalPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    :cond_1
    invoke-virtual {v2, v11, v7}, Lnet/sf/saxon/om/NamespaceMap;->put(Ljava/lang/String;Ljava/lang/String;)Lnet/sf/saxon/om/NamespaceMap;

    move-result-object v2

    goto :goto_1

    :cond_2
    iget-object v9, p0, Lnet/sf/saxon/trans/PackageLoaderHE;->e:Ljava/util/Stack;

    invoke-virtual {v9}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    move-object v7, v1

    :cond_3
    invoke-virtual {v9, v7, v6}, Lnet/sf/saxon/expr/parser/RetainedStaticContext;->getURIForPrefix(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v7, v9}, Lnet/sf/saxon/om/NamespaceMap;->put(Ljava/lang/String;Ljava/lang/String;)Lnet/sf/saxon/om/NamespaceMap;

    move-result-object v2

    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_4
    move-object v9, v2

    const-string v0, "validation"

    invoke-interface {p1, v1, v0}, Lnet/sf/saxon/om/NodeInfo;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-static {v0}, Lnet/sf/saxon/lib/Validation;->getCode(Ljava/lang/String;)I

    move-result v0

    goto :goto_2

    :cond_5
    const/4 v0, 0x4

    :goto_2
    const-string v2, "type"

    invoke-virtual {p0, p1, v2}, Lnet/sf/saxon/trans/PackageLoaderHE;->getTypeAttribute(Lnet/sf/saxon/om/NodeInfo;Ljava/lang/String;)Lnet/sf/saxon/type/SchemaType;

    move-result-object v12

    if-eqz v12, :cond_6

    const/16 v0, 0x8

    :cond_6
    move v13, v0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->getFirstChildExpression(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    new-instance v0, Lnet/sf/saxon/expr/instruct/FixedElement;

    const/4 v10, 0x1

    const/4 v11, 0x1

    move-object v7, v0

    invoke-direct/range {v7 .. v13}, Lnet/sf/saxon/expr/instruct/FixedElement;-><init>(Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/om/NamespaceMap;ZZLnet/sf/saxon/type/SchemaType;I)V

    const-string v2, "flags"

    invoke-interface {p1, v1, v2}, Lnet/sf/saxon/om/NodeInfo;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_7

    invoke-virtual {v0, p1}, Lnet/sf/saxon/expr/instruct/ElementCreator;->setInheritanceFlags(Ljava/lang/String;)V

    :cond_7
    invoke-virtual {v0, p0}, Lnet/sf/saxon/expr/instruct/ParentNodeConstructor;->setContentExpression(Lnet/sf/saxon/expr/Expression;)V

    return-object v0

    :catch_0
    move-exception p0

    new-instance p1, Lnet/sf/saxon/trans/XPathException;

    invoke-direct {p1, p0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static synthetic n(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 0

    invoke-static {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->z4(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic n0(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 0

    invoke-static {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->L2(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic n1(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/pattern/Pattern;
    .locals 0

    invoke-static {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->B3(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/pattern/Pattern;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic n2(Lnet/sf/saxon/functions/SystemFunction;[Lnet/sf/saxon/expr/Expression;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lnet/sf/saxon/functions/SystemFunction;->fixArguments([Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    return-void
.end method

.method public static synthetic n3(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->getFirstChildExpression(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->getSecondChildExpression(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    const-string v1, ""

    const-string v2, "calc"

    invoke-interface {p1, v1, v2}, Lnet/sf/saxon/om/NodeInfo;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lnet/sf/saxon/expr/Calculator;->reconstructCalculator(Ljava/lang/String;)Lnet/sf/saxon/expr/Calculator;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-static {p1}, Lnet/sf/saxon/expr/Calculator;->operatorFromCode(C)I

    move-result p1

    invoke-static {p1}, Lnet/sf/saxon/expr/Calculator;->getTokenFromOperator(I)I

    move-result p1

    new-instance v2, Lnet/sf/saxon/expr/compat/ArithmeticExpression10;

    invoke-direct {v2, v0, p1, p0}, Lnet/sf/saxon/expr/compat/ArithmeticExpression10;-><init>(Lnet/sf/saxon/expr/Expression;ILnet/sf/saxon/expr/Expression;)V

    invoke-virtual {v2, v1}, Lnet/sf/saxon/expr/compat/ArithmeticExpression10;->setCalculator(Lnet/sf/saxon/expr/Calculator;)V

    return-object v2
.end method

.method public static synthetic n4(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-static {}, Lnet/sf/saxon/value/EmptySequence;->getInstance()Lnet/sf/saxon/value/EmptySequence;

    move-result-object p0

    invoke-static {p0}, Lnet/sf/saxon/expr/Literal;->makeLiteral(Lnet/sf/saxon/om/GroundedValue;)Lnet/sf/saxon/expr/Literal;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic o(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 0

    invoke-static {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->L3(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic o0(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 0

    invoke-static {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->q4(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic o1(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 0

    invoke-static {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->P4(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic o2(Lnet/sf/saxon/expr/sort/MergeInstr$MergeSource;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/expr/sort/MergeInstr$MergeSource;->prepareForStreaming()V

    return-void
.end method

.method public static synthetic o3(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const-string v0, "name"

    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/trans/PackageLoaderHE;->getQNameAttribute(Lnet/sf/saxon/om/NodeInfo;Ljava/lang/String;)Lnet/sf/saxon/om/StructuredQName;

    move-result-object v0

    iget-object v1, p0, Lnet/sf/saxon/trans/PackageLoaderHE;->localBindings:Ljava/util/Stack;

    invoke-static {v1, v0}, Lnet/sf/saxon/trans/PackageLoaderHE;->a2(Ljava/util/Stack;Lnet/sf/saxon/om/StructuredQName;)Lnet/sf/saxon/expr/LocalBinding;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v0, "slot"

    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/trans/PackageLoaderHE;->getIntegerAttribute(Lnet/sf/saxon/om/NodeInfo;Ljava/lang/String;)I

    move-result p0

    new-instance p1, Lnet/sf/saxon/expr/LocalVariableReference;

    invoke-direct {p1, v1}, Lnet/sf/saxon/expr/LocalVariableReference;-><init>(Lnet/sf/saxon/expr/LocalBinding;)V

    invoke-virtual {p1, p0}, Lnet/sf/saxon/expr/LocalVariableReference;->setSlotNumber(I)V

    return-object p1

    :cond_0
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No binding found for local variable "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic o4(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->getFirstChildExpression(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    new-instance p1, Lnet/sf/saxon/expr/EmptyTextNodeRemover;

    invoke-direct {p1, p0}, Lnet/sf/saxon/expr/EmptyTextNodeRemover;-><init>(Lnet/sf/saxon/expr/Expression;)V

    return-object p1
.end method

.method public static synthetic p(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 0

    invoke-static {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->M3(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic p0(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 0

    invoke-static {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->Z2(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic p1(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 0

    invoke-static {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->I2(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic p2(Ljava/util/List;Lnet/sf/saxon/style/StylesheetPackage;Lnet/sf/saxon/expr/sort/MergeInstr$MergeSource;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/om/StructuredQName;

    invoke-virtual {p1}, Lnet/sf/saxon/expr/PackageData;->getAccumulatorRegistry()Lnet/sf/saxon/expr/accum/AccumulatorRegistry;

    move-result-object v2

    invoke-virtual {v2}, Lnet/sf/saxon/expr/accum/AccumulatorRegistry;->getAllAccumulators()Ljava/lang/Iterable;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/sf/saxon/expr/accum/Accumulator;

    invoke-virtual {v3}, Lnet/sf/saxon/expr/accum/Accumulator;->getAccumulatorName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v4

    invoke-virtual {v4, v1}, Lnet/sf/saxon/om/StructuredQName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iput-object v0, p2, Lnet/sf/saxon/expr/sort/MergeInstr$MergeSource;->accumulators:Ljava/util/Set;

    return-void
.end method

.method public static synthetic p3(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const-string v0, "op"

    const-string v1, ""

    invoke-interface {p1, v1, v0}, Lnet/sf/saxon/om/NodeInfo;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/sf/saxon/trans/PackageLoaderHE;->k5(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->getFirstChildExpression(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->getSecondChildExpression(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object v3

    new-instance v4, Lnet/sf/saxon/expr/ValueComparison;

    invoke-direct {v4, v2, v0, v3}, Lnet/sf/saxon/expr/ValueComparison;-><init>(Lnet/sf/saxon/expr/Expression;ILnet/sf/saxon/expr/Expression;)V

    const-string v0, "comp"

    invoke-interface {p1, v1, v0}, Lnet/sf/saxon/om/NodeInfo;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->makeAtomicComparer(Ljava/lang/String;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/sort/AtomicComparer;

    move-result-object p0

    invoke-virtual {v4, p0}, Lnet/sf/saxon/expr/ValueComparison;->setAtomicComparer(Lnet/sf/saxon/expr/sort/AtomicComparer;)V

    const-string p0, "onEmpty"

    invoke-interface {p1, v1, p0}, Lnet/sf/saxon/om/NodeInfo;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string p1, "1"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    invoke-static {p0}, Lnet/sf/saxon/value/BooleanValue;->get(Z)Lnet/sf/saxon/value/BooleanValue;

    move-result-object p0

    invoke-virtual {v4, p0}, Lnet/sf/saxon/expr/ValueComparison;->setResultWhenEmpty(Lnet/sf/saxon/value/BooleanValue;)V

    :cond_0
    return-object v4
.end method

.method public static synthetic p4(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const-string p0, "message"

    const-string v0, ""

    invoke-interface {p1, v0, p0}, Lnet/sf/saxon/om/NodeInfo;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "code"

    invoke-interface {p1, v0, v1}, Lnet/sf/saxon/om/NodeInfo;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "isTypeErr"

    invoke-interface {p1, v0, v2}, Lnet/sf/saxon/om/NodeInfo;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "1"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    new-instance v0, Lnet/sf/saxon/expr/ErrorExpression;

    invoke-direct {v0, p0, v1, p1}, Lnet/sf/saxon/expr/ErrorExpression;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v0
.end method

.method public static processAccumulatorList(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/expr/instruct/SourceDocument;Ljava/lang/String;)V
    .locals 2

    if-eqz p2, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/StringTokenizer;

    invoke-direct {v1, p2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lnet/sf/saxon/om/StructuredQName;->fromEQName(Ljava/lang/String;)Lnet/sf/saxon/om/StructuredQName;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/trans/PackageLoaderHE;->getPackStack()Ljava/util/Stack;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lnet/sf/saxon/style/StylesheetPackage;

    new-instance v1, Lcom/sunia/HTREnginev2/rnk;

    invoke-direct {v1, v0, p2, p1}, Lcom/sunia/HTREnginev2/rnk;-><init>(Ljava/util/List;Lnet/sf/saxon/style/StylesheetPackage;Lnet/sf/saxon/expr/instruct/SourceDocument;)V

    invoke-virtual {p0, v1}, Lnet/sf/saxon/trans/PackageLoaderHE;->addCompletionAction(Lnet/sf/saxon/om/Action;)V

    :cond_1
    return-void
.end method

.method public static synthetic q(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 0

    invoke-static {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->H3(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic q0(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 0

    invoke-static {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->Y3(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic q1(Lnet/sf/saxon/pattern/Pattern;)V
    .locals 0

    invoke-static {p0}, Lnet/sf/saxon/trans/PackageLoaderHE;->i2(Lnet/sf/saxon/pattern/Pattern;)V

    return-void
.end method

.method public static synthetic q2(Lnet/sf/saxon/expr/sort/MergeInstr;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/expr/sort/MergeInstr;->fixupGroupReferences()V

    return-void
.end method

.method public static synthetic q3(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/pattern/Pattern;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-static {}, Lnet/sf/saxon/pattern/AnchorPattern;->getInstance()Lnet/sf/saxon/pattern/AnchorPattern;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic q4(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const-string v0, "as"

    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/trans/PackageLoaderHE;->parseAlphaCode(Lnet/sf/saxon/om/NodeInfo;Ljava/lang/String;)Lnet/sf/saxon/value/SequenceType;

    move-result-object v3

    const-string v1, "xpath"

    invoke-virtual {p0, p1, v1}, Lnet/sf/saxon/trans/PackageLoaderHE;->getExpressionWithRole(Lnet/sf/saxon/om/NodeInfo;Ljava/lang/String;)Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    const-string v1, "cxt"

    invoke-virtual {p0, p1, v1}, Lnet/sf/saxon/trans/PackageLoaderHE;->getExpressionWithRole(Lnet/sf/saxon/om/NodeInfo;Ljava/lang/String;)Lnet/sf/saxon/expr/Expression;

    move-result-object v4

    const-string v1, "baseUri"

    invoke-virtual {p0, p1, v1}, Lnet/sf/saxon/trans/PackageLoaderHE;->getExpressionWithRole(Lnet/sf/saxon/om/NodeInfo;Ljava/lang/String;)Lnet/sf/saxon/expr/Expression;

    move-result-object v5

    const-string v1, "nsCxt"

    invoke-virtual {p0, p1, v1}, Lnet/sf/saxon/trans/PackageLoaderHE;->getExpressionWithRole(Lnet/sf/saxon/om/NodeInfo;Ljava/lang/String;)Lnet/sf/saxon/expr/Expression;

    move-result-object v6

    const-string v1, "sa"

    invoke-virtual {p0, p1, v1}, Lnet/sf/saxon/trans/PackageLoaderHE;->getExpressionWithRole(Lnet/sf/saxon/om/NodeInfo;Ljava/lang/String;)Lnet/sf/saxon/expr/Expression;

    move-result-object v7

    const-string v1, "wp"

    invoke-virtual {p0, p1, v1}, Lnet/sf/saxon/trans/PackageLoaderHE;->getExpressionWithRole(Lnet/sf/saxon/om/NodeInfo;Ljava/lang/String;)Lnet/sf/saxon/expr/Expression;

    move-result-object v8

    const-string v1, "options"

    invoke-virtual {p0, p1, v1}, Lnet/sf/saxon/trans/PackageLoaderHE;->getExpressionWithRole(Lnet/sf/saxon/om/NodeInfo;Ljava/lang/String;)Lnet/sf/saxon/expr/Expression;

    move-result-object v9

    new-instance v10, Lnet/sf/saxon/expr/instruct/EvaluateInstr;

    move-object v1, v10

    invoke-direct/range {v1 .. v7}, Lnet/sf/saxon/expr/instruct/EvaluateInstr;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/value/SequenceType;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    if-eqz v9, :cond_0

    invoke-virtual {v10, v9}, Lnet/sf/saxon/expr/instruct/EvaluateInstr;->setOptionsExpression(Lnet/sf/saxon/expr/Expression;)V

    :cond_0
    const-string v1, "schNS"

    const-string v2, ""

    invoke-interface {p1, v2, v1}, Lnet/sf/saxon/om/NodeInfo;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    const-string v4, " "

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v4, v1

    move v5, v3

    :goto_0
    if-ge v5, v4, :cond_2

    aget-object v6, v1, v5

    const-string v7, "##"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    move-object v6, v2

    :cond_1
    invoke-virtual {v10, v6}, Lnet/sf/saxon/expr/instruct/EvaluateInstr;->importSchemaNamespace(Ljava/lang/String;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lcom/sunia/HTREnginev2/mlk;

    invoke-direct {v2}, Lcom/sunia/HTREnginev2/mlk;-><init>()V

    invoke-static {v2}, Lnet/sf/saxon/pattern/NodeSelector;->of(Ljava/util/function/Predicate;)Lnet/sf/saxon/pattern/NodeSelector;

    move-result-object v2

    invoke-interface {p1, v2}, Lnet/sf/saxon/om/NodeInfo;->children(Lnet/sf/saxon/pattern/NodePredicate;)Ljava/lang/Iterable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move v2, v3

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnet/sf/saxon/om/NodeInfo;

    new-instance v5, Lnet/sf/saxon/expr/instruct/WithParam;

    invoke-direct {v5}, Lnet/sf/saxon/expr/instruct/WithParam;-><init>()V

    const-string v6, "name"

    invoke-virtual {p0, v4, v6}, Lnet/sf/saxon/trans/PackageLoaderHE;->getQNameAttribute(Lnet/sf/saxon/om/NodeInfo;Ljava/lang/String;)Lnet/sf/saxon/om/StructuredQName;

    move-result-object v6

    invoke-virtual {v5, v6}, Lnet/sf/saxon/expr/instruct/WithParam;->setVariableQName(Lnet/sf/saxon/om/StructuredQName;)V

    add-int/lit8 v6, v2, 0x1

    invoke-virtual {v5, v2}, Lnet/sf/saxon/expr/instruct/WithParam;->setSlotNumber(I)V

    invoke-virtual {p0, v4, v0}, Lnet/sf/saxon/trans/PackageLoaderHE;->parseAlphaCode(Lnet/sf/saxon/om/NodeInfo;Ljava/lang/String;)Lnet/sf/saxon/value/SequenceType;

    move-result-object v2

    invoke-virtual {v5, v2}, Lnet/sf/saxon/expr/instruct/WithParam;->setRequiredType(Lnet/sf/saxon/value/SequenceType;)V

    invoke-virtual {p0, v4}, Lnet/sf/saxon/trans/PackageLoaderHE;->getFirstChildExpression(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    invoke-virtual {v5, v10, v2}, Lnet/sf/saxon/expr/instruct/WithParam;->setSelectExpression(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v2, v6

    goto :goto_1

    :cond_3
    new-array p0, v3, [Lnet/sf/saxon/expr/instruct/WithParam;

    invoke-interface {v1, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lnet/sf/saxon/expr/instruct/WithParam;

    invoke-virtual {v10, p0}, Lnet/sf/saxon/expr/instruct/EvaluateInstr;->setActualParameters([Lnet/sf/saxon/expr/instruct/WithParam;)V

    if-eqz v8, :cond_4

    invoke-virtual {v10, v8}, Lnet/sf/saxon/expr/instruct/EvaluateInstr;->setDynamicParams(Lnet/sf/saxon/expr/Expression;)V

    :cond_4
    return-object v10
.end method

.method public static synthetic r(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 0

    invoke-static {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->A2(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic r0(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 0

    invoke-static {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->G3(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic r1(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 0

    invoke-static {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->Y2(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic r2(Ljava/util/List;Lnet/sf/saxon/style/StylesheetPackage;Lnet/sf/saxon/expr/instruct/SourceDocument;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/om/StructuredQName;

    invoke-virtual {p1}, Lnet/sf/saxon/expr/PackageData;->getAccumulatorRegistry()Lnet/sf/saxon/expr/accum/AccumulatorRegistry;

    move-result-object v2

    invoke-virtual {v2}, Lnet/sf/saxon/expr/accum/AccumulatorRegistry;->getAllAccumulators()Ljava/lang/Iterable;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/sf/saxon/expr/accum/Accumulator;

    invoke-virtual {v3}, Lnet/sf/saxon/expr/accum/Accumulator;->getAccumulatorName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v4

    invoke-virtual {v4, v1}, Lnet/sf/saxon/om/StructuredQName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {p2, v0}, Lnet/sf/saxon/expr/instruct/SourceDocument;->setUsedAccumulators(Ljava/util/Set;)V

    return-void
.end method

.method public static synthetic r3(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/pattern/Pattern;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    new-instance p0, Lnet/sf/saxon/pattern/UniversalPattern;

    invoke-direct {p0}, Lnet/sf/saxon/pattern/UniversalPattern;-><init>()V

    return-object p0
.end method

.method public static synthetic r4(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->getFirstChildExpression(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    const-string v1, "slot"

    invoke-virtual {p0, p1, v1}, Lnet/sf/saxon/trans/PackageLoaderHE;->getIntegerAttribute(Lnet/sf/saxon/om/NodeInfo;Ljava/lang/String;)I

    move-result v1

    const-string v2, "var"

    invoke-virtual {p0, p1, v2}, Lnet/sf/saxon/trans/PackageLoaderHE;->getQNameAttribute(Lnet/sf/saxon/om/NodeInfo;Ljava/lang/String;)Lnet/sf/saxon/om/StructuredQName;

    move-result-object v2

    const-string v3, "as"

    invoke-virtual {p0, p1, v3}, Lnet/sf/saxon/trans/PackageLoaderHE;->parseAlphaCode(Lnet/sf/saxon/om/NodeInfo;Ljava/lang/String;)Lnet/sf/saxon/value/SequenceType;

    move-result-object v3

    new-instance v4, Lnet/sf/saxon/expr/QuantifiedExpression;

    invoke-direct {v4}, Lnet/sf/saxon/expr/QuantifiedExpression;-><init>()V

    const/16 v5, 0x21

    invoke-virtual {v4, v5}, Lnet/sf/saxon/expr/QuantifiedExpression;->setOperator(I)V

    invoke-virtual {v4, v0}, Lnet/sf/saxon/expr/Assignation;->setSequence(Lnet/sf/saxon/expr/Expression;)V

    invoke-virtual {v4, v3}, Lnet/sf/saxon/expr/Assignation;->setRequiredType(Lnet/sf/saxon/value/SequenceType;)V

    invoke-virtual {v4, v1}, Lnet/sf/saxon/expr/Assignation;->setSlotNumber(I)V

    invoke-virtual {v4, v2}, Lnet/sf/saxon/expr/Assignation;->setVariableQName(Lnet/sf/saxon/om/StructuredQName;)V

    iget-object v0, p0, Lnet/sf/saxon/trans/PackageLoaderHE;->localBindings:Ljava/util/Stack;

    invoke-virtual {v0, v4}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->getSecondChildExpression(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    iget-object p0, p0, Lnet/sf/saxon/trans/PackageLoaderHE;->localBindings:Ljava/util/Stack;

    invoke-virtual {p0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    invoke-virtual {v4, p1}, Lnet/sf/saxon/expr/Assignation;->setAction(Lnet/sf/saxon/expr/Expression;)V

    return-object v4
.end method

.method public static synthetic s(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 0

    invoke-static {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->E3(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic s0(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 0

    invoke-static {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->R3(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic s1(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 0

    invoke-static {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->p3(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic s2(Lnet/sf/saxon/expr/instruct/UserFunction;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/UserFunction;->prepareForStreaming()V

    return-void
.end method

.method public static synthetic s3(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/pattern/Pattern;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->getFirstChildExpression(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    new-instance p1, Lnet/sf/saxon/pattern/BooleanExpressionPattern;

    invoke-direct {p1, p0}, Lnet/sf/saxon/pattern/BooleanExpressionPattern;-><init>(Lnet/sf/saxon/expr/Expression;)V

    return-object p1
.end method

.method public static synthetic s4(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->getFirstChildExpression(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->getSecondChildExpression(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    new-instance p1, Lnet/sf/saxon/expr/VennExpression;

    const/16 v1, 0x18

    invoke-direct {p1, v0, v1, p0}, Lnet/sf/saxon/expr/VennExpression;-><init>(Lnet/sf/saxon/expr/Expression;ILnet/sf/saxon/expr/Expression;)V

    return-object p1
.end method

.method public static synthetic t(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 0

    invoke-static {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->J4(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic t0(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 0

    invoke-static {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->T3(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic t1(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 0

    invoke-static {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->K3(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic t2(Lnet/sf/saxon/om/NodeInfo;)Z
    .locals 1

    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->getLocalPart()Ljava/lang/String;

    move-result-object p0

    const-string v0, "glob"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic t3(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/pattern/Pattern;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const-string v0, "test"

    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/trans/PackageLoaderHE;->parseAlphaCodeForItemType(Lnet/sf/saxon/om/NodeInfo;Ljava/lang/String;)Lnet/sf/saxon/type/ItemType;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/pattern/NodeTest;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->getFirstChildExpression(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    new-instance p1, Lnet/sf/saxon/pattern/GeneralNodePattern;

    invoke-direct {p1, p0, v0}, Lnet/sf/saxon/pattern/GeneralNodePattern;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/pattern/NodeTest;)V

    return-object p1
.end method

.method public static synthetic t4(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    sget-object p0, Lnet/sf/saxon/value/BooleanValue;->FALSE:Lnet/sf/saxon/value/BooleanValue;

    invoke-static {p0}, Lnet/sf/saxon/expr/Literal;->makeLiteral(Lnet/sf/saxon/om/GroundedValue;)Lnet/sf/saxon/expr/Literal;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic u(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/pattern/Pattern;
    .locals 0

    invoke-static {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->t3(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/pattern/Pattern;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic u0(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 0

    invoke-static {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->D4(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic u1(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 0

    invoke-static {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->e4(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic u2(Lnet/sf/saxon/style/StylesheetPackage;Ljava/util/List;Lnet/sf/saxon/trans/SimpleMode;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/expr/PackageData;->getAccumulatorRegistry()Lnet/sf/saxon/expr/accum/AccumulatorRegistry;

    move-result-object p0

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/om/StructuredQName;

    invoke-virtual {p0, v1}, Lnet/sf/saxon/expr/accum/AccumulatorRegistry;->getAccumulator(Lnet/sf/saxon/om/StructuredQName;)Lnet/sf/saxon/expr/accum/Accumulator;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p2, v0}, Lnet/sf/saxon/trans/Mode;->setAccumulators(Ljava/util/Set;)V

    return-void
.end method

.method public static synthetic u3(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/pattern/Pattern;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const-string v0, "test"

    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/trans/PackageLoaderHE;->parseAlphaCodeForItemType(Lnet/sf/saxon/om/NodeInfo;Ljava/lang/String;)Lnet/sf/saxon/type/ItemType;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/pattern/NodeTest;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->getFirstChildExpression(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    const-string v1, ""

    const-string v2, "flags"

    invoke-interface {p1, v1, v2}, Lnet/sf/saxon/om/NodeInfo;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lnet/sf/saxon/pattern/GeneralPositionalPattern;

    invoke-direct {v1, v0, p0}, Lnet/sf/saxon/pattern/GeneralPositionalPattern;-><init>(Lnet/sf/saxon/pattern/NodeTest;Lnet/sf/saxon/expr/Expression;)V

    const-string p0, "P"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    invoke-virtual {v1, p0}, Lnet/sf/saxon/pattern/GeneralPositionalPattern;->setUsesPosition(Z)V

    return-object v1
.end method

.method public static synthetic u4(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->getFirstChildExpression(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->getSecondChildExpression(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    const-string v1, ""

    const-string v2, "flags"

    invoke-interface {p1, v1, v2}, Lnet/sf/saxon/om/NodeInfo;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lnet/sf/saxon/expr/FilterExpression;

    invoke-direct {v1, v0, p0}, Lnet/sf/saxon/expr/FilterExpression;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    invoke-virtual {v1, p1}, Lnet/sf/saxon/expr/FilterExpression;->setFlags(Ljava/lang/String;)V

    return-object v1
.end method

.method public static synthetic v(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 0

    invoke-static {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->V4(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic v0(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 0

    invoke-static {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->N3(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic v1(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 0

    invoke-static {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->E2(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic v2(Lnet/sf/saxon/trans/SimpleMode;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/trans/SimpleMode;->prepareStreamability()V

    return-void
.end method

.method public static synthetic v3(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/pattern/Pattern;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const-string v0, "test"

    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/trans/PackageLoaderHE;->parseAlphaCodeForItemType(Lnet/sf/saxon/om/NodeInfo;Ljava/lang/String;)Lnet/sf/saxon/type/ItemType;

    move-result-object v0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->getFirstChildExpression(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    new-instance p1, Lnet/sf/saxon/pattern/NodeSetPattern;

    invoke-direct {p1, p0}, Lnet/sf/saxon/pattern/NodeSetPattern;-><init>(Lnet/sf/saxon/expr/Expression;)V

    invoke-virtual {p1, v0}, Lnet/sf/saxon/pattern/NodeSetPattern;->setItemType(Lnet/sf/saxon/type/ItemType;)V

    return-object p1
.end method

.method public static synthetic v4(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->getFirstChildExpression(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-static {p0}, Lnet/sf/saxon/expr/FirstItemExpression;->makeFirstItemExpression(Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic w(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 0

    invoke-static {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->U2(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic w0(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/pattern/Pattern;
    .locals 0

    invoke-static {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->C3(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/pattern/Pattern;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic w1(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 0

    invoke-static {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->b3(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic w2(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->getFirstChildExpression(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->getSecondChildExpression(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    new-instance p1, Lnet/sf/saxon/expr/AndExpression;

    invoke-direct {p1, v0, p0}, Lnet/sf/saxon/expr/AndExpression;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    return-object p1
.end method

.method public static synthetic w3(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/pattern/Pattern;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const-string v0, "test"

    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/trans/PackageLoaderHE;->parseAlphaCodeForItemType(Lnet/sf/saxon/om/NodeInfo;Ljava/lang/String;)Lnet/sf/saxon/type/ItemType;

    move-result-object p0

    instance-of p1, p0, Lnet/sf/saxon/pattern/NodeTest;

    if-eqz p1, :cond_0

    new-instance p1, Lnet/sf/saxon/pattern/NodeTestPattern;

    check-cast p0, Lnet/sf/saxon/pattern/NodeTest;

    invoke-direct {p1, p0}, Lnet/sf/saxon/pattern/NodeTestPattern;-><init>(Lnet/sf/saxon/pattern/NodeTest;)V

    return-object p1

    :cond_0
    new-instance p1, Lnet/sf/saxon/pattern/ItemTypePattern;

    invoke-direct {p1, p0}, Lnet/sf/saxon/pattern/ItemTypePattern;-><init>(Lnet/sf/saxon/type/ItemType;)V

    return-object p1
.end method

.method public static synthetic w4(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->makeRetainedStaticContext(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    move-result-object v0

    iget-object v1, p0, Lnet/sf/saxon/trans/PackageLoaderHE;->e:Ljava/util/Stack;

    invoke-virtual {v1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->getChildExpressionArray(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)[Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    const-string v2, ""

    const-string v3, "name"

    invoke-interface {p1, v2, v3}, Lnet/sf/saxon/om/NodeInfo;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "_STRING-JOIN_2.0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v2, "string-join"

    :cond_0
    invoke-static {v2, v0, v1}, Lnet/sf/saxon/functions/SystemFunction;->makeCall(Ljava/lang/String;Lnet/sf/saxon/expr/parser/RetainedStaticContext;[Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object v3

    if-eqz v3, :cond_3

    instance-of v2, v3, Lnet/sf/saxon/expr/SystemFunctionCall;

    if-eqz v2, :cond_2

    move-object v2, v3

    check-cast v2, Lnet/sf/saxon/expr/SystemFunctionCall;

    invoke-virtual {v2}, Lnet/sf/saxon/expr/SystemFunctionCall;->getTargetFunction()Lnet/sf/saxon/functions/SystemFunction;

    move-result-object v2

    invoke-virtual {v2, v0}, Lnet/sf/saxon/functions/SystemFunction;->setRetainedStaticContext(Lnet/sf/saxon/expr/parser/RetainedStaticContext;)V

    const/4 v0, 0x2

    invoke-interface {p1, v0}, Lnet/sf/saxon/om/NodeInfo;->iterateAxis(I)Lnet/sf/saxon/tree/iter/AxisIterator;

    move-result-object p1

    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    :goto_0
    invoke-interface {p1}, Lnet/sf/saxon/om/SequenceIterator;->next()Lnet/sf/saxon/om/Item;

    move-result-object v4

    check-cast v4, Lnet/sf/saxon/om/NodeInfo;

    if-eqz v4, :cond_1

    invoke-interface {v4}, Lnet/sf/saxon/om/NodeInfo;->getLocalPart()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4}, Lnet/sf/saxon/om/Item;->getStringValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v5, v4}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    invoke-virtual {v2, v0}, Lnet/sf/saxon/functions/SystemFunction;->importAttributes(Ljava/util/Properties;)V

    new-instance p1, Lcom/sunia/HTREnginev2/snk;

    invoke-direct {p1, v3, v1}, Lcom/sunia/HTREnginev2/snk;-><init>(Lnet/sf/saxon/expr/Expression;[Lnet/sf/saxon/expr/Expression;)V

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->addCompletionAction(Lnet/sf/saxon/om/Action;)V

    new-instance p1, Lcom/sunia/HTREnginev2/tnk;

    invoke-direct {p1, v2, v1}, Lcom/sunia/HTREnginev2/tnk;-><init>(Lnet/sf/saxon/functions/SystemFunction;[Lnet/sf/saxon/expr/Expression;)V

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->addCompletionAction(Lnet/sf/saxon/om/Action;)V

    :cond_2
    iget-object p0, p0, Lnet/sf/saxon/trans/PackageLoaderHE;->e:Ljava/util/Stack;

    invoke-virtual {p0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    return-object v3

    :cond_3
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown system function "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "#"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic x(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 0

    invoke-static {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->I4(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic x0(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 0

    invoke-static {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->a5(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic x1(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 0

    invoke-static {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->y3(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic x2(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    new-instance v0, Lnet/sf/saxon/expr/instruct/NextIteration;

    invoke-direct {v0}, Lnet/sf/saxon/expr/instruct/NextIteration;-><init>()V

    new-instance v1, Lnet/sf/saxon/pattern/NameTest;

    iget-object v2, p0, Lnet/sf/saxon/trans/PackageLoaderHE;->a:Lnet/sf/saxon/Configuration;

    invoke-virtual {v2}, Lnet/sf/saxon/Configuration;->getNamePool()Lnet/sf/saxon/om/NamePool;

    move-result-object v2

    const/4 v3, 0x1

    const-string v4, "http://ns.saxonica.com/xslt/export"

    const-string v5, "withParam"

    invoke-direct {v1, v3, v4, v5, v2}, Lnet/sf/saxon/pattern/NameTest;-><init>(ILjava/lang/String;Ljava/lang/String;Lnet/sf/saxon/om/NamePool;)V

    const/4 v2, 0x3

    invoke-interface {p1, v2, v1}, Lnet/sf/saxon/om/NodeInfo;->iterateAxis(ILnet/sf/saxon/pattern/NodePredicate;)Lnet/sf/saxon/tree/iter/AxisIterator;

    move-result-object p1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-interface {p1}, Lnet/sf/saxon/tree/iter/AxisIterator;->next()Lnet/sf/saxon/om/NodeInfo;

    move-result-object v2

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    new-instance v5, Lnet/sf/saxon/expr/instruct/WithParam;

    invoke-direct {v5}, Lnet/sf/saxon/expr/instruct/WithParam;-><init>()V

    const-string v6, ""

    const-string v7, "flags"

    invoke-interface {v2, v6, v7}, Lnet/sf/saxon/om/NodeInfo;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "name"

    invoke-virtual {p0, v2, v7}, Lnet/sf/saxon/trans/PackageLoaderHE;->getQNameAttribute(Lnet/sf/saxon/om/NodeInfo;Ljava/lang/String;)Lnet/sf/saxon/om/StructuredQName;

    move-result-object v7

    invoke-virtual {v5, v7}, Lnet/sf/saxon/expr/instruct/WithParam;->setVariableQName(Lnet/sf/saxon/om/StructuredQName;)V

    const-string v7, "slot"

    invoke-virtual {p0, v2, v7}, Lnet/sf/saxon/trans/PackageLoaderHE;->getIntegerAttribute(Lnet/sf/saxon/om/NodeInfo;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v5, v7}, Lnet/sf/saxon/expr/instruct/WithParam;->setSlotNumber(I)V

    sget-object v7, Lnet/sf/saxon/value/SequenceType;->ANY_SEQUENCE:Lnet/sf/saxon/value/SequenceType;

    invoke-virtual {v5, v7}, Lnet/sf/saxon/expr/instruct/WithParam;->setRequiredType(Lnet/sf/saxon/value/SequenceType;)V

    invoke-virtual {p0, v2}, Lnet/sf/saxon/trans/PackageLoaderHE;->getFirstChildExpression(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object v7

    invoke-virtual {v5, v0, v7}, Lnet/sf/saxon/expr/instruct/WithParam;->setSelectExpression(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    const-string v7, "as"

    invoke-virtual {p0, v2, v7}, Lnet/sf/saxon/trans/PackageLoaderHE;->parseAlphaCode(Lnet/sf/saxon/om/NodeInfo;Ljava/lang/String;)Lnet/sf/saxon/value/SequenceType;

    move-result-object v2

    invoke-virtual {v5, v2}, Lnet/sf/saxon/expr/instruct/WithParam;->setRequiredType(Lnet/sf/saxon/value/SequenceType;)V

    if-eqz v6, :cond_0

    const-string v2, "c"

    invoke-virtual {v6, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v4, v3

    :cond_0
    invoke-virtual {v5, v4}, Lnet/sf/saxon/expr/instruct/WithParam;->setTypeChecked(Z)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-array p0, v4, [Lnet/sf/saxon/expr/instruct/WithParam;

    invoke-interface {v1, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lnet/sf/saxon/expr/instruct/WithParam;

    invoke-virtual {v0, p0}, Lnet/sf/saxon/expr/instruct/NextIteration;->setParameters([Lnet/sf/saxon/expr/instruct/WithParam;)V

    return-object v0
.end method

.method public static synthetic x3(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/pattern/Pattern;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->b2(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/pattern/Pattern;

    move-result-object v0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->d2(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/pattern/Pattern;

    move-result-object p0

    const-string v1, ""

    const-string v2, "op"

    invoke-interface {p1, v1, v2}, Lnet/sf/saxon/om/NodeInfo;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, -0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "intersect"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_1
    const-string v1, "union"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    goto :goto_0

    :sswitch_2
    const-string v1, "except"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    packed-switch v2, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    new-instance p1, Lnet/sf/saxon/pattern/IntersectPattern;

    invoke-direct {p1, v0, p0}, Lnet/sf/saxon/pattern/IntersectPattern;-><init>(Lnet/sf/saxon/pattern/Pattern;Lnet/sf/saxon/pattern/Pattern;)V

    return-object p1

    :pswitch_1
    new-instance p1, Lnet/sf/saxon/pattern/UnionPattern;

    invoke-direct {p1, v0, p0}, Lnet/sf/saxon/pattern/UnionPattern;-><init>(Lnet/sf/saxon/pattern/Pattern;Lnet/sf/saxon/pattern/Pattern;)V

    return-object p1

    :pswitch_2
    new-instance p1, Lnet/sf/saxon/pattern/ExceptPattern;

    invoke-direct {p1, v0, p0}, Lnet/sf/saxon/pattern/ExceptPattern;-><init>(Lnet/sf/saxon/pattern/Pattern;Lnet/sf/saxon/pattern/Pattern;)V

    return-object p1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4cdcfae7 -> :sswitch_2
        0x6a456cf -> :sswitch_1
        0x1dfb651f -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static synthetic x4(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const-string v0, "to"

    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/trans/PackageLoaderHE;->parseAlphaCode(Lnet/sf/saxon/om/NodeInfo;Ljava/lang/String;)Lnet/sf/saxon/value/SequenceType;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/value/SequenceType;->getPrimaryType()Lnet/sf/saxon/type/ItemType;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/type/SpecificFunctionType;

    const-string v1, ""

    const-string v2, "diag"

    invoke-interface {p1, v1, v2}, Lnet/sf/saxon/om/NodeInfo;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnet/sf/saxon/expr/parser/RoleDiagnostic;->reconstruct(Ljava/lang/String;)Lnet/sf/saxon/expr/parser/RoleDiagnostic;

    move-result-object v1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->getFirstChildExpression(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    new-instance p1, Lnet/sf/saxon/functions/hof/FunctionSequenceCoercer;

    invoke-direct {p1, p0, v0, v1}, Lnet/sf/saxon/functions/hof/FunctionSequenceCoercer;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/type/SpecificFunctionType;Lnet/sf/saxon/expr/parser/RoleDiagnostic;)V

    return-object p1
.end method

.method public static synthetic y(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 0

    invoke-static {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->x2(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic y0(Lnet/sf/saxon/lib/ParseOptions;Lnet/sf/saxon/trans/PackageLoaderHE;)V
    .locals 0

    invoke-static {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->j2(Lnet/sf/saxon/lib/ParseOptions;Lnet/sf/saxon/trans/PackageLoaderHE;)V

    return-void
.end method

.method public static synthetic y1(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 0

    invoke-static {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->T4(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic y2(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const-string v0, ""

    const-string v1, "flags"

    invoke-interface {p1, v0, v1}, Lnet/sf/saxon/om/NodeInfo;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const-string v3, "t"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    new-instance v3, Lnet/sf/saxon/expr/instruct/NextMatch;

    invoke-direct {v3, v0}, Lnet/sf/saxon/expr/instruct/NextMatch;-><init>(Z)V

    invoke-virtual {p0, p1, v3, v2}, Lnet/sf/saxon/trans/PackageLoaderHE;->g5(Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/expr/Expression;Z)[Lnet/sf/saxon/expr/instruct/WithParam;

    move-result-object v0

    invoke-virtual {p0, p1, v3, v1}, Lnet/sf/saxon/trans/PackageLoaderHE;->g5(Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/expr/Expression;Z)[Lnet/sf/saxon/expr/instruct/WithParam;

    move-result-object p0

    invoke-virtual {v3, v0}, Lnet/sf/saxon/expr/instruct/ApplyNextMatchingTemplate;->setActualParams([Lnet/sf/saxon/expr/instruct/WithParam;)V

    invoke-virtual {v3, p0}, Lnet/sf/saxon/expr/instruct/ApplyNextMatchingTemplate;->setTunnelParams([Lnet/sf/saxon/expr/instruct/WithParam;)V

    return-object v3
.end method

.method public static synthetic y3(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-static {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->getChildExpressionList(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Ljava/util/List;

    move-result-object p0

    new-instance p1, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/expr/Expression;

    check-cast v0, Lnet/sf/saxon/expr/Literal;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Literal;->getGroundedValue()Lnet/sf/saxon/om/GroundedValue;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance p0, Lnet/sf/saxon/ma/arrays/SimpleArrayItem;

    invoke-direct {p0, p1}, Lnet/sf/saxon/ma/arrays/SimpleArrayItem;-><init>(Ljava/util/List;)V

    invoke-static {p0}, Lnet/sf/saxon/expr/Literal;->makeLiteral(Lnet/sf/saxon/om/GroundedValue;)Lnet/sf/saxon/expr/Literal;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic y4(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const-string v0, "higher order functions"

    invoke-virtual {p0, v0}, Lnet/sf/saxon/trans/PackageLoaderHE;->needsPELicense(Ljava/lang/String;)V

    const-string v0, ""

    const-string v1, "name"

    invoke-interface {p1, v0, v1}, Lnet/sf/saxon/om/NodeInfo;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "arity"

    invoke-virtual {p0, p1, v1}, Lnet/sf/saxon/trans/PackageLoaderHE;->getIntegerAttribute(Lnet/sf/saxon/om/NodeInfo;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->makeRetainedStaticContext(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    move-result-object p1

    const-string v2, "Q{"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {v0}, Lnet/sf/saxon/om/StructuredQName;->fromEQName(Ljava/lang/String;)Lnet/sf/saxon/om/StructuredQName;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sf/saxon/om/StructuredQName;->getURI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, -0x1

    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v3, "http://www.w3.org/2005/xpath-functions/math"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x3

    goto :goto_0

    :sswitch_1
    const-string v3, "http://saxon.sf.net/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v4, 0x2

    goto :goto_0

    :sswitch_2
    const-string v3, "http://www.w3.org/2005/xpath-functions/array"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v4, 0x1

    goto :goto_0

    :sswitch_3
    const-string v3, "http://www.w3.org/2005/xpath-functions/map"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    const/4 v4, 0x0

    :goto_0
    packed-switch v4, :pswitch_data_0

    const/4 p0, 0x0

    goto :goto_1

    :pswitch_0
    invoke-static {}, Lnet/sf/saxon/functions/MathFunctionSet;->getInstance()Lnet/sf/saxon/functions/MathFunctionSet;

    move-result-object p0

    invoke-virtual {p1}, Lnet/sf/saxon/om/StructuredQName;->getLocalPart()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v1}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->makeFunction(Ljava/lang/String;I)Lnet/sf/saxon/functions/SystemFunction;

    move-result-object p0

    goto :goto_1

    :pswitch_1
    invoke-virtual {p0}, Lnet/sf/saxon/trans/PackageLoaderHE;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p0

    invoke-virtual {p1}, Lnet/sf/saxon/om/StructuredQName;->getLocalPart()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v1}, Lnet/sf/saxon/Configuration;->bindSaxonExtensionFunction(Ljava/lang/String;I)Lnet/sf/saxon/functions/SystemFunction;

    move-result-object p0

    goto :goto_1

    :pswitch_2
    invoke-static {}, Lnet/sf/saxon/ma/arrays/ArrayFunctionSet;->getInstance()Lnet/sf/saxon/ma/arrays/ArrayFunctionSet;

    move-result-object p0

    invoke-virtual {p1}, Lnet/sf/saxon/om/StructuredQName;->getLocalPart()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v1}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->makeFunction(Ljava/lang/String;I)Lnet/sf/saxon/functions/SystemFunction;

    move-result-object p0

    goto :goto_1

    :pswitch_3
    invoke-static {}, Lnet/sf/saxon/ma/map/MapFunctionSet;->getInstance()Lnet/sf/saxon/ma/map/MapFunctionSet;

    move-result-object p0

    invoke-virtual {p1}, Lnet/sf/saxon/om/StructuredQName;->getLocalPart()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v1}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->makeFunction(Ljava/lang/String;I)Lnet/sf/saxon/functions/SystemFunction;

    move-result-object p0

    goto :goto_1

    :cond_4
    invoke-static {v0, p1, v1}, Lnet/sf/saxon/functions/SystemFunction;->makeFunction(Ljava/lang/String;Lnet/sf/saxon/expr/parser/RetainedStaticContext;I)Lnet/sf/saxon/functions/SystemFunction;

    move-result-object p0

    :goto_1
    if-eqz p0, :cond_5

    new-instance p1, Lnet/sf/saxon/functions/hof/FunctionLiteral;

    invoke-direct {p1, p0}, Lnet/sf/saxon/functions/hof/FunctionLiteral;-><init>(Lnet/sf/saxon/om/Function;)V

    return-object p1

    :cond_5
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown system function "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "#"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SXPK0002"

    invoke-direct {p0, p1, v0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p0

    :sswitch_data_0
    .sparse-switch
        -0x14fd9c60 -> :sswitch_3
        0x3356af9d -> :sswitch_2
        0x53b7a276 -> :sswitch_1
        0x754a1144 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static synthetic z(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 0

    invoke-static {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->j4(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic z0(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 0

    invoke-static {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->v4(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic z1(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 0

    invoke-static {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->P2(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic z2(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const-string v0, "kind"

    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/trans/PackageLoaderHE;->getIntegerAttribute(Lnet/sf/saxon/om/NodeInfo;Ljava/lang/String;)I

    move-result v0

    const-string v1, "content"

    const-string v2, ""

    invoke-interface {p1, v2, v1}, Lnet/sf/saxon/om/NodeInfo;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "baseURI"

    invoke-interface {p1, v2, v3}, Lnet/sf/saxon/om/NodeInfo;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    const/4 v5, 0x1

    if-eq v0, v5, :cond_3

    if-eq v0, v4, :cond_2

    const/16 v6, 0x8

    if-eq v0, v6, :cond_2

    const/16 v6, 0x9

    if-eq v0, v6, :cond_3

    new-instance v3, Lnet/sf/saxon/tree/util/Orphan;

    invoke-virtual {p0}, Lnet/sf/saxon/trans/PackageLoaderHE;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p0

    invoke-direct {v3, p0}, Lnet/sf/saxon/tree/util/Orphan;-><init>(Lnet/sf/saxon/Configuration;)V

    int-to-short p0, v0

    invoke-virtual {v3, p0}, Lnet/sf/saxon/tree/util/Orphan;->setNodeKind(S)V

    invoke-static {v1}, Lnet/sf/saxon/str/StringView;->tidy(Ljava/lang/String;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    invoke-virtual {v3, p0}, Lnet/sf/saxon/tree/util/Orphan;->setStringValue(Lnet/sf/saxon/str/UnicodeString;)V

    const-string p0, "prefix"

    invoke-interface {p1, v2, p0}, Lnet/sf/saxon/om/NodeInfo;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "ns"

    invoke-interface {p1, v2, v0}, Lnet/sf/saxon/om/NodeInfo;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "localName"

    invoke-interface {p1, v2, v1}, Lnet/sf/saxon/om/NodeInfo;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    new-instance v1, Lnet/sf/saxon/om/FingerprintedQName;

    if-nez p0, :cond_0

    move-object p0, v2

    :cond_0
    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    move-object v2, v0

    :goto_0
    invoke-direct {v1, p0, v2, p1}, Lnet/sf/saxon/om/FingerprintedQName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Lnet/sf/saxon/tree/util/Orphan;->setNodeName(Lnet/sf/saxon/om/NodeName;)V

    goto :goto_1

    :cond_2
    new-instance v3, Lnet/sf/saxon/tree/util/Orphan;

    invoke-virtual {p0}, Lnet/sf/saxon/trans/PackageLoaderHE;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p0

    invoke-direct {v3, p0}, Lnet/sf/saxon/tree/util/Orphan;-><init>(Lnet/sf/saxon/Configuration;)V

    int-to-short p0, v0

    invoke-virtual {v3, p0}, Lnet/sf/saxon/tree/util/Orphan;->setNodeKind(S)V

    invoke-static {v1}, Lnet/sf/saxon/str/StringView;->tidy(Ljava/lang/String;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    invoke-virtual {v3, p0}, Lnet/sf/saxon/tree/util/Orphan;->setStringValue(Lnet/sf/saxon/str/UnicodeString;)V

    goto :goto_1

    :cond_3
    new-instance p1, Ljavax/xml/transform/stream/StreamSource;

    new-instance v2, Ljava/io/StringReader;

    invoke-direct {v2, v1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, v2, v3}, Ljavax/xml/transform/stream/StreamSource;-><init>(Ljava/io/Reader;Ljava/lang/String;)V

    iget-object p0, p0, Lnet/sf/saxon/trans/PackageLoaderHE;->a:Lnet/sf/saxon/Configuration;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/Configuration;->buildDocumentTree(Ljavax/xml/transform/Source;)Lnet/sf/saxon/om/TreeInfo;

    move-result-object p0

    invoke-interface {p0}, Lnet/sf/saxon/om/TreeInfo;->getRootNode()Lnet/sf/saxon/om/NodeInfo;

    move-result-object v3

    if-ne v0, v5, :cond_4

    sget-object p0, Lnet/sf/saxon/pattern/NodeKindTest;->ELEMENT:Lnet/sf/saxon/pattern/NodeKindTest;

    invoke-interface {v3, v4, p0}, Lnet/sf/saxon/om/NodeInfo;->iterateAxis(ILnet/sf/saxon/pattern/NodePredicate;)Lnet/sf/saxon/tree/iter/AxisIterator;

    move-result-object p0

    invoke-interface {p0}, Lnet/sf/saxon/tree/iter/AxisIterator;->next()Lnet/sf/saxon/om/NodeInfo;

    move-result-object p0

    invoke-static {p0}, Lnet/sf/saxon/tree/wrapper/VirtualCopy;->makeVirtualCopy(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/tree/wrapper/VirtualCopy;

    move-result-object v3

    :cond_4
    :goto_1
    invoke-static {v3}, Lnet/sf/saxon/expr/Literal;->makeLiteral(Lnet/sf/saxon/om/GroundedValue;)Lnet/sf/saxon/expr/Literal;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic z3(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/pattern/Pattern;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const-string v0, "test"

    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/trans/PackageLoaderHE;->parseAlphaCodeForItemType(Lnet/sf/saxon/om/NodeInfo;Ljava/lang/String;)Lnet/sf/saxon/type/ItemType;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/pattern/NodeTest;

    const-string v1, "pos"

    invoke-virtual {p0, p1, v1}, Lnet/sf/saxon/trans/PackageLoaderHE;->getIntegerAttribute(Lnet/sf/saxon/om/NodeInfo;Ljava/lang/String;)I

    move-result p0

    new-instance p1, Lnet/sf/saxon/pattern/SimplePositionalPattern;

    invoke-direct {p1, v0, p0}, Lnet/sf/saxon/pattern/SimplePositionalPattern;-><init>(Lnet/sf/saxon/pattern/NodeTest;I)V

    return-object p1
.end method

.method public static synthetic z4(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->getFirstChildExpression(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->getSecondChildExpression(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    new-instance p1, Lnet/sf/saxon/expr/IdentityComparison;

    const/16 v1, 0x27

    invoke-direct {p1, v0, v1, p0}, Lnet/sf/saxon/expr/IdentityComparison;-><init>(Lnet/sf/saxon/expr/Expression;ILnet/sf/saxon/expr/Expression;)V

    return-object p1
.end method


# virtual methods
.method public final A5()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/trans/PackageLoaderHE;->packStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/style/StylesheetPackage;

    iget-object v1, p0, Lnet/sf/saxon/trans/PackageLoaderHE;->fixups:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/sf/saxon/expr/ComponentInvocation;

    invoke-virtual {p0, v0, v2}, Lnet/sf/saxon/trans/PackageLoaderHE;->processComponentReference(Lnet/sf/saxon/style/StylesheetPackage;Lnet/sf/saxon/expr/ComponentInvocation;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_1
    invoke-virtual {v0}, Lnet/sf/saxon/style/StylesheetPackage;->allocateBinderySlots()V

    return-void
.end method

.method public final B5(Ljava/lang/String;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/om/StructuredQName;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const-string p0, "Q{"

    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {p1}, Lnet/sf/saxon/om/StructuredQName;->fromEQName(Ljava/lang/String;)Lnet/sf/saxon/om/StructuredQName;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, ":"

    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-interface {p2}, Lnet/sf/saxon/om/NodeInfo;->getAllNamespaces()Lnet/sf/saxon/om/NamespaceMap;

    move-result-object p0

    const/4 p2, 0x1

    invoke-static {p1, p2, p2, p0}, Lnet/sf/saxon/om/StructuredQName;->fromLexicalQName(Ljava/lang/String;ZZLnet/sf/saxon/om/NamespaceResolver;)Lnet/sf/saxon/om/StructuredQName;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Lnet/sf/saxon/om/StructuredQName;

    const-string p2, ""

    invoke-direct {p0, p2, p2, p1}, Lnet/sf/saxon/om/StructuredQName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public final Y1(Lnet/sf/saxon/expr/ComponentInvocation;)V
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/trans/PackageLoaderHE;->fixups:Ljava/util/Stack;

    invoke-virtual {p0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final Z1(Ljava/lang/String;I)Lnet/sf/saxon/s9api/Location;
    .locals 2

    iget-object v0, p0, Lnet/sf/saxon/trans/PackageLoaderHE;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/z/IntHashMap;

    if-nez v0, :cond_0

    new-instance v0, Lnet/sf/saxon/z/IntHashMap;

    invoke-direct {v0}, Lnet/sf/saxon/z/IntHashMap;-><init>()V

    iget-object p0, p0, Lnet/sf/saxon/trans/PackageLoaderHE;->f:Ljava/util/Map;

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {v0, p2}, Lnet/sf/saxon/z/IntHashMap;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/s9api/Location;

    if-nez p0, :cond_1

    new-instance p0, Lnet/sf/saxon/expr/parser/Loc;

    const/4 v1, -0x1

    invoke-direct {p0, p1, p2, v1}, Lnet/sf/saxon/expr/parser/Loc;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, p2, p0}, Lnet/sf/saxon/z/IntHashMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object p0
.end method

.method public addCompletionAction(Lnet/sf/saxon/om/Action;)V
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/trans/PackageLoaderHE;->completionActions:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addVendorFunctionLibrary(Lnet/sf/saxon/functions/FunctionLibraryList;Lnet/sf/saxon/Configuration;)V
    .locals 0

    return-void
.end method

.method public final b2(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/pattern/Pattern;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const/4 v0, 0x3

    sget-object v1, Lnet/sf/saxon/pattern/NodeKindTest;->ELEMENT:Lnet/sf/saxon/pattern/NodeKindTest;

    invoke-interface {p1, v0, v1}, Lnet/sf/saxon/om/NodeInfo;->iterateAxis(ILnet/sf/saxon/pattern/NodePredicate;)Lnet/sf/saxon/tree/iter/AxisIterator;

    move-result-object p1

    invoke-interface {p1}, Lnet/sf/saxon/tree/iter/AxisIterator;->next()Lnet/sf/saxon/om/NodeInfo;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->e5(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/pattern/Pattern;

    move-result-object p0

    return-object p0
.end method

.method public final d2(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/pattern/Pattern;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/trans/PackageLoaderHE;->getChild(Lnet/sf/saxon/om/NodeInfo;I)Lnet/sf/saxon/om/NodeInfo;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->e5(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/pattern/Pattern;

    move-result-object p0

    return-object p0
.end method

.method public final e2(Lnet/sf/saxon/trans/SymbolicName$F;)Lnet/sf/saxon/expr/instruct/UserFunction;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/trans/PackageLoaderHE;->userFunctions:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/expr/instruct/UserFunction;

    return-object p0
.end method

.method public final e5(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/pattern/Pattern;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-interface {p1}, Lnet/sf/saxon/om/NodeInfo;->getLocalPart()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lnet/sf/saxon/trans/PackageLoaderHE;->m:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/trans/PackageLoaderHE$PatternLoader;

    if-eqz v1, :cond_1

    invoke-interface {v1, p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE$PatternLoader;->loadFrom(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/pattern/Pattern;

    move-result-object v0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->h5(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/s9api/Location;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/expr/Expression;->setLocation(Lnet/sf/saxon/s9api/Location;)V

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->makeRetainedStaticContext(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    move-result-object p1

    invoke-virtual {v0, p1}, Lnet/sf/saxon/expr/Expression;->setRetainedStaticContext(Lnet/sf/saxon/expr/parser/RetainedStaticContext;)V

    instance-of p1, v0, Lnet/sf/saxon/pattern/GeneralNodePattern;

    if-eqz p1, :cond_0

    new-instance p1, Lcom/sunia/HTREnginev2/znk;

    invoke-direct {p1, v0}, Lcom/sunia/HTREnginev2/znk;-><init>(Lnet/sf/saxon/pattern/Pattern;)V

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->addCompletionAction(Lnet/sf/saxon/om/Action;)V

    :cond_0
    return-object v0

    :cond_1
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot load pattern with tag "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SXPK0002"

    invoke-direct {p0, p1, v0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p0
.end method

.method public final f2(Ljava/lang/String;)Ljava/util/Properties;
    .locals 7

    :try_start_0
    new-instance p0, Ljava/io/StringReader;

    invoke-direct {p0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    new-instance p1, Ljava/util/Properties;

    invoke-direct {p1}, Ljava/util/Properties;-><init>()V

    new-instance v0, Ljava/io/LineNumberReader;

    invoke-direct {v0, p0}, Ljava/io/LineNumberReader;-><init>(Ljava/io/Reader;)V

    :goto_0
    invoke-virtual {v0}, Ljava/io/LineNumberReader;->readLine()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_4

    const/16 v1, 0x3d

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    const-string v6, ""

    if-ne v1, v4, :cond_0

    move-object p0, v6

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    :try_start_1
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :goto_1
    const-string v1, "item-separator"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "Q{http://saxon.sf.net/}newline"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v1, :cond_2

    :cond_1
    const/4 v1, -0x1

    :try_start_2
    invoke-static {p0, v2, v6, v1}, Lnet/sf/saxon/ma/json/JsonParser;->unescape(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p0
    :try_end_2
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_0
    :cond_2
    :try_start_3
    const-string v1, "Q{"

    invoke-virtual {v3, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    :cond_3
    invoke-virtual {p1, v3, p0}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :cond_4
    return-object p1

    :catch_1
    move-exception p0

    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method

.method public final f5(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/sort/SortKeyDefinitionList;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v1, Lnet/sf/saxon/pattern/NameTest;

    iget-object v2, p0, Lnet/sf/saxon/trans/PackageLoaderHE;->a:Lnet/sf/saxon/Configuration;

    invoke-virtual {v2}, Lnet/sf/saxon/Configuration;->getNamePool()Lnet/sf/saxon/om/NamePool;

    move-result-object v2

    const/4 v3, 0x1

    const-string v4, "http://ns.saxonica.com/xslt/export"

    const-string v5, "sortKey"

    invoke-direct {v1, v3, v4, v5, v2}, Lnet/sf/saxon/pattern/NameTest;-><init>(ILjava/lang/String;Ljava/lang/String;Lnet/sf/saxon/om/NamePool;)V

    const/4 v2, 0x3

    invoke-interface {p1, v2, v1}, Lnet/sf/saxon/om/NodeInfo;->iterateAxis(ILnet/sf/saxon/pattern/NodePredicate;)Lnet/sf/saxon/tree/iter/AxisIterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Lnet/sf/saxon/tree/iter/AxisIterator;->next()Lnet/sf/saxon/om/NodeInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v2, Lnet/sf/saxon/expr/sort/SortKeyDefinition;

    invoke-direct {v2}, Lnet/sf/saxon/expr/sort/SortKeyDefinition;-><init>()V

    const-string v4, ""

    const-string v5, "comp"

    invoke-interface {v1, v4, v5}, Lnet/sf/saxon/om/NodeInfo;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {p0, v4, v1}, Lnet/sf/saxon/trans/PackageLoaderHE;->makeAtomicComparer(Ljava/lang/String;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/sort/AtomicComparer;

    move-result-object v4

    invoke-virtual {v2, v4}, Lnet/sf/saxon/expr/sort/SortKeyDefinition;->setFinalComparator(Lnet/sf/saxon/expr/sort/AtomicComparer;)V

    :cond_0
    const-string v4, "select"

    invoke-virtual {p0, v1, v4}, Lnet/sf/saxon/trans/PackageLoaderHE;->getExpressionWithRole(Lnet/sf/saxon/om/NodeInfo;Ljava/lang/String;)Lnet/sf/saxon/expr/Expression;

    move-result-object v4

    invoke-virtual {v2, v4, v3}, Lnet/sf/saxon/expr/sort/SortKeyDefinition;->setSortKey(Lnet/sf/saxon/expr/Expression;Z)V

    const-string v4, "order"

    invoke-virtual {p0, v1, v4}, Lnet/sf/saxon/trans/PackageLoaderHE;->getExpressionWithRole(Lnet/sf/saxon/om/NodeInfo;Ljava/lang/String;)Lnet/sf/saxon/expr/Expression;

    move-result-object v4

    invoke-virtual {v2, v4}, Lnet/sf/saxon/expr/sort/SortKeyDefinition;->setOrder(Lnet/sf/saxon/expr/Expression;)V

    const-string v4, "lang"

    invoke-virtual {p0, v1, v4}, Lnet/sf/saxon/trans/PackageLoaderHE;->getExpressionWithRole(Lnet/sf/saxon/om/NodeInfo;Ljava/lang/String;)Lnet/sf/saxon/expr/Expression;

    move-result-object v4

    invoke-virtual {v2, v4}, Lnet/sf/saxon/expr/sort/SortKeyDefinition;->setLanguage(Lnet/sf/saxon/expr/Expression;)V

    const-string v4, "collation"

    invoke-virtual {p0, v1, v4}, Lnet/sf/saxon/trans/PackageLoaderHE;->getExpressionWithRole(Lnet/sf/saxon/om/NodeInfo;Ljava/lang/String;)Lnet/sf/saxon/expr/Expression;

    move-result-object v4

    invoke-virtual {v2, v4}, Lnet/sf/saxon/expr/sort/SortKeyDefinition;->setCollationNameExpression(Lnet/sf/saxon/expr/Expression;)V

    const-string v4, "caseOrder"

    invoke-virtual {p0, v1, v4}, Lnet/sf/saxon/trans/PackageLoaderHE;->getExpressionWithRole(Lnet/sf/saxon/om/NodeInfo;Ljava/lang/String;)Lnet/sf/saxon/expr/Expression;

    move-result-object v4

    invoke-virtual {v2, v4}, Lnet/sf/saxon/expr/sort/SortKeyDefinition;->setCaseOrder(Lnet/sf/saxon/expr/Expression;)V

    const-string v4, "stable"

    invoke-virtual {p0, v1, v4}, Lnet/sf/saxon/trans/PackageLoaderHE;->getExpressionWithRole(Lnet/sf/saxon/om/NodeInfo;Ljava/lang/String;)Lnet/sf/saxon/expr/Expression;

    move-result-object v4

    invoke-virtual {v2, v4}, Lnet/sf/saxon/expr/sort/SortKeyDefinition;->setStable(Lnet/sf/saxon/expr/Expression;)V

    const-string v4, "dataType"

    invoke-virtual {p0, v1, v4}, Lnet/sf/saxon/trans/PackageLoaderHE;->getExpressionWithRole(Lnet/sf/saxon/om/NodeInfo;Ljava/lang/String;)Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-virtual {v2, v1}, Lnet/sf/saxon/expr/sort/SortKeyDefinition;->setDataTypeExpression(Lnet/sf/saxon/expr/Expression;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance p0, Lnet/sf/saxon/expr/sort/SortKeyDefinitionList;

    const/4 p1, 0x0

    new-array p1, p1, [Lnet/sf/saxon/expr/sort/SortKeyDefinition;

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lnet/sf/saxon/expr/sort/SortKeyDefinition;

    invoke-direct {p0, p1}, Lnet/sf/saxon/expr/sort/SortKeyDefinitionList;-><init>([Lnet/sf/saxon/expr/sort/SortKeyDefinition;)V

    return-object p0
.end method

.method public final g5(Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/expr/Expression;Z)[Lnet/sf/saxon/expr/instruct/WithParam;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v1, Lnet/sf/saxon/pattern/NameTest;

    iget-object v2, p0, Lnet/sf/saxon/trans/PackageLoaderHE;->a:Lnet/sf/saxon/Configuration;

    invoke-virtual {v2}, Lnet/sf/saxon/Configuration;->getNamePool()Lnet/sf/saxon/om/NamePool;

    move-result-object v2

    const/4 v3, 0x1

    const-string v4, "http://ns.saxonica.com/xslt/export"

    const-string v5, "withParam"

    invoke-direct {v1, v3, v4, v5, v2}, Lnet/sf/saxon/pattern/NameTest;-><init>(ILjava/lang/String;Ljava/lang/String;Lnet/sf/saxon/om/NamePool;)V

    const/4 v2, 0x3

    invoke-interface {p1, v2, v1}, Lnet/sf/saxon/om/NodeInfo;->iterateAxis(ILnet/sf/saxon/pattern/NodePredicate;)Lnet/sf/saxon/tree/iter/AxisIterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Lnet/sf/saxon/tree/iter/AxisIterator;->next()Lnet/sf/saxon/om/NodeInfo;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    const-string v4, ""

    const-string v5, "flags"

    invoke-interface {v1, v4, v5}, Lnet/sf/saxon/om/NodeInfo;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    const-string v5, "t"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v5, v3

    goto :goto_1

    :cond_1
    move v5, v2

    :goto_1
    if-ne p3, v5, :cond_0

    new-instance v5, Lnet/sf/saxon/expr/instruct/WithParam;

    invoke-direct {v5}, Lnet/sf/saxon/expr/instruct/WithParam;-><init>()V

    const-string v6, "name"

    invoke-virtual {p0, v1, v6}, Lnet/sf/saxon/trans/PackageLoaderHE;->getQNameAttribute(Lnet/sf/saxon/om/NodeInfo;Ljava/lang/String;)Lnet/sf/saxon/om/StructuredQName;

    move-result-object v6

    invoke-virtual {v5, v6}, Lnet/sf/saxon/expr/instruct/WithParam;->setVariableQName(Lnet/sf/saxon/om/StructuredQName;)V

    invoke-virtual {p0, v1}, Lnet/sf/saxon/trans/PackageLoaderHE;->getFirstChildExpression(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object v6

    invoke-virtual {v5, p2, v6}, Lnet/sf/saxon/expr/instruct/WithParam;->setSelectExpression(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    const-string v6, "as"

    invoke-virtual {p0, v1, v6}, Lnet/sf/saxon/trans/PackageLoaderHE;->parseAlphaCode(Lnet/sf/saxon/om/NodeInfo;Ljava/lang/String;)Lnet/sf/saxon/value/SequenceType;

    move-result-object v1

    invoke-virtual {v5, v1}, Lnet/sf/saxon/expr/instruct/WithParam;->setRequiredType(Lnet/sf/saxon/value/SequenceType;)V

    if-eqz v4, :cond_2

    const-string v1, "c"

    invoke-virtual {v4, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v2, v3

    :cond_2
    invoke-virtual {v5, v2}, Lnet/sf/saxon/expr/instruct/WithParam;->setTypeChecked(Z)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    new-array p0, v2, [Lnet/sf/saxon/expr/instruct/WithParam;

    invoke-interface {v0, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lnet/sf/saxon/expr/instruct/WithParam;

    return-object p0
.end method

.method public getChild(Lnet/sf/saxon/om/NodeInfo;I)Lnet/sf/saxon/om/NodeInfo;
    .locals 1

    const/4 p0, 0x3

    sget-object v0, Lnet/sf/saxon/pattern/NodeKindTest;->ELEMENT:Lnet/sf/saxon/pattern/NodeKindTest;

    invoke-interface {p1, p0, v0}, Lnet/sf/saxon/om/NodeInfo;->iterateAxis(ILnet/sf/saxon/pattern/NodePredicate;)Lnet/sf/saxon/tree/iter/AxisIterator;

    move-result-object p0

    invoke-interface {p0}, Lnet/sf/saxon/tree/iter/AxisIterator;->next()Lnet/sf/saxon/om/NodeInfo;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    invoke-interface {p0}, Lnet/sf/saxon/tree/iter/AxisIterator;->next()Lnet/sf/saxon/om/NodeInfo;

    move-result-object p1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method public getChildWithRole(Lnet/sf/saxon/om/NodeInfo;Ljava/lang/String;)Lnet/sf/saxon/om/NodeInfo;
    .locals 2

    const/4 p0, 0x3

    sget-object v0, Lnet/sf/saxon/pattern/NodeKindTest;->ELEMENT:Lnet/sf/saxon/pattern/NodeKindTest;

    invoke-interface {p1, p0, v0}, Lnet/sf/saxon/om/NodeInfo;->iterateAxis(ILnet/sf/saxon/pattern/NodePredicate;)Lnet/sf/saxon/tree/iter/AxisIterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Lnet/sf/saxon/tree/iter/AxisIterator;->next()Lnet/sf/saxon/om/NodeInfo;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string v0, ""

    const-string v1, "role"

    invoke-interface {p1, v0, v1}, Lnet/sf/saxon/om/NodeInfo;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getConfiguration()Lnet/sf/saxon/Configuration;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/trans/PackageLoaderHE;->a:Lnet/sf/saxon/Configuration;

    return-object p0
.end method

.method public getExpressionWithRole(Lnet/sf/saxon/om/NodeInfo;Ljava/lang/String;)Lnet/sf/saxon/expr/Expression;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/trans/PackageLoaderHE;->getChildWithRole(Lnet/sf/saxon/om/NodeInfo;Ljava/lang/String;)Lnet/sf/saxon/om/NodeInfo;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->loadExpression(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getFirstChildExpression(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const/4 v0, 0x3

    sget-object v1, Lnet/sf/saxon/pattern/NodeKindTest;->ELEMENT:Lnet/sf/saxon/pattern/NodeKindTest;

    invoke-interface {p1, v0, v1}, Lnet/sf/saxon/om/NodeInfo;->iterateAxis(ILnet/sf/saxon/pattern/NodePredicate;)Lnet/sf/saxon/tree/iter/AxisIterator;

    move-result-object p1

    invoke-interface {p1}, Lnet/sf/saxon/tree/iter/AxisIterator;->next()Lnet/sf/saxon/om/NodeInfo;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->loadExpression(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0
.end method

.method public getInheritedAttribute(Lnet/sf/saxon/om/NodeInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    :goto_0
    if-eqz p1, :cond_1

    const-string p0, ""

    invoke-interface {p1, p0, p2}, Lnet/sf/saxon/om/NodeInfo;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    invoke-interface {p1}, Lnet/sf/saxon/om/NodeInfo;->getParent()Lnet/sf/saxon/om/NodeInfo;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getIntegerAttribute(Lnet/sf/saxon/om/NodeInfo;Ljava/lang/String;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const-string p0, ""

    invoke-interface {p1, p0, p2}, Lnet/sf/saxon/om/NodeInfo;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    const/high16 p0, -0x80000000

    return p0

    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    new-instance v0, Lnet/sf/saxon/trans/XPathException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected integer value for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lnet/sf/saxon/om/NodeInfo;->getDisplayName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", found \'"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\'"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SXPK0002"

    invoke-direct {v0, p0, p1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0
.end method

.method public getListOfQNameAttribute(Lnet/sf/saxon/om/NodeInfo;Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/sf/saxon/om/NodeInfo;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lnet/sf/saxon/om/StructuredQName;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const-string v0, ""

    invoke-interface {p1, v0, p2}, Lnet/sf/saxon/om/NodeInfo;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, " "

    invoke-virtual {p2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    array-length v1, p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p2, v2

    invoke-virtual {p0, v3, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->B5(Ljava/lang/String;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/om/StructuredQName;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getNthChildExpression(Lnet/sf/saxon/om/NodeInfo;I)Lnet/sf/saxon/expr/Expression;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/trans/PackageLoaderHE;->getChild(Lnet/sf/saxon/om/NodeInfo;I)Lnet/sf/saxon/om/NodeInfo;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->loadExpression(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0
.end method

.method public getPackStack()Ljava/util/Stack;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Stack<",
            "Lnet/sf/saxon/style/StylesheetPackage;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/trans/PackageLoaderHE;->packStack:Ljava/util/Stack;

    return-object p0
.end method

.method public getPackage(Ljava/lang/String;)Lnet/sf/saxon/style/StylesheetPackage;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/trans/PackageLoaderHE;->allPackages:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/style/StylesheetPackage;

    return-object p0
.end method

.method public getPatternWithRole(Lnet/sf/saxon/om/NodeInfo;Ljava/lang/String;)Lnet/sf/saxon/pattern/Pattern;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/trans/PackageLoaderHE;->getChildWithRole(Lnet/sf/saxon/om/NodeInfo;Ljava/lang/String;)Lnet/sf/saxon/om/NodeInfo;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->e5(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/pattern/Pattern;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getQNameAttribute(Lnet/sf/saxon/om/NodeInfo;Ljava/lang/String;)Lnet/sf/saxon/om/StructuredQName;
    .locals 0

    const-string p0, ""

    invoke-interface {p1, p0, p2}, Lnet/sf/saxon/om/NodeInfo;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {p0}, Lnet/sf/saxon/om/StructuredQName;->fromEQName(Ljava/lang/String;)Lnet/sf/saxon/om/StructuredQName;

    move-result-object p0

    return-object p0
.end method

.method public getSecondChildExpression(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/trans/PackageLoaderHE;->getChild(Lnet/sf/saxon/om/NodeInfo;I)Lnet/sf/saxon/om/NodeInfo;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->loadExpression(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0
.end method

.method public getTopLevelPackage()Lnet/sf/saxon/style/StylesheetPackage;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/trans/PackageLoaderHE;->topLevelPackage:Lnet/sf/saxon/style/StylesheetPackage;

    return-object p0
.end method

.method public getTypeAttribute(Lnet/sf/saxon/om/NodeInfo;Ljava/lang/String;)Lnet/sf/saxon/type/SchemaType;
    .locals 2

    const-string v0, ""

    invoke-interface {p1, v0, p2}, Lnet/sf/saxon/om/NodeInfo;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v1, "xs:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p0, p0, Lnet/sf/saxon/trans/PackageLoaderHE;->a:Lnet/sf/saxon/Configuration;

    new-instance p1, Lnet/sf/saxon/om/StructuredQName;

    const/4 p2, 0x3

    invoke-virtual {v0, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    const-string v0, "xs"

    const-string v1, "http://www.w3.org/2001/XMLSchema"

    invoke-direct {p1, v0, v1, p2}, Lnet/sf/saxon/om/StructuredQName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lnet/sf/saxon/Configuration;->getSchemaType(Lnet/sf/saxon/om/StructuredQName;)Lnet/sf/saxon/type/SchemaType;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/trans/PackageLoaderHE;->getQNameAttribute(Lnet/sf/saxon/om/NodeInfo;Ljava/lang/String;)Lnet/sf/saxon/om/StructuredQName;

    move-result-object p1

    iget-object p0, p0, Lnet/sf/saxon/trans/PackageLoaderHE;->a:Lnet/sf/saxon/Configuration;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/Configuration;->getSchemaType(Lnet/sf/saxon/om/StructuredQName;)Lnet/sf/saxon/type/SchemaType;

    move-result-object p0

    return-object p0
.end method

.method public final h5(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/s9api/Location;
    .locals 2

    const-string v0, "line"

    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/trans/PackageLoaderHE;->getInheritedAttribute(Lnet/sf/saxon/om/NodeInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "module"

    invoke-virtual {p0, p1, v1}, Lnet/sf/saxon/trans/PackageLoaderHE;->getInheritedAttribute(Lnet/sf/saxon/om/NodeInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/trans/PackageLoaderHE;->Z1(Ljava/lang/String;I)Lnet/sf/saxon/s9api/Location;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object p0, Lnet/sf/saxon/expr/parser/Loc;->NONE:Lnet/sf/saxon/expr/parser/Loc;

    return-object p0
.end method

.method public final i5(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/sxpath/IndependentContext;
    .locals 3

    iget-object v0, p0, Lnet/sf/saxon/trans/PackageLoaderHE;->packStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/style/StylesheetPackage;

    new-instance v1, Lnet/sf/saxon/sxpath/IndependentContext;

    iget-object v2, p0, Lnet/sf/saxon/trans/PackageLoaderHE;->a:Lnet/sf/saxon/Configuration;

    invoke-direct {v1, v2}, Lnet/sf/saxon/sxpath/IndependentContext;-><init>(Lnet/sf/saxon/Configuration;)V

    invoke-interface {p1}, Lnet/sf/saxon/om/NodeInfo;->getAllNamespaces()Lnet/sf/saxon/om/NamespaceMap;

    move-result-object p1

    invoke-virtual {v1, p1}, Lnet/sf/saxon/sxpath/IndependentContext;->setNamespaceResolver(Lnet/sf/saxon/om/NamespaceResolver;)V

    invoke-virtual {v0}, Lnet/sf/saxon/style/StylesheetPackage;->getSchemaNamespaces()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v1, v0}, Lnet/sf/saxon/sxpath/IndependentContext;->setImportedSchemaNamespaces(Ljava/util/Set;)V

    invoke-virtual {v1}, Lnet/sf/saxon/sxpath/IndependentContext;->getImportedSchemaNamespaces()Ljava/util/Set;

    move-result-object v0

    const-string v2, "http://ns.saxonica.com/anonymous-type"

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lnet/sf/saxon/trans/PackageLoaderHE;->b:Lnet/sf/saxon/expr/parser/XPathParser;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/XPathParser;->getQNameParser()Lnet/sf/saxon/om/QNameParser;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/sf/saxon/om/QNameParser;->withNamespaceResolver(Lnet/sf/saxon/om/NamespaceResolver;)Lnet/sf/saxon/om/QNameParser;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/parser/XPathParser;->setQNameParser(Lnet/sf/saxon/om/QNameParser;)V

    return-object v1
.end method

.method public final j5(Lnet/sf/saxon/om/NodeInfo;Ljava/lang/String;)Lnet/sf/saxon/type/ItemType;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->i5(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/sxpath/IndependentContext;

    move-result-object p1

    iget-object p0, p0, Lnet/sf/saxon/trans/PackageLoaderHE;->b:Lnet/sf/saxon/expr/parser/XPathParser;

    invoke-virtual {p0, p2, p1}, Lnet/sf/saxon/expr/parser/XPathParser;->parseExtendedItemType(Ljava/lang/String;Lnet/sf/saxon/expr/StaticContext;)Lnet/sf/saxon/type/ItemType;

    move-result-object p0

    return-object p0
.end method

.method public final l5(Lnet/sf/saxon/expr/accum/Accumulator;Lnet/sf/saxon/om/NodeInfo;)V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    new-instance v2, Lnet/sf/saxon/pattern/NameTest;

    iget-object v3, v0, Lnet/sf/saxon/trans/PackageLoaderHE;->a:Lnet/sf/saxon/Configuration;

    invoke-virtual {v3}, Lnet/sf/saxon/Configuration;->getNamePool()Lnet/sf/saxon/om/NamePool;

    move-result-object v3

    const/4 v4, 0x1

    const-string v5, "http://ns.saxonica.com/xslt/export"

    const-string v6, "accRule"

    invoke-direct {v2, v4, v5, v6, v3}, Lnet/sf/saxon/pattern/NameTest;-><init>(ILjava/lang/String;Ljava/lang/String;Lnet/sf/saxon/om/NamePool;)V

    const/4 v3, 0x3

    invoke-interface {v1, v3, v2}, Lnet/sf/saxon/om/NodeInfo;->iterateAxis(ILnet/sf/saxon/pattern/NodePredicate;)Lnet/sf/saxon/tree/iter/AxisIterator;

    move-result-object v2

    invoke-interface/range {p2 .. p2}, Lnet/sf/saxon/om/NodeInfo;->getLocalPart()Ljava/lang/String;

    move-result-object v3

    const-string v5, "pre"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual/range {p1 .. p1}, Lnet/sf/saxon/expr/accum/Accumulator;->getPreDescentRules()Lnet/sf/saxon/trans/SimpleMode;

    move-result-object v5

    goto :goto_0

    :cond_0
    invoke-virtual/range {p1 .. p1}, Lnet/sf/saxon/expr/accum/Accumulator;->getPostDescentRules()Lnet/sf/saxon/trans/SimpleMode;

    move-result-object v5

    :goto_0
    const-string v15, "slots"

    invoke-virtual {v0, v1, v15}, Lnet/sf/saxon/trans/PackageLoaderHE;->getIntegerAttribute(Lnet/sf/saxon/om/NodeInfo;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v5, v1}, Lnet/sf/saxon/trans/SimpleMode;->setStackFrameSlotsNeeded(I)V

    :goto_1
    invoke-interface {v2}, Lnet/sf/saxon/tree/iter/AxisIterator;->next()Lnet/sf/saxon/om/NodeInfo;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0, v1, v15}, Lnet/sf/saxon/trans/PackageLoaderHE;->getIntegerAttribute(Lnet/sf/saxon/om/NodeInfo;Ljava/lang/String;)I

    move-result v6

    const-string v7, "rank"

    invoke-virtual {v0, v1, v7}, Lnet/sf/saxon/trans/PackageLoaderHE;->getIntegerAttribute(Lnet/sf/saxon/om/NodeInfo;Ljava/lang/String;)I

    move-result v9

    const-string v7, ""

    const-string v8, "flags"

    invoke-interface {v1, v7, v8}, Lnet/sf/saxon/om/NodeInfo;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lnet/sf/saxon/expr/instruct/SlotManager;

    invoke-direct {v8, v6}, Lnet/sf/saxon/expr/instruct/SlotManager;-><init>(I)V

    invoke-virtual {v0, v1}, Lnet/sf/saxon/trans/PackageLoaderHE;->b2(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/pattern/Pattern;

    move-result-object v14

    invoke-virtual {v0, v1}, Lnet/sf/saxon/trans/PackageLoaderHE;->getSecondChildExpression(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    new-instance v10, Lnet/sf/saxon/expr/accum/AccumulatorRule;

    xor-int/lit8 v6, v3, 0x1

    invoke-direct {v10, v1, v8, v6}, Lnet/sf/saxon/expr/accum/AccumulatorRule;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/instruct/SlotManager;Z)V

    if-eqz v7, :cond_1

    const-string v1, "c"

    invoke-virtual {v7, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v10, v4}, Lnet/sf/saxon/expr/accum/AccumulatorRule;->setCapturing(Z)V

    :cond_1
    const/4 v1, 0x0

    int-to-double v11, v9

    const/4 v13, 0x0

    const/16 v16, 0x0

    move-object v6, v5

    move-object v7, v14

    move-object v8, v10

    move v10, v1

    move-object v1, v14

    move/from16 v14, v16

    invoke-virtual/range {v6 .. v14}, Lnet/sf/saxon/trans/SimpleMode;->makeRule(Lnet/sf/saxon/pattern/Pattern;Lnet/sf/saxon/trans/rules/RuleTarget;IIDII)Lnet/sf/saxon/trans/rules/Rule;

    move-result-object v6

    invoke-virtual {v5, v1, v6}, Lnet/sf/saxon/trans/SimpleMode;->addRule(Lnet/sf/saxon/pattern/Pattern;Lnet/sf/saxon/trans/rules/Rule;)V

    goto :goto_1

    :cond_2
    invoke-virtual {v5, v4}, Lnet/sf/saxon/trans/SimpleMode;->computeRankings(I)V

    return-void
.end method

.method public loadExpression(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-interface {p1}, Lnet/sf/saxon/om/NodeInfo;->getLocalPart()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lnet/sf/saxon/trans/PackageLoaderHE;->eMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/trans/PackageLoaderHE$ExpressionLoader;

    if-nez v1, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Cannot load expression with tag "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lnet/sf/saxon/trans/PackageLoaderHE;->licensableConstructs:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ". The stylesheet uses Saxon-"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " features"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_1
    new-instance p1, Lnet/sf/saxon/trans/XPathException;

    const-string v0, "SXPK0002"

    invoke-direct {p1, p0, v0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->makeRetainedStaticContext(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    move-result-object v0

    iget-object v2, p0, Lnet/sf/saxon/trans/PackageLoaderHE;->e:Ljava/util/Stack;

    invoke-virtual {v2, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v1, p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE$ExpressionLoader;->loadFrom(Lnet/sf/saxon/trans/PackageLoaderHE;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-virtual {v1, v0}, Lnet/sf/saxon/expr/Expression;->setRetainedStaticContextLocally(Lnet/sf/saxon/expr/parser/RetainedStaticContext;)V

    iget-object v0, p0, Lnet/sf/saxon/trans/PackageLoaderHE;->e:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->h5(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/s9api/Location;

    move-result-object p0

    invoke-virtual {v1, p0}, Lnet/sf/saxon/expr/Expression;->setLocation(Lnet/sf/saxon/s9api/Location;)V

    return-object v1
.end method

.method public loadPackage(Ljavax/xml/transform/Source;)Lnet/sf/saxon/style/StylesheetPackage;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    new-instance v0, Lnet/sf/saxon/lib/ParseOptions;

    invoke-direct {v0}, Lnet/sf/saxon/lib/ParseOptions;-><init>()V

    invoke-static {}, Lnet/sf/saxon/om/AllElementsSpaceStrippingRule;->getInstance()Lnet/sf/saxon/om/AllElementsSpaceStrippingRule;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/lib/ParseOptions;->setSpaceStrippingRule(Lnet/sf/saxon/om/SpaceStrippingRule;)V

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lnet/sf/saxon/lib/ParseOptions;->setSchemaValidationMode(I)V

    invoke-virtual {v0, v1}, Lnet/sf/saxon/lib/ParseOptions;->setDTDValidationMode(I)V

    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v2, Lcom/sunia/HTREnginev2/onk;

    invoke-direct {v2, v1}, Lcom/sunia/HTREnginev2/onk;-><init>(Ljava/util/List;)V

    invoke-virtual {v0, v2}, Lnet/sf/saxon/lib/ParseOptions;->addFilter(Lnet/sf/saxon/event/FilterFactory;)V

    iget-object v2, p0, Lnet/sf/saxon/trans/PackageLoaderHE;->a:Lnet/sf/saxon/Configuration;

    invoke-virtual {v2, p1, v0}, Lnet/sf/saxon/Configuration;->buildDocumentTree(Ljavax/xml/transform/Source;Lnet/sf/saxon/lib/ParseOptions;)Lnet/sf/saxon/om/TreeInfo;

    move-result-object p1

    invoke-interface {p1}, Lnet/sf/saxon/om/TreeInfo;->getRootNode()Lnet/sf/saxon/om/NodeInfo;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/event/CheckSumFilter;

    invoke-virtual {v0}, Lnet/sf/saxon/event/CheckSumFilter;->isChecksumCorrect()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->loadPackageDoc(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/style/StylesheetPackage;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string p1, "Package cannot be loaded: incorrect checksum"

    const-string v0, "SXPK0002"

    invoke-direct {p0, p1, v0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p0
.end method

.method public loadPackageDoc(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/style/StylesheetPackage;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/trans/PackageLoaderHE;->a:Lnet/sf/saxon/Configuration;

    invoke-virtual {v0}, Lnet/sf/saxon/Configuration;->makeStylesheetPackage()Lnet/sf/saxon/style/StylesheetPackage;

    move-result-object v0

    new-instance v1, Lnet/sf/saxon/trans/rules/RuleManager;

    invoke-direct {v1, v0}, Lnet/sf/saxon/trans/rules/RuleManager;-><init>(Lnet/sf/saxon/style/StylesheetPackage;)V

    invoke-virtual {v0, v1}, Lnet/sf/saxon/style/StylesheetPackage;->setRuleManager(Lnet/sf/saxon/trans/rules/RuleManager;)V

    new-instance v1, Lnet/sf/saxon/serialize/CharacterMapIndex;

    invoke-direct {v1}, Lnet/sf/saxon/serialize/CharacterMapIndex;-><init>()V

    invoke-virtual {v0, v1}, Lnet/sf/saxon/style/StylesheetPackage;->setCharacterMapIndex(Lnet/sf/saxon/serialize/CharacterMapIndex;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/sf/saxon/style/StylesheetPackage;->setJustInTimeCompilation(Z)V

    iget-object v1, p0, Lnet/sf/saxon/trans/PackageLoaderHE;->packStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lnet/sf/saxon/trans/PackageLoaderHE;->topLevelPackage:Lnet/sf/saxon/style/StylesheetPackage;

    :cond_0
    iget-object v1, p0, Lnet/sf/saxon/trans/PackageLoaderHE;->packStack:Ljava/util/Stack;

    invoke-virtual {v1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x3

    sget-object v2, Lnet/sf/saxon/pattern/NodeKindTest;->ELEMENT:Lnet/sf/saxon/pattern/NodeKindTest;

    invoke-interface {p1, v1, v2}, Lnet/sf/saxon/om/NodeInfo;->iterateAxis(ILnet/sf/saxon/pattern/NodePredicate;)Lnet/sf/saxon/tree/iter/AxisIterator;

    move-result-object p1

    invoke-interface {p1}, Lnet/sf/saxon/tree/iter/AxisIterator;->next()Lnet/sf/saxon/om/NodeInfo;

    move-result-object p1

    invoke-interface {p1}, Lnet/sf/saxon/om/NodeInfo;->getURI()Ljava/lang/String;

    move-result-object v1

    const-string v2, "http://ns.saxonica.com/xslt/export"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "SXPK0002"

    if-eqz v1, :cond_7

    invoke-interface {p1}, Lnet/sf/saxon/om/NodeInfo;->getLocalPart()Ljava/lang/String;

    move-result-object v1

    const-string v3, "package"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "saxonVersion"

    const-string v2, ""

    invoke-interface {p1, v2, v1}, Lnet/sf/saxon/om/NodeInfo;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v1, "9.8.0.1"

    :cond_1
    invoke-static {v1}, Lnet/sf/saxon/value/NestedIntegerValue;->parse(Ljava/lang/String;)Lnet/sf/saxon/value/NestedIntegerValue;

    move-result-object v1

    iput-object v1, p0, Lnet/sf/saxon/trans/PackageLoaderHE;->j:Lnet/sf/saxon/value/NestedIntegerValue;

    const-string v1, "dmk"

    invoke-interface {p1, v2, v1}, Lnet/sf/saxon/om/NodeInfo;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v2, p0, Lnet/sf/saxon/trans/PackageLoaderHE;->a:Lnet/sf/saxon/Configuration;

    invoke-virtual {v2, v1}, Lnet/sf/saxon/Configuration;->registerLocalLicense(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/expr/PackageData;->setLocalLicenseId(I)V

    :cond_2
    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/trans/PackageLoaderHE;->loadPackageElement(Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/style/StylesheetPackage;)V

    iget-object p1, p0, Lnet/sf/saxon/trans/PackageLoaderHE;->h:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/sf/saxon/expr/Component;

    new-instance v3, Ljava/util/StringTokenizer;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v3, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iget-object v4, p0, Lnet/sf/saxon/trans/PackageLoaderHE;->g:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnet/sf/saxon/expr/Component;

    if-eqz v4, :cond_4

    invoke-virtual {v2}, Lnet/sf/saxon/expr/Component;->getComponentBindings()Ljava/util/List;

    move-result-object v1

    new-instance v5, Lnet/sf/saxon/expr/ComponentBinding;

    invoke-virtual {v4}, Lnet/sf/saxon/expr/Component;->getActor()Lnet/sf/saxon/expr/instruct/Actor;

    move-result-object v6

    invoke-virtual {v6}, Lnet/sf/saxon/expr/instruct/Actor;->getSymbolicName()Lnet/sf/saxon/trans/SymbolicName;

    move-result-object v6

    invoke-direct {v5, v6, v4}, Lnet/sf/saxon/expr/ComponentBinding;-><init>(Lnet/sf/saxon/trans/SymbolicName;Lnet/sf/saxon/expr/Component;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unresolved external reference to component "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    return-object v0

    :cond_6
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string p1, "Outermost element of XSLT export file must be \'package\'"

    invoke-direct {p0, p1, v2}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p0

    :cond_7
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string p1, "Incorrect namespace for XSLT export file"

    invoke-direct {p0, p1, v2}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p0
.end method

.method public loadPackageElement(Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/style/StylesheetPackage;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/trans/PackageLoaderHE;->fixups:Ljava/util/Stack;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "name"

    const-string v1, ""

    invoke-interface {p1, v1, v0}, Lnet/sf/saxon/om/NodeInfo;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "id"

    invoke-interface {p1, v1, v2}, Lnet/sf/saxon/om/NodeInfo;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    move-object v2, v0

    :cond_0
    const-string v3, "relocatable"

    invoke-interface {p1, v1, v3}, Lnet/sf/saxon/om/NodeInfo;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "true"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v0, :cond_1

    invoke-virtual {p2, v0}, Lnet/sf/saxon/style/StylesheetPackage;->setPackageName(Ljava/lang/String;)V

    iget-object v0, p0, Lnet/sf/saxon/trans/PackageLoaderHE;->allPackages:Ljava/util/Map;

    invoke-interface {v0, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    new-instance v0, Lnet/sf/saxon/style/PackageVersion;

    const-string v2, "packageVersion"

    invoke-interface {p1, v1, v2}, Lnet/sf/saxon/om/NodeInfo;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lnet/sf/saxon/style/PackageVersion;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lnet/sf/saxon/style/StylesheetPackage;->setPackageVersion(Lnet/sf/saxon/style/PackageVersion;)V

    const-string v0, "version"

    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/trans/PackageLoaderHE;->getIntegerAttribute(Lnet/sf/saxon/om/NodeInfo;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Lnet/sf/saxon/style/StylesheetPackage;->setLanguageVersion(I)V

    const-string v0, "schemaAware"

    invoke-interface {p1, v1, v0}, Lnet/sf/saxon/om/NodeInfo;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "1"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {p2, v0}, Lnet/sf/saxon/expr/PackageData;->setSchemaAware(Z)V

    invoke-virtual {p2}, Lnet/sf/saxon/expr/PackageData;->isSchemaAware()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "schema-awareness"

    invoke-virtual {p0, v0}, Lnet/sf/saxon/trans/PackageLoaderHE;->needsEELicense(Ljava/lang/String;)V

    :cond_2
    const-string v0, "implicit"

    invoke-interface {p1, v1, v0}, Lnet/sf/saxon/om/NodeInfo;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {p2, v0}, Lnet/sf/saxon/style/StylesheetPackage;->setImplicitPackage(Z)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lnet/sf/saxon/trans/PackageLoaderHE;->j:Lnet/sf/saxon/value/NestedIntegerValue;

    sget-object v4, Lnet/sf/saxon/trans/PackageLoaderHE;->l:Lnet/sf/saxon/value/NestedIntegerValue;

    invoke-virtual {v0, v4}, Lnet/sf/saxon/value/NestedIntegerValue;->compareTo(Lnet/sf/saxon/value/NestedIntegerValue;)I

    move-result v0

    if-gtz v0, :cond_4

    move v0, v5

    goto :goto_0

    :cond_4
    move v0, v6

    :goto_0
    invoke-virtual {p2, v0}, Lnet/sf/saxon/style/StylesheetPackage;->setImplicitPackage(Z)V

    :goto_1
    const-string v0, "stripType"

    invoke-interface {p1, v1, v0}, Lnet/sf/saxon/om/NodeInfo;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {p2, v0}, Lnet/sf/saxon/style/StylesheetPackage;->setStripsTypeAnnotations(Z)V

    new-instance v0, Lnet/sf/saxon/trans/KeyManager;

    invoke-virtual {p2}, Lnet/sf/saxon/expr/PackageData;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v4

    invoke-direct {v0, v4, p2}, Lnet/sf/saxon/trans/KeyManager;-><init>(Lnet/sf/saxon/Configuration;Lnet/sf/saxon/expr/PackageData;)V

    invoke-virtual {p2, v0}, Lnet/sf/saxon/expr/PackageData;->setKeyManager(Lnet/sf/saxon/trans/KeyManager;)V

    const-string v0, "declaredModes"

    invoke-interface {p1, v1, v0}, Lnet/sf/saxon/om/NodeInfo;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {p2, v0}, Lnet/sf/saxon/style/StylesheetPackage;->setDeclaredModes(Z)V

    new-instance v0, Lcom/sunia/HTREnginev2/qnk;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/qnk;-><init>()V

    invoke-static {v0}, Lnet/sf/saxon/pattern/NodeSelector;->of(Ljava/util/function/Predicate;)Lnet/sf/saxon/pattern/NodeSelector;

    move-result-object v0

    invoke-interface {p1, v0}, Lnet/sf/saxon/om/NodeInfo;->children(Lnet/sf/saxon/pattern/NodePredicate;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/om/NodeInfo;

    iget-object v2, p0, Lnet/sf/saxon/trans/PackageLoaderHE;->a:Lnet/sf/saxon/Configuration;

    invoke-virtual {v2}, Lnet/sf/saxon/Configuration;->makeStylesheetPackage()Lnet/sf/saxon/style/StylesheetPackage;

    move-result-object v2

    new-instance v4, Lnet/sf/saxon/trans/rules/RuleManager;

    invoke-direct {v4, p2}, Lnet/sf/saxon/trans/rules/RuleManager;-><init>(Lnet/sf/saxon/style/StylesheetPackage;)V

    invoke-virtual {v2, v4}, Lnet/sf/saxon/style/StylesheetPackage;->setRuleManager(Lnet/sf/saxon/trans/rules/RuleManager;)V

    new-instance v4, Lnet/sf/saxon/serialize/CharacterMapIndex;

    invoke-direct {v4}, Lnet/sf/saxon/serialize/CharacterMapIndex;-><init>()V

    invoke-virtual {v2, v4}, Lnet/sf/saxon/style/StylesheetPackage;->setCharacterMapIndex(Lnet/sf/saxon/serialize/CharacterMapIndex;)V

    invoke-virtual {v2, v6}, Lnet/sf/saxon/style/StylesheetPackage;->setJustInTimeCompilation(Z)V

    iget-object v4, p0, Lnet/sf/saxon/trans/PackageLoaderHE;->packStack:Ljava/util/Stack;

    invoke-virtual {v4, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, v1, v2}, Lnet/sf/saxon/trans/PackageLoaderHE;->loadPackageElement(Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/style/StylesheetPackage;)V

    iget-object v1, p0, Lnet/sf/saxon/trans/PackageLoaderHE;->packStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    invoke-virtual {p2, v2}, Lnet/sf/saxon/style/StylesheetPackage;->addUsedPackage(Lnet/sf/saxon/style/StylesheetPackage;)V

    goto :goto_2

    :cond_5
    new-instance v0, Lnet/sf/saxon/functions/FunctionLibraryList;

    invoke-direct {v0}, Lnet/sf/saxon/functions/FunctionLibraryList;-><init>()V

    iget-object v1, p0, Lnet/sf/saxon/trans/PackageLoaderHE;->a:Lnet/sf/saxon/Configuration;

    invoke-virtual {v1}, Lnet/sf/saxon/Configuration;->getXSLT30FunctionSet()Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/functions/FunctionLibraryList;->addFunctionLibrary(Lnet/sf/saxon/functions/FunctionLibrary;)I

    iget-object v1, p0, Lnet/sf/saxon/trans/PackageLoaderHE;->a:Lnet/sf/saxon/Configuration;

    invoke-virtual {p0, v0, v1}, Lnet/sf/saxon/trans/PackageLoaderHE;->addVendorFunctionLibrary(Lnet/sf/saxon/functions/FunctionLibraryList;Lnet/sf/saxon/Configuration;)V

    invoke-static {}, Lnet/sf/saxon/ma/map/MapFunctionSet;->getInstance()Lnet/sf/saxon/ma/map/MapFunctionSet;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/functions/FunctionLibraryList;->addFunctionLibrary(Lnet/sf/saxon/functions/FunctionLibrary;)I

    invoke-static {}, Lnet/sf/saxon/ma/arrays/ArrayFunctionSet;->getInstance()Lnet/sf/saxon/ma/arrays/ArrayFunctionSet;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/functions/FunctionLibraryList;->addFunctionLibrary(Lnet/sf/saxon/functions/FunctionLibrary;)I

    invoke-static {}, Lnet/sf/saxon/functions/MathFunctionSet;->getInstance()Lnet/sf/saxon/functions/MathFunctionSet;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/functions/FunctionLibraryList;->addFunctionLibrary(Lnet/sf/saxon/functions/FunctionLibrary;)I

    new-instance v1, Lnet/sf/saxon/style/StylesheetFunctionLibrary;

    invoke-direct {v1, p2, v5}, Lnet/sf/saxon/style/StylesheetFunctionLibrary;-><init>(Lnet/sf/saxon/style/StylesheetPackage;Z)V

    invoke-virtual {v0, v1}, Lnet/sf/saxon/functions/FunctionLibraryList;->addFunctionLibrary(Lnet/sf/saxon/functions/FunctionLibrary;)I

    new-instance v1, Lnet/sf/saxon/functions/registry/ConstructorFunctionLibrary;

    iget-object v2, p0, Lnet/sf/saxon/trans/PackageLoaderHE;->a:Lnet/sf/saxon/Configuration;

    invoke-direct {v1, v2}, Lnet/sf/saxon/functions/registry/ConstructorFunctionLibrary;-><init>(Lnet/sf/saxon/Configuration;)V

    invoke-virtual {v0, v1}, Lnet/sf/saxon/functions/FunctionLibraryList;->addFunctionLibrary(Lnet/sf/saxon/functions/FunctionLibrary;)I

    new-instance v1, Lnet/sf/saxon/query/XQueryFunctionLibrary;

    iget-object v2, p0, Lnet/sf/saxon/trans/PackageLoaderHE;->a:Lnet/sf/saxon/Configuration;

    invoke-direct {v1, v2}, Lnet/sf/saxon/query/XQueryFunctionLibrary;-><init>(Lnet/sf/saxon/Configuration;)V

    invoke-virtual {v0, v1}, Lnet/sf/saxon/functions/FunctionLibraryList;->addFunctionLibrary(Lnet/sf/saxon/functions/FunctionLibrary;)I

    iget-object v1, p0, Lnet/sf/saxon/trans/PackageLoaderHE;->a:Lnet/sf/saxon/Configuration;

    invoke-virtual {v1}, Lnet/sf/saxon/Configuration;->getIntegratedFunctionLibrary()Lnet/sf/saxon/functions/IntegratedFunctionLibrary;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/functions/FunctionLibraryList;->addFunctionLibrary(Lnet/sf/saxon/functions/FunctionLibrary;)I

    iget-object v1, p0, Lnet/sf/saxon/trans/PackageLoaderHE;->a:Lnet/sf/saxon/Configuration;

    invoke-virtual {v1, v0}, Lnet/sf/saxon/Configuration;->addExtensionBinders(Lnet/sf/saxon/functions/FunctionLibraryList;)V

    new-instance v1, Lnet/sf/saxon/style/StylesheetFunctionLibrary;

    invoke-direct {v1, p2, v6}, Lnet/sf/saxon/style/StylesheetFunctionLibrary;-><init>(Lnet/sf/saxon/style/StylesheetPackage;Z)V

    invoke-virtual {v0, v1}, Lnet/sf/saxon/functions/FunctionLibraryList;->addFunctionLibrary(Lnet/sf/saxon/functions/FunctionLibrary;)I

    iget-object v1, p0, Lnet/sf/saxon/trans/PackageLoaderHE;->c:Lnet/sf/saxon/functions/ExecutableFunctionLibrary;

    iget-object v2, p0, Lnet/sf/saxon/trans/PackageLoaderHE;->d:Lnet/sf/saxon/functions/ExecutableFunctionLibrary;

    invoke-virtual {p2, v0, v1, v2}, Lnet/sf/saxon/style/StylesheetPackage;->setFunctionLibraryDetails(Lnet/sf/saxon/functions/FunctionLibraryList;Lnet/sf/saxon/functions/ExecutableFunctionLibrary;Lnet/sf/saxon/functions/ExecutableFunctionLibrary;)V

    new-instance v0, Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    iget-object v1, p0, Lnet/sf/saxon/trans/PackageLoaderHE;->a:Lnet/sf/saxon/Configuration;

    invoke-direct {v0, v1}, Lnet/sf/saxon/expr/parser/RetainedStaticContext;-><init>(Lnet/sf/saxon/Configuration;)V

    if-eqz v3, :cond_6

    invoke-interface {p1}, Lnet/sf/saxon/om/NodeInfo;->getBaseURI()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lnet/sf/saxon/trans/PackageLoaderHE;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lnet/sf/saxon/expr/parser/RetainedStaticContext;->setStaticBaseUriString(Ljava/lang/String;)V

    :cond_6
    invoke-virtual {v0, p2}, Lnet/sf/saxon/expr/parser/RetainedStaticContext;->setPackageData(Lnet/sf/saxon/expr/PackageData;)V

    iget-object v1, p0, Lnet/sf/saxon/trans/PackageLoaderHE;->e:Ljava/util/Stack;

    invoke-virtual {v1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lnet/sf/saxon/trans/PackageLoaderHE;->localBindings:Ljava/util/Stack;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->r5(Lnet/sf/saxon/om/NodeInfo;)V

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->readSchemaNamespaces(Lnet/sf/saxon/om/NodeInfo;)V

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->v5(Lnet/sf/saxon/om/NodeInfo;)V

    invoke-virtual {p0, p1, v6}, Lnet/sf/saxon/trans/PackageLoaderHE;->p5(Lnet/sf/saxon/om/NodeInfo;Z)V

    new-instance v0, Lnet/sf/saxon/pattern/NameTest;

    iget-object v1, p0, Lnet/sf/saxon/trans/PackageLoaderHE;->a:Lnet/sf/saxon/Configuration;

    invoke-virtual {v1}, Lnet/sf/saxon/Configuration;->getNamePool()Lnet/sf/saxon/om/NamePool;

    move-result-object v1

    const-string v2, "http://ns.saxonica.com/xslt/export"

    const-string v3, "overridden"

    invoke-direct {v0, v5, v2, v3, v1}, Lnet/sf/saxon/pattern/NameTest;-><init>(ILjava/lang/String;Ljava/lang/String;Lnet/sf/saxon/om/NamePool;)V

    const/4 v1, 0x3

    invoke-interface {p1, v1, v0}, Lnet/sf/saxon/om/NodeInfo;->iterateAxis(ILnet/sf/saxon/pattern/NodePredicate;)Lnet/sf/saxon/tree/iter/AxisIterator;

    move-result-object v0

    invoke-interface {v0}, Lnet/sf/saxon/tree/iter/AxisIterator;->next()Lnet/sf/saxon/om/NodeInfo;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {p0, v0, v5}, Lnet/sf/saxon/trans/PackageLoaderHE;->p5(Lnet/sf/saxon/om/NodeInfo;Z)V

    :cond_7
    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->m5(Lnet/sf/saxon/om/NodeInfo;)V

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->y5(Lnet/sf/saxon/om/NodeInfo;)V

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->o5(Lnet/sf/saxon/om/NodeInfo;)V

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->z5(Lnet/sf/saxon/om/NodeInfo;)V

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->q5(Lnet/sf/saxon/om/NodeInfo;)V

    invoke-virtual {p0}, Lnet/sf/saxon/trans/PackageLoaderHE;->A5()V

    iget-object v0, p0, Lnet/sf/saxon/trans/PackageLoaderHE;->fixups:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    iget-object v0, p0, Lnet/sf/saxon/trans/PackageLoaderHE;->completionActions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/om/Action;

    invoke-interface {v1}, Lnet/sf/saxon/om/Action;->doAction()V

    goto :goto_3

    :cond_8
    const-string v0, "defaultMode"

    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/trans/PackageLoaderHE;->getQNameAttribute(Lnet/sf/saxon/om/NodeInfo;Ljava/lang/String;)Lnet/sf/saxon/om/StructuredQName;

    move-result-object p0

    if-nez p0, :cond_9

    sget-object p0, Lnet/sf/saxon/trans/Mode;->UNNAMED_MODE_NAME:Lnet/sf/saxon/om/StructuredQName;

    invoke-virtual {p2, p0}, Lnet/sf/saxon/style/StylesheetPackage;->setDefaultMode(Lnet/sf/saxon/om/StructuredQName;)V

    goto :goto_4

    :cond_9
    invoke-virtual {p2, p0}, Lnet/sf/saxon/style/StylesheetPackage;->setDefaultMode(Lnet/sf/saxon/om/StructuredQName;)V

    :goto_4
    return-void
.end method

.method public final m5(Lnet/sf/saxon/om/NodeInfo;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/trans/PackageLoaderHE;->packStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/style/StylesheetPackage;

    new-instance v1, Lnet/sf/saxon/pattern/NameTest;

    iget-object v2, p0, Lnet/sf/saxon/trans/PackageLoaderHE;->a:Lnet/sf/saxon/Configuration;

    invoke-virtual {v2}, Lnet/sf/saxon/Configuration;->getNamePool()Lnet/sf/saxon/om/NamePool;

    move-result-object v2

    const/4 v3, 0x1

    const-string v4, "http://ns.saxonica.com/xslt/export"

    const-string v5, "accumulator"

    invoke-direct {v1, v3, v4, v5, v2}, Lnet/sf/saxon/pattern/NameTest;-><init>(ILjava/lang/String;Ljava/lang/String;Lnet/sf/saxon/om/NamePool;)V

    const/4 v2, 0x3

    invoke-interface {p1, v2, v1}, Lnet/sf/saxon/om/NodeInfo;->iterateAxis(ILnet/sf/saxon/pattern/NodePredicate;)Lnet/sf/saxon/tree/iter/AxisIterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Lnet/sf/saxon/tree/iter/AxisIterator;->next()Lnet/sf/saxon/om/NodeInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v2, "name"

    invoke-virtual {p0, v1, v2}, Lnet/sf/saxon/trans/PackageLoaderHE;->getQNameAttribute(Lnet/sf/saxon/om/NodeInfo;Ljava/lang/String;)Lnet/sf/saxon/om/StructuredQName;

    move-result-object v2

    new-instance v4, Lnet/sf/saxon/expr/accum/Accumulator;

    invoke-direct {v4}, Lnet/sf/saxon/expr/accum/Accumulator;-><init>()V

    sget-object v5, Lnet/sf/saxon/trans/Visibility;->PRIVATE:Lnet/sf/saxon/trans/Visibility;

    sget-object v6, Lnet/sf/saxon/trans/VisibilityProvenance;->DEFAULTED:Lnet/sf/saxon/trans/VisibilityProvenance;

    invoke-static {v4, v5, v6, v0, v0}, Lnet/sf/saxon/expr/Component;->makeComponent(Lnet/sf/saxon/expr/instruct/Actor;Lnet/sf/saxon/trans/Visibility;Lnet/sf/saxon/trans/VisibilityProvenance;Lnet/sf/saxon/style/StylesheetPackage;Lnet/sf/saxon/style/StylesheetPackage;)Lnet/sf/saxon/expr/Component;

    move-result-object v5

    invoke-virtual {v4, v5}, Lnet/sf/saxon/expr/instruct/Actor;->setDeclaringComponent(Lnet/sf/saxon/expr/Component;)V

    const-string v6, "slots"

    invoke-virtual {p0, v1, v6}, Lnet/sf/saxon/trans/PackageLoaderHE;->getIntegerAttribute(Lnet/sf/saxon/om/NodeInfo;Ljava/lang/String;)I

    move-result v6

    new-instance v7, Lnet/sf/saxon/expr/instruct/SlotManager;

    invoke-direct {v7, v6}, Lnet/sf/saxon/expr/instruct/SlotManager;-><init>(I)V

    invoke-virtual {v4, v7}, Lnet/sf/saxon/expr/accum/Accumulator;->setSlotManagerForInitialValueExpression(Lnet/sf/saxon/expr/instruct/SlotManager;)V

    invoke-virtual {v4, v2}, Lnet/sf/saxon/expr/accum/Accumulator;->setAccumulatorName(Lnet/sf/saxon/om/StructuredQName;)V

    const-string v2, "binds"

    const-string v6, ""

    invoke-interface {v1, v6, v2}, Lnet/sf/saxon/om/NodeInfo;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v7, p0, Lnet/sf/saxon/trans/PackageLoaderHE;->h:Ljava/util/Map;

    invoke-interface {v7, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "streamable"

    invoke-interface {v1, v6, v2}, Lnet/sf/saxon/om/NodeInfo;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "1"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v5, "flags"

    invoke-interface {v1, v6, v5}, Lnet/sf/saxon/om/NodeInfo;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    const-string v6, "u"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v5, v3

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    :goto_1
    invoke-virtual {v4, v2}, Lnet/sf/saxon/expr/accum/Accumulator;->setDeclaredStreamable(Z)V

    invoke-virtual {v4, v5}, Lnet/sf/saxon/expr/accum/Accumulator;->setUniversallyApplicable(Z)V

    const-string v2, "init"

    invoke-virtual {p0, v1, v2}, Lnet/sf/saxon/trans/PackageLoaderHE;->getExpressionWithRole(Lnet/sf/saxon/om/NodeInfo;Ljava/lang/String;)Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    invoke-virtual {v4, v2}, Lnet/sf/saxon/expr/accum/Accumulator;->setInitialValueExpression(Lnet/sf/saxon/expr/Expression;)V

    invoke-virtual {p0, v1, v3}, Lnet/sf/saxon/trans/PackageLoaderHE;->getChild(Lnet/sf/saxon/om/NodeInfo;I)Lnet/sf/saxon/om/NodeInfo;

    move-result-object v2

    invoke-virtual {p0, v4, v2}, Lnet/sf/saxon/trans/PackageLoaderHE;->l5(Lnet/sf/saxon/expr/accum/Accumulator;Lnet/sf/saxon/om/NodeInfo;)V

    const/4 v2, 0x2

    invoke-virtual {p0, v1, v2}, Lnet/sf/saxon/trans/PackageLoaderHE;->getChild(Lnet/sf/saxon/om/NodeInfo;I)Lnet/sf/saxon/om/NodeInfo;

    move-result-object v1

    invoke-virtual {p0, v4, v1}, Lnet/sf/saxon/trans/PackageLoaderHE;->l5(Lnet/sf/saxon/expr/accum/Accumulator;Lnet/sf/saxon/om/NodeInfo;)V

    invoke-virtual {v0}, Lnet/sf/saxon/expr/PackageData;->getAccumulatorRegistry()Lnet/sf/saxon/expr/accum/AccumulatorRegistry;

    move-result-object v1

    invoke-virtual {v1, v4}, Lnet/sf/saxon/expr/accum/AccumulatorRegistry;->addAccumulator(Lnet/sf/saxon/expr/accum/Accumulator;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public makeAtomicComparer(Ljava/lang/String;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/sort/AtomicComparer;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const-string v0, "CCC"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lnet/sf/saxon/expr/sort/CodepointCollatingComparer;->getInstance()Lnet/sf/saxon/expr/sort/CodepointCollatingComparer;

    move-result-object p0

    return-object p0

    :cond_0
    const-string v0, "CAVC"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lnet/sf/saxon/expr/sort/ContextFreeAtomicComparer;->getInstance()Lnet/sf/saxon/expr/sort/ContextFreeAtomicComparer;

    move-result-object p0

    return-object p0

    :cond_1
    const-string v0, "GAC|"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-eqz v0, :cond_2

    iget-object p0, p0, Lnet/sf/saxon/trans/PackageLoaderHE;->a:Lnet/sf/saxon/Configuration;

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/Configuration;->getCollation(Ljava/lang/String;)Lnet/sf/saxon/lib/StringCollator;

    move-result-object p0

    new-instance p1, Lnet/sf/saxon/expr/sort/GenericAtomicComparer;

    invoke-direct {p1, p0, v1}, Lnet/sf/saxon/expr/sort/GenericAtomicComparer;-><init>(Lnet/sf/saxon/lib/StringCollator;Lnet/sf/saxon/expr/XPathContext;)V

    return-object p1

    :cond_2
    const-string v0, "CalVC"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance p0, Lnet/sf/saxon/expr/sort/CalendarValueComparer;

    invoke-direct {p0, v1}, Lnet/sf/saxon/expr/sort/CalendarValueComparer;-><init>(Lnet/sf/saxon/expr/XPathContext;)V

    return-object p0

    :cond_3
    const-string v0, "EQC"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lnet/sf/saxon/expr/sort/EqualityComparer;->getInstance()Lnet/sf/saxon/expr/sort/EqualityComparer;

    move-result-object p0

    return-object p0

    :cond_4
    const-string v0, "NC"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lnet/sf/saxon/expr/sort/NumericComparer;->getInstance()Lnet/sf/saxon/expr/sort/NumericComparer;

    move-result-object p0

    return-object p0

    :cond_5
    const-string v0, "NC11"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {}, Lnet/sf/saxon/expr/sort/NumericComparer11;->getInstance()Lnet/sf/saxon/expr/sort/NumericComparer;

    move-result-object p0

    return-object p0

    :cond_6
    const-string v0, "QUNC"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    new-instance p0, Lnet/sf/saxon/expr/sort/UntypedNumericComparer;

    invoke-direct {p0}, Lnet/sf/saxon/expr/sort/UntypedNumericComparer;-><init>()V

    return-object p0

    :cond_7
    const-string v0, "DblSC"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {}, Lnet/sf/saxon/expr/sort/DoubleSortComparer;->getInstance()Lnet/sf/saxon/expr/sort/DoubleSortComparer;

    move-result-object p0

    return-object p0

    :cond_8
    const-string v0, "DecSC"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {}, Lnet/sf/saxon/expr/sort/DecimalSortComparer;->getDecimalSortComparerInstance()Lnet/sf/saxon/expr/sort/DecimalSortComparer;

    move-result-object p0

    return-object p0

    :cond_9
    const-string v0, "CAC|"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object p0, p0, Lnet/sf/saxon/trans/PackageLoaderHE;->a:Lnet/sf/saxon/Configuration;

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/Configuration;->getCollation(Ljava/lang/String;)Lnet/sf/saxon/lib/StringCollator;

    move-result-object p0

    new-instance p1, Lnet/sf/saxon/expr/sort/CollatingAtomicComparer;

    invoke-direct {p1, p0}, Lnet/sf/saxon/expr/sort/CollatingAtomicComparer;-><init>(Lnet/sf/saxon/lib/StringCollator;)V

    return-object p1

    :cond_a
    const-string v0, "AtSC|"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x5

    if-eqz v0, :cond_b

    const/16 p2, 0x7c

    invoke-virtual {p1, p2, v1}, Ljava/lang/String;->indexOf(II)I

    move-result p2

    invoke-virtual {p1, v1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 p2, p2, 0x1

    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lnet/sf/saxon/trans/PackageLoaderHE;->a:Lnet/sf/saxon/Configuration;

    invoke-virtual {p2, p1}, Lnet/sf/saxon/Configuration;->getCollation(Ljava/lang/String;)Lnet/sf/saxon/lib/StringCollator;

    move-result-object p1

    new-instance p2, Lnet/sf/saxon/expr/EarlyEvaluationContext;

    iget-object p0, p0, Lnet/sf/saxon/trans/PackageLoaderHE;->a:Lnet/sf/saxon/Configuration;

    invoke-direct {p2, p0}, Lnet/sf/saxon/expr/EarlyEvaluationContext;-><init>(Lnet/sf/saxon/Configuration;)V

    invoke-static {p1, v0, p2}, Lnet/sf/saxon/expr/sort/AtomicSortComparer;->makeSortComparer(Lnet/sf/saxon/lib/StringCollator;ILnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/expr/sort/AtomicComparer;

    move-result-object p0

    return-object p0

    :cond_b
    const-string v0, "DESC|"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/trans/PackageLoaderHE;->makeAtomicComparer(Ljava/lang/String;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/sort/AtomicComparer;

    move-result-object p0

    new-instance p1, Lnet/sf/saxon/expr/sort/DescendingComparer;

    invoke-direct {p1, p0}, Lnet/sf/saxon/expr/sort/DescendingComparer;-><init>(Lnet/sf/saxon/expr/sort/AtomicComparer;)V

    return-object p1

    :cond_c
    const-string v0, "TEXT|"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/trans/PackageLoaderHE;->makeAtomicComparer(Ljava/lang/String;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/sort/AtomicComparer;

    move-result-object p0

    new-instance p1, Lnet/sf/saxon/expr/sort/TextComparer;

    invoke-direct {p1, p0}, Lnet/sf/saxon/expr/sort/TextComparer;-><init>(Lnet/sf/saxon/expr/sort/AtomicComparer;)V

    return-object p1

    :cond_d
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown comparer "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SXPK0002"

    invoke-direct {p0, p1, p2}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p0
.end method

.method public makeFunction(Ljava/lang/String;)Lnet/sf/saxon/expr/instruct/UserFunction;
    .locals 0

    new-instance p0, Lnet/sf/saxon/expr/instruct/UserFunction;

    invoke-direct {p0}, Lnet/sf/saxon/expr/instruct/UserFunction;-><init>()V

    return-object p0
.end method

.method public makeRetainedStaticContext(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/parser/RetainedStaticContext;
    .locals 12

    iget-object v0, p0, Lnet/sf/saxon/trans/PackageLoaderHE;->packStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/style/StylesheetPackage;

    const-string v1, ""

    const-string v2, "baseUri"

    invoke-interface {p1, v1, v2}, Lnet/sf/saxon/om/NodeInfo;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "defaultCollation"

    invoke-interface {p1, v1, v4}, Lnet/sf/saxon/om/NodeInfo;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "defaultElementNS"

    invoke-interface {p1, v1, v5}, Lnet/sf/saxon/om/NodeInfo;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "ns"

    invoke-interface {p1, v1, v7}, Lnet/sf/saxon/om/NodeInfo;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "vn"

    invoke-interface {p1, v1, v9}, Lnet/sf/saxon/om/NodeInfo;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-nez v3, :cond_1

    if-nez v4, :cond_1

    if-nez v8, :cond_1

    if-nez v9, :cond_1

    if-nez v6, :cond_1

    iget-object v9, p0, Lnet/sf/saxon/trans/PackageLoaderHE;->e:Ljava/util/Stack;

    invoke-virtual {v9}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    invoke-virtual {v9}, Lnet/sf/saxon/expr/parser/RetainedStaticContext;->getDecimalFormatManager()Lnet/sf/saxon/trans/DecimalFormatManager;

    move-result-object v9

    if-nez v9, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lnet/sf/saxon/trans/PackageLoaderHE;->e:Ljava/util/Stack;

    invoke-virtual {p0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    return-object p0

    :cond_1
    :goto_0
    new-instance v9, Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    iget-object v10, p0, Lnet/sf/saxon/trans/PackageLoaderHE;->a:Lnet/sf/saxon/Configuration;

    invoke-direct {v9, v10}, Lnet/sf/saxon/expr/parser/RetainedStaticContext;-><init>(Lnet/sf/saxon/Configuration;)V

    invoke-virtual {v9, v0}, Lnet/sf/saxon/expr/parser/RetainedStaticContext;->setPackageData(Lnet/sf/saxon/expr/PackageData;)V

    if-eqz v4, :cond_2

    invoke-virtual {v9, v4}, Lnet/sf/saxon/expr/parser/RetainedStaticContext;->setDefaultCollationName(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const-string v0, "http://www.w3.org/2005/xpath-functions/collation/codepoint"

    invoke-virtual {v9, v0}, Lnet/sf/saxon/expr/parser/RetainedStaticContext;->setDefaultCollationName(Ljava/lang/String;)V

    :goto_1
    if-eqz v3, :cond_3

    invoke-virtual {v9, v3}, Lnet/sf/saxon/expr/parser/RetainedStaticContext;->setStaticBaseUriString(Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lnet/sf/saxon/trans/PackageLoaderHE;->i:Ljava/lang/String;

    if-eqz v0, :cond_4

    invoke-virtual {v9, v0}, Lnet/sf/saxon/expr/parser/RetainedStaticContext;->setStaticBaseUriString(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    invoke-static {p1, v1, v2}, Lnet/sf/saxon/tree/util/Navigator;->getInheritedAttributeValue(Lnet/sf/saxon/om/NodeInfo;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v9, v0}, Lnet/sf/saxon/expr/parser/RetainedStaticContext;->setStaticBaseUriString(Ljava/lang/String;)V

    :cond_5
    :goto_2
    if-nez v8, :cond_6

    invoke-static {p1, v1, v7}, Lnet/sf/saxon/tree/util/Navigator;->getInheritedAttributeValue(Lnet/sf/saxon/om/NodeInfo;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    :cond_6
    if-eqz v8, :cond_9

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, " "

    invoke-virtual {v8, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_3
    if-ge v4, v2, :cond_9

    aget-object v7, v0, v4

    const/16 v10, 0x3d

    invoke-virtual {v7, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v10

    if-ltz v10, :cond_8

    invoke-virtual {v7, v3, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {v7, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    const-string v10, "~"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-static {v11}, Lnet/sf/saxon/lib/NamespaceConstant;->getUriForConventionalPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    :cond_7
    invoke-virtual {v9, v11, v7}, Lnet/sf/saxon/expr/parser/RetainedStaticContext;->declareNamespace(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_8
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ns="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9
    if-nez v6, :cond_a

    invoke-static {p1, v1, v5}, Lnet/sf/saxon/tree/util/Navigator;->getInheritedAttributeValue(Lnet/sf/saxon/om/NodeInfo;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :cond_a
    if-eqz v6, :cond_b

    invoke-virtual {v9, v6}, Lnet/sf/saxon/expr/parser/RetainedStaticContext;->setDefaultElementNamespace(Ljava/lang/String;)V

    :cond_b
    iget-object p0, p0, Lnet/sf/saxon/trans/PackageLoaderHE;->packStack:Ljava/util/Stack;

    invoke-virtual {p0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/style/StylesheetPackage;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/PackageData;->getDecimalFormatManager()Lnet/sf/saxon/trans/DecimalFormatManager;

    move-result-object p0

    invoke-virtual {v9, p0}, Lnet/sf/saxon/expr/parser/RetainedStaticContext;->setDecimalFormatManager(Lnet/sf/saxon/trans/DecimalFormatManager;)V

    return-object v9
.end method

.method public final n5(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/instruct/AttributeSet;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/trans/PackageLoaderHE;->packStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/style/StylesheetPackage;

    new-instance v1, Ljava/util/Stack;

    invoke-direct {v1}, Ljava/util/Stack;-><init>()V

    iput-object v1, p0, Lnet/sf/saxon/trans/PackageLoaderHE;->localBindings:Ljava/util/Stack;

    const-string v1, "name"

    invoke-virtual {p0, p1, v1}, Lnet/sf/saxon/trans/PackageLoaderHE;->getQNameAttribute(Lnet/sf/saxon/om/NodeInfo;Ljava/lang/String;)Lnet/sf/saxon/om/StructuredQName;

    move-result-object v1

    const-string v2, "slots"

    invoke-virtual {p0, p1, v2}, Lnet/sf/saxon/trans/PackageLoaderHE;->getIntegerAttribute(Lnet/sf/saxon/om/NodeInfo;Ljava/lang/String;)I

    move-result v2

    new-instance v3, Lnet/sf/saxon/expr/instruct/AttributeSet;

    invoke-direct {v3}, Lnet/sf/saxon/expr/instruct/AttributeSet;-><init>()V

    invoke-virtual {v3, v1}, Lnet/sf/saxon/expr/instruct/AttributeSet;->setName(Lnet/sf/saxon/om/StructuredQName;)V

    new-instance v1, Lnet/sf/saxon/expr/instruct/SlotManager;

    invoke-direct {v1, v2}, Lnet/sf/saxon/expr/instruct/SlotManager;-><init>(I)V

    invoke-virtual {v3, v1}, Lnet/sf/saxon/expr/instruct/AttributeSet;->setStackFrameMap(Lnet/sf/saxon/expr/instruct/SlotManager;)V

    invoke-virtual {v3, v0}, Lnet/sf/saxon/expr/instruct/Actor;->setPackageData(Lnet/sf/saxon/expr/PackageData;)V

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->getFirstChildExpression(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {v3, p0}, Lnet/sf/saxon/expr/instruct/Actor;->setBody(Lnet/sf/saxon/expr/Expression;)V

    const-string p0, ""

    const-string v0, "flags"

    invoke-interface {p1, p0, v0}, Lnet/sf/saxon/om/NodeInfo;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "s"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    invoke-virtual {v3, p0}, Lnet/sf/saxon/expr/instruct/AttributeSet;->setDeclaredStreamable(Z)V

    return-object v3
.end method

.method public needsEELicense(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lnet/sf/saxon/trans/PackageLoaderHE;->getTopLevelPackage()Lnet/sf/saxon/style/StylesheetPackage;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/expr/PackageData;->getLocalLicenseId()I

    move-result v0

    iget-object p0, p0, Lnet/sf/saxon/trans/PackageLoaderHE;->a:Lnet/sf/saxon/Configuration;

    const/4 v1, 0x2

    invoke-virtual {p0, v1, p1, v0}, Lnet/sf/saxon/Configuration;->checkLicensedFeature(ILjava/lang/String;I)V

    return-void
.end method

.method public needsPELicense(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lnet/sf/saxon/trans/PackageLoaderHE;->getTopLevelPackage()Lnet/sf/saxon/style/StylesheetPackage;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/expr/PackageData;->getLocalLicenseId()I

    move-result v0

    iget-object p0, p0, Lnet/sf/saxon/trans/PackageLoaderHE;->a:Lnet/sf/saxon/Configuration;

    const/16 v1, 0x8

    invoke-virtual {p0, v1, p1, v0}, Lnet/sf/saxon/Configuration;->checkLicensedFeature(ILjava/lang/String;I)V

    return-void
.end method

.method public final o5(Lnet/sf/saxon/om/NodeInfo;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/trans/PackageLoaderHE;->packStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/style/StylesheetPackage;

    new-instance v1, Lnet/sf/saxon/pattern/NameTest;

    iget-object v2, p0, Lnet/sf/saxon/trans/PackageLoaderHE;->a:Lnet/sf/saxon/Configuration;

    invoke-virtual {v2}, Lnet/sf/saxon/Configuration;->getNamePool()Lnet/sf/saxon/om/NamePool;

    move-result-object v2

    const/4 v3, 0x1

    const-string v4, "http://ns.saxonica.com/xslt/export"

    const-string v5, "charMap"

    invoke-direct {v1, v3, v4, v5, v2}, Lnet/sf/saxon/pattern/NameTest;-><init>(ILjava/lang/String;Ljava/lang/String;Lnet/sf/saxon/om/NamePool;)V

    const/4 v2, 0x3

    invoke-interface {p1, v2, v1}, Lnet/sf/saxon/om/NodeInfo;->iterateAxis(ILnet/sf/saxon/pattern/NodePredicate;)Lnet/sf/saxon/tree/iter/AxisIterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Lnet/sf/saxon/tree/iter/AxisIterator;->next()Lnet/sf/saxon/om/NodeInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v5, "name"

    invoke-virtual {p0, v1, v5}, Lnet/sf/saxon/trans/PackageLoaderHE;->getQNameAttribute(Lnet/sf/saxon/om/NodeInfo;Ljava/lang/String;)Lnet/sf/saxon/om/StructuredQName;

    move-result-object v5

    new-instance v6, Lnet/sf/saxon/pattern/NameTest;

    iget-object v7, p0, Lnet/sf/saxon/trans/PackageLoaderHE;->a:Lnet/sf/saxon/Configuration;

    invoke-virtual {v7}, Lnet/sf/saxon/Configuration;->getNamePool()Lnet/sf/saxon/om/NamePool;

    move-result-object v7

    const-string v8, "m"

    invoke-direct {v6, v3, v4, v8, v7}, Lnet/sf/saxon/pattern/NameTest;-><init>(ILjava/lang/String;Ljava/lang/String;Lnet/sf/saxon/om/NamePool;)V

    invoke-interface {v1, v2, v6}, Lnet/sf/saxon/om/NodeInfo;->iterateAxis(ILnet/sf/saxon/pattern/NodePredicate;)Lnet/sf/saxon/tree/iter/AxisIterator;

    move-result-object v1

    new-instance v6, Lnet/sf/saxon/z/IntHashMap;

    invoke-direct {v6}, Lnet/sf/saxon/z/IntHashMap;-><init>()V

    :goto_1
    invoke-interface {v1}, Lnet/sf/saxon/tree/iter/AxisIterator;->next()Lnet/sf/saxon/om/NodeInfo;

    move-result-object v7

    if-eqz v7, :cond_0

    const-string v8, "c"

    invoke-virtual {p0, v7, v8}, Lnet/sf/saxon/trans/PackageLoaderHE;->getIntegerAttribute(Lnet/sf/saxon/om/NodeInfo;Ljava/lang/String;)I

    move-result v8

    const-string v9, ""

    const-string v10, "s"

    invoke-interface {v7, v9, v10}, Lnet/sf/saxon/om/NodeInfo;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v8, v7}, Lnet/sf/saxon/z/IntHashMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    new-instance v1, Lnet/sf/saxon/serialize/CharacterMap;

    invoke-direct {v1, v5, v6}, Lnet/sf/saxon/serialize/CharacterMap;-><init>(Lnet/sf/saxon/om/StructuredQName;Lnet/sf/saxon/z/IntHashMap;)V

    invoke-virtual {v0}, Lnet/sf/saxon/style/StylesheetPackage;->getCharacterMapIndex()Lnet/sf/saxon/serialize/CharacterMapIndex;

    move-result-object v6

    invoke-virtual {v6, v5, v1}, Lnet/sf/saxon/serialize/CharacterMapIndex;->putCharacterMap(Lnet/sf/saxon/om/StructuredQName;Lnet/sf/saxon/serialize/CharacterMap;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final p5(Lnet/sf/saxon/om/NodeInfo;Z)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/trans/PackageLoaderHE;->packStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/style/StylesheetPackage;

    new-instance v1, Lnet/sf/saxon/pattern/NameTest;

    iget-object v2, p0, Lnet/sf/saxon/trans/PackageLoaderHE;->a:Lnet/sf/saxon/Configuration;

    invoke-virtual {v2}, Lnet/sf/saxon/Configuration;->getNamePool()Lnet/sf/saxon/om/NamePool;

    move-result-object v2

    const/4 v3, 0x1

    const-string v4, "http://ns.saxonica.com/xslt/export"

    const-string v5, "co"

    invoke-direct {v1, v3, v4, v5, v2}, Lnet/sf/saxon/pattern/NameTest;-><init>(ILjava/lang/String;Ljava/lang/String;Lnet/sf/saxon/om/NamePool;)V

    const/4 v2, 0x3

    invoke-interface {p1, v2, v1}, Lnet/sf/saxon/om/NodeInfo;->iterateAxis(ILnet/sf/saxon/pattern/NodePredicate;)Lnet/sf/saxon/tree/iter/AxisIterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Lnet/sf/saxon/tree/iter/AxisIterator;->next()Lnet/sf/saxon/om/NodeInfo;

    move-result-object v1

    if-eqz v1, :cond_f

    const-string v4, "id"

    invoke-virtual {p0, v1, v4}, Lnet/sf/saxon/trans/PackageLoaderHE;->getIntegerAttribute(Lnet/sf/saxon/om/NodeInfo;Ljava/lang/String;)I

    move-result v4

    const-string v5, "vis"

    const-string v6, ""

    invoke-interface {v1, v6, v5}, Lnet/sf/saxon/om/NodeInfo;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_0

    sget-object v7, Lnet/sf/saxon/trans/Visibility;->PRIVATE:Lnet/sf/saxon/trans/Visibility;

    goto :goto_1

    :cond_0
    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lnet/sf/saxon/trans/Visibility;->valueOf(Ljava/lang/String;)Lnet/sf/saxon/trans/Visibility;

    move-result-object v7

    :goto_1
    if-nez v5, :cond_1

    sget-object v5, Lnet/sf/saxon/trans/VisibilityProvenance;->DEFAULTED:Lnet/sf/saxon/trans/VisibilityProvenance;

    goto :goto_2

    :cond_1
    sget-object v5, Lnet/sf/saxon/trans/VisibilityProvenance;->EXPLICIT:Lnet/sf/saxon/trans/VisibilityProvenance;

    :goto_2
    const-string v8, "binds"

    invoke-interface {v1, v6, v8}, Lnet/sf/saxon/om/NodeInfo;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "dpack"

    invoke-interface {v1, v6, v9}, Lnet/sf/saxon/om/NodeInfo;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    if-nez v9, :cond_2

    move-object v9, v0

    goto :goto_3

    :cond_2
    iget-object v11, p0, Lnet/sf/saxon/trans/PackageLoaderHE;->allPackages:Ljava/util/Map;

    invoke-interface {v11, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    iget-object v11, p0, Lnet/sf/saxon/trans/PackageLoaderHE;->allPackages:Ljava/util/Map;

    invoke-interface {v11, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lnet/sf/saxon/style/StylesheetPackage;

    goto :goto_3

    :cond_3
    iget-object v11, p0, Lnet/sf/saxon/trans/PackageLoaderHE;->a:Lnet/sf/saxon/Configuration;

    invoke-virtual {v11}, Lnet/sf/saxon/Configuration;->makeStylesheetPackage()Lnet/sf/saxon/style/StylesheetPackage;

    move-result-object v11

    invoke-virtual {v11, v9}, Lnet/sf/saxon/style/StylesheetPackage;->setPackageName(Ljava/lang/String;)V

    iget-object v9, p0, Lnet/sf/saxon/trans/PackageLoaderHE;->a:Lnet/sf/saxon/Configuration;

    invoke-virtual {v9}, Lnet/sf/saxon/Configuration;->getEditionCode()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v11, v9}, Lnet/sf/saxon/expr/PackageData;->setTargetEdition(Ljava/lang/String;)V

    invoke-virtual {v11, v10}, Lnet/sf/saxon/style/StylesheetPackage;->setJustInTimeCompilation(Z)V

    move-object v9, v11

    :goto_3
    const-string v11, "base"

    invoke-virtual {p0, v1, v11}, Lnet/sf/saxon/trans/PackageLoaderHE;->getIntegerAttribute(Lnet/sf/saxon/om/NodeInfo;Ljava/lang/String;)I

    move-result v11

    const/high16 v12, -0x80000000

    if-eq v11, v12, :cond_5

    iget-object v1, p0, Lnet/sf/saxon/trans/PackageLoaderHE;->g:Ljava/util/Map;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v1, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/expr/Component;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lnet/sf/saxon/expr/Component;->getActor()Lnet/sf/saxon/expr/instruct/Actor;

    move-result-object v6

    invoke-static {v6, v7, v5, v0, v9}, Lnet/sf/saxon/expr/Component;->makeComponent(Lnet/sf/saxon/expr/instruct/Actor;Lnet/sf/saxon/trans/Visibility;Lnet/sf/saxon/trans/VisibilityProvenance;Lnet/sf/saxon/style/StylesheetPackage;Lnet/sf/saxon/style/StylesheetPackage;)Lnet/sf/saxon/expr/Component;

    move-result-object v5

    invoke-virtual {v5, v1}, Lnet/sf/saxon/expr/Component;->setBaseComponent(Lnet/sf/saxon/expr/Component;)V

    instance-of v6, v5, Lnet/sf/saxon/expr/Component$M;

    if-eqz v6, :cond_c

    invoke-virtual {v0}, Lnet/sf/saxon/style/StylesheetPackage;->getRuleManager()Lnet/sf/saxon/trans/rules/RuleManager;

    move-result-object v6

    invoke-virtual {v1}, Lnet/sf/saxon/expr/Component;->getActor()Lnet/sf/saxon/expr/instruct/Actor;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sf/saxon/expr/instruct/Actor;->getComponentName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v1

    invoke-virtual {v6, v1, v3}, Lnet/sf/saxon/trans/rules/RuleManager;->obtainMode(Lnet/sf/saxon/om/StructuredQName;Z)Lnet/sf/saxon/trans/Mode;

    goto/16 :goto_7

    :cond_4
    new-instance p0, Ljava/lang/AssertionError;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0

    :cond_5
    sget-object v6, Lnet/sf/saxon/pattern/NodeKindTest;->ELEMENT:Lnet/sf/saxon/pattern/NodeKindTest;

    invoke-interface {v1, v2, v6}, Lnet/sf/saxon/om/NodeInfo;->iterateAxis(ILnet/sf/saxon/pattern/NodePredicate;)Lnet/sf/saxon/tree/iter/AxisIterator;

    move-result-object v1

    invoke-interface {v1}, Lnet/sf/saxon/tree/iter/AxisIterator;->next()Lnet/sf/saxon/om/NodeInfo;

    move-result-object v1

    invoke-interface {v1}, Lnet/sf/saxon/om/NodeInfo;->getLocalPart()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v11

    const/4 v12, -0x1

    sparse-switch v11, :sswitch_data_0

    :goto_4
    move v10, v12

    goto :goto_5

    :sswitch_0
    const-string v10, "function"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_6

    goto :goto_4

    :cond_6
    const/4 v10, 0x5

    goto :goto_5

    :sswitch_1
    const-string v10, "mode"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_7

    goto :goto_4

    :cond_7
    const/4 v10, 0x4

    goto :goto_5

    :sswitch_2
    const-string v10, "globalParam"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_8

    goto :goto_4

    :cond_8
    move v10, v2

    goto :goto_5

    :sswitch_3
    const-string v10, "attributeSet"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_9

    goto :goto_4

    :cond_9
    const/4 v10, 0x2

    goto :goto_5

    :sswitch_4
    const-string v10, "template"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_a

    goto :goto_4

    :cond_a
    move v10, v3

    goto :goto_5

    :sswitch_5
    const-string v11, "globalVariable"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_b

    goto :goto_4

    :cond_b
    :goto_5
    packed-switch v10, :pswitch_data_0

    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "unknown component kind "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    invoke-virtual {p0, v1}, Lnet/sf/saxon/trans/PackageLoaderHE;->s5(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/instruct/UserFunction;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sf/saxon/expr/instruct/UserFunction;->getDeclaredStreamability()Lnet/sf/saxon/trans/FunctionStreamability;

    sget-object v6, Lnet/sf/saxon/trans/FunctionStreamability;->UNCLASSIFIED:Lnet/sf/saxon/trans/FunctionStreamability;

    goto :goto_6

    :pswitch_1
    invoke-virtual {p0, v1}, Lnet/sf/saxon/trans/PackageLoaderHE;->w5(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/trans/Mode;

    move-result-object v1

    goto :goto_6

    :pswitch_2
    invoke-virtual {p0, v1}, Lnet/sf/saxon/trans/PackageLoaderHE;->t5(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/instruct/GlobalParam;

    move-result-object v1

    goto :goto_6

    :pswitch_3
    invoke-virtual {p0, v1}, Lnet/sf/saxon/trans/PackageLoaderHE;->n5(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/instruct/AttributeSet;

    move-result-object v1

    goto :goto_6

    :pswitch_4
    invoke-virtual {p0, v1}, Lnet/sf/saxon/trans/PackageLoaderHE;->x5(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/instruct/NamedTemplate;

    move-result-object v1

    goto :goto_6

    :pswitch_5
    invoke-virtual {p0, v1}, Lnet/sf/saxon/trans/PackageLoaderHE;->u5(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/instruct/GlobalVariable;

    move-result-object v1

    :goto_6
    invoke-static {v1, v7, v5, v0, v9}, Lnet/sf/saxon/expr/Component;->makeComponent(Lnet/sf/saxon/expr/instruct/Actor;Lnet/sf/saxon/trans/Visibility;Lnet/sf/saxon/trans/VisibilityProvenance;Lnet/sf/saxon/style/StylesheetPackage;Lnet/sf/saxon/style/StylesheetPackage;)Lnet/sf/saxon/expr/Component;

    move-result-object v5

    invoke-virtual {v1, v5}, Lnet/sf/saxon/expr/instruct/Actor;->setDeclaringComponent(Lnet/sf/saxon/expr/Component;)V

    invoke-virtual {v1, v7}, Lnet/sf/saxon/expr/instruct/Actor;->setDeclaredVisibility(Lnet/sf/saxon/trans/Visibility;)V

    :cond_c
    :goto_7
    iget-object v1, p0, Lnet/sf/saxon/trans/PackageLoaderHE;->h:Ljava/util/Map;

    invoke-interface {v1, v5, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lnet/sf/saxon/trans/PackageLoaderHE;->g:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_d

    invoke-virtual {v0, v5}, Lnet/sf/saxon/style/StylesheetPackage;->addOverriddenComponent(Lnet/sf/saxon/expr/Component;)V

    goto/16 :goto_0

    :cond_d
    invoke-virtual {v5}, Lnet/sf/saxon/expr/Component;->getVisibility()Lnet/sf/saxon/trans/Visibility;

    move-result-object v1

    sget-object v4, Lnet/sf/saxon/trans/Visibility;->HIDDEN:Lnet/sf/saxon/trans/Visibility;

    if-ne v1, v4, :cond_e

    invoke-virtual {v0, v5}, Lnet/sf/saxon/style/StylesheetPackage;->addHiddenComponent(Lnet/sf/saxon/expr/Component;)V

    goto/16 :goto_0

    :cond_e
    invoke-virtual {v0, v5}, Lnet/sf/saxon/style/StylesheetPackage;->addComponent(Lnet/sf/saxon/expr/Component;)V

    goto/16 :goto_0

    :cond_f
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x54d818c1 -> :sswitch_5
        -0x4ec53386 -> :sswitch_4
        -0x3c97bbda -> :sswitch_3
        -0x33040d56 -> :sswitch_2
        0x3339a3 -> :sswitch_1
        0x524f73d8 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public parseAlphaCode(Lnet/sf/saxon/om/NodeInfo;Ljava/lang/String;)Lnet/sf/saxon/value/SequenceType;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const-string v0, ""

    invoke-interface {p1, v0, p2}, Lnet/sf/saxon/om/NodeInfo;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object p0, Lnet/sf/saxon/value/SequenceType;->ANY_SEQUENCE:Lnet/sf/saxon/value/SequenceType;

    return-object p0

    :cond_0
    :try_start_0
    iget-object p0, p0, Lnet/sf/saxon/trans/PackageLoaderHE;->a:Lnet/sf/saxon/Configuration;

    invoke-static {v0, p0}, Lnet/sf/saxon/type/AlphaCode;->toSequenceType(Ljava/lang/String;Lnet/sf/saxon/Configuration;)Lnet/sf/saxon/value/SequenceType;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v1, Lnet/sf/saxon/trans/XPathException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid alpha code "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lnet/sf/saxon/om/NodeInfo;->getDisplayName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/@"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "=\'"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\': "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public parseAlphaCodeForItemType(Lnet/sf/saxon/om/NodeInfo;Ljava/lang/String;)Lnet/sf/saxon/type/ItemType;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const-string v0, ""

    invoke-interface {p1, v0, p2}, Lnet/sf/saxon/om/NodeInfo;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lnet/sf/saxon/type/AnyItemType;->getInstance()Lnet/sf/saxon/type/AnyItemType;

    move-result-object p0

    return-object p0

    :cond_0
    :try_start_0
    iget-object p0, p0, Lnet/sf/saxon/trans/PackageLoaderHE;->a:Lnet/sf/saxon/Configuration;

    invoke-static {v0, p0}, Lnet/sf/saxon/type/AlphaCode;->toItemType(Ljava/lang/String;Lnet/sf/saxon/Configuration;)Lnet/sf/saxon/type/ItemType;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v1, Lnet/sf/saxon/trans/XPathException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid alpha code "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lnet/sf/saxon/om/NodeInfo;->getDisplayName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/@"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "=\'"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\': "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public parseItemTypeAttribute(Lnet/sf/saxon/om/NodeInfo;Ljava/lang/String;)Lnet/sf/saxon/type/ItemType;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const-string v0, ""

    invoke-interface {p1, v0, p2}, Lnet/sf/saxon/om/NodeInfo;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_0

    invoke-static {}, Lnet/sf/saxon/type/AnyItemType;->getInstance()Lnet/sf/saxon/type/AnyItemType;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/trans/PackageLoaderHE;->j5(Lnet/sf/saxon/om/NodeInfo;Ljava/lang/String;)Lnet/sf/saxon/type/ItemType;

    move-result-object p0

    return-object p0
.end method

.method public parseSequenceType(Lnet/sf/saxon/om/NodeInfo;Ljava/lang/String;)Lnet/sf/saxon/value/SequenceType;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->i5(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/sxpath/IndependentContext;

    move-result-object v0

    const-string v1, ""

    invoke-interface {p1, v1, p2}, Lnet/sf/saxon/om/NodeInfo;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    sget-object p0, Lnet/sf/saxon/value/SequenceType;->ANY_SEQUENCE:Lnet/sf/saxon/value/SequenceType;

    return-object p0

    :cond_0
    iget-object p0, p0, Lnet/sf/saxon/trans/PackageLoaderHE;->b:Lnet/sf/saxon/expr/parser/XPathParser;

    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/expr/parser/XPathParser;->parseExtendedSequenceType(Ljava/lang/String;Lnet/sf/saxon/expr/StaticContext;)Lnet/sf/saxon/value/SequenceType;

    move-result-object p0

    return-object p0
.end method

.method public processComponentReference(Lnet/sf/saxon/style/StylesheetPackage;Lnet/sf/saxon/expr/ComponentInvocation;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-interface {p2}, Lnet/sf/saxon/expr/ComponentInvocation;->getSymbolicName()Lnet/sf/saxon/trans/SymbolicName;

    move-result-object p0

    invoke-virtual {p1, p0}, Lnet/sf/saxon/style/StylesheetPackage;->getComponent(Lnet/sf/saxon/trans/SymbolicName;)Lnet/sf/saxon/expr/Component;

    move-result-object p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lnet/sf/saxon/trans/SymbolicName;->getComponentName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object p1

    const-string p2, "http://www.w3.org/1999/XSL/Transform"

    invoke-virtual {p1, p2}, Lnet/sf/saxon/om/StructuredQName;->hasURI(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/trans/SymbolicName;->getComponentName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sf/saxon/om/StructuredQName;->getLocalPart()Ljava/lang/String;

    move-result-object p1

    const-string p2, "original"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    new-instance p1, Lnet/sf/saxon/trans/XPathException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Loading compiled package: unresolved component reference to "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    instance-of p0, p2, Lnet/sf/saxon/expr/GlobalVariableReference;

    if-eqz p0, :cond_2

    check-cast p2, Lnet/sf/saxon/expr/GlobalVariableReference;

    invoke-virtual {p2, p1}, Lnet/sf/saxon/expr/GlobalVariableReference;->setTarget(Lnet/sf/saxon/expr/Component;)V

    goto :goto_0

    :cond_2
    instance-of p0, p2, Lnet/sf/saxon/expr/UserFunctionCall;

    if-eqz p0, :cond_3

    check-cast p2, Lnet/sf/saxon/expr/UserFunctionCall;

    invoke-virtual {p1}, Lnet/sf/saxon/expr/Component;->getActor()Lnet/sf/saxon/expr/instruct/Actor;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/expr/instruct/UserFunction;

    invoke-virtual {p2, p0}, Lnet/sf/saxon/expr/UserFunctionCall;->setFunction(Lnet/sf/saxon/expr/instruct/UserFunction;)V

    invoke-virtual {p1}, Lnet/sf/saxon/expr/Component;->getActor()Lnet/sf/saxon/expr/instruct/Actor;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/expr/instruct/UserFunction;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/UserFunction;->getResultType()Lnet/sf/saxon/value/SequenceType;

    move-result-object p0

    invoke-virtual {p2, p0}, Lnet/sf/saxon/expr/UserFunctionCall;->setStaticType(Lnet/sf/saxon/value/SequenceType;)V

    goto :goto_0

    :cond_3
    instance-of p0, p2, Lnet/sf/saxon/functions/hof/UserFunctionReference;

    if-eqz p0, :cond_4

    check-cast p2, Lnet/sf/saxon/functions/hof/UserFunctionReference;

    invoke-virtual {p1}, Lnet/sf/saxon/expr/Component;->getActor()Lnet/sf/saxon/expr/instruct/Actor;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/expr/instruct/UserFunction;

    invoke-virtual {p2, p0}, Lnet/sf/saxon/functions/hof/UserFunctionReference;->setFunction(Lnet/sf/saxon/expr/instruct/UserFunction;)V

    goto :goto_0

    :cond_4
    instance-of p0, p2, Lnet/sf/saxon/expr/instruct/CallTemplate;

    if-eqz p0, :cond_5

    check-cast p2, Lnet/sf/saxon/expr/instruct/CallTemplate;

    invoke-virtual {p1}, Lnet/sf/saxon/expr/Component;->getActor()Lnet/sf/saxon/expr/instruct/Actor;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/expr/instruct/NamedTemplate;

    invoke-virtual {p2, p0}, Lnet/sf/saxon/expr/instruct/CallTemplate;->setTargetTemplate(Lnet/sf/saxon/expr/instruct/NamedTemplate;)V

    goto :goto_0

    :cond_5
    instance-of p0, p2, Lnet/sf/saxon/expr/instruct/UseAttributeSet;

    if-eqz p0, :cond_6

    check-cast p2, Lnet/sf/saxon/expr/instruct/UseAttributeSet;

    invoke-virtual {p1}, Lnet/sf/saxon/expr/Component;->getActor()Lnet/sf/saxon/expr/instruct/Actor;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/expr/instruct/AttributeSet;

    invoke-virtual {p2, p0}, Lnet/sf/saxon/expr/instruct/UseAttributeSet;->setTarget(Lnet/sf/saxon/expr/instruct/AttributeSet;)V

    goto :goto_0

    :cond_6
    instance-of p0, p2, Lnet/sf/saxon/expr/instruct/ApplyTemplates;

    if-eqz p0, :cond_7

    check-cast p2, Lnet/sf/saxon/expr/instruct/ApplyTemplates;

    invoke-virtual {p1}, Lnet/sf/saxon/expr/Component;->getActor()Lnet/sf/saxon/expr/instruct/Actor;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/trans/SimpleMode;

    invoke-virtual {p2, p0}, Lnet/sf/saxon/expr/instruct/ApplyTemplates;->setMode(Lnet/sf/saxon/trans/SimpleMode;)V

    :goto_0
    const/4 p0, 0x0

    return p0

    :cond_7
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown component reference "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final q5(Lnet/sf/saxon/om/NodeInfo;)V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v1, v0, Lnet/sf/saxon/trans/PackageLoaderHE;->packStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/style/StylesheetPackage;

    invoke-virtual {v1}, Lnet/sf/saxon/expr/PackageData;->getDecimalFormatManager()Lnet/sf/saxon/trans/DecimalFormatManager;

    move-result-object v1

    new-instance v2, Lnet/sf/saxon/pattern/NameTest;

    iget-object v3, v0, Lnet/sf/saxon/trans/PackageLoaderHE;->a:Lnet/sf/saxon/Configuration;

    invoke-virtual {v3}, Lnet/sf/saxon/Configuration;->getNamePool()Lnet/sf/saxon/om/NamePool;

    move-result-object v3

    const/4 v4, 0x1

    const-string v5, "http://ns.saxonica.com/xslt/export"

    const-string v6, "decimalFormat"

    invoke-direct {v2, v4, v5, v6, v3}, Lnet/sf/saxon/pattern/NameTest;-><init>(ILjava/lang/String;Ljava/lang/String;Lnet/sf/saxon/om/NamePool;)V

    const/4 v3, 0x3

    move-object/from16 v5, p1

    invoke-interface {v5, v3, v2}, Lnet/sf/saxon/om/NodeInfo;->iterateAxis(ILnet/sf/saxon/pattern/NodePredicate;)Lnet/sf/saxon/tree/iter/AxisIterator;

    move-result-object v2

    sget-object v3, Lnet/sf/saxon/trans/DecimalSymbols;->propertyNames:[Ljava/lang/String;

    :cond_0
    invoke-interface {v2}, Lnet/sf/saxon/tree/iter/AxisIterator;->next()Lnet/sf/saxon/om/NodeInfo;

    move-result-object v5

    if-eqz v5, :cond_6

    const-string v6, "name"

    invoke-virtual {v0, v5, v6}, Lnet/sf/saxon/trans/PackageLoaderHE;->getQNameAttribute(Lnet/sf/saxon/om/NodeInfo;Ljava/lang/String;)Lnet/sf/saxon/om/StructuredQName;

    move-result-object v7

    if-nez v7, :cond_1

    invoke-virtual {v1}, Lnet/sf/saxon/trans/DecimalFormatManager;->getDefaultDecimalFormat()Lnet/sf/saxon/trans/DecimalSymbols;

    move-result-object v7

    goto :goto_0

    :cond_1
    invoke-virtual {v1, v7}, Lnet/sf/saxon/trans/DecimalFormatManager;->obtainNamedDecimalFormat(Lnet/sf/saxon/om/StructuredQName;)Lnet/sf/saxon/trans/DecimalSymbols;

    move-result-object v7

    :goto_0
    sget-object v8, Lnet/sf/saxon/s9api/HostLanguage;->XSLT:Lnet/sf/saxon/s9api/HostLanguage;

    const/16 v9, 0x1f

    invoke-virtual {v7, v8, v9}, Lnet/sf/saxon/trans/DecimalSymbols;->setHostLanguage(Lnet/sf/saxon/s9api/HostLanguage;I)V

    array-length v8, v3

    const/4 v9, 0x0

    move v10, v9

    :goto_1
    if-ge v10, v8, :cond_0

    aget-object v11, v3, v10

    const-string v12, ""

    invoke-interface {v5, v12, v11}, Lnet/sf/saxon/om/NodeInfo;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_5

    invoke-virtual {v11}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v11}, Ljava/lang/String;->hashCode()I

    move-result v13

    const-string v14, "infinity"

    const-string v15, "NaN"

    const/16 v16, -0x1

    sparse-switch v13, :sswitch_data_0

    goto :goto_2

    :sswitch_0
    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_2

    goto :goto_2

    :cond_2
    const/16 v16, 0x2

    goto :goto_2

    :sswitch_1
    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_3

    goto :goto_2

    :cond_3
    move/from16 v16, v4

    goto :goto_2

    :sswitch_2
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_4

    goto :goto_2

    :cond_4
    move/from16 v16, v9

    :goto_2
    packed-switch v16, :pswitch_data_0

    invoke-virtual {v0, v5, v11}, Lnet/sf/saxon/trans/PackageLoaderHE;->getIntegerAttribute(Lnet/sf/saxon/om/NodeInfo;Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v7, v11, v12}, Lnet/sf/saxon/trans/DecimalSymbols;->setIntProperty(Ljava/lang/String;I)V

    goto :goto_3

    :pswitch_0
    invoke-interface {v5, v12, v14}, Lnet/sf/saxon/om/NodeInfo;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Lnet/sf/saxon/trans/DecimalSymbols;->setInfinity(Ljava/lang/String;)V

    goto :goto_3

    :pswitch_1
    invoke-interface {v5, v12, v15}, Lnet/sf/saxon/om/NodeInfo;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Lnet/sf/saxon/trans/DecimalSymbols;->setNaN(Ljava/lang/String;)V

    :cond_5
    :goto_3
    :pswitch_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_6
    return-void

    :sswitch_data_0
    .sparse-switch
        0x130db -> :sswitch_2
        0x337a8b -> :sswitch_1
        0xa526a28 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public final r5(Lnet/sf/saxon/om/NodeInfo;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    new-instance v0, Lcom/sunia/HTREnginev2/kok;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/kok;-><init>()V

    invoke-static {v0}, Lnet/sf/saxon/pattern/NodeSelector;->of(Ljava/util/function/Predicate;)Lnet/sf/saxon/pattern/NodeSelector;

    move-result-object v0

    invoke-interface {p1, v0}, Lnet/sf/saxon/om/NodeInfo;->children(Lnet/sf/saxon/pattern/NodePredicate;)Ljava/lang/Iterable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/om/NodeInfo;

    if-nez v0, :cond_1

    new-instance v0, Lnet/sf/saxon/expr/instruct/GlobalContextRequirement;

    invoke-direct {v0}, Lnet/sf/saxon/expr/instruct/GlobalContextRequirement;-><init>()V

    iget-object v2, p0, Lnet/sf/saxon/trans/PackageLoaderHE;->packStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/sf/saxon/style/StylesheetPackage;

    invoke-virtual {v2, v0}, Lnet/sf/saxon/style/StylesheetPackage;->setContextItemRequirements(Lnet/sf/saxon/expr/instruct/GlobalContextRequirement;)V

    :cond_1
    const-string v2, ""

    const-string v3, "use"

    invoke-interface {v1, v2, v3}, Lnet/sf/saxon/om/NodeInfo;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "opt"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_2

    invoke-virtual {v0, v5}, Lnet/sf/saxon/expr/instruct/GlobalContextRequirement;->setMayBeOmitted(Z)V

    invoke-virtual {v0, v4}, Lnet/sf/saxon/expr/instruct/GlobalContextRequirement;->setAbsentFocus(Z)V

    goto :goto_1

    :cond_2
    const-string v3, "pro"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v0, v5}, Lnet/sf/saxon/expr/instruct/GlobalContextRequirement;->setMayBeOmitted(Z)V

    invoke-virtual {v0, v5}, Lnet/sf/saxon/expr/instruct/GlobalContextRequirement;->setAbsentFocus(Z)V

    goto :goto_1

    :cond_3
    const-string v3, "req"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v0, v4}, Lnet/sf/saxon/expr/instruct/GlobalContextRequirement;->setMayBeOmitted(Z)V

    invoke-virtual {v0, v4}, Lnet/sf/saxon/expr/instruct/GlobalContextRequirement;->setAbsentFocus(Z)V

    :cond_4
    :goto_1
    const-string v2, "type"

    invoke-virtual {p0, v1, v2}, Lnet/sf/saxon/trans/PackageLoaderHE;->parseItemTypeAttribute(Lnet/sf/saxon/om/NodeInfo;Ljava/lang/String;)Lnet/sf/saxon/type/ItemType;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Lnet/sf/saxon/expr/instruct/GlobalContextRequirement;->addRequiredItemType(Lnet/sf/saxon/type/ItemType;)V

    goto :goto_0

    :cond_5
    return-void
.end method

.method public readFunction(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/instruct/UserFunction;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/trans/PackageLoaderHE;->packStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/style/StylesheetPackage;

    const-string v1, "name"

    invoke-virtual {p0, p1, v1}, Lnet/sf/saxon/trans/PackageLoaderHE;->getQNameAttribute(Lnet/sf/saxon/om/NodeInfo;Ljava/lang/String;)Lnet/sf/saxon/om/StructuredQName;

    move-result-object v2

    const-string v3, "slots"

    invoke-virtual {p0, p1, v3}, Lnet/sf/saxon/trans/PackageLoaderHE;->getIntegerAttribute(Lnet/sf/saxon/om/NodeInfo;Ljava/lang/String;)I

    move-result v3

    const-string v4, "flags"

    const-string v5, ""

    invoke-interface {p1, v5, v4}, Lnet/sf/saxon/om/NodeInfo;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    move-object v5, v4

    :goto_0
    invoke-virtual {p0, v5}, Lnet/sf/saxon/trans/PackageLoaderHE;->makeFunction(Ljava/lang/String;)Lnet/sf/saxon/expr/instruct/UserFunction;

    move-result-object v4

    invoke-virtual {v4, v2}, Lnet/sf/saxon/expr/instruct/UserFunction;->setFunctionName(Lnet/sf/saxon/om/StructuredQName;)V

    new-instance v2, Lnet/sf/saxon/expr/instruct/SlotManager;

    invoke-direct {v2, v3}, Lnet/sf/saxon/expr/instruct/SlotManager;-><init>(I)V

    invoke-virtual {v4, v2}, Lnet/sf/saxon/expr/instruct/Actor;->setStackFrameMap(Lnet/sf/saxon/expr/instruct/SlotManager;)V

    invoke-virtual {v4, v0}, Lnet/sf/saxon/expr/instruct/Actor;->setPackageData(Lnet/sf/saxon/expr/PackageData;)V

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->makeRetainedStaticContext(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    move-result-object v0

    invoke-virtual {v4, v0}, Lnet/sf/saxon/expr/instruct/Actor;->setRetainedStaticContext(Lnet/sf/saxon/expr/parser/RetainedStaticContext;)V

    const-string v0, "as"

    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/trans/PackageLoaderHE;->parseAlphaCode(Lnet/sf/saxon/om/NodeInfo;Ljava/lang/String;)Lnet/sf/saxon/value/SequenceType;

    move-result-object v2

    invoke-virtual {v4, v2}, Lnet/sf/saxon/expr/instruct/UserFunction;->setResultType(Lnet/sf/saxon/value/SequenceType;)V

    sget-object v2, Lnet/sf/saxon/trans/FunctionStreamability;->UNCLASSIFIED:Lnet/sf/saxon/trans/FunctionStreamability;

    invoke-virtual {v4, v2}, Lnet/sf/saxon/expr/instruct/UserFunction;->setDeclaredStreamability(Lnet/sf/saxon/trans/FunctionStreamability;)V

    invoke-virtual {v4}, Lnet/sf/saxon/expr/instruct/UserFunction;->incrementReferenceCount()V

    const-string v3, "eval"

    invoke-virtual {p0, p1, v3}, Lnet/sf/saxon/trans/PackageLoaderHE;->getIntegerAttribute(Lnet/sf/saxon/om/NodeInfo;Ljava/lang/String;)I

    move-result v3

    const-string v6, "p"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    sget-object v6, Lnet/sf/saxon/expr/instruct/UserFunction$Determinism;->PROACTIVE:Lnet/sf/saxon/expr/instruct/UserFunction$Determinism;

    invoke-virtual {v4, v6}, Lnet/sf/saxon/expr/instruct/UserFunction;->setDeterminism(Lnet/sf/saxon/expr/instruct/UserFunction$Determinism;)V

    goto :goto_1

    :cond_1
    const-string v6, "e"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    sget-object v6, Lnet/sf/saxon/expr/instruct/UserFunction$Determinism;->ELIDABLE:Lnet/sf/saxon/expr/instruct/UserFunction$Determinism;

    invoke-virtual {v4, v6}, Lnet/sf/saxon/expr/instruct/UserFunction;->setDeterminism(Lnet/sf/saxon/expr/instruct/UserFunction$Determinism;)V

    goto :goto_1

    :cond_2
    const-string v6, "d"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    sget-object v6, Lnet/sf/saxon/expr/instruct/UserFunction$Determinism;->DETERMINISTIC:Lnet/sf/saxon/expr/instruct/UserFunction$Determinism;

    invoke-virtual {v4, v6}, Lnet/sf/saxon/expr/instruct/UserFunction;->setDeterminism(Lnet/sf/saxon/expr/instruct/UserFunction$Determinism;)V

    :cond_3
    :goto_1
    const-string v6, "U"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v6, :cond_4

    invoke-virtual {v4, v2}, Lnet/sf/saxon/expr/instruct/UserFunction;->setDeclaredStreamability(Lnet/sf/saxon/trans/FunctionStreamability;)V

    goto :goto_3

    :cond_4
    const-string v2, "A"

    invoke-virtual {v5, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    sget-object v2, Lnet/sf/saxon/trans/FunctionStreamability;->ABSORBING:Lnet/sf/saxon/trans/FunctionStreamability;

    invoke-virtual {v4, v2}, Lnet/sf/saxon/expr/instruct/UserFunction;->setDeclaredStreamability(Lnet/sf/saxon/trans/FunctionStreamability;)V

    :goto_2
    move v2, v8

    goto :goto_4

    :cond_5
    const-string v2, "I"

    invoke-virtual {v5, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    sget-object v2, Lnet/sf/saxon/trans/FunctionStreamability;->INSPECTION:Lnet/sf/saxon/trans/FunctionStreamability;

    invoke-virtual {v4, v2}, Lnet/sf/saxon/expr/instruct/UserFunction;->setDeclaredStreamability(Lnet/sf/saxon/trans/FunctionStreamability;)V

    goto :goto_2

    :cond_6
    const-string v2, "F"

    invoke-virtual {v5, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    sget-object v2, Lnet/sf/saxon/trans/FunctionStreamability;->FILTER:Lnet/sf/saxon/trans/FunctionStreamability;

    invoke-virtual {v4, v2}, Lnet/sf/saxon/expr/instruct/UserFunction;->setDeclaredStreamability(Lnet/sf/saxon/trans/FunctionStreamability;)V

    goto :goto_2

    :cond_7
    const-string v2, "S"

    invoke-virtual {v5, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8

    sget-object v2, Lnet/sf/saxon/trans/FunctionStreamability;->SHALLOW_DESCENT:Lnet/sf/saxon/trans/FunctionStreamability;

    invoke-virtual {v4, v2}, Lnet/sf/saxon/expr/instruct/UserFunction;->setDeclaredStreamability(Lnet/sf/saxon/trans/FunctionStreamability;)V

    goto :goto_2

    :cond_8
    const-string v2, "D"

    invoke-virtual {v5, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9

    sget-object v2, Lnet/sf/saxon/trans/FunctionStreamability;->DEEP_DESCENT:Lnet/sf/saxon/trans/FunctionStreamability;

    invoke-virtual {v4, v2}, Lnet/sf/saxon/expr/instruct/UserFunction;->setDeclaredStreamability(Lnet/sf/saxon/trans/FunctionStreamability;)V

    goto :goto_2

    :cond_9
    const-string v2, "C"

    invoke-virtual {v5, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a

    sget-object v2, Lnet/sf/saxon/trans/FunctionStreamability;->ASCENT:Lnet/sf/saxon/trans/FunctionStreamability;

    invoke-virtual {v4, v2}, Lnet/sf/saxon/expr/instruct/UserFunction;->setDeclaredStreamability(Lnet/sf/saxon/trans/FunctionStreamability;)V

    goto :goto_2

    :cond_a
    :goto_3
    move v2, v7

    :goto_4
    invoke-static {v3}, Lnet/sf/saxon/expr/parser/Evaluators;->getEvaluator(I)Lnet/sf/saxon/expr/parser/Evaluator;

    move-result-object v3

    invoke-virtual {v4, v3}, Lnet/sf/saxon/expr/instruct/UserFunction;->setEvaluator(Lnet/sf/saxon/expr/parser/Evaluator;)V

    iput-object v4, p0, Lnet/sf/saxon/trans/PackageLoaderHE;->k:Lnet/sf/saxon/expr/instruct/UserFunction;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Lnet/sf/saxon/pattern/NameTest;

    iget-object v6, p0, Lnet/sf/saxon/trans/PackageLoaderHE;->a:Lnet/sf/saxon/Configuration;

    invoke-virtual {v6}, Lnet/sf/saxon/Configuration;->getNamePool()Lnet/sf/saxon/om/NamePool;

    move-result-object v6

    const-string v9, "http://ns.saxonica.com/xslt/export"

    const-string v10, "arg"

    invoke-direct {v5, v8, v9, v10, v6}, Lnet/sf/saxon/pattern/NameTest;-><init>(ILjava/lang/String;Ljava/lang/String;Lnet/sf/saxon/om/NamePool;)V

    const/4 v6, 0x3

    invoke-interface {p1, v6, v5}, Lnet/sf/saxon/om/NodeInfo;->iterateAxis(ILnet/sf/saxon/pattern/NodePredicate;)Lnet/sf/saxon/tree/iter/AxisIterator;

    move-result-object v5

    move v6, v7

    :goto_5
    invoke-interface {v5}, Lnet/sf/saxon/tree/iter/AxisIterator;->next()Lnet/sf/saxon/om/NodeInfo;

    move-result-object v8

    if-eqz v8, :cond_b

    new-instance v9, Lnet/sf/saxon/expr/instruct/UserFunctionParameter;

    invoke-direct {v9}, Lnet/sf/saxon/expr/instruct/UserFunctionParameter;-><init>()V

    invoke-virtual {p0, v8, v1}, Lnet/sf/saxon/trans/PackageLoaderHE;->getQNameAttribute(Lnet/sf/saxon/om/NodeInfo;Ljava/lang/String;)Lnet/sf/saxon/om/StructuredQName;

    move-result-object v10

    invoke-virtual {v9, v10}, Lnet/sf/saxon/expr/instruct/UserFunctionParameter;->setVariableQName(Lnet/sf/saxon/om/StructuredQName;)V

    invoke-virtual {p0, v8, v0}, Lnet/sf/saxon/trans/PackageLoaderHE;->parseAlphaCode(Lnet/sf/saxon/om/NodeInfo;Ljava/lang/String;)Lnet/sf/saxon/value/SequenceType;

    move-result-object v8

    invoke-virtual {v9, v8}, Lnet/sf/saxon/expr/instruct/UserFunctionParameter;->setRequiredType(Lnet/sf/saxon/value/SequenceType;)V

    add-int/lit8 v8, v6, 0x1

    invoke-virtual {v9, v6}, Lnet/sf/saxon/expr/instruct/UserFunctionParameter;->setSlotNumber(I)V

    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Lnet/sf/saxon/trans/PackageLoaderHE;->localBindings:Ljava/util/Stack;

    invoke-virtual {v6, v9}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    move v6, v8

    goto :goto_5

    :cond_b
    new-array v0, v7, [Lnet/sf/saxon/expr/instruct/UserFunctionParameter;

    invoke-interface {v3, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/sf/saxon/expr/instruct/UserFunctionParameter;

    invoke-virtual {v4, v0}, Lnet/sf/saxon/expr/instruct/UserFunction;->setParameterDefinitions([Lnet/sf/saxon/expr/instruct/UserFunctionParameter;)V

    if-eqz v2, :cond_c

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/expr/instruct/UserFunctionParameter;

    invoke-virtual {v4}, Lnet/sf/saxon/expr/instruct/UserFunction;->getDeclaredStreamability()Lnet/sf/saxon/trans/FunctionStreamability;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/expr/instruct/UserFunctionParameter;->setFunctionStreamability(Lnet/sf/saxon/trans/FunctionStreamability;)V

    :cond_c
    const-string v0, "body"

    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/trans/PackageLoaderHE;->getChildWithRole(Lnet/sf/saxon/om/NodeInfo;Ljava/lang/String;)Lnet/sf/saxon/om/NodeInfo;

    move-result-object p1

    if-nez p1, :cond_d

    invoke-static {}, Lnet/sf/saxon/expr/Literal;->makeEmptySequence()Lnet/sf/saxon/expr/Literal;

    move-result-object p1

    invoke-virtual {v4, p1}, Lnet/sf/saxon/expr/instruct/Actor;->setBody(Lnet/sf/saxon/expr/Expression;)V

    goto :goto_6

    :cond_d
    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->loadExpression(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    invoke-virtual {v4, p1}, Lnet/sf/saxon/expr/instruct/Actor;->setBody(Lnet/sf/saxon/expr/Expression;)V

    invoke-virtual {p1}, Lnet/sf/saxon/expr/Expression;->getRetainedStaticContext()Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnet/sf/saxon/expr/Expression;->setRetainedStaticContext(Lnet/sf/saxon/expr/parser/RetainedStaticContext;)V

    :goto_6
    invoke-virtual {v4}, Lnet/sf/saxon/expr/instruct/UserFunction;->getArity()I

    move-result p1

    if-ge v7, p1, :cond_e

    iget-object p1, p0, Lnet/sf/saxon/trans/PackageLoaderHE;->localBindings:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    :cond_e
    invoke-virtual {v4}, Lnet/sf/saxon/expr/instruct/UserFunction;->getDeclaredStreamability()Lnet/sf/saxon/trans/FunctionStreamability;

    move-result-object p1

    sget-object v0, Lnet/sf/saxon/trans/FunctionStreamability;->UNCLASSIFIED:Lnet/sf/saxon/trans/FunctionStreamability;

    if-eq p1, v0, :cond_f

    new-instance p1, Lcom/sunia/HTREnginev2/vok;

    invoke-direct {p1, v4}, Lcom/sunia/HTREnginev2/vok;-><init>(Lnet/sf/saxon/expr/instruct/UserFunction;)V

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->addCompletionAction(Lnet/sf/saxon/om/Action;)V

    :cond_f
    return-object v4
.end method

.method public readSchemaNamespaces(Lnet/sf/saxon/om/NodeInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    return-void
.end method

.method public final s5(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/instruct/UserFunction;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lnet/sf/saxon/trans/PackageLoaderHE;->localBindings:Ljava/util/Stack;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->readFunction(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/instruct/UserFunction;

    move-result-object p1

    iget-object v0, p0, Lnet/sf/saxon/trans/PackageLoaderHE;->userFunctions:Ljava/util/Map;

    invoke-virtual {p1}, Lnet/sf/saxon/expr/instruct/UserFunction;->getSymbolicName()Lnet/sf/saxon/trans/SymbolicName$F;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lnet/sf/saxon/trans/PackageLoaderHE;->d:Lnet/sf/saxon/functions/ExecutableFunctionLibrary;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/functions/ExecutableFunctionLibrary;->addFunction(Lnet/sf/saxon/expr/instruct/UserFunction;)V

    return-object p1
.end method

.method public final t5(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/instruct/GlobalParam;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/trans/PackageLoaderHE;->packStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/style/StylesheetPackage;

    const-string v1, "name"

    invoke-virtual {p0, p1, v1}, Lnet/sf/saxon/trans/PackageLoaderHE;->getQNameAttribute(Lnet/sf/saxon/om/NodeInfo;Ljava/lang/String;)Lnet/sf/saxon/om/StructuredQName;

    move-result-object v1

    new-instance v2, Ljava/util/Stack;

    invoke-direct {v2}, Ljava/util/Stack;-><init>()V

    iput-object v2, p0, Lnet/sf/saxon/trans/PackageLoaderHE;->localBindings:Ljava/util/Stack;

    new-instance v2, Lnet/sf/saxon/expr/instruct/GlobalParam;

    invoke-direct {v2}, Lnet/sf/saxon/expr/instruct/GlobalParam;-><init>()V

    invoke-virtual {v2, v1}, Lnet/sf/saxon/expr/instruct/GlobalVariable;->setVariableQName(Lnet/sf/saxon/om/StructuredQName;)V

    invoke-virtual {v2, v0}, Lnet/sf/saxon/expr/instruct/Actor;->setPackageData(Lnet/sf/saxon/expr/PackageData;)V

    const-string v0, "as"

    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/trans/PackageLoaderHE;->parseAlphaCode(Lnet/sf/saxon/om/NodeInfo;Ljava/lang/String;)Lnet/sf/saxon/value/SequenceType;

    move-result-object v0

    invoke-virtual {v2, v0}, Lnet/sf/saxon/expr/instruct/GlobalVariable;->setRequiredType(Lnet/sf/saxon/value/SequenceType;)V

    const-string v0, ""

    const-string v1, "flags"

    invoke-interface {p1, v0, v1}, Lnet/sf/saxon/om/NodeInfo;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v1, "a"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {v2, v3}, Lnet/sf/saxon/expr/instruct/GlobalVariable;->setAssignable(Z)V

    :cond_0
    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v2}, Lnet/sf/saxon/expr/instruct/GlobalVariable;->setIndexedVariable()V

    :cond_1
    const-string v1, "r"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v2, v3}, Lnet/sf/saxon/expr/instruct/GlobalVariable;->setRequiredParam(Z)V

    :cond_2
    const-string v1, "i"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v2, v3}, Lnet/sf/saxon/expr/instruct/GlobalParam;->setImplicitlyRequiredParam(Z)V

    :cond_3
    const-string v0, "slots"

    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/trans/PackageLoaderHE;->getIntegerAttribute(Lnet/sf/saxon/om/NodeInfo;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_4

    new-instance v1, Lnet/sf/saxon/expr/instruct/SlotManager;

    invoke-direct {v1, v0}, Lnet/sf/saxon/expr/instruct/SlotManager;-><init>(I)V

    invoke-virtual {v2, v1}, Lnet/sf/saxon/expr/instruct/GlobalVariable;->setContainsLocals(Lnet/sf/saxon/expr/instruct/SlotManager;)V

    :cond_4
    const/4 v0, 0x3

    sget-object v1, Lnet/sf/saxon/pattern/NodeKindTest;->ELEMENT:Lnet/sf/saxon/pattern/NodeKindTest;

    invoke-interface {p1, v0, v1}, Lnet/sf/saxon/om/NodeInfo;->iterateAxis(ILnet/sf/saxon/pattern/NodePredicate;)Lnet/sf/saxon/tree/iter/AxisIterator;

    move-result-object p1

    invoke-interface {p1}, Lnet/sf/saxon/tree/iter/AxisIterator;->next()Lnet/sf/saxon/om/NodeInfo;

    move-result-object p1

    if-nez p1, :cond_5

    invoke-static {}, Lnet/sf/saxon/expr/Literal;->makeEmptySequence()Lnet/sf/saxon/expr/Literal;

    move-result-object p0

    invoke-virtual {v2, p0}, Lnet/sf/saxon/expr/instruct/Actor;->setBody(Lnet/sf/saxon/expr/Expression;)V

    goto :goto_0

    :cond_5
    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->loadExpression(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {v2, p0}, Lnet/sf/saxon/expr/instruct/Actor;->setBody(Lnet/sf/saxon/expr/Expression;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getRetainedStaticContext()Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/Expression;->setRetainedStaticContext(Lnet/sf/saxon/expr/parser/RetainedStaticContext;)V

    :goto_0
    return-object v2
.end method

.method public final u5(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/instruct/GlobalVariable;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/trans/PackageLoaderHE;->packStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/style/StylesheetPackage;

    const-string v1, "name"

    invoke-virtual {p0, p1, v1}, Lnet/sf/saxon/trans/PackageLoaderHE;->getQNameAttribute(Lnet/sf/saxon/om/NodeInfo;Ljava/lang/String;)Lnet/sf/saxon/om/StructuredQName;

    move-result-object v1

    new-instance v2, Lnet/sf/saxon/expr/instruct/GlobalVariable;

    invoke-direct {v2}, Lnet/sf/saxon/expr/instruct/GlobalVariable;-><init>()V

    invoke-virtual {v2, v1}, Lnet/sf/saxon/expr/instruct/GlobalVariable;->setVariableQName(Lnet/sf/saxon/om/StructuredQName;)V

    invoke-virtual {v2, v0}, Lnet/sf/saxon/expr/instruct/Actor;->setPackageData(Lnet/sf/saxon/expr/PackageData;)V

    const-string v1, "as"

    invoke-virtual {p0, p1, v1}, Lnet/sf/saxon/trans/PackageLoaderHE;->parseAlphaCode(Lnet/sf/saxon/om/NodeInfo;Ljava/lang/String;)Lnet/sf/saxon/value/SequenceType;

    move-result-object v1

    invoke-virtual {v2, v1}, Lnet/sf/saxon/expr/instruct/GlobalVariable;->setRequiredType(Lnet/sf/saxon/value/SequenceType;)V

    const-string v1, ""

    const-string v3, "flags"

    invoke-interface {p1, v1, v3}, Lnet/sf/saxon/om/NodeInfo;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v3, "a"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    invoke-virtual {v2, v4}, Lnet/sf/saxon/expr/instruct/GlobalVariable;->setAssignable(Z)V

    :cond_0
    const-string v3, "x"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lnet/sf/saxon/expr/instruct/GlobalVariable;->setIndexedVariable()V

    :cond_1
    const-string v3, "r"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v2, v4}, Lnet/sf/saxon/expr/instruct/GlobalVariable;->setRequiredParam(Z)V

    :cond_2
    const-string v1, "slots"

    invoke-virtual {p0, p1, v1}, Lnet/sf/saxon/trans/PackageLoaderHE;->getIntegerAttribute(Lnet/sf/saxon/om/NodeInfo;Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_3

    new-instance v3, Lnet/sf/saxon/expr/instruct/SlotManager;

    invoke-direct {v3, v1}, Lnet/sf/saxon/expr/instruct/SlotManager;-><init>(I)V

    invoke-virtual {v2, v3}, Lnet/sf/saxon/expr/instruct/GlobalVariable;->setContainsLocals(Lnet/sf/saxon/expr/instruct/SlotManager;)V

    :cond_3
    const/4 v1, 0x3

    sget-object v3, Lnet/sf/saxon/pattern/NodeKindTest;->ELEMENT:Lnet/sf/saxon/pattern/NodeKindTest;

    invoke-interface {p1, v1, v3}, Lnet/sf/saxon/om/NodeInfo;->iterateAxis(ILnet/sf/saxon/pattern/NodePredicate;)Lnet/sf/saxon/tree/iter/AxisIterator;

    move-result-object p1

    invoke-interface {p1}, Lnet/sf/saxon/tree/iter/AxisIterator;->next()Lnet/sf/saxon/om/NodeInfo;

    move-result-object p1

    if-nez p1, :cond_4

    invoke-static {}, Lnet/sf/saxon/expr/Literal;->makeEmptySequence()Lnet/sf/saxon/expr/Literal;

    move-result-object p0

    invoke-virtual {v2, p0}, Lnet/sf/saxon/expr/instruct/Actor;->setBody(Lnet/sf/saxon/expr/Expression;)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->loadExpression(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {v2, p0}, Lnet/sf/saxon/expr/instruct/Actor;->setBody(Lnet/sf/saxon/expr/Expression;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getRetainedStaticContext()Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/Expression;->setRetainedStaticContext(Lnet/sf/saxon/expr/parser/RetainedStaticContext;)V

    :goto_0
    invoke-virtual {v0, v2}, Lnet/sf/saxon/style/StylesheetPackage;->addGlobalVariable(Lnet/sf/saxon/expr/instruct/GlobalVariable;)V

    return-object v2
.end method

.method public final v5(Lnet/sf/saxon/om/NodeInfo;)V
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v1, v0, Lnet/sf/saxon/trans/PackageLoaderHE;->packStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/style/StylesheetPackage;

    new-instance v2, Lnet/sf/saxon/pattern/NameTest;

    iget-object v3, v0, Lnet/sf/saxon/trans/PackageLoaderHE;->a:Lnet/sf/saxon/Configuration;

    invoke-virtual {v3}, Lnet/sf/saxon/Configuration;->getNamePool()Lnet/sf/saxon/om/NamePool;

    move-result-object v3

    const/4 v4, 0x1

    const-string v5, "http://ns.saxonica.com/xslt/export"

    const-string v6, "key"

    invoke-direct {v2, v4, v5, v6, v3}, Lnet/sf/saxon/pattern/NameTest;-><init>(ILjava/lang/String;Ljava/lang/String;Lnet/sf/saxon/om/NamePool;)V

    const/4 v3, 0x3

    move-object/from16 v5, p1

    invoke-interface {v5, v3, v2}, Lnet/sf/saxon/om/NodeInfo;->iterateAxis(ILnet/sf/saxon/pattern/NodePredicate;)Lnet/sf/saxon/tree/iter/AxisIterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Lnet/sf/saxon/tree/iter/AxisIterator;->next()Lnet/sf/saxon/om/NodeInfo;

    move-result-object v3

    if-eqz v3, :cond_b

    const-string v5, "name"

    invoke-virtual {v0, v3, v5}, Lnet/sf/saxon/trans/PackageLoaderHE;->getQNameAttribute(Lnet/sf/saxon/om/NodeInfo;Ljava/lang/String;)Lnet/sf/saxon/om/StructuredQName;

    move-result-object v5

    new-instance v7, Lnet/sf/saxon/trans/SymbolicName;

    const/16 v6, 0xa9

    invoke-direct {v7, v6, v5}, Lnet/sf/saxon/trans/SymbolicName;-><init>(ILnet/sf/saxon/om/StructuredQName;)V

    const-string v6, "flags"

    const-string v12, ""

    invoke-interface {v3, v12, v6}, Lnet/sf/saxon/om/NodeInfo;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    if-eqz v6, :cond_0

    const-string v9, "b"

    invoke-virtual {v6, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_0

    move v13, v4

    goto :goto_1

    :cond_0
    move v13, v8

    :goto_1
    if-eqz v6, :cond_1

    const-string v9, "r"

    invoke-virtual {v6, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_1

    move v14, v4

    goto :goto_2

    :cond_1
    move v14, v8

    :goto_2
    if-eqz v6, :cond_2

    const-string v9, "u"

    invoke-virtual {v6, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_2

    move v15, v4

    goto :goto_3

    :cond_2
    move v15, v8

    :goto_3
    if-eqz v6, :cond_3

    const-string v9, "c"

    invoke-virtual {v6, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_3

    move/from16 v16, v4

    goto :goto_4

    :cond_3
    move/from16 v16, v8

    :goto_4
    if-eqz v6, :cond_4

    const-string v9, "v"

    invoke-virtual {v6, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_4

    move v11, v4

    goto :goto_5

    :cond_4
    move v11, v8

    :goto_5
    if-eqz v6, :cond_5

    const-string v9, "s"

    invoke-virtual {v6, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5

    move v10, v4

    goto :goto_6

    :cond_5
    move v10, v8

    :goto_6
    invoke-virtual {v0, v3}, Lnet/sf/saxon/trans/PackageLoaderHE;->b2(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/pattern/Pattern;

    move-result-object v8

    invoke-virtual {v0, v3}, Lnet/sf/saxon/trans/PackageLoaderHE;->getSecondChildExpression(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object v9

    const-string v6, "collation"

    invoke-interface {v3, v12, v6}, Lnet/sf/saxon/om/NodeInfo;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_6

    const-string v6, "http://www.w3.org/2005/xpath-functions/collation/codepoint"

    :cond_6
    iget-object v4, v0, Lnet/sf/saxon/trans/PackageLoaderHE;->a:Lnet/sf/saxon/Configuration;

    invoke-virtual {v4, v6}, Lnet/sf/saxon/Configuration;->getCollation(Ljava/lang/String;)Lnet/sf/saxon/lib/StringCollator;

    move-result-object v4

    move-object/from16 p1, v2

    new-instance v2, Lnet/sf/saxon/trans/KeyDefinition;

    move-object/from16 v17, v6

    move-object v6, v2

    move-object/from16 v18, v5

    move v5, v10

    move-object/from16 v10, v17

    move/from16 v17, v15

    move v15, v11

    move-object v11, v4

    invoke-direct/range {v6 .. v11}, Lnet/sf/saxon/trans/KeyDefinition;-><init>(Lnet/sf/saxon/trans/SymbolicName;Lnet/sf/saxon/pattern/Pattern;Lnet/sf/saxon/expr/Expression;Ljava/lang/String;Lnet/sf/saxon/lib/StringCollator;)V

    const-string v4, "slots"

    invoke-virtual {v0, v3, v4}, Lnet/sf/saxon/trans/PackageLoaderHE;->getIntegerAttribute(Lnet/sf/saxon/om/NodeInfo;Ljava/lang/String;)I

    move-result v4

    const/high16 v6, -0x80000000

    if-eq v4, v6, :cond_7

    new-instance v6, Lnet/sf/saxon/expr/instruct/SlotManager;

    invoke-direct {v6, v4}, Lnet/sf/saxon/expr/instruct/SlotManager;-><init>(I)V

    invoke-virtual {v2, v6}, Lnet/sf/saxon/trans/KeyDefinition;->setStackFrameMap(Lnet/sf/saxon/expr/instruct/SlotManager;)V

    :cond_7
    const-string v4, "binds"

    invoke-interface {v3, v12, v4}, Lnet/sf/saxon/om/NodeInfo;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lnet/sf/saxon/trans/Visibility;->PRIVATE:Lnet/sf/saxon/trans/Visibility;

    invoke-virtual {v2, v4, v1}, Lnet/sf/saxon/expr/instruct/Actor;->makeDeclaringComponent(Lnet/sf/saxon/trans/Visibility;Lnet/sf/saxon/style/StylesheetPackage;)Lnet/sf/saxon/expr/Component;

    move-result-object v4

    iget-object v6, v0, Lnet/sf/saxon/trans/PackageLoaderHE;->h:Ljava/util/Map;

    invoke-interface {v6, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x1

    if-eqz v13, :cond_8

    invoke-virtual {v2, v3}, Lnet/sf/saxon/trans/KeyDefinition;->setBackwardsCompatible(Z)V

    :cond_8
    if-eqz v14, :cond_9

    invoke-virtual {v2, v3}, Lnet/sf/saxon/trans/KeyDefinition;->setRangeKey(Z)V

    :cond_9
    if-eqz v16, :cond_a

    invoke-virtual {v2, v3}, Lnet/sf/saxon/trans/KeyDefinition;->setComposite(Z)V

    :cond_a
    invoke-virtual {v2, v5}, Lnet/sf/saxon/trans/KeyDefinition;->setStrictComparison(Z)V

    invoke-virtual {v2, v15}, Lnet/sf/saxon/trans/KeyDefinition;->setConvertUntypedToOther(Z)V

    invoke-virtual {v1}, Lnet/sf/saxon/expr/PackageData;->getKeyManager()Lnet/sf/saxon/trans/KeyManager;

    move-result-object v4

    invoke-virtual {v1}, Lnet/sf/saxon/expr/PackageData;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v5

    move/from16 v8, v17

    move-object/from16 v6, v18

    invoke-virtual {v4, v6, v2, v8, v5}, Lnet/sf/saxon/trans/KeyManager;->addKeyDefinition(Lnet/sf/saxon/om/StructuredQName;Lnet/sf/saxon/trans/KeyDefinition;ZLnet/sf/saxon/Configuration;)V

    move-object/from16 v2, p1

    move v4, v3

    goto/16 :goto_0

    :cond_b
    return-void
.end method

.method public final w5(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/trans/Mode;
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lnet/sf/saxon/trans/PackageLoaderHE;->packStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/sf/saxon/style/StylesheetPackage;

    const-string v3, "name"

    invoke-virtual {v0, v1, v3}, Lnet/sf/saxon/trans/PackageLoaderHE;->getQNameAttribute(Lnet/sf/saxon/om/NodeInfo;Ljava/lang/String;)Lnet/sf/saxon/om/StructuredQName;

    move-result-object v3

    if-nez v3, :cond_0

    sget-object v3, Lnet/sf/saxon/trans/Mode;->UNNAMED_MODE_NAME:Lnet/sf/saxon/om/StructuredQName;

    :cond_0
    invoke-virtual {v2}, Lnet/sf/saxon/style/StylesheetPackage;->getRuleManager()Lnet/sf/saxon/trans/rules/RuleManager;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v3, v5}, Lnet/sf/saxon/trans/rules/RuleManager;->obtainMode(Lnet/sf/saxon/om/StructuredQName;Z)Lnet/sf/saxon/trans/Mode;

    move-result-object v3

    check-cast v3, Lnet/sf/saxon/trans/SimpleMode;

    const-string v4, "patternSlots"

    invoke-virtual {v0, v1, v4}, Lnet/sf/saxon/trans/PackageLoaderHE;->getIntegerAttribute(Lnet/sf/saxon/om/NodeInfo;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Lnet/sf/saxon/trans/SimpleMode;->allocatePatternSlots(I)V

    const-string v4, "onNo"

    const-string v15, ""

    invoke-interface {v1, v15, v4}, Lnet/sf/saxon/om/NodeInfo;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v3, v4}, Lnet/sf/saxon/trans/Mode;->getBuiltInRuleSetForCode(Ljava/lang/String;)Lnet/sf/saxon/trans/rules/BuiltInRuleSet;

    move-result-object v4

    invoke-virtual {v3, v4}, Lnet/sf/saxon/trans/SimpleMode;->setBuiltInRuleSet(Lnet/sf/saxon/trans/rules/BuiltInRuleSet;)V

    :cond_1
    const-string v4, "flags"

    invoke-interface {v1, v15, v4}, Lnet/sf/saxon/om/NodeInfo;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v14, 0x0

    const-string v13, "s"

    if-eqz v6, :cond_6

    invoke-virtual {v6, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    invoke-virtual {v3, v7}, Lnet/sf/saxon/trans/Mode;->setStreamable(Z)V

    const-string v7, "t"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    const-string v8, "typed"

    if-eqz v7, :cond_2

    const-string v7, "yes"

    invoke-virtual {v3, v8, v7, v5}, Lnet/sf/saxon/trans/SimpleMode;->setExplicitProperty(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_2
    const-string v7, "u"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    const-string v7, "no"

    invoke-virtual {v3, v8, v7, v5}, Lnet/sf/saxon/trans/SimpleMode;->setExplicitProperty(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_3
    const-string v7, "F"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_4

    sget-object v7, Lnet/sf/saxon/trans/RecoveryPolicy;->DO_NOT_RECOVER:Lnet/sf/saxon/trans/RecoveryPolicy;

    invoke-virtual {v3, v7}, Lnet/sf/saxon/trans/Mode;->setRecoveryPolicy(Lnet/sf/saxon/trans/RecoveryPolicy;)V

    :cond_4
    const-string v7, "W"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_5

    sget-object v7, Lnet/sf/saxon/trans/RecoveryPolicy;->RECOVER_WITH_WARNINGS:Lnet/sf/saxon/trans/RecoveryPolicy;

    invoke-virtual {v3, v7}, Lnet/sf/saxon/trans/Mode;->setRecoveryPolicy(Lnet/sf/saxon/trans/RecoveryPolicy;)V

    :cond_5
    const-string v7, "e"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-virtual {v3, v14}, Lnet/sf/saxon/trans/Mode;->setHasRules(Z)V

    :cond_6
    const-string v6, "useAcc"

    invoke-virtual {v0, v1, v6}, Lnet/sf/saxon/trans/PackageLoaderHE;->getListOfQNameAttribute(Lnet/sf/saxon/om/NodeInfo;Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    new-instance v7, Lcom/sunia/HTREnginev2/gpk;

    invoke-direct {v7, v2, v6, v3}, Lcom/sunia/HTREnginev2/gpk;-><init>(Lnet/sf/saxon/style/StylesheetPackage;Ljava/util/List;Lnet/sf/saxon/trans/SimpleMode;)V

    invoke-virtual {v0, v7}, Lnet/sf/saxon/trans/PackageLoaderHE;->addCompletionAction(Lnet/sf/saxon/om/Action;)V

    new-instance v6, Lnet/sf/saxon/pattern/NameTest;

    iget-object v7, v0, Lnet/sf/saxon/trans/PackageLoaderHE;->a:Lnet/sf/saxon/Configuration;

    invoke-virtual {v7}, Lnet/sf/saxon/Configuration;->getNamePool()Lnet/sf/saxon/om/NamePool;

    move-result-object v7

    const-string v8, "http://ns.saxonica.com/xslt/export"

    const-string v9, "templateRule"

    invoke-direct {v6, v5, v8, v9, v7}, Lnet/sf/saxon/pattern/NameTest;-><init>(ILjava/lang/String;Ljava/lang/String;Lnet/sf/saxon/om/NamePool;)V

    const/4 v7, 0x4

    invoke-interface {v1, v7, v6}, Lnet/sf/saxon/om/NodeInfo;->iterateAxis(ILnet/sf/saxon/pattern/NodePredicate;)Lnet/sf/saxon/tree/iter/AxisIterator;

    move-result-object v1

    new-instance v6, Ljava/util/LinkedList;

    invoke-direct {v6}, Ljava/util/LinkedList;-><init>()V

    :goto_0
    invoke-interface {v1}, Lnet/sf/saxon/tree/iter/AxisIterator;->next()Lnet/sf/saxon/om/NodeInfo;

    move-result-object v7

    if-eqz v7, :cond_7

    invoke-virtual {v6, v7}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    goto :goto_0

    :cond_7
    invoke-virtual {v6}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lnet/sf/saxon/om/NodeInfo;

    const-string v7, "prec"

    invoke-virtual {v0, v6, v7}, Lnet/sf/saxon/trans/PackageLoaderHE;->getIntegerAttribute(Lnet/sf/saxon/om/NodeInfo;Ljava/lang/String;)I

    move-result v9

    const-string v7, "rank"

    invoke-virtual {v0, v6, v7}, Lnet/sf/saxon/trans/PackageLoaderHE;->getIntegerAttribute(Lnet/sf/saxon/om/NodeInfo;Ljava/lang/String;)I

    move-result v11

    const-string v7, "prio"

    invoke-interface {v6, v15, v7}, Lnet/sf/saxon/om/NodeInfo;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v16

    const-string v7, "seq"

    invoke-virtual {v0, v6, v7}, Lnet/sf/saxon/trans/PackageLoaderHE;->getIntegerAttribute(Lnet/sf/saxon/om/NodeInfo;Ljava/lang/String;)I

    move-result v18

    const-string v7, "part"

    invoke-virtual {v0, v6, v7}, Lnet/sf/saxon/trans/PackageLoaderHE;->getIntegerAttribute(Lnet/sf/saxon/om/NodeInfo;Ljava/lang/String;)I

    move-result v7

    const/high16 v8, -0x80000000

    if-ne v7, v8, :cond_8

    move/from16 v19, v14

    goto :goto_2

    :cond_8
    move/from16 v19, v7

    :goto_2
    const-string v7, "minImp"

    invoke-virtual {v0, v6, v7}, Lnet/sf/saxon/trans/PackageLoaderHE;->getIntegerAttribute(Lnet/sf/saxon/om/NodeInfo;Ljava/lang/String;)I

    move-result v10

    const-string v7, "slots"

    invoke-virtual {v0, v6, v7}, Lnet/sf/saxon/trans/PackageLoaderHE;->getIntegerAttribute(Lnet/sf/saxon/om/NodeInfo;Ljava/lang/String;)I

    move-result v7

    const-string v8, "streamable"

    invoke-interface {v6, v15, v8}, Lnet/sf/saxon/om/NodeInfo;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v12, "1"

    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    invoke-interface {v6, v15, v4}, Lnet/sf/saxon/om/NodeInfo;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v14, "cxt"

    invoke-virtual {v0, v6, v14}, Lnet/sf/saxon/trans/PackageLoaderHE;->parseAlphaCode(Lnet/sf/saxon/om/NodeInfo;Ljava/lang/String;)Lnet/sf/saxon/value/SequenceType;

    move-result-object v14

    if-nez v14, :cond_9

    invoke-static {}, Lnet/sf/saxon/type/AnyItemType;->getInstance()Lnet/sf/saxon/type/AnyItemType;

    move-result-object v14

    goto :goto_3

    :cond_9
    invoke-virtual {v14}, Lnet/sf/saxon/value/SequenceType;->getPrimaryType()Lnet/sf/saxon/type/ItemType;

    move-result-object v14

    :goto_3
    const-string v5, "match"

    invoke-virtual {v0, v6, v5}, Lnet/sf/saxon/trans/PackageLoaderHE;->getChildWithRole(Lnet/sf/saxon/om/NodeInfo;Ljava/lang/String;)Lnet/sf/saxon/om/NodeInfo;

    move-result-object v5

    invoke-virtual {v0, v5}, Lnet/sf/saxon/trans/PackageLoaderHE;->e5(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/pattern/Pattern;

    move-result-object v5

    move-object/from16 p1, v1

    new-instance v1, Ljava/util/Stack;

    invoke-direct {v1}, Ljava/util/Stack;-><init>()V

    iput-object v1, v0, Lnet/sf/saxon/trans/PackageLoaderHE;->localBindings:Ljava/util/Stack;

    iget-object v1, v0, Lnet/sf/saxon/trans/PackageLoaderHE;->a:Lnet/sf/saxon/Configuration;

    invoke-virtual {v1}, Lnet/sf/saxon/Configuration;->makeTemplateRule()Lnet/sf/saxon/expr/instruct/TemplateRule;

    move-result-object v1

    invoke-virtual {v1, v5}, Lnet/sf/saxon/expr/instruct/TemplateRule;->setMatchPattern(Lnet/sf/saxon/pattern/Pattern;)V

    move-object/from16 v20, v4

    new-instance v4, Lnet/sf/saxon/expr/instruct/SlotManager;

    invoke-direct {v4, v7}, Lnet/sf/saxon/expr/instruct/SlotManager;-><init>(I)V

    invoke-virtual {v1, v4}, Lnet/sf/saxon/expr/instruct/TemplateRule;->setStackFrameMap(Lnet/sf/saxon/expr/instruct/SlotManager;)V

    invoke-virtual {v1, v2}, Lnet/sf/saxon/expr/instruct/TemplateRule;->setPackageData(Lnet/sf/saxon/expr/PackageData;)V

    const-string v4, "as"

    invoke-virtual {v0, v6, v4}, Lnet/sf/saxon/trans/PackageLoaderHE;->parseAlphaCode(Lnet/sf/saxon/om/NodeInfo;Ljava/lang/String;)Lnet/sf/saxon/value/SequenceType;

    move-result-object v4

    invoke-virtual {v1, v4}, Lnet/sf/saxon/expr/instruct/TemplateRule;->setRequiredType(Lnet/sf/saxon/value/SequenceType;)V

    invoke-virtual {v1, v8}, Lnet/sf/saxon/expr/instruct/TemplateRule;->setDeclaredStreamable(Z)V

    invoke-virtual {v12, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v7, 0x1

    xor-int/2addr v4, v7

    invoke-virtual {v1, v14, v4}, Lnet/sf/saxon/expr/instruct/TemplateRule;->setContextItemRequirements(Lnet/sf/saxon/type/ItemType;Z)V

    const-string v4, "action"

    invoke-virtual {v0, v6, v4}, Lnet/sf/saxon/trans/PackageLoaderHE;->getChildWithRole(Lnet/sf/saxon/om/NodeInfo;Ljava/lang/String;)Lnet/sf/saxon/om/NodeInfo;

    move-result-object v4

    if-nez v4, :cond_a

    invoke-static {}, Lnet/sf/saxon/expr/Literal;->makeEmptySequence()Lnet/sf/saxon/expr/Literal;

    move-result-object v4

    invoke-virtual {v1, v4}, Lnet/sf/saxon/expr/instruct/TemplateRule;->setBody(Lnet/sf/saxon/expr/Expression;)V

    goto :goto_4

    :cond_a
    invoke-virtual {v0, v4}, Lnet/sf/saxon/trans/PackageLoaderHE;->loadExpression(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object v4

    invoke-virtual {v1, v4}, Lnet/sf/saxon/expr/instruct/TemplateRule;->setBody(Lnet/sf/saxon/expr/Expression;)V

    invoke-virtual {v4}, Lnet/sf/saxon/expr/Expression;->getRetainedStaticContext()Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    move-result-object v6

    invoke-virtual {v4, v6}, Lnet/sf/saxon/expr/Expression;->setRetainedStaticContext(Lnet/sf/saxon/expr/parser/RetainedStaticContext;)V

    :goto_4
    move-object v6, v3

    move-object v7, v5

    move-object v8, v1

    move v1, v11

    move-wide/from16 v11, v16

    move-object v4, v13

    move/from16 v13, v18

    const/16 v16, 0x0

    move/from16 v14, v19

    invoke-virtual/range {v6 .. v14}, Lnet/sf/saxon/trans/SimpleMode;->makeRule(Lnet/sf/saxon/pattern/Pattern;Lnet/sf/saxon/trans/rules/RuleTarget;IIDII)Lnet/sf/saxon/trans/rules/Rule;

    move-result-object v6

    invoke-virtual {v6, v1}, Lnet/sf/saxon/trans/rules/Rule;->setRank(I)V

    invoke-virtual {v3, v5, v6}, Lnet/sf/saxon/trans/SimpleMode;->addRule(Lnet/sf/saxon/pattern/Pattern;Lnet/sf/saxon/trans/rules/Rule;)V

    const/4 v1, 0x1

    invoke-virtual {v3, v1}, Lnet/sf/saxon/trans/Mode;->setHasRules(Z)V

    move v5, v1

    move-object v13, v4

    move/from16 v14, v16

    move-object/from16 v4, v20

    move-object/from16 v1, p1

    goto/16 :goto_1

    :cond_b
    new-instance v1, Lcom/sunia/HTREnginev2/rpk;

    invoke-direct {v1, v3}, Lcom/sunia/HTREnginev2/rpk;-><init>(Lnet/sf/saxon/trans/SimpleMode;)V

    invoke-virtual {v0, v1}, Lnet/sf/saxon/trans/PackageLoaderHE;->addCompletionAction(Lnet/sf/saxon/om/Action;)V

    return-object v3
.end method

.method public final x5(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/instruct/NamedTemplate;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/trans/PackageLoaderHE;->packStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/style/StylesheetPackage;

    new-instance v1, Ljava/util/Stack;

    invoke-direct {v1}, Ljava/util/Stack;-><init>()V

    iput-object v1, p0, Lnet/sf/saxon/trans/PackageLoaderHE;->localBindings:Ljava/util/Stack;

    const-string v1, "name"

    invoke-virtual {p0, p1, v1}, Lnet/sf/saxon/trans/PackageLoaderHE;->getQNameAttribute(Lnet/sf/saxon/om/NodeInfo;Ljava/lang/String;)Lnet/sf/saxon/om/StructuredQName;

    move-result-object v1

    const-string v2, ""

    const-string v3, "flags"

    invoke-interface {p1, v2, v3}, Lnet/sf/saxon/om/NodeInfo;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "slots"

    invoke-virtual {p0, p1, v3}, Lnet/sf/saxon/trans/PackageLoaderHE;->getIntegerAttribute(Lnet/sf/saxon/om/NodeInfo;Ljava/lang/String;)I

    move-result v3

    const-string v4, "cxt"

    invoke-virtual {p0, p1, v4}, Lnet/sf/saxon/trans/PackageLoaderHE;->parseAlphaCode(Lnet/sf/saxon/om/NodeInfo;Ljava/lang/String;)Lnet/sf/saxon/value/SequenceType;

    move-result-object v4

    if-nez v4, :cond_0

    invoke-static {}, Lnet/sf/saxon/type/AnyItemType;->getInstance()Lnet/sf/saxon/type/AnyItemType;

    move-result-object v4

    goto :goto_0

    :cond_0
    invoke-virtual {v4}, Lnet/sf/saxon/value/SequenceType;->getPrimaryType()Lnet/sf/saxon/type/ItemType;

    move-result-object v4

    :goto_0
    new-instance v5, Lnet/sf/saxon/expr/instruct/NamedTemplate;

    invoke-direct {v5, v1}, Lnet/sf/saxon/expr/instruct/NamedTemplate;-><init>(Lnet/sf/saxon/om/StructuredQName;)V

    new-instance v1, Lnet/sf/saxon/expr/instruct/SlotManager;

    invoke-direct {v1, v3}, Lnet/sf/saxon/expr/instruct/SlotManager;-><init>(I)V

    invoke-virtual {v5, v1}, Lnet/sf/saxon/expr/instruct/Actor;->setStackFrameMap(Lnet/sf/saxon/expr/instruct/SlotManager;)V

    invoke-virtual {v5, v0}, Lnet/sf/saxon/expr/instruct/Actor;->setPackageData(Lnet/sf/saxon/expr/PackageData;)V

    const-string v0, "as"

    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/trans/PackageLoaderHE;->parseAlphaCode(Lnet/sf/saxon/om/NodeInfo;Ljava/lang/String;)Lnet/sf/saxon/value/SequenceType;

    move-result-object v0

    invoke-virtual {v5, v0}, Lnet/sf/saxon/expr/instruct/NamedTemplate;->setRequiredType(Lnet/sf/saxon/value/SequenceType;)V

    const-string v0, "o"

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "s"

    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v5, v4, v0, v1}, Lnet/sf/saxon/expr/instruct/NamedTemplate;->setContextItemRequirements(Lnet/sf/saxon/type/ItemType;ZZ)V

    const-string v0, "body"

    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/trans/PackageLoaderHE;->getChildWithRole(Lnet/sf/saxon/om/NodeInfo;Ljava/lang/String;)Lnet/sf/saxon/om/NodeInfo;

    move-result-object p1

    if-nez p1, :cond_1

    invoke-static {}, Lnet/sf/saxon/expr/Literal;->makeEmptySequence()Lnet/sf/saxon/expr/Literal;

    move-result-object p0

    invoke-virtual {v5, p0}, Lnet/sf/saxon/expr/instruct/NamedTemplate;->setBody(Lnet/sf/saxon/expr/Expression;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->loadExpression(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {v5, p0}, Lnet/sf/saxon/expr/instruct/NamedTemplate;->setBody(Lnet/sf/saxon/expr/Expression;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getRetainedStaticContext()Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/Expression;->setRetainedStaticContext(Lnet/sf/saxon/expr/parser/RetainedStaticContext;)V

    :goto_1
    return-object v5
.end method

.method public final y5(Lnet/sf/saxon/om/NodeInfo;)V
    .locals 12

    iget-object v0, p0, Lnet/sf/saxon/trans/PackageLoaderHE;->packStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/style/StylesheetPackage;

    new-instance v1, Lnet/sf/saxon/pattern/NameTest;

    iget-object v2, p0, Lnet/sf/saxon/trans/PackageLoaderHE;->a:Lnet/sf/saxon/Configuration;

    invoke-virtual {v2}, Lnet/sf/saxon/Configuration;->getNamePool()Lnet/sf/saxon/om/NamePool;

    move-result-object v2

    const/4 v3, 0x1

    const-string v4, "http://ns.saxonica.com/xslt/export"

    const-string v5, "output"

    invoke-direct {v1, v3, v4, v5, v2}, Lnet/sf/saxon/pattern/NameTest;-><init>(ILjava/lang/String;Ljava/lang/String;Lnet/sf/saxon/om/NamePool;)V

    const/4 v2, 0x3

    invoke-interface {p1, v2, v1}, Lnet/sf/saxon/om/NodeInfo;->iterateAxis(ILnet/sf/saxon/pattern/NodePredicate;)Lnet/sf/saxon/tree/iter/AxisIterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Lnet/sf/saxon/tree/iter/AxisIterator;->next()Lnet/sf/saxon/om/NodeInfo;

    move-result-object v1

    if-eqz v1, :cond_4

    const-string v5, "name"

    invoke-virtual {p0, v1, v5}, Lnet/sf/saxon/trans/PackageLoaderHE;->getQNameAttribute(Lnet/sf/saxon/om/NodeInfo;Ljava/lang/String;)Lnet/sf/saxon/om/StructuredQName;

    move-result-object v6

    new-instance v7, Ljava/util/Properties;

    invoke-direct {v7}, Ljava/util/Properties;-><init>()V

    new-instance v8, Lnet/sf/saxon/pattern/NameTest;

    iget-object v9, p0, Lnet/sf/saxon/trans/PackageLoaderHE;->a:Lnet/sf/saxon/Configuration;

    invoke-virtual {v9}, Lnet/sf/saxon/Configuration;->getNamePool()Lnet/sf/saxon/om/NamePool;

    move-result-object v9

    const-string v10, "property"

    invoke-direct {v8, v3, v4, v10, v9}, Lnet/sf/saxon/pattern/NameTest;-><init>(ILjava/lang/String;Ljava/lang/String;Lnet/sf/saxon/om/NamePool;)V

    invoke-interface {v1, v2, v8}, Lnet/sf/saxon/om/NodeInfo;->iterateAxis(ILnet/sf/saxon/pattern/NodePredicate;)Lnet/sf/saxon/tree/iter/AxisIterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Lnet/sf/saxon/tree/iter/AxisIterator;->next()Lnet/sf/saxon/om/NodeInfo;

    move-result-object v8

    if-eqz v8, :cond_2

    const-string v9, ""

    invoke-interface {v8, v9, v5}, Lnet/sf/saxon/om/NodeInfo;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "Q{"

    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-virtual {v10, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    :cond_0
    const-string v11, "value"

    invoke-interface {v8, v9, v11}, Lnet/sf/saxon/om/NodeInfo;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "{http://saxon.sf.net/}"

    invoke-virtual {v10, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    const-string v9, "{http://saxon.sf.net/}stylesheet-version"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    const-string v9, "Saxon output properties"

    invoke-virtual {p0, v9}, Lnet/sf/saxon/trans/PackageLoaderHE;->needsPELicense(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v7, v10, v8}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    if-nez v6, :cond_3

    invoke-virtual {v0, v7}, Lnet/sf/saxon/style/StylesheetPackage;->setDefaultOutputProperties(Ljava/util/Properties;)V

    goto :goto_0

    :cond_3
    invoke-virtual {v0, v6, v7}, Lnet/sf/saxon/style/StylesheetPackage;->setNamedOutputProperties(Lnet/sf/saxon/om/StructuredQName;Ljava/util/Properties;)V

    goto :goto_0

    :cond_4
    return-void
.end method

.method public final z5(Lnet/sf/saxon/om/NodeInfo;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/trans/PackageLoaderHE;->packStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/style/StylesheetPackage;

    sget-object v1, Lnet/sf/saxon/pattern/NodeKindTest;->ELEMENT:Lnet/sf/saxon/pattern/NodeKindTest;

    const/4 v2, 0x3

    invoke-interface {p1, v2, v1}, Lnet/sf/saxon/om/NodeInfo;->iterateAxis(ILnet/sf/saxon/pattern/NodePredicate;)Lnet/sf/saxon/tree/iter/AxisIterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Lnet/sf/saxon/tree/iter/AxisIterator;->next()Lnet/sf/saxon/om/NodeInfo;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-interface {v1}, Lnet/sf/saxon/om/NodeInfo;->getLocalPart()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, -0x1

    sparse-switch v4, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v4, "strip"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    const/4 v7, 0x2

    goto :goto_1

    :sswitch_1
    const-string v4, "strip.all"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    move v7, v6

    goto :goto_1

    :sswitch_2
    const-string v4, "strip.none"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    move v7, v5

    :goto_1
    packed-switch v7, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    sget-object v3, Lnet/sf/saxon/pattern/NodeKindTest;->ELEMENT:Lnet/sf/saxon/pattern/NodeKindTest;

    invoke-interface {v1, v2, v3}, Lnet/sf/saxon/om/NodeInfo;->iterateAxis(ILnet/sf/saxon/pattern/NodePredicate;)Lnet/sf/saxon/tree/iter/AxisIterator;

    move-result-object v1

    new-instance v3, Lnet/sf/saxon/om/SelectedElementsSpaceStrippingRule;

    invoke-direct {v3, v5}, Lnet/sf/saxon/om/SelectedElementsSpaceStrippingRule;-><init>(Z)V

    :goto_2
    invoke-interface {v1}, Lnet/sf/saxon/tree/iter/AxisIterator;->next()Lnet/sf/saxon/om/NodeInfo;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-interface {v4}, Lnet/sf/saxon/om/NodeInfo;->getLocalPart()Ljava/lang/String;

    move-result-object v5

    const-string v7, "s"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    sget-object v5, Lnet/sf/saxon/event/Stripper;->STRIP:Lnet/sf/saxon/event/Stripper$StripRuleTarget;

    goto :goto_3

    :cond_3
    sget-object v5, Lnet/sf/saxon/event/Stripper;->PRESERVE:Lnet/sf/saxon/event/Stripper$StripRuleTarget;

    :goto_3
    const-string v7, ""

    const-string v8, "test"

    invoke-interface {v4, v7, v8}, Lnet/sf/saxon/om/NodeInfo;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v9, "*"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    sget-object v7, Lnet/sf/saxon/pattern/NodeKindTest;->ELEMENT:Lnet/sf/saxon/pattern/NodeKindTest;

    goto :goto_4

    :cond_4
    invoke-virtual {p0, v4, v8}, Lnet/sf/saxon/trans/PackageLoaderHE;->parseAlphaCodeForItemType(Lnet/sf/saxon/om/NodeInfo;Ljava/lang/String;)Lnet/sf/saxon/type/ItemType;

    move-result-object v7

    check-cast v7, Lnet/sf/saxon/pattern/NodeTest;

    :goto_4
    const-string v8, "prec"

    invoke-virtual {p0, v4, v8}, Lnet/sf/saxon/trans/PackageLoaderHE;->getIntegerAttribute(Lnet/sf/saxon/om/NodeInfo;Ljava/lang/String;)I

    move-result v4

    new-instance v8, Lnet/sf/saxon/pattern/NodeTestPattern;

    invoke-direct {v8, v7}, Lnet/sf/saxon/pattern/NodeTestPattern;-><init>(Lnet/sf/saxon/pattern/NodeTest;)V

    invoke-virtual {v3, v8, v5, v4, v4}, Lnet/sf/saxon/om/SelectedElementsSpaceStrippingRule;->addRule(Lnet/sf/saxon/pattern/NodeTestPattern;Lnet/sf/saxon/event/Stripper$StripRuleTarget;II)V

    goto :goto_2

    :cond_5
    invoke-virtual {v0, v3}, Lnet/sf/saxon/style/StylesheetPackage;->setStripperRules(Lnet/sf/saxon/om/SpaceStrippingRule;)V

    invoke-virtual {v0, v6}, Lnet/sf/saxon/style/StylesheetPackage;->setStripsWhitespace(Z)V

    goto/16 :goto_0

    :pswitch_1
    new-instance v1, Lnet/sf/saxon/om/AllElementsSpaceStrippingRule;

    invoke-direct {v1}, Lnet/sf/saxon/om/AllElementsSpaceStrippingRule;-><init>()V

    invoke-virtual {v0, v1}, Lnet/sf/saxon/style/StylesheetPackage;->setStripperRules(Lnet/sf/saxon/om/SpaceStrippingRule;)V

    invoke-virtual {v0, v6}, Lnet/sf/saxon/style/StylesheetPackage;->setStripsWhitespace(Z)V

    goto/16 :goto_0

    :pswitch_2
    new-instance v1, Lnet/sf/saxon/om/NoElementsSpaceStrippingRule;

    invoke-direct {v1}, Lnet/sf/saxon/om/NoElementsSpaceStrippingRule;-><init>()V

    invoke-virtual {v0, v1}, Lnet/sf/saxon/style/StylesheetPackage;->setStripperRules(Lnet/sf/saxon/om/SpaceStrippingRule;)V

    goto/16 :goto_0

    :cond_6
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x5d70ebb2 -> :sswitch_2
        -0xb45e635 -> :sswitch_1
        0x68b0318 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
