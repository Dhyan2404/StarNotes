.class public abstract Lio/opencensus/tags/TagValue;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Ljavax/annotation/concurrent/Immutable;
.end annotation


# static fields
.field public static final MAX_LENGTH:I = 0xff


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xff

    if-gt v0, v1, :cond_0

    invoke-static {p0}, Lio/opencensus/internal/StringUtils;->isPrintableString(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static create(Ljava/lang/String;)Lio/opencensus/tags/TagValue;
    .locals 3

    invoke-static {p0}, Lio/opencensus/tags/TagValue;->a(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "Invalid TagValue: %s"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lio/opencensus/internal/Utils;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lcom/sunia/HTREnginev2/jk;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/jk;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public abstract asString()Ljava/lang/String;
.end method
