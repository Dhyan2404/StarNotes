.class public final synthetic Lorg/apache/xmlbeans/impl/store/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/impl/store/Cursor$WrapSAXEx;


# instance fields
.field public final synthetic a:Lorg/apache/xmlbeans/impl/store/Cursor;

.field public final synthetic b:Lorg/xml/sax/ContentHandler;

.field public final synthetic c:Lorg/xml/sax/ext/LexicalHandler;

.field public final synthetic d:Lorg/apache/xmlbeans/XmlOptions;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/xmlbeans/impl/store/Cursor;Lorg/xml/sax/ContentHandler;Lorg/xml/sax/ext/LexicalHandler;Lorg/apache/xmlbeans/XmlOptions;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/store/h;->a:Lorg/apache/xmlbeans/impl/store/Cursor;

    iput-object p2, p0, Lorg/apache/xmlbeans/impl/store/h;->b:Lorg/xml/sax/ContentHandler;

    iput-object p3, p0, Lorg/apache/xmlbeans/impl/store/h;->c:Lorg/xml/sax/ext/LexicalHandler;

    iput-object p4, p0, Lorg/apache/xmlbeans/impl/store/h;->d:Lorg/apache/xmlbeans/XmlOptions;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/h;->a:Lorg/apache/xmlbeans/impl/store/Cursor;

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/h;->b:Lorg/xml/sax/ContentHandler;

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/store/h;->c:Lorg/xml/sax/ext/LexicalHandler;

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/h;->d:Lorg/apache/xmlbeans/XmlOptions;

    invoke-static {v0, v1, v2, p0}, Lorg/apache/xmlbeans/impl/store/Cursor;->J0(Lorg/apache/xmlbeans/impl/store/Cursor;Lorg/xml/sax/ContentHandler;Lorg/xml/sax/ext/LexicalHandler;Lorg/apache/xmlbeans/XmlOptions;)V

    return-void
.end method
