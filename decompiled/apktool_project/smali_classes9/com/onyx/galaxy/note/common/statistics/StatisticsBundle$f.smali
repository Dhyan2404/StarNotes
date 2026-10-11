.class public final Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;->l(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/rxjava3/functions/Consumer;"
    }
.end annotation


# static fields
.field public static final e:Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle$f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle$f<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle$f;

    invoke-direct {v0}, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle$f;-><init>()V

    sput-object v0, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle$f;->e:Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle$f;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/galaxy/note/common/data/AppConfigManager;)V
    .locals 0
    .param p1    # Lcom/onyx/galaxy/note/common/data/AppConfigManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "it"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;->INSTANCE:Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;

    sget-object p0, Lcom/onyx/galaxy/note/common/data/AppConfigManager;->INSTANCE:Lcom/onyx/galaxy/note/common/data/AppConfigManager;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/data/AppConfigManager;->isDefaultStatistEnable()Z

    move-result p0

    invoke-static {p0}, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;->access$setEnableReport$p(Z)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/onyx/galaxy/note/common/data/AppConfigManager;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle$f;->a(Lcom/onyx/galaxy/note/common/data/AppConfigManager;)V

    return-void
.end method
