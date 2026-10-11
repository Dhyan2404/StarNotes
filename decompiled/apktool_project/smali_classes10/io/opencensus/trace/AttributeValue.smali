.class public abstract Lio/opencensus/trace/AttributeValue;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/opencensus/trace/AttributeValue$b;,
        Lio/opencensus/trace/AttributeValue$c;,
        Lio/opencensus/trace/AttributeValue$a;,
        Lio/opencensus/trace/AttributeValue$d;
    }
.end annotation

.annotation build Ljavax/annotation/concurrent/Immutable;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static booleanAttributeValue(Z)Lio/opencensus/trace/AttributeValue;
    .locals 0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-static {p0}, Lio/opencensus/trace/AttributeValue$a;->a(Ljava/lang/Boolean;)Lio/opencensus/trace/AttributeValue;

    move-result-object p0

    return-object p0
.end method

.method public static doubleAttributeValue(D)Lio/opencensus/trace/AttributeValue;
    .locals 0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    invoke-static {p0}, Lio/opencensus/trace/AttributeValue$b;->a(Ljava/lang/Double;)Lio/opencensus/trace/AttributeValue;

    move-result-object p0

    return-object p0
.end method

.method public static longAttributeValue(J)Lio/opencensus/trace/AttributeValue;
    .locals 0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-static {p0}, Lio/opencensus/trace/AttributeValue$c;->a(Ljava/lang/Long;)Lio/opencensus/trace/AttributeValue;

    move-result-object p0

    return-object p0
.end method

.method public static stringAttributeValue(Ljava/lang/String;)Lio/opencensus/trace/AttributeValue;
    .locals 0

    invoke-static {p0}, Lio/opencensus/trace/AttributeValue$d;->a(Ljava/lang/String;)Lio/opencensus/trace/AttributeValue;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract match(Lio/opencensus/common/Function;Lio/opencensus/common/Function;Lio/opencensus/common/Function;Lio/opencensus/common/Function;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/opencensus/common/Function<",
            "-",
            "Ljava/lang/String;",
            "TT;>;",
            "Lio/opencensus/common/Function<",
            "-",
            "Ljava/lang/Boolean;",
            "TT;>;",
            "Lio/opencensus/common/Function<",
            "-",
            "Ljava/lang/Long;",
            "TT;>;",
            "Lio/opencensus/common/Function<",
            "Ljava/lang/Object;",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract match(Lio/opencensus/common/Function;Lio/opencensus/common/Function;Lio/opencensus/common/Function;Lio/opencensus/common/Function;Lio/opencensus/common/Function;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/opencensus/common/Function<",
            "-",
            "Ljava/lang/String;",
            "TT;>;",
            "Lio/opencensus/common/Function<",
            "-",
            "Ljava/lang/Boolean;",
            "TT;>;",
            "Lio/opencensus/common/Function<",
            "-",
            "Ljava/lang/Long;",
            "TT;>;",
            "Lio/opencensus/common/Function<",
            "-",
            "Ljava/lang/Double;",
            "TT;>;",
            "Lio/opencensus/common/Function<",
            "Ljava/lang/Object;",
            "TT;>;)TT;"
        }
    .end annotation
.end method
