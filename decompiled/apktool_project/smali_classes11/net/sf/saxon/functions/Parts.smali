.class public Lnet/sf/saxon/functions/Parts;
.super Lnet/sf/saxon/functions/SystemFunction;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/expr/Callable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/sf/saxon/functions/Parts$b;
    }
.end annotation


# static fields
.field public static final h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lnet/sf/saxon/type/AtomicType;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lnet/sf/saxon/functions/Parts$b;",
            ">;>;"
        }
    .end annotation
.end field

.field public static i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lnet/sf/saxon/type/AtomicType;",
            "Lnet/sf/saxon/ma/map/RecordTest;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 11

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lnet/sf/saxon/functions/Parts;->h:Ljava/util/Map;

    sget-object v0, Lnet/sf/saxon/type/BuiltInAtomicType;->DATE_TIME:Lnet/sf/saxon/type/BuiltInAtomicType;

    sget-object v1, Lnet/sf/saxon/value/SequenceType;->SINGLE_INTEGER:Lnet/sf/saxon/value/SequenceType;

    new-instance v2, Lcom/sunia/HTREnginev2/pxk;

    invoke-direct {v2}, Lcom/sunia/HTREnginev2/pxk;-><init>()V

    const-string v3, "year"

    invoke-static {v0, v3, v1, v2}, Lnet/sf/saxon/functions/Parts;->Q0(Lnet/sf/saxon/type/BuiltInAtomicType;Ljava/lang/String;Lnet/sf/saxon/value/SequenceType;Ljava/util/function/Function;)V

    new-instance v2, Lcom/sunia/HTREnginev2/hxk;

    invoke-direct {v2}, Lcom/sunia/HTREnginev2/hxk;-><init>()V

    const-string v4, "month"

    invoke-static {v0, v4, v1, v2}, Lnet/sf/saxon/functions/Parts;->Q0(Lnet/sf/saxon/type/BuiltInAtomicType;Ljava/lang/String;Lnet/sf/saxon/value/SequenceType;Ljava/util/function/Function;)V

    new-instance v2, Lcom/sunia/HTREnginev2/txk;

    invoke-direct {v2}, Lcom/sunia/HTREnginev2/txk;-><init>()V

    const-string v5, "day"

    invoke-static {v0, v5, v1, v2}, Lnet/sf/saxon/functions/Parts;->Q0(Lnet/sf/saxon/type/BuiltInAtomicType;Ljava/lang/String;Lnet/sf/saxon/value/SequenceType;Ljava/util/function/Function;)V

    new-instance v2, Lcom/sunia/HTREnginev2/fyk;

    invoke-direct {v2}, Lcom/sunia/HTREnginev2/fyk;-><init>()V

    const-string v6, "hours"

    invoke-static {v0, v6, v1, v2}, Lnet/sf/saxon/functions/Parts;->Q0(Lnet/sf/saxon/type/BuiltInAtomicType;Ljava/lang/String;Lnet/sf/saxon/value/SequenceType;Ljava/util/function/Function;)V

    new-instance v2, Lcom/sunia/HTREnginev2/kyk;

    invoke-direct {v2}, Lcom/sunia/HTREnginev2/kyk;-><init>()V

    const-string v7, "minutes"

    invoke-static {v0, v7, v1, v2}, Lnet/sf/saxon/functions/Parts;->Q0(Lnet/sf/saxon/type/BuiltInAtomicType;Ljava/lang/String;Lnet/sf/saxon/value/SequenceType;Ljava/util/function/Function;)V

    new-instance v2, Lcom/sunia/HTREnginev2/myk;

    invoke-direct {v2}, Lcom/sunia/HTREnginev2/myk;-><init>()V

    const-string v8, "seconds"

    invoke-static {v0, v8, v1, v2}, Lnet/sf/saxon/functions/Parts;->Q0(Lnet/sf/saxon/type/BuiltInAtomicType;Ljava/lang/String;Lnet/sf/saxon/value/SequenceType;Ljava/util/function/Function;)V

    sget-object v2, Lnet/sf/saxon/value/SequenceType;->OPTIONAL_DAY_TIME_DURATION:Lnet/sf/saxon/value/SequenceType;

    new-instance v9, Lcom/sunia/HTREnginev2/nyk;

    invoke-direct {v9}, Lcom/sunia/HTREnginev2/nyk;-><init>()V

    const-string v10, "timezone"

    invoke-static {v0, v10, v2, v9}, Lnet/sf/saxon/functions/Parts;->Q0(Lnet/sf/saxon/type/BuiltInAtomicType;Ljava/lang/String;Lnet/sf/saxon/value/SequenceType;Ljava/util/function/Function;)V

    sget-object v0, Lnet/sf/saxon/type/BuiltInAtomicType;->DATE:Lnet/sf/saxon/type/BuiltInAtomicType;

    new-instance v9, Lcom/sunia/HTREnginev2/oyk;

    invoke-direct {v9}, Lcom/sunia/HTREnginev2/oyk;-><init>()V

    invoke-static {v0, v3, v1, v9}, Lnet/sf/saxon/functions/Parts;->Q0(Lnet/sf/saxon/type/BuiltInAtomicType;Ljava/lang/String;Lnet/sf/saxon/value/SequenceType;Ljava/util/function/Function;)V

    new-instance v9, Lcom/sunia/HTREnginev2/pyk;

    invoke-direct {v9}, Lcom/sunia/HTREnginev2/pyk;-><init>()V

    invoke-static {v0, v4, v1, v9}, Lnet/sf/saxon/functions/Parts;->Q0(Lnet/sf/saxon/type/BuiltInAtomicType;Ljava/lang/String;Lnet/sf/saxon/value/SequenceType;Ljava/util/function/Function;)V

    new-instance v9, Lcom/sunia/HTREnginev2/qyk;

    invoke-direct {v9}, Lcom/sunia/HTREnginev2/qyk;-><init>()V

    invoke-static {v0, v5, v1, v9}, Lnet/sf/saxon/functions/Parts;->Q0(Lnet/sf/saxon/type/BuiltInAtomicType;Ljava/lang/String;Lnet/sf/saxon/value/SequenceType;Ljava/util/function/Function;)V

    new-instance v9, Lcom/sunia/HTREnginev2/ayk;

    invoke-direct {v9}, Lcom/sunia/HTREnginev2/ayk;-><init>()V

    invoke-static {v0, v10, v2, v9}, Lnet/sf/saxon/functions/Parts;->Q0(Lnet/sf/saxon/type/BuiltInAtomicType;Ljava/lang/String;Lnet/sf/saxon/value/SequenceType;Ljava/util/function/Function;)V

    sget-object v0, Lnet/sf/saxon/type/BuiltInAtomicType;->TIME:Lnet/sf/saxon/type/BuiltInAtomicType;

    new-instance v9, Lcom/sunia/HTREnginev2/lyk;

    invoke-direct {v9}, Lcom/sunia/HTREnginev2/lyk;-><init>()V

    invoke-static {v0, v6, v1, v9}, Lnet/sf/saxon/functions/Parts;->Q0(Lnet/sf/saxon/type/BuiltInAtomicType;Ljava/lang/String;Lnet/sf/saxon/value/SequenceType;Ljava/util/function/Function;)V

    new-instance v9, Lcom/sunia/HTREnginev2/ryk;

    invoke-direct {v9}, Lcom/sunia/HTREnginev2/ryk;-><init>()V

    invoke-static {v0, v7, v1, v9}, Lnet/sf/saxon/functions/Parts;->Q0(Lnet/sf/saxon/type/BuiltInAtomicType;Ljava/lang/String;Lnet/sf/saxon/value/SequenceType;Ljava/util/function/Function;)V

    new-instance v9, Lcom/sunia/HTREnginev2/syk;

    invoke-direct {v9}, Lcom/sunia/HTREnginev2/syk;-><init>()V

    invoke-static {v0, v8, v1, v9}, Lnet/sf/saxon/functions/Parts;->Q0(Lnet/sf/saxon/type/BuiltInAtomicType;Ljava/lang/String;Lnet/sf/saxon/value/SequenceType;Ljava/util/function/Function;)V

    new-instance v9, Lcom/sunia/HTREnginev2/tyk;

    invoke-direct {v9}, Lcom/sunia/HTREnginev2/tyk;-><init>()V

    invoke-static {v0, v10, v2, v9}, Lnet/sf/saxon/functions/Parts;->Q0(Lnet/sf/saxon/type/BuiltInAtomicType;Ljava/lang/String;Lnet/sf/saxon/value/SequenceType;Ljava/util/function/Function;)V

    sget-object v0, Lnet/sf/saxon/type/BuiltInAtomicType;->G_YEAR:Lnet/sf/saxon/type/BuiltInAtomicType;

    new-instance v9, Lcom/sunia/HTREnginev2/uyk;

    invoke-direct {v9}, Lcom/sunia/HTREnginev2/uyk;-><init>()V

    invoke-static {v0, v3, v1, v9}, Lnet/sf/saxon/functions/Parts;->Q0(Lnet/sf/saxon/type/BuiltInAtomicType;Ljava/lang/String;Lnet/sf/saxon/value/SequenceType;Ljava/util/function/Function;)V

    new-instance v9, Lcom/sunia/HTREnginev2/vyk;

    invoke-direct {v9}, Lcom/sunia/HTREnginev2/vyk;-><init>()V

    invoke-static {v0, v10, v2, v9}, Lnet/sf/saxon/functions/Parts;->Q0(Lnet/sf/saxon/type/BuiltInAtomicType;Ljava/lang/String;Lnet/sf/saxon/value/SequenceType;Ljava/util/function/Function;)V

    sget-object v0, Lnet/sf/saxon/type/BuiltInAtomicType;->G_YEAR_MONTH:Lnet/sf/saxon/type/BuiltInAtomicType;

    new-instance v9, Lcom/sunia/HTREnginev2/wyk;

    invoke-direct {v9}, Lcom/sunia/HTREnginev2/wyk;-><init>()V

    invoke-static {v0, v3, v1, v9}, Lnet/sf/saxon/functions/Parts;->Q0(Lnet/sf/saxon/type/BuiltInAtomicType;Ljava/lang/String;Lnet/sf/saxon/value/SequenceType;Ljava/util/function/Function;)V

    new-instance v3, Lcom/sunia/HTREnginev2/fxk;

    invoke-direct {v3}, Lcom/sunia/HTREnginev2/fxk;-><init>()V

    invoke-static {v0, v4, v1, v3}, Lnet/sf/saxon/functions/Parts;->Q0(Lnet/sf/saxon/type/BuiltInAtomicType;Ljava/lang/String;Lnet/sf/saxon/value/SequenceType;Ljava/util/function/Function;)V

    new-instance v3, Lcom/sunia/HTREnginev2/gxk;

    invoke-direct {v3}, Lcom/sunia/HTREnginev2/gxk;-><init>()V

    invoke-static {v0, v10, v2, v3}, Lnet/sf/saxon/functions/Parts;->Q0(Lnet/sf/saxon/type/BuiltInAtomicType;Ljava/lang/String;Lnet/sf/saxon/value/SequenceType;Ljava/util/function/Function;)V

    sget-object v0, Lnet/sf/saxon/type/BuiltInAtomicType;->G_MONTH:Lnet/sf/saxon/type/BuiltInAtomicType;

    new-instance v3, Lcom/sunia/HTREnginev2/ixk;

    invoke-direct {v3}, Lcom/sunia/HTREnginev2/ixk;-><init>()V

    invoke-static {v0, v4, v1, v3}, Lnet/sf/saxon/functions/Parts;->Q0(Lnet/sf/saxon/type/BuiltInAtomicType;Ljava/lang/String;Lnet/sf/saxon/value/SequenceType;Ljava/util/function/Function;)V

    new-instance v3, Lcom/sunia/HTREnginev2/jxk;

    invoke-direct {v3}, Lcom/sunia/HTREnginev2/jxk;-><init>()V

    invoke-static {v0, v10, v2, v3}, Lnet/sf/saxon/functions/Parts;->Q0(Lnet/sf/saxon/type/BuiltInAtomicType;Ljava/lang/String;Lnet/sf/saxon/value/SequenceType;Ljava/util/function/Function;)V

    sget-object v0, Lnet/sf/saxon/type/BuiltInAtomicType;->G_MONTH_DAY:Lnet/sf/saxon/type/BuiltInAtomicType;

    new-instance v3, Lcom/sunia/HTREnginev2/kxk;

    invoke-direct {v3}, Lcom/sunia/HTREnginev2/kxk;-><init>()V

    invoke-static {v0, v4, v1, v3}, Lnet/sf/saxon/functions/Parts;->Q0(Lnet/sf/saxon/type/BuiltInAtomicType;Ljava/lang/String;Lnet/sf/saxon/value/SequenceType;Ljava/util/function/Function;)V

    new-instance v3, Lcom/sunia/HTREnginev2/lxk;

    invoke-direct {v3}, Lcom/sunia/HTREnginev2/lxk;-><init>()V

    invoke-static {v0, v5, v1, v3}, Lnet/sf/saxon/functions/Parts;->Q0(Lnet/sf/saxon/type/BuiltInAtomicType;Ljava/lang/String;Lnet/sf/saxon/value/SequenceType;Ljava/util/function/Function;)V

    new-instance v3, Lcom/sunia/HTREnginev2/mxk;

    invoke-direct {v3}, Lcom/sunia/HTREnginev2/mxk;-><init>()V

    invoke-static {v0, v10, v2, v3}, Lnet/sf/saxon/functions/Parts;->Q0(Lnet/sf/saxon/type/BuiltInAtomicType;Ljava/lang/String;Lnet/sf/saxon/value/SequenceType;Ljava/util/function/Function;)V

    sget-object v0, Lnet/sf/saxon/type/BuiltInAtomicType;->G_DAY:Lnet/sf/saxon/type/BuiltInAtomicType;

    new-instance v3, Lcom/sunia/HTREnginev2/nxk;

    invoke-direct {v3}, Lcom/sunia/HTREnginev2/nxk;-><init>()V

    invoke-static {v0, v5, v1, v3}, Lnet/sf/saxon/functions/Parts;->Q0(Lnet/sf/saxon/type/BuiltInAtomicType;Ljava/lang/String;Lnet/sf/saxon/value/SequenceType;Ljava/util/function/Function;)V

    new-instance v3, Lcom/sunia/HTREnginev2/oxk;

    invoke-direct {v3}, Lcom/sunia/HTREnginev2/oxk;-><init>()V

    invoke-static {v0, v10, v2, v3}, Lnet/sf/saxon/functions/Parts;->Q0(Lnet/sf/saxon/type/BuiltInAtomicType;Ljava/lang/String;Lnet/sf/saxon/value/SequenceType;Ljava/util/function/Function;)V

    sget-object v0, Lnet/sf/saxon/type/BuiltInAtomicType;->DURATION:Lnet/sf/saxon/type/BuiltInAtomicType;

    new-instance v2, Lcom/sunia/HTREnginev2/qxk;

    invoke-direct {v2}, Lcom/sunia/HTREnginev2/qxk;-><init>()V

    const-string v3, "years"

    invoke-static {v0, v3, v1, v2}, Lnet/sf/saxon/functions/Parts;->Q0(Lnet/sf/saxon/type/BuiltInAtomicType;Ljava/lang/String;Lnet/sf/saxon/value/SequenceType;Ljava/util/function/Function;)V

    new-instance v2, Lcom/sunia/HTREnginev2/rxk;

    invoke-direct {v2}, Lcom/sunia/HTREnginev2/rxk;-><init>()V

    const-string v3, "months"

    invoke-static {v0, v3, v1, v2}, Lnet/sf/saxon/functions/Parts;->Q0(Lnet/sf/saxon/type/BuiltInAtomicType;Ljava/lang/String;Lnet/sf/saxon/value/SequenceType;Ljava/util/function/Function;)V

    new-instance v2, Lcom/sunia/HTREnginev2/sxk;

    invoke-direct {v2}, Lcom/sunia/HTREnginev2/sxk;-><init>()V

    const-string v3, "days"

    invoke-static {v0, v3, v1, v2}, Lnet/sf/saxon/functions/Parts;->Q0(Lnet/sf/saxon/type/BuiltInAtomicType;Ljava/lang/String;Lnet/sf/saxon/value/SequenceType;Ljava/util/function/Function;)V

    new-instance v2, Lcom/sunia/HTREnginev2/uxk;

    invoke-direct {v2}, Lcom/sunia/HTREnginev2/uxk;-><init>()V

    invoke-static {v0, v6, v1, v2}, Lnet/sf/saxon/functions/Parts;->Q0(Lnet/sf/saxon/type/BuiltInAtomicType;Ljava/lang/String;Lnet/sf/saxon/value/SequenceType;Ljava/util/function/Function;)V

    new-instance v2, Lcom/sunia/HTREnginev2/vxk;

    invoke-direct {v2}, Lcom/sunia/HTREnginev2/vxk;-><init>()V

    invoke-static {v0, v7, v1, v2}, Lnet/sf/saxon/functions/Parts;->Q0(Lnet/sf/saxon/type/BuiltInAtomicType;Ljava/lang/String;Lnet/sf/saxon/value/SequenceType;Ljava/util/function/Function;)V

    new-instance v2, Lcom/sunia/HTREnginev2/wxk;

    invoke-direct {v2}, Lcom/sunia/HTREnginev2/wxk;-><init>()V

    invoke-static {v0, v8, v1, v2}, Lnet/sf/saxon/functions/Parts;->Q0(Lnet/sf/saxon/type/BuiltInAtomicType;Ljava/lang/String;Lnet/sf/saxon/value/SequenceType;Ljava/util/function/Function;)V

    sget-object v0, Lnet/sf/saxon/type/BuiltInAtomicType;->HEX_BINARY:Lnet/sf/saxon/type/BuiltInAtomicType;

    sget-object v1, Lnet/sf/saxon/type/BuiltInAtomicType;->UNSIGNED_BYTE:Lnet/sf/saxon/type/BuiltInAtomicType;

    const v2, 0xe000

    invoke-static {v1, v2}, Lnet/sf/saxon/value/SequenceType;->makeSequenceType(Lnet/sf/saxon/type/ItemType;I)Lnet/sf/saxon/value/SequenceType;

    move-result-object v3

    new-instance v4, Lcom/sunia/HTREnginev2/xxk;

    invoke-direct {v4}, Lcom/sunia/HTREnginev2/xxk;-><init>()V

    const-string v5, "octets"

    invoke-static {v0, v5, v3, v4}, Lnet/sf/saxon/functions/Parts;->Q0(Lnet/sf/saxon/type/BuiltInAtomicType;Ljava/lang/String;Lnet/sf/saxon/value/SequenceType;Ljava/util/function/Function;)V

    sget-object v0, Lnet/sf/saxon/type/BuiltInAtomicType;->BASE64_BINARY:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-static {v1, v2}, Lnet/sf/saxon/value/SequenceType;->makeSequenceType(Lnet/sf/saxon/type/ItemType;I)Lnet/sf/saxon/value/SequenceType;

    move-result-object v1

    new-instance v2, Lcom/sunia/HTREnginev2/yxk;

    invoke-direct {v2}, Lcom/sunia/HTREnginev2/yxk;-><init>()V

    invoke-static {v0, v5, v1, v2}, Lnet/sf/saxon/functions/Parts;->Q0(Lnet/sf/saxon/type/BuiltInAtomicType;Ljava/lang/String;Lnet/sf/saxon/value/SequenceType;Ljava/util/function/Function;)V

    sget-object v0, Lnet/sf/saxon/type/BuiltInAtomicType;->QNAME:Lnet/sf/saxon/type/BuiltInAtomicType;

    sget-object v1, Lnet/sf/saxon/value/SequenceType;->OPTIONAL_STRING:Lnet/sf/saxon/value/SequenceType;

    new-instance v2, Lcom/sunia/HTREnginev2/zxk;

    invoke-direct {v2}, Lcom/sunia/HTREnginev2/zxk;-><init>()V

    const-string v3, "prefix"

    invoke-static {v0, v3, v1, v2}, Lnet/sf/saxon/functions/Parts;->Q0(Lnet/sf/saxon/type/BuiltInAtomicType;Ljava/lang/String;Lnet/sf/saxon/value/SequenceType;Ljava/util/function/Function;)V

    new-instance v2, Lcom/sunia/HTREnginev2/byk;

    invoke-direct {v2}, Lcom/sunia/HTREnginev2/byk;-><init>()V

    const-string v3, "namespace-uri"

    invoke-static {v0, v3, v1, v2}, Lnet/sf/saxon/functions/Parts;->Q0(Lnet/sf/saxon/type/BuiltInAtomicType;Ljava/lang/String;Lnet/sf/saxon/value/SequenceType;Ljava/util/function/Function;)V

    sget-object v2, Lnet/sf/saxon/value/SequenceType;->SINGLE_STRING:Lnet/sf/saxon/value/SequenceType;

    new-instance v3, Lcom/sunia/HTREnginev2/cyk;

    invoke-direct {v3}, Lcom/sunia/HTREnginev2/cyk;-><init>()V

    const-string v4, "local-name"

    invoke-static {v0, v4, v2, v3}, Lnet/sf/saxon/functions/Parts;->Q0(Lnet/sf/saxon/type/BuiltInAtomicType;Ljava/lang/String;Lnet/sf/saxon/value/SequenceType;Ljava/util/function/Function;)V

    sget-object v0, Lnet/sf/saxon/type/BuiltInAtomicType;->ANY_URI:Lnet/sf/saxon/type/BuiltInAtomicType;

    new-instance v2, Lcom/sunia/HTREnginev2/dyk;

    invoke-direct {v2}, Lcom/sunia/HTREnginev2/dyk;-><init>()V

    const-string v3, "scheme"

    invoke-static {v0, v3, v1, v2}, Lnet/sf/saxon/functions/Parts;->Q0(Lnet/sf/saxon/type/BuiltInAtomicType;Ljava/lang/String;Lnet/sf/saxon/value/SequenceType;Ljava/util/function/Function;)V

    new-instance v2, Lcom/sunia/HTREnginev2/eyk;

    invoke-direct {v2}, Lcom/sunia/HTREnginev2/eyk;-><init>()V

    const-string v3, "authority"

    invoke-static {v0, v3, v1, v2}, Lnet/sf/saxon/functions/Parts;->Q0(Lnet/sf/saxon/type/BuiltInAtomicType;Ljava/lang/String;Lnet/sf/saxon/value/SequenceType;Ljava/util/function/Function;)V

    new-instance v2, Lcom/sunia/HTREnginev2/gyk;

    invoke-direct {v2}, Lcom/sunia/HTREnginev2/gyk;-><init>()V

    const-string v3, "path"

    invoke-static {v0, v3, v1, v2}, Lnet/sf/saxon/functions/Parts;->Q0(Lnet/sf/saxon/type/BuiltInAtomicType;Ljava/lang/String;Lnet/sf/saxon/value/SequenceType;Ljava/util/function/Function;)V

    new-instance v2, Lcom/sunia/HTREnginev2/hyk;

    invoke-direct {v2}, Lcom/sunia/HTREnginev2/hyk;-><init>()V

    const-string v3, "query"

    invoke-static {v0, v3, v1, v2}, Lnet/sf/saxon/functions/Parts;->Q0(Lnet/sf/saxon/type/BuiltInAtomicType;Ljava/lang/String;Lnet/sf/saxon/value/SequenceType;Ljava/util/function/Function;)V

    new-instance v2, Lcom/sunia/HTREnginev2/iyk;

    invoke-direct {v2}, Lcom/sunia/HTREnginev2/iyk;-><init>()V

    const-string v3, "fragment"

    invoke-static {v0, v3, v1, v2}, Lnet/sf/saxon/functions/Parts;->Q0(Lnet/sf/saxon/type/BuiltInAtomicType;Ljava/lang/String;Lnet/sf/saxon/value/SequenceType;Ljava/util/function/Function;)V

    sget-object v1, Lnet/sf/saxon/ma/map/MapType;->SINGLE_MAP_ITEM:Lnet/sf/saxon/value/SequenceType;

    new-instance v2, Lcom/sunia/HTREnginev2/jyk;

    invoke-direct {v2}, Lcom/sunia/HTREnginev2/jyk;-><init>()V

    const-string v3, "query-parameters"

    invoke-static {v0, v3, v1, v2}, Lnet/sf/saxon/functions/Parts;->Q0(Lnet/sf/saxon/type/BuiltInAtomicType;Ljava/lang/String;Lnet/sf/saxon/value/SequenceType;Ljava/util/function/Function;)V

    invoke-static {}, Lnet/sf/saxon/functions/Parts;->T()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/functions/SystemFunction;-><init>()V

    return-void
