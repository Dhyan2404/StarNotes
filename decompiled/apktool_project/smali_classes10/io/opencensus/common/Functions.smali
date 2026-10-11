.class public final Lio/opencensus/common/Functions;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lio/opencensus/common/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/opencensus/common/Function<",
            "Ljava/lang/Object;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Lio/opencensus/common/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/opencensus/common/Function<",
            "Ljava/lang/Object;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field public static final c:Lio/opencensus/common/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/opencensus/common/Function<",
            "Ljava/lang/Object;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field public static final d:Lio/opencensus/common/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/opencensus/common/Function<",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/opencensus/common/Functions$a;

    invoke-direct {v0}, Lio/opencensus/common/Functions$a;-><init>()V

    sput-object v0, Lio/opencensus/common/Functions;->a:Lio/opencensus/common/Function;

    new-instance v0, Lio/opencensus/common/Functions$b;

    invoke-direct {v0}, Lio/opencensus/common/Functions$b;-><init>()V

    sput-object v0, Lio/opencensus/common/Functions;->b:Lio/opencensus/common/Function;

    new-instance v0, Lio/opencensus/common/Functions$c;

    invoke-direct {v0}, Lio/opencensus/common/Functions$c;-><init>()V

    sput-object v0, Lio/opencensus/common/Functions;->c:Lio/opencensus/common/Function;

    new-instance v0, Lio/opencensus/common/Functions$d;

    invoke-direct {v0}, Lio/opencensus/common/Functions$d;-><init>()V

    sput-object v0, Lio/opencensus/common/Functions;->d:Lio/opencensus/common/Function;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static returnConstant(Ljava/lang/Object;)Lio/opencensus/common/Function;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lio/opencensus/common/Function<",
            "Ljava/lang/Object;",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lio/opencensus/common/Functions$e;

    invoke-direct {v0, p0}, Lio/opencensus/common/Functions$e;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static returnNull()Lio/opencensus/common/Function;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lio/opencensus/common/Function<",
            "Ljava/lang/Object;",
            "TT;>;"
        }
    .end annotation

    sget-object v0, Lio/opencensus/common/Functions;->a:Lio/opencensus/common/Function;

    return-object v0
.end method

.method public static returnToString()Lio/opencensus/common/Function;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/opencensus/common/Function<",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Lio/opencensus/common/Functions;->d:Lio/opencensus/common/Function;

    return-object v0
.end method

.method public static throwAssertionError()Lio/opencensus/common/Function;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lio/opencensus/common/Function<",
            "Ljava/lang/Object;",
            "TT;>;"
        }
    .end annotation

    sget-object v0, Lio/opencensus/common/Functions;->c:Lio/opencensus/common/Function;

    return-object v0
.end method

.method public static throwIllegalArgumentException()Lio/opencensus/common/Function;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lio/opencensus/common/Function<",
            "Ljava/lang/Object;",
            "TT;>;"
        }
    .end annotation

    sget-object v0, Lio/opencensus/common/Functions;->b:Lio/opencensus/common/Function;

    return-object v0
.end method
