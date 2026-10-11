.class public Lnet/sf/saxon/expr/PJConverter$CalendarValueToInstant;
.super Lnet/sf/saxon/expr/PJConverter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/saxon/expr/PJConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CalendarValueToInstant"
.end annotation


# static fields
.field public static final INSTANCE:Lnet/sf/saxon/expr/PJConverter$CalendarValueToInstant;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lnet/sf/saxon/expr/PJConverter$CalendarValueToInstant;

    invoke-direct {v0}, Lnet/sf/saxon/expr/PJConverter$CalendarValueToInstant;-><init>()V

    sput-object v0, Lnet/sf/saxon/expr/PJConverter$CalendarValueToInstant;->INSTANCE:Lnet/sf/saxon/expr/PJConverter$CalendarValueToInstant;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/expr/PJConverter;-><init>()V

    return-void
.end method


# virtual methods
.method public convert(Lnet/sf/saxon/om/Sequence;Ljava/lang/Class;Lnet/sf/saxon/expr/XPathContext;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/sf/saxon/om/Sequence;",
            "Ljava/lang/Class<",
            "*>;",
            "Lnet/sf/saxon/expr/XPathContext;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-interface {p1}, Lnet/sf/saxon/om/Sequence;->head()Lnet/sf/saxon/om/Item;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/value/CalendarValue;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/value/CalendarValue;->toDateTime()Lnet/sf/saxon/value/DateTimeValue;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/value/DateTimeValue;->toJavaInstant()Ljava/time/Instant;

    move-result-object p0

    :goto_0
    return-object p0
.end method
