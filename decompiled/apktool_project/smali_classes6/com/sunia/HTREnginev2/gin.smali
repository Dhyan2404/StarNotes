.class public Lcom/sunia/HTREnginev2/gin;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:Lcom/sunia/HTREnginev2/gin;


# instance fields
.field public final a:Ljava/lang/Long;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final b:Ljava/util/TimeZone;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/sunia/HTREnginev2/gin;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lcom/sunia/HTREnginev2/gin;-><init>(Ljava/lang/Long;Ljava/util/TimeZone;)V

    sput-object v0, Lcom/sunia/HTREnginev2/gin;->c:Lcom/sunia/HTREnginev2/gin;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;Ljava/util/TimeZone;)V
    .locals 0
    .param p1    # Ljava/lang/Long;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/util/TimeZone;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/gin;->a:Ljava/lang/Long;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/gin;->b:Ljava/util/TimeZone;

    return-void
.end method

.method public static a(J)Lcom/sunia/HTREnginev2/gin;
    .locals 1

    new-instance v0, Lcom/sunia/HTREnginev2/gin;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const/4 p1, 0x0

    invoke-direct {v0, p0, p1}, Lcom/sunia/HTREnginev2/gin;-><init>(Ljava/lang/Long;Ljava/util/TimeZone;)V

    return-object v0
.end method

.method public static b(JLjava/util/TimeZone;)Lcom/sunia/HTREnginev2/gin;
    .locals 1
    .param p2    # Ljava/util/TimeZone;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    new-instance v0, Lcom/sunia/HTREnginev2/gin;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-direct {v0, p0, p2}, Lcom/sunia/HTREnginev2/gin;-><init>(Ljava/lang/Long;Ljava/util/TimeZone;)V

    return-object v0
.end method

.method public static e()Lcom/sunia/HTREnginev2/gin;
    .locals 1

    sget-object v0, Lcom/sunia/HTREnginev2/gin;->c:Lcom/sunia/HTREnginev2/gin;

    return-object v0
.end method


# virtual methods
.method public c()Ljava/util/Calendar;
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/gin;->b:Ljava/util/TimeZone;

    invoke-virtual {p0, v0}, Lcom/sunia/HTREnginev2/gin;->d(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object p0

    return-object p0
.end method

.method public d(Ljava/util/TimeZone;)Ljava/util/Calendar;
    .locals 2
    .param p1    # Ljava/util/TimeZone;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object p1

    :goto_0
    iget-object p0, p0, Lcom/sunia/HTREnginev2/gin;->a:Ljava/lang/Long;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    :cond_1
    return-object p1
.end method
