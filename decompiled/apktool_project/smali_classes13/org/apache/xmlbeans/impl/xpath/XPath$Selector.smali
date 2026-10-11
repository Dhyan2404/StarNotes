.class final Lorg/apache/xmlbeans/impl/xpath/XPath$Selector;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xmlbeans/impl/xpath/XPath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Selector"
.end annotation


# instance fields
.field final _paths:[Lorg/apache/xmlbeans/impl/xpath/XPathStep;


# direct methods
.method public constructor <init>([Lorg/apache/xmlbeans/impl/xpath/XPathStep;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/xpath/XPath$Selector;->_paths:[Lorg/apache/xmlbeans/impl/xpath/XPathStep;

    return-void
.end method
