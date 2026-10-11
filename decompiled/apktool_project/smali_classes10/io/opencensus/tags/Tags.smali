.class public final Lio/opencensus/tags/Tags;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/logging/Logger;

.field public static final b:Lio/opencensus/tags/TagsComponent;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lio/opencensus/tags/Tags;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lio/opencensus/tags/Tags;->a:Ljava/util/logging/Logger;

    const-class v0, Lio/opencensus/tags/TagsComponent;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {v0}, Lio/opencensus/tags/Tags;->a(Ljava/lang/ClassLoader;)Lio/opencensus/tags/TagsComponent;

    move-result-object v0

    sput-object v0, Lio/opencensus/tags/Tags;->b:Lio/opencensus/tags/TagsComponent;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/ClassLoader;)Lio/opencensus/tags/TagsComponent;
    .locals 6
    .param p0    # Ljava/lang/ClassLoader;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    const-class v0, Lio/opencensus/tags/TagsComponent;

    const/4 v1, 0x1

    :try_start_0
    const-string v2, "io.opencensus.impl.tags.TagsComponentImpl"

    invoke-static {v2, v1, p0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2, v0}, Lio/opencensus/internal/Provider;->createInstance(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/opencensus/tags/TagsComponent;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v2

    sget-object v3, Lio/opencensus/tags/Tags;->a:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v5, "Couldn\'t load full implementation for TagsComponent, now trying to load lite implementation."

    invoke-virtual {v3, v4, v5, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :try_start_1
    const-string v2, "io.opencensus.impllite.tags.TagsComponentImplLite"

    invoke-static {v2, v1, p0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0, v0}, Lio/opencensus/internal/Provider;->createInstance(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/opencensus/tags/TagsComponent;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p0

    :catch_1
    move-exception p0

    sget-object v0, Lio/opencensus/tags/Tags;->a:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v2, "Couldn\'t load lite implementation for TagsComponent, now using default implementation for TagsComponent."

    invoke-virtual {v0, v1, v2, p0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Lcom/sunia/HTREnginev2/huj;->g()Lio/opencensus/tags/TagsComponent;

    move-result-object p0

    return-object p0
.end method

.method public static getState()Lio/opencensus/tags/TaggingState;
    .locals 1

    sget-object v0, Lio/opencensus/tags/Tags;->b:Lio/opencensus/tags/TagsComponent;

    invoke-virtual {v0}, Lio/opencensus/tags/TagsComponent;->getState()Lio/opencensus/tags/TaggingState;

    move-result-object v0

    return-object v0
.end method

.method public static getTagPropagationComponent()Lio/opencensus/tags/propagation/TagPropagationComponent;
    .locals 1

    sget-object v0, Lio/opencensus/tags/Tags;->b:Lio/opencensus/tags/TagsComponent;

    invoke-virtual {v0}, Lio/opencensus/tags/TagsComponent;->getTagPropagationComponent()Lio/opencensus/tags/propagation/TagPropagationComponent;

    move-result-object v0

    return-object v0
.end method

.method public static getTagger()Lio/opencensus/tags/Tagger;
    .locals 1

    sget-object v0, Lio/opencensus/tags/Tags;->b:Lio/opencensus/tags/TagsComponent;

    invoke-virtual {v0}, Lio/opencensus/tags/TagsComponent;->getTagger()Lio/opencensus/tags/Tagger;

    move-result-object v0

    return-object v0
.end method

.method public static setState(Lio/opencensus/tags/TaggingState;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v0, Lio/opencensus/tags/Tags;->b:Lio/opencensus/tags/TagsComponent;

    invoke-virtual {v0, p0}, Lio/opencensus/tags/TagsComponent;->setState(Lio/opencensus/tags/TaggingState;)V

    return-void
.end method
