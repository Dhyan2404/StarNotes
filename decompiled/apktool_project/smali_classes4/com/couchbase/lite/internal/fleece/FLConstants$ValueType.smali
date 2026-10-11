.class public final Lcom/couchbase/lite/internal/fleece/FLConstants$ValueType;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/couchbase/lite/internal/fleece/FLConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ValueType"
.end annotation


# static fields
.field public static final ARRAY:I = 0x5

.field public static final BOOLEAN:I = 0x1

.field public static final DATA:I = 0x4

.field public static final DICT:I = 0x6

.field public static final NULL:I = 0x0

.field public static final NUMBER:I = 0x2

.field public static final STRING:I = 0x3

.field public static final UNDEFINED:I = -0x1


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
