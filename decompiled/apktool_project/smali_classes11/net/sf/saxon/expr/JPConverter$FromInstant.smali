.class public Lnet/sf/saxon/expr/JPConverter$FromInstant;
.super Lnet/sf/saxon/expr/JPConverter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/saxon/expr/JPConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FromInstant"
.end annotation


# static fields
.field public static final INSTANCE:Lnet/sf/saxon/expr/JPConverter$FromInstant;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lnet/sf/saxon/expr/JPConverter$FromInstant;

    invoke-direct {v0}, Lnet/sf/saxon/expr/JPConverter$FromInstant;-><init>()V

    sput-object v0, Lnet/sf/saxon/expr/JPConverter$FromInstant;->INSTANCE:Lnet/sf/saxon/expr/JPConverter$FromInstant;

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

    check-cast p1, Ljava/time/Instant;

    invoke-static {p1}, Lnet/sf/saxon/value/DateTimeValue;->fromJavaInstant(Ljava/time/Instant;)Lnet/sf/saxon/value/DateTimeValue;

    move-result-object p0

    return-object p0
.end method

.method public getItemType()Lnet/sf/saxon/type/ItemType;
    .locals 0

    sget-object p0, Lnet/sf/saxon/type/BuiltInAtomicType;->DATE_TIME:Lnet/sf/saxon/type/BuiltInAtomicType;

    return-object p0
.end method
