.class public Lnet/sf/saxon/expr/JPConverter$FromLocalDate;
.super Lnet/sf/saxon/expr/JPConverter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/saxon/expr/JPConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FromLocalDate"
.end annotation


# static fields
.field public static final INSTANCE:Lnet/sf/saxon/expr/JPConverter$FromLocalDate;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lnet/sf/saxon/expr/JPConverter$FromLocalDate;

    invoke-direct {v0}, Lnet/sf/saxon/expr/JPConverter$FromLocalDate;-><init>()V

    sput-object v0, Lnet/sf/saxon/expr/JPConverter$FromLocalDate;->INSTANCE:Lnet/sf/saxon/expr/JPConverter$FromLocalDate;

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

    new-instance p0, Lnet/sf/saxon/value/DateValue;

    check-cast p1, Ljava/time/LocalDate;

    invoke-direct {p0, p1}, Lnet/sf/saxon/value/DateValue;-><init>(Ljava/time/LocalDate;)V

    return-object p0
.end method

.method public getItemType()Lnet/sf/saxon/type/ItemType;
    .locals 0

    sget-object p0, Lnet/sf/saxon/type/BuiltInAtomicType;->DATE_TIME:Lnet/sf/saxon/type/BuiltInAtomicType;

    return-object p0
.end method
