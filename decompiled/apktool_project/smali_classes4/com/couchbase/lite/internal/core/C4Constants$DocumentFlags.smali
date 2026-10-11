.class public final Lcom/couchbase/lite/internal/core/C4Constants$DocumentFlags;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/couchbase/lite/internal/core/C4Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DocumentFlags"
.end annotation


# static fields
.field public static final CONFLICTED:I = 0x2

.field public static final DELETED:I = 0x1

.field public static final EXISTS:I = 0x1000

.field public static final HAS_ATTACHMENTS:I = 0x4


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
