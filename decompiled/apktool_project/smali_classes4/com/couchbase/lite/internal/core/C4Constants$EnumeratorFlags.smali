.class public final Lcom/couchbase/lite/internal/core/C4Constants$EnumeratorFlags;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/couchbase/lite/internal/core/C4Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EnumeratorFlags"
.end annotation


# static fields
.field public static final DEFAULT:I = 0x30

.field public static final DESCENDING:I = 0x1

.field public static final INCLUDE_BODIES:I = 0x20

.field public static final INCLUDE_DELETED:I = 0x8

.field public static final INCLUDE_NON_CONFLICTED:I = 0x10

.field public static final INCLUDE_REV_HISTORY:I = 0x40

.field public static final UNSORTED:I = 0x2


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
