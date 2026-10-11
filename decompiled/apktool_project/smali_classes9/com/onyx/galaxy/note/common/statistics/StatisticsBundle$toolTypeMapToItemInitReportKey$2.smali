.class final Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle$toolTypeMapToItemInitReportKey$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/util/HashMap<",
        "Lcom/onyx/galaxy/note/editor/data/ShapeToolType;",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u001e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001j\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0003`\u0004H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "Ljava/util/HashMap;",
        "Lcom/onyx/galaxy/note/editor/data/ShapeToolType;",
        "",
        "Lkotlin/collections/HashMap;",
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
.field public static final INSTANCE:Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle$toolTypeMapToItemInitReportKey$2;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle$toolTypeMapToItemInitReportKey$2;

    invoke-direct {v0}, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle$toolTypeMapToItemInitReportKey$2;-><init>()V

    sput-object v0, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle$toolTypeMapToItemInitReportKey$2;->INSTANCE:Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle$toolTypeMapToItemInitReportKey$2;

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
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle$toolTypeMapToItemInitReportKey$2;->invoke()Ljava/util/HashMap;

    move-result-object p0

    return-object p0
.end method

.method public final invoke()Ljava/util/HashMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Lcom/onyx/galaxy/note/editor/data/ShapeToolType;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    sget-object p0, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;->INSTANCE:Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;

    invoke-static {p0}, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;->access$generateToolTypeMapToItemInitReportKey(Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;)Ljava/util/HashMap;

    move-result-object p0

    return-object p0
.end method
