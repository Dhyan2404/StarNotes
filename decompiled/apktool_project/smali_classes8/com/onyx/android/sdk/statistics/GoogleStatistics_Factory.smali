.class public final Lcom/onyx/android/sdk/statistics/GoogleStatistics_Factory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation build Ldagger/internal/DaggerGenerated;
.end annotation

.annotation build Ldagger/internal/QualifierMetadata;
.end annotation

.annotation build Ldagger/internal/ScopeMetadata;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/statistics/GoogleStatistics_Factory$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/onyx/android/sdk/statistics/GoogleStatistics;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create()Lcom/onyx/android/sdk/statistics/GoogleStatistics_Factory;
    .locals 1

    invoke-static {}, Lcom/onyx/android/sdk/statistics/GoogleStatistics_Factory$a;->a()Lcom/onyx/android/sdk/statistics/GoogleStatistics_Factory;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance()Lcom/onyx/android/sdk/statistics/GoogleStatistics;
    .locals 1

    new-instance v0, Lcom/onyx/android/sdk/statistics/GoogleStatistics;

    invoke-direct {v0}, Lcom/onyx/android/sdk/statistics/GoogleStatistics;-><init>()V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/onyx/android/sdk/statistics/GoogleStatistics;
    .locals 0

    .line 2
    invoke-static {}, Lcom/onyx/android/sdk/statistics/GoogleStatistics_Factory;->newInstance()Lcom/onyx/android/sdk/statistics/GoogleStatistics;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/statistics/GoogleStatistics_Factory;->get()Lcom/onyx/android/sdk/statistics/GoogleStatistics;

    move-result-object p0

    return-object p0
.end method
