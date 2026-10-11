.class public Lcom/couchbase/lite/internal/fleece/MContext;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final NULL:Lcom/couchbase/lite/internal/fleece/MContext;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/couchbase/lite/internal/fleece/MContext;

    invoke-direct {v0}, Lcom/couchbase/lite/internal/fleece/MContext;-><init>()V

    sput-object v0, Lcom/couchbase/lite/internal/fleece/MContext;->NULL:Lcom/couchbase/lite/internal/fleece/MContext;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDatabase()Lcom/couchbase/lite/BaseDatabase;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public isClosed()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
