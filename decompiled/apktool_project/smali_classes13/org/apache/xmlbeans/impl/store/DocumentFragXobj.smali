.class Lorg/apache/xmlbeans/impl/store/DocumentFragXobj;
.super Lorg/apache/xmlbeans/impl/store/NodeXobj;
.source "SourceFile"

# interfaces
.implements Lorg/w3c/dom/DocumentFragment;


# direct methods
.method public constructor <init>(Lorg/apache/xmlbeans/impl/store/Locale;)V
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0xb

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/xmlbeans/impl/store/NodeXobj;-><init>(Lorg/apache/xmlbeans/impl/store/Locale;II)V

    return-void
.end method


# virtual methods
.method public newNode(Lorg/apache/xmlbeans/impl/store/Locale;)Lorg/apache/xmlbeans/impl/store/Xobj;
    .locals 0

    new-instance p0, Lorg/apache/xmlbeans/impl/store/DocumentFragXobj;

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/store/DocumentFragXobj;-><init>(Lorg/apache/xmlbeans/impl/store/Locale;)V

    return-object p0
.end method
