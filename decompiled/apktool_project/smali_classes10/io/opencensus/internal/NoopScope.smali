.class public final Lio/opencensus/internal/NoopScope;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/opencensus/common/Scope;


# static fields
.field public static final e:Lio/opencensus/common/Scope;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/opencensus/internal/NoopScope;

    invoke-direct {v0}, Lio/opencensus/internal/NoopScope;-><init>()V

    sput-object v0, Lio/opencensus/internal/NoopScope;->e:Lio/opencensus/common/Scope;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lio/opencensus/common/Scope;
    .locals 1

    sget-object v0, Lio/opencensus/internal/NoopScope;->e:Lio/opencensus/common/Scope;

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 0

    return-void
.end method
