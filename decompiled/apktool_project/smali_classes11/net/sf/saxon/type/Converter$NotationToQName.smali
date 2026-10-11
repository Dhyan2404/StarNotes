.class public Lnet/sf/saxon/type/Converter$NotationToQName;
.super Lnet/sf/saxon/type/Converter$UnfailingConverter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/saxon/type/Converter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NotationToQName"
.end annotation


# static fields
.field public static final INSTANCE:Lnet/sf/saxon/type/Converter$NotationToQName;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lnet/sf/saxon/type/Converter$NotationToQName;

    invoke-direct {v0}, Lnet/sf/saxon/type/Converter$NotationToQName;-><init>()V

    sput-object v0, Lnet/sf/saxon/type/Converter$NotationToQName;->INSTANCE:Lnet/sf/saxon/type/Converter$NotationToQName;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/type/Converter$UnfailingConverter;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic convert(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/type/ConversionResult;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lnet/sf/saxon/type/Converter$NotationToQName;->convert(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/value/QNameValue;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic convert(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/value/AtomicValue;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lnet/sf/saxon/type/Converter$NotationToQName;->convert(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/value/QNameValue;

    move-result-object p0

    return-object p0
.end method

.method public convert(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/value/QNameValue;
    .locals 1

    .line 3
    new-instance p0, Lnet/sf/saxon/value/QNameValue;

    check-cast p1, Lnet/sf/saxon/value/NotationValue;

    invoke-virtual {p1}, Lnet/sf/saxon/value/QualifiedNameValue;->getStructuredQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object p1

    sget-object v0, Lnet/sf/saxon/type/BuiltInAtomicType;->QNAME:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-direct {p0, p1, v0}, Lnet/sf/saxon/value/QNameValue;-><init>(Lnet/sf/saxon/om/StructuredQName;Lnet/sf/saxon/type/AtomicType;)V

    return-object p0
.end method
