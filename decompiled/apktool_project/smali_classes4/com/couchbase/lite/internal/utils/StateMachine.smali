.class public final Lcom/couchbase/lite/internal/utils/StateMachine;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/couchbase/lite/internal/utils/StateMachine$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Enum<",
        "TT;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final domain:Lcom/couchbase/lite/LogDomain;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final failureState:Ljava/lang/Enum;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private state:Ljava/lang/Enum;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final transitions:Ljava/util/EnumMap;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap<",
            "TT;",
            "Ljava/util/EnumSet<",
            "TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/couchbase/lite/LogDomain;Ljava/lang/Enum;Ljava/lang/Enum;Ljava/util/EnumMap;)V
    .locals 0
    .param p1    # Lcom/couchbase/lite/LogDomain;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Enum;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Enum;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/util/EnumMap;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/couchbase/lite/LogDomain;",
            "TT;TT;",
            "Ljava/util/EnumMap<",
            "TT;",
            "Ljava/util/EnumSet<",
            "TT;>;>;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/couchbase/lite/internal/utils/StateMachine;->domain:Lcom/couchbase/lite/LogDomain;

    .line 4
    iput-object p2, p0, Lcom/couchbase/lite/internal/utils/StateMachine;->state:Ljava/lang/Enum;

    .line 5
    iput-object p3, p0, Lcom/couchbase/lite/internal/utils/StateMachine;->failureState:Ljava/lang/Enum;

    .line 6
    iput-object p4, p0, Lcom/couchbase/lite/internal/utils/StateMachine;->transitions:Ljava/util/EnumMap;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/couchbase/lite/LogDomain;Ljava/lang/Enum;Ljava/lang/Enum;Ljava/util/EnumMap;Lcom/couchbase/lite/internal/utils/StateMachine$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/couchbase/lite/internal/utils/StateMachine;-><init>(Lcom/couchbase/lite/LogDomain;Ljava/lang/Enum;Ljava/lang/Enum;Ljava/util/EnumMap;)V

    return-void
.end method


# virtual methods
.method public final varargs assertState([Ljava/lang/Enum;)Z
    .locals 5
    .param p1    # [Ljava/lang/Enum;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)Z"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    array-length v0, p1

    const-string v1, "expected states length"

    invoke-static {v0, v1}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertPositive(ILjava/lang/String;)I

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    iget-object v4, p0, Lcom/couchbase/lite/internal/utils/StateMachine;->state:Ljava/lang/Enum;

    if-ne v3, v4, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/couchbase/lite/internal/utils/StateMachine;->state:Ljava/lang/Enum;

    iget-object v2, p0, Lcom/couchbase/lite/internal/utils/StateMachine;->failureState:Ljava/lang/Enum;

    if-eq v0, v2, :cond_2

    iget-object v0, p0, Lcom/couchbase/lite/internal/utils/StateMachine;->domain:Lcom/couchbase/lite/LogDomain;

    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    iget-object v3, p0, Lcom/couchbase/lite/internal/utils/StateMachine;->state:Ljava/lang/Enum;

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p0, v3, p1}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "StateMachine%s: unexpected state %s %s"

    invoke-static {v0, p1, v2, p0}, Lcom/couchbase/lite/internal/logging/Log;->d(Lcom/couchbase/lite/LogDomain;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_2
    return v1
.end method

.method public getCurrentState()Ljava/lang/Enum;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object p0, p0, Lcom/couchbase/lite/internal/utils/StateMachine;->state:Ljava/lang/Enum;

    return-object p0
.end method

.method public setState(Ljava/lang/Enum;)Z
    .locals 4
    .param p1    # Ljava/lang/Enum;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/couchbase/lite/internal/utils/StateMachine;->transitions:Ljava/util/EnumMap;

    iget-object v1, p0, Lcom/couchbase/lite/internal/utils/StateMachine;->state:Ljava/lang/Enum;

    invoke-virtual {v0, v1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/EnumSet;

    iget-object v1, p0, Lcom/couchbase/lite/internal/utils/StateMachine;->failureState:Ljava/lang/Enum;

    if-eq p1, v1, :cond_2

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/couchbase/lite/internal/utils/StateMachine;->state:Ljava/lang/Enum;

    iget-object v2, p0, Lcom/couchbase/lite/internal/utils/StateMachine;->failureState:Ljava/lang/Enum;

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/couchbase/lite/internal/utils/StateMachine;->domain:Lcom/couchbase/lite/LogDomain;

    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    iget-object v3, p0, Lcom/couchbase/lite/internal/utils/StateMachine;->state:Ljava/lang/Enum;

    filled-new-array {p0, v2, v3, p1, v0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "StateMachine%s: no transition: %s => %s %s"

    invoke-static {v1, p1, p0}, Lcom/couchbase/lite/internal/logging/Log;->d(Lcom/couchbase/lite/LogDomain;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/couchbase/lite/internal/utils/StateMachine;->domain:Lcom/couchbase/lite/LogDomain;

    iget-object v1, p0, Lcom/couchbase/lite/internal/utils/StateMachine;->state:Ljava/lang/Enum;

    filled-new-array {p0, v1, p1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "StateMachine%s: transition %s => %s"

    invoke-static {v0, v2, v1}, Lcom/couchbase/lite/internal/logging/Log;->d(Lcom/couchbase/lite/LogDomain;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/couchbase/lite/internal/utils/StateMachine;->state:Ljava/lang/Enum;

    const/4 p0, 0x1

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {p0}, Lcom/couchbase/lite/internal/utils/ClassUtils;->objId(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
