.class public final Lcom/couchbase/lite/internal/core/C4Constants$RevisionFlags;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/couchbase/lite/internal/core/C4Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RevisionFlags"
.end annotation


# static fields
.field public static final CLOSED:I = 0x40

.field public static final DELETED:I = 0x1

.field public static final HAS_ATTACHMENTS:I = 0x8

.field public static final IS_CONFLICT:I = 0x20

.field public static final KEEP_BODY:I = 0x10

.field public static final LEAF:I = 0x2

.field public static final NEW:I = 0x4

.field public static final PURGED:I = 0x80


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
