.class public final Lcom/couchbase/lite/Defaults$Replicator;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/couchbase/lite/Defaults;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Replicator"
.end annotation


# static fields
.field public static final ACCEPT_PARENT_COOKIES:Z = false

.field public static final CONTINUOUS:Z = false

.field public static final ENABLE_AUTO_PURGE:Z = true

.field public static final HEARTBEAT:I = 0x12c

.field public static final MAX_ATTEMPTS_CONTINUOUS:I = 0x7fffffff

.field public static final MAX_ATTEMPTS_SINGLE_SHOT:I = 0xa

.field public static final MAX_ATTEMPTS_WAIT_TIME:I = 0x12c

.field public static final MAX_ATTEMPT_WAIT_TIME:I = 0x12c
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SELF_SIGNED_CERTIFICATE_ONLY:Z

.field public static final TYPE:Lcom/couchbase/lite/ReplicatorType;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/couchbase/lite/ReplicatorType;->PUSH_AND_PULL:Lcom/couchbase/lite/ReplicatorType;

    sput-object v0, Lcom/couchbase/lite/Defaults$Replicator;->TYPE:Lcom/couchbase/lite/ReplicatorType;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
