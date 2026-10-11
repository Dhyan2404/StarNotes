.class public final Lcom/couchbase/lite/internal/core/C4Constants$DatabaseFlags;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/couchbase/lite/internal/core/C4Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DatabaseFlags"
.end annotation


# static fields
.field private static final AUTO_COMPACT:I = 0x4

.field static final CREATE:I = 0x1

.field public static final DISABLE_MMAP:I = 0x10

.field public static final DISC_FULL_SYNC:I = 0x80
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final FAKE_CLOCK:I = 0x100
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private static final NON_OBSERVABLE:I = 0x40

.field private static final NO_UPGRADE:I = 0x20

.field static final READ_ONLY:I = 0x2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final VERSION_VECTORS:I = 0x8


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
