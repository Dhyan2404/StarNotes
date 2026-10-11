.class public Lnet/sf/saxon/expr/AtomicSequenceConverter$ToStringMappingFunction;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/expr/ItemMappingFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/saxon/expr/AtomicSequenceConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ToStringMappingFunction"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic mapItem(Lnet/sf/saxon/om/Item;)Lnet/sf/saxon/om/Item;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/AtomicSequenceConverter$ToStringMappingFunction;->mapItem(Lnet/sf/saxon/om/Item;)Lnet/sf/saxon/value/StringValue;

    move-result-object p0

    return-object p0
.end method

.method public mapItem(Lnet/sf/saxon/om/Item;)Lnet/sf/saxon/value/StringValue;
    .locals 0

    .line 2
    new-instance p0, Lnet/sf/saxon/value/StringValue;

    invoke-interface {p1}, Lnet/sf/saxon/om/Item;->getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p1

    invoke-direct {p0, p1}, Lnet/sf/saxon/value/StringValue;-><init>(Lnet/sf/saxon/str/UnicodeString;)V

    return-object p0
.end method
