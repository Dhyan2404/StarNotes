.class public final Lio/opencensus/tags/unsafe/ContextUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/opencensus/tags/unsafe/ContextUtils$b;
    }
.end annotation


# static fields
.field public static final a:Lio/opencensus/tags/TagContext;

.field public static final b:Lio/grpc/Context$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/Context$Key<",
            "Lio/opencensus/tags/TagContext;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lio/opencensus/tags/unsafe/ContextUtils$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/opencensus/tags/unsafe/ContextUtils$b;-><init>(Lio/opencensus/tags/unsafe/ContextUtils$a;)V

    sput-object v0, Lio/opencensus/tags/unsafe/ContextUtils;->a:Lio/opencensus/tags/TagContext;

    const-string v1, "opencensus-tag-context-key"

    invoke-static {v1, v0}, Lio/grpc/Context;->keyWithDefault(Ljava/lang/String;Ljava/lang/Object;)Lio/grpc/Context$Key;

    move-result-object v0

    sput-object v0, Lio/opencensus/tags/unsafe/ContextUtils;->b:Lio/grpc/Context$Key;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getValue(Lio/grpc/Context;)Lio/opencensus/tags/TagContext;
    .locals 1

    sget-object v0, Lio/opencensus/tags/unsafe/ContextUtils;->b:Lio/grpc/Context$Key;

    invoke-virtual {v0, p0}, Lio/grpc/Context$Key;->get(Lio/grpc/Context;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/opencensus/tags/TagContext;

    if-nez p0, :cond_0

    sget-object p0, Lio/opencensus/tags/unsafe/ContextUtils;->a:Lio/opencensus/tags/TagContext;

    :cond_0
    return-object p0
.end method

.method public static withValue(Lio/grpc/Context;Lio/opencensus/tags/TagContext;)Lio/grpc/Context;
    .locals 1
    .param p1    # Lio/opencensus/tags/TagContext;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p0, v0}, Lio/opencensus/internal/Utils;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/Context;

    sget-object v0, Lio/opencensus/tags/unsafe/ContextUtils;->b:Lio/grpc/Context$Key;

    invoke-virtual {p0, v0, p1}, Lio/grpc/Context;->withValue(Lio/grpc/Context$Key;Ljava/lang/Object;)Lio/grpc/Context;

    move-result-object p0

    return-object p0
.end method
