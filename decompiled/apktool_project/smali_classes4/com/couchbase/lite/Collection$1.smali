.class synthetic Lcom/couchbase/lite/Collection$1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/couchbase/lite/Collection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$couchbase$lite$ConcurrencyControl:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/couchbase/lite/ConcurrencyControl;->values()[Lcom/couchbase/lite/ConcurrencyControl;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/couchbase/lite/Collection$1;->$SwitchMap$com$couchbase$lite$ConcurrencyControl:[I

    :try_start_0
    sget-object v1, Lcom/couchbase/lite/ConcurrencyControl;->FAIL_ON_CONFLICT:Lcom/couchbase/lite/ConcurrencyControl;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/couchbase/lite/Collection$1;->$SwitchMap$com$couchbase$lite$ConcurrencyControl:[I

    sget-object v1, Lcom/couchbase/lite/ConcurrencyControl;->LAST_WRITE_WINS:Lcom/couchbase/lite/ConcurrencyControl;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
