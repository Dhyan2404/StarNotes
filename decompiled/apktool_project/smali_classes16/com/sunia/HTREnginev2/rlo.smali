.class public final synthetic Lcom/sunia/HTREnginev2/rlo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic e:Ljavax/xml/parsers/SAXParserFactory;


# direct methods
.method public synthetic constructor <init>(Ljavax/xml/parsers/SAXParserFactory;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/rlo;->e:Ljavax/xml/parsers/SAXParserFactory;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/rlo;->e:Ljavax/xml/parsers/SAXParserFactory;

    invoke-static {p0}, Lorg/xmlresolver/XMLResolverConfiguration;->a(Ljavax/xml/parsers/SAXParserFactory;)Lorg/xml/sax/XMLReader;

    move-result-object p0

    return-object p0
.end method
