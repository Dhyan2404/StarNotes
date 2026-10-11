.class public final Lcom/couchbase/lite/internal/core/C4ReplicatorStatus$ActivityLevel;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/couchbase/lite/internal/core/C4ReplicatorStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ActivityLevel"
.end annotation


# static fields
.field public static final BUSY:I = 0x4

.field public static final CONNECTING:I = 0x2

.field public static final IDLE:I = 0x3

.field public static final OFFLINE:I = 0x1

.field public static final STOPPED:I


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
