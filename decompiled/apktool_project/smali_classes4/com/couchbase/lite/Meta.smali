.class public final Lcom/couchbase/lite/Meta;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final deleted:Lcom/couchbase/lite/MetaExpression;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public static final expiration:Lcom/couchbase/lite/MetaExpression;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public static final id:Lcom/couchbase/lite/MetaExpression;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public static final revisionID:Lcom/couchbase/lite/MetaExpression;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public static final sequence:Lcom/couchbase/lite/MetaExpression;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/couchbase/lite/MetaExpression;

    const-string v1, "_id"

    invoke-direct {v0, v1}, Lcom/couchbase/lite/MetaExpression;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/couchbase/lite/Meta;->id:Lcom/couchbase/lite/MetaExpression;

    new-instance v0, Lcom/couchbase/lite/MetaExpression;

    const-string v1, "_revisionID"

    invoke-direct {v0, v1}, Lcom/couchbase/lite/MetaExpression;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/couchbase/lite/Meta;->revisionID:Lcom/couchbase/lite/MetaExpression;

    new-instance v0, Lcom/couchbase/lite/MetaExpression;

    const-string v1, "_sequence"

    invoke-direct {v0, v1}, Lcom/couchbase/lite/MetaExpression;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/couchbase/lite/Meta;->sequence:Lcom/couchbase/lite/MetaExpression;

    new-instance v0, Lcom/couchbase/lite/MetaExpression;

    const-string v1, "_deleted"

    invoke-direct {v0, v1}, Lcom/couchbase/lite/MetaExpression;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/couchbase/lite/Meta;->deleted:Lcom/couchbase/lite/MetaExpression;

    new-instance v0, Lcom/couchbase/lite/MetaExpression;

    const-string v1, "_expiration"

    invoke-direct {v0, v1}, Lcom/couchbase/lite/MetaExpression;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/couchbase/lite/Meta;->expiration:Lcom/couchbase/lite/MetaExpression;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
