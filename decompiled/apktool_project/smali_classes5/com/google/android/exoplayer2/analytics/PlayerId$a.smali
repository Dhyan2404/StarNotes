.class public final Lcom/google/android/exoplayer2/analytics/PlayerId$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x1f
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/analytics/PlayerId;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final b:Lcom/google/android/exoplayer2/analytics/PlayerId$a;


# instance fields
.field public final a:Landroid/media/metrics/LogSessionId;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/exoplayer2/analytics/PlayerId$a;

    invoke-static {}, Lcom/sunia/HTREnginev2/c1g;->a()Landroid/media/metrics/LogSessionId;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/analytics/PlayerId$a;-><init>(Landroid/media/metrics/LogSessionId;)V

    sput-object v0, Lcom/google/android/exoplayer2/analytics/PlayerId$a;->b:Lcom/google/android/exoplayer2/analytics/PlayerId$a;

    return-void
.end method

.method public constructor <init>(Landroid/media/metrics/LogSessionId;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/analytics/PlayerId$a;->a:Landroid/media/metrics/LogSessionId;

    return-void
.end method
