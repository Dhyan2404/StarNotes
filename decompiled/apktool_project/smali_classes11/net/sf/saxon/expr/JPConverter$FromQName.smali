.class public Lnet/sf/saxon/expr/JPConverter$FromQName;
.super Lnet/sf/saxon/expr/JPConverter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/saxon/expr/JPConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FromQName"
.end annotation


# static fields
.field public static final INSTANCE:Lnet/sf/saxon/expr/JPConverter$FromQName;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lnet/sf/saxon/expr/JPConverter$FromQName;

    invoke-direct {v0}, Lnet/sf/saxon/expr/JPConverter$FromQName;-><init>()V

    sput-object v0, Lnet/sf/saxon/expr/JPConverter$FromQName;->INSTANCE:Lnet/sf/saxon/expr/JPConverter$FromQName;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/expr/JPConverter;-><init>()V

    return-void
.end method


# virtual methods
.method public convert(Ljava/lang/Object;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/GroundedValue;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    check-cast p1, Ljavax/xml/namespace/QName;

    new-instance p0, Lnet/sf/saxon/value/QNameValue;

    invoke-virtual {p1}, Ljavax/xml/namespace/QName;->getPrefix()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p2, v0, p1}, Lnet/sf/saxon/value/QNameValue;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public getItemType()Lnet/sf/saxon/type/ItemType;
    .locals 0

    sget-object p0, Lnet/sf/saxon/type/BuiltInAtomicType;->QNAME:Lnet/sf/saxon/type/BuiltInAtomicType;

    return-object p0
.end method