.end method

.method public static synthetic A(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/om/SequenceIterator;
    .locals 0

    invoke-static {p0}, Lnet/sf/saxon/functions/Parts;->H0(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic A0(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/om/SequenceIterator;
    .locals 2

    check-cast p0, Lnet/sf/saxon/value/QNameValue;

    invoke-virtual {p0}, Lnet/sf/saxon/value/QualifiedNameValue;->getStructuredQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/om/StructuredQName;->getURI()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lnet/sf/saxon/tree/iter/EmptyIterator;->ofAtomic()Lnet/sf/saxon/tree/iter/AtomicIterator;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance v0, Lnet/sf/saxon/value/StringValue;

    sget-object v1, Lnet/sf/saxon/type/BuiltInAtomicType;->ANY_URI:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-direct {v0, p0, v1}, Lnet/sf/saxon/value/StringValue;-><init>(Ljava/lang/String;Lnet/sf/saxon/type/AtomicType;)V

    invoke-static {v0}, Lnet/sf/saxon/tree/iter/SingletonIterator;->makeIterator(Lnet/sf/saxon/om/Item;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static synthetic B(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/om/SequenceIterator;
    .locals 0

    invoke-static {p0}, Lnet/sf/saxon/functions/Parts;->z0(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic B0(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/om/SequenceIterator;
    .locals 2

    check-cast p0, Lnet/sf/saxon/value/QNameValue;

    invoke-virtual {p0}, Lnet/sf/saxon/value/QualifiedNameValue;->getStructuredQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/om/StructuredQName;->getLocalPart()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Lnet/sf/saxon/value/StringValue;

    sget-object v1, Lnet/sf/saxon/type/BuiltInAtomicType;->NCNAME:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-direct {v0, p0, v1}, Lnet/sf/saxon/value/StringValue;-><init>(Ljava/lang/String;Lnet/sf/saxon/type/AtomicType;)V

    invoke-static {v0}, Lnet/sf/saxon/tree/iter/SingletonIterator;->makeIterator(Lnet/sf/saxon/om/Item;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic C(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/om/SequenceIterator;
    .locals 0

    invoke-static {p0}, Lnet/sf/saxon/functions/Parts;->o0(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic C0(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/om/SequenceIterator;
    .locals 2

    invoke-interface {p0}, Lnet/sf/saxon/om/Item;->getStringValue()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lnet/sf/saxon/functions/Parts;->uriComponents(Ljava/lang/String;)Lnet/sf/saxon/ma/map/DictionaryMap;

    move-result-object p0

    new-instance v0, Lnet/sf/saxon/value/StringValue;

    const-string v1, "scheme"

    invoke-direct {v0, v1}, Lnet/sf/saxon/value/StringValue;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lnet/sf/saxon/ma/map/MapItem;->get(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/om/GroundedValue;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/value/StringValue;

    invoke-static {p0}, Lnet/sf/saxon/tree/iter/SingletonIterator;->makeIterator(Lnet/sf/saxon/om/Item;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic D(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/om/SequenceIterator;
    .locals 0

    invoke-static {p0}, Lnet/sf/saxon/functions/Parts;->x0(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic D0(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/om/SequenceIterator;
    .locals 2

    check-cast p0, Lnet/sf/saxon/value/DateTimeValue;

    invoke-virtual {p0}, Lnet/sf/saxon/value/DateTimeValue;->getHour()B

    move-result p0

    int-to-long v0, p0

    invoke-static {v0, v1}, Lnet/sf/saxon/functions/Parts;->P0(J)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic E(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/om/SequenceIterator;
    .locals 0

    invoke-static {p0}, Lnet/sf/saxon/functions/Parts;->D0(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic E0(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/om/SequenceIterator;
    .locals 2

    invoke-interface {p0}, Lnet/sf/saxon/om/Item;->getStringValue()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lnet/sf/saxon/functions/Parts;->uriComponents(Ljava/lang/String;)Lnet/sf/saxon/ma/map/DictionaryMap;

    move-result-object p0

    new-instance v0, Lnet/sf/saxon/value/StringValue;

    const-string v1, "authority"

    invoke-direct {v0, v1}, Lnet/sf/saxon/value/StringValue;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lnet/sf/saxon/ma/map/MapItem;->get(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/om/GroundedValue;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/value/StringValue;

    invoke-static {p0}, Lnet/sf/saxon/tree/iter/SingletonIterator;->makeIterator(Lnet/sf/saxon/om/Item;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic F(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/om/SequenceIterator;
    .locals 0

    invoke-static {p0}, Lnet/sf/saxon/functions/Parts;->w0(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic F0(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/om/SequenceIterator;
    .locals 2

    invoke-interface {p0}, Lnet/sf/saxon/om/Item;->getStringValue()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lnet/sf/saxon/functions/Parts;->uriComponents(Ljava/lang/String;)Lnet/sf/saxon/ma/map/DictionaryMap;

    move-result-object p0

    new-instance v0, Lnet/sf/saxon/value/StringValue;

    const-string v1, "path"

    invoke-direct {v0, v1}, Lnet/sf/saxon/value/StringValue;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lnet/sf/saxon/ma/map/MapItem;->get(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/om/GroundedValue;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/value/StringValue;

    invoke-static {p0}, Lnet/sf/saxon/tree/iter/SingletonIterator;->makeIterator(Lnet/sf/saxon/om/Item;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic G(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/om/SequenceIterator;
    .locals 0

    invoke-static {p0}, Lnet/sf/saxon/functions/Parts;->b0(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic G0(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/om/SequenceIterator;
    .locals 2

    invoke-interface {p0}, Lnet/sf/saxon/om/Item;->getStringValue()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lnet/sf/saxon/functions/Parts;->uriComponents(Ljava/lang/String;)Lnet/sf/saxon/ma/map/DictionaryMap;

    move-result-object p0

    new-instance v0, Lnet/sf/saxon/value/StringValue;

    const-string v1, "query"

    invoke-direct {v0, v1}, Lnet/sf/saxon/value/StringValue;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lnet/sf/saxon/ma/map/MapItem;->get(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/om/GroundedValue;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/value/StringValue;

    invoke-static {p0}, Lnet/sf/saxon/tree/iter/SingletonIterator;->makeIterator(Lnet/sf/saxon/om/Item;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic H(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/om/SequenceIterator;
    .locals 0

    invoke-static {p0}, Lnet/sf/saxon/functions/Parts;->e0(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic H0(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/om/SequenceIterator;
    .locals 2

    invoke-interface {p0}, Lnet/sf/saxon/om/Item;->getStringValue()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lnet/sf/saxon/functions/Parts;->uriComponents(Ljava/lang/String;)Lnet/sf/saxon/ma/map/DictionaryMap;

    move-result-object p0

    new-instance v0, Lnet/sf/saxon/value/StringValue;

    const-string v1, "fragment"

    invoke-direct {v0, v1}, Lnet/sf/saxon/value/StringValue;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lnet/sf/saxon/ma/map/MapItem;->get(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/om/GroundedValue;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/value/StringValue;

    invoke-static {p0}, Lnet/sf/saxon/tree/iter/SingletonIterator;->makeIterator(Lnet/sf/saxon/om/Item;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic I(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/om/SequenceIterator;
    .locals 0

    invoke-static {p0}, Lnet/sf/saxon/functions/Parts;->s0(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic I0(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/om/SequenceIterator;
    .locals 2

    invoke-interface {p0}, Lnet/sf/saxon/om/Item;->getStringValue()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lnet/sf/saxon/functions/Parts;->uriComponents(Ljava/lang/String;)Lnet/sf/saxon/ma/map/DictionaryMap;

    move-result-object p0

    new-instance v0, Lnet/sf/saxon/value/StringValue;

    const-string v1, "queryParams"

    invoke-direct {v0, v1}, Lnet/sf/saxon/value/StringValue;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lnet/sf/saxon/ma/map/MapItem;->get(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/om/GroundedValue;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/ma/map/MapItem;

    invoke-static {p0}, Lnet/sf/saxon/tree/iter/SingletonIterator;->makeIterator(Lnet/sf/saxon/om/Item;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic J(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/om/SequenceIterator;
    .locals 0

    invoke-static {p0}, Lnet/sf/saxon/functions/Parts;->g0(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic J0(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/om/SequenceIterator;
    .locals 2

    check-cast p0, Lnet/sf/saxon/value/DateTimeValue;

    invoke-virtual {p0}, Lnet/sf/saxon/value/DateTimeValue;->getMinute()B

    move-result p0

    int-to-long v0, p0

    invoke-static {v0, v1}, Lnet/sf/saxon/functions/Parts;->P0(J)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic K(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/om/SequenceIterator;
    .locals 0

    invoke-static {p0}, Lnet/sf/saxon/functions/Parts;->Z(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic K0(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/om/SequenceIterator;
    .locals 4

    check-cast p0, Lnet/sf/saxon/value/DateTimeValue;

    invoke-virtual {p0}, Lnet/sf/saxon/value/DateTimeValue;->getNanosecond()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v0

    sget-object v1, Lnet/sf/saxon/value/BigDecimalValue;->BIG_DECIMAL_ONE_BILLION:Ljava/math/BigDecimal;

    const/4 v2, 0x6

    sget-object v3, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    invoke-virtual {v0, v1, v2, v3}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sf/saxon/value/DateTimeValue;->getSecond()B

    move-result p0

    int-to-long v1, p0

    invoke-static {v1, v2}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p0

    invoke-static {p0}, Lnet/sf/saxon/functions/Parts;->O0(Ljava/math/BigDecimal;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic L(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/om/SequenceIterator;
    .locals 0

    invoke-static {p0}, Lnet/sf/saxon/functions/Parts;->G0(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic L0(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/om/SequenceIterator;
    .locals 0

    check-cast p0, Lnet/sf/saxon/value/DateTimeValue;

    invoke-static {p0}, Lnet/sf/saxon/functions/Parts;->R0(Lnet/sf/saxon/value/CalendarValue;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic M(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/om/SequenceIterator;
    .locals 0

    invoke-static {p0}, Lnet/sf/saxon/functions/Parts;->A0(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic M0(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/om/SequenceIterator;
    .locals 2

    check-cast p0, Lnet/sf/saxon/value/DateValue;

    invoke-virtual {p0}, Lnet/sf/saxon/value/GDateValue;->getYear()I

    move-result p0

    int-to-long v0, p0

    invoke-static {v0, v1}, Lnet/sf/saxon/functions/Parts;->P0(J)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic N(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/om/SequenceIterator;
    .locals 0

    invoke-static {p0}, Lnet/sf/saxon/functions/Parts;->t0(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic N0(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/om/SequenceIterator;
    .locals 2

    check-cast p0, Lnet/sf/saxon/value/DateValue;

    invoke-virtual {p0}, Lnet/sf/saxon/value/GDateValue;->getMonth()B

    move-result p0

    int-to-long v0, p0

    invoke-static {v0, v1}, Lnet/sf/saxon/functions/Parts;->P0(J)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic O(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/om/SequenceIterator;
    .locals 0

    invoke-static {p0}, Lnet/sf/saxon/functions/Parts;->N0(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    return-object p0
.end method

.method public static O0(Ljava/math/BigDecimal;)Lnet/sf/saxon/om/SequenceIterator;
    .locals 1

    new-instance v0, Lnet/sf/saxon/value/BigDecimalValue;

    invoke-direct {v0, p0}, Lnet/sf/saxon/value/BigDecimalValue;-><init>(Ljava/math/BigDecimal;)V

    invoke-static {v0}, Lnet/sf/saxon/tree/iter/SingletonIterator;->makeIterator(Lnet/sf/saxon/om/Item;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic P(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/om/SequenceIterator;
    .locals 0

    invoke-static {p0}, Lnet/sf/saxon/functions/Parts;->k0(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    return-object p0
.end method

.method public static P0(J)Lnet/sf/saxon/om/SequenceIterator;
    .locals 0

    invoke-static {p0, p1}, Lnet/sf/saxon/value/Int64Value;->makeIntegerValue(J)Lnet/sf/saxon/value/Int64Value;

    move-result-object p0

    invoke-static {p0}, Lnet/sf/saxon/tree/iter/SingletonIterator;->makeIterator(Lnet/sf/saxon/om/Item;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic Q(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/om/SequenceIterator;
    .locals 0

    invoke-static {p0}, Lnet/sf/saxon/functions/Parts;->J0(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    return-object p0
.end method

.method public static Q0(Lnet/sf/saxon/type/BuiltInAtomicType;Ljava/lang/String;Lnet/sf/saxon/value/SequenceType;Ljava/util/function/Function;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/sf/saxon/type/BuiltInAtomicType;",
            "Ljava/lang/String;",
            "Lnet/sf/saxon/value/SequenceType;",
            "Ljava/util/function/Function<",
            "Lnet/sf/saxon/value/AtomicValue;",
            "Lnet/sf/saxon/om/SequenceIterator;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lnet/sf/saxon/functions/Parts;->h:Ljava/util/Map;

    new-instance v1, Lcom/sunia/HTREnginev2/exk;

    invoke-direct {v1}, Lcom/sunia/HTREnginev2/exk;-><init>()V

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    new-instance v0, Lnet/sf/saxon/functions/Parts$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lnet/sf/saxon/functions/Parts$b;-><init>(Lnet/sf/saxon/functions/Parts$a;)V

    iput-object p2, v0, Lnet/sf/saxon/functions/Parts$b;->a:Lnet/sf/saxon/value/SequenceType;

    iput-object p3, v0, Lnet/sf/saxon/functions/Parts$b;->b:Ljava/util/function/Function;

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static synthetic R(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/om/SequenceIterator;
    .locals 0

    invoke-static {p0}, Lnet/sf/saxon/functions/Parts;->h0(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    return-object p0
.end method

.method public static R0(Lnet/sf/saxon/value/CalendarValue;)Lnet/sf/saxon/om/SequenceIterator;
    .locals 4

    invoke-virtual {p0}, Lnet/sf/saxon/value/CalendarValue;->hasTimezone()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lnet/sf/saxon/value/CalendarValue;->getTimezoneInMinutes()I

    move-result p0

    int-to-long v0, p0

    const-wide/32 v2, 0xea60

    mul-long/2addr v0, v2

    invoke-static {v0, v1}, Lnet/sf/saxon/value/DayTimeDurationValue;->fromMilliseconds(J)Lnet/sf/saxon/value/DayTimeDurationValue;

    move-result-object p0

    invoke-static {p0}, Lnet/sf/saxon/tree/iter/SingletonIterator;->makeIterator(Lnet/sf/saxon/om/Item;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0
    :try_end_0
    .catch Lnet/sf/saxon/type/ValidationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    invoke-static {}, Lnet/sf/saxon/tree/iter/EmptyIterator;->ofAtomic()Lnet/sf/saxon/tree/iter/AtomicIterator;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {}, Lnet/sf/saxon/tree/iter/EmptyIterator;->ofAtomic()Lnet/sf/saxon/tree/iter/AtomicIterator;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic S(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/om/SequenceIterator;
    .locals 0

    invoke-static {p0}, Lnet/sf/saxon/functions/Parts;->c0(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    return-object p0
.end method

.method public static T()V
    .locals 8

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lnet/sf/saxon/functions/Parts;->i:Ljava/util/Map;

    sget-object v0, Lnet/sf/saxon/functions/Parts;->h:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lnet/sf/saxon/functions/Parts$b;

    iget-object v7, v7, Lnet/sf/saxon/functions/Parts$b;->a:Lnet/sf/saxon/value/SequenceType;

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lnet/sf/saxon/functions/Parts$b;

    iget-object v7, v7, Lnet/sf/saxon/functions/Parts$b;->a:Lnet/sf/saxon/value/SequenceType;

    invoke-virtual {v7}, Lnet/sf/saxon/value/SequenceType;->getCardinality()I

    move-result v7

    invoke-static {v7}, Lnet/sf/saxon/value/Cardinality;->allowsZero(I)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    const-string v5, "value"

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lnet/sf/saxon/type/ItemType;

    const/16 v6, 0x4000

    invoke-static {v5, v6}, Lnet/sf/saxon/value/SequenceType;->makeSequenceType(Lnet/sf/saxon/type/ItemType;I)Lnet/sf/saxon/value/SequenceType;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v5, Lnet/sf/saxon/functions/Parts;->i:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    new-instance v6, Lnet/sf/saxon/ma/map/RecordTest;

    const/4 v7, 0x0

    invoke-direct {v6, v2, v3, v4, v7}, Lnet/sf/saxon/ma/map/RecordTest;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/Collection;Z)V

    invoke-interface {v5, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_2
    return-void
.end method

.method public static U(Ljava/net/URI;)Ljava/net/URI;
    .locals 0

    return-object p0
.end method

.method public static synthetic V(Lnet/sf/saxon/type/AtomicType;)Ljava/util/Map;
    .locals 0

    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    return-object p0
.end method

.method public static synthetic W(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/om/SequenceIterator;
    .locals 2

    check-cast p0, Lnet/sf/saxon/value/DateTimeValue;

    invoke-virtual {p0}, Lnet/sf/saxon/value/DateTimeValue;->getYear()I

    move-result p0

    int-to-long v0, p0

    invoke-static {v0, v1}, Lnet/sf/saxon/functions/Parts;->P0(J)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic X(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/om/SequenceIterator;
    .locals 2

    check-cast p0, Lnet/sf/saxon/value/DateValue;

    invoke-virtual {p0}, Lnet/sf/saxon/value/GDateValue;->getDay()B

    move-result p0

    int-to-long v0, p0

    invoke-static {v0, v1}, Lnet/sf/saxon/functions/Parts;->P0(J)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic Y(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/om/SequenceIterator;
    .locals 0

    check-cast p0, Lnet/sf/saxon/value/DateValue;

    invoke-static {p0}, Lnet/sf/saxon/functions/Parts;->R0(Lnet/sf/saxon/value/CalendarValue;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic Z(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/om/SequenceIterator;
    .locals 2

    check-cast p0, Lnet/sf/saxon/value/TimeValue;

    invoke-virtual {p0}, Lnet/sf/saxon/value/TimeValue;->getHour()B

    move-result p0

    int-to-long v0, p0

    invoke-static {v0, v1}, Lnet/sf/saxon/functions/Parts;->P0(J)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/om/SequenceIterator;
    .locals 0

    invoke-static {p0}, Lnet/sf/saxon/functions/Parts;->K0(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a0(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/om/SequenceIterator;
    .locals 2

    check-cast p0, Lnet/sf/saxon/value/TimeValue;

    invoke-virtual {p0}, Lnet/sf/saxon/value/TimeValue;->getMinute()B

    move-result p0

    int-to-long v0, p0

    invoke-static {v0, v1}, Lnet/sf/saxon/functions/Parts;->P0(J)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/om/SequenceIterator;
    .locals 0

    invoke-static {p0}, Lnet/sf/saxon/functions/Parts;->y0(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b0(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/om/SequenceIterator;
    .locals 4

    check-cast p0, Lnet/sf/saxon/value/TimeValue;

    invoke-virtual {p0}, Lnet/sf/saxon/value/TimeValue;->getNanosecond()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v0

    sget-object v1, Lnet/sf/saxon/value/BigDecimalValue;->BIG_DECIMAL_ONE_BILLION:Ljava/math/BigDecimal;

    const/4 v2, 0x6

    sget-object v3, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    invoke-virtual {v0, v1, v2, v3}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sf/saxon/value/TimeValue;->getSecond()B

    move-result p0

    int-to-long v1, p0

    invoke-static {v1, v2}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p0

    invoke-static {p0}, Lnet/sf/saxon/functions/Parts;->O0(Ljava/math/BigDecimal;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/om/SequenceIterator;
    .locals 0

    invoke-static {p0}, Lnet/sf/saxon/functions/Parts;->a0(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c0(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/om/SequenceIterator;
    .locals 0

    check-cast p0, Lnet/sf/saxon/value/TimeValue;

    invoke-static {p0}, Lnet/sf/saxon/functions/Parts;->R0(Lnet/sf/saxon/value/CalendarValue;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/om/SequenceIterator;
    .locals 0

    invoke-static {p0}, Lnet/sf/saxon/functions/Parts;->u0(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d0(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/om/SequenceIterator;
    .locals 2

    check-cast p0, Lnet/sf/saxon/value/GDateValue;

    invoke-virtual {p0}, Lnet/sf/saxon/value/GDateValue;->getYear()I

    move-result p0

    int-to-long v0, p0

    invoke-static {v0, v1}, Lnet/sf/saxon/functions/Parts;->P0(J)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/om/SequenceIterator;
    .locals 0

    invoke-static {p0}, Lnet/sf/saxon/functions/Parts;->l0(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e0(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/om/SequenceIterator;
    .locals 0

    check-cast p0, Lnet/sf/saxon/value/GDateValue;

    invoke-static {p0}, Lnet/sf/saxon/functions/Parts;->R0(Lnet/sf/saxon/value/CalendarValue;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/om/SequenceIterator;
    .locals 0

    invoke-static {p0}, Lnet/sf/saxon/functions/Parts;->n0(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f0(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/om/SequenceIterator;
    .locals 2

    check-cast p0, Lnet/sf/saxon/value/GDateValue;

    invoke-virtual {p0}, Lnet/sf/saxon/value/GDateValue;->getYear()I

    move-result p0

    int-to-long v0, p0

    invoke-static {v0, v1}, Lnet/sf/saxon/functions/Parts;->P0(J)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic g(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/om/SequenceIterator;
    .locals 0

    invoke-static {p0}, Lnet/sf/saxon/functions/Parts;->E0(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic g0(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/om/SequenceIterator;
    .locals 2

    check-cast p0, Lnet/sf/saxon/value/GDateValue;

    invoke-virtual {p0}, Lnet/sf/saxon/value/GDateValue;->getMonth()B

    move-result p0

    int-to-long v0, p0

    invoke-static {v0, v1}, Lnet/sf/saxon/functions/Parts;->P0(J)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    return-object p0
.end method

.method public static getComponentType(Lnet/sf/saxon/type/BuiltInAtomicType;Ljava/lang/String;)Lnet/sf/saxon/value/SequenceType;
    .locals 1

    sget-object v0, Lnet/sf/saxon/type/BuiltInAtomicType;->DAY_TIME_DURATION:Lnet/sf/saxon/type/BuiltInAtomicType;

    if-eq p0, v0, :cond_0

    sget-object v0, Lnet/sf/saxon/type/BuiltInAtomicType;->YEAR_MONTH_DURATION:Lnet/sf/saxon/type/BuiltInAtomicType;

    if-ne p0, v0, :cond_1

    :cond_0
    sget-object p0, Lnet/sf/saxon/type/BuiltInAtomicType;->DURATION:Lnet/sf/saxon/type/BuiltInAtomicType;

    :cond_1
    sget-object v0, Lnet/sf/saxon/functions/Parts;->h:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    const/4 v0, 0x0

    if-nez p0, :cond_2

    return-object v0

    :cond_2
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/functions/Parts$b;

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lnet/sf/saxon/functions/Parts$b;->a:Lnet/sf/saxon/value/SequenceType;

    :goto_0
    return-object v0
.end method

.method public static getComponentValue(Lnet/sf/saxon/value/AtomicValue;Ljava/lang/String;)Lnet/sf/saxon/om/SequenceIterator;
    .locals 2

    invoke-virtual {p0}, Lnet/sf/saxon/value/AtomicValue;->getPrimitiveType()Lnet/sf/saxon/type/BuiltInAtomicType;

    move-result-object v0

    sget-object v1, Lnet/sf/saxon/type/BuiltInAtomicType;->DAY_TIME_DURATION:Lnet/sf/saxon/type/BuiltInAtomicType;

    if-eq v0, v1, :cond_0

    sget-object v1, Lnet/sf/saxon/type/BuiltInAtomicType;->YEAR_MONTH_DURATION:Lnet/sf/saxon/type/BuiltInAtomicType;

    if-ne v0, v1, :cond_1

    :cond_0
    sget-object v0, Lnet/sf/saxon/type/BuiltInAtomicType;->DURATION:Lnet/sf/saxon/type/BuiltInAtomicType;

    :cond_1
    sget-object v1, Lnet/sf/saxon/functions/Parts;->h:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-nez v0, :cond_2

    invoke-static {}, Lnet/sf/saxon/tree/iter/EmptyIterator;->ofAtomic()Lnet/sf/saxon/tree/iter/AtomicIterator;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/sf/saxon/functions/Parts$b;

    iget-object p1, p1, Lnet/sf/saxon/functions/Parts$b;->b:Ljava/util/function/Function;

    invoke-interface {p1, p0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/om/SequenceIterator;

    return-object p0
.end method

.method public static synthetic h(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/om/SequenceIterator;
    .locals 0

    invoke-static {p0}, Lnet/sf/saxon/functions/Parts;->f0(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic h0(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/om/SequenceIterator;
    .locals 2

    check-cast p0, Lnet/sf/saxon/value/DateTimeValue;

    invoke-virtual {p0}, Lnet/sf/saxon/value/DateTimeValue;->getMonth()B

    move-result p0

    int-to-long v0, p0

    invoke-static {v0, v1}, Lnet/sf/saxon/functions/Parts;->P0(J)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic i(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/om/SequenceIterator;
    .locals 0

    invoke-static {p0}, Lnet/sf/saxon/functions/Parts;->B0(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic i0(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/om/SequenceIterator;
    .locals 0

    check-cast p0, Lnet/sf/saxon/value/GDateValue;

    invoke-static {p0}, Lnet/sf/saxon/functions/Parts;->R0(Lnet/sf/saxon/value/CalendarValue;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic j(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/om/SequenceIterator;
    .locals 0

    invoke-static {p0}, Lnet/sf/saxon/functions/Parts;->M0(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic j0(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/om/SequenceIterator;
    .locals 2

    check-cast p0, Lnet/sf/saxon/value/GDateValue;

    invoke-virtual {p0}, Lnet/sf/saxon/value/GDateValue;->getMonth()B

    move-result p0

    int-to-long v0, p0

    invoke-static {v0, v1}, Lnet/sf/saxon/functions/Parts;->P0(J)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic k(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/om/SequenceIterator;
    .locals 0

    invoke-static {p0}, Lnet/sf/saxon/functions/Parts;->p0(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic k0(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/om/SequenceIterator;
    .locals 0

    check-cast p0, Lnet/sf/saxon/value/GDateValue;

    invoke-static {p0}, Lnet/sf/saxon/functions/Parts;->R0(Lnet/sf/saxon/value/CalendarValue;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic l(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/om/SequenceIterator;
    .locals 0

    invoke-static {p0}, Lnet/sf/saxon/functions/Parts;->Y(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic l0(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/om/SequenceIterator;
    .locals 2

    check-cast p0, Lnet/sf/saxon/value/GDateValue;

    invoke-virtual {p0}, Lnet/sf/saxon/value/GDateValue;->getMonth()B

    move-result p0

    int-to-long v0, p0

    invoke-static {v0, v1}, Lnet/sf/saxon/functions/Parts;->P0(J)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic m(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/om/SequenceIterator;
    .locals 0

    invoke-static {p0}, Lnet/sf/saxon/functions/Parts;->d0(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic m0(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/om/SequenceIterator;
    .locals 2

    check-cast p0, Lnet/sf/saxon/value/GDateValue;

    invoke-virtual {p0}, Lnet/sf/saxon/value/GDateValue;->getDay()B

    move-result p0

    int-to-long v0, p0

    invoke-static {v0, v1}, Lnet/sf/saxon/functions/Parts;->P0(J)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic n(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/om/SequenceIterator;
    .locals 0

    invoke-static {p0}, Lnet/sf/saxon/functions/Parts;->q0(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic n0(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/om/SequenceIterator;
    .locals 0

    check-cast p0, Lnet/sf/saxon/value/GDateValue;

    invoke-static {p0}, Lnet/sf/saxon/functions/Parts;->R0(Lnet/sf/saxon/value/CalendarValue;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic o(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/om/SequenceIterator;
    .locals 0

    invoke-static {p0}, Lnet/sf/saxon/functions/Parts;->L0(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic o0(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/om/SequenceIterator;
    .locals 2

    check-cast p0, Lnet/sf/saxon/value/GDateValue;

    invoke-virtual {p0}, Lnet/sf/saxon/value/GDateValue;->getDay()B

    move-result p0

    int-to-long v0, p0

    invoke-static {v0, v1}, Lnet/sf/saxon/functions/Parts;->P0(J)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic p(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/om/SequenceIterator;
    .locals 0

    invoke-static {p0}, Lnet/sf/saxon/functions/Parts;->I0(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic p0(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/om/SequenceIterator;
    .locals 0

    check-cast p0, Lnet/sf/saxon/value/GDateValue;

    invoke-static {p0}, Lnet/sf/saxon/functions/Parts;->R0(Lnet/sf/saxon/value/CalendarValue;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic q(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/om/SequenceIterator;
    .locals 0

    invoke-static {p0}, Lnet/sf/saxon/functions/Parts;->C0(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic q0(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/om/SequenceIterator;
    .locals 4

    check-cast p0, Lnet/sf/saxon/value/DurationValue;

    invoke-virtual {p0}, Lnet/sf/saxon/value/DurationValue;->getYears()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p0}, Lnet/sf/saxon/value/DurationValue;->signum()I

    move-result p0

    int-to-long v2, p0

    mul-long/2addr v0, v2

    invoke-static {v0, v1}, Lnet/sf/saxon/functions/Parts;->P0(J)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic r(Lnet/sf/saxon/type/AtomicType;)Ljava/util/Map;
    .locals 0

    invoke-static {p0}, Lnet/sf/saxon/functions/Parts;->V(Lnet/sf/saxon/type/AtomicType;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic r0(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/om/SequenceIterator;
    .locals 4

    check-cast p0, Lnet/sf/saxon/value/DurationValue;

    invoke-virtual {p0}, Lnet/sf/saxon/value/DurationValue;->getMonths()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p0}, Lnet/sf/saxon/value/DurationValue;->signum()I

    move-result p0

    int-to-long v2, p0

    mul-long/2addr v0, v2

    invoke-static {v0, v1}, Lnet/sf/saxon/functions/Parts;->P0(J)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic s(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/om/SequenceIterator;
    .locals 0

    invoke-static {p0}, Lnet/sf/saxon/functions/Parts;->r0(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic s0(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/om/SequenceIterator;
    .locals 2

    check-cast p0, Lnet/sf/saxon/value/DateTimeValue;

    invoke-virtual {p0}, Lnet/sf/saxon/value/DateTimeValue;->getDay()B

    move-result p0

    int-to-long v0, p0

    invoke-static {v0, v1}, Lnet/sf/saxon/functions/Parts;->P0(J)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic t(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/om/SequenceIterator;
    .locals 0

    invoke-static {p0}, Lnet/sf/saxon/functions/Parts;->j0(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic t0(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/om/SequenceIterator;
    .locals 4

    check-cast p0, Lnet/sf/saxon/value/DurationValue;

    invoke-virtual {p0}, Lnet/sf/saxon/value/DurationValue;->getDays()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p0}, Lnet/sf/saxon/value/DurationValue;->signum()I

    move-result p0

    int-to-long v2, p0

    mul-long/2addr v0, v2

    invoke-static {v0, v1}, Lnet/sf/saxon/functions/Parts;->P0(J)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic u(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/om/SequenceIterator;
    .locals 0

    invoke-static {p0}, Lnet/sf/saxon/functions/Parts;->m0(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic u0(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/om/SequenceIterator;
    .locals 4

    check-cast p0, Lnet/sf/saxon/value/DurationValue;

    invoke-virtual {p0}, Lnet/sf/saxon/value/DurationValue;->getHours()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p0}, Lnet/sf/saxon/value/DurationValue;->signum()I

    move-result p0

    int-to-long v2, p0

    mul-long/2addr v0, v2

    invoke-static {v0, v1}, Lnet/sf/saxon/functions/Parts;->P0(J)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    return-object p0
.end method

.method public static uriComponents(Ljava/lang/String;)Lnet/sf/saxon/ma/map/DictionaryMap;
    .locals 11

    const-string v0, "isValid"

    const-string v1, "/"

    new-instance v2, Lnet/sf/saxon/ma/map/DictionaryMap;

    invoke-direct {v2}, Lnet/sf/saxon/ma/map/DictionaryMap;-><init>()V

    :try_start_0
    new-instance v3, Ljava/net/URI;

    invoke-direct {v3, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    sget-object v4, Lnet/sf/saxon/value/BooleanValue;->TRUE:Lnet/sf/saxon/value/BooleanValue;

    invoke-virtual {v2, v0, v4}, Lnet/sf/saxon/ma/map/DictionaryMap;->initialPut(Ljava/lang/String;Lnet/sf/saxon/om/GroundedValue;)V

    invoke-virtual {v3}, Ljava/net/URI;->isAbsolute()Z

    move-result v4

    const-string v5, "isAbsolute"

    invoke-static {v4}, Lnet/sf/saxon/value/BooleanValue;->get(Z)Lnet/sf/saxon/value/BooleanValue;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lnet/sf/saxon/ma/map/DictionaryMap;->initialPut(Ljava/lang/String;Lnet/sf/saxon/om/GroundedValue;)V

    const-string v5, "isOpaque"

    invoke-virtual {v3}, Ljava/net/URI;->isOpaque()Z

    move-result v6

    invoke-static {v6}, Lnet/sf/saxon/value/BooleanValue;->get(Z)Lnet/sf/saxon/value/BooleanValue;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lnet/sf/saxon/ma/map/DictionaryMap;->initialPut(Ljava/lang/String;Lnet/sf/saxon/om/GroundedValue;)V

    if-eqz v4, :cond_0

    move-object v5, v3

    goto :goto_0

    :cond_0
    invoke-static {v3}, Lnet/sf/saxon/functions/Parts;->U(Ljava/net/URI;)Ljava/net/URI;

    move-result-object v5

    :goto_0
    const/4 v6, 0x0

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Ljava/net/URI;->getAuthority()Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    :cond_1
    move-object v7, v6

    :goto_1
    if-eqz v7, :cond_2

    const-string v8, "authority"

    new-instance v9, Lnet/sf/saxon/value/StringValue;

    invoke-direct {v9, v7}, Lnet/sf/saxon/value/StringValue;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v8, v9}, Lnet/sf/saxon/ma/map/DictionaryMap;->initialPut(Ljava/lang/String;Lnet/sf/saxon/om/GroundedValue;)V

    :cond_2
    if-eqz v4, :cond_3

    invoke-virtual {v3}, Ljava/net/URI;->getRawAuthority()Ljava/lang/String;

    move-result-object v7

    goto :goto_2

    :cond_3
    move-object v7, v6

    :goto_2
    if-eqz v7, :cond_4

    const-string v8, "rawAuthority"

    new-instance v9, Lnet/sf/saxon/value/StringValue;

    invoke-direct {v9, v7}, Lnet/sf/saxon/value/StringValue;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v8, v9}, Lnet/sf/saxon/ma/map/DictionaryMap;->initialPut(Ljava/lang/String;Lnet/sf/saxon/om/GroundedValue;)V

    :cond_4
    if-eqz v4, :cond_5

    invoke-virtual {v3}, Ljava/net/URI;->getUserInfo()Ljava/lang/String;

    move-result-object v7

    goto :goto_3

    :cond_5
    move-object v7, v6

    :goto_3
    if-eqz v7, :cond_6

    const-string v8, "userInfo"

    new-instance v9, Lnet/sf/saxon/value/StringValue;

    invoke-direct {v9, v7}, Lnet/sf/saxon/value/StringValue;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v8, v9}, Lnet/sf/saxon/ma/map/DictionaryMap;->initialPut(Ljava/lang/String;Lnet/sf/saxon/om/GroundedValue;)V

    :cond_6
    if-eqz v4, :cond_7

    invoke-virtual {v3}, Ljava/net/URI;->getRawUserInfo()Ljava/lang/String;

    move-result-object v7

    goto :goto_4

    :cond_7
    move-object v7, v6

    :goto_4
    if-eqz v7, :cond_8

    const-string v8, "rawUserInfo"

    new-instance v9, Lnet/sf/saxon/value/StringValue;

    invoke-direct {v9, v7}, Lnet/sf/saxon/value/StringValue;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v8, v9}, Lnet/sf/saxon/ma/map/DictionaryMap;->initialPut(Ljava/lang/String;Lnet/sf/saxon/om/GroundedValue;)V

    :cond_8
    if-eqz v4, :cond_9

    invoke-virtual {v3}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v7

    goto :goto_5

    :cond_9
    move-object v7, v6

    :goto_5
    if-eqz v7, :cond_a

    const-string v8, "scheme"

    new-instance v9, Lnet/sf/saxon/value/StringValue;

    invoke-direct {v9, v7}, Lnet/sf/saxon/value/StringValue;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v8, v9}, Lnet/sf/saxon/ma/map/DictionaryMap;->initialPut(Ljava/lang/String;Lnet/sf/saxon/om/GroundedValue;)V

    :cond_a
    if-eqz v4, :cond_b

    invoke-virtual {v3}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v6

    :cond_b
    if-eqz v6, :cond_c

    const-string v7, "host"

    new-instance v8, Lnet/sf/saxon/value/StringValue;

    invoke-direct {v8, v6}, Lnet/sf/saxon/value/StringValue;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v7, v8}, Lnet/sf/saxon/ma/map/DictionaryMap;->initialPut(Ljava/lang/String;Lnet/sf/saxon/om/GroundedValue;)V

    :cond_c
    invoke-virtual {v5}, Ljava/net/URI;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_d

    const-string v7, "schemeSpecificPart"

    new-instance v8, Lnet/sf/saxon/value/StringValue;

    invoke-direct {v8, v6}, Lnet/sf/saxon/value/StringValue;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v7, v8}, Lnet/sf/saxon/ma/map/DictionaryMap;->initialPut(Ljava/lang/String;Lnet/sf/saxon/om/GroundedValue;)V

    :cond_d
    invoke-virtual {v5}, Ljava/net/URI;->getRawSchemeSpecificPart()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_e

    const-string v7, "rawSchemeSpecificPart"

    new-instance v8, Lnet/sf/saxon/value/StringValue;

    invoke-direct {v8, v6}, Lnet/sf/saxon/value/StringValue;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v7, v8}, Lnet/sf/saxon/ma/map/DictionaryMap;->initialPut(Ljava/lang/String;Lnet/sf/saxon/om/GroundedValue;)V

    :cond_e
    if-eqz v4, :cond_f

    invoke-virtual {v3}, Ljava/net/URI;->getPort()I

    move-result v6

    if-ltz v6, :cond_f

    const-string v7, "port"

    new-instance v8, Lnet/sf/saxon/value/Int64Value;

    int-to-long v9, v6

    invoke-direct {v8, v9, v10}, Lnet/sf/saxon/value/Int64Value;-><init>(J)V

    invoke-virtual {v2, v7, v8}, Lnet/sf/saxon/ma/map/DictionaryMap;->initialPut(Ljava/lang/String;Lnet/sf/saxon/om/GroundedValue;)V

    :cond_f
    invoke-virtual {v5}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_12

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_10

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_10

    const-string v6, ""

    :cond_10
    if-nez v4, :cond_11

    invoke-virtual {v6, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_11

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_11

    const/4 p0, 0x1

    invoke-virtual {v6, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    :cond_11
    const-string p0, "path"

    new-instance v1, Lnet/sf/saxon/value/StringValue;

    invoke-direct {v1, v6}, Lnet/sf/saxon/value/StringValue;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0, v1}, Lnet/sf/saxon/ma/map/DictionaryMap;->initialPut(Ljava/lang/String;Lnet/sf/saxon/om/GroundedValue;)V

    :cond_12
    invoke-virtual {v5}, Ljava/net/URI;->getRawPath()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_13

    const-string v1, "rawPath"

    new-instance v4, Lnet/sf/saxon/value/StringValue;

    invoke-direct {v4, p0}, Lnet/sf/saxon/value/StringValue;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1, v4}, Lnet/sf/saxon/ma/map/DictionaryMap;->initialPut(Ljava/lang/String;Lnet/sf/saxon/om/GroundedValue;)V

    :cond_13
    invoke-virtual {v5}, Ljava/net/URI;->getRawQuery()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_14

    const-string v1, "rawQuery"

    new-instance v4, Lnet/sf/saxon/value/StringValue;

    invoke-direct {v4, p0}, Lnet/sf/saxon/value/StringValue;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1, v4}, Lnet/sf/saxon/ma/map/DictionaryMap;->initialPut(Ljava/lang/String;Lnet/sf/saxon/om/GroundedValue;)V

    :cond_14
    invoke-virtual {v5}, Ljava/net/URI;->getQuery()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_17

    const-string v1, "query"

    new-instance v4, Lnet/sf/saxon/value/StringValue;

    invoke-direct {v4, p0}, Lnet/sf/saxon/value/StringValue;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1, v4}, Lnet/sf/saxon/ma/map/DictionaryMap;->initialPut(Ljava/lang/String;Lnet/sf/saxon/om/GroundedValue;)V

    new-instance v1, Lnet/sf/saxon/ma/map/DictionaryMap;

    invoke-direct {v1}, Lnet/sf/saxon/ma/map/DictionaryMap;-><init>()V

    new-instance v4, Ljava/util/StringTokenizer;

    const-string v6, ";&"

    invoke-direct {v4, p0, v6}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_6
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result p0

    if-eqz p0, :cond_16

    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p0

    const/16 v6, 0x3d

    invoke-virtual {p0, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-ltz v6, :cond_15

    const/4 v7, 0x0

    invoke-virtual {p0, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {p0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    new-instance v6, Lnet/sf/saxon/value/StringValue;

    invoke-direct {v6, p0}, Lnet/sf/saxon/value/StringValue;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7, v6}, Lnet/sf/saxon/ma/map/DictionaryMap;->initialAppend(Ljava/lang/String;Lnet/sf/saxon/om/GroundedValue;)V

    goto :goto_6

    :cond_15
    invoke-static {}, Lnet/sf/saxon/value/EmptySequence;->getInstance()Lnet/sf/saxon/value/EmptySequence;

    move-result-object v6

    invoke-virtual {v1, p0, v6}, Lnet/sf/saxon/ma/map/DictionaryMap;->initialAppend(Ljava/lang/String;Lnet/sf/saxon/om/GroundedValue;)V

    goto :goto_6

    :cond_16
    const-string p0, "queryParams"

    invoke-virtual {v2, p0, v1}, Lnet/sf/saxon/ma/map/DictionaryMap;->initialPut(Ljava/lang/String;Lnet/sf/saxon/om/GroundedValue;)V

    :cond_17
    invoke-virtual {v5}, Ljava/net/URI;->getRawFragment()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_18

    const-string v1, "rawFragment"

    new-instance v4, Lnet/sf/saxon/value/StringValue;

    invoke-direct {v4, p0}, Lnet/sf/saxon/value/StringValue;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1, v4}, Lnet/sf/saxon/ma/map/DictionaryMap;->initialPut(Ljava/lang/String;Lnet/sf/saxon/om/GroundedValue;)V

    :cond_18
    invoke-virtual {v5}, Ljava/net/URI;->getFragment()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_19

    const-string v1, "fragment"

    new-instance v4, Lnet/sf/saxon/value/StringValue;

    invoke-direct {v4, p0}, Lnet/sf/saxon/value/StringValue;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1, v4}, Lnet/sf/saxon/ma/map/DictionaryMap;->initialPut(Ljava/lang/String;Lnet/sf/saxon/om/GroundedValue;)V

    :cond_19
    invoke-virtual {v3}, Ljava/net/URI;->toASCIIString()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1a

    const-string v1, "asciiString"

    new-instance v3, Lnet/sf/saxon/value/StringValue;

    invoke-direct {v3, p0}, Lnet/sf/saxon/value/StringValue;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1, v3}, Lnet/sf/saxon/ma/map/DictionaryMap;->initialPut(Ljava/lang/String;Lnet/sf/saxon/om/GroundedValue;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1a
    return-object v2

    :catch_0
    move-exception p0

    sget-object v1, Lnet/sf/saxon/value/BooleanValue;->FALSE:Lnet/sf/saxon/value/BooleanValue;

    invoke-virtual {v2, v0, v1}, Lnet/sf/saxon/ma/map/DictionaryMap;->initialPut(Ljava/lang/String;Lnet/sf/saxon/om/GroundedValue;)V

    new-instance v0, Lnet/sf/saxon/value/StringValue;

    invoke-virtual {p0}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lnet/sf/saxon/value/StringValue;-><init>(Ljava/lang/String;)V

    const-string p0, "error"

    invoke-virtual {v2, p0, v0}, Lnet/sf/saxon/ma/map/DictionaryMap;->initialPut(Ljava/lang/String;Lnet/sf/saxon/om/GroundedValue;)V

    return-object v2
.end method

.method public static synthetic v(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/om/SequenceIterator;
    .locals 0

    invoke-static {p0}, Lnet/sf/saxon/functions/Parts;->W(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic v0(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/om/SequenceIterator;
    .locals 4

    check-cast p0, Lnet/sf/saxon/value/DurationValue;

    invoke-virtual {p0}, Lnet/sf/saxon/value/DurationValue;->getMinutes()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p0}, Lnet/sf/saxon/value/DurationValue;->signum()I

    move-result p0

    int-to-long v2, p0

    mul-long/2addr v0, v2

    invoke-static {v0, v1}, Lnet/sf/saxon/functions/Parts;->P0(J)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic w(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/om/SequenceIterator;
    .locals 0

    invoke-static {p0}, Lnet/sf/saxon/functions/Parts;->v0(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic w0(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/om/SequenceIterator;
    .locals 1

    check-cast p0, Lnet/sf/saxon/value/DurationValue;

    sget-object v0, Lnet/sf/saxon/functions/AccessorFn$Component;->SECONDS:Lnet/sf/saxon/functions/AccessorFn$Component;

    invoke-virtual {p0, v0}, Lnet/sf/saxon/value/DurationValue;->getComponent(Lnet/sf/saxon/functions/AccessorFn$Component;)Lnet/sf/saxon/value/AtomicValue;

    move-result-object p0

    invoke-static {p0}, Lnet/sf/saxon/tree/iter/SingletonIterator;->makeIterator(Lnet/sf/saxon/om/Item;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic x(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/om/SequenceIterator;
    .locals 0

    invoke-static {p0}, Lnet/sf/saxon/functions/Parts;->X(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic x0(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/om/SequenceIterator;
    .locals 7

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast p0, Lnet/sf/saxon/value/HexBinaryValue;

    invoke-virtual {p0}, Lnet/sf/saxon/value/HexBinaryValue;->getBinaryValue()[B

    move-result-object p0

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-byte v3, p0, v2

    new-instance v4, Lnet/sf/saxon/value/Int64Value;

    and-int/lit16 v3, v3, 0xff

    int-to-long v5, v3

    sget-object v3, Lnet/sf/saxon/type/BuiltInAtomicType;->UNSIGNED_BYTE:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-direct {v4, v5, v6, v3}, Lnet/sf/saxon/value/Int64Value;-><init>(JLnet/sf/saxon/type/AtomicType;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance p0, Lnet/sf/saxon/tree/iter/ListIterator$Of;

    invoke-direct {p0, v0}, Lnet/sf/saxon/tree/iter/ListIterator$Of;-><init>(Ljava/util/List;)V

    return-object p0
.end method

.method public static synthetic y(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/om/SequenceIterator;
    .locals 0

    invoke-static {p0}, Lnet/sf/saxon/functions/Parts;->F0(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic y0(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/om/SequenceIterator;
    .locals 7

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast p0, Lnet/sf/saxon/value/Base64BinaryValue;

    invoke-virtual {p0}, Lnet/sf/saxon/value/Base64BinaryValue;->getBinaryValue()[B

    move-result-object p0

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-byte v3, p0, v2

    new-instance v4, Lnet/sf/saxon/value/Int64Value;

    and-int/lit16 v3, v3, 0xff

    int-to-long v5, v3

    sget-object v3, Lnet/sf/saxon/type/BuiltInAtomicType;->UNSIGNED_BYTE:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-direct {v4, v5, v6, v3}, Lnet/sf/saxon/value/Int64Value;-><init>(JLnet/sf/saxon/type/AtomicType;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance p0, Lnet/sf/saxon/tree/iter/ListIterator$Of;

    invoke-direct {p0, v0}, Lnet/sf/saxon/tree/iter/ListIterator$Of;-><init>(Ljava/util/List;)V

    return-object p0
.end method

.method public static synthetic z(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/om/SequenceIterator;
    .locals 0

    invoke-static {p0}, Lnet/sf/saxon/functions/Parts;->i0(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic z0(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/om/SequenceIterator;
    .locals 2

    check-cast p0, Lnet/sf/saxon/value/QNameValue;

    invoke-virtual {p0}, Lnet/sf/saxon/value/QualifiedNameValue;->getStructuredQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/om/StructuredQName;->getPrefix()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lnet/sf/saxon/tree/iter/EmptyIterator;->ofAtomic()Lnet/sf/saxon/tree/iter/AtomicIterator;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance v0, Lnet/sf/saxon/value/StringValue;

    sget-object v1, Lnet/sf/saxon/type/BuiltInAtomicType;->NCNAME:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-direct {v0, p0, v1}, Lnet/sf/saxon/value/StringValue;-><init>(Ljava/lang/String;Lnet/sf/saxon/type/AtomicType;)V

    invoke-static {v0}, Lnet/sf/saxon/tree/iter/SingletonIterator;->makeIterator(Lnet/sf/saxon/om/Item;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public call(Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/om/Sequence;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    new-instance p0, Lnet/sf/saxon/ma/map/DictionaryMap;

    invoke-direct {p0}, Lnet/sf/saxon/ma/map/DictionaryMap;-><init>()V

    const/4 p1, 0x0

    aget-object p1, p2, p1

    invoke-interface {p1}, Lnet/sf/saxon/om/Sequence;->head()Lnet/sf/saxon/om/Item;

    move-result-object p1

    check-cast p1, Lnet/sf/saxon/value/AtomicValue;

    invoke-virtual {p1}, Lnet/sf/saxon/value/AtomicValue;->getPrimitiveType()Lnet/sf/saxon/type/BuiltInAtomicType;

    move-result-object p2

    invoke-interface {p2}, Lnet/sf/saxon/type/SchemaType;->getBaseType()Lnet/sf/saxon/type/SchemaType;

    move-result-object v0

    sget-object v1, Lnet/sf/saxon/type/BuiltInAtomicType;->DURATION:Lnet/sf/saxon/type/BuiltInAtomicType;

    if-ne v0, v1, :cond_0

    move-object p2, v1

    :cond_0
    sget-object v0, Lnet/sf/saxon/functions/Parts;->h:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map;

    if-nez p2, :cond_1

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    :cond_1
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/functions/Parts$b;

    iget-object v0, v0, Lnet/sf/saxon/functions/Parts$b;->b:Ljava/util/function/Function;

    invoke-interface {v0, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/om/SequenceIterator;

    invoke-static {v0}, Lnet/sf/saxon/om/SequenceTool;->toGroundedValue(Lnet/sf/saxon/om/SequenceIterator;)Lnet/sf/saxon/om/GroundedValue;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lnet/sf/saxon/ma/map/DictionaryMap;->initialPut(Ljava/lang/String;Lnet/sf/saxon/om/GroundedValue;)V

    goto :goto_0

    :cond_2
    const-string p2, "value"

    invoke-virtual {p0, p2, p1}, Lnet/sf/saxon/ma/map/DictionaryMap;->initialPut(Ljava/lang/String;Lnet/sf/saxon/om/GroundedValue;)V

    return-object p0
.end method

.method public getResultItemType([Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/type/ItemType;
    .locals 3

    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Expression;->getStaticType()Lnet/sf/saxon/value/SequenceType;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/value/SequenceType;->getPrimaryType()Lnet/sf/saxon/type/ItemType;

    move-result-object v0

    invoke-interface {v0}, Lnet/sf/saxon/type/ItemType;->getAtomizedItemType()Lnet/sf/saxon/type/PlainType;

    move-result-object v0

    invoke-interface {v0}, Lnet/sf/saxon/type/PlainType;->getPrimitiveItemType()Lnet/sf/saxon/type/AtomicType;

    move-result-object v0

    sget-object v1, Lnet/sf/saxon/type/BuiltInAtomicType;->ANY_ATOMIC:Lnet/sf/saxon/type/BuiltInAtomicType;

    if-ne v0, v1, :cond_0

    invoke-super {p0, p1}, Lnet/sf/saxon/functions/SystemFunction;->getResultItemType([Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/type/ItemType;

    move-result-object p0

    return-object p0

    :cond_0
    :goto_0
    invoke-interface {v0}, Lnet/sf/saxon/type/SchemaType;->getBaseType()Lnet/sf/saxon/type/SchemaType;

    move-result-object v1

    sget-object v2, Lnet/sf/saxon/type/BuiltInAtomicType;->ANY_ATOMIC:Lnet/sf/saxon/type/BuiltInAtomicType;

    if-eq v1, v2, :cond_1

    invoke-interface {v0}, Lnet/sf/saxon/type/SchemaType;->getBaseType()Lnet/sf/saxon/type/SchemaType;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/type/AtomicType;

    goto :goto_0

    :cond_1
    sget-object v1, Lnet/sf/saxon/functions/Parts;->i:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/ma/map/RecordTest;

    if-nez v0, :cond_2

    invoke-super {p0, p1}, Lnet/sf/saxon/functions/SystemFunction;->getResultItemType([Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/type/ItemType;

    move-result-object p0

    return-object p0

    :cond_2
    return-object v0
.end method
