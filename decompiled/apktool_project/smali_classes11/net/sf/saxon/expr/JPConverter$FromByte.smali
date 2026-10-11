.class public Lnet/sf/saxon/expr/JPConverter$FromByte;
.super Lnet/sf/saxon/expr/JPConverter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/saxon/expr/JPConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FromByte"
.end annotation


# static fields
.field public static final INSTANCE:Lnet/sf/saxon/expr/JPConverter$FromByte;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lnet/sf/saxon/expr/JPConverter$FromByte;

    invoke-direct {v0}, Lnet/sf/saxon/expr/JPConverter$FromByte;-><init>()V

    sput-object v0, Lnet/sf/saxon/expr/JPConverter$FromByte;->INSTANCE:Lnet/sf/saxon/expr/JPConverter$FromByte;

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

    new-instance p0, Lnet/sf/saxon/value/Int64Value;

    check-cast p1, Ljava/lang/Byte;

    invoke-virtual {p1}, Ljava/lang/Byte;->intValue()I

    move-result p1

    int-to-long p1, p1

    invoke-direct {p0, p1, p2}, Lnet/sf/saxon/value/Int64Value;-><init>(J)V

    return-object p0
.end method

.method public getItemType()Lnet/sf/saxon/type/ItemType;
    .locals 0

    sget-object p0, Lnet/sf/saxon/type/BuiltInAtomicType;->INTEGER:Lnet/sf/saxon/type/BuiltInAtomicType;

    return-object p0
.end method
