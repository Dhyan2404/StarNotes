.class final Lcom/onyx/galaxy/note/account/data/AreaCodeConstant$phoneLengthByAreaCodeMap$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/galaxy/note/account/data/AreaCodeConstant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/util/Map<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        ">;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\u0010\u0008\n\u0000\u0010\u0000\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "",
        "",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/onyx/galaxy/note/account/data/AreaCodeConstant$phoneLengthByAreaCodeMap$2;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/galaxy/note/account/data/AreaCodeConstant$phoneLengthByAreaCodeMap$2;

    invoke-direct {v0}, Lcom/onyx/galaxy/note/account/data/AreaCodeConstant$phoneLengthByAreaCodeMap$2;-><init>()V

    sput-object v0, Lcom/onyx/galaxy/note/account/data/AreaCodeConstant$phoneLengthByAreaCodeMap$2;->INSTANCE:Lcom/onyx/galaxy/note/account/data/AreaCodeConstant$phoneLengthByAreaCodeMap$2;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/account/data/AreaCodeConstant$phoneLengthByAreaCodeMap$2;->invoke()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public final invoke()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    new-instance p0, Ljava/util/LinkedHashMap;

    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 3
    sget-object v0, Lcom/onyx/galaxy/note/account/data/AreaCodeConstant;->INSTANCE:Lcom/onyx/galaxy/note/account/data/AreaCodeConstant;

    sget v1, Lcom/onyx/galaxy/note/R$integer;->area_code_china_mainland:I

    invoke-static {v0, v1}, Lcom/onyx/galaxy/note/account/data/AreaCodeConstant;->access$getAreaCode(Lcom/onyx/galaxy/note/account/data/AreaCodeConstant;I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v3, Lcom/onyx/galaxy/note/R$integer;->phone_length_limit_china_mainland:I

    invoke-virtual {v2, v3}, Lcom/onyx/android/sdk/base/utils/ResManager;->getInteger(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    sget v1, Lcom/onyx/galaxy/note/R$integer;->area_code_hong_kong:I

    invoke-static {v0, v1}, Lcom/onyx/galaxy/note/account/data/AreaCodeConstant;->access$getAreaCode(Lcom/onyx/galaxy/note/account/data/AreaCodeConstant;I)Ljava/lang/String;

    move-result-object v1

    sget v3, Lcom/onyx/galaxy/note/R$integer;->phone_length_limit_hong_kong:I

    invoke-virtual {v2, v3}, Lcom/onyx/android/sdk/base/utils/ResManager;->getInteger(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    sget v1, Lcom/onyx/galaxy/note/R$integer;->area_code_macao:I

    invoke-static {v0, v1}, Lcom/onyx/galaxy/note/account/data/AreaCodeConstant;->access$getAreaCode(Lcom/onyx/galaxy/note/account/data/AreaCodeConstant;I)Ljava/lang/String;

    move-result-object v1

    sget v3, Lcom/onyx/galaxy/note/R$integer;->phone_length_limit_macao:I

    invoke-virtual {v2, v3}, Lcom/onyx/android/sdk/base/utils/ResManager;->getInteger(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    sget v1, Lcom/onyx/galaxy/note/R$integer;->area_code_taiwan:I

    invoke-static {v0, v1}, Lcom/onyx/galaxy/note/account/data/AreaCodeConstant;->access$getAreaCode(Lcom/onyx/galaxy/note/account/data/AreaCodeConstant;I)Ljava/lang/String;

    move-result-object v1

    sget v3, Lcom/onyx/galaxy/note/R$integer;->phone_length_limit_taiwan:I

    invoke-virtual {v2, v3}, Lcom/onyx/android/sdk/base/utils/ResManager;->getInteger(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    sget v1, Lcom/onyx/galaxy/note/R$integer;->area_code_japan:I

    invoke-static {v0, v1}, Lcom/onyx/galaxy/note/account/data/AreaCodeConstant;->access$getAreaCode(Lcom/onyx/galaxy/note/account/data/AreaCodeConstant;I)Ljava/lang/String;

    move-result-object v1

    sget v3, Lcom/onyx/galaxy/note/R$integer;->phone_length_limit_japan:I

    invoke-virtual {v2, v3}, Lcom/onyx/android/sdk/base/utils/ResManager;->getInteger(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    sget v1, Lcom/onyx/galaxy/note/R$integer;->area_code_korea:I

    invoke-static {v0, v1}, Lcom/onyx/galaxy/note/account/data/AreaCodeConstant;->access$getAreaCode(Lcom/onyx/galaxy/note/account/data/AreaCodeConstant;I)Ljava/lang/String;

    move-result-object v1

    sget v3, Lcom/onyx/galaxy/note/R$integer;->phone_length_limit_korea:I

    invoke-virtual {v2, v3}, Lcom/onyx/android/sdk/base/utils/ResManager;->getInteger(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    sget v1, Lcom/onyx/galaxy/note/R$integer;->area_code_usa_or_canada:I

    invoke-static {v0, v1}, Lcom/onyx/galaxy/note/account/data/AreaCodeConstant;->access$getAreaCode(Lcom/onyx/galaxy/note/account/data/AreaCodeConstant;I)Ljava/lang/String;

    move-result-object v1

    sget v3, Lcom/onyx/galaxy/note/R$integer;->phone_length_limit_usa_or_canada:I

    invoke-virtual {v2, v3}, Lcom/onyx/android/sdk/base/utils/ResManager;->getInteger(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    sget v1, Lcom/onyx/galaxy/note/R$integer;->area_code_mexico:I

    invoke-static {v0, v1}, Lcom/onyx/galaxy/note/account/data/AreaCodeConstant;->access$getAreaCode(Lcom/onyx/galaxy/note/account/data/AreaCodeConstant;I)Ljava/lang/String;

    move-result-object v1

    sget v3, Lcom/onyx/galaxy/note/R$integer;->phone_length_limit_mexico:I

    invoke-virtual {v2, v3}, Lcom/onyx/android/sdk/base/utils/ResManager;->getInteger(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    sget v1, Lcom/onyx/galaxy/note/R$integer;->area_code_brazil:I

    invoke-static {v0, v1}, Lcom/onyx/galaxy/note/account/data/AreaCodeConstant;->access$getAreaCode(Lcom/onyx/galaxy/note/account/data/AreaCodeConstant;I)Ljava/lang/String;

    move-result-object v1

    sget v3, Lcom/onyx/galaxy/note/R$integer;->phone_length_limit_brazil:I

    invoke-virtual {v2, v3}, Lcom/onyx/android/sdk/base/utils/ResManager;->getInteger(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    sget v1, Lcom/onyx/galaxy/note/R$integer;->area_code_germany:I

    invoke-static {v0, v1}, Lcom/onyx/galaxy/note/account/data/AreaCodeConstant;->access$getAreaCode(Lcom/onyx/galaxy/note/account/data/AreaCodeConstant;I)Ljava/lang/String;

    move-result-object v1

    sget v3, Lcom/onyx/galaxy/note/R$integer;->phone_length_limit_germany:I

    invoke-virtual {v2, v3}, Lcom/onyx/android/sdk/base/utils/ResManager;->getInteger(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    sget v1, Lcom/onyx/galaxy/note/R$integer;->area_code_italy:I

    invoke-static {v0, v1}, Lcom/onyx/galaxy/note/account/data/AreaCodeConstant;->access$getAreaCode(Lcom/onyx/galaxy/note/account/data/AreaCodeConstant;I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/onyx/galaxy/note/R$integer;->phone_length_limit_italy:I

    invoke-virtual {v2, v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getInteger(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method
