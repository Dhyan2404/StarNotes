.class public final Lcom/onyx/android/sdk/statistics/GoogleStatistics_Factory$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/android/sdk/statistics/GoogleStatistics_Factory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final a:Lcom/onyx/android/sdk/statistics/GoogleStatistics_Factory;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/android/sdk/statistics/GoogleStatistics_Factory;

    invoke-direct {v0}, Lcom/onyx/android/sdk/statistics/GoogleStatistics_Factory;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/statistics/GoogleStatistics_Factory$a;->a:Lcom/onyx/android/sdk/statistics/GoogleStatistics_Factory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()Lcom/onyx/android/sdk/statistics/GoogleStatistics_Factory;
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/statistics/GoogleStatistics_Factory$a;->a:Lcom/onyx/android/sdk/statistics/GoogleStatistics_Factory;

    return-object v0
.end method
