.class public final enum Lorg/apache/poi/ss/formula/functions/DStarRunner$DStarAlgorithmEnum;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/ss/formula/functions/DStarRunner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DStarAlgorithmEnum"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/poi/ss/formula/functions/DStarRunner$DStarAlgorithmEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/poi/ss/formula/functions/DStarRunner$DStarAlgorithmEnum;

.field public static final enum DAVERAGE:Lorg/apache/poi/ss/formula/functions/DStarRunner$DStarAlgorithmEnum;

.field public static final enum DCOUNT:Lorg/apache/poi/ss/formula/functions/DStarRunner$DStarAlgorithmEnum;

.field public static final enum DCOUNTA:Lorg/apache/poi/ss/formula/functions/DStarRunner$DStarAlgorithmEnum;

.field public static final enum DGET:Lorg/apache/poi/ss/formula/functions/DStarRunner$DStarAlgorithmEnum;

.field public static final enum DMAX:Lorg/apache/poi/ss/formula/functions/DStarRunner$DStarAlgorithmEnum;

.field public static final enum DMIN:Lorg/apache/poi/ss/formula/functions/DStarRunner$DStarAlgorithmEnum;

.field public static final enum DPRODUCT:Lorg/apache/poi/ss/formula/functions/DStarRunner$DStarAlgorithmEnum;

.field public static final enum DSTDEV:Lorg/apache/poi/ss/formula/functions/DStarRunner$DStarAlgorithmEnum;

.field public static final enum DSTDEVP:Lorg/apache/poi/ss/formula/functions/DStarRunner$DStarAlgorithmEnum;

.field public static final enum DSUM:Lorg/apache/poi/ss/formula/functions/DStarRunner$DStarAlgorithmEnum;

.field public static final enum DVAR:Lorg/apache/poi/ss/formula/functions/DStarRunner$DStarAlgorithmEnum;

.field public static final enum DVARP:Lorg/apache/poi/ss/formula/functions/DStarRunner$DStarAlgorithmEnum;


