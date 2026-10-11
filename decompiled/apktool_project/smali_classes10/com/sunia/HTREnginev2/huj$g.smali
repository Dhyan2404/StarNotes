.class public final Lcom/sunia/HTREnginev2/huj$g;
.super Lio/opencensus/tags/Tagger;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sunia/HTREnginev2/huj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "g"
.end annotation

.annotation build Ljavax/annotation/concurrent/Immutable;
.end annotation


# static fields
.field public static final a:Lio/opencensus/tags/Tagger;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sunia/HTREnginev2/huj$g;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/huj$g;-><init>()V

    sput-object v0, Lcom/sunia/HTREnginev2/huj$g;->a:Lio/opencensus/tags/Tagger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lio/opencensus/tags/Tagger;-><init>()V

    return-void
.end method


# virtual methods
.method public currentBuilder()Lio/opencensus/tags/TagContextBuilder;
    .locals 0

    invoke-static {}, Lcom/sunia/HTREnginev2/huj;->c()Lio/opencensus/tags/TagContextBuilder;

    move-result-object p0

    return-object p0
.end method

.method public empty()Lio/opencensus/tags/TagContext;
    .locals 0

    invoke-static {}, Lcom/sunia/HTREnginev2/huj;->a()Lio/opencensus/tags/TagContext;

    move-result-object p0

    return-object p0
.end method

.method public emptyBuilder()Lio/opencensus/tags/TagContextBuilder;
    .locals 0

    invoke-static {}, Lcom/sunia/HTREnginev2/huj;->c()Lio/opencensus/tags/TagContextBuilder;

    move-result-object p0

    return-object p0
.end method

.method public getCurrentTagContext()Lio/opencensus/tags/TagContext;
    .locals 0

    invoke-static {}, Lcom/sunia/HTREnginev2/huj;->a()Lio/opencensus/tags/TagContext;

    move-result-object p0

    return-object p0
.end method

.method public toBuilder(Lio/opencensus/tags/TagContext;)Lio/opencensus/tags/TagContextBuilder;
    .locals 0

    const-string p0, "tags"

    invoke-static {p1, p0}, Lio/opencensus/internal/Utils;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/sunia/HTREnginev2/huj;->c()Lio/opencensus/tags/TagContextBuilder;

    move-result-object p0

    return-object p0
.end method

.method public withTagContext(Lio/opencensus/tags/TagContext;)Lio/opencensus/common/Scope;
    .locals 0

    const-string p0, "tags"

    invoke-static {p1, p0}, Lio/opencensus/internal/Utils;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lio/opencensus/internal/NoopScope;->getInstance()Lio/opencensus/common/Scope;

    move-result-object p0

    return-object p0
.end method
