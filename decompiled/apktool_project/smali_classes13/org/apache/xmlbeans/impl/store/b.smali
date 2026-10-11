.class public final synthetic Lorg/apache/xmlbeans/impl/store/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/impl/store/Cursor$WrapSAXEx;


# instance fields
.field public final synthetic a:Lorg/apache/xmlbeans/impl/store/Cursor;

.field public final synthetic b:Lorg/xml/sax/ContentHandler;

.field public final synthetic c:Lorg/xml/sax/ext/LexicalHandler;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/xmlbeans/impl/store/Cursor;Lorg/xml/sax/ContentHandler;Lorg/xml/sax/ext/LexicalHandler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/store/b;->a:Lorg/apache/xmlbeans/impl/store/Cursor;

    iput-object p2, p0, Lorg/apache/xmlbeans/impl/store/b;->b:Lorg/xml/sax/ContentHandler;

    iput-object p3, p0, Lorg/apache/xmlbeans/impl/store/b;->c:Lorg/xml/sax/ext/LexicalHandler;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/b;->a:Lorg/apache/xmlbeans/impl/store/Cursor;

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/b;->b:Lorg/xml/sax/ContentHandler;

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/b;->c:Lorg/xml/sax/ext/LexicalHandler;

    invoke-static {v0, v1, p0}, Lorg/apache/xmlbeans/impl/store/Cursor;->X0(Lorg/apache/xmlbeans/impl/store/Cursor;Lorg/xml/sax/ContentHandler;Lorg/xml/sax/ext/LexicalHandler;)V

    return-void
.end method
