.class public final Lcom/couchbase/lite/Defaults$LogFile;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/couchbase/lite/Defaults;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LogFile"
.end annotation


# static fields
.field public static final MAX_ROTATE_COUNT:I = 0x1

.field public static final MAX_SIZE:J = 0x80000L

.field public static final USE_PLAINTEXT:Z

.field public static final USE_PLAIN_TEXT:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
