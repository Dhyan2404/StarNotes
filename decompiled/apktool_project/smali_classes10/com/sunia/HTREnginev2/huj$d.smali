.class public final Lcom/sunia/HTREnginev2/huj$d;
.super Lio/opencensus/tags/TagContextBuilder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sunia/HTREnginev2/huj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation

.annotation build Ljavax/annotation/concurrent/Immutable;
.end annotation


# static fields
.field public static final c:Lio/opencensus/tags/TagContextBuilder;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sunia/HTREnginev2/huj$d;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/huj$d;-><init>()V

    sput-object v0, Lcom/sunia/HTREnginev2/huj$d;->c:Lio/opencensus/tags/TagContextBuilder;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lio/opencensus/tags/TagContextBuilder;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lio/opencensus/tags/TagContext;
    .locals 0

    invoke-static {}, Lcom/sunia/HTREnginev2/huj;->a()Lio/opencensus/tags/TagContext;

    move-result-object p0

    return-object p0
.end method

.method public buildScoped()Lio/opencensus/common/Scope;
    .locals 0

    invoke-static {}, Lio/opencensus/internal/NoopScope;->getInstance()Lio/opencensus/common/Scope;

    move-result-object p0

    return-object p0
.end method

.method public put(Lio/opencensus/tags/TagKey;Lio/opencensus/tags/TagValue;)Lio/opencensus/tags/TagContextBuilder;
    .locals 1

    const-string v0, "key"

    .line 1
    invoke-static {p1, v0}, Lio/opencensus/internal/Utils;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "value"

    .line 2
    invoke-static {p2, p1}, Lio/opencensus/internal/Utils;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public put(Lio/opencensus/tags/TagKey;Lio/opencensus/tags/TagValue;Lio/opencensus/tags/TagMetadata;)Lio/opencensus/tags/TagContextBuilder;
    .locals 1

    const-string v0, "key"

    .line 3
    invoke-static {p1, v0}, Lio/opencensus/internal/Utils;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "value"

    .line 4
    invoke-static {p2, p1}, Lio/opencensus/internal/Utils;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "tagMetadata"

    .line 5
    invoke-static {p3, p1}, Lio/opencensus/internal/Utils;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public remove(Lio/opencensus/tags/TagKey;)Lio/opencensus/tags/TagContextBuilder;
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lio/opencensus/internal/Utils;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method
