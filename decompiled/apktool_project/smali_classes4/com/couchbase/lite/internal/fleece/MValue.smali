.class public Lcom/couchbase/lite/internal/fleece/MValue;
.super Lcom/couchbase/lite/MValueConverter;
.source "SourceFile"

# interfaces
.implements Lcom/couchbase/lite/internal/fleece/Encodable;


# static fields
.field static final EMPTY:Lcom/couchbase/lite/internal/fleece/MValue;


# instance fields
.field private flValue:Lcom/couchbase/lite/internal/fleece/FLValue;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private value:Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/couchbase/lite/internal/fleece/MValue$1;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lcom/couchbase/lite/internal/fleece/MValue$1;-><init>(Ljava/lang/Object;Lcom/couchbase/lite/internal/fleece/FLValue;)V

    sput-object v0, Lcom/couchbase/lite/internal/fleece/MValue;->EMPTY:Lcom/couchbase/lite/internal/fleece/MValue;

    return-void
.end method

.method public constructor <init>(Lcom/couchbase/lite/internal/fleece/FLValue;)V
    .locals 1
    .param p1    # Lcom/couchbase/lite/internal/fleece/FLValue;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, v0, p1}, Lcom/couchbase/lite/internal/fleece/MValue;-><init>(Ljava/lang/Object;Lcom/couchbase/lite/internal/fleece/FLValue;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/couchbase/lite/internal/fleece/MValue;-><init>(Ljava/lang/Object;Lcom/couchbase/lite/internal/fleece/FLValue;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;Lcom/couchbase/lite/internal/fleece/FLValue;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/couchbase/lite/internal/fleece/FLValue;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 4
    invoke-direct {p0}, Lcom/couchbase/lite/MValueConverter;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/couchbase/lite/internal/fleece/MValue;->value:Ljava/lang/Object;

    .line 6
    iput-object p2, p0, Lcom/couchbase/lite/internal/fleece/MValue;->flValue:Lcom/couchbase/lite/internal/fleece/FLValue;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Lcom/couchbase/lite/internal/fleece/FLValue;Lcom/couchbase/lite/internal/fleece/MValue$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/couchbase/lite/internal/fleece/MValue;-><init>(Ljava/lang/Object;Lcom/couchbase/lite/internal/fleece/FLValue;)V

    return-void
.end method


# virtual methods
.method public asNative(Lcom/couchbase/lite/internal/fleece/MCollection;)Ljava/lang/Object;
    .locals 2
    .param p1    # Lcom/couchbase/lite/internal/fleece/MCollection;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/couchbase/lite/internal/fleece/MValue;->value:Ljava/lang/Object;

    if-nez v0, :cond_2

    iget-object v1, p0, Lcom/couchbase/lite/internal/fleece/MValue;->flValue:Lcom/couchbase/lite/internal/fleece/FLValue;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p0, p1}, Lcom/couchbase/lite/MValueConverter;->toNative(Lcom/couchbase/lite/internal/fleece/MValue;Lcom/couchbase/lite/internal/fleece/MCollection;)Lcom/couchbase/lite/MValueConverter$NativeValue;

    move-result-object p1

    iget-boolean v0, p1, Lcom/couchbase/lite/MValueConverter$NativeValue;->cacheIt:Z

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/couchbase/lite/MValueConverter$NativeValue;->nVal:Ljava/lang/Object;

    iput-object v0, p0, Lcom/couchbase/lite/internal/fleece/MValue;->value:Ljava/lang/Object;

    :cond_1
    iget-object p0, p1, Lcom/couchbase/lite/MValueConverter$NativeValue;->nVal:Ljava/lang/Object;

    return-object p0

    :cond_2
    :goto_0
    return-object v0
.end method

.method public encodeTo(Lcom/couchbase/lite/internal/fleece/FLEncoder;)V
    .locals 1
    .param p1    # Lcom/couchbase/lite/internal/fleece/FLEncoder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/couchbase/lite/internal/fleece/MValue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/couchbase/lite/internal/fleece/MValue;->flValue:Lcom/couchbase/lite/internal/fleece/FLValue;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Lcom/couchbase/lite/internal/fleece/FLEncoder;->writeValue(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/couchbase/lite/internal/fleece/MValue;->value:Ljava/lang/Object;

    if-eqz p0, :cond_1

    invoke-virtual {p1, p0}, Lcom/couchbase/lite/internal/fleece/FLEncoder;->writeValue(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/couchbase/lite/internal/fleece/FLEncoder;->writeNull()Z

    :goto_0
    return-void

    :cond_2
    new-instance p0, Lcom/couchbase/lite/CouchbaseLiteError;

    const-string p1, "MValue is empty."

    invoke-direct {p0, p1}, Lcom/couchbase/lite/CouchbaseLiteError;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getValue()Lcom/couchbase/lite/internal/fleece/FLValue;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/couchbase/lite/internal/fleece/MValue;->flValue:Lcom/couchbase/lite/internal/fleece/FLValue;

    return-object p0
.end method

.method public isEmpty()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isMutated()Z
    .locals 0

    iget-object p0, p0, Lcom/couchbase/lite/internal/fleece/MValue;->flValue:Lcom/couchbase/lite/internal/fleece/FLValue;

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public mutate()V
    .locals 2

    iget-object v0, p0, Lcom/couchbase/lite/internal/fleece/MValue;->value:Ljava/lang/Object;

    const-string v1, "Native object"

    invoke-static {v0, v1}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/couchbase/lite/internal/fleece/MValue;->flValue:Lcom/couchbase/lite/internal/fleece/FLValue;

    return-void
.end method
