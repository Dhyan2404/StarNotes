.class public Lnet/sf/saxon/expr/JPConverter$FromZonedDateTime;
.super Lnet/sf/saxon/expr/JPConverter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/saxon/expr/JPConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FromZonedDateTime"
.end annotation


# static fields
.field public static final INSTANCE:Lnet/sf/saxon/expr/JPConverter$FromZonedDateTime;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lnet/sf/saxon/expr/JPConverter$FromZonedDateTime;

    invoke-direct {v0}, Lnet/sf/saxon/expr/JPConverter$FromZonedDateTime;-><init>()V

    sput-object v0, Lnet/sf/saxon/expr/JPConverter$FromZonedDateTime;->INSTANCE:Lnet/sf/saxon/expr/JPConverter$FromZonedDateTime;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/expr/JPConverter;-><init>()V

    return-void
.end method


# virtual methods
.method public convert(Ljava/lang/Object;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/GroundedValue;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    check-cast p1, Ljava/time/ZonedDateTime;

    invoke-static {p1}, Lnet/sf/saxon/value/DateTimeValue;->fromZonedDateTime(Ljava/time/ZonedDateTime;)Lnet/sf/saxon/value/DateTimeValue;

    move-result-object p0

    return-object p0
.end method

.method public getItemType()Lnet/sf/saxon/type/ItemType;
    .locals 0

    sget-object p0, Lnet/sf/saxon/type/BuiltInAtomicType;->DATE_TIME:Lnet/sf/saxon/type/BuiltInAtomicType;

    return-object p0
.end method
