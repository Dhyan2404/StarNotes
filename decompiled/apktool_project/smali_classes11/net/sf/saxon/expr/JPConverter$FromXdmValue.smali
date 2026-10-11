.class public Lnet/sf/saxon/expr/JPConverter$FromXdmValue;
.super Lnet/sf/saxon/expr/JPConverter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/saxon/expr/JPConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FromXdmValue"
.end annotation


# instance fields
.field public final d:Lnet/sf/saxon/type/ItemType;

.field public final e:I


# direct methods
.method public constructor <init>(Lnet/sf/saxon/type/ItemType;I)V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/expr/JPConverter;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/expr/JPConverter$FromXdmValue;->d:Lnet/sf/saxon/type/ItemType;

    iput p2, p0, Lnet/sf/saxon/expr/JPConverter$FromXdmValue;->e:I

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

    check-cast p1, Lnet/sf/saxon/s9api/XdmValue;

    invoke-virtual {p1}, Lnet/sf/saxon/s9api/XdmValue;->getUnderlyingValue()Lnet/sf/saxon/om/GroundedValue;

    move-result-object p0

    return-object p0
.end method

.method public getCardinality()I
    .locals 0

    iget p0, p0, Lnet/sf/saxon/expr/JPConverter$FromXdmValue;->e:I

    return p0
.end method

.method public getItemType()Lnet/sf/saxon/type/ItemType;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/JPConverter$FromXdmValue;->d:Lnet/sf/saxon/type/ItemType;

    return-object p0
.end method
