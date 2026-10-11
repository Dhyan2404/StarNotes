.class public final Lcom/couchbase/lite/Defaults$FileLogSink;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/couchbase/lite/Defaults;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FileLogSink"
.end annotation


# static fields
.field public static final MAX_KEPT_FILES:I = 0x2

.field public static final MAX_SIZE:J = 0x80000L

.field public static final USE_PLAINTEXT:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
