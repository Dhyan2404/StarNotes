.class public final synthetic Lorg/apache/xmlbeans/impl/store/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/impl/store/Cursor$WrapIOEx;


# instance fields
.field public final synthetic a:Lorg/apache/xmlbeans/impl/store/Cursor;

.field public final synthetic b:Ljava/io/Writer;

.field public final synthetic c:Lorg/apache/xmlbeans/XmlOptions;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/xmlbeans/impl/store/Cursor;Ljava/io/Writer;Lorg/apache/xmlbeans/XmlOptions;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/store/g;->a:Lorg/apache/xmlbeans/impl/store/Cursor;

    iput-object p2, p0, Lorg/apache/xmlbeans/impl/store/g;->b:Ljava/io/Writer;

    iput-object p3, p0, Lorg/apache/xmlbeans/impl/store/g;->c:Lorg/apache/xmlbeans/XmlOptions;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/g;->a:Lorg/apache/xmlbeans/impl/store/Cursor;

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/g;->b:Ljava/io/Writer;

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/g;->c:Lorg/apache/xmlbeans/XmlOptions;

    invoke-static {v0, v1, p0}, Lorg/apache/xmlbeans/impl/store/Cursor;->w(Lorg/apache/xmlbeans/impl/store/Cursor;Ljava/io/Writer;Lorg/apache/xmlbeans/XmlOptions;)V

    return-void
.end method
