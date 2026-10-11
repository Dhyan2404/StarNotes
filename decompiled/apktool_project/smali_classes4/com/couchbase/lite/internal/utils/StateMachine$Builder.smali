.class public Lcom/couchbase/lite/internal/utils/StateMachine$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/couchbase/lite/internal/utils/StateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Enum<",
        "TS;>;>",
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
            "TS;"
        }
    .end annotation
.end field

.field private final initialState:Ljava/lang/Enum;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TS;"
        }
    .end annotation
.end field

.field private final transitions:Ljava/util/EnumMap;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap<",
            "TS;",
            "Ljava/util/EnumSet<",
            "TS;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;Lcom/couchbase/lite/LogDomain;Ljava/lang/Enum;Ljava/lang/Enum;)V
    .locals 1
    .param p1    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/couchbase/lite/LogDomain;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Enum;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Enum;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TS;>;",
            "Lcom/couchbase/lite/LogDomain;",
            "TS;TS;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/EnumMap;

    invoke-direct {v0, p1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/couchbase/lite/internal/utils/StateMachine$Builder;->transitions:Ljava/util/EnumMap;

    iput-object p2, p0, Lcom/couchbase/lite/internal/utils/StateMachine$Builder;->domain:Lcom/couchbase/lite/LogDomain;

    iput-object p3, p0, Lcom/couchbase/lite/internal/utils/StateMachine$Builder;->initialState:Ljava/lang/Enum;

    iput-object p4, p0, Lcom/couchbase/lite/internal/utils/StateMachine$Builder;->failureState:Ljava/lang/Enum;

    return-void
.end method


# virtual methods
.method public final varargs addTransition(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Enum;)Lcom/couchbase/lite/internal/utils/StateMachine$Builder;
    .locals 1
    .param p1    # Ljava/lang/Enum;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Enum;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # [Ljava/lang/Enum;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;TS;[TS;)",
            "Lcom/couchbase/lite/internal/utils/StateMachine$Builder<",
            "TS;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    iget-object v0, p0, Lcom/couchbase/lite/internal/utils/StateMachine$Builder;->failureState:Ljava/lang/Enum;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/couchbase/lite/internal/utils/StateMachine$Builder;->transitions:Ljava/util/EnumMap;

    invoke-static {p2, p3}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;[Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "transitions from the failure state are illegal"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public build()Lcom/couchbase/lite/internal/utils/StateMachine;
    .locals 7
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/couchbase/lite/internal/utils/StateMachine<",
            "TS;>;"
        }
    .end annotation

    new-instance v6, Lcom/couchbase/lite/internal/utils/StateMachine;

    iget-object v1, p0, Lcom/couchbase/lite/internal/utils/StateMachine$Builder;->domain:Lcom/couchbase/lite/LogDomain;

    iget-object v2, p0, Lcom/couchbase/lite/internal/utils/StateMachine$Builder;->initialState:Ljava/lang/Enum;

    iget-object v3, p0, Lcom/couchbase/lite/internal/utils/StateMachine$Builder;->failureState:Ljava/lang/Enum;

    iget-object v4, p0, Lcom/couchbase/lite/internal/utils/StateMachine$Builder;->transitions:Ljava/util/EnumMap;

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/couchbase/lite/internal/utils/StateMachine;-><init>(Lcom/couchbase/lite/LogDomain;Ljava/lang/Enum;Ljava/lang/Enum;Ljava/util/EnumMap;Lcom/couchbase/lite/internal/utils/StateMachine$1;)V

    return-object v6
.end method