# instance fields
.field private final implSupplier:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Lorg/apache/poi/ss/formula/functions/IDStarAlgorithm;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 15

    new-instance v0, Lorg/apache/poi/ss/formula/functions/DStarRunner$DStarAlgorithmEnum;

    new-instance v1, Lcom/sunia/HTREnginev2/wqe;

    invoke-direct {v1}, Lcom/sunia/HTREnginev2/wqe;-><init>()V

    const-string v2, "DGET"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lorg/apache/poi/ss/formula/functions/DStarRunner$DStarAlgorithmEnum;-><init>(Ljava/lang/String;ILjava/util/function/Supplier;)V

    sput-object v0, Lorg/apache/poi/ss/formula/functions/DStarRunner$DStarAlgorithmEnum;->DGET:Lorg/apache/poi/ss/formula/functions/DStarRunner$DStarAlgorithmEnum;

    new-instance v1, Lorg/apache/poi/ss/formula/functions/DStarRunner$DStarAlgorithmEnum;

    new-instance v2, Lcom/sunia/HTREnginev2/bre;

    invoke-direct {v2}, Lcom/sunia/HTREnginev2/bre;-><init>()V

    const-string v3, "DMIN"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v2}, Lorg/apache/poi/ss/formula/functions/DStarRunner$DStarAlgorithmEnum;-><init>(Ljava/lang/String;ILjava/util/function/Supplier;)V

    sput-object v1, Lorg/apache/poi/ss/formula/functions/DStarRunner$DStarAlgorithmEnum;->DMIN:Lorg/apache/poi/ss/formula/functions/DStarRunner$DStarAlgorithmEnum;

    new-instance v2, Lorg/apache/poi/ss/formula/functions/DStarRunner$DStarAlgorithmEnum;

    new-instance v3, Lcom/sunia/HTREnginev2/cre;

    invoke-direct {v3}, Lcom/sunia/HTREnginev2/cre;-><init>()V

    const-string v4, "DMAX"

    const/4 v5, 0x2

    invoke-direct {v2, v4, v5, v3}, Lorg/apache/poi/ss/formula/functions/DStarRunner$DStarAlgorithmEnum;-><init>(Ljava/lang/String;ILjava/util/function/Supplier;)V

    sput-object v2, Lorg/apache/poi/ss/formula/functions/DStarRunner$DStarAlgorithmEnum;->DMAX:Lorg/apache/poi/ss/formula/functions/DStarRunner$DStarAlgorithmEnum;

    new-instance v3, Lorg/apache/poi/ss/formula/functions/DStarRunner$DStarAlgorithmEnum;

    new-instance v4, Lcom/sunia/HTREnginev2/dre;

    invoke-direct {v4}, Lcom/sunia/HTREnginev2/dre;-><init>()V

    const-string v5, "DSUM"

    const/4 v6, 0x3

    invoke-direct {v3, v5, v6, v4}, Lorg/apache/poi/ss/formula/functions/DStarRunner$DStarAlgorithmEnum;-><init>(Ljava/lang/String;ILjava/util/function/Supplier;)V

    sput-object v3, Lorg/apache/poi/ss/formula/functions/DStarRunner$DStarAlgorithmEnum;->DSUM:Lorg/apache/poi/ss/formula/functions/DStarRunner$DStarAlgorithmEnum;

    new-instance v4, Lorg/apache/poi/ss/formula/functions/DStarRunner$DStarAlgorithmEnum;

    new-instance v5, Lcom/sunia/HTREnginev2/ere;

    invoke-direct {v5}, Lcom/sunia/HTREnginev2/ere;-><init>()V

    const-string v6, "DCOUNT"

    const/4 v7, 0x4

    invoke-direct {v4, v6, v7, v5}, Lorg/apache/poi/ss/formula/functions/DStarRunner$DStarAlgorithmEnum;-><init>(Ljava/lang/String;ILjava/util/function/Supplier;)V

    sput-object v4, Lorg/apache/poi/ss/formula/functions/DStarRunner$DStarAlgorithmEnum;->DCOUNT:Lorg/apache/poi/ss/formula/functions/DStarRunner$DStarAlgorithmEnum;

    new-instance v5, Lorg/apache/poi/ss/formula/functions/DStarRunner$DStarAlgorithmEnum;

    new-instance v6, Lcom/sunia/HTREnginev2/fre;

    invoke-direct {v6}, Lcom/sunia/HTREnginev2/fre;-><init>()V

    const-string v7, "DCOUNTA"

    const/4 v8, 0x5

    invoke-direct {v5, v7, v8, v6}, Lorg/apache/poi/ss/formula/functions/DStarRunner$DStarAlgorithmEnum;-><init>(Ljava/lang/String;ILjava/util/function/Supplier;)V

    sput-object v5, Lorg/apache/poi/ss/formula/functions/DStarRunner$DStarAlgorithmEnum;->DCOUNTA:Lorg/apache/poi/ss/formula/functions/DStarRunner$DStarAlgorithmEnum;

    new-instance v6, Lorg/apache/poi/ss/formula/functions/DStarRunner$DStarAlgorithmEnum;

    new-instance v7, Lcom/sunia/HTREnginev2/gre;

    invoke-direct {v7}, Lcom/sunia/HTREnginev2/gre;-><init>()V

    const-string v8, "DAVERAGE"

    const/4 v9, 0x6

    invoke-direct {v6, v8, v9, v7}, Lorg/apache/poi/ss/formula/functions/DStarRunner$DStarAlgorithmEnum;-><init>(Ljava/lang/String;ILjava/util/function/Supplier;)V

    sput-object v6, Lorg/apache/poi/ss/formula/functions/DStarRunner$DStarAlgorithmEnum;->DAVERAGE:Lorg/apache/poi/ss/formula/functions/DStarRunner$DStarAlgorithmEnum;

    new-instance v7, Lorg/apache/poi/ss/formula/functions/DStarRunner$DStarAlgorithmEnum;

    new-instance v8, Lcom/sunia/HTREnginev2/hre;

    invoke-direct {v8}, Lcom/sunia/HTREnginev2/hre;-><init>()V

    const-string v9, "DSTDEV"

    const/4 v10, 0x7

    invoke-direct {v7, v9, v10, v8}, Lorg/apache/poi/ss/formula/functions/DStarRunner$DStarAlgorithmEnum;-><init>(Ljava/lang/String;ILjava/util/function/Supplier;)V

    sput-object v7, Lorg/apache/poi/ss/formula/functions/DStarRunner$DStarAlgorithmEnum;->DSTDEV:Lorg/apache/poi/ss/formula/functions/DStarRunner$DStarAlgorithmEnum;

    new-instance v8, Lorg/apache/poi/ss/formula/functions/DStarRunner$DStarAlgorithmEnum;

    new-instance v9, Lcom/sunia/HTREnginev2/xqe;

    invoke-direct {v9}, Lcom/sunia/HTREnginev2/xqe;-><init>()V

    const-string v10, "DSTDEVP"

    const/16 v11, 0x8

    invoke-direct {v8, v10, v11, v9}, Lorg/apache/poi/ss/formula/functions/DStarRunner$DStarAlgorithmEnum;-><init>(Ljava/lang/String;ILjava/util/function/Supplier;)V

    sput-object v8, Lorg/apache/poi/ss/formula/functions/DStarRunner$DStarAlgorithmEnum;->DSTDEVP:Lorg/apache/poi/ss/formula/functions/DStarRunner$DStarAlgorithmEnum;

    new-instance v9, Lorg/apache/poi/ss/formula/functions/DStarRunner$DStarAlgorithmEnum;

    new-instance v10, Lcom/sunia/HTREnginev2/yqe;

    invoke-direct {v10}, Lcom/sunia/HTREnginev2/yqe;-><init>()V

    const-string v11, "DVAR"

    const/16 v12, 0x9

    invoke-direct {v9, v11, v12, v10}, Lorg/apache/poi/ss/formula/functions/DStarRunner$DStarAlgorithmEnum;-><init>(Ljava/lang/String;ILjava/util/function/Supplier;)V

    sput-object v9, Lorg/apache/poi/ss/formula/functions/DStarRunner$DStarAlgorithmEnum;->DVAR:Lorg/apache/poi/ss/formula/functions/DStarRunner$DStarAlgorithmEnum;

    new-instance v10, Lorg/apache/poi/ss/formula/functions/DStarRunner$DStarAlgorithmEnum;

    new-instance v11, Lcom/sunia/HTREnginev2/zqe;

    invoke-direct {v11}, Lcom/sunia/HTREnginev2/zqe;-><init>()V

    const-string v12, "DVARP"

    const/16 v13, 0xa

    invoke-direct {v10, v12, v13, v11}, Lorg/apache/poi/ss/formula/functions/DStarRunner$DStarAlgorithmEnum;-><init>(Ljava/lang/String;ILjava/util/function/Supplier;)V

    sput-object v10, Lorg/apache/poi/ss/formula/functions/DStarRunner$DStarAlgorithmEnum;->DVARP:Lorg/apache/poi/ss/formula/functions/DStarRunner$DStarAlgorithmEnum;

    new-instance v11, Lorg/apache/poi/ss/formula/functions/DStarRunner$DStarAlgorithmEnum;

    new-instance v12, Lcom/sunia/HTREnginev2/are;

    invoke-direct {v12}, Lcom/sunia/HTREnginev2/are;-><init>()V

    const-string v13, "DPRODUCT"

    const/16 v14, 0xb

    invoke-direct {v11, v13, v14, v12}, Lorg/apache/poi/ss/formula/functions/DStarRunner$DStarAlgorithmEnum;-><init>(Ljava/lang/String;ILjava/util/function/Supplier;)V

    sput-object v11, Lorg/apache/poi/ss/formula/functions/DStarRunner$DStarAlgorithmEnum;->DPRODUCT:Lorg/apache/poi/ss/formula/functions/DStarRunner$DStarAlgorithmEnum;

    filled-new-array/range {v0 .. v11}, [Lorg/apache/poi/ss/formula/functions/DStarRunner$DStarAlgorithmEnum;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ss/formula/functions/DStarRunner$DStarAlgorithmEnum;->$VALUES:[Lorg/apache/poi/ss/formula/functions/DStarRunner$DStarAlgorithmEnum;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/util/function/Supplier;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "Lorg/apache/poi/ss/formula/functions/IDStarAlgorithm;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lorg/apache/poi/ss/formula/functions/DStarRunner$DStarAlgorithmEnum;->implSupplier:Ljava/util/function/Supplier;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/poi/ss/formula/functions/DStarRunner$DStarAlgorithmEnum;
    .locals 1

    const-class v0, Lorg/apache/poi/ss/formula/functions/DStarRunner$DStarAlgorithmEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/ss/formula/functions/DStarRunner$DStarAlgorithmEnum;

    return-object p0
.end method

.method public static values()[Lorg/apache/poi/ss/formula/functions/DStarRunner$DStarAlgorithmEnum;
    .locals 1

    sget-object v0, Lorg/apache/poi/ss/formula/functions/DStarRunner$DStarAlgorithmEnum;->$VALUES:[Lorg/apache/poi/ss/formula/functions/DStarRunner$DStarAlgorithmEnum;

    invoke-virtual {v0}, [Lorg/apache/poi/ss/formula/functions/DStarRunner$DStarAlgorithmEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/ss/formula/functions/DStarRunner$DStarAlgorithmEnum;

    return-object v0
.end method


# virtual methods
.method public newInstance()Lorg/apache/poi/ss/formula/functions/IDStarAlgorithm;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/ss/formula/functions/DStarRunner$DStarAlgorithmEnum;->implSupplier:Ljava/util/function/Supplier;

    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/ss/formula/functions/IDStarAlgorithm;

    return-object p0
.end method
