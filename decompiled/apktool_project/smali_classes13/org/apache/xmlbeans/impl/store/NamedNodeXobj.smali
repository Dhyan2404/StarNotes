.class abstract Lorg/apache/xmlbeans/impl/store/NamedNodeXobj;
.super Lorg/apache/xmlbeans/impl/store/NodeXobj;
.source "SourceFile"


# instance fields
.field _canHavePrefixUri:Z


# direct methods
.method public constructor <init>(Lorg/apache/xmlbeans/impl/store/Locale;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/xmlbeans/impl/store/NodeXobj;-><init>(Lorg/apache/xmlbeans/impl/store/Locale;II)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/apache/xmlbeans/impl/store/NamedNodeXobj;->_canHavePrefixUri:Z

    return-void
.end method


# virtual methods
.method public nodeCanHavePrefixUri()Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/xmlbeans/impl/store/NamedNodeXobj;->_canHavePrefixUri:Z

    return p0
.end method
