.class public final Lcom/couchbase/lite/internal/utils/MathUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final RANDOM:Ljava/lang/ThreadLocal;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/util/Random;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/couchbase/lite/internal/utils/MathUtils$1;

    invoke-direct {v0}, Lcom/couchbase/lite/internal/utils/MathUtils$1;-><init>()V

    sput-object v0, Lcom/couchbase/lite/internal/utils/MathUtils;->RANDOM:Ljava/lang/ThreadLocal;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
